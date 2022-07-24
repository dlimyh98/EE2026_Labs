`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2021 22:01:45
// Design Name: 
// Module Name: lab1_damien
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab1_damien(
       input SW0,
       input SW1,
       input SW2,
       input SW3,
       input SW4,
       input SW5,
       input SW6,
       input SW7,
       input SW8,
       input SW9,
       output LED0,
       output LED1,
       output LED2,
       output LED3,
       output LED4,
       output LED5,
       output LED6,
       output LED7,
       output LED8,
       output LED9,
       output [7:0]CAT,
       output [3:0]AN
      );
      
      assign LED0 = SW0;
      assign LED1 = SW1;
      assign LED2 = SW2;
      assign LED3 = SW3;
      assign LED4 = SW4;
      assign LED5 = SW5;
      assign LED6 = SW6;
      assign LED7 = SW7;
      assign LED8 = SW8;
      assign LED9 = SW9;
      
      // 7 Segment Display will only turn on if Passcode is correct
      // 7 Segment 0 = ON, 1 = OFF
      assign CAT = 8'b11000100;
      assign AN = ( (SW2 && SW3 && SW8 && SW9) == 1 && (~SW0 && ~SW1 && ~SW4 && ~SW5 && ~SW6 && ~SW7) == 1 ) ? 4'b0010 : 4'b1111;
     
endmodule
