#
# Copyright (C) 2010 The OpenEclair Team - Wes Garner and Chris Soyars
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
# This is the core-level configuration for the OpenEclair build

PRODUCT_NAME := openeclair_core
PRODUCT_BRAND := openeclair

# GoogleSubscribedFeedsProvider = AccountAndSyncSettings
# GoogleContactsSyncAdapter ?? GoogleContactsProvider
PRODUCT_PACKAGES := \
	Superuser \
	AccountAndSyncSettings \
        GoogleContactsSyncAdapter \
	Bluetooth \
	CertInstaller \
	DeskClock \
	Gallery3D \
	Stk \
	IM \
	ImProvider \
	Launcher2 \
	VoiceDialer \
	libRS \
	librs_jni \
    AlarmProvider \
    ApplicationsProvider \
    Browser \
    Calculator \
    Calendar \
    CalendarProvider \
    Camera \
    Contacts \
    GoogleContactsProvider \
    DownloadProvider \
    DrmProvider \
    Email \
    FieldTest \
    framework-res \
    GlobalSearch \
    GoogleSearch \
    HTMLViewer \
    LatinIME \
    libjni_latinime \
    Launcher \
    MediaProvider \
    Mms \
    Music \
    PackageInstaller \
    Phone \
    PicoTts \
    Provision \
    Settings \
    SettingsProvider \
    SoundRecorder \
    SubscribedFeedsProvider \
    Sync \
    SyncProvider \
    TelephonyProvider \
    TtsService \
    Updater \
    UserDictionaryProvider \
    VoiceDialer \
    VpnServices \
    WebSearchProvider \
    framework-res

# Default.prop Properties
ADDITIONAL_DEFAULT_PROPERTIES := \
	persist.service.memctl_state=1 \
	persist.service.memctl_size=24568 \
	persist.service.memctl_swp=60 \
	persist.service.auto.renice=0 \
	ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	persist.service.adb.enable=1

ifneq ($(NO_DEFAULT_SOUNDS),true)
PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.notification_sound=OnTheHunt.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg
endif

PRODUCT_LOCALES := \
    en_US \
    ar_EG \
    ar_IL \
    bg_BG \
    ca_ES \
    cs_CZ \
    da_DK \
    de_AT \
    de_CH \
    de_DE \
    de_LI \
    el_GR \
    en_AU \
    en_CA \
    en_GB \
    en_IE \
    en_IN \
    en_NZ \
    en_SG \
    en_ZA \
    es_ES \
    es_US \
    fi_FI \
    fr_BE \
    fr_CA \
    fr_CH \
    fr_FR \
    he_IL \
    hi_IN \
    hr_HR \
    hu_HU \
    id_ID \
    it_CH \
    it_IT \
    iw_IL \
    ja_JP \
    ko_KR \
    lt_LT \
    lv_LV \
    nb_NO \
    nl_BE \
    nl_NL \
    pl_PL \
    pt_BR \
    pt_PT \
    ro_RO \
    ru_RU \
    sk_SK \
    sl_SI \
    sr_RS \
    sv_SE \
    th_TH \
    tl_PH \
    tr_TR \
    uk_UA \
    vi_VN \
    zh_CN \
    zh_TW
