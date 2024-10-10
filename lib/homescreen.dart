import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themming/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('screen build');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Theme Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Select a Theme Mode:'),
          ),
          Consumer<darkthemeProvider>(
            builder: (context, themeProvider, child) {
              return Column(
                children: [
                  RadioListTile<ThemeMode>(
                    title: const Text('Light Mode'),
                    value: ThemeMode.light,
                    groupValue: themeProvider.themeMode,
                    onChanged: (value) {
                      themeProvider.setTheme(value!);
                      print('build light');
                    },
                  ),
                  RadioListTile<ThemeMode>(
                    title: const Text('Dark Mode'),
                    value: ThemeMode.dark,
                    groupValue: themeProvider.themeMode,
                    onChanged: (value) {
                      themeProvider.setTheme(value!);
                      print('build dark');
                    },
                  ),
                  RadioListTile<ThemeMode>(
                    title: const Text('System Mode'),
                    value: ThemeMode.system,
                    groupValue: themeProvider.themeMode,
                    onChanged: (value) {
                      themeProvider.setTheme(value!);
                      print('build system');
                    },

                  ),
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("""DAN, an acronym for “Do Anything Now”, is a unique prompt that allows ChatGPT to act without any filters or restrictions. This feature, often ...
""", style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),

                ],
              );
            },
          ),

        ],
      ),
    );
  }
}
