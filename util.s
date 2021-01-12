.section ".text.util"

.global delay

delay:
    // x0: number of cycles to delay for
    cbz  x0, delay.done         // Break if we have no more cycles to delay
    nop                         // Wait a cycle
    subs x0, x0, #1             // Decrement counter
    b    delay                  // Repeat delay loop

delay.done:
    ret
