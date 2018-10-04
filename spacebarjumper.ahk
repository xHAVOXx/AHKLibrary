#Include %A_AppData%\XIM Link\ScriptAdditionals\AHK_ADDITIONALS.ahk

#usehook ;*1

hotkey, space, spam ;*2
return

spam: ;*3
 {
   while getkeystate(a_thishotkey, "p") ;*4
    {
	  sleep, 500 ;*5
	  sendinput, {%a_thishotkey%} ;*6
    }
 }
return

end::exitapp ;*7

/*
1 Directs subsequent hotkeys to use the keyboard hook.
2 Uses Hotkey Command to create a down button hotkey tied to the spam subroutine.
3 Spam subroutine label. When called, any code below it will run.
4 While loop and getkeystate, will loop as long as the originating hotkey is held.
5 50ms sleep between loops.
6 Each loop run sends whichever hotkey originated the subroutine.
7 Emergency shutdown.
*/