class rd_bfm;

        rd_tx tx;

        task run();
            forever begin

                fifo_common::rd_gen2bfm.get(tx);
                tx.print("rd-bfm");

            end
        endtask

endclass
