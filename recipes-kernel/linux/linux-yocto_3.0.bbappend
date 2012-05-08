# find defconfig path
FILESEXTRAPATHS := "${THISDIR}/${PN}"

# Kernel configs
SRC_URI_append_beagleboard = " file://beagle_qemu.cfg \
                               "

SRC_URI_append_vexpressa9 = " file://vexpress_a9.cfg  \
                               "

#Binutils is gplv3 so we remove it from 
PERFDEPENDS = "virtual/${MLPREFIX}libc:do_populate_sysroot ${MLPREFIX}elfutils:do_populate_sysroot"

KMACHINE_vexpressa9  = "yocto/standard/beagleboard"
SRCREV_machine_vexpressa9 ?= "6b4bf6173b0bd2d1619a8218bac66ebc4681dd35"
COMPATIBLE_MACHINE_vexpressa9 = "vexpressa9"
