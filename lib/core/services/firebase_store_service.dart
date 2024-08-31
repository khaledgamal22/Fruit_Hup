import 'package:cloud_firestore/cloud_firestore.dart';

import 'database_service.dart';

class FirebaseStoreService implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId}) async {
    if (documentId != null) {
      await firestore.collection(path).doc(documentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<void> deleteData({
    required String path,
    required String id,
  }) async {
    await firestore.collection(path).doc(id).delete();
  }

  @override
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  }) async {
    var data = await firestore.collection(path).doc(documentId).get();
    return data.exists;
  }

  @override
  Future<Map<String, dynamic>?> getData({
    required String path,
    required String documentId,
  }) async {
    return await firestore
        .collection(path)
        .doc(documentId)
        .get()
        .then((value) => value.data());
  }

  @override
  Future<QuerySnapshot> getAllData({required String path}) async {
    return await firestore.collection(path).get();
  }
}