snappy - A SpectrumScale Snapshot Utility

This will generate filesystem or fileset snapshots.  It works off of a file
in the root directory of each mounted GPFS device.

If you run the command by itself, the first pass will create a default snapshot configuration file in each root directory.  The default is to not snapshot.  You can then modify the file to your needs.


For example, this file will snaphot the entire filesystem on device condo daily and keep only the latest 5 versions.  To disable this, set Active=False.

(! 1004)-> cat /condo/.snapcfg
[DEFAULT]
Active=True
SnapType=Filesystem
Versions=5
Frequency=daily


