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
    loadAB = (supportA == 'Simple Support')
        ? simpleSupportForSpanABPaths.first.toString()
        : fixedSupportForSpanABPaths.first.toString();
    loadBC = (supportA == 'Simple Support')
        ? simpleSupportForSpanBCPaths.first.toString()
        : fixedSupportForSpanBCPaths.first.toString();
    overhangA = overhangAPaths.first.toString();
    overhangC = overhangCPaths.first.toString();
    isUpdated = false;
  }

  //Splash Screen Initialization
  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

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
      ],
      fixedSupportForSpanABPaths = [
        for (var i = 1; i <= 18; i++)
          'assets/images/FIXED SUPPORTED FOR SPAN AB/FIXED SPAN AB $i.png',
      ],
      fixedSupportForSpanBCPaths = [
        for (var i = 1; i <= 18; i++)
          'assets/images/FIXED SUPPORTED FOR SPAN BC/FIXED SPAN BC $i.png',
      ];

  //Bool
  bool isUpdated = true;

  //Values of Dropdowns
  String supportA = 'Fixed Support',
      supportC = 'Fixed Support',
      loadAB = '',
      loadBC = '',
      overhangA = '',
      overhangC = '';

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

  //Simple Span AB and BC
  Widget simpleSpanABAndBC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: simpleSupportForSpanABPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN AB/SIMPLE SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadAB = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: simpleSupportForSpanBCPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN BC/SIMPLE SPAN BC  1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadBC = selectedItem!;
              isUpdated = true;
            });
          },
        ),
      ],
    );
  }

  //Fixed Span AB and BC
  Widget fixedSpanABAndBC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: fixedSupportForSpanABPaths,
          initalValue:
              'assets/images/FIXED SUPPORTED FOR SPAN AB/FIXED SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadAB = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: fixedSupportForSpanBCPaths,
          initalValue:
              'assets/images/FIXED SUPPORTED FOR SPAN BC/FIXED SPAN BC 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadBC = selectedItem!;
              isUpdated = true;
            });
          },
        ),
      ],
    );
  }

  //Fixed Span AB and Simple BC
  Widget fixedSpanABAndSimpleBC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: fixedSupportForSpanABPaths,
          initalValue:
              'assets/images/FIXED SUPPORTED FOR SPAN AB/FIXED SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadAB = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: simpleSupportForSpanBCPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN BC/SIMPLE SPAN BC  1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadBC = selectedItem!;
              isUpdated = true;
            });
          },
        ),
      ],
    );
  }

  //Simple Span AB and Fixed BC
  Widget simpleSpanABAndFixedBC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: simpleSupportForSpanABPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN AB/SIMPLE SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadAB = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: fixedSupportForSpanBCPaths,
          initalValue:
              'assets/images/FIXED SUPPORTED FOR SPAN BC/FIXED SPAN BC 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadBC = selectedItem!;
              isUpdated = true;
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
              overhangA = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: simpleSupportForSpanABPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN AB/SIMPLE SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadAB = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: simpleSupportForSpanBCPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN BC/SIMPLE SPAN BC  1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadBC = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG C',
          items: overhangCPaths,
          initalValue: 'assets/images/OVERHANG C/OVERHANG C 1.png',
          onChanged: (selectedItem) {
            setState(() {
              overhangC = selectedItem!;
              isUpdated = true;
            });
          },
        ),
      ],
    );
  }

  //Overhang A, Span AB amd Span BC
  Widget overhangAAndSimpleSpanABAndSpanBC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG A',
          items: overhangAPaths,
          initalValue: 'assets/images/OVERHANG A/OVERHANG A 1.png',
          onChanged: (selectedItem) {
            setState(() {
              overhangA = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: simpleSupportForSpanABPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN AB/SIMPLE SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadAB = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: simpleSupportForSpanBCPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN BC/SIMPLE SPAN BC  1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadBC = selectedItem!;
              isUpdated = true;
            });
          },
        ),
      ],
    );
  }

  //Overhang A, Span AB amd Span BC
  Widget overhangAAndFixedSpanABAndSpanBC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG A',
          items: overhangAPaths,
          initalValue: 'assets/images/OVERHANG A/OVERHANG A 1.png',
          onChanged: (selectedItem) {
            setState(() {
              overhangA = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: fixedSupportForSpanABPaths,
          initalValue:
              'assets/images/FIXED SUPPORTED FOR SPAN AB/FIXED SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadAB = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: fixedSupportForSpanBCPaths,
          initalValue:
              'assets/images/FIXED SUPPORTED FOR SPAN BC/FIXED SPAN BC 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadBC = selectedItem!;
              isUpdated = true;
            });
          },
        ),
      ],
    );
  }

  //Span AB, Span BC and Overhang C
  Widget simpleSpanABAndSpanBCAndOverhangC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: simpleSupportForSpanABPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN AB/SIMPLE SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadAB = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: simpleSupportForSpanBCPaths,
          initalValue:
              'assets/images/SIMPLE SUPPORTED FOR SPAN BC/SIMPLE SPAN BC  1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadBC = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG C',
          items: overhangCPaths,
          initalValue: 'assets/images/OVERHANG C/OVERHANG C 1.png',
          onChanged: (selectedItem) {
            setState(() {
              overhangC = selectedItem!;
              isUpdated = true;
            });
          },
        ),
      ],
    );
  }

  Widget fixedSpanABAndSpanBCAndOverhangC() {
    return Column(
      children: [
        CustomDropdownImage(
          label: 'LOAD IN: SPAN AB',
          items: fixedSupportForSpanABPaths,
          initalValue:
              'assets/images/FIXED SUPPORTED FOR SPAN AB/FIXED SPAN AB 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadAB = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: SPAN BC',
          items: fixedSupportForSpanBCPaths,
          initalValue:
              'assets/images/FIXED SUPPORTED FOR SPAN BC/FIXED SPAN BC 1.png',
          onChanged: (selectedItem) {
            setState(() {
              loadBC = selectedItem!;
              isUpdated = true;
            });
          },
        ),
        const Divider(),
        CustomDropdownImage(
          label: 'LOAD IN: OVERHANG C',
          items: overhangCPaths,
          initalValue: 'assets/images/OVERHANG C/OVERHANG C 1.png',
          onChanged: (selectedItem) {
            setState(() {
              overhangC = selectedItem!;
              isUpdated = true;
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
              (!isUpdated)
                  ? const InfoAlert(
                      text:
                          'Select individual load to update it\nto the free body diagram!')
                  : Column(
                      children: [
                        const Text('Free body diagram of the structure',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: Column(
                              children: [
                                (supportA == 'Fixed Support' &&
                                            supportC == 'Fixed Support' ||
                                        supportA == 'Simple Support' &&
                                            supportC == 'Simple Support' ||
                                        supportA == 'Fixed Support' &&
                                            supportC == 'Simple Support' ||
                                        supportA == 'Simple Support' &&
                                            supportC == 'Fixed Support')
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            loadAB,
                                            width: 160,
                                            height: 160,
                                          ),
                                          Image.asset(
                                            loadBC,
                                            width: 160,
                                            height: 160,
                                          ),
                                        ],
                                      )
                                    : Container(),
                                (supportA == 'Fixed Support' &&
                                            supportC ==
                                                'Simple Support with Overhang' ||
                                        supportA == 'Simple Support' &&
                                            supportC ==
                                                'Simple Support with Overhang')
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            loadAB,
                                            width: 110,
                                            height: 110,
                                          ),
                                          Image.asset(
                                            loadBC,
                                            width: 110,
                                            height: 110,
                                          ),
                                          Image.asset(
                                            overhangC,
                                            width: 110,
                                            height: 110,
                                          ),
                                        ],
                                      )
                                    : Container(),
                                (supportA == 'Simple Support with Overhang' &&
                                            supportC == 'Simple Support' ||
                                        supportA ==
                                                'Simple Support with Overhang' &&
                                            supportC == 'Fixed Support')
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            overhangA,
                                            width: 110,
                                            height: 110,
                                          ),
                                          Image.asset(
                                            loadAB,
                                            width: 110,
                                            height: 110,
                                          ),
                                          Image.asset(
                                            loadBC,
                                            width: 110,
                                            height: 110,
                                          ),
                                        ],
                                      )
                                    : Container(),
                                    (supportA == 'Simple Support with Overhang' &&
                                            supportC == 'Simple Support with Overhang')
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            overhangA,
                                            width: 85,
                                            height: 85,
                                          ),
                                          Image.asset(
                                            loadAB,
                                            width: 85,
                                            height: 85,
                                          ),
                                          Image.asset(
                                            loadBC,
                                            width: 85,
                                            height: 85,
                                          ),
                                          Image.asset(
                                            overhangC,
                                            width: 85,
                                            height: 85,
                                          ),
                                        ],
                                      )
                                    : Container(),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                                    isUpdated = false;
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
                                    isUpdated = false;
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
                              supportA == 'Simple Support' &&
                                      supportC == 'Simple Support'
                                  ? simpleSpanABAndBC()
                                  : Container(),
                              supportA == 'Fixed Support' &&
                                      supportC == 'Fixed Support'
                                  ? fixedSpanABAndBC()
                                  : Container(),
                              supportA == 'Simple Support' &&
                                      supportC == 'Fixed Support'
                                  ? simpleSpanABAndFixedBC()
                                  : Container(),
                              supportA == 'Fixed Support' &&
                                      supportC == 'Simple Support'
                                  ? fixedSpanABAndSimpleBC()
                                  : Container(),
                              supportA == 'Simple Support with Overhang' &&
                                      supportC == 'Simple Support with Overhang'
                                  ? overhangAAndSpanABAndSpanBCAndOverhangC()
                                  : Container(),
                              supportA == 'Simple Support with Overhang' &&
                                          supportC == 'Simple Support' 
                                  ? overhangAAndSimpleSpanABAndSpanBC()
                                  : Container(),
                              supportA =='Simple Support with Overhang' &&
                                          supportC == 'Fixed Support'
                                  ? overhangAAndFixedSpanABAndSpanBC()
                                  : Container(),
                              supportA == 'Simple Support' &&
                                          supportC ==
                                              'Simple Support with Overhang'
                                  ? simpleSpanABAndSpanBCAndOverhangC()
                                  : Container(),
                              supportA == 'Fixed Support' &&
                                          supportC ==
                                              'Simple Support with Overhang'
                                  ? fixedSpanABAndSpanBCAndOverhangC()
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
