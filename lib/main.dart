import 'package:flutter/material.dart';
import 'package:themming/homescreen.dart';
import 'package:provider/provider.dart';
import 'package:themming/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [
        ChangeNotifierProvider(create: (_)=>darkthemeProvider()),

      ],
      child: Builder(
        builder: (context) {
          final themeProvider=Provider.of<darkthemeProvider>(context);
          return MaterialApp(

            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeProvider.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.red,
              primaryColor: Colors.purple,
              //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              radioTheme: RadioThemeData(
                fillColor: WidgetStateProperty.all(Colors.red), // Color for unselected radio buttons
                overlayColor: WidgetStateProperty.all(Colors.green.withOpacity(0.5)), // Color when pressed
              ),
                textTheme: TextTheme(
                  headlineLarge:  TextStyle(color: Colors.black, fontSize: 14),

                )

            ),
              darkTheme: ThemeData(
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.pink
                ),
                  brightness: Brightness.dark,
                  primarySwatch: Colors.green,

                primaryColor: Colors.deepPurple,

                  iconTheme: IconThemeData(
                    color: Colors.pink,
                  ),
                radioTheme: RadioThemeData(
                  fillColor: MaterialStateProperty.all(Colors.green), // Color for unselected radio buttons
                  overlayColor: MaterialStateProperty.all(Colors.green.withOpacity(0.5)), // Color when pressed
                ),
                textTheme: TextTheme(
                  headlineLarge:  TextStyle(color: Colors.red, fontSize: 14),
                )

              ),
            home:Homescreen(
            )
          );
        }
      ),
    );
  }
}

