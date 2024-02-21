// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

//Functions
import '../../utils/helper_widget.dart';

//Screens


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  
  @override
  initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("AMDM Calculator"),
        // actions: [
        //   Switch(
        //       value: _themeManager.themeMode == ThemeMode.dark,
        //       onChanged: (newValue) {
        //         _themeManager.toggleTheme(newValue);
        //       })
        // ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/onboarding/image1.png",
                width: 200,
                height: 200,
              ),
              addVerticalSpace(10),
            ],
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.blue,), // For Test
        child: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
