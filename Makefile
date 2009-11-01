# Makefile for filecasting
# Author: Jaeho Shin <netj@sparcs.org>
# Created: 2009-02-22

NAME=filecasting
VERSION=0.5
PRODUCT=$(NAME)-$(VERSION).sh


dist/$(PRODUCT): filecasting
	mkdir -p $(@D)
	cp $< $@

.PHONY: install clean

install: dist/$(PRODUCT)
	install $< ~/bin/$(NAME)

clean:
	rm -f dist/$(PRODUCT)
