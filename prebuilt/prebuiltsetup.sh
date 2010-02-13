for prebuilt in * ; do
 	echo PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/$prebuilt\:system/$prebuilt;
done;
for prebuilt in */* ; do
 	echo PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/$prebuilt\:system/$prebuilt;
done;
for prebuilt in */*/* ; do
 	echo PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/$prebuilt\:system/$prebuilt;
done;
for prebuilt in */*/*/* ; do
 	echo PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/$prebuilt\:system/$prebuilt;
done;

