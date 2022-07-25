enum Flavor { DEV, QA, UAT, PROD }

class FlavorsType {
  static Flavor? appFlavor;

  static String get appTitle {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'Dev Digital 14';
      case Flavor.QA:
        return 'QA Digital 14';
      case Flavor.PROD:
        return 'Digital 14';
      default:
        return 'Digital 14 Unknown';
    }
  }

  static String get appBaseUrl {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'https://api.seatgeek.com/';
      case Flavor.QA:
        return 'https://api.seatgeek.com/';
      case Flavor.PROD:
        return 'https://api.seatgeek.com/';
      default:
        return 'https://api.seatgeek.com/';
    }
  }
}
