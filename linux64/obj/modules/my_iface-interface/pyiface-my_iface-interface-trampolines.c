#include <simics/python-header.h>
#include <simics/interface-api.h>
#include <simics/internal/python.h>

#include "/home/david/Documents/Empotrados/Proyecto2-Embebidos/modules/my_iface-interface/my_iface-interface.h"

bool py_my_iface_interface_trampoline_MNPT13conf_object_tKintPT15my_iface_data_tRKbool(conf_object_t *NOTNULL arg0, int arg1, my_iface_data_t *arg2)
{
	typedef bool (*t)(conf_object_t *NOTNULL, int, my_iface_data_t *, PyObject *);
	t f = (t)TRAMPOLINE_FUNCTION_PLACEHOLDER;
	return f(arg0, arg1, arg2, (void *)TRAMPOLINE_DATA_PLACEHOLDER);
}

