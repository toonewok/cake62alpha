# Materials
2x RP2040-zero waveshare  
1x Left PCB  
1x Right PCB  
1x Top Left Case  
1x Bottom Left Case (100%infill)  
1x Top Right Case  
1x Bottom Right Case (100%infill)  
2x STX-3000  
62x chocv1 or mx hotswaps  
62x chocv1 or mx switches  
14x M2x6 screws
14x M2 brass inserts  
1x TRS 3.5mm cable  
1x USB C cable  
2.54mm pinheaders(male)  
2mm foam(optional)  
<br>

# Assembly
<p>Assembly is relatively self-explanatory, the only thing to call out is that you will need to solder a patch wire from pin 28 to pin 8. The yellow path on the following image will show you where that is(I do this on the bottom side of the PCB after attaching the RP2040 to the PCB) -</p>  
<img src="https://github.com/toonewok/cake62alpha/blob/master/patch.png">  
<br>

# Code/Firmware
<p>It needs to be stated that under no cirumstances are you to mess with the TRS jack while either half is powered, doing so could result in shorting the halves.</p> <p>Start by plugging in the halves one at a time individually, they will first appear as 'RPI-RP2' in your file browser, you will need to obtain the latest version of circuitpython for the RP2040 waveshare from the <a href="https://circuitpython.org/downloads">circuitpython downloads page.</a> Drag and drop that onto to the root of the device and it should disconnect, after a few seconds it should reappear as 'CIRCUITPY'. Now you need the most recent version of <a href="https://github.com/KMKfw/kmk_firmware/archive/refs/heads/main.zip">KMK.</a> Unzip the KMK folder and enter it, take the 'kmk' folder and drag it to the root of the RP2040. Depending on which half you are setting up take the respective code.py.X and place it on the root of the RP2040 as just 'code.py'....done:)</p>  
<br>
<p>Any keymap changes are made in the code.py, be sure to modify both halves</p>

# Default Keymap
<img src="https://github.com/toonewok/cake62alpha/blob/master/keymap.png">
