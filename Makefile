PREFIX     ?= /opt
APPNAME    := paintsdown
INSTALLDIR := $(PREFIX)/$(APPNAME)
BINDIR     := $(INSTALLDIR)/bin
SYMLINKDIR := /usr/local/bin

SCRIPTS    := paintsdown.sh

.PHONY: all install uninstall clean

all:
	@echo "Nothing to build. Run 'make install' to install $(APPNAME)"

install:
	@echo "Installing $(APPNAME) to $(INSTALLDIR)"
	sudo mkdir -p $(BINDIR)
	sudo cp $(SCRIPTS) $(BINDIR)/$(APPNAME)
	sudo chmod +x $(BINDIR)/$(APPNAME)
	@echo "Creating symlink in $(SYMLINKDIR)"
	sudo ln -sfn $(BINDIR)/$(APPNAME) $(SYMLINKDIR)/$(APPNAME)
	@echo "$(APPNAME) installed. Try running '$(APPNAME) --help'"

uninstall:
	@echo "uninstall"

clean:
	@echo "Nothing to clean"

