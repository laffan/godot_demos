# 06 Ping Pong Lottery

Demonstrates how to combine 2D and 3D scenes using SubViewport. Uses a (themed) 
UI to control properties of a 3D scene. Includes Blender files.

**NOTE:** : As of version 4.3, Godot has a bug where a 2D sprite displaying a 
SubViewPort that displays 3D content will loses track of _which_ SubViewPort 
every time a change is made to how that 3D content is rendered. 

For this project, that means that whenever you edit wheel.tscn, you will likely
have to go in to wheel_controller.tscn, select `WheelSprite` and then re-set the
Viewport Path to "Wheel". 

(Thankfully, this bug does not appear to affect updates to the 3D model itself,
which should just automatically re-import each time a change is made in Blender.)

Hopefully this gets fixed soon.
