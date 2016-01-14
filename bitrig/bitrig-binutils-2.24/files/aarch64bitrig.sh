. ${srcdir}/emulparams/aarch64elf.sh
. ${srcdir}/emulparams/elf_obsd.sh
TDATA_START_SYMBOLS='PROVIDE_HIDDEN (__tdata_start = .);';
TDATA_END_SYMBOLS='PROVIDE_HIDDEN (__tdata_end = .);';
