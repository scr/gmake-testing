$(guile (load "list-to-hash.scm"))

LIST = yinst.foo foo yinst.foo bar yinst.VALUE1 key1
HASH = $(guile (list-to-hash (list $(foreach elem,$(LIST),"$(elem)"))))

.PHONY: all
all:

ECHO_%:
	@echo $*="$($*)"
