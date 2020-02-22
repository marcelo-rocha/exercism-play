class ResistorColorDuo {
  static const colorNames = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];
  static final Map<String, int> colorsMap = Map.fromIterables(
    colorNames, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);

  int value(List<String> colors) => colorsMap[colors[0]] * 10 + colorsMap[colors[1]];
}
