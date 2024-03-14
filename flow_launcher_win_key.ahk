LauncherHotkey := "!{F24}" ;Launcherhotkey has to be modifier + otherwise it doesnt work when administrator windows like taskmanager is active

#InstallMouseHook ;so A_PriorKey works with mouseclicks as well and doesnt open Launcher when for example scrolling while Lwin is pressed
~LWin::Send {Blind}{vkE8} ; disables the ability for the left Win to activate the Start Menu, {Blind} still allows its use as a modifier (if you put the "launcherhotkey" instead of {vkE8} it presses win + launcherhotkey. so that doesnt work
; Lwin up :: {%LauncherHotkey%} ; works, but it also opens LauncherHotkey whith every combination like win+e
Lwin Up:: 
    If (A_PriorKey = "Lwin") { ;  If Lwin was pressed alone
    Send, %LauncherHotkey% ; Press Launcherhotkey
    return
    } else if (A_PriorKey = "Space") ; If Space bar was pressed
    {
        Send, {LWin} ; Send regular Windows key press
    } 
    return
