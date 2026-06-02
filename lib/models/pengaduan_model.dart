class PengaduanModel {
  final int id;
  final String judul;
  final String deskripsi;
  final String status;

  PengaduanModel({
    required this.id,
    required this.judul,
    required this.deskripsi,
    required this.status,
  });

  factory PengaduanModel.fromJson(Map<String, dynamic> json) {
    return PengaduanModel(
      id: json['id'],
      judul: json['judul'],
      deskripsi: json['deskripsi'],
      status: json['status'],
    );
  }
}
