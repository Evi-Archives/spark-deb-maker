To create a spark deb package
=============================

- Copy the spark-deb-template directory in this directory to a temporary scratch
  location
- copy `make_spark_deb.sh` into the scratch directory
- download your desired version of spark into the scratch directory
- edit `make_spark_deb.sh` to set the right value for `SPARK_VERS`
- run `./make_spark_deb.sh`
- when you're done, there should be a new directory named `spark-evidation_XXX`
- go into that directory and edit DEBIAN/control to be sure the versions are
  correct
- finally, package that folder up into a deb using the following command with
  1.3.1 replaced with the appropriate version:
    dpkg-deb -b spark-evidation_1.3.1 spark-evidation_1.3.1.deb
