import 'package:flutter/material.dart';

class DatePickerWidgetDay16 extends StatefulWidget {
  const DatePickerWidgetDay16({super.key});

  @override
  State<DatePickerWidgetDay16> createState() => _DatePickerWidgetDay16State();
}

class _DatePickerWidgetDay16State extends State<DatePickerWidgetDay16> {
  DateTime? selectedPicked = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Date Picker')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  setState(() {
                    selectedPicked = pickedDate;
                  });
                }
              },
              child: const Text('Pilih tanggal lahir'),
            ),
            Text(
              selectedPicked == null
                  ? 'Belum memilih tanggal'
                  : 'Tanggal yang dipilih: ${selectedPicked!.day}-${selectedPicked!.month}-${selectedPicked!.year}',
            ),
          ],
        ),
      ),
    );
  }
}
