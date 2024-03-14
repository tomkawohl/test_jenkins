#include <criterion/criterion.h>

int add(int a, int b);

Test(add, test_add)
{
    cr_assert_eq(add(5, 4), 9);
    cr_assert_eq(add(5, -4), 1);
    cr_assert_eq(add(-5, 4), -1);
    cr_assert_eq(add(-5, -4), -9);
}