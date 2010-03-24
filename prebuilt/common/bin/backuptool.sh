#!/sbin/sh
#
# Backup and restore proprietary Android system files
#

C=/tmp/backupdir
S=/system
V=OpenEclair

PROCEED=1;

check_prereq() {
   if ( ! grep -q "^ro.modversion=.*$V.*" /system/build.prop );
   then
      echo "Not backing up files from incompatible version.";
      PROCEED=0;
   fi
}

check_installscript() {
   if [ -f "/tmp/.installscript" ];
   then
      echo "/tmp/.installscript found. Skipping backuptool."
      PROCEED=0;
   fi
}

get_files() {
    cat <<EOF
app/Vending.apk
app/VoiceSearchWithKeyboard.apk
app/Street.apk
app/YouTube.apk
app/GenieWidget.apk
app/EnhancedGoogleSearchProvider.apk
app/Gmail.apk
app/GmailProvider.apk
app/GoogleApps.apk
app/GoogleBackupTransport.apk
app/GoogleCheckin.apk
app/GoogleContactsSyncAdapter.apk
app/GooglePartnerSetup.apk
app/GoogleSettingsProvider.apk
app/GoogleSubscribedFeedsProvider.apk
app/gtalkservice.apk
app/MarketUpdater.apk
app/MediaUploader.apk
app/NetworkLocation.apk
app/SetupWizard.apk
app/Talk.apk
app/TalkProvider.apk
lib/libhtc_ril.so
lib/libspeech.so
lib/libt9.so
framework/com.google.android.gtalkservice.jar
framework/com.google.android.maps.jar
etc/permissions/com.google.android.datamessaging.xml
etc/permissions/com.google.android.gtalkservice.xml
etc/permissions/com.google.android.maps.xml
EOF
}

backup_file() {
   if [ -e "$1" ];
   then
      if [ -n "$2" ];
      then
         echo "$2  $1" | md5sum -c -
         if [ $? -ne 0 ];
         then
            echo "MD5Sum check for $1 failed!";
            exit $?;
         fi
      fi
      
      local F=`basename $1`
      
      # dont backup any apps that have odex files, they are useless
      if ( echo $F | grep -q "\.apk$" ) && [ -e `echo $1 | sed -e 's/\.apk$/\.odex/'` ];
      then
         echo "Skipping odexed apk $1";
      else
         cp $1 $C/$F
      fi
   fi
}

restore_file() {
   local FILE=`basename $1`
   local DIR=`dirname $1`
   if [ -e "$C/$FILE" ];
   then
      if [ ! -d "$DIR" ];
      then
         mkdir -p $DIR;
      fi
      cp -p $C/$FILE $1;
      if [ -n "$2" ];
      then
         rm $2;
      fi
   fi
}

case "$1" in
   backup)
      mount $S
      check_prereq;
      check_installscript;
      if [ $PROCEED -ne 0 ];
      then
         rm -rf $C
         mkdir -p $C
         get_files | while read FILE REPLACEMENT; do
            backup_file $S/$FILE
         done
      fi
      umount $S
   ;;
   restore)
      check_prereq;
      check_installscript;
      if [ $PROCEED -ne 0 ];
      then
         get_files | while read FILE REPLACEMENT; do
            R=""
            [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
            restore_file $S/$FILE $R
         done
         rm -rf $C
      fi
   ;;
   *)
      echo "Usage: $0 {backup|restore}"
      exit 1
esac

exit 0

