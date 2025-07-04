module top_tb();
    parameter green_signal_lifetime = 10, yellow_signal_lifetime = 3; 
    reg clk; 
    reg rst;                      //Active high synchronous reset
    reg side_car_detected; 
    wire main_red;                //Main Road Signals
    wire main_green; 
    wire main_yellow; 
    wire side_red;                //Side Road Signals
    wire side_green; 
    wire side_yellow;

    localparam main_green__side_red  = 2'b00,
               main_red__side_yellow = 2'b01, 
               main_red__side_green  = 2'b11, 
               main_yellow__side_red = 2'b10;

    top #(green_signal_lifetime, yellow_signal_lifetime) 
    dut (
        .clk(clk), 
        .rst(rst), 
        .side_car_detected(side_car_detected), 
        .main_red(main_red), 
        .main_green(main_green), 
        .main_yellow(main_yellow), 
        .side_red(side_red), 
        .side_green(side_green), 
        .side_yellow(side_yellow)
    );

    initial          //clk generation
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end

    initial          //monitor
        $monitor("rst = %d , time_out = %d , side_car_detected = %d , count = %d , c_state = %b ",
                    rst , dut.timer.time_out , side_car_detected , dut.timer.count , dut.c_state);

    initial          //stimulus
        begin
            rst = 1; side_car_detected = 0;
            repeat(3) @(negedge clk);            //activate the rst
            rst = 0;  @(negedge clk);            //release the rst

                    //first scenario : no car on side road

            rst = 1; side_car_detected = 0; 
            repeat(3)  @(negedge clk);          //now, count = 10, and we are in green__red state
            rst = 0;   @(negedge clk);          //release the rst
            repeat(green_signal_lifetime+2) @(negedge clk); 
                //waits more than green_signal_lifetime clk cycles to track the transition 
            if(dut.c_state == main_green__side_red)
                $display("First scenario Pass : no car on side road");
            else 
                $display("Error (First scenario : no car on side road) : rst = %d , time_out = %d , side_car_detected = %d , count = %d , c_state = %b ",
                    rst , dut.timer.time_out , side_car_detected , dut.timer.count , dut.c_state);

                    //second scenario : car detected on side raod

            rst = 1; side_car_detected = 1; 
            repeat(3)  @(negedge clk);          //now, count = 10, and we are in green__red state
            rst = 0;   @(negedge clk);          //release the rst
            repeat(green_signal_lifetime + yellow_signal_lifetime + 2) @(negedge clk);                            
                //waits 10 + 3 + 2 clk cycles to track the transition 
            if(dut.c_state == main_red__side_green)
                $display("Second scenario Pass : car detected on side raod");
            else 
                $display("Error (Second scenario : car detected on side raod) : rst = %d , time_out = %d , side_car_detected = %d , count = %d , c_state = %b ",
                    rst , dut.timer.time_out , side_car_detected , dut.timer.count , dut.c_state);

                    //third scenario : reset during any state

            rst = 1; side_car_detected = 0; 
            repeat(3)  @(negedge clk);          //now, count = 10, and we are in green__red state
            rst = 0;   @(negedge clk);          //release the rst
            if(dut.c_state == main_green__side_red)
                $display("Third scenario Pass : reset during any state");
            else 
                $display("Error (Third scenario : nreset during any state) : rst = %d , time_out = %d , side_car_detected = %d , count = %d , c_state = %b ",
                    rst , dut.timer.time_out , side_car_detected , dut.timer.count , dut.c_state);

                    //fourth scenario : multiple cars on side

            rst = 1; side_car_detected = 1; 
            repeat(3)  @(negedge clk);          //now, count = 10, and we are in green__red state
            rst = 0;   @(negedge clk);          //release the rst
            repeat(2*green_signal_lifetime + 2*yellow_signal_lifetime + 3) @(negedge clk);
                //the system lasts more than 2*green_signal_lifetime + 2*yellow_signal_lifetime clk cyclys. 
                //even the side_car_detected is always high, the system must be in Main_green state(default)
            if(dut.c_state == main_green__side_red)
                $display("Fourth scenario Pass : multiple cars on side");
            else 
                $display("Error (Fourth scenario : multiple cars on side) : rst = %d , time_out = %d , side_car_detected = %d , count = %d , c_state = %b ",
                    rst , dut.timer.time_out , side_car_detected , dut.timer.count , dut.c_state);
            #30; $stop;
        end
endmodule