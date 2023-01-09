// Implementing testing
import '../lib/6-0.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Travel distance', () {
    // arrange
    var distance = 10.0;
    var expectedDistance = distance;

    // Act
    var travel = Travel(expectedDistance);
    var result = travel.distance;

    // Assert
    expect(expectedDistance, result);
  });

  test('Travel distance to miles', () {
    // arrange
    var distance = 10.0;
    var expectedDistance = distance * convertToMiles;

    // act
    var result = Travel(distance).distanceToMiles();

    // expect
    expect(expectedDistance, result);
  });

  test('Travel distance to kilometers', () {
    // arrange
    var distance = 10.0;
    var expectedDistance = distance * convertToKilometers;

    // act
    var result = Travel(distance).distanceToKilometers();

    // expect
    expect(expectedDistance, result);
  });
}
