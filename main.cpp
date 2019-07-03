#include <stdio.h>
#include <Processing.NDI.Lib.h>

int main(int argc, char* argv[]) {
	NDIlib_initialize();
	
	NDIlib_find_instance_t nf = NDIlib_find_create_v2();
	if (!nf) {
		printf("Unable ta create finder\n");
		
		return -1;
	}
	
	
	while (true) {
		NDIlib_find_wait_for_sources(nf, 1000);
		
		uint32_t sourcesCount;
		const NDIlib_source_t* pSources = NDIlib_find_get_current_sources(nf, &sourcesCount);
		
		printf("Found %i sources\n", sourcesCount);
	};


	NDIlib_find_destroy(nf);
	
	NDIlib_destroy();

	return 0;
}
