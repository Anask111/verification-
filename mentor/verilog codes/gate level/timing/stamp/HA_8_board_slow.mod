/*
 Copyright (C) 1991-2013 Altera Corporation
 Your use of Altera Corporation's design tools, logic functions 
 and other software and tools, and its AMPP partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Altera Program License 
 Subscription Agreement, Altera MegaCore Function License 
 Agreement, or other applicable license agreement, including, 
 without limitation, that your use is for the sole purpose of 
 programming logic devices manufactured by Altera and sold by 
 Altera or its authorized distributors.  Please refer to the 
 applicable agreement for further details.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Slow Corner delays for the design using part EPM240ZM68I8
 with speed grade 8, core voltage Auto, and temperature 2147483647 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "HA";
DATE "03/04/2024 17:09:48";
PROGRAM "Quartus II 64-Bit";



INPUT a;
INPUT b;
OUTPUT s;
OUTPUT c;

/*Arc definitions start here*/
___16.521__delay:		DELAY  16.521 ;
___17.211__delay:		DELAY  17.211 ;
___19.422__delay:		DELAY  19.422 ;
___20.117__delay:		DELAY  20.117 ;

ENDMODEL
