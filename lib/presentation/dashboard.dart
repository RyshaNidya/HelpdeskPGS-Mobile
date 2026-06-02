import 'package:flutter/material.dart';
import 'package:helpdeskpgs_mobile/provider/pengaduan_provider.dart';
import 'package:provider/provider.dart';

class BerandaPage extends StatelessWidget {
  final judulCtrl = TextEditingController();
  final deskripsiCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<PengaduanProvider>();
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Pengaduan')),
      body: Column(
        children: [
          TextField(controller: judulCtrl),
          TextField(controller: deskripsiCtrl),
          ElevatedButton(
            onPressed: provider.loading
                ? CircularProgressIndicator.new
                : () {
                    context.read<PengaduanProvider>().addPengaduan(
                      judulCtrl.text,
                      deskripsiCtrl.text,
                      'Open',
                    );
                  },
            child: Text('Tambah'),
          ),
        ],
      ),
    );
  }
}
