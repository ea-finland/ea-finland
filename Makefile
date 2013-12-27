PY=python
PELICAN=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content
OUTPUTDIR=$(BASEDIR)/output
CONFFILE=$(BASEDIR)/pelicanconf.py
PUBLISHCONF=$(BASEDIR)/publishconf.py


DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif

help:
	@echo 'Makefile for a pelican Web site                                        '
	@echo '                                                                       '
	@echo 'Usage:                                                                 '
	@echo '   make html                        (re)generate the web site          '
	@echo '   make clean                       remove the generated files         '


html:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(CONFFILE) $(PELICANOPTS)
	make tidy
	
publish:
	$(PELICAN) $(INPUTDIR) -o $(OUTPUTDIR) -s $(PUBLISHCONF) $(PELICANOPTS)
	make tidy
	
tidy:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)/authors.html
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)/category/
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)/author/
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)/categories.html
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)/tags.html
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)/authors.html
	

.PHONY: html help publish
