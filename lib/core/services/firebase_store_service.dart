import 'package:cloud_firestore/cloud_firestore.dart';

import 'database_service.dart';

class FirebaseStoreService implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
    CollectionReference collectionReference = firestore.collection(path);
    await collectionReference.add(data);
  }

  @override
  Future<void> deleteData({required String path, required String id}) async {
    CollectionReference collectionReference = firestore.collection(path);
    return collectionReference.doc().delete();
  }
}
