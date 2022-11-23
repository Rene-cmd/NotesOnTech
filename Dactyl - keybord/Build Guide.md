## **1. Building your dactyl manufrom keyboard**

The building process is actually fairly straight forward once you get the hang of it. Basically, the keyboard is linked by a grid-like matrix, where each key switch should be connected with 1 horizontal and 1 vertical wire with a diode in between. Note that this diagram has one more thumb key than the design that I have built, You would have to adjust the wiring a little, just skip the bottom key of the normal grid and go straight to the thumb grid instead.

![](https://miro.medium.com/max/875/1*Q7xYKNrfMr8au7zUipBlGg.jpeg)

Image from [Nick Green](https://nickgreen.info/dactyl-manuform-build-log/)

**NOTE:** Start building the keyboard with the left-handed part, so when you have completed the keyboard you could start testing. If you were to start with the right-hand side like myself, you will not be able to test the keyboard properly until you have completed both hands with the QMK software.

![](https://miro.medium.com/max/875/1*ps4hEN0DX4uhxaKGE-ltvA.jpeg)

People usually start with horizontal (with diodes) then vertical. Bend the diode to a 90 degree at the start of the diode, then trim the other end of the diode so it is just longer than the switch itself.

![](https://miro.medium.com/max/875/1*9TlH8YxE7y-ZO0-5nv-iSw.jpeg)

The method I have used in wiring the keyboard is the strip cable method. I have purchased 15cm wire, mark out the distance between each stem of the switch and strip a small length of the wire (8mm-1cm). Repeat this process for all the stems. Then bend the wire to wrap around the stem of the switch. It is best if the wire itself is wrapped around the stem in a way that even without soldering it wouldn’t move around too much. It would be easier for you in the soldering process.

![](https://miro.medium.com/max/875/1*c3hAW1UHsnSmQ1dY5eXytA.jpeg)

**NOTE:** Diode can only travel through one direction, If you are soldering straight on the diode, make sure that your connection points are always at the end tip of the diode.

![](https://miro.medium.com/max/875/1*qLQADtyi-vI0Xsa1pC9V-Q.jpeg)

![](https://miro.medium.com/max/875/1*Nh5wNMg5DBisMNBCuLGOuA.jpeg)

Upon finishing the horizontal matrix, give yourself a pad in the back, you have completed the hardest part of the build.

One thing to keep in mind is that the horizontal and vertical should NEVER touch each other. If you have some electric tape laying around, apply it to the bottom layer of the matrix to make sure you will not accidentally short the matrix for unwanted input.

Some of the builds use RJ9 as a connector while I used the 3.5 jack connector. Make sure the connector and the cable you have purchase are of the same type, a TRRS connector to a TRS cable should be wired a little differently than a TRRS connector to TRRS cable.

![](https://miro.medium.com/max/875/1*Pe4HAN7pCmXyHOJEZ9CU8g.jpeg)

Here is some video that best demonstrate the soldering and build process of the keyboard better than myself.

![](https://miro.medium.com/max/875/1*VlpT89XZxmL97aj7jItCGw.jpeg)

Remember to connect a reset button for your keyboard connecting to the RST and GND, double tapping it will reset the Arduino for 8 seconds for you to flash your QMK onto it

![](https://miro.medium.com/max/875/1*had_AMCiCStdt6VGbznCOw.jpeg)

Remember to hot glue connectors, the more the better.

## **2. Testing the keyboard with QMK software**

This is actually the trickiest part of the build in my opinion mostly because I have never tried QMK and most build log to focus on the physical build of the keyboard.

If you are using the original design of the dactyl keyboard layout supported by the QMK toolkit, then you shouldn’t have much trouble. But if you are like me, who ventured out a little with a dactyl layout that is slightly different. You would have to go through a different process to do so.

Even if your keymap does not exist on the QMK toolkit, find a closest relative keyboard and test out the keyboard first, and it will no doubt give you a sense of achievement and overwhelming happiness

How to use QMK (if keyboard is supported)

There is much documentation on how to use [QMK here](https://youtu.be/-imgglzDMdY)

**Here is the TLDR for normal layout:**

-   Go to [QMK configurator](https://config.qmk.fm/#/)
-   Select the name of your keyboard
-   Change the desired keymap
-   Create a .hex file for the next step
-   Download and install QMK toolkit
-   Open the .hex file prepared on the toolkit
-   Click “auto flash”
-   Reset the Arduino pro micro
-   You are done

**How to use QMK is your keyboard is not listed**

If you are NOT using the normal layout, you would need to compile your own layout. Follow [this](https://beta.docs.qmk.fm/tutorial/newbs_getting_started) guide to setup QMK in your computer environment. Follow “Set up your QMK environment” and “Build your first firmware”

After installing qmk and downloading qmk to your local machine and you could edit your own keymap and keyboard.

Go to /handwired/dactyl_manuform/5x6 modify **5x6.h** and modify the existing keymap. Add KC_NO to keys that you do not need or register more keys in the matrix

![](https://miro.medium.com/max/875/1*Qpj3yh2dSVMKY4xDW70Y0A.jpeg)

after modifying the 5x6.h file, change the **keymap.c** file accordingly

![](https://miro.medium.com/max/875/1*Tk5dy7UNEsnQTnS3WUgspA.png)

compile the keymap to a hex file

> qmk compile -kb handwired/dactyl_manuform/5x6 -km <your-keymap>

double click the hex file to start qmk toolkit, remember to click “auto-flash”. double click the reset button of the keyboard, and you should see the text in yellow.

![](https://miro.medium.com/max/875/1*hiMxK4VGsvPWZxgnPmZVJA.jpeg)

Now you have full control of your Dactyl Manuform keyboard, go train yourself to use it for the months to come, yeah!