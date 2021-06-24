#include "../include/__PROJECT-NAME__.h"
#include <munit/munit.h>

int main(void) {
	munit_assert_int(__PROJECT-NAME__(""), ==, 0);
	munit_assert_int(__PROJECT-NAME__("hola"), ==, 1);
	munit_assert_int(__PROJECT-NAME__("hola lucky"), ==, 2);
}
