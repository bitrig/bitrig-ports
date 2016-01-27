. ${srcdir}/emulparams/aarch64elf.sh
. ${srcdir}/emulparams/elf_obsd.sh
EMBEDDED= # This gets us program headers mapped as part of the text segment.
TDATA_START_SYMBOLS='PROVIDE_HIDDEN (__tdata_start = .);';
TDATA_END_SYMBOLS='PROVIDE_HIDDEN (__tdata_end = .);';
