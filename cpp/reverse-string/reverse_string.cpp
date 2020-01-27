#include "reverse_string.h"
#include <algorithm>

namespace reverse_string {

std::string reverse_string(const std::string &str) {
    std::string result(str);
    std::reverse(result.begin(), result.end());
    return result;  
}

}  // namespace reverse_string
