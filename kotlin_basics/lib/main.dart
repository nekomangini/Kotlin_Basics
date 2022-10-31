import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kotlin_basics/ad_helper.dart';
import 'package:kotlin_basics/utilities/constant_strings.dart';
import 'package:kotlin_basics/utilities/constant_styles.dart';

import 'components/custom_container.dart';
import 'components/custom_open_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const SplashPage());
}

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    // ilagay muna sa material app widget para hindi hanapan ng mediaQuery
    return MaterialApp(
      home: EasySplashScreen(
        logo: Image.asset('images/kotlin-logo.png'),
        title: const Text(
          'Kotlin Basics',
          style: kTitleMainTextStyle,
        ),
        backgroundColor: Colors.grey,
        showLoader: true,
        loadingText: const Text('Loading'),
        navigator: const MainPage(),
        durationInSeconds: 3,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _showBanner = true;

  // TODO: Add _bannerAd
  BannerAd? _bannerAd;
  @override
  void initState() {
    super.initState();
    // admob
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
    // unity
  }

  //// TODO: Load a banner ad
  //     BannerAd(
  //       adUnitId: AdHelper.bannerAdUnitId,
  //       request: const AdRequest(),
  //       size: AdSize.banner,
  //       listener: BannerAdListener(
  //         onAdLoaded: (ad) {
  //           setState(() {
  //             // _bannerAd = ad as BannerAd;
  //             _isAdLoaded = true;
  //           });
  //         },
  //         onAdFailedToLoad: (ad, err) {
  //           print('Failed to load a banner ad: ${err.message}');
  //           // ad.dispose();
  //         },
  //       ),
  //     ).load();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kotlin Basics', style: kTitleTextStyle),
          backgroundColor: kBackgroundColor,
          elevation: 0, // remove shadow
          iconTheme: const IconThemeData(
              color: Colors.black), // change color of hamburger icon
        ),
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: ListView(
            children: const [
              // Introduction Section
              CustomContainer(containerTitle: 'Introduction'),
              CustomOpenContainer(
                dataContent: introductionOne,
                submenuTitle: 'What is kotlin',
              ),
              CustomOpenContainer(
                dataContent: introductionTwo,
                submenuTitle: 'Kotlin for server side',
              ),
              CustomOpenContainer(
                dataContent: introductionThree,
                submenuTitle: 'Kotlin for android',
              ),
              SizedBox(
                height: 5.0,
                child: ColoredBox(color: Colors.black),
              ),

              // Getting Started Section
              CustomContainer(containerTitle: 'Getting Started'),
              CustomOpenContainer(
                dataContent: gettingStartedOne,
                submenuTitle: 'Basic Syntax',
              ),
              CustomOpenContainer(
                dataContent: gettingStartedTwo,
                submenuTitle: 'Idioms',
              ),
              CustomOpenContainer(
                dataContent: gettingStartedThree,
                submenuTitle: 'Coding Conventions',
              ),
              SizedBox(
                height: 5.0,
                child: ColoredBox(color: Colors.black),
              ),

              // Basics Section
              CustomContainer(containerTitle: 'Basics'),
              CustomOpenContainer(
                dataContent: basicsOne,
                submenuTitle: 'Basics Types',
              ),
              CustomOpenContainer(
                dataContent: basicsTwo,
                submenuTitle: 'Loops & If Condition',
              ),
              CustomOpenContainer(
                dataContent: basicsThree,
                submenuTitle: 'Returns & Lambdas',
              ),
              SizedBox(
                height: 5.0,
                child: ColoredBox(color: Colors.black),
              ),

              // Classes and Objects Section
              CustomContainer(containerTitle: 'Classes and Objects'),
              CustomOpenContainer(
                dataContent: classesAndObjectsOne,
                submenuTitle: 'Classes',
              ),
              CustomOpenContainer(
                dataContent: classesAndObjectsTwo,
                submenuTitle: 'Properties & Fields',
              ),
              CustomOpenContainer(
                dataContent: classesAndObjectsThree,
                submenuTitle: 'Interface',
              ),
              CustomOpenContainer(
                dataContent: classesAndObjectsFour,
                submenuTitle: 'Data Classes',
              ),
              CustomOpenContainer(
                dataContent: classesAndObjectsFive,
                submenuTitle: 'Sealed Classes',
              ),
              CustomOpenContainer(
                dataContent: classesAndObjectsSix,
                submenuTitle: 'Generics',
              ),
              CustomOpenContainer(
                dataContent: classesAndObjectsSeven,
                submenuTitle: 'Nested Classes',
              ),
              CustomOpenContainer(
                dataContent: classesAndObjectsEight,
                submenuTitle: 'Enum Classes',
              ),
              CustomOpenContainer(
                dataContent: classesAndObjectsNine,
                submenuTitle: 'Delegation',
              ),
              CustomOpenContainer(
                dataContent: classesAndObjectsTen,
                submenuTitle: 'Delegated Properties',
              ),
              SizedBox(
                height: 5.0,
                child: ColoredBox(color: Colors.black),
              ),

              // Functions and Lambdas Section
              CustomContainer(containerTitle: 'Functions and Lambda'),
              CustomOpenContainer(
                dataContent: functionsAndLambdasOne,
                submenuTitle: 'Functions',
              ),
              CustomOpenContainer(
                dataContent: functionsAndLambdasTwo,
                submenuTitle: 'Lambdas',
              ),
              CustomOpenContainer(
                dataContent: functionsAndLambdasThree,
                submenuTitle: 'Inline Functions',
              ),
              SizedBox(
                height: 5.0,
                child: ColoredBox(color: Colors.black),
              ),

              // Others Section
              CustomContainer(containerTitle: 'Others'),
              CustomOpenContainer(
                dataContent: othersOne,
                submenuTitle: 'Collections',
              ),
              CustomOpenContainer(
                dataContent: othersTwo,
                submenuTitle: 'Ranges',
              ),
              CustomOpenContainer(
                dataContent: othersThree,
                submenuTitle: 'Equality',
              ),
              CustomOpenContainer(
                dataContent: othersFour,
                submenuTitle: 'Operator Overloading',
              ),
              CustomOpenContainer(
                dataContent: othersFive,
                submenuTitle: 'Null Safety',
              ),
              // ads
              // // TODO: Display a banner when ready
              // if (_bannerAd != null)
              //   Align(
              //     alignment: Alignment.topCenter,
              //     child: SizedBox(
              //       width: _bannerAd!.size.width.toDouble(),
              //       height: _bannerAd!.size.height.toDouble(),
              //       child: AdWidget(ad: _bannerAd!),
              //     ),
              //   ),
            ],
          ),
        ),
        bottomNavigationBar: _bannerAd != null
            ? SizedBox(
                width: _bannerAd!.size.width.toDouble(),
                height: _bannerAd!.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd!),
              )
            : const SizedBox(),
      ),
    );
  }
}
