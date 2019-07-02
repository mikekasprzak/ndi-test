NDI_SDK_DIR	:=	../ndi-sdk-linux
NDI_SDK_TARGET	:=	x86_64-linux-gnu

INCLUDE_DIRS	:=	$(NDI_SDK_DIR)/include
LIB_DIRS	:=	$(NDI_SDK_DIR)/lib/$(NDI_SDK_TARGET)


INCLUDE_DIRS	:=	$(addprefix -I,$(INCLUDE_DIRS))
LIB_DIRS	:=	$(addprefix -L,$(LIB_DIRS))

LIBS		:=	-lndi

out.exe: *.cpp
	g++ $^ $(INCLUDE_DIRS) $(LIB_DIRS) $(LIBS) -o $@

clean:
	rm -f out.exe

.PHONY: clean run
