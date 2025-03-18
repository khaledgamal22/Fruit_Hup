import 'package:cloud_firestore/cloud_firestore.dart';

import 'database_service.dart';

class FirebaseStoreService implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    if (documentId != null) {
      await firestore.doc('$path/$documentId').set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<void> deleteData({
    required String path,
    required String id,
  }) async {
    await firestore.doc('$path/$id').delete();
  }

  @override
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  }) async {
    var data = await firestore.doc('$path/$documentId').get();
    return data.exists;
  }

  @override
  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  }) async {
    var data = await firestore.doc('$path/$documentId').get();
    return data.data()!;
  }

  @override
  Future<QuerySnapshot> getAllData({required String path}) async {
    return await firestore.collection(path).get();
  }

  @override
  Future updateData({
    required String path,
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    return await firestore.doc('$path/$documentId').update(data);
  }

  @override
  Future<List<QueryDocumentSnapshot>> searchForData({
    required String path,
    required String searchKey1,
    required String searchKey2,
    required dynamic searchValue,
  }) async {
    String searchEndValue = '$searchValue\uf8ff';
    var data1 = await firestore
        .collection(path)
        .where(searchKey1, isGreaterThanOrEqualTo: searchValue)
        .where(searchKey1, isLessThan: searchEndValue)
        .get();
    var data2 = await firestore
        .collection(path)
        .where(searchKey2, isGreaterThanOrEqualTo: searchValue)
        .where(searchKey2, isLessThan: searchEndValue)
        .get();
    var combinedDocs = data1.docs + data2.docs;
    return combinedDocs;
  }

  @override
  Future<QuerySnapshot> searchForDataByAtrribute({
    required String path,
    required String searchKey,
    required searchValue,
  }) async {
    var data = await firestore
        .collection(path)
        .where(searchKey, isEqualTo: searchValue)
        .get();
    return data;
  }
}
