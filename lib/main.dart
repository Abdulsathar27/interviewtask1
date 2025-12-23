import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:task1/controllers/product_controllers.dart';
import 'package:task1/view/home/home.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !const bool.fromEnvironment('dart.vm.product'),
      builder: (context) => ChangeNotifierProvider(
        create: (_) => ProductController(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lipstick App',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomePage(),
    );
  }
}
