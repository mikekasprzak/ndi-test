NDI_SDK_DIR		:=	../ndi-sdk-windows

INCLUDE_DIRS	:=	$(NDI_SDK_DIR)/include
LIB_DIRS		:=	$(NDI_SDK_DIR)/Lib/x64


INCLUDE_DIRS	:=	$(addprefix -I,$(INCLUDE_DIRS))
LIB_DIRS		:=	$(addprefix -L,$(LIB_DIRS))

LIBS			:=	$(NDI_SDK_DIR)/Lib/x64/Processing.NDI.Lib.x64.lib



out.exe: *.cpp
	g++ $^ $(INCLUDE_DIRS) $(LIB_DIRS) $(LIBS) -o $@

clean:
	rm -f out.exe

.PHONY: clean run
