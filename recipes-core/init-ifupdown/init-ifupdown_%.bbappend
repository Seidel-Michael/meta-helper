FILESEXTRAPATHS_append := "${THISDIR}/${PN}:"
SRC_URI += "${@ "file://interfaces" if bb.utils.to_boolean(d.getVar('INSTALL_WPA_SUPPLICANT')) else ""}"