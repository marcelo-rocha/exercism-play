#include "reverse_string.h"
#include <algorithm>

namespace reverse_string {

std::string reverse_string(const std::string &str) {
    std::string result;
    result.assign(str.rbegin(), str.rend());
    return result;  
}

}  // namespace reverse_string
