import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart'; // Pastikan file utama aplikasi diimpor

void main() {
  testWidgets('Weather screen UI test', (WidgetTester tester) async {
    // Bangun aplikasi dan render frame awal
    await tester.pumpWidget(WeatherApp());

    // Verifikasi apakah elemen UI tertentu ada
    expect(find.text('Weatherman'), findsOneWidget); // Verifikasi judul aplikasi
    expect(find.text('Harlem'), findsOneWidget); // Verifikasi lokasi cuaca
    expect(find.text('Cloudy'), findsOneWidget); // Verifikasi status cuaca
    expect(find.text('°C'), findsWidgets); // Verifikasi simbol suhu

    // Verifikasi ikon pada ramalan cuaca harian
    expect(find.byIcon(Icons.cloud), findsOneWidget);
    expect(find.byIcon(Icons.cloudy_snowing), findsOneWidget);
    expect(find.byIcon(Icons.cloud_outlined), findsOneWidget);
  });
}
