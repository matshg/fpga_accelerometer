
 add_fsm_encoding \
       {spi_master.state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} {111 111} }

 add_fsm_encoding \
       {select_logic.state} \
       { }  \
       {{000 000} {001 100} {010 011} {011 010} {100 001} }
