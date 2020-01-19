#include "hamming.h"

namespace hamming {

int compute(const std::string& s1, const std::string& s2)
{
    if (s1.length() != s2.length()) {
        throw std::domain_error("not same length");
    }
    int count = 0;
    for (auto it1 = s1.begin(), it2 = s2.begin(); it1 != s1.end(); ++it1, ++it2) {
        if (*it1 != *it2)
            count++;
    }
    return count;
}


}  // namespace hamming
