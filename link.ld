SECTIONS
{
  . = 0x80000;
  .text.boot : { *(.text.boot) }

  /DISCARD/ : { *(.comment) *(.gnu*) *(.note*) *(.eh_frame*) }
}
