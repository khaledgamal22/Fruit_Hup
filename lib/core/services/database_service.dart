abstract class DatabaseServices {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  });
  Future<void> deleteData({
    required String path,
    required String id,
  });
  Future<bool> checkIfDataExists({
    required String path,
    required String documentId,
  });
  Future<Map<String, dynamic>?> getData({
    required String path,
    required String documentId,
  });
  Future getAllData({required String path});
}
