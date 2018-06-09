class ddr3_set_reg2_seq extends uvm_sequence #(ddr3_seq_item);
    `uvm_object_utils(ddr3_set_reg2_seq)

    string m_name = "DDR3_SET_REG2_SEQ";
    
    ddr3_rst_seq m_rst_seq;
    ddr3_mode_reg2_seq m_mode_reg_2_seq;

    function new (string name = m_name);
    super.new(name);
    endfunction


    task body;
    begin
        m_rst_seq = ddr3_rst_seq::type_id::create("m_rst_seq");
        m_mode_reg_2_seq = ddr3_mode_reg2_seq::type_id::create("m_mode_reg_2_seq");
        `uvm_info(m_name,"Starting reset sequence",UVM_HIGH)
        m_rst_seq.start(null,this);
        `uvm_info(m_name,"Starting mode reg 2 sequence",UVM_HIGH)
        m_mode_reg_2_seq.start(null,this);
    end
    endtask
    

    
endclass