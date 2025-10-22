import 'package:flutter/material.dart';

class TimePickerWidgetDay16 extends StatefulWidget {
  const TimePickerWidgetDay16({super.key});

  @override
  State<TimePickerWidgetDay16> createState() => _TimePickerWidgetDay16State();
}

class _TimePickerWidgetDay16State extends State<TimePickerWidgetDay16> {
  TimeOfDay? selectedPicked = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Atur pengingat')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (time != null) {
                  setState(() {
                    // selectedPicked = pickedDate;
                  });
                }
              },
              child: const Text('Pilih waktu pengingat'),
            ),
            Text(
              'Pengingat diatur pada pukul: ${selectedPicked!.hour}:${selectedPicked!.minute}',
            ),
            // Text(
            //   selectedPicked == null
            //       ? 'Belum memilih tanggal'
            //       : 'Tanggal yang dipilih: ${selectedPicked!.day}-${selectedPicked!.month}-${selectedPicked!.year}',
            // ),
          ],
        ),
      ),
    );
  }
}
