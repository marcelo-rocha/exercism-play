#if !defined(NUCLEOTIDE_COUNT_H)
#define NUCLEOTIDE_COUNT_H

#include <string>
#include <map>

namespace nucleotide_count {

class counter {
private:
    std::map<char, int> map_;
    static char check(char nucleotide);
public:
    counter(const std::string& sequence);
    int count(const char nucleotide) const { return map_.at(check(nucleotide)); }
    const std::map<char, int>& nucleotide_counts() const {return map_;}
};

}  // namespace nucleotide_count

#endif // NUCLEOTIDE_COUNT_H