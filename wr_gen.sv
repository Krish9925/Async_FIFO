class wr_gen;

        wr_tx tx;
        task run();

           // $display("WR_GEN Happening");


           case (fifo_common::test_name)

               "FULL": begin
                       writes(`FIFO_SIZE); 
               end

               "EMPTY": begin

               end

               "OVERFLOW": begin

               end

               "UNDERFLOW": begin

               end

               "CONCURRENT": begin

               end


           endcase
        endtask

task writes(input int N);


    repeat(N)begin;
         $display("Starting %0d writes", N);
         tx=new();
         tx.randomize();
         fifo_common::wr_gen2bfm.put(tx);
         tx.print("wr-gen");
    end

endtask
endclass
