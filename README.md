To create a spark deb package
=============================

- Copy the `spark-deb-template` directory and `make_spark_deb.sh` to a temporary scratch
  location
- download your desired version of spark into the scratch directory and unpack it
- edit `make_spark_deb.sh` to set the right value for `SPARK_VERS`
- run `./make_spark_deb.sh`
- when you're done, there should be a new directory named `spark-evidation_XXX`
- go into that directory and edit `DEBIAN/control` to be sure the versions are
  correct
- finally, package that folder up into a deb using the following command with
  1.4.1 replaced with the appropriate version:

        dpkg-deb -b spark-evidation_1.4.1 spark-evidation_1.4.1.deb
