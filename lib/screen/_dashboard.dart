// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

//Functions
import '../../utils/helper_widget.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/custom_floating_action_button.dart';
import '../widgets/custom_info_alert.dart';

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

  //Splash Screen Initialization
  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  //Values of Dropdowns
  String supportA = 'Select Support',
      supportC = 'Select Support',
      loadA = 'Select Load',
      loadB = 'Select Load';

  //List options
  List<String> supportList = [
        'Select Support',
        'Fixed Support',
        'Simple Support',
        'Simple Support with Overhang',
      ],
      loadList = [
        'Select Load',
        'OVERHANG A',
        'SPAN AB',
        'SPAN BC',
        'OVERHANG C'
      ];

  //Widgets Load
  Widget loadDropdowns(List<String> loadList) {
    return Column(
      children: [
        CustomDropdown(
          label: 'LOAD',
          items: loadList,
          initalValue: 'Select Load',
          onChanged: (selectedItem) {
            setState(() {
              loadA = selectedItem!;
            });
            print('LOAD A: $supportC');
          },
        ),
        addVerticalSpace(8),
        CustomDropdown(
          label: 'LOAD',
          items: loadList,
          initalValue: 'Select Load',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
            print('LOAD B: $supportC');
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Icon(
              Icons.calculate,
              color: Colors.white,
              size: 30,
            ),
            addHorizontalSpace(8),
            const Text("AMDM Calculator"),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (supportA == 'Select Support' ||
                      supportC == 'Select Support' ||
                      loadA == 'Select Load' ||
                      loadB == 'Select Load')
                  ? const InfoAlert(
                      text:
                          "Please select a support and\nload to display free body diagram.",
                    )
                  : Image.asset(
                      "assets/images/onboarding/image1.png",
                      width: 200,
                      height: 200,
                    ),
              addVerticalSpace(10),
              const Divider(),
              CustomDropdown(
                label: 'SUPPORT A',
                items: supportList,
                initalValue: 'Select Support',
                onChanged: (selectedItem) {
                  setState(() {
                    supportA = selectedItem!;
                  });
                  print('Support A: $supportA');
                },
              ),
              addVerticalSpace(8),
              CustomDropdown(
                label: 'SUPPORT C',
                items: supportList,
                initalValue: 'Select Support',
                onChanged: (selectedItem) {
                  setState(() {
                    supportC = selectedItem!;
                  });
                  print('Support C: $supportC');
                },
              ),
              loadDropdowns(loadList),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          // Add your onPressed logic here
        },
      ),
    );
  }
}
