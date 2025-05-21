// Or16Way.tst
// Test script for the Or16Way chip

output-list in%B1.16 out%B1;

load Or16Way.hdl,
output-file Or16Way.out,
compare-to Or16Way.cmp,
output-list in%B1.16 out%B1;

// Test cases
set in %B0000000000000000, // All bits are 0, output should be 0
eval,
output;

set in %B0000000000000001, // One bit is 1, output should be 1
eval,
output;

set in %B1111111111111111, // All bits are 1, output should be 1
eval,
output;

set in %B0101010101010101, // Mixed bits, output should be 1
eval,
output;

set in %B0000000000000010, // Only one bit is 1, output should be 1
eval,
output;

set in %B0000000000000000, // Testing zero again
eval,
output;

// End of tests
