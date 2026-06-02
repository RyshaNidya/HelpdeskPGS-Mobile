
import 'package:helpdeskpgs_mobile/models/pengaduan_model.dart';
import 'package:dio/dio.dart';

class PengaduanService {
  static const baseUrl = 'http://127.0.0.1:8000/api';

  final Dio _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    headers: {'Content-Type': 'application/json'},
  ));


  Future<PengaduanModel> createPengaduan(
    String judul,
    String deskripsi,
    String status) async {
      try {
        final response = await _dio.post('/pengaduan',
      data: {
        'judul' : judul,
        'deskripsi': deskripsi,
        'status': status,
      }
      );
      

      return PengaduanModel.fromJson(response.data['data']);
      } on DioException catch (e){
        throw Exception(e.response?.data['message'] ?? 'Terjadi Kesalahan');
      }
    }
}