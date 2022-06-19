
int score(String word) {
  var total = word.split("").fold<int>(0, (previousValue, element) => previousValue + getValue(element));
  return total;
}

int getValue(String c) {
  
  var l = c.toUpperCase();
  int r;
  switch (l) {
    case 'A':  case 'E':  case 'I':  case 'O': 
    case 'U':  case 'L':  case 'N': case 'R': 
    case 'S': case 'T':
      r = 1;
      break;
    case 'D': case 'G':
      r = 2;
      break;
    case 'B': case 'C': case 'M': case 'P':
      r = 3;
      break;
    case 'F': case 'H': case 'V': case 'W': case 'Y':
      r = 4;
      break;
    case 'K':
      r = 5;
      break;
    case 'J': case 'X': 
      r = 8;
      break;
    case 'Q': case 'Z':
      r = 10;
      break;
    default:
      r = 0;
  }
  return r;
}