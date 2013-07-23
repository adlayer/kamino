install:
	mkdir ~/.kamino
	touch ~/.kamino/bucket.config
	@read -p "What bucket will be used as storage?: " bucket; \
	echo $$bucket >> ~/.kamino/bucket.config
	cp kamino /usr/local/bin
	echo 'Kamino is installed'
uninstall:
	rm -rf /usr/local/bin/kamino
	rm -rf ~/.kamino
update:
	rm -rf /usr/local/bin/kamino
	cp kamino /usr/local/bin
default:
	make install

.PHONY: default uninstall install