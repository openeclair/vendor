for prebuilt in * ; do
 	echo PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/$prebuilt\:system/$prebuilt;
done;
for prebuilt in */* ; do
 	echo PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/$prebuilt\:system/$prebuilt;
done;
for prebuilt in */*/* ; do
 	echo PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/$prebuilt\:system/$prebuilt;
done;
for prebuilt in */*/*/* ; do
 	echo PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/$prebuilt\:system/$prebuilt;
done;

