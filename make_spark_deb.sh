#!/usr/bin/env bash
# please see the README.md before running
SPARK_VERS=1.3.1
APACHE_DIR=spark-$SPARK_VERS-bin-hadoop2.6
OUT_DIR=spark-evidation_$SPARK_VERS

rm -r $OUT_DIR
mkdir $OUT_DIR && \
echo "Adding template..." && cp -r spark-deb-template/* $OUT_DIR && \
echo "Adding apache-spark..." && rsync -a --delete $APACHE_DIR/ $OUT_DIR/usr/lib/spark && \
cd $OUT_DIR && \
find . -type f ! -regex '.*.hg.*' ! -regex '.*?debian-binary.*' ! -regex '.*?DEBIAN.*' -printf '%P ' | xargs md5sum > DEBIAN/md5sums

if [ $? -ne 0 ]; then
    echo "Failed to create spark deb folder."
else
    echo "Success. Consult the README.md to finish."
fi
