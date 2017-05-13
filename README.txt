
**********************
*
*	Pok3r
*
**********************



CONTENTS OF THIS FILE
---------------------
   
 . Files
 . Introduction
 . Why?
 . Features
 . How to use
 . Customize



FILES
-----

 . Pok3r.exe 	- standalone AutoHotKey executable (no need to install AHK platform)
 . Pok3r.ahk 	- AutoHotKey script
 . README.txt



INTRODUCTION
------------

This program has been created to provide keyboards without the capability to program keys/marcros to have 
a similar layout to that of the Pok3r keyboard. Once run, the user can access an additional layer of keys 
using the 'Caps Lock" key as a function key (similar to if dip switch 3 had been activated on the Pok3r). 
The layout is similar to the default Pok3r layer as seen in the link below:

	http://goo.gl/kc057g

except keys related to repeat timings, recording macros and media keys haven't been included. Check the FEATURES 
section to see what has been included.



WHY?
----

I've recently brought a Pok3r and love it, but hate having to switch between my work laptop layout and my Pok3r 
with which I'm still getting used to. The Pok3r isn't quite porable enough to warrant travelling with it since 
my work involves a lot of travel. This is my resolve to that problem :-)



FEATURES
--------

The normal "Caps Lock" functionality is disabled by default to allow for this layer to be accessed. However at
any point in time the user can bring this functionality back by pressing (everything inbetween the angled brackets):

	* <Win Key + Caps Lock>

this can be cycled by the user, so for those of you that enjoy using Caps Lock you won't have to suffer.

With the Pok3r layer active (i.e. "Caps Lock" is disabled) the following keys :

	* jkli		= Left, Down, Right, Up
	
	* u		= Page Up

	* o		= Page Down

	* h		= Home

	* n 		= End

	* ;		= End (this is my personal preference as I never use "Insert")

	* 1-0		= F1 - F10

	* -		= F11

	* =		= F12

	* Backspace	= Delete

	* m 		= Show Desktop (i.e <Win Key + m>)

	* p 		= Print Screen

	* y		= Calculator

The following are my own personal preference and non-standard for the Pok3r default layer.

	* Space 	= Ctrl + Space (useful for code completion in popular IDE's)

	* Enter 	= Ctrl + Enter (Same as above)

	* ,		= Previous Media Key

	* . 		= Next Media Key

	* Right Shift	= Application Menu Key

	* c		= Build a print statement for java i.e. System.out.println(<places cursor here>);
	
	* / 		= Build block comment construct for java

			  i.e. /*
				* <places cursor here>
				*/



HOW TO USE
----------

Simply run the Pok3r.exe and it will run in the background. There is a system tray icon that appears which you
can use with to suspend, pause or exit the program using a right click.



CUSTOMIZE
---------

Included in this .zip is the Pok3r.ahk script file written in plain text which you can customize to your own
preferences.

In order to do so I recommend using "Resource Hacker" a free program that allows you to edit resources in Windows
executalbe files. It can be downloaded from the developer site at the following link:

	http://www.angusj.com/resourcehacker/

Once installed, you can open the Pok3r.exe and in the left hand tree navigation pane select "RCData" and then
">AHK WITH ICON<" and then click on the child option would should read similar to "1033".

This is the AutoHotKey script, you can then edit the file as you wish, click the "Compile Script" button above and 
then save and exit to have successfully customized the program.

For more information on the AutoHotKey platform and how to script in that language you can go to the following link:

	http://www.autohotkey.com



Thanks for reading!

Regards, 
Suspect
