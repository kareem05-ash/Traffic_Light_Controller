module timer#(parameter green_signal_lifetime = 10 , yellow_signal_lifetime = 3)
(
    input clk, 
    input rst,                          //Active high synchronous reset
    input [1:0] c_state,
    output time_out                     //Allows the transition to be done
);

    reg [3:0] count;
    reg [1:0] prev_state;

    localparam main_green__side_red  = 2'b00,
               main_red__side_yellow = 2'b01, 
               main_red__side_green  = 2'b11, 
               main_yellow__side_red = 2'b10;

    always@(posedge clk)
        begin
            prev_state <= c_state;
            if(rst)
                count <= green_signal_lifetime;  //because the rst signal returns the system to the "Main_green" state
            else if(count == 0)
                    case(prev_state)
                        main_green__side_red  : count <= yellow_signal_lifetime;
                        main_red__side_yellow : count <= green_signal_lifetime;
                        main_red__side_green  : count <= yellow_signal_lifetime;
                        main_yellow__side_red : count <= green_signal_lifetime;
                    endcase
            else
                count <= count-1;
        end
    assign time_out = (count == 4'b0);
endmodule