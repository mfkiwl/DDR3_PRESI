//mode register 3
class mode_reg_3 extends uvm_object;
`uvm_object_utils(mode_reg_3);

string m_name_3 = "MODE_REG_3";

bit  [2:0] BA = 3'b011;
rand           bit MPR;
rand  bit [1:0] MPR_RF;
bit         RSV = 1'b0;



function new(string name = m_name_3);
super.new(name);
endfunction


constraint MPR_c     { MPR == 1'b0;    }        // Normal DRAM Operations
constraint MPR_RF_c  { MPR_RF == 2'b00;}        // Predefined Patterns 


function cfg_mode_reg_t pack;
return {BA,RSV,RSV,RSV,RSV,RSV,RSV,RSV,RSV,RSV,RSV,RSV,MPR,MPR_RF};
endfunction 

function void unpack(input cfg_mode_reg_t reg_cfg);
 {BA,RSV,RSV,RSV,RSV,RSV,RSV,RSV,RSV,RSV,RSV,RSV,MPR,MPR_RF} = reg_cfg;
endfunction

function string conv_to_str();
conv_to_str = $sformatf("MODE_REG_3:BA:%b,MPR:%b,MPR_RF:%b",BA,MPR,MPR_RF);
endfunction


endclass 
