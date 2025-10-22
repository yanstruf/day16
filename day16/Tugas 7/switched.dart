import 'package:flutter/material.dart';

class SwitchWidgetDay16 extends StatefulWidget {
  const SwitchWidgetDay16({super.key});

  @override
  State<SwitchWidgetDay16> createState() => _SwitchWidgetDay16State();
}

class _SwitchWidgetDay16State extends State<SwitchWidgetDay16> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black87 : Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Aktifkan Mode Gelap',
                  style: TextStyle(
                    fontSize: 18,
                    color: isDarkMode ? Colors.white70 : Colors.black87,
                  ),
                ),
                const SizedBox(width: 10),
                Switch(
                  activeTrackColor: Colors.amber,
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
              ],
            ),
            Text(
              isDarkMode ? 'Mode Gelap' : 'Mode Terang',
              style: TextStyle(
                fontSize: 20,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
