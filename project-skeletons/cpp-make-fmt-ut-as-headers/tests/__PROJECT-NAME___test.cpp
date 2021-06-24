#include "../include/__PROJECT-NAME__.hpp"
#include "../libs/boost/ut.hpp"
#include "../libs/fmt/format.h"

int main() {
	using namespace boost::ut;
  fmt::print("Hello, world!\n");
	expect(1_i == (__PROJECT-NAME__("hola")));
}
