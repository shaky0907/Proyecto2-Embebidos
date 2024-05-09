
from stest import expect_equal
import dev_util as du
import conf


phys_mem = pre_conf_object('phys_mem', 'memory-space')
SIM_add_configuration([phys_mem], None)


icd = pre_conf_object('icd', 'ic_device')
icd.target_mem_space = conf.phys_mem
icd.input = "homero.bmp"
SIM_add_configuration([icd], None)


regs = du.bank_regs(conf.icd.bank.regs)


def test_attrs():
    print("Testing Attributes")
    expect_equal(conf.icd.input, "homero.bmp")

def test_regs():
    print("Testing Registers")
    expect_equal(regs.dest.read(),0x30000)
    expect_equal(regs.cmd.read(),0x0)
    for i in range(0,120200):
        expect_equal(regs.buffer[i].read(),0x0)
    
def test_image_load():
    print("Testing Image Load")
    print("image: ",icd.input)

    
    

test_attrs()
test_regs()
test_image_load()









