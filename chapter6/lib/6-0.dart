const convertToKilometers = 1.60934;
const convertToMiles = 0.62137119;

class Travel {
  late double distance;

  Travel(double newDistance) {
    distance = newDistance;
  }

  double distanceToMiles() {
    return distance * convertToMiles;
  }

  double distanceToKilometers() {
    return distance * convertToKilometers;
  }
}




