FILESEXTRAPATHS_append := "${TOPDIR}/conf:"
SRC_URI += "${@ "file://wpa_supplicant.conf-install" if bb.utils.to_boolean(d.getVar('INSTALL_WPA_SUPPLICANT')) else ""}"

do_install_append () {
    echo ${INSTALL_WPA_SUPPLICANT}
    if [ ${INSTALL_WPA_SUPPLICANT} = "1" ]; then
        install -m 600 ${WORKDIR}/wpa_supplicant.conf-install ${D}${sysconfdir}/wpa_supplicant.conf
    fi    
}