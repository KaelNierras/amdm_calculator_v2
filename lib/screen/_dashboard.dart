// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

//Functions
import '../../utils/helper_widget.dart';
import '../widgets/custom_dropdown_text.dart';
import '../widgets/custom_dropdown_image.dart';
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
  final List<String> imageLoadPaths = [
    'assets/images/onboarding/image1.png',
    'assets/images/onboarding/image2.png',
    'assets/images/onboarding/image3.png',
  ];

  //Widgets Load
  Widget simpleWithOverhang(List<String> imagePaths) {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG A',
          items: imagePaths,
          initalValue: 'assets/images/onboarding/image1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadA = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: imagePaths,
          initalValue: 'assets/images/onboarding/image1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: imagePaths,
          initalValue: 'assets/images/onboarding/image1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG C',
          items: imagePaths,
          initalValue: 'assets/images/onboarding/image1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
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
              Expanded(
                child: 
                SingleChildScrollView(
                child: Column(
                  children: [
                    CustomDropdownText(
                      label: 'SUPPORT A',
                      items: supportList,
                      initalValue: 'Select Support',
                      onChanged: (selectedItem) {
                        setState(() {
                          supportA = selectedItem!;
                        });
                      },
                    ),
                    addVerticalSpace(8),
                    CustomDropdownText(
                      label: 'SUPPORT C',
                      items: supportList,
                      initalValue: 'Select Support',
                      onChanged: (selectedItem) {
                        setState(() {
                          supportC = selectedItem!;
                        });
                      },
                    ),
                    addVerticalSpace(8),
                    supportA == 'Simple Support with Overhang'
                        ? simpleWithOverhang(imageLoadPaths)
                        : Container(),
                  ],
                ),
              ),)
              
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
