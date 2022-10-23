# genesis_6button
Simple PCB + ATTiny404 code for a 6-button mega drive controller.

This is a KiCad project for a board and accompanying ATTiny404 code to implement a replacement for the custom chip in the 6-button mega drive/genesis controller.

**Note: the `main` HEAD is not necessarily tested! Tested revisions of the board+firmware will be tagged**

Latest tested fab here: https://oshpark.com/shared_projects/aK2wBkfg

Currently there is a 14-pin dual row header used for the buttons because I was unaware of the brook 20 pin header at the time. I might add that pinout to future boards.

```
     C  1 | 2  Z
     B  3 | 4  Y
     A  5 | 6  X
  LEFT  7 | 8 GND
 RIGHT  9 | 10 GND
  DOWN 11 | 12 MODE
    UP 13 | 14 START
```
