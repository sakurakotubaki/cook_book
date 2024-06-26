import 'dart:collection';

void main() {
  final Map<int, String> planets = HashMap(); // Is a HashMap
  planets[3] = 'Earth';
  planets.addAll({4: 'Mars'});
  final gasGiants = {6: 'Jupiter', 5: 'Saturn'};
  planets.addEntries(gasGiants.entries);
  print(planets); // fx {5: Saturn, 6: Jupiter, 3: Earth, 4: Mars}
  for (final key in planets.keys) {
    print('Planet $key: ${planets[key]}');
  }
}