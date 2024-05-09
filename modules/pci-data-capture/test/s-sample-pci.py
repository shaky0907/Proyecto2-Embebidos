# This Software is part of Simics. The rights to copy, distribute,
# modify, or otherwise make use of this Software may be licensed only
# pursuant to the terms of an applicable license agreement.
# 
# Copyright 2012-2021 Intel Corporation

# Tests for the sample PCI device.

import stest
import dev_util as du

# Set up a PCI bus and a sample PCI device
pci_bridge = du.Dev([du.PciBridge])  # Non-used PCI bridge, required by bus
pci_conf = SIM_create_object('memory-space', 'pci_conf', [])
pci_io = SIM_create_object('memory-space', 'pci_io', [])
pci_mem = SIM_create_object('memory-space', 'pci_mem', [])

pci_bus = SIM_create_object('pci-bus', 'pci_bus', [['conf_space', pci_conf],
                                                   ['io_space', pci_io],
                                                   ['memory_space', pci_mem],
                                                   ['bridge', pci_bridge.obj]])

pci = SIM_create_object('pci_data_capture', 'pci_data_capture',
                        [['pci_bus', pci_bus]])


# Test the PCI vendor and device IDs
def test_ids():
    stest.expect_equal(pci.attr.pci_config_vendor_id, 0x104c, "Bad vendor ID")
    stest.expect_equal(pci.attr.pci_config_device_id, 0xac10, "Bad device ID")

# Test the registers of the device
def test_regs():
    src = du.Register_LE(pci.bank.regs,0)
    stest.expect_equal(src.read(), 0x30000)

    cmd = du.Register_LE(pci.bank.regs,0x4)
    stest.expect_equal(cmd.read(), 120200)

# Test setting BAR to map the device in memory
def test_buffer():

    regs = du.bank_regs(pci.bank.regs)
    for i in range(0,120200):
        regs.buffer[i].write(0x36)
    
    for i in range(0,120200):
        stest.expect_equal(regs.buffer[i].read(),0x36)
    



test_ids()
test_regs()
test_buffer()

print("All tests passed.")
