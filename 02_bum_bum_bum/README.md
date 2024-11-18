# 02 Bum Bum Bum

This demo contains introductory examples of the following: 


## Audio Bus Effects

The Audio tab has a bus titled "Bum" which includes two effects: Chorus and PitchShift. The PitchShift effect is modulated by the value of `pitchAdjustment`, and accessed inside the `play_sound()` function on lines 21 and 24 of [button.gd](scripts/button.gd).  


## Custom Keyboard Input

Keyboard keys have been added via Project Settings > Input Map and then accessed via the `triggerAction` string that is `@export`ed from [button.gd](scripts/button.gd) on line 4 and then checked against on line 12.