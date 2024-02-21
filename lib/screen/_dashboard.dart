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
  String supportA = 'Fixed Support',
      supportC = 'Fixed Support',
      loadA = '',
      loadB = '';

  //List options
  List<String> supportList = [
    'Fixed Support',
    'Simple Support',
    'Simple Support with Overhang',
  ];
  final List<String> imageLoadPaths = [
    'assets/images/onboarding/image1.png',
    'assets/images/onboarding/image2.png',
    'assets/images/onboarding/image3.png',
  ];

  final List<String> simpleSupportForSpanABPaths = [
        for (var i = 1; i <= 18; i++)
          'assets/images/SIMPLE SUPPORTED FOR SPAN AB/SIMPLE SPAN AB $i.png',
      ],
      simpleSupportForSpanBCPaths = [
        for (var i = 1; i <= 18; i++)
          'assets/images/SIMPLE SUPPORTED FOR SPAN BC/SIMPLE SPAN BC  $i.png',
      ],
      overhangAPaths = [
        for (var i = 1; i <= 18; i++)
          'assets/images/OVERHANG A/OVERHANG A $i.png',
      ],
      overhangCPaths = [
        for (var i = 1; i <= 18; i++)
          'assets/images/OVERHANG C/OVERHANG C $i.png',
      ];

  //Span AB and BC
  Widget spanABAndBC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: simpleSupportForSpanABPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN AB/SIMPLE SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: simpleSupportForSpanBCPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN BC/SIMPLE SPAN BC  1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
      ],
    );
  }

  //Overhang A, Span AB, Span BC and Overhang C
  Widget overhangAAndSpanABAndSpanBCAndOverhangC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG A',
          items: overhangAPaths,
          initalValue: 'assets/images/OVERHANG A/OVERHANG A 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: simpleSupportForSpanABPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN AB/SIMPLE SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: simpleSupportForSpanBCPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN BC/SIMPLE SPAN BC  1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG C',
          items: overhangCPaths,
          initalValue: 'assets/images/OVERHANG C/OVERHANG C 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
      ],
    );
  }

  //Overhang A, Span AB amd Span BC
  Widget overhangAAndSpanABAndSpanBC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG A',
          items: overhangAPaths,
          initalValue: 'assets/images/OVERHANG A/OVERHANG A 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: simpleSupportForSpanABPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN AB/SIMPLE SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: simpleSupportForSpanBCPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN BC/SIMPLE SPAN BC  1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
      ],
    );
  }

  //Span AB, Span BC and Overhang C
  Widget spanABAndSpanBCAndOverhangC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: simpleSupportForSpanABPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN AB/SIMPLE SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: simpleSupportForSpanBCPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN BC/SIMPLE SPAN BC  1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadB = selectedItem!;
            });
          },
        ),
        addVerticalSpace(8),
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG C',
          items: overhangCPaths,
          initalValue: 'assets/images/OVERHANG C/OVERHANG C 1.png',
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              CustomDropdownText(
                                label: 'SUPPORT A',
                                items: supportList,
                                initalValue: 'Fixed Support',
                                onChanged: (selectedItem) {
                                  setState(() {
                                    supportA = selectedItem!;
                                  });
                                },
                              ),
                              const Divider(),
                              CustomDropdownText(
                                label: 'SUPPORT C',
                                items: supportList,
                                initalValue: 'Fixed Support',
                                onChanged: (selectedItem) {
                                  setState(() {
                                    supportC = selectedItem!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      addVerticalSpace(10),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              supportA == 'Fixed Support' &&
                                          supportC == 'Fixed Support' ||
                                      supportA == 'Fixed Support' &&
                                          supportC == 'Simple Support' ||
                                      supportA == 'Simple Support' &&
                                          supportC == 'Fixed Support' ||
                                      supportA == 'Simple Support' &&
                                          supportC == 'Simple Support'
                                  ? spanABAndBC()
                                  : Container(),
                              supportA == 'Simple Support with Overhang' &&
                                      supportC == 'Simple Support with Overhang'
                                  ? overhangAAndSpanABAndSpanBCAndOverhangC()
                                  : Container(),
                              supportA == 'Simple Support with Overhang' &&
                                          supportC == 'Simple Support' ||
                                      supportA ==
                                              'Simple Support with Overhang' &&
                                          supportC == 'Fixed Support'
                                  ? overhangAAndSpanABAndSpanBC()
                                  : Container(),
                              supportA == 'Simple Support' &&
                                          supportC ==
                                              'Simple Support with Overhang' ||
                                      supportA == 'Fixed Support' &&
                                          supportC ==
                                              'Simple Support with Overhang'
                                  ? spanABAndSpanBCAndOverhangC()
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      addVerticalSpace(20)
                    ],
                  ),
                ),
              )
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
