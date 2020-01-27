class ResistorColor {
    static const colorNames = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];
    static final Map<String, int> colorsMap = Map.fromIterables(
      colorNames, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);

  int colorCode(String name) {
    return colorsMap[name];
  }

  List<String> get colors {
    return new List<String>.from(colorNames);
  }   
}
