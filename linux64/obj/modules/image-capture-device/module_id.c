/* module_id.c - automatically generated, do not edit */

#include <simics/build-id.h>
#include <simics/base/types.h>
#include <simics/util/help-macros.h>

#if defined(SIMICS_6_API)
#define BUILD_API "6"
#elif defined(SIMICS_5_API)
#define BUILD_API "5"
#elif defined(SIMICS_4_8_API)
#define BUILD_API "4.8"
#else
#define BUILD_API "?"
#endif

#define EXTRA "                                           "

EXPORTED const char _module_capabilities_[] =
	"VER:" SYMBOL_TO_STRING(SIM_VERSION_COMPAT) ";"
	"ABI:" SYMBOL_TO_STRING(SIM_VERSION) ";"
	"API:" BUILD_API ";"
	"BLD:" "0" ";"
	"BLD_NS:__simics_project__;"
	"BUILDDATE:" "1714879611" ";"
	"MOD:" "image-capture-device" ";"
	"CLS:ic_device" ";"
	"HOSTTYPE:" "linux64" ";"
	"THREADSAFE;"
	EXTRA ";";
EXPORTED const char _module_date[] = "Sat May  4 21:26:51 2024";
extern void _initialize_ic_device_dml(void);
extern void init_local(void) {}
EXPORTED void _simics_module_init(void);
extern void sim_iface_wrap_init(void);

void
_simics_module_init(void)
{

	_initialize_ic_device_dml();
	init_local();
}
