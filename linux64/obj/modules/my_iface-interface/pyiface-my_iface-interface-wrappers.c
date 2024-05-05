#include <simics/python-header.h>
#include <simics/interface-api.h>
#include <simics/internal/python.h>
/*
  © 2010 Intel Corporation

  This software and the related documents are Intel copyrighted materials, and
  your use of them is governed by the express license under which they were
  provided to you ("License"). Unless the License provides otherwise, you may
  not use, modify, copy, publish, distribute, disclose or transmit this software
  or the related documents without Intel's prior written permission.

  This software and the related documents are provided as is, with no express or
  implied warranties, other than those that are expressly stated in the License.
*/

//								      -*- C -*-

#ifdef _MSC_VER
#define long_long __int64
#define long_long_str "__int64"
#else
#define long_long long long
#define long_long_str "long long"
#endif

#ifndef UNUSED
#  ifdef __GNUC__
#    define UNUSED __attribute__ ((unused))
#  else
#    define UNUSED
#  endif
#endif

static UNUSED int check_sim_exception(void);

static UNUSED bool get_py_opaque(void **dst, PyObject *src,
                                 PyTypeObject *py_type);

#define PYLONG_ERROR do {                                       \
        if (PyErr_ExceptionMatches(PyExc_SystemError))          \
                PyErr_SetString(PyExc_TypeError,                \
                                "cannot convert to integer");   \
        return 0;                                               \
} while (0)

/* must be called with PyNone or PyUnicode object; returns zero on
   success, and -1 on failure (i.e. called with wrong type) */
static UNUSED int
gulp_string_from_python(PyObject *uobj, char **result)
{
        if (uobj == Py_None) {
                *result = NULL;
                return 0;
        };

        if (PyUnicode_Check(uobj)) {
                /* TODO: When Simics' minimum Python version is 3.10, use here
                   PyUnicode_AsUTF8AndSize added to limited API in 3.10. */
                PyObject *utf8 = PyUnicode_AsUTF8String(uobj);
                if (utf8 == NULL)
                        return -1;
                else {
                        *result = MM_STRDUP(PyBytes_AsString(utf8));
                        Py_DECREF(utf8);
                        return 0;
                }
        }

        PyErr_SetString(PyExc_TypeError, "value is not a string");
        return -1;
}

static UNUSED int
get_int(PyObject *pyobj, int *i)
{
        long l = PyLong_AsLong(pyobj);
        if (PyErr_Occurred())
                return 0;
        if (l < INT_MIN || l > INT_MAX) {
                PyErr_SetString(PyExc_OverflowError,
                                "value does not fit in an int");
                return 0;
        }

        *i = l;
        return 1;
}

static UNUSED int
get_char(PyObject *pyobj, char *c)
{
        long l = PyLong_AsLong(pyobj);

        if (PyErr_Occurred())
                return 0;

        if (l < CHAR_MIN || l > CHAR_MAX) {
                PyErr_SetString(PyExc_OverflowError,
                                "value does not fit in a char");
                return 0;
        }

        *c = l;
        return 1;
}

static UNUSED int
get_uchar(PyObject *pyobj, unsigned char *u)
{
        long l = PyLong_AsLong(pyobj);

        if (PyErr_Occurred())
                return 0;

        if (l < 0 || l > UCHAR_MAX) {
                PyErr_SetString(PyExc_OverflowError,
                                "value does not fit in an unsigned char");
                return 0;
        }

        *u = l;
        return 1;
}

static UNUSED int
get_schar(PyObject *pyobj, signed char *s)
{
        long l = PyLong_AsLong(pyobj);

        if (PyErr_Occurred())
                return 0;

        if (l < SCHAR_MIN || l > SCHAR_MAX) {
                PyErr_SetString(PyExc_OverflowError,
                                "value does not fit in a signed char");
                return 0;
        }

        *s = l;
        return 1;
}

static UNUSED int
get_ushort(PyObject *pyobj, unsigned short *u)
{
        long l = PyLong_AsLong(pyobj);

        if (PyErr_Occurred())
                return 0;

        if (l < 0 || l > USHRT_MAX) {
                PyErr_SetString(PyExc_OverflowError,
                                "value does not fit in an unsigned short");
                return 0;
        }

        *u = l;
        return 1;
}

static UNUSED int
get_short(PyObject *pyobj, short *u)
{
        long l = PyLong_AsLong(pyobj);

        if (PyErr_Occurred())
                return 0;

        if (l < SHRT_MIN || l > SHRT_MAX) {
                PyErr_SetString(PyExc_OverflowError,
                                "value does not fit in a (signed) short");
                return 0;
        }

        *u = l;
        return 1;
}

static UNUSED int
get_uint(PyObject *pyobj, unsigned int *u)
{
        unsigned long ul;
        long l = PyLong_AsLong(pyobj);

        if (!PyErr_Occurred()) {
                if (l < 0 || l > UINT_MAX)
                        goto out_of_range;
                *u = l;
                return 1;
        }
        PyErr_Clear();

        ul = PyLong_AsUnsignedLong(pyobj);

        if (PyErr_Occurred())
                PYLONG_ERROR;

        if (ul > UINT_MAX)
                goto out_of_range;

        *u = ul;
        return 1;

 out_of_range:
        PyErr_SetString(PyExc_OverflowError,
                        "value does not fit in an unsigned int");
        return 0;
}

static UNUSED int
get_ulong(PyObject *pyobj, unsigned long *u)
{
        unsigned long ul;
        long l = PyLong_AsLong(pyobj);

        if (!PyErr_Occurred()) {
                if (l < 0)
                        goto out_of_range;
                *u = l;
                return 1;
        }
        PyErr_Clear();

        ul = PyLong_AsUnsignedLong(pyobj);

        if (PyErr_Occurred())
                PYLONG_ERROR;

        *u = ul;
        return 1;

 out_of_range:
        PyErr_SetString(PyExc_OverflowError,
                        "value does not fit in an unsigned long");
        return 0;
}

static UNUSED int
get_ulonglong(PyObject *pyobj, unsigned long_long *u)
{
        unsigned long_long ull;
        long l = PyLong_AsLong(pyobj);

        if (!PyErr_Occurred()) {
                if (l < 0)
                        goto out_of_range;
                *u = l;
                return 1;
        }
        PyErr_Clear();

        ull = PyLong_AsUnsignedLongLong(pyobj);

        if (PyErr_Occurred())
                PYLONG_ERROR;

        *u = ull;
        return 1;

 out_of_range:
        PyErr_SetString(PyExc_OverflowError,
                        "value does not fit in an unsigned " long_long_str);
        return 0;
}

static UNUSED int
get_longlong(PyObject *pyobj, long_long *res)
{
        /* PyIntObjects will be also handled by PyLong_AsLongLong */
        long_long ll = PyLong_AsLongLong(pyobj);

        if (PyErr_Occurred())
                PYLONG_ERROR;

        *res = ll;
        return 1;
}

/* standard non-bitfield struct member setter */
static UNUSED int
set_field(void *c_struct, const struct_member_t *member, PyObject *pysrc)
{
        return member->type->from_py((char *)c_struct + member->ofs, pysrc);
}

/* standard non-bitfield struct member getter */
static UNUSED PyObject *
get_field(void *c_struct, conf_object_t *object, const struct_member_t *member)
{
        return member->type->to_py((char *)c_struct + member->ofs, object);
}

/* standard function pointer struct member setter */
static UNUSED int
set_function_field(void *c_struct, const struct_member_t *member, PyObject *pysrc)
{
        return (VT_get_c_py_wrap((const void **)((char *)c_struct + member->ofs), pysrc,
                                 member->type->fn_wrap_data, false)
                ? 0 : -1);
}

/* standard function pointer struct member getter */
static UNUSED PyObject *
get_function_field(void *c_struct, conf_object_t *object,
                   const struct_member_t *member)
{
        void **field = (void **)((char *)c_struct + member->ofs);
        return VT_get_py_c_wrap(*field, object, member->type->fn_wrap_data);
}

static void opaque_type_delete(PyObject *_obj) UNUSED;
static SIM_PY_HASH_RET opaque_type_hash(PyObject *_obj) UNUSED;
static int opaque_type_init(PyObject *_obj, PyObject *args, 
                            PyObject *kwds) UNUSED;
static PyObject *opaque_type_str(PyObject *_obj) UNUSED;

#define PY_OPAQUE_DATA(type, obj) ((type)((py_opaque_type_t *)obj)->data)
#define PY_OPAQUE_MUTABLE(obj) (((py_opaque_type_t *)obj)->mutable)
#define PY_OPAQUE_SET_MUTABLE(obj, flag) (((py_opaque_type_t *)obj)->mutable = flag)

static void arity_error(PyObject *tuple, int arity, const char *desc);

FORCE_INLINE bool
check_arity(PyObject *tuple, int arity, const char *desc)
{
        if (PyTuple_Size(tuple) != arity) {
                arity_error(tuple, arity, desc);
                return false;
        }
        return true;
}

/* default __dict__ method - just returns a dict of the members
   (but not their values - some of the might have side effects) */
static UNUSED PyObject *
make_member_dict(void *c_struct, opaque_type_t *ot)
{
        PyObject *d = PyDict_New();
        for (int i = 0; i < ot->nmembers; i++)
                PyDict_SetItemString(d, ot->members[i].name, Py_None);
        return d;
}

static PyObject *
new_object_from_pytype(void *data, bool malloced, bool free_fields,
                       PyTypeObject *py_type, conf_object_t *object)
{
        if (data == NULL) {
                Py_INCREF(Py_None);
                return Py_None;
        }

        py_opaque_type_t *res = PyObject_New(py_opaque_type_t, py_type);
        res->data        = data;
        res->malloced    = malloced;
        res->free_fields = free_fields;
        res->object      = object;
        res->mutable     = true;
        return (PyObject *)res;
}

static PyObject *
new_opaque_object(void *data, bool malloced, bool free_fields,
                  opaque_type_t *ot, conf_object_t *object)
{
        if (data == NULL) {
                Py_INCREF(Py_None);
                return Py_None;
        }

        py_opaque_type_t *res = (py_opaque_type_t *)new_object_from_pytype(
                         data, malloced, free_fields, ot->pytype, object);
        res->type = ot;
        return (PyObject *)res;
}

static UNUSED PyObject *
new_immutable_opaque_object(void *data, bool malloced, bool free_fields,
                            opaque_type_t *ot, conf_object_t *object)
{
        PyObject *obj = new_opaque_object(
                data, malloced, free_fields, ot, object);
        ((py_opaque_type_t *)obj)->mutable = false;
        return obj;
}

static UNUSED PyObject *
opaque_type_new(opaque_type_t *ot, PyObject *args, PyObject *kwds)
{
        void *data = mm_zalloc(ot->size, ot->size, ot->pyspec.name,
                               __FILE__, __LINE__);
        return new_opaque_object(data, true, true, ot, NULL);
}

static UNUSED PyObject *
empty_type_new(opaque_type_t *ot, PyObject *args, PyObject *kwds)
{
        PyErr_Format(PyExc_TypeError, "cannot create %s", ot->name);
        return NULL;
}

static UNUSED PyObject *
opaque_type_richcompare(PyObject *po0, PyObject *po1, int op)
{
        py_opaque_type_t *o0 = (py_opaque_type_t *)po0;
        py_opaque_type_t *o1 = (py_opaque_type_t *)po1;
        int c = 0;
        if ((char *)o0->object < (char *)o1->object)
                c = -1;
        if ((char *)o0->object > (char *)o1->object)
                c = 1;
        if (c != 0) {
                Py_RETURN_RICHCOMPARE(c, 0, op);
        } else {
                Py_RETURN_RICHCOMPARE(o0->data, o1->data, op);
        }
}

static int
compare_member(const void *key, const void *memb)
{
        const char *keyname = key;
        const struct_member_t *m = memb;
        return strcmp(keyname, m->name);
}

static opaque_type_t *
lookup_opaque_type_from_pytype(PyTypeObject *type)
{
        PyObject *m = PyObject_GetAttrString(
                (PyObject *)type,
                "__module__");
        PyObject *em = PyUnicode_AsUTF8String(m);
        const char *module = PyBytes_AsString(em);
        PyObject *n = PyObject_GetAttrString((PyObject *)type,
                                             "__name__");
        PyObject *e = PyUnicode_AsUTF8String(n);
        const char *name = PyBytes_AsString(e);
        strbuf_t qm = sb_newf("%s.%s", module, name);
        opaque_type_t *ot = VT_lookup_python_opaque_type(sb_str(&qm));
        if (!ot) {
                /* Old Simics-Base used name only */
                opaque_type_t *ot = VT_lookup_python_opaque_type(name);
                ASSERT(ot);
        }
        sb_free(&qm);
        Py_DECREF(em);
        Py_DECREF(m);
        Py_DECREF(e);
        Py_DECREF(n);
        return ot;
}

static UNUSED PyObject *
opaque_type_getattro(PyObject *obj, PyObject *nameo)
{
        py_opaque_type_t *o = (py_opaque_type_t *)obj;
        opaque_type_t *ot = lookup_opaque_type_from_pytype(Py_TYPE(obj));
        PyObject *encoded = PyUnicode_AsUTF8String(nameo);
        const char *name = PyBytes_AsString(encoded);
        if (ot->nmembers) {
                /* Solaris 8's bsearch() doesn't handle NULL haystack */
                const struct_member_t *m =
                        bsearch(name, ot->members, ot->nmembers,
                                sizeof ot->members[0], compare_member);
                if (m) {
                        Py_DECREF(encoded);
                        return m->get(o->data, o->object, m);
                }
        }
        if (strcmp(name, "__dict__") == 0) {
                Py_DECREF(encoded);
                return ot->get_dict(o->data, ot);
        }
        Py_DECREF(encoded);
        return PyObject_GenericGetAttr(obj, nameo);
}

static UNUSED int
opaque_type_setattro(PyObject *obj, PyObject *nameo, PyObject *value)
{
        py_opaque_type_t *o = (py_opaque_type_t *)obj;
        opaque_type_t *ot = lookup_opaque_type_from_pytype(Py_TYPE(obj));
        PyObject *name_enc = PyUnicode_AsUTF8String(nameo);
        PyObject *desc_enc = NULL;
        const char *name = PyBytes_AsString(name_enc);
        int ret = 0;
        if (ot->nmembers) {
                /* Solaris 8's bsearch() doesn't handle NULL haystack */
                const struct_member_t *m =
                        bsearch(name, ot->members, ot->nmembers,
                                sizeof ot->members[0], compare_member);
                if (m) {
                        if (value == NULL) {
                                PyErr_Format(PyExc_AttributeError,
                                             "cannot delete '%s' attribute"
                                             " from '%s' object",
                                             name, ot->pyspec.name);
                                ret = -1;
                                goto out;
                        }
                        if (!o->mutable) {
                                PyErr_Format(PyExc_AttributeError,
                                             "cannot change '%s' attribute"
                                             " on immutable '%s' object",
                                             name, ot->pyspec.name);
                                ret = -1;
                                goto out;
                        }
                        ret = m->set(o->data, m, value);
                        goto out;
                }
        }

        if (PyType_GetSlot(ot->pytype, Py_tp_str) != opaque_type_str) {
                PyObject *pystr = PyObject_Str(obj);
                if (pystr) {
                        desc_enc = PyUnicode_AsUTF8String(pystr);
                        if (desc_enc) {
                                PyErr_Format(PyExc_AttributeError,
                                             "%s has no attribute '%s'",
                                             PyBytes_AsString(desc_enc), name);
                                Py_DECREF(pystr);
                                ret = -1;
                                goto out;
                        }
                        Py_DECREF(pystr);
                }
                PyErr_Clear();
        }
        PyErr_Format(PyExc_AttributeError, "'%s' object has no attribute '%s'",
                     ot->pyspec.name, name);
out:
        Py_XDECREF(name_enc);
        Py_XDECREF(desc_enc);
        return ret;
}

static bool
is_ascii_string(const char *s)
{
        while (*s) {
                if ((unsigned char)*s >= 128)
                        return false;
                s++;
        }
        return true;
}

static UNUSED PyObject *
py_new_string_safe(const char *str)
{
        if (str == NULL) {
                Py_INCREF(Py_None);
                return Py_None;
        }
        // Default Python encoding for str() is ascii
        return is_ascii_string(str)
                ? PyUnicode_FromString(str)
                : PyUnicode_Decode(str, strlen(str), "UTF-8", "replace");
}

#define CHECK_NOTNULL(arg, argname, fname, elabel) do { \
        if (unlikely((arg) == NULL)) {                  \
                PyErr_Format(PyExc_ValueError,          \
                             "NULL %s in call to %s",   \
                             argname, fname);           \
                goto elabel;                            \
        }                                               \
} while (0)

/* stub to work around the inability to use a function as a constant value
   when imported from a DLL on Windows */
static UNUSED void
dealloc_transparent(PyObject *obj)
{
        PyTypeObject *tp = Py_TYPE(obj);
        freefunc tp_free = PyType_GetSlot(tp, Py_tp_free);
        tp_free(obj);
        Py_DECREF(tp);
}

#include "/home/david/Documents/Empotrados/Proyecto2-Embebidos/modules/my_iface-interface/my_iface-interface.h"

bool py_my_iface_interface_trampoline_MNPT13conf_object_tKintPT15my_iface_data_tRKbool(conf_object_t *NOTNULL arg0, int arg1, my_iface_data_t *arg2);

#include "pyiface-my_iface-interface-trampoline-data.h"

static UNUSED opaque_type_t *struct_a20_interface_t_type_p;


static UNUSED opaque_type_t *struct_conf_object_t_type_p;


static UNUSED opaque_type_t *struct_abs_pointer_interface_t_type_p;


static UNUSED opaque_type_t *struct_abs_pointer_state_t_type_p;


static UNUSED opaque_type_t *struct_abs_pointer_activate_interface_t_type_p;


static UNUSED opaque_type_t *struct_address_profiler_interface_t_type_p;


static UNUSED opaque_type_t *struct_addr_prof_iter_t_type_p;


static UNUSED opaque_type_t *struct_apic_bus_interface_t_type_p;


static UNUSED opaque_type_t *struct_apic_cpu_interface_t_type_p;


static UNUSED opaque_type_t *struct_arinc429_bus_interface_t_type_p;


static UNUSED opaque_type_t *struct_arinc429_receiver_interface_t_type_p;


static UNUSED opaque_type_t *struct_arm_interface_t_type_p;


static UNUSED opaque_type_t *struct_arm_avic_interface_t_type_p;


static UNUSED opaque_type_t *struct_arm_avic_t_type_p;


static UNUSED opaque_type_t *struct_arm_coprocessor_interface_t_type_p;


static UNUSED opaque_type_t *struct_arm_external_debug_interface_t_type_p;


static UNUSED opaque_type_t *struct_arm_gic_interface_t_type_p;


static UNUSED opaque_type_t *struct_arm_cpu_state_t_type_p;


static UNUSED opaque_type_t *struct_gic_reg_info_t_type_p;


static UNUSED opaque_type_t *struct_arm_gic_cpu_state_interface_t_type_p;


static UNUSED opaque_type_t *struct_arm_trustzone_interface_t_type_p;


static UNUSED opaque_type_t *struct_generic_transaction_t_type_p;


static UNUSED opaque_type_t *struct_transaction_t_type_p;


static UNUSED opaque_type_t *struct_attribute_monitor_interface_t_type_p;


static UNUSED opaque_type_t *struct_attribute_id_t_type_p;


static UNUSED opaque_type_t *struct_bank_instrumentation_subscribe_interface_t_type_p;


static UNUSED opaque_type_t *struct_bank_after_read_interface_t_type_p;


static UNUSED opaque_type_t *struct_bank_access_t_type_p;


static UNUSED opaque_type_t *struct_bank_after_write_interface_t_type_p;


static UNUSED opaque_type_t *struct_bank_before_read_interface_t_type_p;


static UNUSED opaque_type_t *struct_bank_before_write_interface_t_type_p;


static UNUSED opaque_type_t *struct_bp_manager_interface_t_type_p;


static UNUSED opaque_type_t *struct_branch_arc_interface_t_type_p;


static UNUSED opaque_type_t *struct_branch_arc_iter_t_type_p;


static UNUSED opaque_type_t *struct_branch_arc_t_type_p;


static UNUSED opaque_type_t *struct_branch_recorder_handler_interface_t_type_p;


static UNUSED opaque_type_t *struct_break_strings_interface_t_type_p;


static UNUSED opaque_type_t *struct_break_strings_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_breakpoint_interface_t_type_p;


static UNUSED opaque_type_t *struct_breakpoint_info_t_type_p;


static UNUSED opaque_type_t *struct_breakpoint_change_interface_t_type_p;


static UNUSED opaque_type_t *struct_breakpoint_manager_interface_t_type_p;


static UNUSED opaque_type_t *struct_breakpoint_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_breakpoint_query_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_breakpoint_registration_interface_t_type_p;


static UNUSED opaque_type_t *struct_breakpoint_type_interface_t_type_p;


static UNUSED opaque_type_t *struct_breakpoint_type_provider_interface_t_type_p;


static UNUSED opaque_type_t *struct_bridge_interface_t_type_p;


static UNUSED opaque_type_t *struct_map_info_t_type_p;


static UNUSED opaque_type_t *struct_cache_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_callback_info_interface_t_type_p;


static UNUSED opaque_type_t *struct_cdrom_media_interface_t_type_p;


static UNUSED opaque_type_t *struct_cell_inspection_interface_t_type_p;


static UNUSED opaque_type_t *struct_checkpoint_interface_t_type_p;


static UNUSED opaque_type_t *struct_cmd_line_frontend_interface_t_type_p;


static UNUSED opaque_type_t *struct_cmd_line_selection_interface_t_type_p;


static UNUSED opaque_type_t *struct_co_execute_interface_t_type_p;


static UNUSED opaque_type_t *struct_component_interface_t_type_p;


static UNUSED opaque_type_t *struct_component_connector_interface_t_type_p;


static UNUSED opaque_type_t *struct_con_input_interface_t_type_p;


static UNUSED opaque_type_t *struct_con_input_code_interface_t_type_p;


static UNUSED opaque_type_t *struct_concurrency_group_interface_t_type_p;


static UNUSED opaque_type_t *struct_concurrency_mode_interface_t_type_p;


static UNUSED opaque_type_t *struct_connector_interface_t_type_p;


static UNUSED opaque_type_t *struct_context_handler_interface_t_type_p;


static UNUSED opaque_type_t *struct_coreint_interface_t_type_p;


static UNUSED opaque_type_t *struct_coreint_reply_t_type_p;


static UNUSED opaque_type_t *struct_cpu_cached_instruction_interface_t_type_p;


static UNUSED opaque_type_t *struct_cached_instruction_handle_t_type_p;


static UNUSED opaque_type_t *struct_instruction_handle_t_type_p;


static UNUSED opaque_type_t *struct_memory_handle_t_type_p;


static UNUSED opaque_type_t *struct_cpu_cached_instruction_once_interface_t_type_p;


static UNUSED opaque_type_t *struct_cpu_exception_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_exception_handle_t_type_p;


static UNUSED opaque_type_t *struct_cpu_instruction_decoder_interface_t_type_p;


static UNUSED opaque_type_t *struct_decoder_handle_t_type_p;


static UNUSED opaque_type_t *struct_cpu_instruction_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_cpu_instrumentation_subscribe_interface_t_type_p;


static UNUSED opaque_type_t *struct_cpu_stream_handle_t_type_p;


static UNUSED opaque_type_t *struct_address_handle_t_type_p;


static UNUSED opaque_type_t *struct_exception_return_handle_t_type_p;


static UNUSED opaque_type_t *struct_cpu_memory_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_cycle_interface_t_type_p;


static UNUSED opaque_type_t *struct_event_class_t_type_p;


static UNUSED opaque_type_t *struct_local_time_t_type_p;


static UNUSED opaque_type_t *struct_duration_t_type_p;


static UNUSED opaque_type_t *struct_cycle_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_cycle_event_interface_t_type_p;


static UNUSED opaque_type_t *struct_cycle_event_instrumentation_interface_t_type_p;


static UNUSED opaque_type_t *struct_cycle_handle_t_type_p;


static UNUSED opaque_type_t *struct_data_profiler_interface_t_type_p;


static UNUSED opaque_type_t *struct_datagram_link_interface_t_type_p;


static UNUSED opaque_type_t *struct_debug_notification_interface_t_type_p;


static UNUSED opaque_type_t *struct_debug_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_debug_setup_interface_t_type_p;


static UNUSED opaque_type_t *struct_debug_step_interface_t_type_p;


static UNUSED opaque_type_t *struct_debug_symbol_interface_t_type_p;


static UNUSED opaque_type_t *struct_debug_symbol_file_interface_t_type_p;


static UNUSED opaque_type_t *struct_device_identification_interface_t_type_p;


static UNUSED opaque_type_t *struct_direct_memory_interface_t_type_p;


static UNUSED opaque_type_t *struct_granted_mem_t_type_p;


static UNUSED opaque_type_t *struct_direct_memory_t_type_p;


static UNUSED opaque_type_t *struct_direct_memory_flush_interface_t_type_p;


static UNUSED opaque_type_t *struct_direct_memory_lookup_interface_t_type_p;


static UNUSED opaque_type_t *struct_direct_memory_lookup_t_type_p;


static UNUSED opaque_type_t *struct_direct_memory_lookup_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_direct_memory_tags_interface_t_type_p;


static UNUSED opaque_type_t *struct_direct_memory_tags_t_type_p;


static UNUSED opaque_type_t *struct_direct_memory_update_interface_t_type_p;


static UNUSED opaque_type_t *struct_disk_component_interface_t_type_p;


static UNUSED opaque_type_t *struct_dist_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_ethernet_cable_interface_t_type_p;


static UNUSED opaque_type_t *struct_ethernet_common_interface_t_type_p;


static UNUSED opaque_type_t *struct_ethernet_probe_interface_t_type_p;


static UNUSED opaque_type_t *struct_ethernet_snoop_interface_t_type_p;


static UNUSED opaque_type_t *struct_ethernet_vlan_snoop_interface_t_type_p;


static UNUSED opaque_type_t *struct_event_delta_interface_t_type_p;


static UNUSED opaque_type_t *struct_event_handler_interface_t_type_p;


static UNUSED opaque_type_t *struct_exception_interface_t_type_p;


static UNUSED opaque_type_t *struct_exec_trace_interface_t_type_p;


static UNUSED opaque_type_t *struct_execute_interface_t_type_p;


static UNUSED opaque_type_t *struct_execute_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_extended_serial_interface_t_type_p;


static UNUSED opaque_type_t *struct_external_connection_ctl_interface_t_type_p;


static UNUSED opaque_type_t *struct_external_connection_events_interface_t_type_p;


static UNUSED opaque_type_t *struct_firewire_bus_interface_t_type_p;


static UNUSED opaque_type_t *struct_firewire_device_interface_t_type_p;


static UNUSED opaque_type_t *struct_fmn_station_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_fmn_station_control_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_follower_agent_interface_t_type_p;


static UNUSED opaque_type_t *struct_forward_destination_rewriter_interface_t_type_p;


static UNUSED opaque_type_t *struct_forward_rewrite_endpoint_t_type_p;


static UNUSED opaque_type_t *struct_freerun_interface_t_type_p;


static UNUSED opaque_type_t *struct_frequency_interface_t_type_p;


static UNUSED opaque_type_t *struct_frequency_listener_interface_t_type_p;


static UNUSED opaque_type_t *struct_frontend_server_interface_t_type_p;


static UNUSED opaque_type_t *struct_gfx_break_interface_t_type_p;


static UNUSED opaque_type_t *struct_gfx_con_interface_t_type_p;


static UNUSED opaque_type_t *struct_gfx_console_interface_t_type_p;


static UNUSED opaque_type_t *struct_gfx_console_backend_interface_t_type_p;


static UNUSED opaque_type_t *struct_gfx_console_frontend_interface_t_type_p;


static UNUSED opaque_type_t *struct_global_time_interface_t_type_p;


static UNUSED opaque_type_t *struct_gui_console_backend_interface_t_type_p;


static UNUSED opaque_type_t *struct_host_serial_interface_t_type_p;


static UNUSED opaque_type_t *struct_i2c_bridge_interface_t_type_p;


static UNUSED opaque_type_t *struct_i2c_bus_interface_t_type_p;


static UNUSED opaque_type_t *struct_i2c_device_interface_t_type_p;


static UNUSED opaque_type_t *struct_i2c_link_interface_t_type_p;


static UNUSED opaque_type_t *struct_i2c_master_interface_t_type_p;


static UNUSED opaque_type_t *struct_i2c_master_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_i2c_slave_interface_t_type_p;


static UNUSED opaque_type_t *struct_i2c_slave_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_i3c_daa_snoop_interface_t_type_p;


static UNUSED opaque_type_t *struct_i3c_master_interface_t_type_p;


static UNUSED opaque_type_t *struct_i3c_slave_interface_t_type_p;


static UNUSED opaque_type_t *struct_i8051_interrupt_interface_t_type_p;


static UNUSED opaque_type_t *struct_i8051_timer_interface_t_type_p;


static UNUSED opaque_type_t *struct_ieee_802_3_mac_interface_t_type_p;


static UNUSED opaque_type_t *struct_ieee_802_3_mac_v3_interface_t_type_p;


static UNUSED opaque_type_t *struct_ieee_802_3_phy_interface_t_type_p;


static UNUSED opaque_type_t *struct_ieee_802_3_phy_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_ieee_802_3_phy_v3_interface_t_type_p;


static UNUSED opaque_type_t *struct_image_interface_t_type_p;


static UNUSED opaque_type_t *struct_instruction_fetch_interface_t_type_p;


static UNUSED opaque_type_t *struct_instrumentation_connection_interface_t_type_p;


static UNUSED opaque_type_t *struct_instrumentation_filter_master_interface_t_type_p;


static UNUSED opaque_type_t *struct_instrumentation_filter_slave_interface_t_type_p;


static UNUSED opaque_type_t *struct_instrumentation_filter_status_interface_t_type_p;


static UNUSED opaque_type_t *struct_instrumentation_order_interface_t_type_p;


static UNUSED opaque_type_t *struct_instrumentation_tool_interface_t_type_p;


static UNUSED opaque_type_t *struct_int_register_interface_t_type_p;


static UNUSED opaque_type_t *struct_interrupt_ack_interface_t_type_p;


static UNUSED opaque_type_t *struct_interrupt_cpu_interface_t_type_p;


static UNUSED opaque_type_t *struct_interrupt_subscriber_interface_t_type_p;


static UNUSED opaque_type_t *struct_io_memory_interface_t_type_p;


static UNUSED opaque_type_t *struct_jit_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_keyboard_interface_t_type_p;


static UNUSED opaque_type_t *struct_keyboard_console_interface_t_type_p;


static UNUSED opaque_type_t *struct_leader_message_interface_t_type_p;


static UNUSED opaque_type_t *struct_linear_image_interface_t_type_p;


static UNUSED opaque_type_t *struct_link_endpoint_interface_t_type_p;


static UNUSED opaque_type_t *struct_link_endpoint_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_log_object_interface_t_type_p;


static UNUSED opaque_type_t *struct_map_demap_interface_t_type_p;


static UNUSED opaque_type_t *struct_mdio45_bus_interface_t_type_p;


static UNUSED opaque_type_t *struct_mdio45_phy_interface_t_type_p;


static UNUSED opaque_type_t *struct_memory_profiler_interface_t_type_p;


static UNUSED opaque_type_t *struct_memory_space_interface_t_type_p;


static UNUSED opaque_type_t *struct_map_list_t_type_p;


static UNUSED opaque_type_t *struct_microwire_interface_t_type_p;


static UNUSED opaque_type_t *struct_mii_interface_t_type_p;


static UNUSED opaque_type_t *struct_mii_management_interface_t_type_p;


static UNUSED opaque_type_t *struct_mips_interface_t_type_p;


static UNUSED opaque_type_t *struct_mips_cache_instruction_interface_t_type_p;


static UNUSED opaque_type_t *struct_mips_coprocessor_interface_t_type_p;


static UNUSED opaque_type_t *struct_mips_eic_interface_t_type_p;


static UNUSED opaque_type_t *struct_mips_ite_interface_t_type_p;


static UNUSED opaque_type_t *struct_mips_mt_ase_interface_t_type_p;


static UNUSED opaque_type_t *struct_mips_mt_ase_policy_interface_t_type_p;


static UNUSED opaque_type_t *struct_mmc_interface_t_type_p;


static UNUSED opaque_type_t *struct_mouse_interface_t_type_p;


static UNUSED opaque_type_t *struct_ms1553_link_interface_t_type_p;


static UNUSED opaque_type_t *struct_ms1553_terminal_interface_t_type_p;


static UNUSED opaque_type_t *struct_multi_level_signal_interface_t_type_p;


static UNUSED opaque_type_t *struct_nand_flash_interface_t_type_p;


static UNUSED opaque_type_t *struct_nios_interface_t_type_p;


static UNUSED opaque_type_t *struct_nios_eic_interface_t_type_p;


static UNUSED opaque_type_t *struct_opcode_info_interface_t_type_p;


static UNUSED opaque_type_t *struct_opcode_length_info_t_type_p;


static UNUSED opaque_type_t *struct_osa_component_interface_t_type_p;


static UNUSED opaque_type_t *struct_maybe_node_id_t_type_p;


static UNUSED opaque_type_t *struct_osa_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_control_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_machine_notification_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_machine_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_mapper_admin_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_mapper_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_mapper_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_micro_checkpoint_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_node_path_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_node_tree_admin_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_node_tree_notification_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_node_tree_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_parameters_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_tracker_component_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_tracker_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_tracker_state_admin_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_tracker_state_notification_interface_t_type_p;


static UNUSED opaque_type_t *struct_osa_tracker_state_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_packet_interface_t_type_p;


static UNUSED opaque_type_t *struct_page_bank_interface_t_type_p;


static UNUSED opaque_type_t *struct_pb_page_t_type_p;


static UNUSED opaque_type_t *struct_page_bank_grant_t_type_p;


static UNUSED opaque_type_t *struct_page_bank_client_interface_t_type_p;


static UNUSED opaque_type_t *struct_pci_bridge_interface_t_type_p;


static UNUSED opaque_type_t *struct_pci_bus_interface_t_type_p;


static UNUSED opaque_type_t *struct_pci_device_interface_t_type_p;


static UNUSED opaque_type_t *struct_pci_downstream_interface_t_type_p;


static UNUSED opaque_type_t *struct_pci_express_interface_t_type_p;


static UNUSED opaque_type_t *struct_pci_express_hotplug_interface_t_type_p;


static UNUSED opaque_type_t *struct_pci_interrupt_interface_t_type_p;


static UNUSED opaque_type_t *struct_pci_multi_function_device_interface_t_type_p;


static UNUSED opaque_type_t *struct_pci_upstream_interface_t_type_p;


static UNUSED opaque_type_t *struct_pci_upstream_operation_interface_t_type_p;


static UNUSED opaque_type_t *struct_pcie_adapter_compat_interface_t_type_p;


static UNUSED opaque_type_t *struct_pcie_device_interface_t_type_p;


static UNUSED opaque_type_t *struct_pcie_hotplug_events_interface_t_type_p;


static UNUSED opaque_type_t *struct_pcie_map_interface_t_type_p;


static UNUSED opaque_type_t *struct_pcie_port_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_pmr_interface_t_type_p;


static UNUSED opaque_type_t *struct_port_forward_interface_t_type_p;


static UNUSED opaque_type_t *struct_alg_connection_t_type_p;


static UNUSED opaque_type_t *struct_ip_port_t_type_p;


static UNUSED opaque_type_t *struct_port_space_interface_t_type_p;


static UNUSED opaque_type_t *struct_ppc_interface_t_type_p;


static UNUSED opaque_type_t *struct_preference_interface_t_type_p;


static UNUSED opaque_type_t *struct_probe_interface_t_type_p;


static UNUSED opaque_type_t *struct_probe_array_interface_t_type_p;


static UNUSED opaque_type_t *struct_probe_index_interface_t_type_p;


static UNUSED opaque_type_t *struct_probe_sampler_cache_interface_t_type_p;


static UNUSED opaque_type_t *struct_probe_subscribe_interface_t_type_p;


static UNUSED opaque_type_t *struct_processor_cli_interface_t_type_p;


static UNUSED opaque_type_t *struct_physical_block_t_type_p;


static UNUSED opaque_type_t *struct_processor_endian_interface_t_type_p;


static UNUSED opaque_type_t *struct_processor_gui_interface_t_type_p;


static UNUSED opaque_type_t *struct_processor_info_interface_t_type_p;


static UNUSED opaque_type_t *struct_processor_info_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_pulse_interface_t_type_p;


static UNUSED opaque_type_t *struct_ram_interface_t_type_p;


static UNUSED opaque_type_t *struct_ram_access_subscribe_interface_t_type_p;


static UNUSED opaque_type_t *struct_ram_cb_handle_t_type_p;


static UNUSED opaque_type_t *struct_rapidio_v3_interface_t_type_p;


static UNUSED opaque_type_t *struct_rapidio_v4_interface_t_type_p;


static UNUSED opaque_type_t *struct_rapidio_v5_interface_t_type_p;


static UNUSED opaque_type_t *struct_recorded_interface_t_type_p;


static UNUSED opaque_type_t *struct_recorder_interface_t_type_p;


static UNUSED opaque_type_t *struct_recorder_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_register_breakpoint_interface_t_type_p;


static UNUSED opaque_type_t *struct_register_view_interface_t_type_p;


static UNUSED opaque_type_t *struct_register_view_read_only_interface_t_type_p;


static UNUSED opaque_type_t *struct_riscv_clic_interface_t_type_p;


static UNUSED opaque_type_t *struct_riscv_clic_interrupt_interface_t_type_p;


static UNUSED opaque_type_t *struct_riscv_coprocessor_interface_t_type_p;


static UNUSED opaque_type_t *struct_riscv_imsic_interface_t_type_p;


static UNUSED opaque_type_t *struct_riscv_signal_sgeip_interface_t_type_p;


static UNUSED opaque_type_t *struct_rs232_console_interface_t_type_p;


static UNUSED opaque_type_t *struct_rs232_device_interface_t_type_p;


static UNUSED opaque_type_t *struct_sata_interface_t_type_p;


static UNUSED opaque_type_t *struct_scalar_time_interface_t_type_p;


static UNUSED opaque_type_t *struct_scale_factor_listener_interface_t_type_p;


static UNUSED opaque_type_t *struct_screenshot_interface_t_type_p;


static UNUSED opaque_type_t *struct_serial_console_frontend_interface_t_type_p;


static UNUSED opaque_type_t *struct_serial_device_interface_t_type_p;


static UNUSED opaque_type_t *struct_serial_peripheral_interface_master_interface_t_type_p;


static UNUSED opaque_type_t *struct_serial_peripheral_interface_slave_interface_t_type_p;


static UNUSED opaque_type_t *struct_sh_interrupt_interface_t_type_p;


static UNUSED opaque_type_t *struct_signal_interface_t_type_p;


static UNUSED opaque_type_t *struct_simple_dispatcher_interface_t_type_p;


static UNUSED opaque_type_t *struct_simple_interrupt_interface_t_type_p;


static UNUSED opaque_type_t *struct_simulator_cache_interface_t_type_p;


static UNUSED opaque_type_t *struct_slave_agent_interface_t_type_p;


static UNUSED opaque_type_t *struct_slaver_message_interface_t_type_p;


static UNUSED opaque_type_t *struct_smm_instrumentation_subscribe_interface_t_type_p;


static UNUSED opaque_type_t *struct_snoop_memory_interface_t_type_p;


static UNUSED opaque_type_t *struct_sparc_v8_ecc_fault_injection_interface_t_type_p;


static UNUSED opaque_type_t *struct_spr_interface_t_type_p;


static UNUSED opaque_type_t *struct_stall_interface_t_type_p;


static UNUSED opaque_type_t *struct_stc_interface_t_type_p;


static UNUSED opaque_type_t *struct_page_t_type_p;


static UNUSED opaque_type_t *struct_step_interface_t_type_p;


static UNUSED opaque_type_t *struct_step_cycle_ratio_interface_t_type_p;


static UNUSED opaque_type_t *struct_step_cycle_ratio_t_type_p;


static UNUSED opaque_type_t *struct_step_event_instrumentation_interface_t_type_p;


static UNUSED opaque_type_t *struct_step_handle_t_type_p;


static UNUSED opaque_type_t *struct_step_info_interface_t_type_p;


static UNUSED opaque_type_t *struct_symbols_interface_t_type_p;


static UNUSED opaque_type_t *struct_symbol_t_type_p;


static UNUSED opaque_type_t *struct_sync_initial_time_interface_t_type_p;


static UNUSED opaque_type_t *struct_synchronous_mode_interface_t_type_p;


static UNUSED opaque_type_t *struct_table_interface_t_type_p;


static UNUSED opaque_type_t *struct_tcf_channel_interface_t_type_p;


static UNUSED opaque_type_t *struct_telemetry_interface_t_type_p;


static UNUSED opaque_type_t *struct_telemetry_manager_interface_t_type_p;


static UNUSED opaque_type_t *struct_telnet_connection_interface_t_type_p;


static UNUSED opaque_type_t *struct_telnet_connection_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_temporal_state_interface_t_type_p;


static UNUSED opaque_type_t *struct_terminal_client_interface_t_type_p;


static UNUSED opaque_type_t *struct_terminal_server_interface_t_type_p;


static UNUSED opaque_type_t *struct_text_console_backend_interface_t_type_p;


static UNUSED opaque_type_t *struct_text_console_frontend_interface_t_type_p;


static UNUSED opaque_type_t *struct_timing_model_interface_t_type_p;


static UNUSED opaque_type_t *struct_transaction_interface_t_type_p;


static UNUSED opaque_type_t *struct_transaction_translator_interface_t_type_p;


static UNUSED opaque_type_t *struct_translation_t_type_p;


static UNUSED opaque_type_t *struct_map_target_t_type_p;


static UNUSED opaque_type_t *struct_translate_interface_t_type_p;


static UNUSED opaque_type_t *struct_translation_flush_interface_t_type_p;


static UNUSED opaque_type_t *struct_translator_interface_t_type_p;


static UNUSED opaque_type_t *struct_uint64_state_interface_t_type_p;


static UNUSED opaque_type_t *struct_usb_interface_t_type_p;


static UNUSED opaque_type_t *struct_usb_transfer_t_type_p;


static UNUSED opaque_type_t *struct_usb_device_interface_t_type_p;


static UNUSED opaque_type_t *struct_vectored_interrupt_interface_t_type_p;


static UNUSED opaque_type_t *struct_vectored_interrupt_source_interface_t_type_p;


static UNUSED opaque_type_t *struct_vga_text_interface_t_type_p;


static UNUSED opaque_type_t *struct_vga_text_update_interface_t_type_p;


static UNUSED opaque_type_t *struct_virtual_data_breakpoint_interface_t_type_p;


static UNUSED opaque_type_t *struct_virtual_instruction_breakpoint_interface_t_type_p;


static UNUSED opaque_type_t *struct_vmp_interface_t_type_p;


static UNUSED opaque_type_t *struct_vmx_instrumentation_subscribe_interface_t_type_p;


static UNUSED opaque_type_t *struct_vnc_server_interface_t_type_p;


static UNUSED opaque_type_t *struct_vnc_server_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_winsome_console_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_interface_t_type_p;


static UNUSED opaque_type_t *struct_tagged_linear_address_t_type_p;


static UNUSED opaque_type_t *struct_x86_access_type_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_address_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_cache_flush_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_cpuid_interface_t_type_p;


static UNUSED opaque_type_t *struct_cpuid_ret_t_type_p;


static UNUSED opaque_type_t *struct_x86_cpuid_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_cpuid_value_t_type_p;


static UNUSED opaque_type_t *struct_x86_cstate_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_cstate_t_type_p;


static UNUSED opaque_type_t *struct_x86_cstate_notification_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_ept_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_exception_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_instruction_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_instrumentation_subscribe_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_instrumentation_subscribe_v2_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_memory_query_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_msr_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_msr_getter_ret_t_type_p;


static UNUSED opaque_type_t *struct_x86_reg_access_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_fpu_env_t_type_p;


static UNUSED opaque_type_t *struct_x86_fpu_reg_t_type_p;


static UNUSED opaque_type_t *struct_x86_monitor_info_t_type_p;


static UNUSED opaque_type_t *struct_x86_mwait_info_t_type_p;


static UNUSED opaque_type_t *struct_x86_pending_debug_exc_t_type_p;


static UNUSED opaque_type_t *struct_x86_seg_reg_t_type_p;


static UNUSED opaque_type_t *struct_x86_system_seg_reg_t_type_p;


static UNUSED opaque_type_t *struct_xmm_reg_t_type_p;


static UNUSED opaque_type_t *struct_x86_xmode_info_t_type_p;


static UNUSED opaque_type_t *struct_ymm_reg_t_type_p;


static UNUSED opaque_type_t *struct_x86_tlb_interface_t_type_p;


static UNUSED opaque_type_t *struct_tagged_physical_address_t_type_p;


static UNUSED opaque_type_t *struct_x86_memory_transaction_t_type_p;


static UNUSED opaque_type_t *struct_x86_tlb_v3_interface_t_type_p;


static UNUSED opaque_type_t *struct_x86_tlb_attrs_v3_t_type_p;


static UNUSED opaque_type_t *struct_x86_tlb_entry_v3_t_type_p;


static UNUSED opaque_type_t *struct_x86_vmp_control_interface_t_type_p;


static UNUSED opaque_type_t *struct_xed_access_interface_t_type_p;


static UNUSED opaque_type_t *struct_xtensa_export_state_interface_t_type_p;


static UNUSED opaque_type_t *struct_xtensa_import_wire_interface_t_type_p;


static UNUSED opaque_type_t *struct_xtensa_input_queue_interface_t_type_p;


static UNUSED opaque_type_t *struct_xtensa_lookup_interface_t_type_p;


static UNUSED opaque_type_t *struct_xtensa_output_queue_interface_t_type_p;


static UNUSED opaque_type_t *struct_conf_class_t_type_p;


static UNUSED opaque_type_t *struct_completion_t_type_p;


static UNUSED opaque_type_t *struct_class_data_t_type_p;


static UNUSED opaque_type_t *struct_class_info_t_type_p;


static UNUSED opaque_type_t *struct_global_notifier_callback_t_type_p;


static UNUSED opaque_type_t *struct_atom_t_type_p;


static UNUSED opaque_type_t *struct_notifier_handle_t_type_p;


static UNUSED opaque_type_t *struct_domain_lock_t_type_p;


static UNUSED opaque_type_t *struct_wait_handler_t_type_p;


static UNUSED opaque_type_t *struct_execute_environ_t_type_p;


static UNUSED opaque_type_t *struct_profile_area_t_type_p;


static UNUSED opaque_type_t *struct_probe_result_t_type_p;


static UNUSED opaque_type_t *struct_host_hypervisor_info_t_type_p;


static UNUSED opaque_type_t *struct_thread_domain_holder_t_type_p;


static UNUSED opaque_type_t *struct_thread_domain_t_type_p;


static UNUSED opaque_type_t *struct_thread_domain_group_t_type_p;


static UNUSED opaque_type_t *struct_pci_memory_transaction_t_type_p;


static UNUSED opaque_type_t *struct_pcie_error_ret_t_type_p;


static UNUSED opaque_type_t *struct_pcie_byte_count_ret_t_type_p;


static UNUSED opaque_type_t *struct_pcie_link_negotiation_t_type_p;


static UNUSED opaque_type_t *struct_arm_memory_transaction_t_type_p;


static UNUSED opaque_type_t *struct_mips_memory_transaction_t_type_p;


static UNUSED opaque_type_t *struct_ppc_memory_transaction_t_type_p;


static UNUSED opaque_type_t *struct_ppc_decoration_t_type_p;


static UNUSED bool
get_set_error_t(PyObject *from, set_error_t *to)
{
        int i;
        if (!get_int(from, &i))
                return false;
        if (i < 0 || i >= Sim_Set_Error_Types) {
                PyErr_SetString(PyExc_OverflowError,
                                "out of range for set_error_t");
                return false;
        }
        *to = i;
        return true;
}


static UNUSED bool
get_exception_type_t(PyObject *from, exception_type_t *to)
{
        int i;
        if (!get_int(from, &i))
                return false;
        if (i < 0 || i >= Sim_PE_Last) {
                PyErr_SetString(PyExc_OverflowError,
                                "out of range for exception_type_t");
                return false;
        }
        *to = i;
        return true;
}


static UNUSED bool get_conf_class(PyObject *from, struct conf_class **to);


# include <simics/devs/mil-std-1553.h>
static UNUSED void
ms1553_words_to_pyobject(ms1553_words_t words, PyObject **po)
{
        *po = PyTuple_New(words.length);
        for (int i = 0; i < words.length; i++)
                PyTuple_SetItem(*po, i, PyLong_FromLong(words.data[i]));
}

static UNUSED bool
pyobject_to_ms1553_words(PyObject *po, ms1553_words_t *words)
{
        if (!PySequence_Check(po)) {
                PyErr_SetString(PyExc_TypeError, "sequence expected");
                return 0;
        }

        words->length = PySequence_Length(po);
        uint16 *data = MM_MALLOC(words->length, uint16);
        words->data = data;

        for (int i = 0; i < words->length; i++) {
                PyObject *obj = PySequence_GetItem(po, i);
                if (obj == NULL) {
                        PyErr_Format(PyExc_IndexError,
                                     "error getting item %d of sequence", i);
                        words->length = 0;
                        MM_FREE(data);
                        return 0;
                }
                long val = PyLong_AsLong(obj);
                if (val < 0 || val > 0xffff) {
                        PyErr_SetString(PyExc_ValueError,
                                        "value does not fit in a 16-bit word");
                        words->length = 0;
                        MM_FREE(data);
                        Py_DECREF(obj);
                        return 0;
                }
                data[i] = (uint16)val;
                Py_DECREF(obj);
        }
        return 1;
}

static opaque_type_t struct_my_iface_interface_t_type;
static UNUSED opaque_type_t *const struct_my_iface_interface_t_type_p = &struct_my_iface_interface_t_type;

static UNUSED PyObject *
struct_my_iface_interface_t_new(PyTypeObject *type, PyObject *args, PyObject *kwds)
{
	ASSERT(type == struct_my_iface_interface_t_type_p->pytype);
	return opaque_type_new(struct_my_iface_interface_t_type_p, args, kwds);
}
static struct py_wrap_c_func py_wrap_data_MNPT13conf_object_tKintPT15my_iface_data_tRKbool;

static opaque_type_t struct_my_iface_data_t_type;
static UNUSED opaque_type_t *const struct_my_iface_data_t_type_p = &struct_my_iface_data_t_type;

static UNUSED PyObject *
struct_my_iface_data_t_new(PyTypeObject *type, PyObject *args, PyObject *kwds)
{
	ASSERT(type == struct_my_iface_data_t_type_p->pytype);
	return opaque_type_new(struct_my_iface_data_t_type_p, args, kwds);
}
static int
conv_to_Kint(void *generic_dst, PyObject *pysrc)
{
	int *dst2 = generic_dst;
	{ if (!get_int(pysrc, &(*dst2))) return -1; }
	return 0;
}

static PyObject *
conv_from_Kint(void *generic_src, conf_object_t *object)
{
	int *src3 = generic_src;
	PyObject *pyresult = NULL;
	{ pyresult = PyLong_FromLong((*src3)); }
	return pyresult;
}

static const field_type_t conv_Kint = {
	.name = "int",
	.from_py = conv_to_Kint,
	.to_py   = conv_from_Kint,
	.free_fn = NULL
};

static int
conv_to_PKchar(void *generic_dst, PyObject *pysrc)
{
	char **dst4 = generic_dst;
	{
	        if (gulp_string_from_python(pysrc, (char **)&(*dst4)) < 0)
	                return -1;
	}
	return 0;
}

static void
conv_free_PKchar(void *generic_data)
{
	char **dst4 = generic_data;
	{
		MM_FREE((char *)(*dst4));
	}
}

static PyObject *
conv_from_PKchar(void *generic_src, conf_object_t *object)
{
	char **src5 = generic_src;
	PyObject *pyresult = NULL;
	{
		pyresult = py_new_string_safe((*src5)); /* NONCONST-OUT */
	}
	return pyresult;
}

static const field_type_t conv_PKchar = {
	.name = "char *",
	.from_py = conv_to_PKchar,
	.to_py   = conv_from_PKchar,
	.free_fn = conv_free_PKchar
};

static const struct_member_t members_of_my_iface_data_t[] = {
	{"level", set_field, get_field,
	 offsetof(my_iface_data_t, level),
	 &conv_Kint},
	{"name", set_field, get_field,
	 offsetof(my_iface_data_t, name),
	 &conv_PKchar},
};

static PyType_Slot struct_my_iface_data_t_slots[] = {
	{.slot = Py_tp_dealloc, .pfunc = opaque_type_delete},
	{.slot = Py_tp_richcompare, .pfunc = opaque_type_richcompare},
	{.slot = Py_tp_hash, .pfunc = opaque_type_hash},
	{.slot = Py_tp_repr, .pfunc = opaque_type_str},
	{.slot = Py_tp_str, .pfunc = opaque_type_str},
	{.slot = Py_tp_getattro, opaque_type_getattro},
	{.slot = Py_tp_setattro, .pfunc = opaque_type_setattro},
	{.slot=Py_tp_init, .pfunc=opaque_type_init},
	{.slot=Py_tp_new, .pfunc=struct_my_iface_data_t_new},
	{.slot=Py_tp_doc, .pfunc = 
	  "Python representation of C data structure.\n\nConstructor synops"
	  "is:\n    my_iface_data_t(level = 0, name = None)\n"},
	{.slot = 0, .pfunc = NULL}
};
static opaque_type_t struct_my_iface_data_t_type = {
	.name = "my_iface_data_t",
	.pyspec       = {
		.name      = "simmod.my_iface_interface.my_iface_interface.my_iface_data_t",
		.basicsize = sizeof(py_opaque_type_t),
		.flags = Py_TPFLAGS_DEFAULT | Py_TPFLAGS_HAVE_CLASS,
		.slots = struct_my_iface_data_t_slots
	},
	.size         = sizeof(my_iface_data_t),
	.members      = members_of_my_iface_data_t,
	.nmembers     = ALEN(members_of_my_iface_data_t),
	.is_interface = false,
	.get_dict     = make_member_dict
};

static bool py_caller_MNPT13conf_object_tKintPT15my_iface_data_tRKbool(conf_object_t *NOTNULL arg0, int arg1, my_iface_data_t *arg2, PyObject *pycode)
{
	PyObject *pyres = NULL;
	PyObject *pyarg0, *pyarg1, *pyarg2;
	bool result;
	PyObject *error_source = NULL;

	OBTAIN_PYTHON_LOCK();

	VT_report_uncaught_exceptions();
	{ pyarg0 = VT_python_wrap_conf_object(arg0); }
	{ pyarg1 = PyLong_FromLong(arg1); }
	{
	#define struct_my_iface_data_t_type_p struct_my_iface_data_t_type_p
	pyarg2 = new_opaque_object((void *)arg2, false, false, struct_my_iface_data_t_type_p, NULL);
	}
	pyres = PyObject_CallFunctionObjArgs(pycode, pyarg0, pyarg1, pyarg2, NULL);
	/* coverity[incorrect_free] */
	Py_DECREF(pyarg2);
	/* coverity[incorrect_free] */
	Py_DECREF(pyarg1);
	/* coverity[incorrect_free] */
	Py_DECREF(pyarg0);
	if (pyres == NULL)
		goto got_error;
	{
	        int i = PyObject_IsTrue(pyres);
	        if (i < 0)
	                goto got_return_error;
	        result = i;
	}
	/* coverity[incorrect_free] */
	Py_DECREF(pyres);

	RELEASE_PYTHON_LOCK();

	/* coverity[use_after_free] */
	return result;
 got_return_error:
	Py_DECREF(pyres);
	error_source = pycode;
 got_error:
	{ VT_handle_python_exception(error_source, py_wrap_data_MNPT13conf_object_tKintPT15my_iface_data_tRKbool.meth.ml_name); }

	RELEASE_PYTHON_LOCK();

	return 0;
}

static UNUSED PyObject *
py_code_MNPT13conf_object_tKintPT15my_iface_data_tRKbool(PyObject *self, PyObject *pyargs)
{
	py_method_t *method = (py_method_t *)self;
	bool (*func)(conf_object_t *NOTNULL, int, my_iface_data_t *) = (bool (*)(conf_object_t *NOTNULL, int, my_iface_data_t *))method->func;
	UNUSED conf_object_t *object = method->object;
	conf_object_t *arg0;
	int arg1;
	my_iface_data_t *arg2;
	PyObject *pyresult = NULL;
	bool result;
	int first_arg = 0;
	PyObject *pyarg0;
	PyObject *pyarg1;
	PyObject *pyarg2;
	if (object) {
		if (!check_arity(pyargs, 2, "bool (*)([conf_object_t *NOTNULL,] int, my_iface_data_t *)"))
			goto got_error4;
		arg0 = object;
		first_arg = 1;
		goto implicit_first_argument;
	} else {
		if (!check_arity(pyargs, 3, "bool (*)([conf_object_t *NOTNULL,] int, my_iface_data_t *)"))
			goto got_error4;
	}
	pyarg0 = PyTuple_GetItem(pyargs, 0 - first_arg);
	{
	#define struct_conf_object_t_type_p struct_conf_object_t_type_p
		void *tgt = NULL;
		if (!get_py_opaque(&tgt, pyarg0,
		            VT_get_opaque_python_type(struct_conf_object_t_type_p)))
			goto got_error4;
		arg0 = tgt;
	}
 implicit_first_argument: ;
	pyarg1 = PyTuple_GetItem(pyargs, 1 - first_arg);
	{ if (!get_int(pyarg1, &arg1)) goto got_error4; }
	pyarg2 = PyTuple_GetItem(pyargs, 2 - first_arg);
	{
	#define struct_my_iface_data_t_type_p struct_my_iface_data_t_type_p
		void *tgt = NULL;
		if (!get_py_opaque(&tgt, pyarg2,
		            VT_get_opaque_python_type(struct_my_iface_data_t_type_p)))
			goto got_error4;
		arg2 = tgt;
	}
	CHECK_NOTNULL(arg0, "argument 1", "bool (*)([conf_object_t *NOTNULL,] int, my_iface_data_t *)", got_error4);
	VT_push_exc_ppg_entry((void *)&pyresult);
	SAVE_AND_RELEASE_PYTHON_LOCK();
	result = func(arg0, arg1, arg2);
	OBTAIN_AND_RESTORE_PYTHON_LOCK();

	int pyexception = VT_pop_exc_ppg_entry((void *)&pyresult, NULL);
	{ if (pyexception || check_sim_exception()) goto got_error4; }
	{ pyresult = PyBool_FromLong(result); }
 got_error4:
	/* coverity[leaked_storage] */
	/* coverity[use_after_free] */
	return pyresult;
}
static struct py_wrap_c_func py_wrap_data_MNPT13conf_object_tKintPT15my_iface_data_tRKbool = {
	.meth = {
		.ml_name  = "bool (*)([conf_object_t *NOTNULL,] int, my_iface_data_t *)",
		.ml_meth  = py_code_MNPT13conf_object_tKintPT15my_iface_data_tRKbool,
		.ml_flags = METH_VARARGS,
		.ml_doc = NULL,
	},
	.is_method       = true,
	.arity           = 3,
	.python_caller   = (void (*)(void))py_caller_MNPT13conf_object_tKintPT15my_iface_data_tRKbool,
	.trampoline_data = &py_my_iface_interface_trampoline_MNPT13conf_object_tKintPT15my_iface_data_tRKbool_data,
	.c_to_py_table   = NULL,
	.py_to_c_dict    = NULL
};

static const field_type_t conv_PMNPT13conf_object_tKintPT15my_iface_data_tRKbool = {
	.name = "bool (*)([conf_object_t *NOTNULL,] int, my_iface_data_t *)",
	.fn_wrap_data = &py_wrap_data_MNPT13conf_object_tKintPT15my_iface_data_tRKbool
};

static const struct_member_t members_of_my_iface_interface_t[] = {
	{"example_method", set_function_field, get_function_field,
	 offsetof(struct my_iface_interface, example_method),
	 &conv_PMNPT13conf_object_tKintPT15my_iface_data_tRKbool},
};

static PyType_Slot struct_my_iface_interface_t_slots[] = {
	{.slot = Py_tp_dealloc, .pfunc = opaque_type_delete},
	{.slot = Py_tp_richcompare, .pfunc = opaque_type_richcompare},
	{.slot = Py_tp_hash, .pfunc = opaque_type_hash},
	{.slot = Py_tp_repr, .pfunc = opaque_type_str},
	{.slot = Py_tp_str, .pfunc = opaque_type_str},
	{.slot = Py_tp_getattro, opaque_type_getattro},
	{.slot = Py_tp_setattro, .pfunc = opaque_type_setattro},
	{.slot=Py_tp_init, .pfunc=opaque_type_init},
	{.slot=Py_tp_new, .pfunc=struct_my_iface_interface_t_new},
	{.slot=Py_tp_doc, .pfunc = 
	  "Python representation of C data structure.\n\nConstructor synops"
	  "is:\n    my_iface_interface_t(example_method = None)\n"},
	{.slot = 0, .pfunc = NULL}
};
static opaque_type_t struct_my_iface_interface_t_type = {
	.name = "my_iface_interface_t",
	.pyspec       = {
		.name      = "simmod.my_iface_interface.my_iface_interface.my_iface_interface_t",
		.basicsize = sizeof(py_opaque_type_t),
		.flags = Py_TPFLAGS_DEFAULT | Py_TPFLAGS_HAVE_CLASS,
		.slots = struct_my_iface_interface_t_slots
	},
	.size         = sizeof(my_iface_interface_t),
	.members      = members_of_my_iface_interface_t,
	.nmembers     = ALEN(members_of_my_iface_interface_t),
	.is_interface = true,
	.get_dict     = make_member_dict
};


# define struct_conf_class_t_type_p struct_conf_class_t_type_p
static UNUSED bool
get_conf_class(PyObject *from, struct conf_class **to)
{
        if (Py_TYPE(from) == VT_get_opaque_python_type(
                    struct_conf_class_t_type_p)) {
                void *vto = NULL;
                if (!get_py_opaque(&vto, from,
                                   VT_get_opaque_python_type(
                                           struct_conf_class_t_type_p)))
                        return false;
                *to = vto;
        } else if (from == Py_None) {
                *to = NULL;
        } else {
                PyObject *encoded = PyUnicode_AsUTF8String(from);
                if (!encoded) {
                        PyErr_SetString(PyExc_TypeError,
                                        "class name string expected");
                        return false;
                }
                const char *str = PyBytes_AsString(encoded);
                if (str == NULL) {
                        Py_DECREF(encoded);
                        PyErr_SetString(PyExc_TypeError,
                                        "class name string expected");
                        return false;
                }
                *to = SIM_get_class(str);
                Py_DECREF(encoded);
                if (SIM_clear_exception()) {
                        PyErr_SetString(PyExc_LookupError, SIM_last_error());
                        return false;
                }
        }
        return true;
}

static opaque_type_t *const structs[] = {
	&struct_my_iface_data_t_type,
	&struct_my_iface_interface_t_type,
};

static const PyMethodDef my_iface_interface_methods[] = {
	{
		.ml_name = NULL,
		.ml_meth = NULL,
		.ml_flags = 0,
		.ml_doc = NULL,
	}
};

#define ENUM(e) {	\
	.name = #e,	\
	.value = { [ e >= INT_MIN && e <= INT_MAX ? 0 : -1 ] = e }	\
}
static const struct {
	const char *name;
	int value[1];
} enums[] = {
	{ NULL }
};


/*
  © 2010 Intel Corporation

  This software and the related documents are Intel copyrighted materials, and
  your use of them is governed by the express license under which they were
  provided to you ("License"). Unless the License provides otherwise, you may
  not use, modify, copy, publish, distribute, disclose or transmit this software
  or the related documents without Intel's prior written permission.

  This software and the related documents are provided as is, with no express or
  implied warranties, other than those that are expressly stated in the License.
*/

static UNUSED int
check_sim_exception(void)
{
        sim_exception_t exc = SIM_clear_exception();
        if (exc) {
                VT_raise_python_exception(exc, SIM_last_error());
                return 1;
        }
        return 0;
}

static void
arity_error(PyObject *tuple, int arity, const char *desc)
{
        PyErr_Format(PyExc_TypeError,
                     "%s takes exactly %d argument%s (%d given)",
                     desc, arity, arity == 1 ? "" : "s",
                     (int)PyTuple_Size(tuple));
}

static void
opaque_type_delete(PyObject *_obj)
{
	py_opaque_type_t *obj = (py_opaque_type_t *)_obj;
        if (obj->free_fields) {
                opaque_type_t *type = lookup_opaque_type_from_pytype(
                        Py_TYPE(_obj));
                for (int i = 0; i < type->nmembers; ++i) {
                        const field_type_t *ft = type->members[i].type;
                        if (ft == NULL)
                                continue;
                        if (ft->free_fn == NULL)
                                continue;
                        ft->free_fn((char *)obj->data + type->members[i].ofs);
                }
	}
        if (obj->malloced)
                MM_FREE(obj->data);
        PyTypeObject *tp = Py_TYPE(_obj);
        freefunc tp_free = PyType_GetSlot(tp, Py_tp_free);
        tp_free(_obj);
        Py_DECREF(tp);
}

static SIM_PY_HASH_RET
opaque_type_hash(PyObject *_obj)
{
	py_opaque_type_t *obj = (py_opaque_type_t *)_obj;
        return (long)(uintptr_t)obj->data;
}

static PyObject *
opaque_type_str(PyObject *_obj)
{
	py_opaque_type_t *obj = (py_opaque_type_t *)_obj;
        opaque_type_t *type = lookup_opaque_type_from_pytype(Py_TYPE(_obj));
        if (!type->is_interface)
                return PyUnicode_FromFormat("<%s object>", type->name);
        else if (obj->object)
                return PyUnicode_FromFormat("<%s interface of %s>",
                                           type->name,
                                           SIM_object_name((conf_object_t *)obj->object));
        else
                return PyUnicode_FromFormat("<%s interface (not bound)>",
                                           type->name);
}

static int
opaque_type_init(PyObject *_obj, PyObject *args, PyObject *kwds)
{
        PyTypeObject *tobj = Py_TYPE(_obj);

	if (args == NULL || !PyTuple_Check(args)
	    || (kwds != NULL && !PyDict_Check(kwds))) {
		PyErr_BadInternalCall();
		return -1;
	}

	if (PyTuple_Size(args) != 0) {
                PyObject *n = PyObject_GetAttrString((PyObject *)tobj,
                                                     "__name__");
                PyObject *e = PyUnicode_AsUTF8String(n);
                const char *name = PyBytes_AsString(e);
		PyErr_Format(PyExc_TypeError,
                             "%s only takes keyword arguments",
                             name);
                Py_DECREF(e);
                Py_DECREF(n);
		return -1;
	}

	if (kwds == NULL)
		return 0;

	Py_ssize_t pos = 0;
	PyObject *key, *value;
	while (PyDict_Next(kwds, &pos, &key, &value)) {
		if (!PyUnicode_Check(key)) {
			PyErr_SetString(PyExc_TypeError,
                                        "keywords must be strings");
			return -1;
		}
		if (PyObject_SetAttr(_obj, key, value) < 0)
			return -1;
	}
	return 0;
}

static UNUSED bool
get_py_opaque(void **dst, PyObject *src, PyTypeObject *py_type)
{
	if (src == Py_None) {
		*dst = NULL;
                return true;
        }

	if (Py_TYPE(src) != py_type) {
                PyObject *n = PyObject_GetAttrString((PyObject *)py_type,
                                                     "__name__");
                PyObject *e = PyUnicode_AsUTF8String(n);
                const char *name = PyBytes_AsString(e);
                /* this is really obnoxious, isn't it? */
		PyErr_Format(PyExc_TypeError, "not a%s %s",
                             strchr("aeiouyAEIOUY", name[0]) ? "n" : "",
                             name);
                Py_DECREF(n);
                Py_DECREF(e);
		return false;
        }

        *dst = PY_OPAQUE_DATA(void *, src);
        return true;
}

static bool
register_interface(PyObject *dict, const char *name, opaque_type_t *type)
{
        strbuf_t cname = SB_INIT;
        for (const char *p = name; *p; p++) {
                // coverity[overrun-buffer-arg]
                sb_addc(&cname, toupper((unsigned char)*p));
        }

        sb_addstr(&cname, "_INTERFACE");
        PyObject *pname = PyUnicode_FromString(name);
        PyDict_SetItemString(dict, sb_str(&cname), pname);
        Py_DECREF(pname);
                             
        sb_free(&cname);

        return (VT_register_python_interface(name, type) == 0);
}

static void
register_atom(opaque_type_t *type)
{
        VT_register_opaque_python_type(type, type->pytype);
}

static struct PyModuleDef moduledef = {
        .m_base = PyModuleDef_HEAD_INIT,
        .m_name = "simmod.my_iface_interface.my_iface_interface",
        .m_doc = NULL,
        .m_size = -1,
        .m_methods = (PyMethodDef *)my_iface_interface_methods,
        .m_slots = NULL,
        .m_traverse = NULL,
        .m_clear = NULL,
        .m_free = NULL,
};

PyMODINIT_FUNC
init_python_my_iface_interface_module(void)
{
        OBTAIN_PYTHON_LOCK();
        const char *const module_name = "my_iface_interface";
        const char *const module_qualified_name = "simmod.my_iface_interface.my_iface_interface";
        PyObject *module = PyModule_Create(&moduledef);
        PyDict_SetItemString(PyImport_GetModuleDict(),
                             module_qualified_name, module);
        PyDict_SetItemString(PyImport_GetModuleDict(),
                             module_name, module);
        PyObject *dict = PyModule_GetDict(module);
for (int i = 0; i < ALEN(structs); i++) {
structs[i]->pytype = (PyTypeObject *)PyType_FromSpec(
	&structs[i]->pyspec);
	ASSERT(structs[i]->pytype);
	ASSERT(PyType_Check((PyObject *)structs[i]->pytype));
	PyDict_SetItemString(dict, structs[i]->name,
		(PyObject *)structs[i]->pytype);
	VT_register_opaque_python_type(structs[i],
		structs[i]->pytype);
	}

#ifdef struct_a20_interface_t_type_p
	struct_a20_interface_t_type_p = VT_lookup_python_opaque_type("api.a20_interface_t");
#endif /* struct_a20_interface_t_type_p */


#ifdef struct_conf_object_t_type_p
	struct_conf_object_t_type_p = VT_lookup_python_opaque_type("api.conf_object_t");
#endif /* struct_conf_object_t_type_p */


#ifdef struct_abs_pointer_interface_t_type_p
	struct_abs_pointer_interface_t_type_p = VT_lookup_python_opaque_type("api.abs_pointer_interface_t");
#endif /* struct_abs_pointer_interface_t_type_p */


#ifdef struct_abs_pointer_state_t_type_p
	struct_abs_pointer_state_t_type_p = VT_lookup_python_opaque_type("api.abs_pointer_state_t");
#endif /* struct_abs_pointer_state_t_type_p */


#ifdef struct_abs_pointer_activate_interface_t_type_p
	struct_abs_pointer_activate_interface_t_type_p = VT_lookup_python_opaque_type("api.abs_pointer_activate_interface_t");
#endif /* struct_abs_pointer_activate_interface_t_type_p */


#ifdef struct_address_profiler_interface_t_type_p
	struct_address_profiler_interface_t_type_p = VT_lookup_python_opaque_type("api.address_profiler_interface_t");
#endif /* struct_address_profiler_interface_t_type_p */


#ifdef struct_addr_prof_iter_t_type_p
	struct_addr_prof_iter_t_type_p = VT_lookup_python_opaque_type("api.addr_prof_iter_t");
#endif /* struct_addr_prof_iter_t_type_p */


#ifdef struct_apic_bus_interface_t_type_p
	struct_apic_bus_interface_t_type_p = VT_lookup_python_opaque_type("api.apic_bus_interface_t");
#endif /* struct_apic_bus_interface_t_type_p */


#ifdef struct_apic_cpu_interface_t_type_p
	struct_apic_cpu_interface_t_type_p = VT_lookup_python_opaque_type("api.apic_cpu_interface_t");
#endif /* struct_apic_cpu_interface_t_type_p */


#ifdef struct_arinc429_bus_interface_t_type_p
	struct_arinc429_bus_interface_t_type_p = VT_lookup_python_opaque_type("api.arinc429_bus_interface_t");
#endif /* struct_arinc429_bus_interface_t_type_p */


#ifdef struct_arinc429_receiver_interface_t_type_p
	struct_arinc429_receiver_interface_t_type_p = VT_lookup_python_opaque_type("api.arinc429_receiver_interface_t");
#endif /* struct_arinc429_receiver_interface_t_type_p */


#ifdef struct_arm_interface_t_type_p
	struct_arm_interface_t_type_p = VT_lookup_python_opaque_type("api.arm_interface_t");
#endif /* struct_arm_interface_t_type_p */


#ifdef struct_arm_avic_interface_t_type_p
	struct_arm_avic_interface_t_type_p = VT_lookup_python_opaque_type("api.arm_avic_interface_t");
#endif /* struct_arm_avic_interface_t_type_p */


#ifdef struct_arm_avic_t_type_p
	struct_arm_avic_t_type_p = VT_lookup_python_opaque_type("api.arm_avic_t");
#endif /* struct_arm_avic_t_type_p */


#ifdef struct_arm_coprocessor_interface_t_type_p
	struct_arm_coprocessor_interface_t_type_p = VT_lookup_python_opaque_type("api.arm_coprocessor_interface_t");
#endif /* struct_arm_coprocessor_interface_t_type_p */


#ifdef struct_arm_external_debug_interface_t_type_p
	struct_arm_external_debug_interface_t_type_p = VT_lookup_python_opaque_type("api.arm_external_debug_interface_t");
#endif /* struct_arm_external_debug_interface_t_type_p */


#ifdef struct_arm_gic_interface_t_type_p
	struct_arm_gic_interface_t_type_p = VT_lookup_python_opaque_type("api.arm_gic_interface_t");
#endif /* struct_arm_gic_interface_t_type_p */


#ifdef struct_arm_cpu_state_t_type_p
	struct_arm_cpu_state_t_type_p = VT_lookup_python_opaque_type("api.arm_cpu_state_t");
#endif /* struct_arm_cpu_state_t_type_p */


#ifdef struct_gic_reg_info_t_type_p
	struct_gic_reg_info_t_type_p = VT_lookup_python_opaque_type("api.gic_reg_info_t");
#endif /* struct_gic_reg_info_t_type_p */


#ifdef struct_arm_gic_cpu_state_interface_t_type_p
	struct_arm_gic_cpu_state_interface_t_type_p = VT_lookup_python_opaque_type("api.arm_gic_cpu_state_interface_t");
#endif /* struct_arm_gic_cpu_state_interface_t_type_p */


#ifdef struct_arm_trustzone_interface_t_type_p
	struct_arm_trustzone_interface_t_type_p = VT_lookup_python_opaque_type("api.arm_trustzone_interface_t");
#endif /* struct_arm_trustzone_interface_t_type_p */


#ifdef struct_generic_transaction_t_type_p
	struct_generic_transaction_t_type_p = VT_lookup_python_opaque_type("api.generic_transaction_t");
#endif /* struct_generic_transaction_t_type_p */


#ifdef struct_transaction_t_type_p
	struct_transaction_t_type_p = VT_lookup_python_opaque_type("api.transaction_t");
#endif /* struct_transaction_t_type_p */


#ifdef struct_attribute_monitor_interface_t_type_p
	struct_attribute_monitor_interface_t_type_p = VT_lookup_python_opaque_type("api.attribute_monitor_interface_t");
#endif /* struct_attribute_monitor_interface_t_type_p */


#ifdef struct_attribute_id_t_type_p
	struct_attribute_id_t_type_p = VT_lookup_python_opaque_type("api.attribute_id_t");
#endif /* struct_attribute_id_t_type_p */


#ifdef struct_bank_instrumentation_subscribe_interface_t_type_p
	struct_bank_instrumentation_subscribe_interface_t_type_p = VT_lookup_python_opaque_type("api.bank_instrumentation_subscribe_interface_t");
#endif /* struct_bank_instrumentation_subscribe_interface_t_type_p */


#ifdef struct_bank_after_read_interface_t_type_p
	struct_bank_after_read_interface_t_type_p = VT_lookup_python_opaque_type("api.bank_after_read_interface_t");
#endif /* struct_bank_after_read_interface_t_type_p */


#ifdef struct_bank_access_t_type_p
	struct_bank_access_t_type_p = VT_lookup_python_opaque_type("api.bank_access_t");
#endif /* struct_bank_access_t_type_p */


#ifdef struct_bank_after_write_interface_t_type_p
	struct_bank_after_write_interface_t_type_p = VT_lookup_python_opaque_type("api.bank_after_write_interface_t");
#endif /* struct_bank_after_write_interface_t_type_p */


#ifdef struct_bank_before_read_interface_t_type_p
	struct_bank_before_read_interface_t_type_p = VT_lookup_python_opaque_type("api.bank_before_read_interface_t");
#endif /* struct_bank_before_read_interface_t_type_p */


#ifdef struct_bank_before_write_interface_t_type_p
	struct_bank_before_write_interface_t_type_p = VT_lookup_python_opaque_type("api.bank_before_write_interface_t");
#endif /* struct_bank_before_write_interface_t_type_p */


#ifdef struct_bp_manager_interface_t_type_p
	struct_bp_manager_interface_t_type_p = VT_lookup_python_opaque_type("api.bp_manager_interface_t");
#endif /* struct_bp_manager_interface_t_type_p */


#ifdef struct_branch_arc_interface_t_type_p
	struct_branch_arc_interface_t_type_p = VT_lookup_python_opaque_type("api.branch_arc_interface_t");
#endif /* struct_branch_arc_interface_t_type_p */


#ifdef struct_branch_arc_iter_t_type_p
	struct_branch_arc_iter_t_type_p = VT_lookup_python_opaque_type("api.branch_arc_iter_t");
#endif /* struct_branch_arc_iter_t_type_p */


#ifdef struct_branch_arc_t_type_p
	struct_branch_arc_t_type_p = VT_lookup_python_opaque_type("api.branch_arc_t");
#endif /* struct_branch_arc_t_type_p */


#ifdef struct_branch_recorder_handler_interface_t_type_p
	struct_branch_recorder_handler_interface_t_type_p = VT_lookup_python_opaque_type("api.branch_recorder_handler_interface_t");
#endif /* struct_branch_recorder_handler_interface_t_type_p */


#ifdef struct_break_strings_interface_t_type_p
	struct_break_strings_interface_t_type_p = VT_lookup_python_opaque_type("api.break_strings_interface_t");
#endif /* struct_break_strings_interface_t_type_p */


#ifdef struct_break_strings_v2_interface_t_type_p
	struct_break_strings_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.break_strings_v2_interface_t");
#endif /* struct_break_strings_v2_interface_t_type_p */


#ifdef struct_breakpoint_interface_t_type_p
	struct_breakpoint_interface_t_type_p = VT_lookup_python_opaque_type("api.breakpoint_interface_t");
#endif /* struct_breakpoint_interface_t_type_p */


#ifdef struct_breakpoint_info_t_type_p
	struct_breakpoint_info_t_type_p = VT_lookup_python_opaque_type("api.breakpoint_info_t");
#endif /* struct_breakpoint_info_t_type_p */


#ifdef struct_breakpoint_change_interface_t_type_p
	struct_breakpoint_change_interface_t_type_p = VT_lookup_python_opaque_type("api.breakpoint_change_interface_t");
#endif /* struct_breakpoint_change_interface_t_type_p */


#ifdef struct_breakpoint_manager_interface_t_type_p
	struct_breakpoint_manager_interface_t_type_p = VT_lookup_python_opaque_type("api.breakpoint_manager_interface_t");
#endif /* struct_breakpoint_manager_interface_t_type_p */


#ifdef struct_breakpoint_query_interface_t_type_p
	struct_breakpoint_query_interface_t_type_p = VT_lookup_python_opaque_type("api.breakpoint_query_interface_t");
#endif /* struct_breakpoint_query_interface_t_type_p */


#ifdef struct_breakpoint_query_v2_interface_t_type_p
	struct_breakpoint_query_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.breakpoint_query_v2_interface_t");
#endif /* struct_breakpoint_query_v2_interface_t_type_p */


#ifdef struct_breakpoint_registration_interface_t_type_p
	struct_breakpoint_registration_interface_t_type_p = VT_lookup_python_opaque_type("api.breakpoint_registration_interface_t");
#endif /* struct_breakpoint_registration_interface_t_type_p */


#ifdef struct_breakpoint_type_interface_t_type_p
	struct_breakpoint_type_interface_t_type_p = VT_lookup_python_opaque_type("api.breakpoint_type_interface_t");
#endif /* struct_breakpoint_type_interface_t_type_p */


#ifdef struct_breakpoint_type_provider_interface_t_type_p
	struct_breakpoint_type_provider_interface_t_type_p = VT_lookup_python_opaque_type("api.breakpoint_type_provider_interface_t");
#endif /* struct_breakpoint_type_provider_interface_t_type_p */


#ifdef struct_bridge_interface_t_type_p
	struct_bridge_interface_t_type_p = VT_lookup_python_opaque_type("api.bridge_interface_t");
#endif /* struct_bridge_interface_t_type_p */


#ifdef struct_map_info_t_type_p
	struct_map_info_t_type_p = VT_lookup_python_opaque_type("api.map_info_t");
#endif /* struct_map_info_t_type_p */


#ifdef struct_cache_control_interface_t_type_p
	struct_cache_control_interface_t_type_p = VT_lookup_python_opaque_type("api.cache_control_interface_t");
#endif /* struct_cache_control_interface_t_type_p */


#ifdef struct_callback_info_interface_t_type_p
	struct_callback_info_interface_t_type_p = VT_lookup_python_opaque_type("api.callback_info_interface_t");
#endif /* struct_callback_info_interface_t_type_p */


#ifdef struct_cdrom_media_interface_t_type_p
	struct_cdrom_media_interface_t_type_p = VT_lookup_python_opaque_type("api.cdrom_media_interface_t");
#endif /* struct_cdrom_media_interface_t_type_p */


#ifdef struct_cell_inspection_interface_t_type_p
	struct_cell_inspection_interface_t_type_p = VT_lookup_python_opaque_type("api.cell_inspection_interface_t");
#endif /* struct_cell_inspection_interface_t_type_p */


#ifdef struct_checkpoint_interface_t_type_p
	struct_checkpoint_interface_t_type_p = VT_lookup_python_opaque_type("api.checkpoint_interface_t");
#endif /* struct_checkpoint_interface_t_type_p */


#ifdef struct_cmd_line_frontend_interface_t_type_p
	struct_cmd_line_frontend_interface_t_type_p = VT_lookup_python_opaque_type("api.cmd_line_frontend_interface_t");
#endif /* struct_cmd_line_frontend_interface_t_type_p */


#ifdef struct_cmd_line_selection_interface_t_type_p
	struct_cmd_line_selection_interface_t_type_p = VT_lookup_python_opaque_type("api.cmd_line_selection_interface_t");
#endif /* struct_cmd_line_selection_interface_t_type_p */


#ifdef struct_co_execute_interface_t_type_p
	struct_co_execute_interface_t_type_p = VT_lookup_python_opaque_type("api.co_execute_interface_t");
#endif /* struct_co_execute_interface_t_type_p */


#ifdef struct_component_interface_t_type_p
	struct_component_interface_t_type_p = VT_lookup_python_opaque_type("api.component_interface_t");
#endif /* struct_component_interface_t_type_p */


#ifdef struct_component_connector_interface_t_type_p
	struct_component_connector_interface_t_type_p = VT_lookup_python_opaque_type("api.component_connector_interface_t");
#endif /* struct_component_connector_interface_t_type_p */


#ifdef struct_con_input_interface_t_type_p
	struct_con_input_interface_t_type_p = VT_lookup_python_opaque_type("api.con_input_interface_t");
#endif /* struct_con_input_interface_t_type_p */


#ifdef struct_con_input_code_interface_t_type_p
	struct_con_input_code_interface_t_type_p = VT_lookup_python_opaque_type("api.con_input_code_interface_t");
#endif /* struct_con_input_code_interface_t_type_p */


#ifdef struct_concurrency_group_interface_t_type_p
	struct_concurrency_group_interface_t_type_p = VT_lookup_python_opaque_type("api.concurrency_group_interface_t");
#endif /* struct_concurrency_group_interface_t_type_p */


#ifdef struct_concurrency_mode_interface_t_type_p
	struct_concurrency_mode_interface_t_type_p = VT_lookup_python_opaque_type("api.concurrency_mode_interface_t");
#endif /* struct_concurrency_mode_interface_t_type_p */


#ifdef struct_connector_interface_t_type_p
	struct_connector_interface_t_type_p = VT_lookup_python_opaque_type("api.connector_interface_t");
#endif /* struct_connector_interface_t_type_p */


#ifdef struct_context_handler_interface_t_type_p
	struct_context_handler_interface_t_type_p = VT_lookup_python_opaque_type("api.context_handler_interface_t");
#endif /* struct_context_handler_interface_t_type_p */


#ifdef struct_coreint_interface_t_type_p
	struct_coreint_interface_t_type_p = VT_lookup_python_opaque_type("api.coreint_interface_t");
#endif /* struct_coreint_interface_t_type_p */


#ifdef struct_coreint_reply_t_type_p
	struct_coreint_reply_t_type_p = VT_lookup_python_opaque_type("api.coreint_reply_t");
#endif /* struct_coreint_reply_t_type_p */


#ifdef struct_cpu_cached_instruction_interface_t_type_p
	struct_cpu_cached_instruction_interface_t_type_p = VT_lookup_python_opaque_type("api.cpu_cached_instruction_interface_t");
#endif /* struct_cpu_cached_instruction_interface_t_type_p */


#ifdef struct_cached_instruction_handle_t_type_p
	struct_cached_instruction_handle_t_type_p = VT_lookup_python_opaque_type("api.cached_instruction_handle_t");
#endif /* struct_cached_instruction_handle_t_type_p */


#ifdef struct_instruction_handle_t_type_p
	struct_instruction_handle_t_type_p = VT_lookup_python_opaque_type("api.instruction_handle_t");
#endif /* struct_instruction_handle_t_type_p */


#ifdef struct_memory_handle_t_type_p
	struct_memory_handle_t_type_p = VT_lookup_python_opaque_type("api.memory_handle_t");
#endif /* struct_memory_handle_t_type_p */


#ifdef struct_cpu_cached_instruction_once_interface_t_type_p
	struct_cpu_cached_instruction_once_interface_t_type_p = VT_lookup_python_opaque_type("api.cpu_cached_instruction_once_interface_t");
#endif /* struct_cpu_cached_instruction_once_interface_t_type_p */


#ifdef struct_cpu_exception_query_interface_t_type_p
	struct_cpu_exception_query_interface_t_type_p = VT_lookup_python_opaque_type("api.cpu_exception_query_interface_t");
#endif /* struct_cpu_exception_query_interface_t_type_p */


#ifdef struct_exception_handle_t_type_p
	struct_exception_handle_t_type_p = VT_lookup_python_opaque_type("api.exception_handle_t");
#endif /* struct_exception_handle_t_type_p */


#ifdef struct_cpu_instruction_decoder_interface_t_type_p
	struct_cpu_instruction_decoder_interface_t_type_p = VT_lookup_python_opaque_type("api.cpu_instruction_decoder_interface_t");
#endif /* struct_cpu_instruction_decoder_interface_t_type_p */


#ifdef struct_decoder_handle_t_type_p
	struct_decoder_handle_t_type_p = VT_lookup_python_opaque_type("api.decoder_handle_t");
#endif /* struct_decoder_handle_t_type_p */


#ifdef struct_cpu_instruction_query_interface_t_type_p
	struct_cpu_instruction_query_interface_t_type_p = VT_lookup_python_opaque_type("api.cpu_instruction_query_interface_t");
#endif /* struct_cpu_instruction_query_interface_t_type_p */


#ifdef struct_cpu_instrumentation_subscribe_interface_t_type_p
	struct_cpu_instrumentation_subscribe_interface_t_type_p = VT_lookup_python_opaque_type("api.cpu_instrumentation_subscribe_interface_t");
#endif /* struct_cpu_instrumentation_subscribe_interface_t_type_p */


#ifdef struct_cpu_stream_handle_t_type_p
	struct_cpu_stream_handle_t_type_p = VT_lookup_python_opaque_type("api.cpu_stream_handle_t");
#endif /* struct_cpu_stream_handle_t_type_p */


#ifdef struct_address_handle_t_type_p
	struct_address_handle_t_type_p = VT_lookup_python_opaque_type("api.address_handle_t");
#endif /* struct_address_handle_t_type_p */


#ifdef struct_exception_return_handle_t_type_p
	struct_exception_return_handle_t_type_p = VT_lookup_python_opaque_type("api.exception_return_handle_t");
#endif /* struct_exception_return_handle_t_type_p */


#ifdef struct_cpu_memory_query_interface_t_type_p
	struct_cpu_memory_query_interface_t_type_p = VT_lookup_python_opaque_type("api.cpu_memory_query_interface_t");
#endif /* struct_cpu_memory_query_interface_t_type_p */


#ifdef struct_cycle_interface_t_type_p
	struct_cycle_interface_t_type_p = VT_lookup_python_opaque_type("api.cycle_interface_t");
#endif /* struct_cycle_interface_t_type_p */


#ifdef struct_event_class_t_type_p
	struct_event_class_t_type_p = VT_lookup_python_opaque_type("api.event_class_t");
#endif /* struct_event_class_t_type_p */


#ifdef struct_local_time_t_type_p
	struct_local_time_t_type_p = VT_lookup_python_opaque_type("api.local_time_t");
#endif /* struct_local_time_t_type_p */


#ifdef struct_duration_t_type_p
	struct_duration_t_type_p = VT_lookup_python_opaque_type("api.duration_t");
#endif /* struct_duration_t_type_p */


#ifdef struct_cycle_control_interface_t_type_p
	struct_cycle_control_interface_t_type_p = VT_lookup_python_opaque_type("api.cycle_control_interface_t");
#endif /* struct_cycle_control_interface_t_type_p */


#ifdef struct_cycle_event_interface_t_type_p
	struct_cycle_event_interface_t_type_p = VT_lookup_python_opaque_type("api.cycle_event_interface_t");
#endif /* struct_cycle_event_interface_t_type_p */


#ifdef struct_cycle_event_instrumentation_interface_t_type_p
	struct_cycle_event_instrumentation_interface_t_type_p = VT_lookup_python_opaque_type("api.cycle_event_instrumentation_interface_t");
#endif /* struct_cycle_event_instrumentation_interface_t_type_p */


#ifdef struct_cycle_handle_t_type_p
	struct_cycle_handle_t_type_p = VT_lookup_python_opaque_type("api.cycle_handle_t");
#endif /* struct_cycle_handle_t_type_p */


#ifdef struct_data_profiler_interface_t_type_p
	struct_data_profiler_interface_t_type_p = VT_lookup_python_opaque_type("api.data_profiler_interface_t");
#endif /* struct_data_profiler_interface_t_type_p */


#ifdef struct_datagram_link_interface_t_type_p
	struct_datagram_link_interface_t_type_p = VT_lookup_python_opaque_type("api.datagram_link_interface_t");
#endif /* struct_datagram_link_interface_t_type_p */


#ifdef struct_debug_notification_interface_t_type_p
	struct_debug_notification_interface_t_type_p = VT_lookup_python_opaque_type("api.debug_notification_interface_t");
#endif /* struct_debug_notification_interface_t_type_p */


#ifdef struct_debug_query_interface_t_type_p
	struct_debug_query_interface_t_type_p = VT_lookup_python_opaque_type("api.debug_query_interface_t");
#endif /* struct_debug_query_interface_t_type_p */


#ifdef struct_debug_setup_interface_t_type_p
	struct_debug_setup_interface_t_type_p = VT_lookup_python_opaque_type("api.debug_setup_interface_t");
#endif /* struct_debug_setup_interface_t_type_p */


#ifdef struct_debug_step_interface_t_type_p
	struct_debug_step_interface_t_type_p = VT_lookup_python_opaque_type("api.debug_step_interface_t");
#endif /* struct_debug_step_interface_t_type_p */


#ifdef struct_debug_symbol_interface_t_type_p
	struct_debug_symbol_interface_t_type_p = VT_lookup_python_opaque_type("api.debug_symbol_interface_t");
#endif /* struct_debug_symbol_interface_t_type_p */


#ifdef struct_debug_symbol_file_interface_t_type_p
	struct_debug_symbol_file_interface_t_type_p = VT_lookup_python_opaque_type("api.debug_symbol_file_interface_t");
#endif /* struct_debug_symbol_file_interface_t_type_p */


#ifdef struct_device_identification_interface_t_type_p
	struct_device_identification_interface_t_type_p = VT_lookup_python_opaque_type("api.device_identification_interface_t");
#endif /* struct_device_identification_interface_t_type_p */


#ifdef struct_direct_memory_interface_t_type_p
	struct_direct_memory_interface_t_type_p = VT_lookup_python_opaque_type("api.direct_memory_interface_t");
#endif /* struct_direct_memory_interface_t_type_p */


#ifdef struct_granted_mem_t_type_p
	struct_granted_mem_t_type_p = VT_lookup_python_opaque_type("api.granted_mem_t");
#endif /* struct_granted_mem_t_type_p */


#ifdef struct_direct_memory_t_type_p
	struct_direct_memory_t_type_p = VT_lookup_python_opaque_type("api.direct_memory_t");
#endif /* struct_direct_memory_t_type_p */


#ifdef struct_direct_memory_flush_interface_t_type_p
	struct_direct_memory_flush_interface_t_type_p = VT_lookup_python_opaque_type("api.direct_memory_flush_interface_t");
#endif /* struct_direct_memory_flush_interface_t_type_p */


#ifdef struct_direct_memory_lookup_interface_t_type_p
	struct_direct_memory_lookup_interface_t_type_p = VT_lookup_python_opaque_type("api.direct_memory_lookup_interface_t");
#endif /* struct_direct_memory_lookup_interface_t_type_p */


#ifdef struct_direct_memory_lookup_t_type_p
	struct_direct_memory_lookup_t_type_p = VT_lookup_python_opaque_type("api.direct_memory_lookup_t");
#endif /* struct_direct_memory_lookup_t_type_p */


#ifdef struct_direct_memory_lookup_v2_interface_t_type_p
	struct_direct_memory_lookup_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.direct_memory_lookup_v2_interface_t");
#endif /* struct_direct_memory_lookup_v2_interface_t_type_p */


#ifdef struct_direct_memory_tags_interface_t_type_p
	struct_direct_memory_tags_interface_t_type_p = VT_lookup_python_opaque_type("api.direct_memory_tags_interface_t");
#endif /* struct_direct_memory_tags_interface_t_type_p */


#ifdef struct_direct_memory_tags_t_type_p
	struct_direct_memory_tags_t_type_p = VT_lookup_python_opaque_type("api.direct_memory_tags_t");
#endif /* struct_direct_memory_tags_t_type_p */


#ifdef struct_direct_memory_update_interface_t_type_p
	struct_direct_memory_update_interface_t_type_p = VT_lookup_python_opaque_type("api.direct_memory_update_interface_t");
#endif /* struct_direct_memory_update_interface_t_type_p */


#ifdef struct_disk_component_interface_t_type_p
	struct_disk_component_interface_t_type_p = VT_lookup_python_opaque_type("api.disk_component_interface_t");
#endif /* struct_disk_component_interface_t_type_p */


#ifdef struct_dist_control_interface_t_type_p
	struct_dist_control_interface_t_type_p = VT_lookup_python_opaque_type("api.dist_control_interface_t");
#endif /* struct_dist_control_interface_t_type_p */


#ifdef struct_ethernet_cable_interface_t_type_p
	struct_ethernet_cable_interface_t_type_p = VT_lookup_python_opaque_type("api.ethernet_cable_interface_t");
#endif /* struct_ethernet_cable_interface_t_type_p */


#ifdef struct_ethernet_common_interface_t_type_p
	struct_ethernet_common_interface_t_type_p = VT_lookup_python_opaque_type("api.ethernet_common_interface_t");
#endif /* struct_ethernet_common_interface_t_type_p */


#ifdef struct_ethernet_probe_interface_t_type_p
	struct_ethernet_probe_interface_t_type_p = VT_lookup_python_opaque_type("api.ethernet_probe_interface_t");
#endif /* struct_ethernet_probe_interface_t_type_p */


#ifdef struct_ethernet_snoop_interface_t_type_p
	struct_ethernet_snoop_interface_t_type_p = VT_lookup_python_opaque_type("api.ethernet_snoop_interface_t");
#endif /* struct_ethernet_snoop_interface_t_type_p */


#ifdef struct_ethernet_vlan_snoop_interface_t_type_p
	struct_ethernet_vlan_snoop_interface_t_type_p = VT_lookup_python_opaque_type("api.ethernet_vlan_snoop_interface_t");
#endif /* struct_ethernet_vlan_snoop_interface_t_type_p */


#ifdef struct_event_delta_interface_t_type_p
	struct_event_delta_interface_t_type_p = VT_lookup_python_opaque_type("api.event_delta_interface_t");
#endif /* struct_event_delta_interface_t_type_p */


#ifdef struct_event_handler_interface_t_type_p
	struct_event_handler_interface_t_type_p = VT_lookup_python_opaque_type("api.event_handler_interface_t");
#endif /* struct_event_handler_interface_t_type_p */


#ifdef struct_exception_interface_t_type_p
	struct_exception_interface_t_type_p = VT_lookup_python_opaque_type("api.exception_interface_t");
#endif /* struct_exception_interface_t_type_p */


#ifdef struct_exec_trace_interface_t_type_p
	struct_exec_trace_interface_t_type_p = VT_lookup_python_opaque_type("api.exec_trace_interface_t");
#endif /* struct_exec_trace_interface_t_type_p */


#ifdef struct_execute_interface_t_type_p
	struct_execute_interface_t_type_p = VT_lookup_python_opaque_type("api.execute_interface_t");
#endif /* struct_execute_interface_t_type_p */


#ifdef struct_execute_control_interface_t_type_p
	struct_execute_control_interface_t_type_p = VT_lookup_python_opaque_type("api.execute_control_interface_t");
#endif /* struct_execute_control_interface_t_type_p */


#ifdef struct_extended_serial_interface_t_type_p
	struct_extended_serial_interface_t_type_p = VT_lookup_python_opaque_type("api.extended_serial_interface_t");
#endif /* struct_extended_serial_interface_t_type_p */


#ifdef struct_external_connection_ctl_interface_t_type_p
	struct_external_connection_ctl_interface_t_type_p = VT_lookup_python_opaque_type("api.external_connection_ctl_interface_t");
#endif /* struct_external_connection_ctl_interface_t_type_p */


#ifdef struct_external_connection_events_interface_t_type_p
	struct_external_connection_events_interface_t_type_p = VT_lookup_python_opaque_type("api.external_connection_events_interface_t");
#endif /* struct_external_connection_events_interface_t_type_p */


#ifdef struct_firewire_bus_interface_t_type_p
	struct_firewire_bus_interface_t_type_p = VT_lookup_python_opaque_type("api.firewire_bus_interface_t");
#endif /* struct_firewire_bus_interface_t_type_p */


#ifdef struct_firewire_device_interface_t_type_p
	struct_firewire_device_interface_t_type_p = VT_lookup_python_opaque_type("api.firewire_device_interface_t");
#endif /* struct_firewire_device_interface_t_type_p */


#ifdef struct_fmn_station_control_interface_t_type_p
	struct_fmn_station_control_interface_t_type_p = VT_lookup_python_opaque_type("api.fmn_station_control_interface_t");
#endif /* struct_fmn_station_control_interface_t_type_p */


#ifdef struct_fmn_station_control_v2_interface_t_type_p
	struct_fmn_station_control_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.fmn_station_control_v2_interface_t");
#endif /* struct_fmn_station_control_v2_interface_t_type_p */


#ifdef struct_follower_agent_interface_t_type_p
	struct_follower_agent_interface_t_type_p = VT_lookup_python_opaque_type("api.follower_agent_interface_t");
#endif /* struct_follower_agent_interface_t_type_p */


#ifdef struct_forward_destination_rewriter_interface_t_type_p
	struct_forward_destination_rewriter_interface_t_type_p = VT_lookup_python_opaque_type("api.forward_destination_rewriter_interface_t");
#endif /* struct_forward_destination_rewriter_interface_t_type_p */


#ifdef struct_forward_rewrite_endpoint_t_type_p
	struct_forward_rewrite_endpoint_t_type_p = VT_lookup_python_opaque_type("api.forward_rewrite_endpoint_t");
#endif /* struct_forward_rewrite_endpoint_t_type_p */


#ifdef struct_freerun_interface_t_type_p
	struct_freerun_interface_t_type_p = VT_lookup_python_opaque_type("api.freerun_interface_t");
#endif /* struct_freerun_interface_t_type_p */


#ifdef struct_frequency_interface_t_type_p
	struct_frequency_interface_t_type_p = VT_lookup_python_opaque_type("api.frequency_interface_t");
#endif /* struct_frequency_interface_t_type_p */


#ifdef struct_frequency_listener_interface_t_type_p
	struct_frequency_listener_interface_t_type_p = VT_lookup_python_opaque_type("api.frequency_listener_interface_t");
#endif /* struct_frequency_listener_interface_t_type_p */


#ifdef struct_frontend_server_interface_t_type_p
	struct_frontend_server_interface_t_type_p = VT_lookup_python_opaque_type("api.frontend_server_interface_t");
#endif /* struct_frontend_server_interface_t_type_p */


#ifdef struct_gfx_break_interface_t_type_p
	struct_gfx_break_interface_t_type_p = VT_lookup_python_opaque_type("api.gfx_break_interface_t");
#endif /* struct_gfx_break_interface_t_type_p */


#ifdef struct_gfx_con_interface_t_type_p
	struct_gfx_con_interface_t_type_p = VT_lookup_python_opaque_type("api.gfx_con_interface_t");
#endif /* struct_gfx_con_interface_t_type_p */


#ifdef struct_gfx_console_interface_t_type_p
	struct_gfx_console_interface_t_type_p = VT_lookup_python_opaque_type("api.gfx_console_interface_t");
#endif /* struct_gfx_console_interface_t_type_p */


#ifdef struct_gfx_console_backend_interface_t_type_p
	struct_gfx_console_backend_interface_t_type_p = VT_lookup_python_opaque_type("api.gfx_console_backend_interface_t");
#endif /* struct_gfx_console_backend_interface_t_type_p */


#ifdef struct_gfx_console_frontend_interface_t_type_p
	struct_gfx_console_frontend_interface_t_type_p = VT_lookup_python_opaque_type("api.gfx_console_frontend_interface_t");
#endif /* struct_gfx_console_frontend_interface_t_type_p */


#ifdef struct_global_time_interface_t_type_p
	struct_global_time_interface_t_type_p = VT_lookup_python_opaque_type("api.global_time_interface_t");
#endif /* struct_global_time_interface_t_type_p */


#ifdef struct_gui_console_backend_interface_t_type_p
	struct_gui_console_backend_interface_t_type_p = VT_lookup_python_opaque_type("api.gui_console_backend_interface_t");
#endif /* struct_gui_console_backend_interface_t_type_p */


#ifdef struct_host_serial_interface_t_type_p
	struct_host_serial_interface_t_type_p = VT_lookup_python_opaque_type("api.host_serial_interface_t");
#endif /* struct_host_serial_interface_t_type_p */


#ifdef struct_i2c_bridge_interface_t_type_p
	struct_i2c_bridge_interface_t_type_p = VT_lookup_python_opaque_type("api.i2c_bridge_interface_t");
#endif /* struct_i2c_bridge_interface_t_type_p */


#ifdef struct_i2c_bus_interface_t_type_p
	struct_i2c_bus_interface_t_type_p = VT_lookup_python_opaque_type("api.i2c_bus_interface_t");
#endif /* struct_i2c_bus_interface_t_type_p */


#ifdef struct_i2c_device_interface_t_type_p
	struct_i2c_device_interface_t_type_p = VT_lookup_python_opaque_type("api.i2c_device_interface_t");
#endif /* struct_i2c_device_interface_t_type_p */


#ifdef struct_i2c_link_interface_t_type_p
	struct_i2c_link_interface_t_type_p = VT_lookup_python_opaque_type("api.i2c_link_interface_t");
#endif /* struct_i2c_link_interface_t_type_p */


#ifdef struct_i2c_master_interface_t_type_p
	struct_i2c_master_interface_t_type_p = VT_lookup_python_opaque_type("api.i2c_master_interface_t");
#endif /* struct_i2c_master_interface_t_type_p */


#ifdef struct_i2c_master_v2_interface_t_type_p
	struct_i2c_master_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.i2c_master_v2_interface_t");
#endif /* struct_i2c_master_v2_interface_t_type_p */


#ifdef struct_i2c_slave_interface_t_type_p
	struct_i2c_slave_interface_t_type_p = VT_lookup_python_opaque_type("api.i2c_slave_interface_t");
#endif /* struct_i2c_slave_interface_t_type_p */


#ifdef struct_i2c_slave_v2_interface_t_type_p
	struct_i2c_slave_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.i2c_slave_v2_interface_t");
#endif /* struct_i2c_slave_v2_interface_t_type_p */


#ifdef struct_i3c_daa_snoop_interface_t_type_p
	struct_i3c_daa_snoop_interface_t_type_p = VT_lookup_python_opaque_type("api.i3c_daa_snoop_interface_t");
#endif /* struct_i3c_daa_snoop_interface_t_type_p */


#ifdef struct_i3c_master_interface_t_type_p
	struct_i3c_master_interface_t_type_p = VT_lookup_python_opaque_type("api.i3c_master_interface_t");
#endif /* struct_i3c_master_interface_t_type_p */


#ifdef struct_i3c_slave_interface_t_type_p
	struct_i3c_slave_interface_t_type_p = VT_lookup_python_opaque_type("api.i3c_slave_interface_t");
#endif /* struct_i3c_slave_interface_t_type_p */


#ifdef struct_i8051_interrupt_interface_t_type_p
	struct_i8051_interrupt_interface_t_type_p = VT_lookup_python_opaque_type("api.i8051_interrupt_interface_t");
#endif /* struct_i8051_interrupt_interface_t_type_p */


#ifdef struct_i8051_timer_interface_t_type_p
	struct_i8051_timer_interface_t_type_p = VT_lookup_python_opaque_type("api.i8051_timer_interface_t");
#endif /* struct_i8051_timer_interface_t_type_p */


#ifdef struct_ieee_802_3_mac_interface_t_type_p
	struct_ieee_802_3_mac_interface_t_type_p = VT_lookup_python_opaque_type("api.ieee_802_3_mac_interface_t");
#endif /* struct_ieee_802_3_mac_interface_t_type_p */


#ifdef struct_ieee_802_3_mac_v3_interface_t_type_p
	struct_ieee_802_3_mac_v3_interface_t_type_p = VT_lookup_python_opaque_type("api.ieee_802_3_mac_v3_interface_t");
#endif /* struct_ieee_802_3_mac_v3_interface_t_type_p */


#ifdef struct_ieee_802_3_phy_interface_t_type_p
	struct_ieee_802_3_phy_interface_t_type_p = VT_lookup_python_opaque_type("api.ieee_802_3_phy_interface_t");
#endif /* struct_ieee_802_3_phy_interface_t_type_p */


#ifdef struct_ieee_802_3_phy_v2_interface_t_type_p
	struct_ieee_802_3_phy_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.ieee_802_3_phy_v2_interface_t");
#endif /* struct_ieee_802_3_phy_v2_interface_t_type_p */


#ifdef struct_ieee_802_3_phy_v3_interface_t_type_p
	struct_ieee_802_3_phy_v3_interface_t_type_p = VT_lookup_python_opaque_type("api.ieee_802_3_phy_v3_interface_t");
#endif /* struct_ieee_802_3_phy_v3_interface_t_type_p */


#ifdef struct_image_interface_t_type_p
	struct_image_interface_t_type_p = VT_lookup_python_opaque_type("api.image_interface_t");
#endif /* struct_image_interface_t_type_p */


#ifdef struct_instruction_fetch_interface_t_type_p
	struct_instruction_fetch_interface_t_type_p = VT_lookup_python_opaque_type("api.instruction_fetch_interface_t");
#endif /* struct_instruction_fetch_interface_t_type_p */


#ifdef struct_instrumentation_connection_interface_t_type_p
	struct_instrumentation_connection_interface_t_type_p = VT_lookup_python_opaque_type("api.instrumentation_connection_interface_t");
#endif /* struct_instrumentation_connection_interface_t_type_p */


#ifdef struct_instrumentation_filter_master_interface_t_type_p
	struct_instrumentation_filter_master_interface_t_type_p = VT_lookup_python_opaque_type("api.instrumentation_filter_master_interface_t");
#endif /* struct_instrumentation_filter_master_interface_t_type_p */


#ifdef struct_instrumentation_filter_slave_interface_t_type_p
	struct_instrumentation_filter_slave_interface_t_type_p = VT_lookup_python_opaque_type("api.instrumentation_filter_slave_interface_t");
#endif /* struct_instrumentation_filter_slave_interface_t_type_p */


#ifdef struct_instrumentation_filter_status_interface_t_type_p
	struct_instrumentation_filter_status_interface_t_type_p = VT_lookup_python_opaque_type("api.instrumentation_filter_status_interface_t");
#endif /* struct_instrumentation_filter_status_interface_t_type_p */


#ifdef struct_instrumentation_order_interface_t_type_p
	struct_instrumentation_order_interface_t_type_p = VT_lookup_python_opaque_type("api.instrumentation_order_interface_t");
#endif /* struct_instrumentation_order_interface_t_type_p */


#ifdef struct_instrumentation_tool_interface_t_type_p
	struct_instrumentation_tool_interface_t_type_p = VT_lookup_python_opaque_type("api.instrumentation_tool_interface_t");
#endif /* struct_instrumentation_tool_interface_t_type_p */


#ifdef struct_int_register_interface_t_type_p
	struct_int_register_interface_t_type_p = VT_lookup_python_opaque_type("api.int_register_interface_t");
#endif /* struct_int_register_interface_t_type_p */


#ifdef struct_interrupt_ack_interface_t_type_p
	struct_interrupt_ack_interface_t_type_p = VT_lookup_python_opaque_type("api.interrupt_ack_interface_t");
#endif /* struct_interrupt_ack_interface_t_type_p */


#ifdef struct_interrupt_cpu_interface_t_type_p
	struct_interrupt_cpu_interface_t_type_p = VT_lookup_python_opaque_type("api.interrupt_cpu_interface_t");
#endif /* struct_interrupt_cpu_interface_t_type_p */


#ifdef struct_interrupt_subscriber_interface_t_type_p
	struct_interrupt_subscriber_interface_t_type_p = VT_lookup_python_opaque_type("api.interrupt_subscriber_interface_t");
#endif /* struct_interrupt_subscriber_interface_t_type_p */


#ifdef struct_io_memory_interface_t_type_p
	struct_io_memory_interface_t_type_p = VT_lookup_python_opaque_type("api.io_memory_interface_t");
#endif /* struct_io_memory_interface_t_type_p */


#ifdef struct_jit_control_interface_t_type_p
	struct_jit_control_interface_t_type_p = VT_lookup_python_opaque_type("api.jit_control_interface_t");
#endif /* struct_jit_control_interface_t_type_p */


#ifdef struct_keyboard_interface_t_type_p
	struct_keyboard_interface_t_type_p = VT_lookup_python_opaque_type("api.keyboard_interface_t");
#endif /* struct_keyboard_interface_t_type_p */


#ifdef struct_keyboard_console_interface_t_type_p
	struct_keyboard_console_interface_t_type_p = VT_lookup_python_opaque_type("api.keyboard_console_interface_t");
#endif /* struct_keyboard_console_interface_t_type_p */


#ifdef struct_leader_message_interface_t_type_p
	struct_leader_message_interface_t_type_p = VT_lookup_python_opaque_type("api.leader_message_interface_t");
#endif /* struct_leader_message_interface_t_type_p */


#ifdef struct_linear_image_interface_t_type_p
	struct_linear_image_interface_t_type_p = VT_lookup_python_opaque_type("api.linear_image_interface_t");
#endif /* struct_linear_image_interface_t_type_p */


#ifdef struct_link_endpoint_interface_t_type_p
	struct_link_endpoint_interface_t_type_p = VT_lookup_python_opaque_type("api.link_endpoint_interface_t");
#endif /* struct_link_endpoint_interface_t_type_p */


#ifdef struct_link_endpoint_v2_interface_t_type_p
	struct_link_endpoint_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.link_endpoint_v2_interface_t");
#endif /* struct_link_endpoint_v2_interface_t_type_p */


#ifdef struct_log_object_interface_t_type_p
	struct_log_object_interface_t_type_p = VT_lookup_python_opaque_type("api.log_object_interface_t");
#endif /* struct_log_object_interface_t_type_p */


#ifdef struct_map_demap_interface_t_type_p
	struct_map_demap_interface_t_type_p = VT_lookup_python_opaque_type("api.map_demap_interface_t");
#endif /* struct_map_demap_interface_t_type_p */


#ifdef struct_mdio45_bus_interface_t_type_p
	struct_mdio45_bus_interface_t_type_p = VT_lookup_python_opaque_type("api.mdio45_bus_interface_t");
#endif /* struct_mdio45_bus_interface_t_type_p */


#ifdef struct_mdio45_phy_interface_t_type_p
	struct_mdio45_phy_interface_t_type_p = VT_lookup_python_opaque_type("api.mdio45_phy_interface_t");
#endif /* struct_mdio45_phy_interface_t_type_p */


#ifdef struct_memory_profiler_interface_t_type_p
	struct_memory_profiler_interface_t_type_p = VT_lookup_python_opaque_type("api.memory_profiler_interface_t");
#endif /* struct_memory_profiler_interface_t_type_p */


#ifdef struct_memory_space_interface_t_type_p
	struct_memory_space_interface_t_type_p = VT_lookup_python_opaque_type("api.memory_space_interface_t");
#endif /* struct_memory_space_interface_t_type_p */


#ifdef struct_map_list_t_type_p
	struct_map_list_t_type_p = VT_lookup_python_opaque_type("api.map_list_t");
#endif /* struct_map_list_t_type_p */


#ifdef struct_microwire_interface_t_type_p
	struct_microwire_interface_t_type_p = VT_lookup_python_opaque_type("api.microwire_interface_t");
#endif /* struct_microwire_interface_t_type_p */


#ifdef struct_mii_interface_t_type_p
	struct_mii_interface_t_type_p = VT_lookup_python_opaque_type("api.mii_interface_t");
#endif /* struct_mii_interface_t_type_p */


#ifdef struct_mii_management_interface_t_type_p
	struct_mii_management_interface_t_type_p = VT_lookup_python_opaque_type("api.mii_management_interface_t");
#endif /* struct_mii_management_interface_t_type_p */


#ifdef struct_mips_interface_t_type_p
	struct_mips_interface_t_type_p = VT_lookup_python_opaque_type("api.mips_interface_t");
#endif /* struct_mips_interface_t_type_p */


#ifdef struct_mips_cache_instruction_interface_t_type_p
	struct_mips_cache_instruction_interface_t_type_p = VT_lookup_python_opaque_type("api.mips_cache_instruction_interface_t");
#endif /* struct_mips_cache_instruction_interface_t_type_p */


#ifdef struct_mips_coprocessor_interface_t_type_p
	struct_mips_coprocessor_interface_t_type_p = VT_lookup_python_opaque_type("api.mips_coprocessor_interface_t");
#endif /* struct_mips_coprocessor_interface_t_type_p */


#ifdef struct_mips_eic_interface_t_type_p
	struct_mips_eic_interface_t_type_p = VT_lookup_python_opaque_type("api.mips_eic_interface_t");
#endif /* struct_mips_eic_interface_t_type_p */


#ifdef struct_mips_ite_interface_t_type_p
	struct_mips_ite_interface_t_type_p = VT_lookup_python_opaque_type("api.mips_ite_interface_t");
#endif /* struct_mips_ite_interface_t_type_p */


#ifdef struct_mips_mt_ase_interface_t_type_p
	struct_mips_mt_ase_interface_t_type_p = VT_lookup_python_opaque_type("api.mips_mt_ase_interface_t");
#endif /* struct_mips_mt_ase_interface_t_type_p */


#ifdef struct_mips_mt_ase_policy_interface_t_type_p
	struct_mips_mt_ase_policy_interface_t_type_p = VT_lookup_python_opaque_type("api.mips_mt_ase_policy_interface_t");
#endif /* struct_mips_mt_ase_policy_interface_t_type_p */


#ifdef struct_mmc_interface_t_type_p
	struct_mmc_interface_t_type_p = VT_lookup_python_opaque_type("api.mmc_interface_t");
#endif /* struct_mmc_interface_t_type_p */


#ifdef struct_mouse_interface_t_type_p
	struct_mouse_interface_t_type_p = VT_lookup_python_opaque_type("api.mouse_interface_t");
#endif /* struct_mouse_interface_t_type_p */


#ifdef struct_ms1553_link_interface_t_type_p
	struct_ms1553_link_interface_t_type_p = VT_lookup_python_opaque_type("api.ms1553_link_interface_t");
#endif /* struct_ms1553_link_interface_t_type_p */


#ifdef struct_ms1553_terminal_interface_t_type_p
	struct_ms1553_terminal_interface_t_type_p = VT_lookup_python_opaque_type("api.ms1553_terminal_interface_t");
#endif /* struct_ms1553_terminal_interface_t_type_p */


#ifdef struct_multi_level_signal_interface_t_type_p
	struct_multi_level_signal_interface_t_type_p = VT_lookup_python_opaque_type("api.multi_level_signal_interface_t");
#endif /* struct_multi_level_signal_interface_t_type_p */


#ifdef struct_nand_flash_interface_t_type_p
	struct_nand_flash_interface_t_type_p = VT_lookup_python_opaque_type("api.nand_flash_interface_t");
#endif /* struct_nand_flash_interface_t_type_p */


#ifdef struct_nios_interface_t_type_p
	struct_nios_interface_t_type_p = VT_lookup_python_opaque_type("api.nios_interface_t");
#endif /* struct_nios_interface_t_type_p */


#ifdef struct_nios_eic_interface_t_type_p
	struct_nios_eic_interface_t_type_p = VT_lookup_python_opaque_type("api.nios_eic_interface_t");
#endif /* struct_nios_eic_interface_t_type_p */


#ifdef struct_opcode_info_interface_t_type_p
	struct_opcode_info_interface_t_type_p = VT_lookup_python_opaque_type("api.opcode_info_interface_t");
#endif /* struct_opcode_info_interface_t_type_p */


#ifdef struct_opcode_length_info_t_type_p
	struct_opcode_length_info_t_type_p = VT_lookup_python_opaque_type("api.opcode_length_info_t");
#endif /* struct_opcode_length_info_t_type_p */


#ifdef struct_osa_component_interface_t_type_p
	struct_osa_component_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_component_interface_t");
#endif /* struct_osa_component_interface_t_type_p */


#ifdef struct_maybe_node_id_t_type_p
	struct_maybe_node_id_t_type_p = VT_lookup_python_opaque_type("api.maybe_node_id_t");
#endif /* struct_maybe_node_id_t_type_p */


#ifdef struct_osa_control_interface_t_type_p
	struct_osa_control_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_control_interface_t");
#endif /* struct_osa_control_interface_t_type_p */


#ifdef struct_osa_control_v2_interface_t_type_p
	struct_osa_control_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_control_v2_interface_t");
#endif /* struct_osa_control_v2_interface_t_type_p */


#ifdef struct_osa_machine_notification_interface_t_type_p
	struct_osa_machine_notification_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_machine_notification_interface_t");
#endif /* struct_osa_machine_notification_interface_t_type_p */


#ifdef struct_osa_machine_query_interface_t_type_p
	struct_osa_machine_query_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_machine_query_interface_t");
#endif /* struct_osa_machine_query_interface_t_type_p */


#ifdef struct_osa_mapper_admin_interface_t_type_p
	struct_osa_mapper_admin_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_mapper_admin_interface_t");
#endif /* struct_osa_mapper_admin_interface_t_type_p */


#ifdef struct_osa_mapper_control_interface_t_type_p
	struct_osa_mapper_control_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_mapper_control_interface_t");
#endif /* struct_osa_mapper_control_interface_t_type_p */


#ifdef struct_osa_mapper_query_interface_t_type_p
	struct_osa_mapper_query_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_mapper_query_interface_t");
#endif /* struct_osa_mapper_query_interface_t_type_p */


#ifdef struct_osa_micro_checkpoint_interface_t_type_p
	struct_osa_micro_checkpoint_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_micro_checkpoint_interface_t");
#endif /* struct_osa_micro_checkpoint_interface_t_type_p */


#ifdef struct_osa_node_path_interface_t_type_p
	struct_osa_node_path_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_node_path_interface_t");
#endif /* struct_osa_node_path_interface_t_type_p */


#ifdef struct_osa_node_tree_admin_interface_t_type_p
	struct_osa_node_tree_admin_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_node_tree_admin_interface_t");
#endif /* struct_osa_node_tree_admin_interface_t_type_p */


#ifdef struct_osa_node_tree_notification_interface_t_type_p
	struct_osa_node_tree_notification_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_node_tree_notification_interface_t");
#endif /* struct_osa_node_tree_notification_interface_t_type_p */


#ifdef struct_osa_node_tree_query_interface_t_type_p
	struct_osa_node_tree_query_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_node_tree_query_interface_t");
#endif /* struct_osa_node_tree_query_interface_t_type_p */


#ifdef struct_osa_parameters_interface_t_type_p
	struct_osa_parameters_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_parameters_interface_t");
#endif /* struct_osa_parameters_interface_t_type_p */


#ifdef struct_osa_tracker_component_interface_t_type_p
	struct_osa_tracker_component_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_tracker_component_interface_t");
#endif /* struct_osa_tracker_component_interface_t_type_p */


#ifdef struct_osa_tracker_control_interface_t_type_p
	struct_osa_tracker_control_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_tracker_control_interface_t");
#endif /* struct_osa_tracker_control_interface_t_type_p */


#ifdef struct_osa_tracker_state_admin_interface_t_type_p
	struct_osa_tracker_state_admin_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_tracker_state_admin_interface_t");
#endif /* struct_osa_tracker_state_admin_interface_t_type_p */


#ifdef struct_osa_tracker_state_notification_interface_t_type_p
	struct_osa_tracker_state_notification_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_tracker_state_notification_interface_t");
#endif /* struct_osa_tracker_state_notification_interface_t_type_p */


#ifdef struct_osa_tracker_state_query_interface_t_type_p
	struct_osa_tracker_state_query_interface_t_type_p = VT_lookup_python_opaque_type("api.osa_tracker_state_query_interface_t");
#endif /* struct_osa_tracker_state_query_interface_t_type_p */


#ifdef struct_packet_interface_t_type_p
	struct_packet_interface_t_type_p = VT_lookup_python_opaque_type("api.packet_interface_t");
#endif /* struct_packet_interface_t_type_p */


#ifdef struct_page_bank_interface_t_type_p
	struct_page_bank_interface_t_type_p = VT_lookup_python_opaque_type("api.page_bank_interface_t");
#endif /* struct_page_bank_interface_t_type_p */


#ifdef struct_pb_page_t_type_p
	struct_pb_page_t_type_p = VT_lookup_python_opaque_type("api.pb_page_t");
#endif /* struct_pb_page_t_type_p */


#ifdef struct_page_bank_grant_t_type_p
	struct_page_bank_grant_t_type_p = VT_lookup_python_opaque_type("api.page_bank_grant_t");
#endif /* struct_page_bank_grant_t_type_p */


#ifdef struct_page_bank_client_interface_t_type_p
	struct_page_bank_client_interface_t_type_p = VT_lookup_python_opaque_type("api.page_bank_client_interface_t");
#endif /* struct_page_bank_client_interface_t_type_p */


#ifdef struct_pci_bridge_interface_t_type_p
	struct_pci_bridge_interface_t_type_p = VT_lookup_python_opaque_type("api.pci_bridge_interface_t");
#endif /* struct_pci_bridge_interface_t_type_p */


#ifdef struct_pci_bus_interface_t_type_p
	struct_pci_bus_interface_t_type_p = VT_lookup_python_opaque_type("api.pci_bus_interface_t");
#endif /* struct_pci_bus_interface_t_type_p */


#ifdef struct_pci_device_interface_t_type_p
	struct_pci_device_interface_t_type_p = VT_lookup_python_opaque_type("api.pci_device_interface_t");
#endif /* struct_pci_device_interface_t_type_p */


#ifdef struct_pci_downstream_interface_t_type_p
	struct_pci_downstream_interface_t_type_p = VT_lookup_python_opaque_type("api.pci_downstream_interface_t");
#endif /* struct_pci_downstream_interface_t_type_p */


#ifdef struct_pci_express_interface_t_type_p
	struct_pci_express_interface_t_type_p = VT_lookup_python_opaque_type("api.pci_express_interface_t");
#endif /* struct_pci_express_interface_t_type_p */


#ifdef struct_pci_express_hotplug_interface_t_type_p
	struct_pci_express_hotplug_interface_t_type_p = VT_lookup_python_opaque_type("api.pci_express_hotplug_interface_t");
#endif /* struct_pci_express_hotplug_interface_t_type_p */


#ifdef struct_pci_interrupt_interface_t_type_p
	struct_pci_interrupt_interface_t_type_p = VT_lookup_python_opaque_type("api.pci_interrupt_interface_t");
#endif /* struct_pci_interrupt_interface_t_type_p */


#ifdef struct_pci_multi_function_device_interface_t_type_p
	struct_pci_multi_function_device_interface_t_type_p = VT_lookup_python_opaque_type("api.pci_multi_function_device_interface_t");
#endif /* struct_pci_multi_function_device_interface_t_type_p */


#ifdef struct_pci_upstream_interface_t_type_p
	struct_pci_upstream_interface_t_type_p = VT_lookup_python_opaque_type("api.pci_upstream_interface_t");
#endif /* struct_pci_upstream_interface_t_type_p */


#ifdef struct_pci_upstream_operation_interface_t_type_p
	struct_pci_upstream_operation_interface_t_type_p = VT_lookup_python_opaque_type("api.pci_upstream_operation_interface_t");
#endif /* struct_pci_upstream_operation_interface_t_type_p */


#ifdef struct_pcie_adapter_compat_interface_t_type_p
	struct_pcie_adapter_compat_interface_t_type_p = VT_lookup_python_opaque_type("api.pcie_adapter_compat_interface_t");
#endif /* struct_pcie_adapter_compat_interface_t_type_p */


#ifdef struct_pcie_device_interface_t_type_p
	struct_pcie_device_interface_t_type_p = VT_lookup_python_opaque_type("api.pcie_device_interface_t");
#endif /* struct_pcie_device_interface_t_type_p */


#ifdef struct_pcie_hotplug_events_interface_t_type_p
	struct_pcie_hotplug_events_interface_t_type_p = VT_lookup_python_opaque_type("api.pcie_hotplug_events_interface_t");
#endif /* struct_pcie_hotplug_events_interface_t_type_p */


#ifdef struct_pcie_map_interface_t_type_p
	struct_pcie_map_interface_t_type_p = VT_lookup_python_opaque_type("api.pcie_map_interface_t");
#endif /* struct_pcie_map_interface_t_type_p */


#ifdef struct_pcie_port_control_interface_t_type_p
	struct_pcie_port_control_interface_t_type_p = VT_lookup_python_opaque_type("api.pcie_port_control_interface_t");
#endif /* struct_pcie_port_control_interface_t_type_p */


#ifdef struct_pmr_interface_t_type_p
	struct_pmr_interface_t_type_p = VT_lookup_python_opaque_type("api.pmr_interface_t");
#endif /* struct_pmr_interface_t_type_p */


#ifdef struct_port_forward_interface_t_type_p
	struct_port_forward_interface_t_type_p = VT_lookup_python_opaque_type("api.port_forward_interface_t");
#endif /* struct_port_forward_interface_t_type_p */


#ifdef struct_alg_connection_t_type_p
	struct_alg_connection_t_type_p = VT_lookup_python_opaque_type("api.alg_connection_t");
#endif /* struct_alg_connection_t_type_p */


#ifdef struct_ip_port_t_type_p
	struct_ip_port_t_type_p = VT_lookup_python_opaque_type("api.ip_port_t");
#endif /* struct_ip_port_t_type_p */


#ifdef struct_port_space_interface_t_type_p
	struct_port_space_interface_t_type_p = VT_lookup_python_opaque_type("api.port_space_interface_t");
#endif /* struct_port_space_interface_t_type_p */


#ifdef struct_ppc_interface_t_type_p
	struct_ppc_interface_t_type_p = VT_lookup_python_opaque_type("api.ppc_interface_t");
#endif /* struct_ppc_interface_t_type_p */


#ifdef struct_preference_interface_t_type_p
	struct_preference_interface_t_type_p = VT_lookup_python_opaque_type("api.preference_interface_t");
#endif /* struct_preference_interface_t_type_p */


#ifdef struct_probe_interface_t_type_p
	struct_probe_interface_t_type_p = VT_lookup_python_opaque_type("api.probe_interface_t");
#endif /* struct_probe_interface_t_type_p */


#ifdef struct_probe_array_interface_t_type_p
	struct_probe_array_interface_t_type_p = VT_lookup_python_opaque_type("api.probe_array_interface_t");
#endif /* struct_probe_array_interface_t_type_p */


#ifdef struct_probe_index_interface_t_type_p
	struct_probe_index_interface_t_type_p = VT_lookup_python_opaque_type("api.probe_index_interface_t");
#endif /* struct_probe_index_interface_t_type_p */


#ifdef struct_probe_sampler_cache_interface_t_type_p
	struct_probe_sampler_cache_interface_t_type_p = VT_lookup_python_opaque_type("api.probe_sampler_cache_interface_t");
#endif /* struct_probe_sampler_cache_interface_t_type_p */


#ifdef struct_probe_subscribe_interface_t_type_p
	struct_probe_subscribe_interface_t_type_p = VT_lookup_python_opaque_type("api.probe_subscribe_interface_t");
#endif /* struct_probe_subscribe_interface_t_type_p */


#ifdef struct_processor_cli_interface_t_type_p
	struct_processor_cli_interface_t_type_p = VT_lookup_python_opaque_type("api.processor_cli_interface_t");
#endif /* struct_processor_cli_interface_t_type_p */


#ifdef struct_physical_block_t_type_p
	struct_physical_block_t_type_p = VT_lookup_python_opaque_type("api.physical_block_t");
#endif /* struct_physical_block_t_type_p */


#ifdef struct_processor_endian_interface_t_type_p
	struct_processor_endian_interface_t_type_p = VT_lookup_python_opaque_type("api.processor_endian_interface_t");
#endif /* struct_processor_endian_interface_t_type_p */


#ifdef struct_processor_gui_interface_t_type_p
	struct_processor_gui_interface_t_type_p = VT_lookup_python_opaque_type("api.processor_gui_interface_t");
#endif /* struct_processor_gui_interface_t_type_p */


#ifdef struct_processor_info_interface_t_type_p
	struct_processor_info_interface_t_type_p = VT_lookup_python_opaque_type("api.processor_info_interface_t");
#endif /* struct_processor_info_interface_t_type_p */


#ifdef struct_processor_info_v2_interface_t_type_p
	struct_processor_info_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.processor_info_v2_interface_t");
#endif /* struct_processor_info_v2_interface_t_type_p */


#ifdef struct_pulse_interface_t_type_p
	struct_pulse_interface_t_type_p = VT_lookup_python_opaque_type("api.pulse_interface_t");
#endif /* struct_pulse_interface_t_type_p */


#ifdef struct_ram_interface_t_type_p
	struct_ram_interface_t_type_p = VT_lookup_python_opaque_type("api.ram_interface_t");
#endif /* struct_ram_interface_t_type_p */


#ifdef struct_ram_access_subscribe_interface_t_type_p
	struct_ram_access_subscribe_interface_t_type_p = VT_lookup_python_opaque_type("api.ram_access_subscribe_interface_t");
#endif /* struct_ram_access_subscribe_interface_t_type_p */


#ifdef struct_ram_cb_handle_t_type_p
	struct_ram_cb_handle_t_type_p = VT_lookup_python_opaque_type("api.ram_cb_handle_t");
#endif /* struct_ram_cb_handle_t_type_p */


#ifdef struct_rapidio_v3_interface_t_type_p
	struct_rapidio_v3_interface_t_type_p = VT_lookup_python_opaque_type("api.rapidio_v3_interface_t");
#endif /* struct_rapidio_v3_interface_t_type_p */


#ifdef struct_rapidio_v4_interface_t_type_p
	struct_rapidio_v4_interface_t_type_p = VT_lookup_python_opaque_type("api.rapidio_v4_interface_t");
#endif /* struct_rapidio_v4_interface_t_type_p */


#ifdef struct_rapidio_v5_interface_t_type_p
	struct_rapidio_v5_interface_t_type_p = VT_lookup_python_opaque_type("api.rapidio_v5_interface_t");
#endif /* struct_rapidio_v5_interface_t_type_p */


#ifdef struct_recorded_interface_t_type_p
	struct_recorded_interface_t_type_p = VT_lookup_python_opaque_type("api.recorded_interface_t");
#endif /* struct_recorded_interface_t_type_p */


#ifdef struct_recorder_interface_t_type_p
	struct_recorder_interface_t_type_p = VT_lookup_python_opaque_type("api.recorder_interface_t");
#endif /* struct_recorder_interface_t_type_p */


#ifdef struct_recorder_v2_interface_t_type_p
	struct_recorder_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.recorder_v2_interface_t");
#endif /* struct_recorder_v2_interface_t_type_p */


#ifdef struct_register_breakpoint_interface_t_type_p
	struct_register_breakpoint_interface_t_type_p = VT_lookup_python_opaque_type("api.register_breakpoint_interface_t");
#endif /* struct_register_breakpoint_interface_t_type_p */


#ifdef struct_register_view_interface_t_type_p
	struct_register_view_interface_t_type_p = VT_lookup_python_opaque_type("api.register_view_interface_t");
#endif /* struct_register_view_interface_t_type_p */


#ifdef struct_register_view_read_only_interface_t_type_p
	struct_register_view_read_only_interface_t_type_p = VT_lookup_python_opaque_type("api.register_view_read_only_interface_t");
#endif /* struct_register_view_read_only_interface_t_type_p */


#ifdef struct_riscv_clic_interface_t_type_p
	struct_riscv_clic_interface_t_type_p = VT_lookup_python_opaque_type("api.riscv_clic_interface_t");
#endif /* struct_riscv_clic_interface_t_type_p */


#ifdef struct_riscv_clic_interrupt_interface_t_type_p
	struct_riscv_clic_interrupt_interface_t_type_p = VT_lookup_python_opaque_type("api.riscv_clic_interrupt_interface_t");
#endif /* struct_riscv_clic_interrupt_interface_t_type_p */


#ifdef struct_riscv_coprocessor_interface_t_type_p
	struct_riscv_coprocessor_interface_t_type_p = VT_lookup_python_opaque_type("api.riscv_coprocessor_interface_t");
#endif /* struct_riscv_coprocessor_interface_t_type_p */


#ifdef struct_riscv_imsic_interface_t_type_p
	struct_riscv_imsic_interface_t_type_p = VT_lookup_python_opaque_type("api.riscv_imsic_interface_t");
#endif /* struct_riscv_imsic_interface_t_type_p */


#ifdef struct_riscv_signal_sgeip_interface_t_type_p
	struct_riscv_signal_sgeip_interface_t_type_p = VT_lookup_python_opaque_type("api.riscv_signal_sgeip_interface_t");
#endif /* struct_riscv_signal_sgeip_interface_t_type_p */


#ifdef struct_rs232_console_interface_t_type_p
	struct_rs232_console_interface_t_type_p = VT_lookup_python_opaque_type("api.rs232_console_interface_t");
#endif /* struct_rs232_console_interface_t_type_p */


#ifdef struct_rs232_device_interface_t_type_p
	struct_rs232_device_interface_t_type_p = VT_lookup_python_opaque_type("api.rs232_device_interface_t");
#endif /* struct_rs232_device_interface_t_type_p */


#ifdef struct_sata_interface_t_type_p
	struct_sata_interface_t_type_p = VT_lookup_python_opaque_type("api.sata_interface_t");
#endif /* struct_sata_interface_t_type_p */


#ifdef struct_scalar_time_interface_t_type_p
	struct_scalar_time_interface_t_type_p = VT_lookup_python_opaque_type("api.scalar_time_interface_t");
#endif /* struct_scalar_time_interface_t_type_p */


#ifdef struct_scale_factor_listener_interface_t_type_p
	struct_scale_factor_listener_interface_t_type_p = VT_lookup_python_opaque_type("api.scale_factor_listener_interface_t");
#endif /* struct_scale_factor_listener_interface_t_type_p */


#ifdef struct_screenshot_interface_t_type_p
	struct_screenshot_interface_t_type_p = VT_lookup_python_opaque_type("api.screenshot_interface_t");
#endif /* struct_screenshot_interface_t_type_p */


#ifdef struct_serial_console_frontend_interface_t_type_p
	struct_serial_console_frontend_interface_t_type_p = VT_lookup_python_opaque_type("api.serial_console_frontend_interface_t");
#endif /* struct_serial_console_frontend_interface_t_type_p */


#ifdef struct_serial_device_interface_t_type_p
	struct_serial_device_interface_t_type_p = VT_lookup_python_opaque_type("api.serial_device_interface_t");
#endif /* struct_serial_device_interface_t_type_p */


#ifdef struct_serial_peripheral_interface_master_interface_t_type_p
	struct_serial_peripheral_interface_master_interface_t_type_p = VT_lookup_python_opaque_type("api.serial_peripheral_interface_master_interface_t");
#endif /* struct_serial_peripheral_interface_master_interface_t_type_p */


#ifdef struct_serial_peripheral_interface_slave_interface_t_type_p
	struct_serial_peripheral_interface_slave_interface_t_type_p = VT_lookup_python_opaque_type("api.serial_peripheral_interface_slave_interface_t");
#endif /* struct_serial_peripheral_interface_slave_interface_t_type_p */


#ifdef struct_sh_interrupt_interface_t_type_p
	struct_sh_interrupt_interface_t_type_p = VT_lookup_python_opaque_type("api.sh_interrupt_interface_t");
#endif /* struct_sh_interrupt_interface_t_type_p */


#ifdef struct_signal_interface_t_type_p
	struct_signal_interface_t_type_p = VT_lookup_python_opaque_type("api.signal_interface_t");
#endif /* struct_signal_interface_t_type_p */


#ifdef struct_simple_dispatcher_interface_t_type_p
	struct_simple_dispatcher_interface_t_type_p = VT_lookup_python_opaque_type("api.simple_dispatcher_interface_t");
#endif /* struct_simple_dispatcher_interface_t_type_p */


#ifdef struct_simple_interrupt_interface_t_type_p
	struct_simple_interrupt_interface_t_type_p = VT_lookup_python_opaque_type("api.simple_interrupt_interface_t");
#endif /* struct_simple_interrupt_interface_t_type_p */


#ifdef struct_simulator_cache_interface_t_type_p
	struct_simulator_cache_interface_t_type_p = VT_lookup_python_opaque_type("api.simulator_cache_interface_t");
#endif /* struct_simulator_cache_interface_t_type_p */


#ifdef struct_slave_agent_interface_t_type_p
	struct_slave_agent_interface_t_type_p = VT_lookup_python_opaque_type("api.slave_agent_interface_t");
#endif /* struct_slave_agent_interface_t_type_p */


#ifdef struct_slaver_message_interface_t_type_p
	struct_slaver_message_interface_t_type_p = VT_lookup_python_opaque_type("api.slaver_message_interface_t");
#endif /* struct_slaver_message_interface_t_type_p */


#ifdef struct_smm_instrumentation_subscribe_interface_t_type_p
	struct_smm_instrumentation_subscribe_interface_t_type_p = VT_lookup_python_opaque_type("api.smm_instrumentation_subscribe_interface_t");
#endif /* struct_smm_instrumentation_subscribe_interface_t_type_p */


#ifdef struct_snoop_memory_interface_t_type_p
	struct_snoop_memory_interface_t_type_p = VT_lookup_python_opaque_type("api.snoop_memory_interface_t");
#endif /* struct_snoop_memory_interface_t_type_p */


#ifdef struct_sparc_v8_ecc_fault_injection_interface_t_type_p
	struct_sparc_v8_ecc_fault_injection_interface_t_type_p = VT_lookup_python_opaque_type("api.sparc_v8_ecc_fault_injection_interface_t");
#endif /* struct_sparc_v8_ecc_fault_injection_interface_t_type_p */


#ifdef struct_spr_interface_t_type_p
	struct_spr_interface_t_type_p = VT_lookup_python_opaque_type("api.spr_interface_t");
#endif /* struct_spr_interface_t_type_p */


#ifdef struct_stall_interface_t_type_p
	struct_stall_interface_t_type_p = VT_lookup_python_opaque_type("api.stall_interface_t");
#endif /* struct_stall_interface_t_type_p */


#ifdef struct_stc_interface_t_type_p
	struct_stc_interface_t_type_p = VT_lookup_python_opaque_type("api.stc_interface_t");
#endif /* struct_stc_interface_t_type_p */


#ifdef struct_page_t_type_p
	struct_page_t_type_p = VT_lookup_python_opaque_type("api.page_t");
#endif /* struct_page_t_type_p */


#ifdef struct_step_interface_t_type_p
	struct_step_interface_t_type_p = VT_lookup_python_opaque_type("api.step_interface_t");
#endif /* struct_step_interface_t_type_p */


#ifdef struct_step_cycle_ratio_interface_t_type_p
	struct_step_cycle_ratio_interface_t_type_p = VT_lookup_python_opaque_type("api.step_cycle_ratio_interface_t");
#endif /* struct_step_cycle_ratio_interface_t_type_p */


#ifdef struct_step_cycle_ratio_t_type_p
	struct_step_cycle_ratio_t_type_p = VT_lookup_python_opaque_type("api.step_cycle_ratio_t");
#endif /* struct_step_cycle_ratio_t_type_p */


#ifdef struct_step_event_instrumentation_interface_t_type_p
	struct_step_event_instrumentation_interface_t_type_p = VT_lookup_python_opaque_type("api.step_event_instrumentation_interface_t");
#endif /* struct_step_event_instrumentation_interface_t_type_p */


#ifdef struct_step_handle_t_type_p
	struct_step_handle_t_type_p = VT_lookup_python_opaque_type("api.step_handle_t");
#endif /* struct_step_handle_t_type_p */


#ifdef struct_step_info_interface_t_type_p
	struct_step_info_interface_t_type_p = VT_lookup_python_opaque_type("api.step_info_interface_t");
#endif /* struct_step_info_interface_t_type_p */


#ifdef struct_symbols_interface_t_type_p
	struct_symbols_interface_t_type_p = VT_lookup_python_opaque_type("api.symbols_interface_t");
#endif /* struct_symbols_interface_t_type_p */


#ifdef struct_symbol_t_type_p
	struct_symbol_t_type_p = VT_lookup_python_opaque_type("api.symbol_t");
#endif /* struct_symbol_t_type_p */


#ifdef struct_sync_initial_time_interface_t_type_p
	struct_sync_initial_time_interface_t_type_p = VT_lookup_python_opaque_type("api.sync_initial_time_interface_t");
#endif /* struct_sync_initial_time_interface_t_type_p */


#ifdef struct_synchronous_mode_interface_t_type_p
	struct_synchronous_mode_interface_t_type_p = VT_lookup_python_opaque_type("api.synchronous_mode_interface_t");
#endif /* struct_synchronous_mode_interface_t_type_p */


#ifdef struct_table_interface_t_type_p
	struct_table_interface_t_type_p = VT_lookup_python_opaque_type("api.table_interface_t");
#endif /* struct_table_interface_t_type_p */


#ifdef struct_tcf_channel_interface_t_type_p
	struct_tcf_channel_interface_t_type_p = VT_lookup_python_opaque_type("api.tcf_channel_interface_t");
#endif /* struct_tcf_channel_interface_t_type_p */


#ifdef struct_telemetry_interface_t_type_p
	struct_telemetry_interface_t_type_p = VT_lookup_python_opaque_type("api.telemetry_interface_t");
#endif /* struct_telemetry_interface_t_type_p */


#ifdef struct_telemetry_manager_interface_t_type_p
	struct_telemetry_manager_interface_t_type_p = VT_lookup_python_opaque_type("api.telemetry_manager_interface_t");
#endif /* struct_telemetry_manager_interface_t_type_p */


#ifdef struct_telnet_connection_interface_t_type_p
	struct_telnet_connection_interface_t_type_p = VT_lookup_python_opaque_type("api.telnet_connection_interface_t");
#endif /* struct_telnet_connection_interface_t_type_p */


#ifdef struct_telnet_connection_v2_interface_t_type_p
	struct_telnet_connection_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.telnet_connection_v2_interface_t");
#endif /* struct_telnet_connection_v2_interface_t_type_p */


#ifdef struct_temporal_state_interface_t_type_p
	struct_temporal_state_interface_t_type_p = VT_lookup_python_opaque_type("api.temporal_state_interface_t");
#endif /* struct_temporal_state_interface_t_type_p */


#ifdef struct_terminal_client_interface_t_type_p
	struct_terminal_client_interface_t_type_p = VT_lookup_python_opaque_type("api.terminal_client_interface_t");
#endif /* struct_terminal_client_interface_t_type_p */


#ifdef struct_terminal_server_interface_t_type_p
	struct_terminal_server_interface_t_type_p = VT_lookup_python_opaque_type("api.terminal_server_interface_t");
#endif /* struct_terminal_server_interface_t_type_p */


#ifdef struct_text_console_backend_interface_t_type_p
	struct_text_console_backend_interface_t_type_p = VT_lookup_python_opaque_type("api.text_console_backend_interface_t");
#endif /* struct_text_console_backend_interface_t_type_p */


#ifdef struct_text_console_frontend_interface_t_type_p
	struct_text_console_frontend_interface_t_type_p = VT_lookup_python_opaque_type("api.text_console_frontend_interface_t");
#endif /* struct_text_console_frontend_interface_t_type_p */


#ifdef struct_timing_model_interface_t_type_p
	struct_timing_model_interface_t_type_p = VT_lookup_python_opaque_type("api.timing_model_interface_t");
#endif /* struct_timing_model_interface_t_type_p */


#ifdef struct_transaction_interface_t_type_p
	struct_transaction_interface_t_type_p = VT_lookup_python_opaque_type("api.transaction_interface_t");
#endif /* struct_transaction_interface_t_type_p */


#ifdef struct_transaction_translator_interface_t_type_p
	struct_transaction_translator_interface_t_type_p = VT_lookup_python_opaque_type("api.transaction_translator_interface_t");
#endif /* struct_transaction_translator_interface_t_type_p */


#ifdef struct_translation_t_type_p
	struct_translation_t_type_p = VT_lookup_python_opaque_type("api.translation_t");
#endif /* struct_translation_t_type_p */


#ifdef struct_map_target_t_type_p
	struct_map_target_t_type_p = VT_lookup_python_opaque_type("api.map_target_t");
#endif /* struct_map_target_t_type_p */


#ifdef struct_translate_interface_t_type_p
	struct_translate_interface_t_type_p = VT_lookup_python_opaque_type("api.translate_interface_t");
#endif /* struct_translate_interface_t_type_p */


#ifdef struct_translation_flush_interface_t_type_p
	struct_translation_flush_interface_t_type_p = VT_lookup_python_opaque_type("api.translation_flush_interface_t");
#endif /* struct_translation_flush_interface_t_type_p */


#ifdef struct_translator_interface_t_type_p
	struct_translator_interface_t_type_p = VT_lookup_python_opaque_type("api.translator_interface_t");
#endif /* struct_translator_interface_t_type_p */


#ifdef struct_uint64_state_interface_t_type_p
	struct_uint64_state_interface_t_type_p = VT_lookup_python_opaque_type("api.uint64_state_interface_t");
#endif /* struct_uint64_state_interface_t_type_p */


#ifdef struct_usb_interface_t_type_p
	struct_usb_interface_t_type_p = VT_lookup_python_opaque_type("api.usb_interface_t");
#endif /* struct_usb_interface_t_type_p */


#ifdef struct_usb_transfer_t_type_p
	struct_usb_transfer_t_type_p = VT_lookup_python_opaque_type("api.usb_transfer_t");
#endif /* struct_usb_transfer_t_type_p */


#ifdef struct_usb_device_interface_t_type_p
	struct_usb_device_interface_t_type_p = VT_lookup_python_opaque_type("api.usb_device_interface_t");
#endif /* struct_usb_device_interface_t_type_p */


#ifdef struct_vectored_interrupt_interface_t_type_p
	struct_vectored_interrupt_interface_t_type_p = VT_lookup_python_opaque_type("api.vectored_interrupt_interface_t");
#endif /* struct_vectored_interrupt_interface_t_type_p */


#ifdef struct_vectored_interrupt_source_interface_t_type_p
	struct_vectored_interrupt_source_interface_t_type_p = VT_lookup_python_opaque_type("api.vectored_interrupt_source_interface_t");
#endif /* struct_vectored_interrupt_source_interface_t_type_p */


#ifdef struct_vga_text_interface_t_type_p
	struct_vga_text_interface_t_type_p = VT_lookup_python_opaque_type("api.vga_text_interface_t");
#endif /* struct_vga_text_interface_t_type_p */


#ifdef struct_vga_text_update_interface_t_type_p
	struct_vga_text_update_interface_t_type_p = VT_lookup_python_opaque_type("api.vga_text_update_interface_t");
#endif /* struct_vga_text_update_interface_t_type_p */


#ifdef struct_virtual_data_breakpoint_interface_t_type_p
	struct_virtual_data_breakpoint_interface_t_type_p = VT_lookup_python_opaque_type("api.virtual_data_breakpoint_interface_t");
#endif /* struct_virtual_data_breakpoint_interface_t_type_p */


#ifdef struct_virtual_instruction_breakpoint_interface_t_type_p
	struct_virtual_instruction_breakpoint_interface_t_type_p = VT_lookup_python_opaque_type("api.virtual_instruction_breakpoint_interface_t");
#endif /* struct_virtual_instruction_breakpoint_interface_t_type_p */


#ifdef struct_vmp_interface_t_type_p
	struct_vmp_interface_t_type_p = VT_lookup_python_opaque_type("api.vmp_interface_t");
#endif /* struct_vmp_interface_t_type_p */


#ifdef struct_vmx_instrumentation_subscribe_interface_t_type_p
	struct_vmx_instrumentation_subscribe_interface_t_type_p = VT_lookup_python_opaque_type("api.vmx_instrumentation_subscribe_interface_t");
#endif /* struct_vmx_instrumentation_subscribe_interface_t_type_p */


#ifdef struct_vnc_server_interface_t_type_p
	struct_vnc_server_interface_t_type_p = VT_lookup_python_opaque_type("api.vnc_server_interface_t");
#endif /* struct_vnc_server_interface_t_type_p */


#ifdef struct_vnc_server_v2_interface_t_type_p
	struct_vnc_server_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.vnc_server_v2_interface_t");
#endif /* struct_vnc_server_v2_interface_t_type_p */


#ifdef struct_winsome_console_interface_t_type_p
	struct_winsome_console_interface_t_type_p = VT_lookup_python_opaque_type("api.winsome_console_interface_t");
#endif /* struct_winsome_console_interface_t_type_p */


#ifdef struct_x86_interface_t_type_p
	struct_x86_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_interface_t");
#endif /* struct_x86_interface_t_type_p */


#ifdef struct_tagged_linear_address_t_type_p
	struct_tagged_linear_address_t_type_p = VT_lookup_python_opaque_type("api.tagged_linear_address_t");
#endif /* struct_tagged_linear_address_t_type_p */


#ifdef struct_x86_access_type_interface_t_type_p
	struct_x86_access_type_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_access_type_interface_t");
#endif /* struct_x86_access_type_interface_t_type_p */


#ifdef struct_x86_address_query_interface_t_type_p
	struct_x86_address_query_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_address_query_interface_t");
#endif /* struct_x86_address_query_interface_t_type_p */


#ifdef struct_x86_cache_flush_interface_t_type_p
	struct_x86_cache_flush_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_cache_flush_interface_t");
#endif /* struct_x86_cache_flush_interface_t_type_p */


#ifdef struct_x86_cpuid_interface_t_type_p
	struct_x86_cpuid_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_cpuid_interface_t");
#endif /* struct_x86_cpuid_interface_t_type_p */


#ifdef struct_cpuid_ret_t_type_p
	struct_cpuid_ret_t_type_p = VT_lookup_python_opaque_type("api.cpuid_ret_t");
#endif /* struct_cpuid_ret_t_type_p */


#ifdef struct_x86_cpuid_query_interface_t_type_p
	struct_x86_cpuid_query_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_cpuid_query_interface_t");
#endif /* struct_x86_cpuid_query_interface_t_type_p */


#ifdef struct_cpuid_value_t_type_p
	struct_cpuid_value_t_type_p = VT_lookup_python_opaque_type("api.cpuid_value_t");
#endif /* struct_cpuid_value_t_type_p */


#ifdef struct_x86_cstate_interface_t_type_p
	struct_x86_cstate_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_cstate_interface_t");
#endif /* struct_x86_cstate_interface_t_type_p */


#ifdef struct_x86_cstate_t_type_p
	struct_x86_cstate_t_type_p = VT_lookup_python_opaque_type("api.x86_cstate_t");
#endif /* struct_x86_cstate_t_type_p */


#ifdef struct_x86_cstate_notification_interface_t_type_p
	struct_x86_cstate_notification_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_cstate_notification_interface_t");
#endif /* struct_x86_cstate_notification_interface_t_type_p */


#ifdef struct_x86_ept_interface_t_type_p
	struct_x86_ept_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_ept_interface_t");
#endif /* struct_x86_ept_interface_t_type_p */


#ifdef struct_x86_exception_query_interface_t_type_p
	struct_x86_exception_query_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_exception_query_interface_t");
#endif /* struct_x86_exception_query_interface_t_type_p */


#ifdef struct_x86_instruction_query_interface_t_type_p
	struct_x86_instruction_query_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_instruction_query_interface_t");
#endif /* struct_x86_instruction_query_interface_t_type_p */


#ifdef struct_x86_instrumentation_subscribe_interface_t_type_p
	struct_x86_instrumentation_subscribe_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_instrumentation_subscribe_interface_t");
#endif /* struct_x86_instrumentation_subscribe_interface_t_type_p */


#ifdef struct_x86_instrumentation_subscribe_v2_interface_t_type_p
	struct_x86_instrumentation_subscribe_v2_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_instrumentation_subscribe_v2_interface_t");
#endif /* struct_x86_instrumentation_subscribe_v2_interface_t_type_p */


#ifdef struct_x86_memory_query_interface_t_type_p
	struct_x86_memory_query_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_memory_query_interface_t");
#endif /* struct_x86_memory_query_interface_t_type_p */


#ifdef struct_x86_msr_interface_t_type_p
	struct_x86_msr_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_msr_interface_t");
#endif /* struct_x86_msr_interface_t_type_p */


#ifdef struct_x86_msr_getter_ret_t_type_p
	struct_x86_msr_getter_ret_t_type_p = VT_lookup_python_opaque_type("api.x86_msr_getter_ret_t");
#endif /* struct_x86_msr_getter_ret_t_type_p */


#ifdef struct_x86_reg_access_interface_t_type_p
	struct_x86_reg_access_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_reg_access_interface_t");
#endif /* struct_x86_reg_access_interface_t_type_p */


#ifdef struct_x86_fpu_env_t_type_p
	struct_x86_fpu_env_t_type_p = VT_lookup_python_opaque_type("api.x86_fpu_env_t");
#endif /* struct_x86_fpu_env_t_type_p */


#ifdef struct_x86_fpu_reg_t_type_p
	struct_x86_fpu_reg_t_type_p = VT_lookup_python_opaque_type("api.x86_fpu_reg_t");
#endif /* struct_x86_fpu_reg_t_type_p */


#ifdef struct_x86_monitor_info_t_type_p
	struct_x86_monitor_info_t_type_p = VT_lookup_python_opaque_type("api.x86_monitor_info_t");
#endif /* struct_x86_monitor_info_t_type_p */


#ifdef struct_x86_mwait_info_t_type_p
	struct_x86_mwait_info_t_type_p = VT_lookup_python_opaque_type("api.x86_mwait_info_t");
#endif /* struct_x86_mwait_info_t_type_p */


#ifdef struct_x86_pending_debug_exc_t_type_p
	struct_x86_pending_debug_exc_t_type_p = VT_lookup_python_opaque_type("api.x86_pending_debug_exc_t");
#endif /* struct_x86_pending_debug_exc_t_type_p */


#ifdef struct_x86_seg_reg_t_type_p
	struct_x86_seg_reg_t_type_p = VT_lookup_python_opaque_type("api.x86_seg_reg_t");
#endif /* struct_x86_seg_reg_t_type_p */


#ifdef struct_x86_system_seg_reg_t_type_p
	struct_x86_system_seg_reg_t_type_p = VT_lookup_python_opaque_type("api.x86_system_seg_reg_t");
#endif /* struct_x86_system_seg_reg_t_type_p */


#ifdef struct_xmm_reg_t_type_p
	struct_xmm_reg_t_type_p = VT_lookup_python_opaque_type("api.xmm_reg_t");
#endif /* struct_xmm_reg_t_type_p */


#ifdef struct_x86_xmode_info_t_type_p
	struct_x86_xmode_info_t_type_p = VT_lookup_python_opaque_type("api.x86_xmode_info_t");
#endif /* struct_x86_xmode_info_t_type_p */


#ifdef struct_ymm_reg_t_type_p
	struct_ymm_reg_t_type_p = VT_lookup_python_opaque_type("api.ymm_reg_t");
#endif /* struct_ymm_reg_t_type_p */


#ifdef struct_x86_tlb_interface_t_type_p
	struct_x86_tlb_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_tlb_interface_t");
#endif /* struct_x86_tlb_interface_t_type_p */


#ifdef struct_tagged_physical_address_t_type_p
	struct_tagged_physical_address_t_type_p = VT_lookup_python_opaque_type("api.tagged_physical_address_t");
#endif /* struct_tagged_physical_address_t_type_p */


#ifdef struct_x86_memory_transaction_t_type_p
	struct_x86_memory_transaction_t_type_p = VT_lookup_python_opaque_type("api.x86_memory_transaction_t");
#endif /* struct_x86_memory_transaction_t_type_p */


#ifdef struct_x86_tlb_v3_interface_t_type_p
	struct_x86_tlb_v3_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_tlb_v3_interface_t");
#endif /* struct_x86_tlb_v3_interface_t_type_p */


#ifdef struct_x86_tlb_attrs_v3_t_type_p
	struct_x86_tlb_attrs_v3_t_type_p = VT_lookup_python_opaque_type("api.x86_tlb_attrs_v3_t");
#endif /* struct_x86_tlb_attrs_v3_t_type_p */


#ifdef struct_x86_tlb_entry_v3_t_type_p
	struct_x86_tlb_entry_v3_t_type_p = VT_lookup_python_opaque_type("api.x86_tlb_entry_v3_t");
#endif /* struct_x86_tlb_entry_v3_t_type_p */


#ifdef struct_x86_vmp_control_interface_t_type_p
	struct_x86_vmp_control_interface_t_type_p = VT_lookup_python_opaque_type("api.x86_vmp_control_interface_t");
#endif /* struct_x86_vmp_control_interface_t_type_p */


#ifdef struct_xed_access_interface_t_type_p
	struct_xed_access_interface_t_type_p = VT_lookup_python_opaque_type("api.xed_access_interface_t");
#endif /* struct_xed_access_interface_t_type_p */


#ifdef struct_xtensa_export_state_interface_t_type_p
	struct_xtensa_export_state_interface_t_type_p = VT_lookup_python_opaque_type("api.xtensa_export_state_interface_t");
#endif /* struct_xtensa_export_state_interface_t_type_p */


#ifdef struct_xtensa_import_wire_interface_t_type_p
	struct_xtensa_import_wire_interface_t_type_p = VT_lookup_python_opaque_type("api.xtensa_import_wire_interface_t");
#endif /* struct_xtensa_import_wire_interface_t_type_p */


#ifdef struct_xtensa_input_queue_interface_t_type_p
	struct_xtensa_input_queue_interface_t_type_p = VT_lookup_python_opaque_type("api.xtensa_input_queue_interface_t");
#endif /* struct_xtensa_input_queue_interface_t_type_p */


#ifdef struct_xtensa_lookup_interface_t_type_p
	struct_xtensa_lookup_interface_t_type_p = VT_lookup_python_opaque_type("api.xtensa_lookup_interface_t");
#endif /* struct_xtensa_lookup_interface_t_type_p */


#ifdef struct_xtensa_output_queue_interface_t_type_p
	struct_xtensa_output_queue_interface_t_type_p = VT_lookup_python_opaque_type("api.xtensa_output_queue_interface_t");
#endif /* struct_xtensa_output_queue_interface_t_type_p */


#ifdef struct_conf_class_t_type_p
	struct_conf_class_t_type_p = VT_lookup_python_opaque_type("api.conf_class_t");
#endif /* struct_conf_class_t_type_p */


#ifdef struct_completion_t_type_p
	struct_completion_t_type_p = VT_lookup_python_opaque_type("api.completion_t");
#endif /* struct_completion_t_type_p */


#ifdef struct_class_data_t_type_p
	struct_class_data_t_type_p = VT_lookup_python_opaque_type("api.class_data_t");
#endif /* struct_class_data_t_type_p */


#ifdef struct_class_info_t_type_p
	struct_class_info_t_type_p = VT_lookup_python_opaque_type("api.class_info_t");
#endif /* struct_class_info_t_type_p */


#ifdef struct_global_notifier_callback_t_type_p
	struct_global_notifier_callback_t_type_p = VT_lookup_python_opaque_type("api.global_notifier_callback_t");
#endif /* struct_global_notifier_callback_t_type_p */


#ifdef struct_atom_t_type_p
	struct_atom_t_type_p = VT_lookup_python_opaque_type("api.atom_t");
#endif /* struct_atom_t_type_p */


#ifdef struct_notifier_handle_t_type_p
	struct_notifier_handle_t_type_p = VT_lookup_python_opaque_type("api.notifier_handle_t");
#endif /* struct_notifier_handle_t_type_p */


#ifdef struct_domain_lock_t_type_p
	struct_domain_lock_t_type_p = VT_lookup_python_opaque_type("api.domain_lock_t");
#endif /* struct_domain_lock_t_type_p */


#ifdef struct_wait_handler_t_type_p
	struct_wait_handler_t_type_p = VT_lookup_python_opaque_type("api.wait_handler_t");
#endif /* struct_wait_handler_t_type_p */


#ifdef struct_execute_environ_t_type_p
	struct_execute_environ_t_type_p = VT_lookup_python_opaque_type("api.execute_environ_t");
#endif /* struct_execute_environ_t_type_p */


#ifdef struct_profile_area_t_type_p
	struct_profile_area_t_type_p = VT_lookup_python_opaque_type("api.profile_area_t");
#endif /* struct_profile_area_t_type_p */


#ifdef struct_probe_result_t_type_p
	struct_probe_result_t_type_p = VT_lookup_python_opaque_type("api.probe_result_t");
#endif /* struct_probe_result_t_type_p */


#ifdef struct_host_hypervisor_info_t_type_p
	struct_host_hypervisor_info_t_type_p = VT_lookup_python_opaque_type("api.host_hypervisor_info_t");
#endif /* struct_host_hypervisor_info_t_type_p */


#ifdef struct_thread_domain_holder_t_type_p
	struct_thread_domain_holder_t_type_p = VT_lookup_python_opaque_type("api.thread_domain_holder_t");
#endif /* struct_thread_domain_holder_t_type_p */


#ifdef struct_thread_domain_t_type_p
	struct_thread_domain_t_type_p = VT_lookup_python_opaque_type("api.thread_domain_t");
#endif /* struct_thread_domain_t_type_p */


#ifdef struct_thread_domain_group_t_type_p
	struct_thread_domain_group_t_type_p = VT_lookup_python_opaque_type("api.thread_domain_group_t");
#endif /* struct_thread_domain_group_t_type_p */


#ifdef struct_pci_memory_transaction_t_type_p
	struct_pci_memory_transaction_t_type_p = VT_lookup_python_opaque_type("api.pci_memory_transaction_t");
#endif /* struct_pci_memory_transaction_t_type_p */


#ifdef struct_pcie_error_ret_t_type_p
	struct_pcie_error_ret_t_type_p = VT_lookup_python_opaque_type("api.pcie_error_ret_t");
#endif /* struct_pcie_error_ret_t_type_p */


#ifdef struct_pcie_byte_count_ret_t_type_p
	struct_pcie_byte_count_ret_t_type_p = VT_lookup_python_opaque_type("api.pcie_byte_count_ret_t");
#endif /* struct_pcie_byte_count_ret_t_type_p */


#ifdef struct_pcie_link_negotiation_t_type_p
	struct_pcie_link_negotiation_t_type_p = VT_lookup_python_opaque_type("api.pcie_link_negotiation_t");
#endif /* struct_pcie_link_negotiation_t_type_p */


#ifdef struct_arm_memory_transaction_t_type_p
	struct_arm_memory_transaction_t_type_p = VT_lookup_python_opaque_type("api.arm_memory_transaction_t");
#endif /* struct_arm_memory_transaction_t_type_p */


#ifdef struct_mips_memory_transaction_t_type_p
	struct_mips_memory_transaction_t_type_p = VT_lookup_python_opaque_type("api.mips_memory_transaction_t");
#endif /* struct_mips_memory_transaction_t_type_p */


#ifdef struct_ppc_memory_transaction_t_type_p
	struct_ppc_memory_transaction_t_type_p = VT_lookup_python_opaque_type("api.ppc_memory_transaction_t");
#endif /* struct_ppc_memory_transaction_t_type_p */


#ifdef struct_ppc_decoration_t_type_p
	struct_ppc_decoration_t_type_p = VT_lookup_python_opaque_type("api.ppc_decoration_t");
#endif /* struct_ppc_decoration_t_type_p */

	const struct {
		const char *name;
		const char *cpp_value;
		const char *cpp_name;
		opaque_type_t *type;
	} interfaces[] = {
		{ "my_iface", MY_IFACE_INTERFACE, "MY_IFACE",
		  &struct_my_iface_interface_t_type },
	};
	for (unsigned i = 0; i < sizeof interfaces / sizeof interfaces[0]; ++i) {
		if (strcmp(interfaces[i].name, interfaces[i].cpp_value) != 0) {
			pr_err("%s_INTERFACE must have the value \"%s\" but does not",
			       interfaces[i].cpp_name, interfaces[i].name);
		}
		register_interface(dict, interfaces[i].name, interfaces[i].type);
	}
	(void)register_atom;

/*
  © 2010 Intel Corporation

  This software and the related documents are Intel copyrighted materials, and
  your use of them is governed by the express license under which they were
  provided to you ("License"). Unless the License provides otherwise, you may
  not use, modify, copy, publish, distribute, disclose or transmit this software
  or the related documents without Intel's prior written permission.

  This software and the related documents are provided as is, with no express or
  implied warranties, other than those that are expressly stated in the License.
*/

        for (int i = 0; enums[i].name; i++) {
                PyObject *val = PyLong_FromLong(enums[i].value[0]);
                PyDict_SetItemString(dict, enums[i].name, val);
                Py_DECREF(val);
        }

        /* Make sure the module appears in the top namespace as well, for
           compatibility (see bug 21609) */
        if (strchr(module_qualified_name, '.') != NULL) {
                PyObject *simics_module = PyImport_ImportModule(
                        "simics_common");
                FATAL_ERROR_IF(simics_module == NULL,
                               "Cannot import module simics_common");
                PyObject *fun = PyObject_GetAttrString(simics_module,
                                                       "add_module_alias");
                Py_DECREF(simics_module);
                FATAL_ERROR_IF(fun == NULL,
                        "Cannot find symbol simics_common.add_module_alias");
                PyObject *ret = PyObject_CallFunction(
                        fun, "Os", module, module_name);
                Py_DECREF(fun);
                if (ret == NULL) {
                        PyErr_Print();
                        ABORT_MSG("Unexpected exception in"
                                  " add_module_alias()");
                } else {
                        Py_DECREF(ret);
                }

                int size = strrchr(module_qualified_name, '.')
                        - module_qualified_name;
                char pkg_name[size + 1];
                memcpy(pkg_name, module_qualified_name, size);
                pkg_name[size] = 0;
                PyObject *pkg = PyImport_ImportModule(pkg_name);
                if (pkg == NULL) {
                        PyErr_Print();
                        ABORT_FMT("Error importing package %s", pkg_name);
                }
                PyObject_SetAttrString(pkg, module_name, module);
                Py_DECREF(pkg);
        }

        RELEASE_PYTHON_LOCK();

        return module;
}
