# 1 "pyifaces-my_iface-interface.c"
# 1 "/home/david/Documents/Empotrados/Proyecto2-Embebidos/linux64/obj/modules/my_iface-interface//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "pyifaces-my_iface-interface.c"
# 1 "/home/david/SIMICS/simics-6.0.185/linux64/bin/pywrap/py-typemaps.c" 1
# 13 "/home/david/SIMICS/simics-6.0.185/linux64/bin/pywrap/py-typemaps.c"
struct __anonymous0;
typedef struct __anonymous0 ppc_decoration_t;
struct ppc_memory_transaction;
struct mips_memory_transaction;
struct arm_memory_transaction;
struct __anonymous1;
struct __anonymous2;
struct __anonymous3;
struct pci_memory_transaction;
struct thread_domain_group;
struct thread_domain;
struct thread_domain_holder;
struct __anonymous4;
typedef struct __anonymous4 host_hypervisor_info_t;
struct __anonymous5;
typedef struct __anonymous5 probe_result_t;
struct _object;
typedef struct _object PyObject;
typedef PyObject lang_void;
typedef unsigned long int size_t;
struct profile_area;
struct execute_environ;
struct wait_handler;
struct conf_object;
typedef struct conf_object conf_object_t;
struct domain_lock;
enum __anonymous6;
typedef enum __anonymous6 notifier_type_t;
struct notifier_handle;
enum __anonymous7;
typedef enum __anonymous7 exception_type_t;
struct transaction;
typedef struct transaction transaction_t;
struct __anonymous8;
struct __anonymous9;
typedef struct __anonymous9 breakpoint_set_t;
typedef unsigned long long uint64;
struct map_target;
typedef struct map_target map_target_t;
enum __anonymous10;
typedef enum __anonymous10 access_t;
enum __anonymous11;
typedef enum __anonymous11 translation_flags_t;
struct global_notifier_callback;
struct attr_value;
typedef struct attr_value attr_value_t;
struct __anonymous12;
enum __anonymous13;
typedef enum __anonymous13 set_error_t;
struct conf_class;
typedef struct conf_class conf_class_t;
struct class_info;
struct class_data;
struct completion;
struct xtensa_output_queue_interface;
struct xtensa_lookup_interface;
struct xtensa_input_queue_interface;
struct xtensa_import_wire_interface;
struct xtensa_export_state_interface;
struct xed_access_interface;
struct x86_vmp_control_interface;
struct __anonymous14;
struct __anonymous15;
typedef struct __anonymous15 x86_tlb_attrs_v3_t;
struct x86_tlb_v3_interface;
struct x86_memory_transaction;
struct __anonymous16;
typedef struct __anonymous16 tagged_physical_address_t;
struct x86_tlb_interface;
struct __anonymous17;
typedef struct __anonymous17 ymm_reg_t;
struct __anonymous18;
typedef struct __anonymous18 x86_xmode_info_t;
struct __anonymous19;
typedef struct __anonymous19 xmm_reg_t;
struct __anonymous20;
typedef struct __anonymous20 x86_system_seg_reg_t;
struct __anonymous21;
typedef struct __anonymous21 x86_seg_reg_t;
struct __anonymous22;
typedef struct __anonymous22 x86_pending_debug_exc_t;
struct __anonymous23;
typedef struct __anonymous23 x86_mwait_info_t;
struct __anonymous24;
typedef struct __anonymous24 x86_monitor_info_t;
struct __anonymous25;
typedef struct __anonymous25 x86_fpu_reg_t;
struct __anonymous26;
typedef struct __anonymous26 x86_fpu_env_t;
struct x86_reg_access_interface;
enum __anonymous27;
typedef enum __anonymous27 x86_msr_ret_t;
typedef long long int64;
enum __anonymous28;
typedef enum __anonymous28 x86_msr_access_type_t;
struct __anonymous29;
typedef struct __anonymous29 x86_msr_getter_ret_t;
struct x86_msr_interface;
struct x86_memory_query_interface;
struct x86_instrumentation_subscribe_v2_interface;
enum __anonymous30;
typedef enum __anonymous30 x86_detailed_exec_mode_t;
struct x86_instrumentation_subscribe_interface;
struct x86_instruction_query_interface;
struct x86_exception_query_interface;
struct x86_ept_interface;
struct x86_cstate_notification_interface;
struct __anonymous31;
typedef struct __anonymous31 x86_cstate_t;
struct x86_cstate_interface;
struct __anonymous32;
typedef struct __anonymous32 cpuid_value_t;
struct x86_cpuid_query_interface;
struct __anonymous33;
typedef struct __anonymous33 cpuid_ret_t;
struct x86_cpuid_interface;
struct x86_cache_flush_interface;
struct x86_address_query_interface;
struct x86_access_type_interface;
struct __anonymous34;
typedef struct __anonymous34 tagged_linear_address_t;
struct x86_interface;
struct winsome_console_interface;
struct vnc_server_v2_interface;
struct vnc_server_interface;
enum __anonymous35;
typedef enum __anonymous35 vmx_mode_t;
typedef uint64 physical_address_t;
struct vmx_instrumentation_subscribe_interface;
struct vmp_interface;
struct cbdata;
typedef struct cbdata cbdata_t;
typedef cbdata_t cbdata_call_t;
struct __anonymous36;
typedef struct __anonymous36 bytes_t;
struct virtual_instruction_breakpoint_interface;
typedef uint64 generic_address_t;
struct virtual_data_breakpoint_interface;
struct vga_text_update_interface;
struct vga_text_interface;
struct vectored_interrupt_source_interface;
struct vectored_interrupt_interface;
struct usb_device_interface;
struct __anonymous37;
struct usb_interface;
struct uint64_state_interface;
struct translator_interface;
struct translation_flush_interface;
struct translate_interface;
struct __anonymous38;
typedef struct __anonymous38 translation_t;
struct transaction_translator_interface;
struct transaction_interface;
struct timing_model_interface;
struct text_console_frontend_interface;
struct text_console_backend_interface;
struct terminal_server_interface;
struct terminal_client_interface;
struct temporal_state_interface;
struct telnet_connection_v2_interface;
struct telnet_connection_interface;
struct telemetry_manager_interface;
struct telemetry_interface;
struct tcf_channel_interface;
struct table_interface;
struct synchronous_mode_interface;
struct sync_initial_time_interface;
struct __anonymous39;
struct __anonymous40;
typedef struct __anonymous40 symbol_t;
struct symbols_interface;
struct step_info_interface;
struct step_instrumentation;
typedef int64 simtime_t;
typedef simtime_t pc_step_t;
struct step_event_instrumentation_interface;
struct __anonymous41;
typedef struct __anonymous41 step_cycle_ratio_t;
struct step_cycle_ratio_interface;
struct step_interface;
struct page;
struct stc_interface;
struct stall_interface;
enum __anonymous42;
typedef enum __anonymous42 gen_spr_ret_t;
enum __anonymous43;
typedef enum __anonymous43 gen_spr_access_type_t;
struct spr_interface;
struct sparc_v8_ecc_fault_injection_interface;
struct snoop_memory_interface;
struct smm_instrumentation_subscribe_interface;
struct slaver_message_interface;
struct slave_agent_interface;
struct simulator_cache_interface;
struct simple_interrupt_interface;
struct simple_dispatcher_interface;
struct signal_interface;
struct sh_interrupt_interface;
struct serial_peripheral_interface_slave_interface;
struct serial_peripheral_interface_master_interface;
struct serial_device_interface;
struct serial_console_frontend_interface;
struct screenshot_interface;
struct scale_factor_listener_interface;
struct scalar_time_interface;
struct sata_interface;
struct rs232_device_interface;
struct rs232_console_interface;
struct riscv_signal_sgeip_interface;
struct riscv_imsic_interface;
struct riscv_coprocessor_interface;
struct riscv_clic_interrupt_interface;
struct riscv_clic_interface;
struct register_view_read_only_interface;
struct register_view_interface;
struct register_breakpoint_interface;
struct recorder_v2_interface;
struct dbuffer;
typedef struct dbuffer dbuffer_t;
typedef unsigned int uint32;
struct recorder_interface;
struct recorded_interface;
struct rapidio_v5_interface;
struct rapidio_v4_interface;
struct rapidio_v3_interface;
struct ram_callback_entry;
struct ram_access_subscribe_interface;
struct ram_interface;
struct pulse_interface;
struct processor_info_v2_interface;
struct processor_info_interface;
struct processor_gui_interface;
struct processor_endian_interface;
struct __anonymous44;
typedef struct __anonymous44 physical_block_t;
struct processor_cli_interface;
struct probe_subscribe_interface;
struct probe_sampler_cache_interface;
struct probe_index_interface;
struct probe_array_interface;
struct probe_interface;
struct preference_interface;
struct ppc_interface;
struct port_space_interface;
struct __anonymous45;
typedef struct __anonymous45 ip_port_t;
struct alg_connection;
struct port_forward_interface;
struct pmr_interface;
struct pcie_port_control_interface;
struct pcie_map_interface;
struct pcie_hotplug_events_interface;
struct pcie_device_interface;
struct pcie_adapter_compat_interface;
struct pci_upstream_operation_interface;
struct pci_upstream_interface;
struct pci_multi_function_device_interface;
struct pci_interrupt_interface;
struct pci_express_hotplug_interface;
struct pci_express_interface;
struct pci_downstream_interface;
struct pci_device_interface;
struct pci_bus_interface;
struct pci_bridge_interface;
struct page_bank_client_interface;
struct pb_page;
typedef struct pb_page pb_page_t;
struct __anonymous46;
typedef struct __anonymous46 page_bank_grant_t;
struct page_bank_interface;
struct packet_interface;
struct osa_tracker_state_query_interface;
struct osa_tracker_state_notification_interface;
struct osa_tracker_state_admin_interface;
struct osa_tracker_control_interface;
struct osa_tracker_component_interface;
struct osa_parameters_interface;
struct osa_node_tree_query_interface;
typedef uint64 node_id_t;
struct osa_node_tree_notification_interface;
struct osa_node_tree_admin_interface;
struct osa_node_path_interface;
struct osa_micro_checkpoint_interface;
struct osa_mapper_query_interface;
struct osa_mapper_control_interface;
struct osa_mapper_admin_interface;
struct osa_machine_query_interface;
enum __anonymous47;
typedef enum __anonymous47 processor_mode_t;
struct osa_machine_notification_interface;
struct osa_control_v2_interface;
struct osa_control_interface;
struct maybe_node_id;
typedef struct maybe_node_id maybe_node_id_t;
struct osa_component_interface;
struct __anonymous48;
typedef struct __anonymous48 opcode_length_info_t;
struct opcode_info_interface;
struct nios_eic_interface;
struct nios_interface;
struct nand_flash_interface;
struct multi_level_signal_interface;
struct ms1553_terminal_interface;
struct ms1553_link_interface;
struct mouse_interface;
struct mmc_interface;
struct mips_mt_ase_policy_interface;
struct mips_mt_ase_interface;
struct mips_ite_interface;
struct mips_eic_interface;
struct mips_coprocessor_interface;
struct mips_cache_instruction_interface;
struct mips_interface;
struct mii_management_interface;
struct mii_interface;
struct microwire_interface;
struct map_list;
struct memory_space_interface;
struct memory_profiler_interface;
struct mdio45_phy_interface;
struct mdio45_bus_interface;
struct map_demap_interface;
struct log_object_interface;
struct link_endpoint_v2_interface;
struct link_endpoint_interface;
struct linear_image_interface;
struct leader_message_interface;
struct keyboard_console_interface;
struct keyboard_interface;
struct jit_control_interface;
struct io_memory_interface;
struct interrupt_subscriber_interface;
struct interrupt_cpu_interface;
struct interrupt_ack_interface;
struct int_register_interface;
struct instrumentation_tool_interface;
struct instrumentation_order_interface;
struct instrumentation_filter_status_interface;
struct instrumentation_filter_slave_interface;
struct instrumentation_filter_master_interface;
struct instrumentation_connection_interface;
struct instruction_fetch_interface;
struct image_interface;
struct ieee_802_3_phy_v3_interface;
struct ieee_802_3_phy_v2_interface;
struct ieee_802_3_phy_interface;
struct ieee_802_3_mac_v3_interface;
struct ieee_802_3_mac_interface;
struct i8051_timer_interface;
struct i8051_interrupt_interface;
struct i3c_slave_interface;
struct i3c_master_interface;
struct i3c_daa_snoop_interface;
struct i2c_slave_v2_interface;
struct i2c_slave_interface;
struct i2c_master_v2_interface;
struct i2c_master_interface;
struct i2c_link_interface;
struct i2c_device_interface;
struct i2c_bus_interface;
struct i2c_bridge_interface;
struct host_serial_interface;
struct gui_console_backend_interface;
struct global_time_interface;
struct gfx_console_frontend_interface;
struct gfx_console_backend_interface;
struct gfx_console_interface;
struct gfx_con_interface;
struct gfx_break_interface;
struct frontend_server_interface;
struct frequency_listener_interface;
struct frequency_interface;
struct freerun_interface;
typedef unsigned char uint8;
struct forward_rewrite_endpoint;
typedef struct forward_rewrite_endpoint forward_rewrite_endpoint_t;
struct forward_destination_rewriter_interface;
struct follower_agent_interface;
struct fmn_station_control_v2_interface;
struct fmn_station_control_interface;
struct firewire_device_interface;
struct firewire_bus_interface;
struct external_connection_events_interface;
struct external_connection_ctl_interface;
struct extended_serial_interface;
struct execute_control_interface;
struct execute_interface;
typedef uint64 linear_address_t;
typedef uint64 logical_address_t;
struct __anonymous49;
typedef struct __anonymous49 byte_string_t;
struct exec_trace_interface;
struct exception_interface;
struct event_handler_interface;
struct event_delta_interface;
struct ethernet_vlan_snoop_interface;
struct frags;
typedef struct frags frags_t;
enum __anonymous50;
typedef enum __anonymous50 eth_frame_crc_status_t;
struct ethernet_snoop_interface;
enum __anonymous51;
typedef enum __anonymous51 eth_probe_side_t;
struct ethernet_probe_interface;
struct ethernet_common_interface;
struct ethernet_cable_interface;
struct dist_control_interface;
struct disk_component_interface;
struct direct_memory_update_interface;
struct __anonymous52;
typedef struct __anonymous52 direct_memory_tags_t;
struct direct_memory_tags_interface;
struct direct_memory_lookup_v2_interface;
struct __anonymous53;
typedef struct __anonymous53 direct_memory_lookup_t;
struct direct_memory_lookup_interface;
struct direct_memory_flush_interface;
struct __anonymous54;
typedef struct __anonymous54 direct_memory_t;
struct granted_mem;
struct direct_memory_interface;
struct device_identification_interface;
struct debug_symbol_file_interface;
struct debug_symbol_interface;
struct debug_step_interface;
struct debug_setup_interface;
struct debug_query_interface;
struct debug_notification_interface;
struct datagram_link_interface;
struct data_profiler_interface;
struct clock_instrumentation;
typedef simtime_t cycles_t;
struct cycle_event_instrumentation_interface;
struct cycle_event_interface;
struct cycle_control_interface;
struct __anonymous55;
typedef struct __anonymous55 duration_t;
struct __anonymous56;
typedef struct __anonymous56 local_time_t;
struct event_class;
struct cycle_interface;
struct cpu_memory_query_interface;
struct __anonymous57;
typedef struct __anonymous57 tuple_int_string_t;
struct cpu_bytes;
typedef struct cpu_bytes cpu_bytes_t;
struct cpu_replace_info;
typedef struct cpu_replace_info decoder_handle_t;
struct cpu_instrumentation_info;
typedef struct cpu_instrumentation_info instruction_handle_t;
struct cpu_exception_return_info;
typedef struct cpu_exception_return_info exception_return_handle_t;
struct cpu_exception_info;
typedef struct cpu_exception_info exception_handle_t;
struct cached_instruction_data;
typedef struct cached_instruction_data cached_instruction_handle_t;
struct cpu_address_info;
typedef struct cpu_address_info address_handle_t;
struct instrumentation_entry;
struct cpu_instrumentation_subscribe_interface;
struct cpu_instruction_query_interface;
enum __anonymous58;
typedef enum __anonymous58 cpu_emulation_t;
struct cpu_instruction_decoder_interface;
struct cpu_exception_query_interface;
struct cpu_cached_instruction_once_interface;
struct cpu_memory_info;
typedef struct cpu_memory_info memory_handle_t;
struct cpu_cached_instruction_interface;
struct __anonymous59;
typedef struct __anonymous59 coreint_reply_t;
struct coreint_interface;
struct context_handler_interface;
struct connector_interface;
struct concurrency_mode_interface;
struct concurrency_group_interface;
struct con_input_code_interface;
struct con_input_interface;
struct component_connector_interface;
struct component_interface;
struct co_execute_interface;
struct cmd_line_selection_interface;
struct cmd_line_frontend_interface;
struct checkpoint_interface;
struct cell_inspection_interface;
struct cdrom_media_interface;
struct callback_info_interface;
struct cache_control_interface;
struct map_info;
typedef struct map_info map_info_t;
struct bridge_interface;
struct breakpoint_type_provider_interface;
struct breakpoint_type_interface;
struct breakpoint_registration_interface;
struct breakpoint_query_v2_interface;
struct breakpoint_query_interface;
struct breakpoint_manager_interface;
struct breakpoint_change_interface;
struct __anonymous60;
typedef struct __anonymous60 breakpoint_info_t;
struct breakpoint_interface;
struct break_strings_v2_interface;
struct break_strings_interface;
struct branch_recorder_handler_interface;
struct __anonymous61;
struct branch_arc_iter;
struct branch_arc_interface;
struct bp_manager_interface;
struct bank_before_write_interface;
typedef struct bank_before_write_interface bank_before_write_interface_t;
struct bank_access;
typedef struct bank_access bank_access_t;
struct bank_before_read_interface;
typedef struct bank_before_read_interface bank_before_read_interface_t;
struct bank_after_write_interface;
typedef struct bank_after_write_interface bank_after_write_interface_t;
struct bank_after_read_interface;
typedef struct bank_after_read_interface bank_after_read_interface_t;
struct bank_instrumentation_subscribe_interface;
struct monitored_attribute;
struct attribute_monitor_interface;
struct generic_transaction;
struct arm_trustzone_interface;
struct arm_gic_cpu_state_interface;
struct gic_reg_info;
typedef struct gic_reg_info gic_reg_info_t;
struct arm_cpu_state;
typedef struct arm_cpu_state arm_cpu_state_t;
struct arm_gic_interface;
struct arm_external_debug_interface;
struct arm_coprocessor_interface;
struct arm_avic;
typedef struct arm_avic arm_avic_t;
struct arm_avic_interface;
struct arm_interface;
struct arinc429_receiver_interface;
struct arinc429_bus_interface;
struct apic_cpu_interface;
struct apic_bus_interface;
struct addr_prof_iter;
struct address_profiler_interface;
struct abs_pointer_activate_interface;
struct __anonymous62;
typedef struct __anonymous62 abs_pointer_state_t;
struct abs_pointer_interface;
struct a20_interface;
struct recorder;
typedef struct recorder recorder_t;
struct virtual_data_bp_handle;
typedef struct virtual_data_bp_handle virtual_data_bp_handle_t;
struct virtual_instr_bp_handle;
typedef struct virtual_instr_bp_handle virtual_instr_bp_handle_t;
struct __anonymous63;
typedef struct __anonymous63 buffer_t;
struct __anonymous64;
typedef struct __anonymous64 ms1553_words_t;
typedef void (*obj_hap_func_t)();
enum sim_exception;
typedef enum sim_exception sim_exception_t;
typedef cbdata_t cbdata_register_t;
struct __anonymous65;
typedef struct __anonymous65 gbp_header_t;
struct __anonymous66;
typedef struct __anonymous66 gfx_console_screen_text_t;
struct __anonymous67;
typedef struct __anonymous67 source_lines_t;
struct __anonymous68;
typedef struct __anonymous68 follower_time_t;
struct __anonymous69;
typedef struct __anonymous69 slave_time_t;
struct __anonymous70;
typedef struct __anonymous70 bigtime_t;
struct __anonymous71;
typedef struct __anonymous71 global_time_t;
struct __anonymous72;
typedef struct __anonymous72 int128;
typedef struct cycle_interface cycle_interface_t;
typedef void interface_t;
typedef void class_interface_t;
typedef struct branch_arc_iter branch_arc_iter_t;
typedef struct addr_prof_iter addr_prof_iter_t;
struct pre_conf_object_set_t;
typedef struct pre_conf_object_set_t pre_conf_object_set_t;
struct __anonymous73;
typedef struct __anonymous73 uint32_array_t;
typedef int socket_t;
typedef signed char int8;
typedef short int16;
typedef unsigned short uint16;
typedef int int32;
enum __anonymous74;
typedef enum __anonymous74 attr_attr_t;
enum __anonymous75;
typedef enum __anonymous75 class_kind_t;
typedef struct class_data class_data_t;
typedef struct class_info class_info_t;
typedef attr_value_t (*get_attr_t)(lang_void *, conf_object_t *, attr_value_t *);
typedef attr_value_t (*get_class_attr_t)(lang_void *, conf_class_t *, attr_value_t *);
typedef set_error_t (*set_attr_t)(lang_void *, conf_object_t *, attr_value_t *, attr_value_t *);
typedef set_error_t (*set_class_attr_t)(lang_void *, conf_class_t *, attr_value_t *, attr_value_t *);
typedef struct __anonymous12 interface_array_t;
typedef int64 nano_secs_t;
enum __anonymous76;
typedef enum __anonymous76 event_class_flag_t;
typedef struct event_class event_class_t;
typedef int64 pico_secs_t;
typedef void (*hap_func_t)(lang_void *);
enum __anonymous77;
typedef enum __anonymous77 sim_version_t;
enum __anonymous78;
typedef enum __anonymous78 log_type_t;
enum __anonymous79;
typedef enum __anonymous79 global_notifier_type_t;
typedef struct global_notifier_callback global_notifier_callback_t;
typedef int hap_type_t;
enum __anonymous80;
typedef enum __anonymous80 data_or_instr_t;
enum __anonymous81;
typedef enum __anonymous81 cpu_endian_t;
enum __anonymous82;
typedef enum __anonymous82 breakpoint_kind_t;
typedef int breakpoint_id_t;
typedef unsigned long int uintptr_t;
typedef uintptr_t breakpoint_handle_t;
enum __anonymous83;
typedef enum __anonymous83 addr_space_t;
enum __anonymous84;
typedef enum __anonymous84 read_or_write_t;
enum __anonymous85;
typedef enum __anonymous85 endianness_t;
enum swap_mode;
typedef enum swap_mode swap_mode_t;
enum __anonymous86;
typedef enum __anonymous86 map_type_t;
typedef struct page page_t;
typedef struct map_list map_list_t;
typedef int pseudo_exceptions_t;
typedef struct granted_mem granted_mem_t;
typedef granted_mem_t *direct_memory_handle_t;
typedef uint64 direct_memory_ack_id_t;
enum __anonymous87;
typedef enum __anonymous87 mem_op_type_t;
enum __anonymous88;
typedef enum __anonymous88 ini_type_t;
enum __anonymous89;
typedef enum __anonymous89 block_flag_t;
typedef struct generic_transaction generic_transaction_t;
enum __anonymous90;
typedef enum __anonymous90 atom_id_t;
typedef struct __anonymous8 atom_t;
typedef struct transaction transaction_t;
typedef exception_type_t (*transaction_completion_t)(conf_object_t *, transaction_t *, exception_type_t);
enum __anonymous91;
typedef enum __anonymous91 transaction_flags_t;
typedef struct notifier_handle notifier_handle_t;
typedef struct domain_lock domain_lock_t;
typedef uint64 uinteger_t;
typedef int64 integer_t;
typedef struct gfx_console_interface gfx_console_interface_t;
typedef struct context_handler_interface context_handler_interface_t;
enum event_queue_type;
typedef enum event_queue_type event_queue_type_t;
typedef gen_spr_ret_t (*gen_spr_user_getter_func_t)(conf_object_t *, int64, gen_spr_access_type_t, lang_void *);
typedef gen_spr_ret_t (*gen_spr_user_setter_func_t)(conf_object_t *, int64, uint64, gen_spr_access_type_t, lang_void *);
typedef struct breakpoint_interface breakpoint_interface_t;
typedef struct breakpoint_change_interface breakpoint_change_interface_t;
typedef struct breakpoint_query_interface breakpoint_query_interface_t;
typedef struct breakpoint_query_v2_interface breakpoint_query_v2_interface_t;
enum __anonymous92;
typedef enum __anonymous92 virtual_breakpoint_flags_t;
typedef struct virtual_data_breakpoint_interface virtual_data_breakpoint_interface_t;
typedef struct virtual_instruction_breakpoint_interface virtual_instruction_breakpoint_interface_t;
enum __anonymous93;
typedef enum __anonymous93 branch_arc_type_t;
typedef struct __anonymous61 branch_arc_t;
enum __anonymous94;
typedef enum __anonymous94 branch_recorder_direction_t;
typedef struct branch_recorder_handler_interface branch_recorder_handler_interface_t;
enum __anonymous95;
typedef enum __anonymous95 addr_type_t;
typedef struct completion completion_t;
typedef struct wait_handler wait_handler_t;
enum breakpoint_flag;
typedef enum breakpoint_flag breakpoint_flag_t;
enum __anonymous96;
typedef enum __anonymous96 notify_mode_t;
typedef struct telemetry_manager_interface telemetry_manager_interface_t;
typedef int cmd_line_id_t;
enum __anonymous97;
typedef enum __anonymous97 cmd_line_key_t;
enum __anonymous98;
typedef enum __anonymous98 cmd_line_mod_t;
typedef struct cmd_line_frontend_interface cmd_line_frontend_interface_t;
typedef struct cmd_line_selection_interface cmd_line_selection_interface_t;
typedef struct terminal_server_interface terminal_server_interface_t;
typedef struct terminal_client_interface terminal_client_interface_t;
enum __anonymous99;
typedef enum __anonymous99 save_flags_t;
typedef struct frontend_server_interface frontend_server_interface_t;
typedef struct tcf_channel_interface tcf_channel_interface_t;
enum __anonymous100;
typedef enum __anonymous100 stop_type_t;
typedef struct execute_environ execute_environ_t;
typedef int hap_handle_t;
typedef int hap_flags_t;
typedef struct profile_area profile_area_t;
typedef void (*output_handler_t)(lang_void *, const char *, size_t);
enum __anonymous101;
typedef enum __anonymous101 revexec_pos_t;
enum __anonymous102;
typedef enum __anonymous102 micro_checkpoint_flags_t;
enum __anonymous103;
typedef enum __anonymous103 snapshot_error_t;
typedef struct direct_memory_interface direct_memory_interface_t;
typedef struct direct_memory_lookup_interface direct_memory_lookup_interface_t;
typedef struct direct_memory_lookup_v2_interface direct_memory_lookup_v2_interface_t;
typedef struct direct_memory_update_interface direct_memory_update_interface_t;
typedef struct direct_memory_flush_interface direct_memory_flush_interface_t;
typedef struct direct_memory_tags_interface direct_memory_tags_interface_t;
enum __anonymous104;
typedef enum __anonymous104 page_bank_bits_t;
typedef struct page_bank_interface page_bank_interface_t;
typedef struct page_bank_client_interface page_bank_client_interface_t;
typedef struct stc_interface stc_interface_t;
enum __anonymous105;
typedef enum __anonymous105 application_mode_t;
enum __anonymous106;
typedef enum __anonymous106 sim_license_kind_t;
typedef struct log_object_interface log_object_interface_t;
typedef struct domain_lock domain_lock_t;
enum __anonymous107;
typedef enum __anonymous107 vtmem_inform_opcode_t;
enum __anonymous108;
typedef enum __anonymous108 license_product_t;
typedef struct thread_domain thread_domain_t;
typedef struct thread_domain_holder thread_domain_holder_t;
typedef struct thread_domain_group thread_domain_group_t;
enum __anonymous109;
typedef enum __anonymous109 domain_priority_t;
enum __anonymous110;
typedef enum __anonymous110 abs_pointer_buttons_t;
typedef struct abs_pointer_interface abs_pointer_interface_t;
typedef struct abs_pointer_activate_interface abs_pointer_activate_interface_t;
typedef struct instrumentation_order_interface instrumentation_order_interface_t;
typedef struct callback_info_interface callback_info_interface_t;
typedef uintptr_t bank_callback_handle_t;
typedef void (*before_read_callback_t)(conf_object_t *, bank_before_read_interface_t *, bank_access_t *, lang_void *);
typedef void (*after_read_callback_t)(conf_object_t *, bank_after_read_interface_t *, bank_access_t *, lang_void *);
typedef void (*before_write_callback_t)(conf_object_t *, bank_before_write_interface_t *, bank_access_t *, lang_void *);
typedef void (*after_write_callback_t)(conf_object_t *, bank_after_write_interface_t *, bank_access_t *, lang_void *);
typedef struct bank_instrumentation_subscribe_interface bank_instrumentation_subscribe_interface_t;
enum __anonymous111;
typedef enum __anonymous111 cache_control_operation_t;
typedef struct cache_control_interface cache_control_interface_t;
typedef struct cdrom_media_interface cdrom_media_interface_t;
typedef struct component_interface component_interface_t;
enum __anonymous112;
typedef enum __anonymous112 connector_direction_t;
typedef struct connector_interface connector_interface_t;
typedef struct component_connector_interface component_connector_interface_t;
typedef struct disk_component_interface disk_component_interface_t;
typedef struct co_execute_interface co_execute_interface_t;
typedef struct synchronous_mode_interface synchronous_mode_interface_t;
enum __anonymous113;
typedef enum __anonymous113 concurrency_mode_t;
typedef struct concurrency_mode_interface concurrency_mode_interface_t;
typedef struct concurrency_group_interface concurrency_group_interface_t;
typedef struct instrumentation_entry cpu_cb_handle_t;
typedef struct instrumentation_entry cpu_stream_handle_t;
typedef struct cpu_instruction_query_interface cpu_instruction_query_interface_t;
enum __anonymous114;
typedef enum __anonymous114 page_crossing_info_t;
typedef struct cpu_memory_query_interface cpu_memory_query_interface_t;
typedef struct cpu_exception_query_interface cpu_exception_query_interface_t;
typedef void (*cpu_instruction_cb_t)(conf_object_t *, conf_object_t *, instruction_handle_t *, lang_void *);
typedef void (*cpu_callback_free_user_data_cb_t)(conf_object_t *, conf_object_t *, lang_void *);
typedef void (*cpu_memory_cb_t)(conf_object_t *, conf_object_t *, memory_handle_t *, lang_void *);
typedef struct cpu_cached_instruction_interface cpu_cached_instruction_interface_t;
typedef struct cpu_cached_instruction_once_interface cpu_cached_instruction_once_interface_t;
typedef void (*cpu_cached_instruction_cb_t)(conf_object_t *, conf_object_t *, cached_instruction_handle_t *, instruction_handle_t *, lang_void *);
typedef cpu_emulation_t (*cpu_emulation_cb_t)(conf_object_t *, conf_object_t *, lang_void *);
typedef struct cpu_instruction_decoder_interface cpu_instruction_decoder_interface_t;
typedef int (*cpu_instruction_decoder_cb_t)(conf_object_t *, conf_object_t *, decoder_handle_t *, instruction_handle_t *, lang_void *);
typedef tuple_int_string_t (*cpu_instruction_disassemble_cb_t)(conf_object_t *, conf_object_t *, generic_address_t, cpu_bytes_t);
typedef logical_address_t (*cpu_address_cb_t)(conf_object_t *, conf_object_t *, logical_address_t, address_handle_t *, lang_void *);
typedef void (*cpu_exception_cb_t)(conf_object_t *, conf_object_t *, exception_handle_t *, lang_void *);
typedef void (*cpu_exception_return_cb_t)(conf_object_t *, conf_object_t *, exception_return_handle_t *, lang_void *);
enum __anonymous115;
typedef enum __anonymous115 cpu_exception_scope_t;
enum __anonymous116;
typedef enum __anonymous116 cpu_control_register_scope_t;
typedef void (*cpu_mode_change_cb_t)(conf_object_t *, conf_object_t *, processor_mode_t, processor_mode_t, lang_void *);
typedef void (*cpu_control_register_read_cb_t)(conf_object_t *, conf_object_t *, int, lang_void *);
typedef void (*cpu_control_register_write_cb_t)(conf_object_t *, conf_object_t *, int, uint64, lang_void *);
enum __anonymous117;
typedef enum __anonymous117 cpu_access_scope_t;
typedef struct cpu_instrumentation_subscribe_interface cpu_instrumentation_subscribe_interface_t;
enum __anonymous118;
typedef enum __anonymous118 cpu_stream_enum_t;
typedef uint64 cpu_stream_bits_t;
typedef struct cycle_event_interface cycle_event_interface_t;
typedef struct cycle_control_interface cycle_control_interface_t;
typedef struct data_profiler_interface data_profiler_interface_t;
enum __anonymous119;
typedef enum __anonymous119 description_type_t;
enum __anonymous120;
typedef enum __anonymous120 reg_role_t;
enum __anonymous121;
typedef enum __anonymous121 reg_bitorder_t;
typedef struct device_identification_interface device_identification_interface_t;
typedef struct event_delta_interface event_delta_interface_t;
typedef struct event_handler_interface event_handler_interface_t;
typedef struct step_instrumentation step_handle_t;
typedef struct clock_instrumentation cycle_handle_t;
typedef void (*step_event_cb_t)(conf_object_t *, conf_object_t *, conf_object_t *, pc_step_t, const char *, const char *, attr_value_t, lang_void *);
typedef struct step_event_instrumentation_interface step_event_instrumentation_interface_t;
typedef void (*cycle_event_cb_t)(conf_object_t *, conf_object_t *, conf_object_t *, cycles_t, const char *, const char *, attr_value_t, lang_void *);
typedef struct cycle_event_instrumentation_interface cycle_event_instrumentation_interface_t;
typedef struct exception_interface exception_interface_t;
typedef void (*instruction_trace_callback_t)(lang_void *, conf_object_t *, linear_address_t, logical_address_t, physical_address_t, byte_string_t);
typedef struct exec_trace_interface exec_trace_interface_t;
typedef struct execute_interface execute_interface_t;
typedef struct cell_inspection_interface cell_inspection_interface_t;
typedef struct execute_control_interface execute_control_interface_t;
typedef struct freerun_interface freerun_interface_t;
enum __anonymous122;
typedef enum __anonymous122 gfx_con_pixel_fmt_t;
typedef struct gfx_con_interface gfx_con_interface_t;
typedef struct image_interface image_interface_t;
typedef struct linear_image_interface linear_image_interface_t;
enum __anonymous123;
typedef enum __anonymous123 instruction_fetch_mode_t;
typedef struct instruction_fetch_interface instruction_fetch_interface_t;
enum __anonymous124;
typedef enum __anonymous124 ireg_info_t;
typedef struct int_register_interface int_register_interface_t;
typedef struct jit_control_interface jit_control_interface_t;
typedef struct keyboard_interface keyboard_interface_t;
typedef struct keyboard_console_interface keyboard_console_interface_t;
typedef struct mouse_interface mouse_interface_t;
typedef struct memory_profiler_interface memory_profiler_interface_t;
typedef struct mmc_interface mmc_interface_t;
typedef struct packet_interface packet_interface_t;
typedef struct processor_info_interface processor_info_interface_t;
typedef struct processor_info_v2_interface processor_info_v2_interface_t;
typedef struct processor_endian_interface processor_endian_interface_t;
typedef struct processor_cli_interface processor_cli_interface_t;
typedef struct opcode_info_interface opcode_info_interface_t;
typedef struct processor_gui_interface processor_gui_interface_t;
enum __anonymous125;
typedef enum __anonymous125 ram_operation_flags_t;
typedef struct ram_interface ram_interface_t;
typedef ram_interface_t rom_interface_t;
typedef struct ram_callback_entry ram_cb_handle_t;
typedef access_t (*access_filter_cb_t)(conf_object_t *, conf_object_t *, conf_object_t *, uint64, unsigned, access_t, lang_void *);
typedef void (*ram_access_cb_t)(conf_object_t *, conf_object_t *, uint64, transaction_t *, lang_void *);
typedef struct ram_access_subscribe_interface ram_access_subscribe_interface_t;
typedef struct register_view_interface register_view_interface_t;
typedef struct register_view_read_only_interface register_view_read_only_interface_t;
enum __anonymous126;
typedef enum __anonymous126 state_save_kind_t;
enum __anonymous127;
typedef enum __anonymous127 sim_key_t;
typedef struct simulator_cache_interface simulator_cache_interface_t;
typedef struct uint64_state_interface uint64_state_interface_t;
typedef struct step_interface step_interface_t;
typedef struct step_cycle_ratio_interface step_cycle_ratio_interface_t;
typedef struct stall_interface stall_interface_t;
typedef struct step_info_interface step_info_interface_t;
typedef struct temporal_state_interface temporal_state_interface_t;
typedef struct timing_model_interface timing_model_interface_t;
typedef struct snoop_memory_interface snoop_memory_interface_t;
typedef struct transaction_interface transaction_interface_t;
typedef struct vga_text_interface vga_text_interface_t;
typedef struct vga_text_update_interface vga_text_update_interface_t;
typedef struct address_profiler_interface address_profiler_interface_t;
typedef struct branch_arc_interface branch_arc_interface_t;
typedef struct checkpoint_interface checkpoint_interface_t;
typedef struct serial_console_frontend_interface serial_console_frontend_interface_t;
typedef struct con_input_interface con_input_interface_t;
typedef struct con_input_code_interface con_input_code_interface_t;
typedef int (*break_string_cb_t)(conf_object_t *, const char *, int64, lang_void *);
typedef struct break_strings_interface break_strings_interface_t;
typedef struct break_strings_v2_interface break_strings_v2_interface_t;
typedef int (*gfx_break_cb_t)(conf_object_t *, int64, lang_void *);
typedef struct gfx_break_interface gfx_break_interface_t;
typedef struct telnet_connection_interface telnet_connection_interface_t;
typedef struct telnet_connection_v2_interface telnet_connection_v2_interface_t;
typedef struct vnc_server_interface vnc_server_interface_t;
typedef struct vnc_server_v2_interface vnc_server_v2_interface_t;
typedef struct host_serial_interface host_serial_interface_t;
typedef struct screenshot_interface screenshot_interface_t;
enum __anonymous128;
typedef enum __anonymous128 text_console_text_attrib_t;
enum __anonymous129;
typedef enum __anonymous129 text_console_colour_t;
typedef struct text_console_frontend_interface text_console_frontend_interface_t;
enum __anonymous130;
typedef enum __anonymous130 text_console_key_t;
enum __anonymous131;
typedef enum __anonymous131 text_console_modifier_t;
typedef struct text_console_backend_interface text_console_backend_interface_t;
enum __anonymous132;
typedef enum __anonymous132 gfx_console_led_t;
enum __anonymous133;
typedef enum __anonymous133 gfx_console_mouse_button_t;
typedef struct gfx_console_frontend_interface gfx_console_frontend_interface_t;
typedef struct gfx_console_backend_interface gfx_console_backend_interface_t;
enum __anonymous134;
typedef enum __anonymous134 winsome_update_type_t;
typedef struct winsome_console_interface winsome_console_interface_t;
typedef struct gui_console_backend_interface gui_console_backend_interface_t;
typedef uint64 debug_cancel_id_t;
enum __anonymous135;
typedef enum __anonymous135 debugger_error_t;
typedef struct debug_notification_interface debug_notification_interface_t;
typedef int64 debug_setup_id_t;
typedef struct debug_setup_interface debug_setup_interface_t;
typedef struct debug_query_interface debug_query_interface_t;
typedef struct debug_step_interface debug_step_interface_t;
typedef struct debug_symbol_interface debug_symbol_interface_t;
typedef struct debug_symbol_file_interface debug_symbol_file_interface_t;
typedef struct instrumentation_filter_slave_interface instrumentation_filter_slave_interface_t;
typedef struct instrumentation_filter_status_interface instrumentation_filter_status_interface_t;
typedef struct instrumentation_filter_master_interface instrumentation_filter_master_interface_t;
typedef struct instrumentation_tool_interface instrumentation_tool_interface_t;
typedef struct instrumentation_connection_interface instrumentation_connection_interface_t;
typedef uint64 cancel_id_t;
typedef uint64 entity_id_t;
typedef uint64 transaction_id_t;
typedef uint64 request_id_t;
enum __anonymous136;
typedef enum __anonymous136 cancel_id_error_t;
typedef struct osa_component_interface osa_component_interface_t;
enum __anonymous137;
typedef enum __anonymous137 request_id_error_t;
typedef struct osa_control_interface osa_control_interface_t;
typedef struct osa_control_v2_interface osa_control_v2_interface_t;
typedef struct osa_node_tree_query_interface osa_node_tree_query_interface_t;
typedef struct osa_node_tree_notification_interface osa_node_tree_notification_interface_t;
typedef struct osa_node_path_interface osa_node_path_interface_t;
enum __anonymous138;
typedef enum __anonymous138 osa_read_len_t;
typedef struct osa_machine_notification_interface osa_machine_notification_interface_t;
typedef struct osa_machine_query_interface osa_machine_query_interface_t;
typedef struct osa_mapper_admin_interface osa_mapper_admin_interface_t;
typedef struct osa_mapper_control_interface osa_mapper_control_interface_t;
typedef struct osa_mapper_query_interface osa_mapper_query_interface_t;
typedef struct osa_node_tree_admin_interface osa_node_tree_admin_interface_t;
typedef struct osa_parameters_interface osa_parameters_interface_t;
typedef struct osa_tracker_component_interface osa_tracker_component_interface_t;
typedef struct osa_tracker_state_admin_interface osa_tracker_state_admin_interface_t;
typedef struct osa_tracker_state_notification_interface osa_tracker_state_notification_interface_t;
typedef struct osa_tracker_state_query_interface osa_tracker_state_query_interface_t;
typedef struct osa_tracker_control_interface osa_tracker_control_interface_t;
typedef struct osa_micro_checkpoint_interface osa_micro_checkpoint_interface_t;
typedef struct register_breakpoint_interface register_breakpoint_interface_t;
typedef void (*recorder_input_handler_t)(conf_object_t *, dbuffer_t *, uint32);
typedef struct recorder_interface recorder_interface_t;
typedef struct recorder_v2_interface recorder_v2_interface_t;
typedef struct recorded_interface recorded_interface_t;
typedef struct scalar_time_interface scalar_time_interface_t;
enum __anonymous139;
typedef enum __anonymous139 probe_key_t;
typedef struct probe_interface probe_interface_t;
typedef struct probe_index_interface probe_index_interface_t;
typedef struct probe_array_interface probe_array_interface_t;
typedef struct probe_subscribe_interface probe_subscribe_interface_t;
typedef struct probe_sampler_cache_interface probe_sampler_cache_interface_t;
enum __anonymous140;
typedef enum __anonymous140 table_key_t;
enum __anonymous141;
typedef enum __anonymous141 column_key_t;
enum __anonymous142;
typedef enum __anonymous142 extra_header_key_t;
typedef struct table_interface table_interface_t;
typedef struct breakpoint_registration_interface breakpoint_registration_interface_t;
typedef struct breakpoint_type_interface breakpoint_type_interface_t;
enum __anonymous143;
typedef enum __anonymous143 sim_bp_type_t;
typedef struct breakpoint_type_provider_interface breakpoint_type_provider_interface_t;
typedef struct breakpoint_manager_interface breakpoint_manager_interface_t;
typedef struct preference_interface preference_interface_t;
enum __anonymous144;
typedef enum __anonymous144 apic_destination_mode_t;
enum __anonymous145;
typedef enum __anonymous145 apic_delivery_mode_t;
enum __anonymous146;
typedef enum __anonymous146 apic_trigger_mode_t;
enum __anonymous147;
typedef enum __anonymous147 apic_delivery_status_t;
enum __anonymous148;
typedef enum __anonymous148 apic_rr_status_t;
enum __anonymous149;
typedef enum __anonymous149 apic_bus_status_t;
typedef struct apic_bus_interface apic_bus_interface_t;
typedef struct arinc429_bus_interface arinc429_bus_interface_t;
typedef struct arinc429_receiver_interface arinc429_receiver_interface_t;
typedef struct datagram_link_interface datagram_link_interface_t;
typedef struct ethernet_common_interface ethernet_common_interface_t;
typedef struct ethernet_cable_interface ethernet_cable_interface_t;
typedef void (*ethernet_link_snoop_t)(lang_void *, conf_object_t *, const frags_t *, eth_frame_crc_status_t);
typedef struct ethernet_snoop_interface ethernet_snoop_interface_t;
typedef struct ethernet_vlan_snoop_interface ethernet_vlan_snoop_interface_t;
typedef void (*ethernet_probe_snoop_t)(lang_void *, conf_object_t *, eth_probe_side_t, const frags_t *, eth_frame_crc_status_t);
typedef struct ethernet_probe_interface ethernet_probe_interface_t;
enum __anonymous150;
typedef enum __anonymous150 firewire_ack_code_t;
enum __anonymous151;
typedef enum __anonymous151 firewire_response_code_t;
enum __anonymous152;
typedef enum __anonymous152 firewire_transaction_code_t;
enum __anonymous153;
typedef enum __anonymous153 firewire_async_lock_code_t;
enum __anonymous154;
typedef enum __anonymous154 firewire_iso_tag_t;
enum __anonymous155;
typedef enum __anonymous155 firewire_port_status_t;
typedef struct firewire_bus_interface firewire_bus_interface_t;
typedef struct firewire_device_interface firewire_device_interface_t;
typedef struct frequency_interface frequency_interface_t;
typedef struct frequency_listener_interface frequency_listener_interface_t;
typedef struct scale_factor_listener_interface scale_factor_listener_interface_t;
typedef struct simple_dispatcher_interface simple_dispatcher_interface_t;
typedef int mod_def_t;
enum i2c_device_state;
typedef enum i2c_device_state i2c_device_state_t;
enum __anonymous156;
typedef enum __anonymous156 i2c_device_flag_t;
typedef struct i2c_bus_interface i2c_bus_interface_t;
typedef struct i2c_device_interface i2c_device_interface_t;
enum __anonymous157;
typedef enum __anonymous157 i2c_status_t;
typedef struct i2c_link_interface i2c_link_interface_t;
typedef struct i2c_slave_interface i2c_slave_interface_t;
typedef struct i2c_master_interface i2c_master_interface_t;
typedef struct i2c_bridge_interface i2c_bridge_interface_t;
typedef struct i2c_slave_v2_interface i2c_slave_v2_interface_t;
enum __anonymous158;
typedef enum __anonymous158 i2c_ack_t;
typedef struct i2c_master_v2_interface i2c_master_v2_interface_t;
enum __anonymous159;
typedef enum __anonymous159 i3c_ack_t;
typedef struct i3c_master_interface i3c_master_interface_t;
typedef struct i3c_slave_interface i3c_slave_interface_t;
typedef struct i3c_daa_snoop_interface i3c_daa_snoop_interface_t;
enum __anonymous160;
typedef enum __anonymous160 ieee_802_3_media_t;
enum __anonymous161;
typedef enum __anonymous161 ieee_802_3_duplex_mode_t;
enum __anonymous162;
typedef enum __anonymous162 ieee_802_3_link_status_t;
typedef struct ieee_802_3_phy_interface ieee_802_3_phy_interface_t;
typedef struct ieee_802_3_phy_v2_interface ieee_802_3_phy_v2_interface_t;
typedef struct ieee_802_3_phy_v3_interface ieee_802_3_phy_v3_interface_t;
typedef struct ieee_802_3_mac_interface ieee_802_3_mac_interface_t;
typedef struct ieee_802_3_mac_v3_interface ieee_802_3_mac_v3_interface_t;
typedef int (*interrupt_ack_fn_t)(conf_object_t *NOTNULL);
typedef struct interrupt_ack_interface interrupt_ack_interface_t;
typedef struct interrupt_cpu_interface interrupt_cpu_interface_t;
enum __anonymous163;
typedef enum __anonymous163 interrupt_source_t;
typedef struct interrupt_subscriber_interface interrupt_subscriber_interface_t;
typedef struct simple_interrupt_interface simple_interrupt_interface_t;
typedef struct io_memory_interface io_memory_interface_t;
typedef struct map_demap_interface map_demap_interface_t;
typedef struct memory_space_interface memory_space_interface_t;
typedef struct port_space_interface port_space_interface_t;
typedef struct translate_interface translate_interface_t;
typedef struct bridge_interface bridge_interface_t;
typedef struct microwire_interface microwire_interface_t;
typedef struct mii_management_interface mii_management_interface_t;
typedef struct mii_interface mii_interface_t;
typedef struct mdio45_bus_interface mdio45_bus_interface_t;
typedef struct mdio45_phy_interface mdio45_phy_interface_t;
enum __anonymous164;
typedef enum __anonymous164 ms1553_phase_t;
enum __anonymous165;
typedef enum __anonymous165 ms1553_error_t;
enum __anonymous166;
typedef enum __anonymous166 ms1553_mode_code_t;
typedef struct ms1553_link_interface ms1553_link_interface_t;
typedef struct ms1553_terminal_interface ms1553_terminal_interface_t;
typedef struct nand_flash_interface nand_flash_interface_t;
typedef struct pci_memory_transaction pci_memory_transaction_t;
typedef struct pci_device_interface pci_device_interface_t;
typedef struct pci_bus_interface pci_bus_interface_t;
typedef struct pcie_adapter_compat_interface pcie_adapter_compat_interface_t;
typedef struct pci_upstream_interface pci_upstream_interface_t;
typedef struct pci_upstream_operation_interface pci_upstream_operation_interface_t;
typedef struct pci_downstream_interface pci_downstream_interface_t;
typedef struct pci_bridge_interface pci_bridge_interface_t;
typedef struct pci_interrupt_interface pci_interrupt_interface_t;
enum __anonymous167;
typedef enum __anonymous167 pci_interrupt_pin_t;
enum __anonymous168;
typedef enum __anonymous168 pcie_message_type_t;
typedef struct pci_express_interface pci_express_interface_t;
typedef struct pci_express_hotplug_interface pci_express_hotplug_interface_t;
typedef struct pci_multi_function_device_interface pci_multi_function_device_interface_t;
enum __anonymous169;
typedef enum __anonymous169 pcie_type_t;
typedef struct pcie_device_interface pcie_device_interface_t;
typedef struct pcie_map_interface pcie_map_interface_t;
typedef struct pcie_port_control_interface pcie_port_control_interface_t;
enum __anonymous170;
typedef enum __anonymous170 pcie_hotplug_pd_t;
enum __anonymous171;
typedef enum __anonymous171 pcie_hotplug_mrl_t;
typedef struct pcie_hotplug_events_interface pcie_hotplug_events_interface_t;
enum __anonymous172;
typedef enum __anonymous172 pcie_msg_route_t;
enum __anonymous173;
typedef enum __anonymous173 pcie_at_t;
enum __anonymous174;
typedef enum __anonymous174 pcie_error_t;
typedef struct __anonymous3 pcie_error_ret_t;
typedef struct __anonymous2 pcie_byte_count_ret_t;
enum __anonymous175;
typedef enum __anonymous175 pcie_link_speed_t;
enum __anonymous176;
typedef enum __anonymous176 pcie_link_width_t;
typedef struct __anonymous1 pcie_link_negotiation_t;
enum __anonymous177;
typedef enum __anonymous177 rapidio_operation_t;
typedef struct rapidio_v3_interface rapidio_v3_interface_t;
typedef struct rapidio_v4_interface rapidio_v4_interface_t;
typedef struct rapidio_v5_interface rapidio_v5_interface_t;
typedef struct sata_interface sata_interface_t;
typedef struct serial_device_interface serial_device_interface_t;
typedef struct extended_serial_interface extended_serial_interface_t;
typedef struct rs232_device_interface rs232_device_interface_t;
enum __anonymous178;
typedef enum __anonymous178 stop_bits_t;
enum __anonymous179;
typedef enum __anonymous179 parity_mode_t;
typedef struct rs232_console_interface rs232_console_interface_t;
enum serial_peripheral_interface_flags;
typedef enum serial_peripheral_interface_flags serial_peripheral_interface_flags_t;
typedef struct serial_peripheral_interface_master_interface serial_peripheral_interface_master_interface_t;
typedef struct serial_peripheral_interface_slave_interface serial_peripheral_interface_slave_interface_t;
typedef struct signal_interface signal_interface_t;
typedef struct multi_level_signal_interface multi_level_signal_interface_t;
typedef struct pulse_interface pulse_interface_t;
typedef int telemetry_class_id_t;
typedef int telemetry_id_t;
typedef struct telemetry_interface telemetry_interface_t;
typedef struct translator_interface translator_interface_t;
typedef struct transaction_translator_interface transaction_translator_interface_t;
typedef struct translation_flush_interface translation_flush_interface_t;
enum __anonymous180;
typedef enum __anonymous180 usb_transfer_completion_t;
enum __anonymous181;
typedef enum __anonymous181 usb_direction_t;
enum __anonymous182;
typedef enum __anonymous182 usb_status_t;
enum __anonymous183;
typedef enum __anonymous183 usb_type_t;
enum __anonymous184;
typedef enum __anonymous184 usb_speed_t;
typedef struct __anonymous37 usb_transfer_t;
typedef struct usb_device_interface usb_device_interface_t;
typedef struct usb_interface usb_interface_t;
typedef struct vectored_interrupt_interface vectored_interrupt_interface_t;
typedef struct vectored_interrupt_source_interface vectored_interrupt_source_interface_t;
typedef struct x86_cstate_interface x86_cstate_interface_t;
typedef struct x86_cstate_notification_interface x86_cstate_notification_interface_t;
typedef struct i8051_interrupt_interface i8051_interrupt_interface_t;
typedef struct i8051_timer_interface i8051_timer_interface_t;
enum __anonymous185;
typedef enum __anonymous185 arm_mem_instr_origin_t;
typedef struct arm_memory_transaction arm_memory_transaction_t;
typedef struct arm_interface arm_interface_t;
typedef struct arm_coprocessor_interface arm_coprocessor_interface_t;
typedef struct arm_avic_interface arm_avic_interface_t;
enum __anonymous186;
typedef enum __anonymous186 arm_trustzone_mode_t;
typedef struct arm_trustzone_interface arm_trustzone_interface_t;
typedef struct arm_external_debug_interface arm_external_debug_interface_t;
typedef struct arm_gic_interface arm_gic_interface_t;
typedef struct arm_gic_cpu_state_interface arm_gic_cpu_state_interface_t;
enum __anonymous187;
typedef enum __anonymous187 arm_mem_type_t;
enum __anonymous188;
typedef enum __anonymous188 arm_device_type_t;
enum __anonymous189;
typedef enum __anonymous189 arm_mem_attr_t;
enum __anonymous190;
typedef enum __anonymous190 arm_mem_hint_t;
enum __anonymous191;
typedef enum __anonymous191 arm_mem_transient_t;
enum __anonymous192;
typedef enum __anonymous192 arm_translation_regime_t;
typedef struct mips_memory_transaction mips_memory_transaction_t;
typedef struct mips_interface mips_interface_t;
typedef struct mips_coprocessor_interface mips_coprocessor_interface_t;
typedef struct fmn_station_control_interface fmn_station_control_interface_t;
typedef struct fmn_station_control_v2_interface fmn_station_control_v2_interface_t;
typedef struct mips_cache_instruction_interface mips_cache_instruction_interface_t;
typedef struct mips_ite_interface mips_ite_interface_t;
typedef struct mips_eic_interface mips_eic_interface_t;
enum __anonymous193;
typedef enum __anonymous193 ppc_mc_exc_t;
enum __anonymous194;
typedef enum __anonymous194 ppc_mem_instr_origin_t;
enum __anonymous195;
typedef enum __anonymous195 ppc_decoration_type_t;
typedef struct ppc_memory_transaction ppc_memory_transaction_t;
enum __anonymous196;
typedef enum __anonymous196 ppc_sleep_state_t;
typedef gen_spr_user_setter_func_t ppc_spr_user_setter_func_t;
typedef gen_spr_user_getter_func_t ppc_spr_user_getter_func_t;
typedef gen_spr_ret_t ppc_spr_ret_t;
typedef gen_spr_access_type_t ppc_spr_access_type_t;
typedef struct ppc_interface ppc_interface_t;
typedef struct spr_interface spr_interface_t;
typedef struct pmr_interface pmr_interface_t;
enum x86_access_type;
typedef enum x86_access_type x86_access_type_t;
typedef struct x86_access_type_interface x86_access_type_interface_t;
enum __anonymous197;
typedef enum __anonymous197 x86_memory_type_t;
enum __anonymous198;
typedef enum __anonymous198 x86_sync_instruction_type_t;
enum __anonymous199;
typedef enum __anonymous199 x86_register_id_t;
enum __anonymous200;
typedef enum __anonymous200 x86_memory_or_io_t;
typedef struct x86_memory_transaction x86_memory_transaction_t;
typedef struct x86_tlb_interface x86_tlb_interface_t;
typedef struct __anonymous14 x86_tlb_entry_v3_t;
enum __anonymous201;
typedef enum __anonymous201 x86_tlb_inv_t;
typedef struct x86_tlb_v3_interface x86_tlb_v3_interface_t;
enum __anonymous202;
typedef enum __anonymous202 x86_pin_t;
typedef struct x86_interface x86_interface_t;
typedef struct x86_cpuid_interface x86_cpuid_interface_t;
typedef struct x86_cpuid_query_interface x86_cpuid_query_interface_t;
enum __anonymous203;
typedef enum __anonymous203 local_apic_interrupt_t;
typedef struct apic_cpu_interface apic_cpu_interface_t;
typedef struct a20_interface a20_interface_t;
typedef x86_msr_getter_ret_t (*x86_msr_getter_func_t)(conf_object_t *, int64, x86_msr_access_type_t, lang_void *);
typedef x86_msr_ret_t (*x86_msr_setter_func_t)(conf_object_t *, int64, uint64, x86_msr_access_type_t, lang_void *);
typedef struct x86_msr_interface x86_msr_interface_t;
typedef struct x86_cache_flush_interface x86_cache_flush_interface_t;
enum __anonymous204;
typedef enum __anonymous204 x86_system_seg_t;
enum __anonymous205;
typedef enum __anonymous205 x86_cr_t;
enum __anonymous206;
typedef enum __anonymous206 x86_dr_t;
enum __anonymous207;
typedef enum __anonymous207 x86_xcr_t;
enum __anonymous208;
typedef enum __anonymous208 x86_activity_t;
enum __anonymous209;
typedef enum __anonymous209 x86_exec_mode_t;
enum __anonymous210;
typedef enum __anonymous210 x86_seg_t;
enum __anonymous211;
typedef enum __anonymous211 x86_intstate_t;
typedef struct x86_reg_access_interface x86_reg_access_interface_t;
enum __anonymous212;
typedef enum __anonymous212 x86_exception_source_t;
enum __anonymous213;
typedef enum __anonymous213 x86_processor_mode_t;
enum __anonymous214;
typedef enum __anonymous214 x86_alignment_t;
typedef struct x86_vmp_control_interface x86_vmp_control_interface_t;
enum __anonymous215;
typedef enum __anonymous215 vmp_feature_t;
enum __anonymous216;
typedef enum __anonymous216 vmp_info_t;
typedef struct vmp_interface vmp_interface_t;
enum __anonymous217;
typedef enum __anonymous217 xed_data_type_t;
typedef struct xed_access_interface xed_access_interface_t;
typedef struct x86_ept_interface x86_ept_interface_t;
typedef struct x86_instruction_query_interface x86_instruction_query_interface_t;
typedef struct x86_memory_query_interface x86_memory_query_interface_t;
typedef struct x86_exception_query_interface x86_exception_query_interface_t;
typedef struct x86_address_query_interface x86_address_query_interface_t;
typedef void (*x86_mode_switch_cb_t)(conf_object_t *, conf_object_t *, x86_detailed_exec_mode_t, lang_void *);
typedef struct x86_instrumentation_subscribe_interface x86_instrumentation_subscribe_interface_t;
typedef struct x86_instrumentation_subscribe_v2_interface x86_instrumentation_subscribe_v2_interface_t;
typedef void (*vmx_mode_switch_cb_t)(conf_object_t *, conf_object_t *, vmx_mode_t, physical_address_t, lang_void *);
typedef struct vmx_instrumentation_subscribe_interface vmx_instrumentation_subscribe_interface_t;
typedef void (*smm_switch_cb_t)(conf_object_t *obj, conf_object_t *cpu, lang_void *user_data);
typedef struct smm_instrumentation_subscribe_interface smm_instrumentation_subscribe_interface_t;
enum __anonymous218;
typedef enum __anonymous218 x86_stream_enum_t;
typedef struct nios_interface nios_interface_t;
typedef struct nios_eic_interface nios_eic_interface_t;
typedef struct xtensa_lookup_interface xtensa_lookup_interface_t;
typedef struct xtensa_export_state_interface xtensa_export_state_interface_t;
typedef struct xtensa_output_queue_interface xtensa_output_queue_interface_t;
typedef struct xtensa_input_queue_interface xtensa_input_queue_interface_t;
typedef struct xtensa_import_wire_interface xtensa_import_wire_interface_t;
enum __anonymous219;
typedef enum __anonymous219 riscv_cpu_mode_t;
typedef struct riscv_coprocessor_interface riscv_coprocessor_interface_t;
enum __anonymous220;
typedef enum __anonymous220 riscv_imsic_file_id_t;
typedef struct riscv_imsic_interface riscv_imsic_interface_t;
typedef struct riscv_signal_sgeip_interface riscv_signal_sgeip_interface_t;
enum __anonymous221;
typedef enum __anonymous221 riscv_vectoring_mode_t;
typedef struct riscv_clic_interrupt_interface riscv_clic_interrupt_interface_t;
typedef struct riscv_clic_interface riscv_clic_interface_t;
typedef struct sh_interrupt_interface sh_interrupt_interface_t;
typedef struct sparc_v8_ecc_fault_injection_interface sparc_v8_ecc_fault_injection_interface_t;
typedef struct coreint_interface coreint_interface_t;
typedef struct bp_manager_interface bp_manager_interface_t;
enum __anonymous222;
typedef enum __anonymous222 async_flush_status_t;
typedef struct dist_control_interface dist_control_interface_t;
typedef struct global_time_interface global_time_interface_t;
typedef int symfile_id_t;
typedef struct __anonymous39 symbol_list_t;
enum __anonymous223;
typedef enum __anonymous223 load_symbols_flags_t;
typedef struct symbols_interface symbols_interface_t;
typedef struct sync_initial_time_interface sync_initial_time_interface_t;
enum __anonymous224;
typedef enum __anonymous224 exec_mode_t;
typedef struct external_connection_ctl_interface external_connection_ctl_interface_t;
typedef struct external_connection_events_interface external_connection_events_interface_t;
typedef struct monitored_attribute attribute_id_t;
typedef struct attribute_monitor_interface attribute_monitor_interface_t;
typedef struct mips_mt_ase_interface mips_mt_ase_interface_t;
typedef struct mips_mt_ase_policy_interface mips_mt_ase_policy_interface_t;
typedef struct alg_connection *connection_handle_t;
typedef struct alg_connection alg_connection_t;
enum __anonymous225;
typedef enum __anonymous225 alg_ret_t;
typedef struct port_forward_interface port_forward_interface_t;
typedef struct forward_destination_rewriter_interface forward_destination_rewriter_interface_t;
typedef struct link_endpoint_interface link_endpoint_interface_t;
typedef struct link_endpoint_v2_interface link_endpoint_v2_interface_t;
typedef struct slave_agent_interface slave_agent_interface_t;
typedef struct slaver_message_interface slaver_message_interface_t;
typedef struct follower_agent_interface follower_agent_interface_t;
typedef struct leader_message_interface leader_message_interface_t;
typedef long int intptr_t;
# 2 "pyifaces-my_iface-interface.c" 2
# 1 "/home/david/Documents/Empotrados/Proyecto2-Embebidos/modules/my_iface-interface/my_iface-interface.h" 1
# 18 "/home/david/Documents/Empotrados/Proyecto2-Embebidos/modules/my_iface-interface/my_iface-interface.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 1
# 17 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/module-host-config.h" 1
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/host-info.h" 1
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/build-id.h" 1
# 17 "/home/david/SIMICS/simics-6.0.185/src/include/simics/build-id.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/build-id-6.h" 1
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/build-id.h" 2
# 30 "/home/david/SIMICS/simics-6.0.185/src/include/simics/build-id.h"
typedef enum {
        SIM_VERSION_7 = 7000,
        SIM_VERSION_6 = 6000,
        SIM_VERSION_5 = 5000,
        SIM_VERSION_4_8 = 4500,
} sim_version_t;
# 20 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/alloc.h" 1
# 17 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/alloc.h"
# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 461 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 452 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 453 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 454 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 462 "/usr/include/features.h" 2 3 4
# 485 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 486 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4
# 26 "/usr/include/stdlib.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 209 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4

# 209 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
typedef int wchar_t;
# 32 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 40 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 41 "/usr/include/stdlib.h" 2 3 4
# 55 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 1 3 4
# 120 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 2 3 4
# 121 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 2 3 4
# 56 "/usr/include/stdlib.h" 2 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;





__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
# 97 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));



extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));



__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));



extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 176 "/usr/include/stdlib.h" 3 4
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 360 "/usr/include/stdlib.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void *)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ , __leaf__)) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void *)0), 10);
}


__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__ , __leaf__)) atoll (const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void *)0), 10);
}
# 385 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 30 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;


typedef __loff_t loff_t;




typedef __ino_t ino_t;






typedef __ino64_t ino64_t;




typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;






typedef __off64_t off64_t;




typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;




# 1 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h" 1 3 4






typedef __clock_t clock_t;
# 127 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h" 1 3 4






typedef __clockid_t clockid_t;
# 129 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 1 3 4






typedef __time_t time_t;
# 130 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h" 1 3 4






typedef __timer_t timer_t;
# 131 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 144 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 145 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 156 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;


typedef int register_t __attribute__ ((__mode__ (__word__)));
# 176 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 24 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endianness.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/endian.h" 2 3 4
# 25 "/usr/include/endian.h" 2 3 4
# 35 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{

  return __builtin_bswap16 (__bsx);



}






static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{

  return __builtin_bswap32 (__bsx);



}
# 69 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{

  return __builtin_bswap64 (__bsx);



}
# 36 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 1 3 4
# 32 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 3 4
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}

static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}

static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
# 37 "/usr/include/endian.h" 2 3 4
# 177 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h" 1 3 4




typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 2 3 4


typedef __sigset_t sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h" 1 3 4







struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
# 38 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
struct timespec
{
  __time_t tv_sec;



  __syscall_slong_t tv_nsec;
# 26 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
};
# 40 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 59 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 91 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 101 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 113 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);





# 1 "/usr/include/x86_64-linux-gnu/bits/select2.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/select2.h" 3 4
extern long int __fdelt_chk (long int __d);
extern long int __fdelt_warn (long int __d)
  __attribute__((__warning__ ("bit outside of fd_set selected")));
# 124 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



# 180 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 219 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;





# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 1 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 2 3 4
# 45 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4




typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
# 74 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;



  int __kind;

  short __spins;
  short __elision;
  __pthread_list_t __list;
# 53 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
};
# 75 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
# 87 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;




  unsigned char __pad1[7];


  unsigned long int __pad2;


  unsigned int __flags;
# 55 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
};
# 88 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4




struct __pthread_cond_s
{
  __extension__ union
  {
    __extension__ unsigned long long int __wseq;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
  __extension__ union
  {
    __extension__ unsigned long long int __g1_start;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
# 24 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4



typedef unsigned long int pthread_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;


typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;





typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 228 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 395 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));



extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) __attribute__ ((__warn_unused_result__));

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2))) __attribute__ ((__warn_unused_result__));






extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));







extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__))
     __attribute__ ((__alloc_size__ (2, 3)));



extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));


# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 569 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) __attribute__ ((__warn_unused_result__));




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));




extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) __attribute__ ((__warn_unused_result__));



extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 647 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 675 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 688 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 698 "/usr/include/stdlib.h" 3 4
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 710 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 720 "/usr/include/stdlib.h" 3 4
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 731 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 784 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) __attribute__ ((__warn_unused_result__));
# 800 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));






typedef int (*__compar_fn_t) (const void *, const void *);
# 820 "/usr/include/stdlib.h" 3 4
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) __attribute__ ((__warn_unused_result__));


# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) void *
bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size,
  __compar_fn_t __compar)
{
  size_t __l, __u, __idx;
  const void *__p;
  int __comparison;

  __l = 0;
  __u = __nmemb;
  while (__l < __u)
    {
      __idx = (__l + __u) / 2;
      __p = (void *) (((const char *) __base) + (__idx * __size));
      __comparison = (*__compar) (__key, __p);
      if (__comparison < 0)
 __u = __idx;
      else if (__comparison > 0)
 __l = __idx + 1;
      else
 return (void *) __p;
    }

  return ((void *)0);
}
# 826 "/usr/include/stdlib.h" 2 3 4




extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 840 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));


__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));






extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
# 872 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));





extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));







extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 957 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) __attribute__ ((__warn_unused_result__));
# 1003 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1013 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ , __leaf__)) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void *)0));
}
# 1014 "/usr/include/stdlib.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/stdlib.h" 3 4
extern char *__realpath_chk (const char *__restrict __name,
        char *__restrict __resolved,
        size_t __resolvedlen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__realpath_alias (const char *__restrict __name, char *__restrict __resolved) __asm__ ("" "realpath") __attribute__ ((__nothrow__ , __leaf__))

                                                 __attribute__ ((__warn_unused_result__));
extern char *__realpath_chk_warn (const char *__restrict __name, char *__restrict __resolved, size_t __resolvedlen) __asm__ ("" "__realpath_chk") __attribute__ ((__nothrow__ , __leaf__))


                                                __attribute__ ((__warn_unused_result__))
     __attribute__((__warning__ ("second argument of realpath must be either NULL or at " "least PATH_MAX bytes long buffer")))
                                      ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) realpath (const char *__restrict __name, char *__restrict __resolved)
{
  if (__builtin_object_size (__resolved, 2 > 1) != (size_t) -1)
    {




      return __realpath_chk (__name, __resolved, __builtin_object_size (__resolved, 2 > 1));
    }

  return __realpath_alias (__name, __resolved);
}


extern int __ptsname_r_chk (int __fd, char *__buf, size_t __buflen,
       size_t __nreal) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int __ptsname_r_alias (int __fd, char *__buf, size_t __buflen) __asm__ ("" "ptsname_r") __attribute__ ((__nothrow__ , __leaf__))

     __attribute__ ((__nonnull__ (2)));
extern int __ptsname_r_chk_warn (int __fd, char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__ptsname_r_chk") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__ ((__nonnull__ (2))) __attribute__((__warning__ ("ptsname_r called with buflen bigger than " "size of buf")))
                   ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) ptsname_r (int __fd, char *__buf, size_t __buflen)
{
  if (__builtin_object_size (__buf, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
 return __ptsname_r_chk (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
      if (__buflen > __builtin_object_size (__buf, 2 > 1))
 return __ptsname_r_chk_warn (__fd, __buf, __buflen, __builtin_object_size (__buf, 2 > 1));
    }
  return __ptsname_r_alias (__fd, __buf, __buflen);
}


extern int __wctomb_chk (char *__s, wchar_t __wchar, size_t __buflen)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int __wctomb_alias (char *__s, wchar_t __wchar) __asm__ ("" "wctomb") __attribute__ ((__nothrow__ , __leaf__))
              __attribute__ ((__warn_unused_result__));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) int
__attribute__ ((__nothrow__ , __leaf__)) wctomb (char *__s, wchar_t __wchar)
{







  if (__builtin_object_size (__s, 2 > 1) != (size_t) -1 && 16 > __builtin_object_size (__s, 2 > 1))
    return __wctomb_chk (__s, __wchar, __builtin_object_size (__s, 2 > 1));
  return __wctomb_alias (__s, __wchar);
}


extern size_t __mbstowcs_chk (wchar_t *__restrict __dst,
         const char *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __mbstowcs_alias (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len) __asm__ ("" "mbstowcs") __attribute__ ((__nothrow__ , __leaf__))


                                  ;
extern size_t __mbstowcs_chk_warn (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__mbstowcs_chk") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__((__warning__ ("mbstowcs called with dst buffer smaller than len " "* sizeof (wchar_t)")))
                        ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) mbstowcs (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len)

{
  if (__builtin_object_size (__dst, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __mbstowcs_chk (__dst, __src, __len,
          __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t));

      if (__len > __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t))
 return __mbstowcs_chk_warn (__dst, __src, __len,
         __builtin_object_size (__dst, 2 > 1) / sizeof (wchar_t));
    }
  return __mbstowcs_alias (__dst, __src, __len);
}


extern size_t __wcstombs_chk (char *__restrict __dst,
         const wchar_t *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __wcstombs_alias (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len) __asm__ ("" "wcstombs") __attribute__ ((__nothrow__ , __leaf__))


                                  ;
extern size_t __wcstombs_chk_warn (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__wcstombs_chk") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__((__warning__ ("wcstombs called with dst buffer smaller than len")));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) wcstombs (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len)

{
  if (__builtin_object_size (__dst, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
 return __wcstombs_chk (__dst, __src, __len, __builtin_object_size (__dst, 2 > 1));
      if (__len > __builtin_object_size (__dst, 2 > 1))
 return __wcstombs_chk_warn (__dst, __src, __len, __builtin_object_size (__dst, 2 > 1));
    }
  return __wcstombs_alias (__dst, __src, __len);
}
# 1018 "/usr/include/stdlib.h" 2 3 4






# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/alloc.h" 2
# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/string.h" 2 3 4






# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 34 "/usr/include/string.h" 2 3 4
# 43 "/usr/include/string.h" 3 4
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 91 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 122 "/usr/include/string.h" 3 4
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



# 1 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 3 4
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 154 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 226 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 253 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 273 "/usr/include/string.h" 3 4
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 303 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 330 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 385 "/usr/include/string.h" 3 4
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));
# 410 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)));
# 428 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/strings.h" 1 3 4
# 23 "/usr/include/strings.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 24 "/usr/include/strings.h" 2 3 4










extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 68 "/usr/include/strings.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 96 "/usr/include/strings.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int ffsl (long int __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));



extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));








# 1 "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) bcopy (const void *__src, void *__dest, size_t __len)
{
  (void) __builtin___memmove_chk (__dest, __src, __len, __builtin_object_size (__dest, 0));
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) bzero (void *__dest, size_t __len)
{
  (void) __builtin___memset_chk (__dest, '\0', __len, __builtin_object_size (__dest, 0));
}
# 145 "/usr/include/strings.h" 2 3 4
# 433 "/usr/include/string.h" 2 3 4



extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 495 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memcpy (void *__restrict __dest, const void *__restrict __src, size_t __len)

{
  return __builtin___memcpy_chk (__dest, __src, __len, __builtin_object_size (__dest, 0));
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memmove (void *__dest, const void *__src, size_t __len)
{
  return __builtin___memmove_chk (__dest, __src, __len, __builtin_object_size (__dest, 0));
}
# 58 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memset (void *__dest, int __ch, size_t __len)
{
# 71 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h" 3 4
  return __builtin___memset_chk (__dest, __ch, __len, __builtin_object_size (__dest, 0));
}




void __explicit_bzero_chk (void *__dest, size_t __len, size_t __destlen)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) explicit_bzero (void *__dest, size_t __len)
{
  __explicit_bzero_chk (__dest, __len, __builtin_object_size (__dest, 0));
}


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strcpy (char *__restrict __dest, const char *__restrict __src)
{
  return __builtin___strcpy_chk (__dest, __src, __builtin_object_size (__dest, 2 > 1));
}
# 102 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strncpy (char *__restrict __dest, const char *__restrict __src, size_t __len)

{
  return __builtin___strncpy_chk (__dest, __src, __len, __builtin_object_size (__dest, 2 > 1));
}


extern char *__stpncpy_chk (char *__dest, const char *__src, size_t __n,
       size_t __destlen) __attribute__ ((__nothrow__ , __leaf__));
extern char *__stpncpy_alias (char *__dest, const char *__src, size_t __n) __asm__ ("" "stpncpy") __attribute__ ((__nothrow__ , __leaf__))
                                 ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) stpncpy (char *__dest, const char *__src, size_t __n)
{
  if (__builtin_object_size (__dest, 2 > 1) != (size_t) -1
      && (!__builtin_constant_p (__n) || __n > __builtin_object_size (__dest, 2 > 1)))
    return __stpncpy_chk (__dest, __src, __n, __builtin_object_size (__dest, 2 > 1));
  return __stpncpy_alias (__dest, __src, __n);
}


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strcat (char *__restrict __dest, const char *__restrict __src)
{
  return __builtin___strcat_chk (__dest, __src, __builtin_object_size (__dest, 2 > 1));
}


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strncat (char *__restrict __dest, const char *__restrict __src, size_t __len)

{
  return __builtin___strncat_chk (__dest, __src, __len, __builtin_object_size (__dest, 2 > 1));
}
# 496 "/usr/include/string.h" 2 3 4




# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/alloc.h" 2
# 21 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/dbuffer.h" 1
# 45 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/dbuffer.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/types.h" 1
# 17 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/types.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base-types.h" 1
# 22 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base-types.h"
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 37 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 1 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 1 3 4
# 13 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 3 4
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 6 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 2 3 4




typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
# 40 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 3 4
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h" 1 3 4



struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h" 1 3 4



struct _IO_FILE;


typedef struct _IO_FILE FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 3 4
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;




typedef void _IO_lock_t;





struct _IO_FILE
{
  int _flags;


  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;


  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset;


  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;







  __off64_t _offset;

  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
# 44 "/usr/include/stdio.h" 2 3 4
# 52 "/usr/include/stdio.h" 3 4
typedef __gnuc_va_list va_list;
# 84 "/usr/include/stdio.h" 3 4
typedef __fpos_t fpos_t;




typedef __fpos64_t fpos64_t;
# 133 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 134 "/usr/include/stdio.h" 2 3 4



extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;






extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));



extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));
# 173 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) __attribute__ ((__warn_unused_result__));
# 183 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile64 (void) __attribute__ ((__warn_unused_result__));



extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 204 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));







extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);
# 227 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 246 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) __attribute__ ((__warn_unused_result__));




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
# 270 "/usr/include/stdio.h" 3 4
extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes) __attribute__ ((__warn_unused_result__));
extern FILE *freopen64 (const char *__restrict __filename,
   const char *__restrict __modes,
   FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));




extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 292 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));





extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));




extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));







extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));



extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
# 379 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));







extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__));




extern int scanf (const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__));

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));






extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                          __attribute__ ((__warn_unused_result__));
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                         __attribute__ ((__warn_unused_result__));
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 432 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__));





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));




extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 485 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);






extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 510 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);
# 521 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);
# 537 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);







extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     __attribute__ ((__warn_unused_result__));
# 603 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));







extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));







extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
# 673 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);







extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) __attribute__ ((__warn_unused_result__));




extern void rewind (FILE *__stream);
# 707 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) __attribute__ ((__warn_unused_result__));
# 731 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 750 "/usr/include/stdio.h" 3 4
extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence);
extern __off64_t ftello64 (FILE *__stream) __attribute__ ((__warn_unused_result__));
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos);
extern int fsetpos64 (FILE *__stream, const fpos64_t *__pos);



extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));



extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));







extern void perror (const char *__s);





# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 782 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 800 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) __attribute__ ((__warn_unused_result__));





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 840 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 858 "/usr/include/stdio.h" 3 4
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);




# 1 "/usr/include/x86_64-linux-gnu/bits/stdio.h" 1 3 4
# 46 "/usr/include/x86_64-linux-gnu/bits/stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return getc (stdin);
}




extern __inline __attribute__ ((__gnu_inline__)) int
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}





extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}


extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}




extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return putc (__c, stdout);
}




extern __inline __attribute__ ((__gnu_inline__)) int
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}





extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}


extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
# 127 "/usr/include/x86_64-linux-gnu/bits/stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0010) != 0);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0020) != 0);
}
# 865 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3 4
extern int __sprintf_chk (char *__restrict __s, int __flag, size_t __slen,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int __vsprintf_chk (char *__restrict __s, int __flag, size_t __slen,
      const char *__restrict __format,
      __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__));


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) sprintf (char *__restrict __s, const char *__restrict __fmt, ...)
{
  return __builtin___sprintf_chk (__s, 2 - 1,
      __builtin_object_size (__s, 2 > 1), __fmt, __builtin_va_arg_pack ());
}






extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsprintf (char *__restrict __s, const char *__restrict __fmt, __gnuc_va_list __ap)

{
  return __builtin___vsprintf_chk (__s, 2 - 1,
       __builtin_object_size (__s, 2 > 1), __fmt, __ap);
}



extern int __snprintf_chk (char *__restrict __s, size_t __n, int __flag,
      size_t __slen, const char *__restrict __format,
      ...) __attribute__ ((__nothrow__ , __leaf__));
extern int __vsnprintf_chk (char *__restrict __s, size_t __n, int __flag,
       size_t __slen, const char *__restrict __format,
       __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__));


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) snprintf (char *__restrict __s, size_t __n, const char *__restrict __fmt, ...)

{
  return __builtin___snprintf_chk (__s, __n, 2 - 1,
       __builtin_object_size (__s, 2 > 1), __fmt, __builtin_va_arg_pack ());
}






extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsnprintf (char *__restrict __s, size_t __n, const char *__restrict __fmt, __gnuc_va_list __ap)

{
  return __builtin___vsnprintf_chk (__s, __n, 2 - 1,
        __builtin_object_size (__s, 2 > 1), __fmt, __ap);
}





extern int __fprintf_chk (FILE *__restrict __stream, int __flag,
     const char *__restrict __format, ...);
extern int __printf_chk (int __flag, const char *__restrict __format, ...);
extern int __vfprintf_chk (FILE *__restrict __stream, int __flag,
      const char *__restrict __format, __gnuc_va_list __ap);
extern int __vprintf_chk (int __flag, const char *__restrict __format,
     __gnuc_va_list __ap);


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
fprintf (FILE *__restrict __stream, const char *__restrict __fmt, ...)
{
  return __fprintf_chk (__stream, 2 - 1, __fmt,
   __builtin_va_arg_pack ());
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (2 - 1, __fmt, __builtin_va_arg_pack ());
}







extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vprintf (const char *__restrict __fmt, __gnuc_va_list __ap)
{

  return __vfprintf_chk (stdout, 2 - 1, __fmt, __ap);



}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vfprintf (FILE *__restrict __stream,
   const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vfprintf_chk (__stream, 2 - 1, __fmt, __ap);
}


extern int __dprintf_chk (int __fd, int __flag, const char *__restrict __fmt,
     ...) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int __vdprintf_chk (int __fd, int __flag,
      const char *__restrict __fmt, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 3, 0)));


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
dprintf (int __fd, const char *__restrict __fmt, ...)
{
  return __dprintf_chk (__fd, 2 - 1, __fmt,
   __builtin_va_arg_pack ());
}





extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vdprintf (int __fd, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vdprintf_chk (__fd, 2 - 1, __fmt, __ap);
}
# 243 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3 4
extern char *__fgets_chk (char *__restrict __s, size_t __size, int __n,
     FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern char *__fgets_alias (char *__restrict __s, int __n, FILE *__restrict __stream) __asm__ ("" "fgets")

                                        __attribute__ ((__warn_unused_result__));
extern char *__fgets_chk_warn (char *__restrict __s, size_t __size, int __n, FILE *__restrict __stream) __asm__ ("" "__fgets_chk")


     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fgets called with bigger size than length " "of destination buffer")))
                                 ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
{
  if (__builtin_object_size (__s, 2 > 1) != (size_t) -1)
    {
      if (!__builtin_constant_p (__n) || __n <= 0)
 return __fgets_chk (__s, __builtin_object_size (__s, 2 > 1), __n, __stream);

      if ((size_t) __n > __builtin_object_size (__s, 2 > 1))
 return __fgets_chk_warn (__s, __builtin_object_size (__s, 2 > 1), __n, __stream);
    }
  return __fgets_alias (__s, __n, __stream);
}

extern size_t __fread_chk (void *__restrict __ptr, size_t __ptrlen,
      size_t __size, size_t __n,
      FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t __fread_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread")


            __attribute__ ((__warn_unused_result__));
extern size_t __fread_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_chk")




     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread called with bigger size * nmemb than length " "of destination buffer")))
                                 ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) size_t
fread (void *__restrict __ptr, size_t __size, size_t __n,
       FILE *__restrict __stream)
{
  if (__builtin_object_size (__ptr, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size)
   || !__builtin_constant_p (__n)
   || (__size | __n) >= (((size_t) 1) << (8 * sizeof (size_t) / 2)))
 return __fread_chk (__ptr, __builtin_object_size (__ptr, 0), __size, __n, __stream);

      if (__size * __n > __builtin_object_size (__ptr, 0))
 return __fread_chk_warn (__ptr, __builtin_object_size (__ptr, 0), __size, __n, __stream);
    }
  return __fread_alias (__ptr, __size, __n, __stream);
}
# 329 "/usr/include/x86_64-linux-gnu/bits/stdio2.h" 3 4
extern size_t __fread_unlocked_chk (void *__restrict __ptr, size_t __ptrlen,
        size_t __size, size_t __n,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__));
extern size_t __fread_unlocked_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread_unlocked")


                     __attribute__ ((__warn_unused_result__));
extern size_t __fread_unlocked_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_unlocked_chk")




     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread_unlocked called with bigger size * nmemb than " "length of destination buffer")))
                                        ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) size_t
fread_unlocked (void *__restrict __ptr, size_t __size, size_t __n,
  FILE *__restrict __stream)
{
  if (__builtin_object_size (__ptr, 0) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size)
   || !__builtin_constant_p (__n)
   || (__size | __n) >= (((size_t) 1) << (8 * sizeof (size_t) / 2)))
 return __fread_unlocked_chk (__ptr, __builtin_object_size (__ptr, 0), __size, __n,
         __stream);

      if (__size * __n > __builtin_object_size (__ptr, 0))
 return __fread_unlocked_chk_warn (__ptr, __builtin_object_size (__ptr, 0), __size, __n,
       __stream);
    }


  if (__builtin_constant_p (__size)
      && __builtin_constant_p (__n)
      && (__size | __n) < (((size_t) 1) << (8 * sizeof (size_t) / 2))
      && __size * __n <= 8)
    {
      size_t __cnt = __size * __n;
      char *__cptr = (char *) __ptr;
      if (__cnt == 0)
 return 0;

      for (; __cnt > 0; --__cnt)
 {
   int __c = getc_unlocked (__stream);
   if (__c == (-1))
     break;
   *__cptr++ = __c;
 }
      return (__cptr - (char *) __ptr) / __size;
    }

  return __fread_unlocked_alias (__ptr, __size, __n, __stream);
}
# 868 "/usr/include/stdio.h" 2 3 4






# 23 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base-types.h" 2



# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4







# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 10 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdint.h" 2 3 4
# 27 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base-types.h" 2

# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/limits.h" 1 3 4
# 34 "/usr/lib/gcc/x86_64-linux-gnu/9/include/limits.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/syslimits.h" 1 3 4






# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/limits.h" 1 3 4
# 194 "/usr/lib/gcc/x86_64-linux-gnu/9/include/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 26 "/usr/include/limits.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/limits.h" 2 3 4
# 183 "/usr/include/limits.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 2 3 4
# 161 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 1 3 4
# 38 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 39 "/usr/include/x86_64-linux-gnu/bits/local_lim.h" 2 3 4
# 162 "/usr/include/x86_64-linux-gnu/bits/posix1_lim.h" 2 3 4
# 184 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/posix2_lim.h" 1 3 4
# 188 "/usr/include/limits.h" 2 3 4
# 195 "/usr/lib/gcc/x86_64-linux-gnu/9/include/limits.h" 2 3 4
# 8 "/usr/lib/gcc/x86_64-linux-gnu/9/include/syslimits.h" 2 3 4
# 35 "/usr/lib/gcc/x86_64-linux-gnu/9/include/limits.h" 2 3 4
# 29 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base-types.h" 2






# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdbool.h" 1 3 4
# 36 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base-types.h" 2
# 65 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base-types.h"
 
# 65 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base-types.h"
typedef int socket_t;





 typedef signed char int8;



 typedef unsigned char uint8;




 typedef short int16;



 typedef unsigned short uint16;




 typedef int int32;



 typedef unsigned int uint32;
# 111 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base-types.h"
  typedef unsigned long long uint64;



  typedef long long int64;
# 146 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base-types.h"
 struct _object;

 struct _typeobject;
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/types.h" 2
# 27 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/types.h"
typedef struct {
        int integer;
        char *string;
} tuple_int_string_t;


typedef struct {
        size_t len;
        uint8 *str;
} byte_string_t;
# 70 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/types.h"
typedef struct {
        uint8 *data;
        size_t len;
} buffer_t;
# 103 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/types.h"
typedef struct {
        const uint8 *data;
        size_t len;
} bytes_t;
# 117 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/types.h"
typedef struct { uint32 c; } atomic_counter_t;






typedef uint64 logical_address_t;



typedef uint64 physical_address_t;



typedef uint64 generic_address_t;



typedef uint64 linear_address_t;
# 176 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/types.h"
typedef void lang_void;





typedef struct conf_object conf_object_t;
# 46 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/dbuffer.h" 2






typedef struct dbuffer dbuffer_t;
# 22 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/frags.h" 1
# 20 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/frags.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/help-macros.h" 1
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/help-macros.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/strbuf.h" 1
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/help-macros.h" 2
# 21 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/frags.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/swabber.h" 1
# 22 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/frags.h" 2
# 54 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/frags.h"
typedef struct frags frags_t;
# 23 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2



# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/attr-value.h" 1
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/attr-value.h"
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h" 1 3 4
# 20 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/attr-value.h" 2



# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/version.h" 1
# 23 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/version.h"
__attribute__((visibility ("default"))) const char *SIM_version(void);
__attribute__((visibility ("default"))) const char *SIM_version_base(void);
__attribute__((visibility ("default"))) const char *SIM_version_major(void);
__attribute__((visibility ("default"))) char *SIM_vmxmon_version(void);
__attribute__((visibility ("default"))) char *SIM_copyright(void);
__attribute__((visibility ("default"))) void SIM_register_copyright(const char *NOTNULL str);

__attribute__((visibility ("default"))) void SIM_license(void);
__attribute__((visibility ("default"))) char *SIM_license_file(const char *format);

__attribute__((visibility ("default"))) void VT_deprecate(int depr_build_id,
                           const char *NOTNULL warn_msg,
                           const char *NOTNULL ref_msg);

__attribute__((visibility ("default"))) void OLD_copyright(void);
# 24 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/attr-value.h" 2
# 109 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/attr-value.h"
typedef struct attr_value attr_value_t;
# 712 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/attr-value.h"
__attribute__((visibility ("default"))) 
# 712 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/attr-value.h" 3 4
        _Bool 
# 712 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/attr-value.h"
             VT_attr_values_equal(attr_value_t a1, attr_value_t a2);
# 27 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/callbacks.h" 1
# 40 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/callbacks.h"
__attribute__((visibility ("default"))) void SIM_run_unrestricted(
        conf_object_t *NOTNULL obj,
        void (*NOTNULL func)(conf_object_t *obj, lang_void *param),
        lang_void *user_data);
# 28 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/clock.h" 1
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/clock.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/model-iface/cycle.h" 1
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/model-iface/cycle.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/event.h" 1
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/event.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/time.h" 1
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/time.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h" 1
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/sobject.h" 1
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h" 2

# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/vect.h" 1
# 21 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h" 2





typedef enum {
        Sim_Attr_Required = 0,
        Sim_Attr_Optional = 1,

        Sim_Attr_Session = 3,
        Sim_Attr_Pseudo = 4,

        Sim_Attr_Integer_Indexed = 0x1000,
        Sim_Attr_String_Indexed = 0x2000,
        Sim_Attr_List_Indexed = 0x4000,

        Sim_Attr_Persistent = 0x20000,


        Sim_Attr_Flag_Mask = 0xff,

        Sim_Init_Phase_Shift = 8,
        Sim_Init_Phase_0 = 0 << Sim_Init_Phase_Shift,
        Sim_Init_Phase_1 = 1 << Sim_Init_Phase_Shift,
        Sim_Init_Phase_Bits = 2,
        Sim_Init_Phase_Mask = (1 << Sim_Init_Phase_Bits) - 1,

        Sim_Init_Phase_Pre1 =
                            (-1 & Sim_Init_Phase_Mask) << Sim_Init_Phase_Shift,
        Sim_Attr_Class = 0x8000,




        Sim_Attr_Internal = 0x10000,
        Sim_Attr_Doc = 0x100000,
        Sim_Attr_CB_Data = 0x200000,
        Sim_Attr_Legacy = 0x400000,
        Sim_Attr_Weak_Ref = 0x800000,

        Sim_Attr_Read_Only = 0x40000,
        Sim_Attr_Write_Only = 0x80000
} attr_attr_t;
# 116 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
typedef enum {
        Sim_Set_Ok,
        Sim_Set_Object_Not_Found,
        Sim_Set_Interface_Not_Found,
        Sim_Set_Illegal_Value,
        Sim_Set_Illegal_Type,
        Sim_Set_Illegal_Index,
        Sim_Set_Attribute_Not_Found,
        Sim_Set_Not_Writable,

        Sim_Set_Error_Types
} set_error_t;
# 139 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
typedef enum {
        Sim_Class_Kind_Vanilla = 0,
        Sim_Class_Kind_Session = 1,

        Sim_Class_Kind_Pseudo = 2,

        Sim_Class_Kind_Extension = 3,

} class_kind_t;

typedef struct conf_class conf_class_t;
# 246 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
typedef struct class_data {
        conf_object_t *(*alloc_object)(lang_void *data);
        lang_void *(*init_object)(conf_object_t *obj, lang_void *data);
        void (*finalize_instance)(conf_object_t *obj);

        void (*pre_delete_instance)(conf_object_t *obj);
        int (*delete_instance)(conf_object_t *obj);

        const char *description;
        const char *class_desc;
        class_kind_t kind;
} class_data_t;
# 361 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
typedef struct class_info {
        conf_object_t *(*alloc)(conf_class_t *cls);
        lang_void *(*init)(conf_object_t *obj);
        void (*finalize)(conf_object_t *obj);
        void (*objects_finalized)(conf_object_t *obj);

        void (*deinit)(conf_object_t *obj);
        void (*dealloc)(conf_object_t *obj);

        const char *description;
        const char *short_desc;
        class_kind_t kind;
} class_info_t;
# 412 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
__attribute__((visibility ("default"))) conf_class_t *SIM_register_class(
        const char *NOTNULL name,
        const class_data_t *NOTNULL class_data);
__attribute__((visibility ("default"))) void SIM_register_class_alias(const char *NOTNULL alias,
                                       const char *NOTNULL name);

__attribute__((visibility ("default"))) conf_class_t *SIM_create_class(
        const char *NOTNULL name, const class_info_t *NOTNULL class_info);

__attribute__((visibility ("default"))) void SIM_extend_class(conf_class_t *NOTNULL cls,
                               conf_class_t *NOTNULL ext);

__attribute__((visibility ("default"))) conf_class_t *SIM_copy_class(const char *NOTNULL name,
                                      const conf_class_t *NOTNULL src_cls,
                                      const char *desc);

__attribute__((visibility ("default"))) const char *SIM_get_class_name(
        const conf_class_t *NOTNULL class_data);

__attribute__((visibility ("default"))) void VT_set_constructor_data(
        conf_class_t *NOTNULL cls, lang_void *data);
# 441 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
__attribute__((visibility ("default"))) void SIM_require_object(conf_object_t *NOTNULL obj);
# 451 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
static inline __attribute__ ((always_inline)) conf_class_t *
SIM_object_class(const conf_object_t *NOTNULL obj)
{ return (conf_class_t *)sobject_class(&obj->sobj); }

__attribute__((visibility ("default"))) const char *SIM_object_name(const conf_object_t *NOTNULL obj);
__attribute__((visibility ("default"))) const char *SIM_object_id(const conf_object_t *NOTNULL obj);

__attribute__((visibility ("default"))) 
# 458 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h" 3 4
        _Bool 
# 458 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
             SIM_object_is_configured(const conf_object_t *NOTNULL obj);
__attribute__((visibility ("default"))) void SIM_set_object_configured(conf_object_t *NOTNULL obj);







__attribute__((visibility ("default"))) conf_object_t *SIM_port_object_parent(conf_object_t *NOTNULL obj);
__attribute__((visibility ("default"))) conf_object_t *SIM_object_parent(conf_object_t *NOTNULL obj);

__attribute__((visibility ("default"))) conf_object_t *SIM_object_descendant(conf_object_t *obj,
                                              const char *NOTNULL relname);
__attribute__((visibility ("default"))) struct _object *VT_object_iterator(conf_object_t *obj);
__attribute__((visibility ("default"))) struct _object *VT_shallow_object_iterator(conf_object_t *obj,
                                                  
# 474 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h" 3 4
                                                 _Bool 
# 474 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
                                                      expand_arrays);
# 492 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
typedef attr_value_t (*get_attr_t)(lang_void *ptr,
                                   conf_object_t *obj,
                                   attr_value_t *idx);




typedef attr_value_t (*get_class_attr_t)(lang_void *ptr,
                                         conf_class_t *c,
                                         attr_value_t *idx);


typedef set_error_t (*set_attr_t)(lang_void *ptr,
                                  conf_object_t *obj,
                                  attr_value_t *val,
                                  attr_value_t *idx);




typedef set_error_t (*set_class_attr_t)(lang_void *ptr,
                                        conf_class_t *c,
                                        attr_value_t *val,
                                        attr_value_t *idx);


__attribute__((visibility ("default"))) int SIM_register_typed_attribute(
        conf_class_t *NOTNULL cls, const char *NOTNULL name,
        get_attr_t get_attr, lang_void *user_data_get,
        set_attr_t set_attr, lang_void *user_data_set,
        attr_attr_t attr, const char *type, const char *idx_type,
        const char *desc);

__attribute__((visibility ("default"))) int SIM_register_typed_class_attribute(
        conf_class_t *NOTNULL cls, const char *NOTNULL name,
        get_class_attr_t get_attr, lang_void *user_data_get,
        set_class_attr_t set_attr, lang_void *user_data_set,
        attr_attr_t attr, const char *type, const char *idx_type,
        const char *desc);

__attribute__((visibility ("default"))) void SIM_register_attribute(
        conf_class_t *NOTNULL cls, const char *NOTNULL name,
        attr_value_t (*get_attr)(conf_object_t *),
        set_error_t (*set_attr)(conf_object_t *, attr_value_t *),
        attr_attr_t attr, const char *NOTNULL type, const char *desc);

__attribute__((visibility ("default"))) void SIM_register_class_attribute(
        conf_class_t *NOTNULL cls, const char *NOTNULL name,
        attr_value_t (*get_attr)(conf_class_t *),
        set_error_t (*set_attr)(conf_class_t *, attr_value_t *),
        attr_attr_t attr, const char *NOTNULL type, const char *desc);

__attribute__((visibility ("default"))) void SIM_register_attribute_with_user_data(
        conf_class_t *NOTNULL cls, const char *NOTNULL name,
        attr_value_t (*get_attr)(conf_object_t *, lang_void *),
        lang_void *user_data_get,
        set_error_t (*set_attr)(conf_object_t *, attr_value_t *, lang_void *),
        lang_void *user_data_set,
        attr_attr_t attr, const char *NOTNULL type, const char *desc);

__attribute__((visibility ("default"))) void SIM_register_class_attribute_with_user_data(
        conf_class_t *NOTNULL cls, const char *NOTNULL name,
        attr_value_t (*get_attr)(conf_class_t *, lang_void *),
        lang_void *user_data_get,
        set_error_t (*set_attr)(conf_class_t *, attr_value_t *, lang_void *),
        lang_void *user_data_set,
        attr_attr_t attr, const char *NOTNULL type, const char *desc);

__attribute__((visibility ("default"))) void SIM_ensure_partial_attr_order(
        conf_class_t *NOTNULL cls,
        const char *NOTNULL attr1, const char *NOTNULL attr2);

__attribute__((visibility ("default"))) void SIM_attribute_error(const char *NOTNULL msg);







typedef void interface_t;
typedef void class_interface_t;



__attribute__((visibility ("default"))) int SIM_register_interface(conf_class_t *NOTNULL cls,
                                    const char *NOTNULL name,
                                    const interface_t *NOTNULL iface);

__attribute__((visibility ("default"))) int SIM_register_port_interface(conf_class_t *NOTNULL cls,
                                         const char *NOTNULL name,
                                         const interface_t *NOTNULL iface,
                                         const char *NOTNULL portname,
                                         const char *desc);

__attribute__((visibility ("default"))) void SIM_register_compatible_interfaces(conf_class_t *NOTNULL cls,
                                                 const char *NOTNULL name);

__attribute__((visibility ("default"))) void SIM_register_port(conf_class_t *NOTNULL cls,
                                const char *NOTNULL name,
                                conf_class_t *NOTNULL port_cls,
                                const char *desc);

__attribute__((visibility ("default"))) conf_class_t *SIM_register_simple_port(conf_class_t *NOTNULL cls,
                                                const char *NOTNULL name,
                                                const char *desc);



__attribute__((visibility ("default"))) const interface_t *SIM_get_interface(
        const conf_object_t *NOTNULL obj,
        const char *NOTNULL name);
__attribute__((visibility ("default"))) const interface_t *SIM_c_get_interface(
        const conf_object_t *NOTNULL obj,
        const char *NOTNULL name);
__attribute__((visibility ("default"))) const class_interface_t *SIM_get_class_interface(
        const conf_class_t *NOTNULL cls,
        const char *NOTNULL name);
__attribute__((visibility ("default"))) const class_interface_t *SIM_c_get_class_interface(
        const conf_class_t *NOTNULL cls,
        const char *NOTNULL name);

__attribute__((visibility ("default"))) const interface_t *SIM_get_port_interface(
        const conf_object_t *NOTNULL obj,
        const char *NOTNULL name,
        const char *portname);
__attribute__((visibility ("default"))) const interface_t *SIM_c_get_port_interface(
        const conf_object_t *NOTNULL obj,
        const char *NOTNULL name,
        const char *portname);
__attribute__((visibility ("default"))) const class_interface_t *SIM_get_class_port_interface(
        const conf_class_t *NOTNULL cls,
        const char *NOTNULL name,
        const char *portname);
__attribute__((visibility ("default"))) const class_interface_t *SIM_c_get_class_port_interface(
        const conf_class_t *NOTNULL cls,
        const char *NOTNULL name,
        const char *portname);

typedef struct { int size, used; const interface_t * *elements; } interface_array_t;

__attribute__((visibility ("default"))) int VT_register_port_array_interface(
        conf_class_t *NOTNULL cls,
        const char *NOTNULL name,
        const interface_array_t *NOTNULL iface_list,
        const char *NOTNULL portname,
        const char *desc);

__attribute__((visibility ("default"))) 
# 640 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h" 3 4
        _Bool 
# 640 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/conf-object.h"
             SIM_marked_for_deletion(const conf_object_t *NOTNULL obj);
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/time.h" 2
# 64 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/time.h"
typedef int64 simtime_t;

typedef simtime_t cycles_t;

typedef int64 nano_secs_t;

__attribute__((visibility ("default"))) cycles_t SIM_cycle_count(conf_object_t *NOTNULL obj);
__attribute__((visibility ("default"))) double SIM_time(conf_object_t *NOTNULL obj);

__attribute__((visibility ("default"))) void SIM_stall_cycle(conf_object_t *NOTNULL obj, cycles_t cycles);
__attribute__((visibility ("default"))) void SIM_stall(conf_object_t *NOTNULL obj, double seconds);
__attribute__((visibility ("default"))) cycles_t SIM_stalled_until(conf_object_t *NOTNULL obj);
__attribute__((visibility ("default"))) cycles_t SIM_stall_count(conf_object_t *NOTNULL obj);

__attribute__((visibility ("default"))) conf_object_t *SIM_object_clock(const conf_object_t *NOTNULL obj);
__attribute__((visibility ("default"))) conf_object_t *SIM_picosecond_clock(conf_object_t *NOTNULL obj);
__attribute__((visibility ("default"))) void VT_set_object_clock(
        conf_object_t *NOTNULL obj, conf_object_t *clock);

__attribute__((visibility ("default"))) conf_object_t *VT_object_ps_clock(conf_object_t *NOTNULL obj);

__attribute__((visibility ("default"))) cycles_t VT_cycles_to_quantum_end(conf_object_t *NOTNULL obj);
# 20 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/event.h" 2





typedef enum {
        Sim_EC_No_Flags = 0,
        Sim_EC_Notsaved = 1,
        Sim_EC_Slot_Early = 2,

        Sim_EC_Slot_Late = 4,

        Sim_EC_Machine_Sync = 8,
        Sim_EC_No_Serialize = 16
} event_class_flag_t;
# 73 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/event.h"
typedef struct event_class event_class_t;

__attribute__((visibility ("default"))) event_class_t *SIM_register_event(
        const char *NOTNULL name,
        conf_class_t *cl,
        event_class_flag_t flags,
        void (*NOTNULL callback)(conf_object_t *obj, lang_void *data),
        void (*destroy)(conf_object_t *obj, lang_void *data),
        attr_value_t (*get_value)(conf_object_t *obj, lang_void *data),
        lang_void *(*set_value)(conf_object_t *obj, attr_value_t value),
        char *(*describe)(conf_object_t *obj, lang_void *data));

__attribute__((visibility ("default"))) void SIM_event_post_time(
        conf_object_t *NOTNULL clock, event_class_t *NOTNULL evclass,
        conf_object_t *NOTNULL obj, double seconds, lang_void *user_data);
__attribute__((visibility ("default"))) void SIM_event_post_cycle(
        conf_object_t *NOTNULL clock, event_class_t *NOTNULL evclass,
        conf_object_t *NOTNULL obj, cycles_t cycles, lang_void *user_data);

__attribute__((visibility ("default"))) void SIM_event_cancel_time(
        conf_object_t *NOTNULL clock, event_class_t *NOTNULL evclass,
        conf_object_t *NOTNULL obj,
        int (*pred)(lang_void *data, lang_void *match_data),
        lang_void *match_data);

__attribute__((visibility ("default"))) cycles_t SIM_event_find_next_cycle(
        conf_object_t *NOTNULL clock, event_class_t *NOTNULL evclass,
        conf_object_t *NOTNULL obj,
        int (*pred)(lang_void *data, lang_void *match_data),
        lang_void *match_data);
__attribute__((visibility ("default"))) double SIM_event_find_next_time(
        conf_object_t *NOTNULL clock, event_class_t *NOTNULL evclass,
        conf_object_t *NOTNULL obj,
        int (*pred)(lang_void *data, lang_void *match_data),
        lang_void *match_data);

__attribute__((visibility ("default"))) event_class_t *VT_get_event_class(
        conf_class_t *NOTNULL cl, const char *NOTNULL name);

__attribute__((visibility ("default"))) void VT_stacked_post(
        conf_object_t *NOTNULL obj,
        void (*NOTNULL func)(conf_object_t *obj, lang_void *param),
        lang_void *user_data);


typedef int64 pico_secs_t;


typedef simtime_t pc_step_t;

__attribute__((visibility ("default"))) void SIM_event_post_step(
        conf_object_t *NOTNULL clock, event_class_t *NOTNULL evclass,
        conf_object_t *NOTNULL obj, pc_step_t steps, lang_void *user_data);

__attribute__((visibility ("default"))) void SIM_event_cancel_step(
        conf_object_t *NOTNULL clock, event_class_t *NOTNULL evclass,
        conf_object_t *NOTNULL obj,
        int (*pred)(lang_void *data, lang_void *match_data),
        lang_void *match_data);
__attribute__((visibility ("default"))) pc_step_t SIM_event_find_next_step(
        conf_object_t *NOTNULL clock, event_class_t *NOTNULL evclass,
        conf_object_t *NOTNULL obj,
        int (*pred)(lang_void *data, lang_void *match_data),
        lang_void *match_data);

__attribute__((visibility ("default"))) pc_step_t SIM_step_count(conf_object_t *NOTNULL obj);
# 20 "/home/david/SIMICS/simics-6.0.185/src/include/simics/model-iface/cycle.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/local-time.h" 1
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/local-time.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/duration.h" 1
# 23 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/duration.h"
typedef struct { int64 t; } duration_t;
# 20 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/local-time.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/bigtime.h" 1
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/bigtime.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/int128.h" 1
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/int128.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/arith.h" 1
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/util/int128.h" 2





typedef struct {
        uint64 lo;
        int64 hi;
} int128;
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/bigtime.h" 2
# 43 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/bigtime.h"
typedef struct {
        int128 val;
} bigtime_t;
# 21 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/local-time.h" 2






typedef struct {



        conf_object_t *clock;

        bigtime_t t;
} local_time_t;
# 21 "/home/david/SIMICS/simics-6.0.185/src/include/simics/model-iface/cycle.h" 2

# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/pywrap.h" 1
# 23 "/home/david/SIMICS/simics-6.0.185/src/include/simics/model-iface/cycle.h" 2
# 145 "/home/david/SIMICS/simics-6.0.185/src/include/simics/model-iface/cycle.h"
typedef SIM_INTERFACE cycle_interface cycle_interface_t; SIM_INTERFACE cycle_interface {

        cycles_t (*get_cycle_count)(conf_object_t *queue);
        double (*get_time)(conf_object_t *queue);
        cycles_t (*cycles_delta)(conf_object_t *NOTNULL clock,
                                 double when);

        uint64 (*get_frequency)(conf_object_t *queue);

        void (*post_cycle)(
                conf_object_t *NOTNULL queue,
                event_class_t *NOTNULL evclass,
                conf_object_t *NOTNULL obj,
                cycles_t cycles,
                lang_void *user_data);
        void (*post_time)(
                conf_object_t *NOTNULL queue,
                event_class_t *NOTNULL evclass,
                conf_object_t *NOTNULL obj,
                double seconds,
                lang_void *user_data);

        void (*cancel)(
                conf_object_t *NOTNULL queue,
                event_class_t *NOTNULL evclass,
                conf_object_t *NOTNULL obj,
                int (*pred)(lang_void *data, lang_void *match_data),
                lang_void *match_data);

        cycles_t (*find_next_cycle)(
                conf_object_t *NOTNULL queue,
                event_class_t *NOTNULL evclass,
                conf_object_t *NOTNULL obj,
                int (*pred)(lang_void *data, lang_void *match_data),
                lang_void *match_data);

        double (*find_next_time)(
                conf_object_t *NOTNULL queue,
                event_class_t *NOTNULL evclass,
                conf_object_t *NOTNULL obj,
                int (*pred)(lang_void *data, lang_void *match_data),
                lang_void *match_data);

        attr_value_t (*events)(conf_object_t *NOTNULL obj);


        local_time_t (*get_time_in_ps)(conf_object_t *queue);
        cycles_t (*cycles_delta_from_ps)(conf_object_t *NOTNULL clock,
                                         local_time_t when);
        void (*post_time_in_ps)(
                conf_object_t *NOTNULL queue,
                event_class_t *NOTNULL evclass,
                conf_object_t *NOTNULL obj,
                duration_t picoseconds,
                lang_void *user_data);

        duration_t (*find_next_time_in_ps)(
                conf_object_t *NOTNULL queue,
                event_class_t *NOTNULL evclass,
                conf_object_t *NOTNULL obj,
                int (*pred)(lang_void *data, lang_void *match_data),
                lang_void *match_data);
};
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/clock.h" 2





__attribute__((visibility ("default"))) int SIM_register_clock(conf_class_t *NOTNULL cls,
                                const cycle_interface_t *NOTNULL iface);

__attribute__((visibility ("default"))) int VT_register_passive_clock(conf_class_t *NOTNULL cls,
                                       const cycle_interface_t *NOTNULL iface);
# 29 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/log.h" 1
# 51 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/log.h"
typedef enum {
        Sim_Log_Info,
        Sim_Log_Error,
        Sim_Log_Spec_Violation,
        Sim_Log_Unimplemented,
        Sim_Log_Critical,
        Sim_Log_Trace,
        Sim_Log_Num_Types,
} log_type_t;




typedef struct log_object log_object_t;

__attribute__((visibility ("default"))) void SIM_log_register_groups(conf_class_t *NOTNULL cls,
                                      const char *const *NOTNULL names);
__attribute__((visibility ("default"))) void VT_log_message(conf_object_t *NOTNULL obj, int level,
                             int group_ids,
                             log_type_t log_type, const char *NOTNULL message);
__attribute__((visibility ("default"))) void VT_log_message64(conf_object_t *NOTNULL obj, int level,
                               uint64 group_ids, log_type_t log_type,
                               const char *NOTNULL message);
__attribute__((visibility ("default"))) void SIM_log_message(conf_object_t *NOTNULL obj, int level,
                              uint64 group_ids, log_type_t log_type,
                              const char *NOTNULL message);

__attribute__((visibility ("default"))) __attribute__((cold)) void VT_critical_error(const char *NOTNULL short_msg,
                                              const char *NOTNULL long_msg);
# 117 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/log.h"
__attribute__((visibility ("default"))) __attribute__ ((pure)) unsigned SIM_log_level(
        const conf_object_t *NOTNULL obj);
__attribute__((visibility ("default"))) void SIM_set_log_level(conf_object_t *NOTNULL obj, unsigned level);
# 30 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/configuration.h" 1
# 23 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/configuration.h"
__attribute__((visibility ("default"))) 
# 23 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/configuration.h" 3 4
        _Bool 
# 23 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/configuration.h"
             SIM_is_restoring_state(conf_object_t *obj);


__attribute__((visibility ("default"))) 
# 26 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/configuration.h" 3 4
        _Bool 
# 26 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/configuration.h"
             VT_is_saving_persistent_data(void);

__attribute__((visibility ("default"))) conf_object_t *VT_object_cell(conf_object_t *NOTNULL obj);
__attribute__((visibility ("default"))) uint32 VT_get_map_generation(conf_object_t *NOTNULL obj);

__attribute__((visibility ("default"))) 
# 31 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/configuration.h" 3 4
        _Bool 
# 31 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/configuration.h"
             VT_is_reversing(void);

__attribute__((visibility ("default"))) 
# 33 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/configuration.h" 3 4
        _Bool 
# 33 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/configuration.h"
             SIM_is_loading_micro_checkpoint(conf_object_t *NOTNULL obj);
# 31 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2

# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/global-notifier.h" 1
# 73 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/global-notifier.h"
typedef enum {
        Sim_Global_Notify_Object_Delete = 100,
        Sim_Global_Notify_Objects_Finalized,
        Sim_Global_Notify_Message,

        Sim_Global_Notify_Before_Snapshot_Restore = 150,
        Sim_Global_Notify_After_Snapshot_Restore,
} global_notifier_type_t;



typedef struct global_notifier_callback global_notifier_callback_t;

__attribute__((visibility ("default"))) global_notifier_callback_t *SIM_add_global_notifier(
        global_notifier_type_t what,
        conf_object_t *subscriber,
        void (*NOTNULL callback)(
                conf_object_t *subscriber,
                lang_void *data),
        lang_void *data);

__attribute__((visibility ("default"))) global_notifier_callback_t *SIM_add_global_notifier_once(
        global_notifier_type_t what,
        conf_object_t *subscriber,
        void (*NOTNULL callback)(
                conf_object_t *subscriber,
                lang_void *data),
        lang_void *data);

__attribute__((visibility ("default"))) void SIM_delete_global_notifier(
        global_notifier_callback_t *NOTNULL handle);
# 33 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/hap-producer.h" 1
# 52 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/hap-producer.h"
typedef int hap_type_t;

__attribute__((visibility ("default"))) hap_type_t SIM_hap_add_type(
        const char *NOTNULL hap, const char *NOTNULL params,
        const char *param_desc, const char *index, const char *desc,
        int unused);
__attribute__((visibility ("default"))) void SIM_hap_remove_type(const char *NOTNULL hap);

__attribute__((visibility ("default"))) hap_type_t SIM_hap_get_number(const char *NOTNULL hap);
__attribute__((visibility ("default"))) const char *SIM_hap_get_name(hap_type_t hap);

__attribute__((visibility ("default"))) 
# 63 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/hap-producer.h" 3 4
        _Bool 
# 63 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/hap-producer.h"
             SIM_hap_is_active(hap_type_t hap);
__attribute__((visibility ("default"))) 
# 64 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/hap-producer.h" 3 4
        _Bool 
# 64 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/hap-producer.h"
             SIM_hap_is_active_obj(
        hap_type_t hap, conf_object_t *NOTNULL obj);
__attribute__((visibility ("default"))) 
# 66 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/hap-producer.h" 3 4
        _Bool 
# 66 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/hap-producer.h"
             SIM_hap_is_active_obj_idx(
        hap_type_t hap, conf_object_t *NOTNULL obj, int64 index);
# 80 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/hap-producer.h"
__attribute__((visibility ("default"))) int SIM_hap_occurred(hap_type_t hap, conf_object_t *obj,
                              int64 value, attr_value_t *NOTNULL list);
__attribute__((visibility ("default"))) int SIM_hap_occurred_always(
        hap_type_t hap, conf_object_t *obj,
        int64 value, attr_value_t *NOTNULL list);

__attribute__((visibility ("default"))) attr_value_t VT_hap_global_callback_ranges(hap_type_t hap);
# 34 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 1
# 17 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/breakpoints.h" 1
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/breakpoints.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/processor/types.h" 1
# 50 "/home/david/SIMICS/simics-6.0.185/src/include/simics/processor/types.h"
typedef enum {
        Sim_DI_Instruction = 0,
        Sim_DI_Data = 1
} data_or_instr_t;







typedef enum {
        Sim_Access_Read = 1,
        Sim_Access_Write = 2,
        Sim_Access_Execute = 4
} access_t;
# 90 "/home/david/SIMICS/simics-6.0.185/src/include/simics/processor/types.h"
typedef enum {
        Sim_CPU_Mode_User = 0,
        Sim_CPU_Mode_Supervisor = 1,
        Sim_CPU_Mode_Hypervisor
} processor_mode_t;

typedef enum {
        Sim_Endian_Little,
        Sim_Endian_Big
} cpu_endian_t;

typedef struct {
        int valid;
        physical_address_t address;
        physical_address_t block_start;
        physical_address_t block_end;
} physical_block_t;
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/breakpoints.h" 2
# 29 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/breakpoints.h"
typedef enum {
        Sim_Break_Physical = 0,
        Sim_Break_Virtual = 1,
        Sim_Break_Linear = 2
} breakpoint_kind_t;


typedef int breakpoint_id_t;

typedef uintptr_t breakpoint_handle_t;



typedef struct {
        breakpoint_handle_t handle;
        access_t read_write_execute;
        generic_address_t start;
        generic_address_t end;
} breakpoint_info_t;

typedef struct {
        int num_breakpoints;
        breakpoint_info_t *breakpoints;
} breakpoint_set_t;
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 2

# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/map-target.h" 1
# 17 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/map-target.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory.h" 1
# 24 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory.h"
typedef enum {
        Sim_Addr_Space_Conf,
        Sim_Addr_Space_IO,
        Sim_Addr_Space_Memory
} addr_space_t;
# 49 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory.h"
typedef enum {
        Sim_RW_Read = 0,
        Sim_RW_Write = 1
} read_or_write_t;
# 77 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory.h"
typedef enum {
        Sim_Endian_Target,
        Sim_Endian_Host_From_BE,
        Sim_Endian_Host_From_LE
} endianness_t;


typedef enum swap_mode {
        Sim_Swap_None = 0,
        Sim_Swap_Bus = 1,
        Sim_Swap_Bus_Trans = 2,
        Sim_Swap_Trans = 3
} swap_mode_t;
# 139 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory.h"
typedef struct map_info {
        physical_address_t base;
        physical_address_t start;
        physical_address_t length;
        int function;
        int16 priority;
        int align_size;
        swap_mode_t reverse_endian;
} map_info_t;


typedef enum {
        Sim_Map_Ram,
        Sim_Map_Rom,
        Sim_Map_IO,
        Sim_Map_Port,
        Sim_Map_Translate = 0x100,
        Sim_Map_Translate_To_Space,
        Sim_Map_Translate_To_Ram,
        Sim_Map_Translate_To_Rom
} map_type_t;




typedef struct page page_t;
# 192 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory.h"
typedef struct map_list {
        map_type_t map_type;
        conf_object_t *object;
        const char *port;







        conf_object_t *target_object;
        const char *target_port;
        conf_object_t *bridge;
        map_info_t map_info;

        physical_address_t map_size;

        int deleted;
} map_list_t;
# 238 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory.h"
typedef int pseudo_exceptions_t;
# 289 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory.h"
typedef enum {
        Sim_PE_Cancelled = 1022, Sim_PE_Async_Required = 1023, Sim_PE_Deferred = 1024, Sim_PE_No_Exception = 1025, Sim_PE_Silent_Break = 1026, Sim_PE_Stop_Request = 1027, Sim_PE_Inquiry_Outside_Memory = 1028, Sim_PE_Inquiry_Unhandled = 1029, Sim_PE_Execute_Outside_Memory = 1030, Sim_PE_IO_Not_Taken = 1031, Sim_PE_IO_Error = 1032, Sim_PE_Stall_Cpu = 1033, Sim_PE_Instruction_Finished = 1034, Sim_PE_Default_Semantics = 1035, Sim_PE_Ignore_Semantics = 1036, Sim_PE_Last = 1037
} exception_type_t;




__attribute__((visibility ("default"))) const char *VT_describe_pseudo_exception(pseudo_exceptions_t ex);

__attribute__((visibility ("default"))) const char *SIM_describe_pseudo_exception(exception_type_t ex);

__attribute__((visibility ("default"))) void SIM_translation_changed(conf_object_t *NOTNULL obj);
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/map-target.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/direct-memory.h" 1
# 26 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/direct-memory.h"
typedef struct granted_mem granted_mem_t;

typedef granted_mem_t *direct_memory_handle_t;





typedef struct {



        access_t permission;
        access_t inhibit;
} direct_memory_t;


typedef uint64 direct_memory_ack_id_t;





typedef struct {
        conf_object_t *target;
        uint64 offs;

        access_t breakpoints;
        access_t tracers;
        access_t access;
} direct_memory_lookup_t;





typedef struct {



        unsigned len;
} direct_memory_tags_t;
# 19 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/map-target.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 1
# 28 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
typedef struct transaction transaction_t;




enum {
        Sim_Trn_Instr = 1,
        Sim_Trn_Write = 2,
        Sim_Trn_Control = 4,


        Sim_Trn_Prefetch = 8
};
# 74 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
typedef enum {
        Sim_Trans_Load = 0,
        Sim_Trans_Store = Sim_Trn_Write,
        Sim_Trans_Instr_Fetch = Sim_Trn_Instr,
        Sim_Trans_Prefetch = Sim_Trn_Prefetch | Sim_Trn_Control,
        Sim_Trans_Cache = Sim_Trn_Control
} mem_op_type_t;


typedef enum {
        Sim_Initiator_Illegal = 0x0,
        Sim_Initiator_CPU = 0x1000,
        Sim_Initiator_CPU_V9 = 0x1100,
        Sim_Initiator_CPU_X86 = 0x1200,
        Sim_Initiator_CPU_PPC = 0x1300,
        Sim_Initiator_CPU_Alpha = 0x1400,
        Sim_Initiator_CPU_MIPS = 0x1600,
        Sim_Initiator_CPU_ARM = 0x1700,
        Sim_Initiator_CPU_V8 = 0x1800,
        Sim_Initiator_CPU_H8 = 0x1900,
        Sim_Initiator_CPU_SH = 0x1a00,
        Sim_Initiator_Device = 0x2000,
        Sim_Initiator_PCI_Device = 0x2010,
        Sim_Initiator_Cache = 0x3000,


        Sim_Initiator_Other = 0x4000,
        Sim_Initiator_User_Defined = 0x5000,


} ini_type_t;
# 122 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
typedef enum {
        Sim_Block_Memhier = 1,

        Sim_Block_MMU = 2,
        Sim_Block_MMU_IOSTC = 4,


        Sim_Block_Breakpoint = 8,
        Sim_Block_Notmem = 16,
        Sim_Block_Endian = 32,
        Sim_Block_DSTC_Disabled = 64

} block_flag_t;
# 246 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
typedef struct generic_transaction {
        logical_address_t logical_address;
        physical_address_t physical_address;
        unsigned int size;
        mem_op_type_t type;
        unsigned int atomic:1;


        unsigned int inquiry:1;

        unsigned int non_coherent:1;



        unsigned int ignore:1;



        unsigned int may_stall:1;

        unsigned int reissue:1;


        unsigned int block_STC:1;
        unsigned int use_page_cache:1;

        unsigned int inverse_endian:1;


        unsigned int page_cross:2;




        unsigned int mem_hier_on_fetch:1;


        unsigned int block_flags;


        ini_type_t ini_type;
        conf_object_t *ini_ptr;

        exception_type_t exception;
# 306 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
        transaction_t *transaction;





} generic_transaction_t;
# 321 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
__attribute__((visibility ("default"))) attr_value_t SIM_get_mem_op_value_buf(
        const generic_transaction_t *NOTNULL mop);
__attribute__((visibility ("default"))) void SIM_set_mem_op_value_buf(
        generic_transaction_t *NOTNULL mop, attr_value_t value);
# 335 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) 
# 335 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 336 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_data(const generic_transaction_t *NOTNULL mop)
{
        return !(mop->type & Sim_Trn_Instr);
}


static inline __attribute__ ((always_inline)) 
# 342 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 343 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_instruction(const generic_transaction_t *NOTNULL mop)
{
        return (mop->type & Sim_Trn_Instr) != 0;
}
# 356 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) 
# 356 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 357 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_read(const generic_transaction_t *NOTNULL mop)
{
        return !(mop->type & Sim_Trn_Write);
}


static inline __attribute__ ((always_inline)) 
# 363 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 364 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_write(const generic_transaction_t *NOTNULL mop)
{
        return (mop->type & Sim_Trn_Write) != 0;
}
# 377 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) 
# 377 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 378 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_control(const generic_transaction_t *NOTNULL mop)
{
        return (mop->type & Sim_Trn_Control) != 0;
}
# 390 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) 
# 390 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 391 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_prefetch(const generic_transaction_t *NOTNULL mop)
{
        return (mop->type & Sim_Trn_Prefetch) != 0;
}
# 403 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) 
# 403 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 404 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_from_cpu(const generic_transaction_t *NOTNULL mop)
{
        return (mop->ini_type & 0xf000) == Sim_Initiator_CPU;
}
# 417 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) 
# 417 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 418 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_from_cpu_arch(const generic_transaction_t *NOTNULL mop,
                            ini_type_t arch)
{
        return (mop->ini_type & 0xff00) == arch;
}
# 431 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) 
# 431 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 432 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_from_device(const generic_transaction_t *NOTNULL mop)
{
        return (mop->ini_type & 0xf000) == Sim_Initiator_Device;
}
# 444 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) 
# 444 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 445 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_from_cache(const generic_transaction_t *NOTNULL mop)
{
        return (mop->ini_type & 0xf000) == Sim_Initiator_Cache;
}
# 461 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) mem_op_type_t
SIM_get_mem_op_type(const generic_transaction_t *NOTNULL mop)
{
        return mop->type;
}
# 478 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) void
SIM_set_mem_op_type(generic_transaction_t *NOTNULL mop, mem_op_type_t type)
{
        mop->type = type;
}

__attribute__((visibility ("default"))) const char *SIM_get_mem_op_type_name(mem_op_type_t type);

__attribute__((visibility ("default"))) uint64 SIM_get_mem_op_value_le(
        const generic_transaction_t *NOTNULL mop);
__attribute__((visibility ("default"))) uint64 SIM_get_mem_op_value_be(
        const generic_transaction_t *NOTNULL mop);
__attribute__((visibility ("default"))) uint64 SIM_get_mem_op_value_cpu(
        const generic_transaction_t *NOTNULL mop);

__attribute__((visibility ("default"))) void SIM_set_mem_op_value_le(generic_transaction_t *NOTNULL mop,
                                      uint64 value);
__attribute__((visibility ("default"))) void SIM_set_mem_op_value_be(generic_transaction_t *NOTNULL mop,
                                      uint64 value);
__attribute__((visibility ("default"))) void SIM_set_mem_op_value_cpu(generic_transaction_t *NOTNULL mop,
                                       uint64 value);
# 520 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) void
SIM_set_mem_op_physical_address(generic_transaction_t *NOTNULL mop,
                                physical_address_t pa)
{ mop->physical_address = pa; }


static inline __attribute__ ((always_inline)) physical_address_t
SIM_get_mem_op_physical_address(const generic_transaction_t *NOTNULL mop)
{ return mop->physical_address; }


static inline __attribute__ ((always_inline)) void
SIM_set_mem_op_virtual_address(generic_transaction_t *NOTNULL mop,
                               logical_address_t va)
{ mop->logical_address = va; }


static inline __attribute__ ((always_inline)) logical_address_t
SIM_get_mem_op_virtual_address(const generic_transaction_t *NOTNULL mop)
{ return mop->logical_address; }






static inline __attribute__ ((always_inline)) unsigned
SIM_get_mem_op_size(const generic_transaction_t *NOTNULL mop)
{ return mop->size; }







static inline __attribute__ ((always_inline)) 
# 556 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 557 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_is_atomic(const generic_transaction_t *NOTNULL mop)
{ return mop->atomic; }
# 567 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) void
SIM_set_mem_op_inquiry(generic_transaction_t *NOTNULL mop, 
# 568 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
                                                          _Bool 
# 568 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
                                                               inquiry)

  { mop->inquiry = inquiry; }





static inline __attribute__ ((always_inline)) 
# 576 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 577 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_get_mem_op_inquiry(const generic_transaction_t *NOTNULL mop)

  { return mop->inquiry; }




__attribute__((visibility ("default"))) void
SIM_set_mem_op_ignore(generic_transaction_t *NOTNULL mop, 
# 585 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
                                                         _Bool 
# 585 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
                                                              ignore);

__attribute__((visibility ("default"))) 
# 587 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
        _Bool

# 588 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_get_mem_op_ignore(const generic_transaction_t *NOTNULL mop);







static inline __attribute__ ((always_inline)) 
# 596 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h" 3 4
            _Bool

# 597 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
SIM_mem_op_may_stall(const generic_transaction_t *NOTNULL mop)
{ return mop->may_stall; }
# 607 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) void
SIM_set_mem_op_reissue(generic_transaction_t *NOTNULL mop)
{ mop->reissue = 1; }
# 620 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) void
SIM_mem_op_ensure_future_visibility(generic_transaction_t *NOTNULL mop)
{ mop->block_flags |= Sim_Block_Memhier; }
# 631 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) unsigned
SIM_get_mem_op_page_cross(const generic_transaction_t *NOTNULL mop)
{ return mop->page_cross; }







static inline __attribute__ ((always_inline)) void
SIM_set_mem_op_initiator(generic_transaction_t *NOTNULL mop,
                         ini_type_t type, conf_object_t *obj)
{ mop->ini_type = type; mop->ini_ptr = obj; }


static inline __attribute__ ((always_inline)) conf_object_t *
SIM_get_mem_op_initiator(const generic_transaction_t *NOTNULL mop)
{ return mop->ini_ptr; }


static inline __attribute__ ((always_inline)) ini_type_t
SIM_get_mem_op_ini_type(const generic_transaction_t *NOTNULL mop)
{ return mop->ini_type; }
# 663 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
static inline __attribute__ ((always_inline)) void
SIM_set_mem_op_exception(generic_transaction_t *NOTNULL mop,
                         exception_type_t exc)
{ mop->exception = exc; }


static inline __attribute__ ((always_inline)) exception_type_t
SIM_get_mem_op_exception(const generic_transaction_t *NOTNULL mop)
{ return mop->exception; }
# 703 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/memory-transaction.h"
struct arm_memory_transaction;
struct mips_memory_transaction;
struct pci_memory_transaction;
struct ppc_memory_transaction;
struct x86_memory_transaction;
# 20 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/map-target.h" 2
# 64 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/map-target.h"
typedef struct map_target map_target_t;

__attribute__((visibility ("default"))) map_target_t *SIM_new_map_target(conf_object_t *NOTNULL obj,
                                          const char *port,
                                          const map_target_t *chained_target);
__attribute__((visibility ("default"))) void SIM_free_map_target(map_target_t *mt);

__attribute__((visibility ("default"))) conf_object_t *SIM_map_target_object(
        const map_target_t *NOTNULL mt);
__attribute__((visibility ("default"))) const char *SIM_map_target_port(
        const map_target_t *NOTNULL mt);
__attribute__((visibility ("default"))) const map_target_t *SIM_map_target_target(
        const map_target_t *NOTNULL mt);

__attribute__((visibility ("default"))) exception_type_t VT_map_target_access(const map_target_t *NOTNULL mt,
                                               generic_transaction_t *mop);

__attribute__((visibility ("default"))) direct_memory_lookup_t VT_map_target_dm_lookup(
        const map_target_t *NOTNULL mt, conf_object_t *requester,
        physical_address_t addr, uint64 size, access_t access);

__attribute__((visibility ("default"))) 
# 85 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/map-target.h" 3 4
        _Bool 
# 85 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/map-target.h"
             SIM_map_target_flush(const map_target_t *NOTNULL mt,
                                   uint64 base, uint64 size, access_t access);
# 20 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 2
# 106 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
typedef enum {
        Sim_Translation_Dynamic = 1,
        Sim_Translation_Ambiguous = 2
} translation_flags_t;

typedef struct {
        const map_target_t *target;

        physical_address_t base;
        physical_address_t start;
        physical_address_t size;

        translation_flags_t flags;
} translation_t;
# 178 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
typedef enum {
        Sim_Atom_Id_illegal = 0,
        Sim_Atom_Id_list_end,
        Sim_Atom_Id_flags,
        Sim_Atom_Id_data,
        Sim_Atom_Id_size,
        Sim_Atom_Id_fill_value,
        Sim_Atom_Id_initiator,
        Sim_Atom_Id_user_data,
        Sim_Atom_Id_completion,
        Sim_Atom_Id_owner,
        Sim_Atom_Id_memop,
        Sim_Atom_Id_bytemap,
        Sim_Atom_Id_pcie_type = 0x100,
        Sim_Atom_Id_pcie_requester_id,
        Sim_Atom_Id_pcie_msg_type,
        Sim_Atom_Id_pcie_msg_route,
        Sim_Atom_Id_pcie_pasid,
        Sim_Atom_Id_pcie_at,
        Sim_Atom_Id_pcie_error_ret,
        Sim_Atom_Id_pcie_byte_count_ret,
        Sim_Atom_Id_pcie_device_id,
        Sim_Atom_Id_pcie_destination_segment,
        Sim_Atom_Id_pcie_link_negotiation,
        Sim_Atom_Id_arm_privileged = 0x200,
        Sim_Atom_Id_arm_nonsecure,
        Sim_Atom_Id_arm_memory_attributes,
        Sim_Atom_Id_arm_smmu_attributes,
        Sim_Atom_Id_arm_nsaid,
        Sim_Atom_Id_riscv_wg_wid = 0x300
} atom_id_t;
# 295 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
typedef struct {
        atom_id_t id;



} atom_t;
# 338 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
typedef struct transaction {



        struct transaction *prev;




} transaction_t;
# 389 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
typedef exception_type_t (*transaction_completion_t)(
        conf_object_t *obj, transaction_t *t, exception_type_t ex);

typedef struct transaction_bytemap transaction_bytemap_t;
# 427 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
typedef enum {
        Sim_Transaction_Fetch = 1 << 0,
        Sim_Transaction_Write = 1 << 1,
        Sim_Transaction_Control = 1 << 2,

        Sim_Transaction_Inquiry = 1 << 8,
        Sim_Transaction_Incoherent = 1 << 9,
        Sim_Transaction_Atomic = 1 << 10,
} transaction_flags_t;



__attribute__((visibility ("default"))) 
# 439 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 3 4
        _Bool 
# 439 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
             SIM_transaction_is_fetch(
        const transaction_t *NOTNULL t);
__attribute__((visibility ("default"))) 
# 441 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 3 4
        _Bool 
# 441 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
             SIM_transaction_is_write(
        const transaction_t *NOTNULL t);
__attribute__((visibility ("default"))) 
# 443 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 3 4
        _Bool 
# 443 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
             SIM_transaction_is_read(
        const transaction_t *NOTNULL t);
__attribute__((visibility ("default"))) 
# 445 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 3 4
        _Bool 
# 445 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
             SIM_transaction_is_inquiry(
        const transaction_t *NOTNULL t);
__attribute__((visibility ("default"))) 
# 447 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 3 4
        _Bool 
# 447 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
             SIM_transaction_is_deferrable(
        const transaction_t *NOTNULL t);
__attribute__((visibility ("default"))) unsigned SIM_transaction_size(
        const transaction_t *NOTNULL t);
__attribute__((visibility ("default"))) conf_object_t *SIM_transaction_initiator(
        const transaction_t *NOTNULL t);
__attribute__((visibility ("default"))) transaction_flags_t SIM_transaction_flags(
        const transaction_t *NOTNULL t);


__attribute__((visibility ("default"))) void SIM_complete_transaction(
        transaction_t *NOTNULL t,
        exception_type_t ex);
__attribute__((visibility ("default"))) transaction_t *SIM_defer_transaction(
        conf_object_t *obj,
        transaction_t *t);
__attribute__((visibility ("default"))) transaction_t *SIM_defer_owned_transaction(
        transaction_t *NOTNULL t);
__attribute__((visibility ("default"))) void SIM_replace_transaction(
        transaction_t *NOTNULL t_old,
        transaction_t *t_new);

__attribute__((visibility ("default"))) exception_type_t SIM_monitor_transaction(
        transaction_t *NOTNULL t,
        exception_type_t ex);
__attribute__((visibility ("default"))) exception_type_t SIM_monitor_chained_transaction(
        transaction_t *NOTNULL t,
        exception_type_t ex);
__attribute__((visibility ("default"))) exception_type_t SIM_transaction_wait(
        transaction_t *NOTNULL t,
        exception_type_t ex);
__attribute__((visibility ("default"))) exception_type_t SIM_poll_transaction(
        transaction_t *NOTNULL t);



__attribute__((visibility ("default"))) void SIM_set_transaction_bytes(
        const transaction_t *NOTNULL t,
        bytes_t bytes);
__attribute__((visibility ("default"))) void SIM_set_transaction_value_le(
        const transaction_t *NOTNULL t,
        uint64 val);
__attribute__((visibility ("default"))) void SIM_set_transaction_value_be(
        const transaction_t *NOTNULL t,
        uint64 val);
__attribute__((visibility ("default"))) void SIM_set_transaction_bytes_offs(
        const transaction_t *NOTNULL t,
        unsigned offs,
        bytes_t bytes);
__attribute__((visibility ("default"))) void SIM_set_transaction_bytes_constant(
        const transaction_t *NOTNULL t,
        uint8 value);
__attribute__((visibility ("default"))) void SIM_get_transaction_bytes(
        const transaction_t *NOTNULL t,
        buffer_t bytes);
__attribute__((visibility ("default"))) void SIM_get_transaction_bytes_offs(
        const transaction_t *NOTNULL t,
        unsigned offs,
        buffer_t buf,
        
# 506 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 3 4
       _Bool 
# 506 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
            zerofill_holes);

__attribute__((visibility ("default"))) uint64 SIM_get_transaction_value_le(
        const transaction_t *NOTNULL t);
__attribute__((visibility ("default"))) uint64 SIM_get_transaction_value_be(
        const transaction_t *NOTNULL t);



__attribute__((visibility ("default"))) exception_type_t SIM_issue_transaction(
        const map_target_t *NOTNULL mt,
        transaction_t *NOTNULL t,
        uint64 addr);



__attribute__((visibility ("default"))) 
# 522 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 3 4
        _Bool 
# 522 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
             SIM_inspect_address_routing(
        const map_target_t *NOTNULL mt,
        transaction_t *NOTNULL t,
        uint64 addr,
        
# 526 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 3 4
       _Bool 
# 526 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
            (*NOTNULL callback)(
                const map_target_t *mt,
                const transaction_t *t,
                uint64 addr,
                uint64 base,
                uint64 start,
                uint64 size,
                access_t access,
                translation_flags_t flags,
                lang_void *data),
        lang_void *data);

__attribute__((visibility ("default"))) 
# 538 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 3 4
        _Bool 
# 538 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
             SIM_inspect_breakpoints(
        const map_target_t *NOTNULL mt,
        transaction_t *NOTNULL t,
        uint64 start,
        uint64 end,
        
# 543 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h" 3 4
       _Bool 
# 543 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/transaction.h"
            (*NOTNULL callback)(
                conf_object_t *trigger_object,
                breakpoint_set_t bp_set,
                const transaction_t *t,
                uint64 addr,
                uint64 size,
                lang_void *data),
        lang_void *data);


__attribute__((visibility ("default"))) int64 SIM_get_transaction_id(
        transaction_t *t);
__attribute__((visibility ("default"))) void SIM_reconnect_transaction(
        transaction_t *t, int64 id);
__attribute__((visibility ("default"))) transaction_t *VT_get_transaction(
        int64 id);


__attribute__((visibility ("default"))) void VT_register_atom_class(
        const char *NOTNULL name,
        const char *pywrap_atom_from_type,
        const char *pywrap_type_from_atom);

__attribute__((visibility ("default"))) atom_id_t VT_get_atom_class_id(
        const char *NOTNULL name);
__attribute__((visibility ("default"))) atom_id_t VT_lookup_atom_class_id(
        const char *NOTNULL name);







__attribute__((visibility ("default"))) const atom_t *VT_lookup_transaction_atom(
        const transaction_t *NOTNULL t,
        atom_id_t id);

__attribute__((visibility ("default"))) void SIM_register_python_atom_type(
        const char *NOTNULL name);

static inline atom_t pywrap_atom_from_completion(transaction_completion_t val) { atom_t a = { (atom_id_t)0, (void *)(uintptr_t)val }; return a; } static inline transaction_completion_t pywrap_completion_from_atom(atom_t *NOTNULL a) { return (transaction_completion_t)(uintptr_t)a->ptr; } struct dummy_semicolon_eater_completion { int dummy; };
static inline atom_t pywrap_atom_from_flags(uint32 val) { atom_t a = { (atom_id_t)0, (void *)(uintptr_t)val }; return a; } static inline uint32 pywrap_flags_from_atom(atom_t *NOTNULL a) { return (uint32)(uintptr_t)a->ptr; } struct dummy_semicolon_eater_flags { int dummy; };
static inline atom_t pywrap_atom_from_user_data(lang_void * val) { atom_t a = { (atom_id_t)0, (void *)(uintptr_t)val }; return a; } static inline lang_void * pywrap_user_data_from_atom(atom_t *NOTNULL a) { return (lang_void *)(uintptr_t)a->ptr; } struct dummy_semicolon_eater_user_data { int dummy; };
static inline atom_t pywrap_atom_from_memop(generic_transaction_t * val) { atom_t a = { (atom_id_t)0, (void *)(uintptr_t)val }; return a; } static inline generic_transaction_t * pywrap_memop_from_atom(atom_t *NOTNULL a) { return (generic_transaction_t *)(uintptr_t)a->ptr; } struct dummy_semicolon_eater_memop { int dummy; };
static inline atom_t pywrap_atom_from_fill_value(uint8 val) { atom_t a = { (atom_id_t)0, (void *)(uintptr_t)val }; return a; } static inline uint8 pywrap_fill_value_from_atom(atom_t *NOTNULL a) { return (uint8)(uintptr_t)a->ptr; } struct dummy_semicolon_eater_fill_value { int dummy; };
static inline atom_t pywrap_atom_from_initiator(conf_object_t * val) { atom_t a = { (atom_id_t)0, (void *)(uintptr_t)val }; return a; } static inline conf_object_t * pywrap_initiator_from_atom(atom_t *NOTNULL a) { return (conf_object_t *)(uintptr_t)a->ptr; } struct dummy_semicolon_eater_initiator { int dummy; };
static inline atom_t pywrap_atom_from_owner(conf_object_t * val) { atom_t a = { (atom_id_t)0, (void *)(uintptr_t)val }; return a; } static inline conf_object_t * pywrap_owner_from_atom(atom_t *NOTNULL a) { return (conf_object_t *)(uintptr_t)a->ptr; } struct dummy_semicolon_eater_owner { int dummy; };
# 35 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2



# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/notifier.h" 1
# 82 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/notifier.h"
typedef enum {
        Sim_Notify_Queue_Change,
        Sim_Notify_Cell_Change,
        Sim_Notify_Frequency_Change,
        Sim_Notify_Concurrency_Change,
        Sim_Notify_Object_Delete,
        Sim_Notify_Map_Change,
        Sim_Notify_State_Change,
        Sim_Notify_Freerunning_Mode_Change,
        Sim_Notify_Bank_Register_Value_Change,
} notifier_type_t;

__attribute__((visibility ("default"))) notifier_type_t SIM_notifier_type(
        const char *NOTNULL type);



typedef struct notifier_handle notifier_handle_t;

__attribute__((visibility ("default"))) notifier_handle_t *SIM_add_notifier(
        conf_object_t *NOTNULL obj,
        notifier_type_t what,
        conf_object_t *subscriber,
        void (*callback)(
                conf_object_t *subscriber,
                conf_object_t *NOTNULL notifier,
                lang_void *data),
        lang_void *data);

__attribute__((visibility ("default"))) void SIM_delete_notifier(
        conf_object_t *NOTNULL obj,
        notifier_handle_t *handle);

__attribute__((visibility ("default"))) 
# 115 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/notifier.h" 3 4
        _Bool 
# 115 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/notifier.h"
             SIM_has_notifier(
        conf_object_t *NOTNULL obj,
        notifier_type_t what);

__attribute__((visibility ("default"))) 
# 119 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/notifier.h" 3 4
        _Bool 
# 119 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/notifier.h"
             SIM_class_has_notifier(
        conf_class_t *NOTNULL cls,
        notifier_type_t what);




__attribute__((visibility ("default"))) void SIM_register_notifier(
        conf_class_t *NOTNULL cls,
        notifier_type_t what,
        const char *desc);

__attribute__((visibility ("default"))) void SIM_register_tracked_notifier(
        conf_class_t *NOTNULL cls,
        notifier_type_t what,
        const char *desc,
        void (*subscribed_changed)(conf_object_t *obj, notifier_type_t type,
                                   
# 136 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/notifier.h" 3 4
                                  _Bool 
# 136 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/notifier.h"
                                       has_subscribers));

__attribute__((visibility ("default"))) void SIM_notify(
        conf_object_t *NOTNULL obj,
        notifier_type_t type);

__attribute__((visibility ("default"))) void SIM_describe_notifier(
        notifier_type_t type,
        const char *NOTNULL generic_desc);

__attribute__((visibility ("default"))) const char * SIM_notifier_description(
        notifier_type_t type);
# 39 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/object-locks.h" 1
# 23 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/object-locks.h"
typedef struct domain_lock domain_lock_t;

__attribute__((visibility ("default"))) domain_lock_t *SIM_acquire_object(
        conf_object_t *NOTNULL obj,
        const char *NOTNULL function_name,
        const char *NOTNULL source_location);

__attribute__((visibility ("default"))) domain_lock_t *SIM_acquire_target(
        conf_object_t *NOTNULL obj,
        const char *NOTNULL function_name,
        const char *NOTNULL source_location);

__attribute__((visibility ("default"))) domain_lock_t *SIM_acquire_cell(
        conf_object_t *NOTNULL obj,
        const char *NOTNULL function_name,
        const char *NOTNULL source_location);

__attribute__((visibility ("default"))) void SIM_release_object(
        conf_object_t *NOTNULL obj,
        domain_lock_t *lock);

__attribute__((visibility ("default"))) void SIM_release_target(
        conf_object_t *NOTNULL obj,
        domain_lock_t *lock);

__attribute__((visibility ("default"))) void SIM_release_cell(
        conf_object_t *NOTNULL obj,
        domain_lock_t *lock);

__attribute__((visibility ("default"))) domain_lock_t *SIM_acquire_object_for_execution(
        conf_object_t *NOTNULL obj);

__attribute__((visibility ("default"))) void SIM_yield_thread_domains(void);
# 114 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/object-locks.h"
__attribute__((visibility ("default"))) void VT_assert_object_lock(
        conf_object_t *NOTNULL obj,
        const char *NOTNULL func,
        const char *NOTNULL line);

__attribute__((visibility ("default"))) void VT_assert_cell_context(
        conf_object_t *NOTNULL obj,
        const char *NOTNULL file,
        const char *NOTNULL func);





__attribute__((visibility ("default"))) domain_lock_t *SIM_drop_thread_domains(void);
__attribute__((visibility ("default"))) void SIM_reacquire_thread_domains(domain_lock_t *NOTNULL lock);
# 40 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/sim-exception.h" 1
# 45 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/sim-exception.h"
typedef enum sim_exception {
        SimExc_No_Exception, SimExc_General, SimExc_Lookup, SimExc_Attribute, SimExc_IOError, SimExc_Index, SimExc_Memory, SimExc_Type, SimExc_Break, SimExc_PythonTranslation, SimExc_License, SimExc_IllegalValue, SimExc_InquiryOutsideMemory, SimExc_InquiryUnhandled, SimExc_InterfaceNotFound, SimExc_AttrNotFound, SimExc_AttrNotReadable, SimExc_AttrNotWritable,
        Sim_Exceptions
} sim_exception_t;
# 57 "/home/david/SIMICS/simics-6.0.185/src/include/simics/base/sim-exception.h"
__attribute__((visibility ("default"))) sim_exception_t SIM_clear_exception(void);
__attribute__((visibility ("default"))) sim_exception_t SIM_get_pending_exception(void);


__attribute__((visibility ("default"))) sim_exception_t DBG_get_pending_exception(void);

__attribute__((visibility ("default"))) const char *SIM_last_error(void);

__attribute__((visibility ("default"))) void VT_frontend_exception(sim_exception_t exc_type,
                                    const char *NOTNULL str);
# 41 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2



# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/obsolete/4_8.h" 1
# 45 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/obsolete/5.h" 1
# 17 "/home/david/SIMICS/simics-6.0.185/src/include/simics/obsolete/5.h"
# 1 "/home/david/SIMICS/simics-6.0.185/src/include/simics/simulator/embed.h" 1
# 166 "/home/david/SIMICS/simics-6.0.185/src/include/simics/simulator/embed.h"
__attribute__((visibility ("default"))) const char *SIM_get_init_arg_string(const char *NOTNULL name,
                                             const char *default_value);
__attribute__((visibility ("default"))) 
# 168 "/home/david/SIMICS/simics-6.0.185/src/include/simics/simulator/embed.h" 3 4
        _Bool 
# 168 "/home/david/SIMICS/simics-6.0.185/src/include/simics/simulator/embed.h"
             SIM_get_init_arg_boolean(const char *NOTNULL name,
                                       
# 169 "/home/david/SIMICS/simics-6.0.185/src/include/simics/simulator/embed.h" 3 4
                                      _Bool 
# 169 "/home/david/SIMICS/simics-6.0.185/src/include/simics/simulator/embed.h"
                                           default_value);

__attribute__((visibility ("default"))) void SIM_init_command_line(void);

__attribute__((visibility ("default"))) void SIM_main_loop(void);

__attribute__((visibility ("default"))) void VT_check_package_updates(void);
# 18 "/home/david/SIMICS/simics-6.0.185/src/include/simics/obsolete/5.h" 2
# 46 "/home/david/SIMICS/simics-6.0.185/src/include/simics/device-api.h" 2
# 19 "/home/david/Documents/Empotrados/Proyecto2-Embebidos/modules/my_iface-interface/my_iface-interface.h" 2
# 30 "/home/david/Documents/Empotrados/Proyecto2-Embebidos/modules/my_iface-interface/my_iface-interface.h"
typedef struct {
        int level;
        char *name;
} my_iface_data_t;
SIM_PY_ALLOCATABLE(my_iface_data_t);



typedef SIM_INTERFACE my_iface_interface my_iface_interface_t; SIM_INTERFACE my_iface_interface {
        
# 39 "/home/david/Documents/Empotrados/Proyecto2-Embebidos/modules/my_iface-interface/my_iface-interface.h" 3 4
       _Bool 
# 39 "/home/david/Documents/Empotrados/Proyecto2-Embebidos/modules/my_iface-interface/my_iface-interface.h"
            (*example_method)(conf_object_t *obj, int id,
                               my_iface_data_t *data);







};
# 2 "pyifaces-my_iface-interface.c" 2
