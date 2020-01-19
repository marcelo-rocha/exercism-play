#include "nucleotide_count.h"
#include <stdexcept>


namespace nucleotide_count {

char counter::check(char nucleotide)
{
    switch (nucleotide)
    {
    case 'A':
    case 'T':
    case 'C':
    case 'G':
        return nucleotide;
    }
    throw std::invalid_argument("invalid char");
}

counter::counter(const std::string& sequence): map_({{'A', 0}, {'T', 0}, {'C', 0}, {'G', 0}})
{
    for(auto it = sequence.begin(); it != sequence.end(); ++it) {
        map_[check(*it)] += 1;
    }
}

}  // namespace nucleotide_count
