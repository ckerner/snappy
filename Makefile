GPFSDIR=$(shell dirname $(shell which mmlscluster))
CURDIR=$(shell pwd)
LOCLDIR=/usr/local/bin

install: make_log_directory snappy

update: purge_links snappy

snappy:   .FORCE
	ln -s $(CURDIR)/snappy $(LOCLDIR)/snappy

make_log_directory:     .FORCE
	mkdir -p /var/log/snapshots

clean:
	rm -f $(LOCLDIR)/snappy
	rm -Rf /var/log/snapshots

purge_links:
	rm -f ${LOCLDIR}/snappy

.FORCE:


