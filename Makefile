install:
	cp kamino /usr/local/bin

	mkdir ~/.kamino

	cp -r dnas ~/.kamino/dnas
	cp -r servers ~/.kamino/servers
	echo 'Kamino is installed'
uninstall:
	rm -rf /usr/local/bin/kamino
	rm -rf ~/.kamino
update:
	rm -rf /usr/local/bin/kamino
	cp kamino /usr/local/bin
default:
	make install
test: 
	bats test

.PHONY: default uninstall install test
