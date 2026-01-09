module tb;

        fifo_env env;

        initial begin
            $value$plusargs("test_name=%0s", fifo_common::test_name);
            env=new();
            env.run();

        end


endmodule
