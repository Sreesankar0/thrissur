import 'package:flutter/material.dart';
import 'package:thrissur/google_map_page.dart';
import 'package:provider/provider.dart';
import 'package:thrissur/provider/location_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocationProvider(),
          child: LocationMap(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: LocationMap(),
      ),
    );
  }
}
