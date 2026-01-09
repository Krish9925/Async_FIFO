class wr_bfm;

        wr_tx tx;

        task run();
          //  $display("WR_BFM is happening");
          forever begin
            fifo_common::wr_gen2bfm.get(tx);
            tx.print("wr-bfm");
          end
        endtask

endclass
