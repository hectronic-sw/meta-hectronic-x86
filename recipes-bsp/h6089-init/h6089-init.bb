SUMMARY = "H6089 init and systemd configuration"
DESCRIPTION = "${SUMMARY}"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

inherit systemd

SYSTEMD_SERVICE:${PN} = "h6089-init.service"
SYSTEMD_AUTO_ENABLE:${PN} = "enable"

S = "${UNPACKDIR}"

SRC_URI:append = " \
	file://h6089-init.service \
	file://h6089-init.sh \
"

do_install:append () {
	install -m 0755 -d ${D}${systemd_system_unitdir}
	install -m 0755 -d ${D}${sbindir}

	install -m 0644 ${S}/h6089-init.service ${D}${systemd_system_unitdir}
	install -m 0755 ${S}/h6089-init.sh ${D}${sbindir}
}

FILES:${PN} += "${systemd_system_unitdir}"
