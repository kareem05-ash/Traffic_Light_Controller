module top#(parameter green_signal_lifetime = 10, yellow_signal_lifetime = 3)
(
    input clk, 
    input rst,                      //Active high synchronous reset
    input side_car_detected, 
    output main_red,                //Main Road Signals
    output main_green, 
    output main_yellow, 
    output side_red,                //Side Road Signals
    output side_green, 
    output side_yellow
);
    wire [1:0] c_state, n_state;   //Internal Signals
    wire time_out;
                                    ////Mosule Instantiations////

    fsm_controller fsm(             //fsm_controller
                        .clk(clk),
                        .rst(rst),
                        .side_car_detected(side_car_detected),     
                        .time_out(time_out), 
                        .c_state(c_state), 
                        .n_state(n_state), 
                        .main_red(main_red), 
                        .main_green(main_green), 
                        .main_yellow(main_yellow), 
                        .side_red(side_red),
                        .side_green(side_green), 
                        .side_yellow(side_yellow)
    );

    timer #(
                     .green_signal_lifetime(green_signal_lifetime), 
                     .yellow_signal_lifetime(yellow_signal_lifetime)
    )
            timer(                  //timer
                .clk(clk), 
                .rst(rst), 
                .time_out(time_out), 
                .c_state(c_state)
    );
endmodule