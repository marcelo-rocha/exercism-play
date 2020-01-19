#if !defined(HAMMING_H)
#define HAMMING_H

#include <string>
#include <stdexcept>

namespace hamming {
int compute(const std::string& s1, const std::string& s2);
}  // namespace hamming

#endif // HAMMING_H