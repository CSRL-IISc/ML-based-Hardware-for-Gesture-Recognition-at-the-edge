`timescale 1ns/1ps

module tb_L_2_1_0_SRAM;

    localparam M = 10;
    localparam N = 8;
    localparam DEPTH = (1 << M);

    // ---------------------------------
    // Clock & Reset
    // ---------------------------------
    reg clk;
    reg rst;

    // ---------------------------------
    // Preload interface
    // ---------------------------------
    reg         preload_en;
    reg [M-1:0] preload_addr;
    reg [N-1:0] preload_data1;
    reg [N-1:0] preload_data2;
    reg [N-1:0] preload_data3;
    reg [N-1:0] preload_data4;

    // ---------------------------------
    // DUT outputs
    // ---------------------------------
    wire [N-1:0] read_data_01;
    wire [N-1:0] read_data_02;
    wire [N-1:0] read_data_03;
    wire [N-1:0] read_data_04;
    wire         write_done;
    wire         done;

    // ---------------------------------
    // DUT
    // ---------------------------------
    L_2_1_0_SRAM_test #(
        .M(M),
        .N(N)
    ) dut (
        .clk(clk),
        .rst(rst),

        .preload_en(preload_en),
        .preload_addr(preload_addr),
        .preload_data1(preload_data1),
        .preload_data2(preload_data2),
        .preload_data3(preload_data3),
        .preload_data4(preload_data4),

        .read_data_01(read_data_01),
        .read_data_02(read_data_02),
        .read_data_03(read_data_03),
        .read_data_04(read_data_04),
        .write_done(write_done),
        .done(done)
    );

    // ---------------------------------
    // Clock (10 ns)
    // ---------------------------------
    always #5 clk = ~clk;

    // ---------------------------------
    // Golden memories (scoreboard)
    // ---------------------------------
    reg [N-1:0] mem1 [0:DEPTH-1];
    reg [N-1:0] mem2 [0:DEPTH-1];
    reg [N-1:0] mem3 [0:DEPTH-1];
    reg [N-1:0] mem4 [0:DEPTH-1];

    integer i;
    integer rd_count;

    // ---------------------------------
    // Test sequence
    // ---------------------------------
    initial begin
        clk = 0;
        rst = 1;

        preload_en    = 0;
        preload_addr  = 0;
        preload_data1 = 0;
        preload_data2 = 0;
        preload_data3 = 0;
        preload_data4 = 0;

        rd_count = 0;

        // Load hex files
        $display("📥 Loading hex files");
        $readmemh("weights1.hex", mem1);
        $readmemh("weights2.hex", mem2);
        $readmemh("weights3.hex", mem3);
        $readmemh("weights4.hex", mem4);

        // Release reset
        #20 rst = 0;
        $display("🔓 Reset released");

        // ---------------------------------
        // PRELOAD
        // ---------------------------------
        for (i = 0; i < DEPTH; i = i + 1) begin
            @(posedge clk);
            preload_en    <= 1'b1;
            preload_addr  <= i[M-1:0];
            preload_data1 <= mem1[i];
            preload_data2 <= mem2[i];
            preload_data3 <= mem3[i];
            preload_data4 <= mem4[i];
        end

        @(posedge clk);
        preload_en <= 1'b0;
        $display("✅ Preload completed");

        // ---------------------------------
        // Wait for WRITE phase
        // ---------------------------------
        wait(write_done);
        $display("✍️ WRITE phase done");

        // ---------------------------------
        // SCOREBOARD DURING READ
        // ---------------------------------
        rd_count = 0;
        while (!done) begin
            @(posedge clk);

            if (read_data_01 !== mem1[rd_count] ||
                read_data_02 !== mem2[rd_count] ||
                read_data_03 !== mem3[rd_count] ||
                read_data_04 !== mem4[rd_count]) begin

                $display("❌ FAIL @ addr %0d | exp=%h %h %h %h got=%h %h %h %h",
                    rd_count,
                    mem1[rd_count], mem2[rd_count],
                    mem3[rd_count], mem4[rd_count],
                    read_data_01, read_data_02,
                    read_data_03, read_data_04);
            end
            else begin
                $display("✅ PASS @ addr %0d | %h %h %h %h",
                    rd_count,
                    read_data_01, read_data_02,
                    read_data_03, read_data_04);
            end

            rd_count = rd_count + 1;
        end

        $display("🎉 TEST COMPLETED");
        $finish;
    end

endmodule
