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
# This is the common-level configuration for the OpenEclair build

# Call overlays before running other builds
PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay/common

PRODUCT_NAME := openeclair_common
PRODUCT_BRAND := openeclair

KERNEL_MODULES_DIR:=/system/lib/modules
TINY_TOOLBOX:=true

# Build WebKit with V8
JS_ENGINE=v8

# Boot Animation by MINUS_Stl
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/bootanimation.zip:data/media_tmp/bootanimation.zip

# Permission and Framework
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/permissions/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml 

# Compcache / Memctl
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/rzscontrol:system/bin/rzscontrol
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/memctl:system/bin/memctl 

# Placeholders
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/blank:sd-ext/placeholder
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/blank:system/xbin/bb/placeholder

# Scripts and Binaries
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/appfix:system/bin/appfix
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/arenice:system/bin/arenice
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/e2fsck:system/xbin/e2fsck 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/nano:system/xbin/nano
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/firstboot:system/bin/firstboot 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/rosystem:system/bin/rosystem 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/rwsystem:system/bin/rwsystem 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/shutdown:system/bin/shutdown 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

# /system/etc files
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/dnsmasq.conf:system/etc/dnsmasq.conf 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/gps.conf:system/etc/gps.conf 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

# /system/etc/init.d scripts
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete 

# Extra Audio Notifications and Ringtones
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Alarm_Beep_01.ogg:data/media_tmp/audio/alarms/Alarm_Beep_01.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Alarm_Beep_02.ogg:data/media_tmp/audio/alarms/Alarm_Beep_02.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Alarm_Beep_03.ogg:data/media_tmp/audio/alarms/Alarm_Beep_03.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Alarm_Buzzer.ogg:data/media_tmp/audio/alarms/Alarm_Buzzer.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Alarm_Classic.ogg:data/media_tmp/audio/alarms/Alarm_Classic.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Alarm_Rooster_02.ogg:data/media_tmp/audio/alarms/Alarm_Rooster_02.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Alpha.mp3:data/media_tmp/audio/alarms/Alpha.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Alpha.ogg:data/media_tmp/audio/alarms/Alpha.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Beeps.mp3:data/media_tmp/audio/alarms/Beeps.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Bell.mp3:data/media_tmp/audio/alarms/Bell.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Bubble.mp3:data/media_tmp/audio/alarms/Bubble.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Classic.mp3:data/media_tmp/audio/alarms/Classic.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Dreamy.mp3:data/media_tmp/audio/alarms/Dreamy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Fade_In.mp3:data/media_tmp/audio/alarms/Fade_In.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Instance.mp3:data/media_tmp/audio/alarms/Instance.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Light.mp3:data/media_tmp/audio/alarms/Light.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Positive.mp3:data/media_tmp/audio/alarms/Positive.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Snooze.mp3:data/media_tmp/audio/alarms/Snooze.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/alarms/Snoozer.mp3:data/media_tmp/audio/alarms/Snoozer.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Alpha.mp3:data/media_tmp/audio/notifications/Alpha.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Ascend.mp3:data/media_tmp/audio/notifications/Ascend.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Beat_Box_Android.ogg:data/media_tmp/audio/notifications/Beat_Box_Android.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Bell.mp3:data/media_tmp/audio/notifications/Bell.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Bells.ogg:data/media_tmp/audio/notifications/Bells.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Bubble.mp3:data/media_tmp/audio/notifications/Bubble.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/CaffeineSnake.ogg:data/media_tmp/audio/notifications/CaffeineSnake.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Chiff.mp3:data/media_tmp/audio/notifications/Chiff.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Chimes.mp3:data/media_tmp/audio/notifications/Chimes.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Color.mp3:data/media_tmp/audio/notifications/Color.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Confirm.mp3:data/media_tmp/audio/notifications/Confirm.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Cricket.ogg:data/media_tmp/audio/notifications/Cricket.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/DearDeer.ogg:data/media_tmp/audio/notifications/DearDeer.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Descent.mp3:data/media_tmp/audio/notifications/Descent.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Doink.ogg:data/media_tmp/audio/notifications/Doink.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/DontPanic.ogg:data/media_tmp/audio/notifications/DontPanic.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Dream.mp3:data/media_tmp/audio/notifications/Dream.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Dreamy.mp3:data/media_tmp/audio/notifications/Dreamy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Dribble.mp3:data/media_tmp/audio/notifications/Dribble.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Drip.ogg:data/media_tmp/audio/notifications/Drip.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/F1_MissedCall.ogg:data/media_tmp/audio/notifications/F1_MissedCall.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/F1_New_MMS.ogg:data/media_tmp/audio/notifications/F1_New_MMS.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/F1_New_SMS.ogg:data/media_tmp/audio/notifications/F1_New_SMS.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Flute.mp3:data/media_tmp/audio/notifications/Flute.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Freeze.mp3:data/media_tmp/audio/notifications/Freeze.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Friendly.mp3:data/media_tmp/audio/notifications/Friendly.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Guitar_1.mp3:data/media_tmp/audio/notifications/Guitar_1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Guitar_2.mp3:data/media_tmp/audio/notifications/Guitar_2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Heaven.ogg:data/media_tmp/audio/notifications/Heaven.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Highwire.ogg:data/media_tmp/audio/notifications/Highwire.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/ICQ.mp3:data/media_tmp/audio/notifications/ICQ.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/KzurbSonar.ogg:data/media_tmp/audio/notifications/KzurbSonar.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Little.mp3:data/media_tmp/audio/notifications/Little.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Major.mp3:data/media_tmp/audio/notifications/Major.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Modern.mp3:data/media_tmp/audio/notifications/Modern.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/moonbeam.ogg:data/media_tmp/audio/notifications/moonbeam.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/One.mp3:data/media_tmp/audio/notifications/One.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/OnTheHunt.ogg:data/media_tmp/audio/notifications/OnTheHunt.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Organ.mp3:data/media_tmp/audio/notifications/Organ.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Pebbles.mp3:data/media_tmp/audio/notifications/Pebbles.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Piano.mp3:data/media_tmp/audio/notifications/Piano.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/pixiedust.ogg:data/media_tmp/audio/notifications/pixiedust.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/pizzicato.ogg:data/media_tmp/audio/notifications/pizzicato.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Plastic_Pipe.ogg:data/media_tmp/audio/notifications/Plastic_Pipe.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Plonk.mp3:data/media_tmp/audio/notifications/Plonk.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Poppy.mp3:data/media_tmp/audio/notifications/Poppy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Reflection.mp3:data/media_tmp/audio/notifications/Reflection.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Ripple.mp3:data/media_tmp/audio/notifications/Ripple.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Sapphire.mp3:data/media_tmp/audio/notifications/Sapphire.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Simple_High.mp3:data/media_tmp/audio/notifications/Simple_High.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Simple_Low.mp3:data/media_tmp/audio/notifications/Simple_Low.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Simple.mp3:data/media_tmp/audio/notifications/Simple.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Soft.mp3:data/media_tmp/audio/notifications/Soft.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Sonar.mp3:data/media_tmp/audio/notifications/Sonar.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/SpaceSeed.ogg:data/media_tmp/audio/notifications/SpaceSeed.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Spacious.mp3:data/media_tmp/audio/notifications/Spacious.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Sparkle.mp3:data/media_tmp/audio/notifications/Sparkle.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Subtle.mp3:data/media_tmp/audio/notifications/Subtle.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/TaDa.ogg:data/media_tmp/audio/notifications/TaDa.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Teleport.mp3:data/media_tmp/audio/notifications/Teleport.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Tinkerbell.ogg:data/media_tmp/audio/notifications/Tinkerbell.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/tweeters.ogg:data/media_tmp/audio/notifications/tweeters.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Upwards.mp3:data/media_tmp/audio/notifications/Upwards.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Vector.mp3:data/media_tmp/audio/notifications/Vector.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Voila.ogg:data/media_tmp/audio/notifications/Voila.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Weight.mp3:data/media_tmp/audio/notifications/Weight.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Woodblock.mp3:data/media_tmp/audio/notifications/Woodblock.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/notifications/Zing.mp3:data/media_tmp/audio/notifications/Zing.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/2_Step.mp3:data/media_tmp/audio/ringtones/2_Step.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Alpha.mp3:data/media_tmp/audio/ringtones/Alpha.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ambience.mp3:data/media_tmp/audio/ringtones/Ambience.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Aqua.mp3:data/media_tmp/audio/ringtones/Aqua.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Around.mp3:data/media_tmp/audio/ringtones/Around.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Backroad.ogg:data/media_tmp/audio/ringtones/Backroad.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/BeatPlucker.mp3:data/media_tmp/audio/ringtones/BeatPlucker.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/BeatPlucker.ogg:data/media_tmp/audio/ringtones/BeatPlucker.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Bells.mp3:data/media_tmp/audio/ringtones/Bells.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/BentleyDubs.mp3:data/media_tmp/audio/ringtones/BentleyDubs.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/BentleyDubs.ogg:data/media_tmp/audio/ringtones/BentleyDubs.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Beta.mp3:data/media_tmp/audio/ringtones/Beta.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Big_Easy.ogg:data/media_tmp/audio/ringtones/Big_Easy.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/BirdLoop.ogg:data/media_tmp/audio/ringtones/BirdLoop.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Blippy.mp3:data/media_tmp/audio/ringtones/Blippy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Blues.mp3:data/media_tmp/audio/ringtones/Blues.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Bollywood.ogg:data/media_tmp/audio/ringtones/Bollywood.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Bubbly.mp3:data/media_tmp/audio/ringtones/Bubbly.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/BussaMove.ogg:data/media_tmp/audio/ringtones/BussaMove.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Cairo.ogg:data/media_tmp/audio/ringtones/Cairo.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Calypso_Steel.ogg:data/media_tmp/audio/ringtones/Calypso_Steel.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/CaribbeanIce.mp3:data/media_tmp/audio/ringtones/CaribbeanIce.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/CaribbeanIce.ogg:data/media_tmp/audio/ringtones/CaribbeanIce.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Champagne_Edition.ogg:data/media_tmp/audio/ringtones/Champagne_Edition.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Cloudy_Cafe.mp3:data/media_tmp/audio/ringtones/Cloudy_Cafe.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Club_Cubano.ogg:data/media_tmp/audio/ringtones/Club_Cubano.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Cobblestone.mp3:data/media_tmp/audio/ringtones/Cobblestone.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/CrayonRock.ogg:data/media_tmp/audio/ringtones/CrayonRock.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/CrazyDream.mp3:data/media_tmp/audio/ringtones/CrazyDream.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/CrazyDream.ogg:data/media_tmp/audio/ringtones/CrazyDream.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/CurveBall.mp3:data/media_tmp/audio/ringtones/CurveBall.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/CurveBall.ogg:data/media_tmp/audio/ringtones/CurveBall.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Curve.mp3:data/media_tmp/audio/ringtones/Curve.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/DancinFool.ogg:data/media_tmp/audio/ringtones/DancinFool.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ding.ogg:data/media_tmp/audio/ringtones/Ding.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/DonMessWivIt.ogg:data/media_tmp/audio/ringtones/DonMessWivIt.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/DreamTheme.mp3:data/media_tmp/audio/ringtones/DreamTheme.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/DreamTheme.ogg:data/media_tmp/audio/ringtones/DreamTheme.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Eastern_Sky.ogg:data/media_tmp/audio/ringtones/Eastern_Sky.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Enter_the_Nexus.ogg:data/media_tmp/audio/ringtones/Enter_the_Nexus.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/EtherShake.mp3:data/media_tmp/audio/ringtones/EtherShake.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/EtherShake.ogg:data/media_tmp/audio/ringtones/EtherShake.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Explore.mp3:data/media_tmp/audio/ringtones/Explore.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Familia.mp3:data/media_tmp/audio/ringtones/Familia.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Fire_Fly.mp3:data/media_tmp/audio/ringtones/Fire_Fly.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Flamenco.mp3:data/media_tmp/audio/ringtones/Flamenco.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Fractal.mp3:data/media_tmp/audio/ringtones/Fractal.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/FreeFlight.ogg:data/media_tmp/audio/ringtones/FreeFlight.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Friday.mp3:data/media_tmp/audio/ringtones/Friday.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/FriendlyGhost.mp3:data/media_tmp/audio/ringtones/FriendlyGhost.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/FriendlyGhost.ogg:data/media_tmp/audio/ringtones/FriendlyGhost.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Funk.mp3:data/media_tmp/audio/ringtones/Funk.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Funk_Yall.ogg:data/media_tmp/audio/ringtones/Funk_Yall.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Funky.mp3:data/media_tmp/audio/ringtones/Funky.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/GameOverGuitar.mp3:data/media_tmp/audio/ringtones/GameOverGuitar.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/GameOverGuitar.ogg:data/media_tmp/audio/ringtones/GameOverGuitar.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Gimlet.mp3:data/media_tmp/audio/ringtones/Gimlet.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Gimme_Mo_Town.ogg:data/media_tmp/audio/ringtones/Gimme_Mo_Town.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Glacial_Groove.ogg:data/media_tmp/audio/ringtones/Glacial_Groove.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Glass.mp3:data/media_tmp/audio/ringtones/Glass.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Glassy.mp3:data/media_tmp/audio/ringtones/Glassy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Growl.mp3:data/media_tmp/audio/ringtones/Growl.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Growl.ogg:data/media_tmp/audio/ringtones/Growl.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Guitaro.mp3:data/media_tmp/audio/ringtones/Guitaro.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/HalfwayHome.ogg:data/media_tmp/audio/ringtones/HalfwayHome.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Happy.mp3:data/media_tmp/audio/ringtones/Happy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Heavy.mp3:data/media_tmp/audio/ringtones/Heavy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Hectic.mp3:data/media_tmp/audio/ringtones/Hectic.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Highway.mp3:data/media_tmp/audio/ringtones/Highway.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Innovation.mp3:data/media_tmp/audio/ringtones/Innovation.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/InsertCoin.mp3:data/media_tmp/audio/ringtones/InsertCoin.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/InsertCoin.ogg:data/media_tmp/audio/ringtones/InsertCoin.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Jack.mp3:data/media_tmp/audio/ringtones/Jack.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/K.O..mp3:data/media_tmp/audio/ringtones/K.O..mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Liquify.mp3:data/media_tmp/audio/ringtones/Liquify.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/LoopyLounge.mp3:data/media_tmp/audio/ringtones/LoopyLounge.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/LoopyLounge.ogg:data/media_tmp/audio/ringtones/LoopyLounge.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/LosAngeles2019.ogg:data/media_tmp/audio/ringtones/LosAngeles2019.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Lounge.mp3:data/media_tmp/audio/ringtones/Lounge.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/LoveFlute.mp3:data/media_tmp/audio/ringtones/LoveFlute.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/LoveFlute.ogg:data/media_tmp/audio/ringtones/LoveFlute.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/MidEvilJaunt.mp3:data/media_tmp/audio/ringtones/MidEvilJaunt.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/MidEvilJaunt.ogg:data/media_tmp/audio/ringtones/MidEvilJaunt.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/MildlyAlarming.mp3:data/media_tmp/audio/ringtones/MildlyAlarming.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/MildlyAlarming.ogg:data/media_tmp/audio/ringtones/MildlyAlarming.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Moto.ogg:data/media_tmp/audio/ringtones/Moto.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Nairobi.ogg:data/media_tmp/audio/ringtones/Nairobi.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Nassau.ogg:data/media_tmp/audio/ringtones/Nassau.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/NewPlayer.mp3:data/media_tmp/audio/ringtones/NewPlayer.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/NewPlayer.ogg:data/media_tmp/audio/ringtones/NewPlayer.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Noises1.mp3:data/media_tmp/audio/ringtones/Noises1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Noises1.ogg:data/media_tmp/audio/ringtones/Noises1.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Noises2.mp3:data/media_tmp/audio/ringtones/Noises2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Noises2.ogg:data/media_tmp/audio/ringtones/Noises2.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Noises3.mp3:data/media_tmp/audio/ringtones/Noises3.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Noises3.ogg:data/media_tmp/audio/ringtones/Noises3.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/No_Limits.ogg:data/media_tmp/audio/ringtones/No_Limits.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Octavate.mp3:data/media_tmp/audio/ringtones/Octavate.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Old_Phone.mp3:data/media_tmp/audio/ringtones/Old_Phone.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Orbit.mp3:data/media_tmp/audio/ringtones/Orbit.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/OrganDub.mp3:data/media_tmp/audio/ringtones/OrganDub.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/OrganDub.ogg:data/media_tmp/audio/ringtones/OrganDub.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Pads.mp3:data/media_tmp/audio/ringtones/Pads.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Paradise_Island.ogg:data/media_tmp/audio/ringtones/Paradise_Island.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Pentatonic.mp3:data/media_tmp/audio/ringtones/Pentatonic.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Picking.mp3:data/media_tmp/audio/ringtones/Picking.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Playa.ogg:data/media_tmp/audio/ringtones/Playa.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Potluck.mp3:data/media_tmp/audio/ringtones/Potluck.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Radiation.ogg:data/media_tmp/audio/ringtones/Radiation.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Red_Beats.ogg:data/media_tmp/audio/ringtones/Red_Beats.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Red_Tea.mp3:data/media_tmp/audio/ringtones/Red_Tea.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Reflect.mp3:data/media_tmp/audio/ringtones/Reflect.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Reset.mp3:data/media_tmp/audio/ringtones/Reset.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Revelation.ogg:data/media_tmp/audio/ringtones/Revelation.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Rhino.mp3:data/media_tmp/audio/ringtones/Rhino.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Riffing.mp3:data/media_tmp/audio/ringtones/Riffing.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ring_Classic_02.mp3:data/media_tmp/audio/ringtones/Ring_Classic_02.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ring_Classic_02.ogg:data/media_tmp/audio/ringtones/Ring_Classic_02.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ring_Digital_02.mp3:data/media_tmp/audio/ringtones/Ring_Digital_02.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ring_Digital_02.ogg:data/media_tmp/audio/ringtones/Ring_Digital_02.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ring_Synth_02.mp3:data/media_tmp/audio/ringtones/Ring_Synth_02.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ring_Synth_02.ogg:data/media_tmp/audio/ringtones/Ring_Synth_02.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ring_Synth_04.mp3:data/media_tmp/audio/ringtones/Ring_Synth_04.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ring_Synth_04.ogg:data/media_tmp/audio/ringtones/Ring_Synth_04.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Road_Trip.ogg:data/media_tmp/audio/ringtones/Road_Trip.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/RomancingTheTone.mp3:data/media_tmp/audio/ringtones/RomancingTheTone.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/RomancingTheTone.ogg:data/media_tmp/audio/ringtones/RomancingTheTone.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Safari.ogg:data/media_tmp/audio/ringtones/Safari.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Sapphire.mp3:data/media_tmp/audio/ringtones/Sapphire.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Savannah.ogg:data/media_tmp/audio/ringtones/Savannah.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Seville.ogg:data/media_tmp/audio/ringtones/Seville.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Shes_All_That.ogg:data/media_tmp/audio/ringtones/Shes_All_That.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Shocking.mp3:data/media_tmp/audio/ringtones/Shocking.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/SilkyWay.ogg:data/media_tmp/audio/ringtones/SilkyWay.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/SitarVsSitar.mp3:data/media_tmp/audio/ringtones/SitarVsSitar.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/SitarVsSitar.ogg:data/media_tmp/audio/ringtones/SitarVsSitar.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Solaris.mp3:data/media_tmp/audio/ringtones/Solaris.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Speak_Easy.mp3:data/media_tmp/audio/ringtones/Speak_Easy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/SpringyJalopy.mp3:data/media_tmp/audio/ringtones/SpringyJalopy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/SpringyJalopy.ogg:data/media_tmp/audio/ringtones/SpringyJalopy.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Standard_1.mp3:data/media_tmp/audio/ringtones/Standard_1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Standard_2.mp3:data/media_tmp/audio/ringtones/Standard_2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Standard_3.mp3:data/media_tmp/audio/ringtones/Standard_3.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Standard_4.mp3:data/media_tmp/audio/ringtones/Standard_4.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Steppin_Out.ogg:data/media_tmp/audio/ringtones/Steppin_Out.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Terminated.mp3:data/media_tmp/audio/ringtones/Terminated.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Terminated.ogg:data/media_tmp/audio/ringtones/Terminated.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Third_Eye.ogg:data/media_tmp/audio/ringtones/Third_Eye.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Thunderfoot.ogg:data/media_tmp/audio/ringtones/Thunderfoot.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ticker_1.mp3:data/media_tmp/audio/ringtones/Ticker_1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Ticker_2.mp3:data/media_tmp/audio/ringtones/Ticker_2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/T-Jingle.mp3:data/media_tmp/audio/ringtones/T-Jingle.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Transmission.ogg:data/media_tmp/audio/ringtones/Transmission.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Travels.mp3:data/media_tmp/audio/ringtones/Travels.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Trinket.mp3:data/media_tmp/audio/ringtones/Trinket.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/TwirlAway.mp3:data/media_tmp/audio/ringtones/TwirlAway.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/TwirlAway.ogg:data/media_tmp/audio/ringtones/TwirlAway.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/VeryAlarmed.mp3:data/media_tmp/audio/ringtones/VeryAlarmed.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/VeryAlarmed.ogg:data/media_tmp/audio/ringtones/VeryAlarmed.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Vid_Kid.mp3:data/media_tmp/audio/ringtones/Vid_Kid.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Voxy.mp3:data/media_tmp/audio/ringtones/Voxy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Whistler.mp3:data/media_tmp/audio/ringtones/Whistler.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/Windchimer.mp3:data/media_tmp/audio/ringtones/Windchimer.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/World.mp3:data/media_tmp/audio/ringtones/World.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ringtones/World.ogg:data/media_tmp/audio/ringtones/World.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ui/camera_click.ogg:data/media_tmp/audio/ui/camera_click.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ui/Effect_Tick.ogg:data/media_tmp/audio/ui/Effect_Tick.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ui/KeypressDelete.ogg:data/media_tmp/audio/ui/KeypressDelete.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ui/KeypressReturn.ogg:data/media_tmp/audio/ui/KeypressReturn.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ui/KeypressSpacebar.ogg:data/media_tmp/audio/ui/KeypressSpacebar.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ui/KeypressStandard.ogg:data/media_tmp/audio/ui/KeypressStandard.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/ui/VideoRecord.ogg:data/media_tmp/audio/ui/VideoRecord.ogg

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
