DIR := ~/Library/Application\ Support/Karabiner

FILES := private.xml
TARGETS :=
TEMPS :=

.PHONY: all clean install uninstall FORCE
.PRECIOUS: $(TEMPS)

all: $(TARGETS)

clean:
	rm -rf $(TARGETS) $(TEMPS)

install: $(TARGETS)
	cp $(FILES) $(TARGETS) $(DIR)/
		
uninstall:
	rm -rf $(addprefix $(DIR)/, $(FILES) $(TARGETS))

FORCE:
