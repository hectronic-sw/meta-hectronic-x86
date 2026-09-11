FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
FILESEXTRAPATHS:prepend:h6089 := "${THISDIR}/files/h6089:"

SRC_URI:append:h6089 = " \
	file://h6089-enable.cfg \
	file://0002-limit-sd-clock.patch \
"

