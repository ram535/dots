#include "../include/__PROJECT-NAME__.hpp"

#include <algorithm>
#include <string>

int __PROJECT-NAME__(std::string txt) {
	return std::count(std::begin(txt), std::end(txt), ' ') + 1;
}
