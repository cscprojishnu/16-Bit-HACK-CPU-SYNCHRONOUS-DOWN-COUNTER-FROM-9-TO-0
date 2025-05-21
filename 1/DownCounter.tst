// DownCounter.tst
// Tests the DownCounter chip by simulating a countdown from 9 to 0 and looping back.

load DownCounter.hdl,
output-file DownCounter.out,
compare-to DownCounter.cmp,
output-list out[3] out[2] out[1] out[0];

// Initialize the counter to start from 9
set out[3] 1,
set out[2] 0,
set out[1] 0,
set out[0] 1;

// Simulate clock ticks to observe countdown
repeat 10 {
    tick; tock;
}
