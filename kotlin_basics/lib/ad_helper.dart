import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111'; // test id
      // ca-app-pub-6460355587427985/7399962034 // app id
      // ca-app-pub-3940256099942544/6300978111 // test id
      // unity id 4999435
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
