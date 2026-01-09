`define WIDTH 8
`define FIFO_SIZE 16
`define PTR_WIDTH $clog2(`FIFO_SIZE)
            

class fifo_common;

       static string test_name;
       static mailbox wr_gen2bfm = new(); 

endclass
