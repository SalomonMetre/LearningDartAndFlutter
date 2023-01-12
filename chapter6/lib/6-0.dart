const convertToKilometers = 1.60934;
const convertToMiles = 0.62137119;

class Travel {
  late double distance;

  Travel(double newDistance) {
    distance = newDistance;
  }

  /// Returns the distance converted into `miles`
  double distanceToMiles() {
    return distance * convertToMiles;
  }

  /// Returns the distance converted into `kilometers`
  double distanceToKilometers() {
    return distance * convertToKilometers;
  }
}
