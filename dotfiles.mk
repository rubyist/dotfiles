ifeq ($(shell uname -s), Darwin)
	SYSTEM=macbook
else
	ifeq ($(shell uname -n), black)
		SYSTEM=desktop
	else
		SYSTEM=laptop
	endif
endif

fill="$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))/fill.go"

define fill-tmpl
@echo "generating $3 from $1 using $2"
@rm -f $3
@go run $(fill) $(SYSTEM) $1 $2 > $3
endef

define fill-pass
@echo "filling $2 from pass $1"
@pass show $1 > $2
endef
