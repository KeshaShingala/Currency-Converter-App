import 'package:currency_converter/provider/them_provider.dart';
import 'package:currency_converter/screens/Homepage.dart';
import 'package:currency_converter/screens/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (context) => ThemeProvider()),
      ],
      builder: (context, _){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: (Provider.of<ThemeProvider>(context).themdata.isDark)
              ? ThemeMode.dark
              : ThemeMode.light,
          routes: {
             '/': (context) => const Homepage(),
             'secondpage': (context) => const secondpage(),
          },
        );
      },
    ),
    // MaterialApp(
    //   theme: ThemeData(
    //     useMaterial3: false,
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   routes: {
    //     '/': (context) => const Homepage(),
    //     'secondpage': (context) => const secondpage(),
    //   },
    // ),
  );
}
