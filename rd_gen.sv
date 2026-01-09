class rd_gen;

        rd_tx tx;

        task run();

           case (fifo_common::test_name)

               "FULL": begin
               end

               "EMPTY": begin
                   reads(`FIFO_SIZE);
               end

               "OVERFLOW": begin

               end

               "UNDERFLOW": begin

               end

               "CONCURRENT": begin

               end


           endcase

        endtask

        task reads(input int N);
            repeat(N)begin
                tx=new();
                tx.randomize();
                fifo_common::rd_gen2bfm.put(tx);
                tx.print("rd-gen");
            end
        endtask
                

endclass


