import 'package:flutter/material.dart';

class CheckboxWidgetDay16 extends StatefulWidget {
  const CheckboxWidgetDay16({super.key});

  @override
  State<CheckboxWidgetDay16> createState() => _CheckboxWidgetDay16State();
}

class _CheckboxWidgetDay16State extends State<CheckboxWidgetDay16> {
  bool isChecked = false;
  // bool isDarkMode = false;

  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    print(value);
                    isChecked = value!;
                  });
                },
              ),
              Text('Saya menyetujui persyaratan yang berlaku'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Checkbox(
              //   value: isChecked,
              //   onChanged: (value) {
              //     setState(() {
              //       print(value);
              //       // isChecked = value!;
              //     });
              //   },
              // ),
              Text(
                isChecked
                    ? 'Lanjutkan pendaftaran di perbolehkan'
                    : 'Anda belum bisa melanjutkan',
              ),
            ],
          ),
        ],
        //   Switch(
        //     value: isDarkMode,
        //     onChanged: (value) {
        //       setState(() {
        //         isDarkMode = value;
        //       });
        //     },
        //   ),
        //   Text(isDarkMode ? 'Mode gelap' : 'Mode terang'),
        // ],
      ),
    );
  }
}
