# CoolrunnerII
### Tutorial

To use the Coolrunner II board, follow the instructions below.

Note: The board is called Coolrunner II because of the XC2C256 chip, which is the chip called Coolrunner. The board in rev B has an XC9572XL that is not mentioned in the Coolrunner II product documentation. I never understood why Xilinx did this or what the purpose of the XC9572XL is on this board since it is from the XC9500XL family, which has nothing to do with the Coolrunner II.

## Requirements:
## Installation:

# Xilinx ISE 14.7 method 1
* Recorded JTAG Model DLC9LP (I used a clone Made in P.R.C and it worked)
* Digilent XC2-XL PB299929 Rev. B board
* ISE Release Version 14.7 Version P.20131013
     The Xilinx_ISE_DS_Lin_14.7_1015_1.tar file to install on Linux is at: smb://orange01.local/opensoftware/Documentos/0000_Eletronica/Xilinx
     During installation, the ./xsetup program complained about the lack of lib
     libncurses.so.5 on Ubuntu 24.04 LTS, I had to do the following:
     ln -s /usr/lib/x86_64-linux-gnu/libncurses.so.6 /usr/lib/x86_64-linux-gnu/libncurses.so.5, after that it installed without any problem.

# Xilinx ISE 14.7 method 2
* Use the virtual machine that comes inside the Xilinx_ISE_DS_Lin_14.7_1015_1.tar file
      Note: Even using the virtual machine I had to install the ISE that is in this file, because the drivers for the cable are inside its directory, there                 must be a way to just install the drivers for the cable without installing the ISE, but I didn't look for this option.

# Installing drivers for the Model DLC9LP cable
* Run the script /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/digilent/install_digilent.sh

# Testing the installation:
    
Open the project Schematic-CPLDIntro3LEDinverse
* I placed a switch on pin P18, a LED on P38 and another LED on P39.

In the Process tab of ISE 14.7, use the menu item Implement Top Module.

In the Tools tab of ISE 14.7, run iMPACT
* A Warning window will appear, click OK   
* In the Edit tab of Impact, run the Launch Wizard
* In the Welcome to iMPACT window that opens, click OK
* In the Auto assign Configuration Files Query Dialo, click YES
* In the Assign New Configuration Files window, look for CPLDIntro3LEDInverse.jed, which was created within the Schematic-CPLDIntro3LEDinverse project when you 
  executed item 4.2.
* In the Device Programming Properties window that opens, click OK
      Note: I did this step by chance and it worked, but I don't know if this is the correct way, but I didn't see any other way to make the menu appear in the 
      iMPACT Processes box.
* In the Output item of the top menu, choose the Cable Reset option. Some errors will appear in the console, but don't worry about them, as they are related to 
      the recorder on the parallel port that we are not using. * Now click on the xc8572xl icon and the menu should appear in the iMPACT Processes box, including 
      the PROGRAM option.
* Program the chip by clicking on the Program option.
Done, if everything went well, you will see the following text in the console:

0 - Final messages
  
     '1': Erasing device...
     '1': Erasure completed successfully.
     '1': Programming device...
     done.
     '1': Putting device in ISP mode...done.
     '1': Putting device in ISP mode...done.
     '1': Programming completed successfully.
     PROGRESS_END - End Operation.
     Elapsed time = 3 sec.
 
and the LED on the inverter port should be on and when the button is pressed, it goes out and the LED on the non-inverter port should light up.
