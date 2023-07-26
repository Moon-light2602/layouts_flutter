import 'package:app_bar/screens/navigation_bottom.dart';
import 'package:app_bar/screens/tabbars.dart';
import 'package:flutter/material.dart';
import 'actions.dart';
import 'communication.dart';
import 'datepicker.dart';
import 'navigation_drawer.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainState createState() => _MainState();
}

class _MainState extends State<Main>{
  @override
  Widget build(BuildContext context) {
    final TextStyle headlineSmall = Theme.of(context).textTheme.headlineSmall!;
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      visualDensity: VisualDensity.comfortable,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      textStyle: headlineSmall,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'), actions: <Widget>[
      IconButton(
      icon: const Icon(Icons.add_alert),
      tooltip: 'Show Snackbar',
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('This is a snackbar')));
      },
    ),
    ],
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amber[50],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NaviDrawer() ),
                );
              },
                child: const Text('Navigation Drawer'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const NavigationBottom()),
                );
              },
                child: const Text('Navigation Bottom'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                style: buttonStyle,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TabBarApp()),
                );
                },
                child: const Text('Tab Bar'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MaterialActions()),
                );
              },
                child: const Text('Actions'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProgressIndicatorApp()),
                );
              },
              child: const Text('Communication'),
            ),

            const SizedBox(height: 16),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DatePickerApp()),
                );
              },
              child: const Text('Date Picker'),
            ),
        ],
        ),

      ),
      floatingActionButton:
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: null,
                child: Icon(Icons.add),

              ),
              SizedBox(height: 10),

              FloatingActionButton.extended(
                onPressed: null,
                backgroundColor: Colors.white,
                label: Text('Add'),
                icon: Icon(Icons.add),
              ),
            ],
          )


      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
