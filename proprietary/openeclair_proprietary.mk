#
# Copyright (C) 2010 The OpenEclair Team - Wes Garner
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
#
# This is the proprietary-level configuration for the OpenEclair build

PRODUCT_NAME := openeclair_proprietary
PRODUCT_BRAND := openeclair

# APKs
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Vending.apk:system/app/Vending.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/VoiceSearchWithKeyboard.apk:system/app/VoiceSearchWithKeyboard.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Maps.apk:data/app/com.google.android.apps.maps.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Street.apk:system/app/Street.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/YouTube.apk:system/app/YouTube.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GenieWidget.apk:system/app/GenieWidget.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Facebook.apk:data/app/com.facebook.katana.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/EnhancedGoogleSearchProvider.apk:system/app/EnhancedGoogleSearchProvider.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Gmail.apk:system/app/Gmail.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GmailProvider.apk:system/app/GmailProvider.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleApps.apk:system/app/GoogleApps.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleCheckin.apk:system/app/GoogleCheckin.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleSettingsProvider.apk:system/app/GoogleSettingsProvider.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleSubscribedFeedsProvider.apk:system/app/GoogleSubscribedFeedsProvider.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/gtalkservice.apk:system/app/gtalkservice.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/MarketUpdater.apk:system/app/MarketUpdater.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/MediaUploader.apk:system/app/MediaUploader.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/NetworkLocation.apk:system/app/NetworkLocation.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/SetupWizard.apk:system/app/SetupWizard.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Talk.apk:system/app/Talk.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/TalkProvider.apk:system/app/TalkProvider.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/PDFViewer.apk:data/app/com.htc.pdfreader.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/HTC_IME.apk:data/app/com.htc.android.htcime.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Clicker.apk:data/app/com.htc.clicker.apk

# Frameworks
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.gtalkservice.jar:system/framework/com.google.android.gtalkservice.jar
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.maps.jar:system/framework/com.google.android.maps.jar

# Permissions
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.datamessaging.xml:system/etc/permissions/com.google.android.datamessaging.xml
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.gtalkservice.xml:system/etc/permissions/com.google.android.gtalkservice.xml 
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml 

# /system/etc files
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/.htcime:system/etc/.htcime

# Libraries
#PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libcameraservice.so:system/lib/libcameraservice.so
#PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libcamera.so:system/lib/libcamera.so
#PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libqcamera.so:system/lib/libqcamera.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libstagefright_omx.so:system/lib/libstagefright_omx.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libOmxCore.so:system/lib/libOmxCore.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libqcomm_omx.so:system/lib/libqcomm_omx.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/egl/egl.cfg:system/lib/egl/egl.cfg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/egl/libGLES_qcom.so:system/lib/egl/libGLES_qcom.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libhtc_ril.so:system/lib/libhtc_ril.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libspeech.so:system/lib/libspeech.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libt9.so:system/lib/libt9.so
