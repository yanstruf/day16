import 'package:flutter/material.dart';

class DropdownWidgetDay16 extends StatefulWidget {
  const DropdownWidgetDay16({super.key});

  @override
  State<DropdownWidgetDay16> createState() => _DropdownWidgetDay16State();
}

class _DropdownWidgetDay16State extends State<DropdownWidgetDay16> {
  String? selectedCategory; // Menyimpan nilai dropdown

  final List<String> categories = [
    'Elektronik',
    'Pakaian',
    'Makanan',
    'Lainnya',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Judul menu
            const Text(
              'Pilih Kategori Produk',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            //Dropdown
            DropdownButton<String>(
              value: selectedCategory,
              hint: const Text('Pilih kategori'),
              items: categories.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedCategory = newValue!;
                });
              },
            ),
            //Teks hasil pilihan
            Text(
              selectedCategory == null
                  ? 'Belum memilih kategori'
                  : 'Anda memilih kategori: $selectedCategory',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
