ifeq ($(shell uname -s), Darwin)
	SYSTEM=macbook
else
	ifeq ($(shell uname -n), black)
		SYSTEM=desktop
	else
		SYSTEM=laptop
	endif
endif

