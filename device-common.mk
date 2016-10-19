$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from common
$(call inherit-product, device/samsung/qcom-common/qcom-common.mk)

include $(LOCAL_PATH)/keylayout/Layouts.mk

LOCAL_PATH := device/samsung/gprimelte-common

#Android EGL implementation
PRODUCT_PACKAGES += libGLES_android

PRODUCT_PACKAGES += libtime_genoff

# ANT+
PRODUCT_PACKAGES += \
	AntHalService \
	antradio_app \
	com.dsi.ant.antradio_library \
	libantradio

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.primary.msm8916 \
	audio.primary.default \
	audio_policy.msm8916 \
	audio.r_submix.default \
	audio.usb.default \
	audiod \
	libaudio-resampler \
	libqcompostprocbundle \
	libqcomvisualizer \
	libqcomvoiceprocessing \
	tinymix \
	tinyplay \
	tinycap \
	libFLAC \
	tinypcminfo

# Boot jars
PRODUCT_BOOT_JARS += \
	qcmediaplayer

# Camera
PRODUCT_PACKAGES += \
	libmm-qcamera \
	camera.msm8916

# Connectivity Engine support
PRODUCT_PACKAGES += \
	libcnefeatureconfig

# Default Property Overrides
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp \
	telephony.lteOnCdmaDevice=0 \
	persist.eons.enabled=true \
	persist.radio.apm_sim_not_pwdn=1 \
	rild.libpath=/system/lib/libsec-ril.so \
	persist.cne.feature=0 \
	persist.radio.lte_vrte_ltd=1 \
	persist.radio.add_power_save=1 \
	camera2.portability.force_api=1 \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.debuggable=1 \
	persist.service.adb.enable=1

# Display
PRODUCT_PACKAGES += \
	copybit.msm8916 \
	gralloc.msm8916 \
	hwcomposer.msm8916 \
	libtinyxml \
	memtrack.msm8916

# Doze
PRODUCT_PACKAGES += \
	SamsungDoze

# Ebtables
PRODUCT_PACKAGES += \
	ebtables \
	ethertypes \
	libebtc

# GPS Configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
	$(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
	$(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# INIT
PRODUCT_PACKAGES += \
	fstab.qcom \
	init.carrier.rc \
	init.class_main.sh \
	init.mdm.sh \
	init.qcom.audio.sh \
	init.qcom.bms.sh \
	init.qcom.bt.sh \
	init.qcom.uicc.sh \
	init.qcom.wifi.sh \
	init.qcom.post_boot.sh \
	init.qcom.class_core.sh \
	init.qcom.early_boot.sh \
	init.qcom.factory.sh \
	init.qcom.syspart_fixup.sh \
	init.qcom.usb.rc \
	init.qcom.usb.sh \
	init.qcom.rc \
	init.qcom.fm.sh \
	init.qcom.sh \
	init.target.rc \
	ueventd.qcom.rc \
	init.rilchip.rc \
	init.rilcommon.rc \
	twrp.fstab

# JARS
PRODUCT_PACKAGES += \
	com.google.widevine.software.drm

# Keylayout
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	$(LOCAL_PATH)/keylayout/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
	$(LOCAL_PATH)/keylayout/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
	$(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
	$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
	$(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Keystore
PRODUCT_PACKAGES += \
	keystore.msm8916

# libhealthd.qcom
PRODUCT_PACKAGES += \
	libhealthd.qcom \
	libhealthd

# Lights
PRODUCT_PACKAGES += \
	lights.msm8916

# Location, WiDi
PRODUCT_PACKAGES += \
	com.android.location.provider \
	com.android.location.provider.xml \
	com.android.media.remotedisplay \
	com.android.media.remotedisplay.xml

# macloader
PRODUCT_PACKAGES += macloader

# Media configurations
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# MSM IRQ Balancer configuration file
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# Misc
PRODUCT_PACKAGES += \
	curl \
	libbson \
	libcurl \
	javax.btobex \
	tcpdump \
	libkeyutils \
	libjpega \
	libexifa \
	charon

# NFC
PRODUCT_PACKAGES += \
	Tag \
	com.android.nfc_extras \
	com.android.nfc.helper

# OMX
PRODUCT_PACKAGES += \
	libdashplayer \
	libdivxdrmdecrypt \
	libmm-omxcore \
	libOmxAacEnc \
	libOmxAmrEnc \
	libOmxCore \
	libOmxEvrcEnc \
	libOmxQcelp13Enc \
	libOmxSwVencMpeg4 \
	libOmxVdec \
	libOmxVdecHevc \
	libOmxVenc \
	libOmxVidEnc \
	libOmxVdpp \
	libstagefrighthw \
	qcmediaplayer

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Power HAL
PRODUCT_PACKAGES += \
	power.qcom

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.use_data_netmgrd=false \
	dalvik.vm.heapgrowthlimit=128m \
	ro.security.icd.flagmode=single \
	ro.vendor.extension_library=libqti-perfd-client.so \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.radio.sib16_support=1 \
	persist.gps.qc_nlp_in_use=1 \
	persist.loc.nlp_name=com.qualcomm.location \
	ro.gps.agps_provider=1 \
	ro.pip.gated=0 \
	ro.telephony.samsung.realcall=true \
	cm.updater.uri=http://grandprime.ddns.net/api \
	ro.telephony.ril_class=SamsungQcomRIL

# Ril
PRODUCT_PACKAGES += \
	libxml2

# Screen density
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Touch issue workaround
PRODUCT_PACKAGES += \
	InputDisabler

# Terminal
PRODUCT_PACKAGES += Terminal

# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# ViperFX
PRODUCT_PACKAGES += \
	libv4a_fx_jb_NEON \
	ViperFX

# VoLTE calling support
PRODUCT_PACKAGES += \
	com.android.ims \
	com.android.ims.internal \
	ims-common \
	voip-common

# Wifi configuration files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wifi/cred.conf:system/etc/wifi/cred.conf \
	$(LOCAL_PATH)/wifi/hostapd.accept:system/etc/hostapd/hostapd.accept \
	$(LOCAL_PATH)/wifi/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
	$(LOCAL_PATH)/wifi/hostapd.deny:system/etc/hostapd/hostapd.deny \
	$(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
	$(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

#WLAN
PRODUCT_PACKAGES += \
	hostapd \
	iwconfig \
	hostapd_cli \
	libQWiFiSoftApCfg \
	libqsap_sdk \
	libwpa_client \
	libwcnss_qmi \
	wcnss_service \
	wpa_supplicant

# Inhert dalvik heap values from aosp
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
