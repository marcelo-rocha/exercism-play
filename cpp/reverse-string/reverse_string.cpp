#include "reverse_string.h"

namespace reverse_string {

std::string reverse_string(const std::string &str) {
    std::string result;
    result.reserve(str.size());
    for(auto it = str.crbegin(); it != str.crend(); ++it) {
        result += *it;
    }
    return result;  
}


}  // namespace reverse_string
