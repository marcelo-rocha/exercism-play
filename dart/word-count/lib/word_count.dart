import 'dart:collection';

class WordCount {
  Map<String, int> countWords(String w) {
    RegExp exp = RegExp(r"(\w+)('\w)?");
    final Map<String, int> counters = HashMap();
    exp.allMatches(w).forEach((element) {
      final key = element[0]!.toLowerCase();
      final value = counters[key];
      counters[key] = (value ?? 0) + 1;
    });

    return counters;
  } 
}
