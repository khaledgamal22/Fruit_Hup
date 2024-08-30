abstract class DatabaseServices {
  Future<void> addData(
      {required String path, required Map<String, dynamic> data});
  Future<void> deleteData({required String path, required String id});
}
