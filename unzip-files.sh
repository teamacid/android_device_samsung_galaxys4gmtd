#!/bin/sh

# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=galaxys4gmtd
MANUFACTURER=samsung

fullpath()
{
	echo $(cd $(dirname $1) 2>&1 > /dev/null; printf "$($(which pwd))/$(basename $1)")
}

ZIPFILE=$(fullpath $1)

mkdir -p ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary

unzip -j -o ${ZIPFILE} system/lib/libril.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libsecril-client.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libsec-ril.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libganril.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/librilswitch.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/bin/rild -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/bin/pppd -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/hw/gps.s5pc110.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libcamera.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
#unzip -j -o ${ZIPFILE} updates/modem.bin -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary

unzip -j -o ${ZIPFILE} system/bin/pvrsrvinit -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/bin/BCM4329B1_002.002.023.0746.0832.hcd -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/bin/brcm_patchram_plus -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/vendor/firmware/bcm4329.hcd -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/vendor/firmware/nvram_net.txt -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/etc/wifi/nvram_net.txt -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary/etc
unzip -j -o ${ZIPFILE} system/etc/wifi/bcm4329_sta.bin -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary/etc
unzip -j -o ${ZIPFILE} system/etc/wifi/bcm4329_aps.bin -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary/etc
unzip -j -o ${ZIPFILE} system/usr/keychars/melfas_touchkey.kcm.bin -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/vendor/firmware/samsung_mfc_fw.bin -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/egl/libGLES_android.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/egl/libEGL_POWERVR_SGX540_120.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/egl/libGLESv2_POWERVR_SGX540_120.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/hw/gralloc.s5pc110.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libglslcompiler.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libIMGegl.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libpvr2d.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libpvrANDROID_WSEGL.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libPVRScopeServices.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libsrv_init.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libsrv_um.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/firmware/CE147F02.bin -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libusc.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libsensor_yamaha_test.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libsensorservice.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/bin/orientationd -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/bin/geomagneticd -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libActionShot.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libarccamera.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libcamera_client.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libcamerafirmwarejni.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libcameraservice.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libCaMotion.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libcaps.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libPanoraMax1.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libPlusMe.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libs3cjpeg.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libseccamera.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libseccameraadaptor.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libsecjpegencoder.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libtvout.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/lib_tvoutengine.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libtvoutfimc.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libtvouthdmi.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libtvoutservice.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/bin/tvoutserver -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libtvout_jni.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/cameradata/datapattern_420sp.yuv -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/cameradata/datapattern_front_420sp.yuv -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/firmware/CE147F00.bin -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/firmware/CE147F01.bin -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/firmware/CE147F02.bin -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/firmware/CE147F03.bin -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/bin/charging_mode -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/bin/playlpm -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/lib/libQmageDecoder.so -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_10.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_100.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_15.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_20.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_25.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_30.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_35.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_40.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_45.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_5.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_50.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_55.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_60.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_65.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_70.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_75.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_80.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_85.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_90.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/battery_charging_95.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/chargingwarning.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary
unzip -j -o ${ZIPFILE} system/media/Disconnected.qmg -d ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ${ANDROID_BUILD_TOP}/vendor/$MANUFACTURER/$DEVICE/${DEVICE}-vendor-blobs.mk
# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril.so:obj/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:obj/lib/libsecril-client.so


# All the blobs necessary for galaxys devices
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libclientgps.so:system/lib/libclientgps.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsec-ril.so:system/lib/libsec-ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libganril.so:system/lib/libganril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/librilswitch.so:system/lib/librilswitch.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps.s5pc110.so:system/vendor/lib/hw/gps.s5pc110.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rild:system/bin/rild \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/pppd:system/bin/pppd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gpsd:system/vendor/bin/gpsd \\

PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/pvrsrvinit:system/vendor/bin/pvrsrvinit \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/BCM4329B1_002.002.023.0746.0832.hcd:system/bin/BCM4329B1_002.002.023.0746.0832.hcd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/brcm_patchram_plus:/system/bin/brcm_patchram_plus \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/nvram_net.txt:system/vendor/firmware/nvram_net.txt \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/nvram_net.txt:system/etc/wifi/nvram_net.txt \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/etc/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/melfas_touchkey.kcm.bin:system/usr/keychars/melfas_touchkey.kcm.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/samsung_mfc_fw.bin:system/vendor/firmware/samsung_mfc_fw.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLES_android.so:system/lib/egl/libGLES_android.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_POWERVR_SGX540_120.so:system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.s5pc110.so:system/vendor/lib/hw/gralloc.s5pc110.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libIMGegl.so:system/vendor/lib/libIMGegl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpvr2d.so:system/vendor/lib/libpvr2d.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsrv_init.so:system/vendor/lib/libsrv_init.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsrv_um.so:system/vendor/lib/libsrv_um.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/CE147F02.bin:system/vendor/firmware/CE147F02.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libusc.so:system/vendor/lib/libusc.so

# fascinatemtd uses older sensor drivers
ifndef TARGET_USES_OLD_LIBSENSORS_HAL
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsensor_yamaha_test.so:system/vendor/lib/libsensor_yamaha_test.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsensorservice.so:system/vendor/lib/libsensorservice.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/orientationd:system/vendor/bin/orientationd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/geomagneticd:system/vendor/bin/geomagneticd
endif

# camera and tvout
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcaps.so:system/lib/libcaps.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libPanoraMax1.so:system/lib/libPanoraMax1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libPlusMe.so:system/lib/libPlusMe.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvout.so:system/lib/libtvout.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib_tvoutengine.so:system/lib/lib_tvoutengine.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvoutfimc.so:system/lib/libtvoutfimc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvouthdmi.so:system/lib/libtvouthdmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvoutservice.so:system/lib/libtvoutservice.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/tvoutserver:system/bin/tvoutserver \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libtvout_jni.so:system/lib/libtvout_jni.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/CE147F00.bin:system/firmware/CE147F00.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/CE147F01.bin:system/firmware/CE147F01.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/CE147F02.bin:system/firmware/CE147F02.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/CE147F03.bin:system/firmware/CE147F03.bin

# low power mode
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/charging_mode:system/bin/charging_mode \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/playlpm:system/bin/playlpm \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libQmageDecoder.so:system/lib/libQmageDecoder.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_10.qmg:system/media/battery_charging_10.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_100.qmg:system/media/battery_charging_100.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_15.qmg:system/media/battery_charging_15.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_20.qmg:system/media/battery_charging_20.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_25.qmg:system/media/battery_charging_25.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_30.qmg:system/media/battery_charging_30.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_35.qmg:system/media/battery_charging_35.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_40.qmg:system/media/battery_charging_40.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_45.qmg:system/media/battery_charging_45.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_5.qmg:system/media/battery_charging_5.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_50.qmg:system/media/battery_charging_50.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_55.qmg:system/media/battery_charging_55.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_60.qmg:system/media/battery_charging_60.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_65.qmg:system/media/battery_charging_65.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_70.qmg:system/media/battery_charging_70.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_75.qmg:system/media/battery_charging_75.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_80.qmg:system/media/battery_charging_80.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_85.qmg:system/media/battery_charging_85.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_90.qmg:system/media/battery_charging_90.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/battery_charging_95.qmg:system/media/battery_charging_95.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/chargingwarning.qmg:system/media/chargingwarning.qmg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/Disconnected.qmg:system/media/Disconnected.qmg
EOF


./setup-makefiles.sh
