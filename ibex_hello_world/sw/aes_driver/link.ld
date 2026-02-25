ENTRY(_start)

MEMORY
{
  RAM (rwx) : ORIGIN = 0x00100000, LENGTH = 64K
}

SECTIONS
{
  . = ORIGIN(RAM);

  .text : {
    *(.text.start)
    *(.text*)
  } > RAM

  .rodata : { *(.rodata*) } > RAM
  .data   : { *(.data*) } > RAM
  .bss    : {
    *(.bss*)
    *(COMMON)
  } > RAM
}
