This project implements a hardware-accelerated encryption/decryption system using the 
Intel MAX10 FPGA on the DE10-Lite development board. The objective was to design a 
working communication pipeline where text is sent from an external device (Arduino Mega), 
encrypted or decrypted on the FPGA using a Substitution–Permutation Network (SPN), and 
returned for display on an LCD. 

This project demonstrate how modern cryptographic primitives can be implemented 
directly in hardware using VHDL. Hardware-based encryption offers advantages such as 
speed, parallelism, and tamper resistance compared to software-only solutions. 

In this repository you will see my thought process on how I wanted to complete this project
like lcd_driver.vhd, I orgianlly planned to run everything on DE-10 lite. I had an issue
trying to run the 1602 LCD and user input, so I decided to outsource the task with the 
MEGA2560 board since Arduino already has an LCD and an serial communication libary I 
utilzed it. The DE-10 is just doing the task of encryption/decryption of data recived by
the MEGA and then send it back to the MEGA to display it on the LCD. 

A small note is that the S-box was built more like a demo and not a full fledge S-box. 
There is a bug that when "m" is within the the input data and after the encryption/decryption
the output is is not "m" but is "!". 

The main top file is top_encryption_demo.vhd.
