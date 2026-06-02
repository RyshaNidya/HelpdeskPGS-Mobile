

import 'package:flutter/material.dart';
import 'package:helpdeskpgs_mobile/services/pengaduan_service.dart';

class PengaduanProvider extends ChangeNotifier{
  final api = PengaduanService();
  bool loading = false;

  Future<void> addPengaduan(String judul, String deskripsi, String status) async {
    loading = true;
    notifyListeners();

    await api.createPengaduan(judul, deskripsi, status);

    loading = false;
    notifyListeners();
  }
}