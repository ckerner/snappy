GPFSDIR=$(shell dirname $(shell which mmlscluster))
CURDIR=$(shell pwd)
LOCLDIR=/usr/local/bin

install: make_log_directory snappy

update: purge_links snappy

snappy:   .FORCE
	cp -p $(CURDIR)/snappy $(LOCLDIR)/snappy

make_log_directory:     .FORCE
	mkdir -p /var/log/snapshots

clean:
	rm -f $(LOCLDIR)/snappy
	rm -Rf /var/log/snapshots

cron:   .FORCE
	echo '01 00 * * * /usr/local/bin/snappy --daily' >>/var/spool/cron/root

purge_links:
	rm -f ${LOCLDIR}/snappy

.FORCE:


