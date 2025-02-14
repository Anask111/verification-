`timescale 1ns/1ps
`include "tejas_dut.sv"
module tb_watchdog_osc_800khz;

    // Testbench signals
    reg i_pd_1v5;                // Power down signal
    real VDD1V5;                 // Supply voltage
    real GND = 0.0;              // Ground voltage
    real PSUB = 0.0;             // Substrate voltage
    wire o_clk_800khz_1v5;       // Output clock signal

    // Instantiate the module under test (MUT)
    watchdog_osc_800khz uut (
        .i_pd_1v5(i_pd_1v5),
        .VDD1V5(VDD1V5),
        .GND(GND),
        .PSUB(PSUB),
        .o_clk_800khz_1v5(o_clk_800khz_1v5)
    );

    // Clock monitoring
    initial begin
        $monitor("Time: %0t | i_pd_1v5: %b | VDD1V5: %0.2f | o_clk_800khz_1v5: %b", 
                 $time, i_pd_1v5, VDD1V5, o_clk_800khz_1v5);
    end

    // Testbench stimulus
    initial begin
        // Initialize signals
        i_pd_1v5 = 0;    // Power down inactive
        VDD1V5 = 1.2;    // Nominal voltage
        
        // Test case 1: Normal operation
        #10; 
        i_pd_1v5 = 0;    // Ensure clock is enabled
        
        // Test case 2: Power down active
//         #50;
//         i_pd_1v5 = 1;    // Disable clock output

//         // Test case 3: Voltage drop below minimum
//         #50;
//         VDD1V5 = 0.5;    // Voltage too low

//         // Test case 4: Voltage exceeds maximum
//         #50;
//         VDD1V5 = 2.0;    // Voltage too high

//         // Test case 5: Back to normal operation
//         #50;
//         VDD1V5 = 1.2;    // Valid voltage
//         i_pd_1v5 = 0;    // Clock enabled

        #1000;
// //         $stop;           // End simulation
        i_pd_1v5 = 1;
    end
  
  // End the simulation after a defined time
initial begin
  	$dumpfile("dump.vcd"); $dumpvars;
    #500; // Run for 500 ns or an appropriate amount of time
    $finish;
end


endmodule

