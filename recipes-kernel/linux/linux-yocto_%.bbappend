FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
FILESEXTRAPATHS:prepend:h6089 := "${THISDIR}/files/h6089:"
FILESEXTRAPATHS:prepend:h6075 := "${THISDIR}/files/h6075:"

SRC_URI:append:h6089 = " \
	file://h6089-enable.cfg \
	file://0002-limit-sd-clock.patch \
"

SRC_URI:append:h6075 = " \
	file://h6075-enable.cfg \
"

