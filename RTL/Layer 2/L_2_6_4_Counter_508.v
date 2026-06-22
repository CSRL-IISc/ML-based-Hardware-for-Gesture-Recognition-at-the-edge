`timescale 1ns/1ps
module L_2_6_4_Counter_508 (
    input wire clk,
    input wire rst,           // Active-high synchronous reset
	input input_start,
	input process_en,
	input [8:0] counter,
    output reg [2:0] out,     // 2-bit output to cycle through 0 to 3
    output reg pulse          // Pulse signal: high for 1 clock at every output change
);

    // Counter to count up to 509 cycles
    reg [8:0] cycle_counter = 9'b0;  // 9 bits needed for counting up to 509
	reg [8:0] cycle_counter_q;
	reg input_start_q;
	reg pulse_q,pulse_qq;
    always @(posedge clk) 
	begin
        if (rst) 
		begin
            out <= 3'd0;
            pulse <= 1'b0;
			pulse_q <= 1'b0;
			pulse_qq <= 1'b0;
			input_start_q <= 0;
			cycle_counter <= 0;
        end 
		else 
		begin
			cycle_counter <= counter;
			pulse <= pulse_q;
			pulse_q <= pulse_qq;
			if (counter < 9'd509) 
			begin
				pulse_qq <= 1'b0;   // Pulse is only high for 1 cycle
			end 
			else 
			begin				
				if((cycle_counter == 508) && (counter == 509))
				begin
					pulse_qq <= 1'b1;
					if(out == 3'b011)
						out <= 3'b100;
					else
					begin
						out <= out + 1;
					end	
				end
				else
				begin
					pulse_qq <= 0;					
				end
			end			
        end
    end
	

endmodule