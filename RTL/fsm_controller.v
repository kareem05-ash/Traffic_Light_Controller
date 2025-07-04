module fsm_controller
(
    input clk, 
    input rst,                      //Active high synchronous reset
    input side_car_detected, 
    input time_out,                 //Allows the transition to be done
    output reg [1:0] c_state,   
    output reg [1:0] n_state,
    output reg main_red,            //Main Road Signals
    output reg main_green, 
    output reg main_yellow, 
    output reg side_red,            //Side Road Signals
    output reg side_green, 
    output reg side_yellow
);
    
    localparam main_green__side_red  = 2'b00,
               main_red__side_yellow = 2'b01, 
               main_red__side_green  = 2'b11, 
               main_yellow__side_red = 2'b10;

    (*fsm = "gray"*)                //FSM Encoding

    always@(posedge clk)
        begin
            if(rst)
                begin
                    c_state <= main_green__side_red;
                    //n_state <= main_green__side_red;
                end
            else
                c_state <= n_state;
        end

    always@(*)
        begin
            case(c_state)
                main_green__side_red  : 
                    begin
                        main_red    = 0;
                        main_green  = 1;
                        main_yellow = 0;
                        side_red    = 1;
                        side_green  = 0;
                        side_yellow = 0;
                        if(time_out && side_car_detected)
                            n_state = main_red__side_yellow;
                        else 
                            n_state = main_green__side_red;
                    end
                main_red__side_yellow :
                    begin
                        main_red    = 1;
                        main_green  = 0;
                        main_yellow = 0;
                        side_red    = 0;
                        side_green  = 0;
                        side_yellow = 1;
                        if(time_out)
                            n_state = main_red__side_green;
                        else 
                            n_state = main_red__side_yellow;
                    end
                main_red__side_green  : 
                    begin
                        main_red    = 1;
                        main_green  = 0;
                        main_yellow = 0;
                        side_red    = 0;
                        side_green  = 1;
                        side_yellow = 0;
                        if(time_out)
                            n_state = main_yellow__side_red;
                        else 
                            n_state = main_red__side_green;
                    end
                main_yellow__side_red : 
                    begin
                        main_red    = 0;
                        main_green  = 0;
                        main_yellow = 1;
                        side_red    = 1;
                        side_green  = 0;
                        side_yellow = 0;
                        if(time_out)
                            n_state = main_green__side_red;
                        else 
                            n_state = main_yellow__side_red;
                    end
            endcase
        end
endmodule