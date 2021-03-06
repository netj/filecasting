# Makefile for filecasting
# Author: Jaeho Shin <netj@sparcs.org>
# Created: 2009-02-22

NAME=filecasting
VERSION=0.$(shell date +%Y%m%d)
PRODUCT=$(NAME)-$(VERSION).sh


dist/$(PRODUCT): filecasting
	mkdir -p $(@D)
	cp $< $@

.PHONY: install clean

install: dist/$(PRODUCT)
	install $< ~/bin/$(NAME)
	install update-filecasts ~/bin/

clean:
	rm -f dist/$(PRODUCT)
