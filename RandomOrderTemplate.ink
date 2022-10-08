INCLUDE Scene1
INCLUDE Scene2
INCLUDE Scene3
INCLUDE Scene4

VAR Scene = 0

LIST items_get = Bottle, Fly, Plants
VAR scene2_visited = 0

->MainLoop

=== MainLoop ===
~ Scene = RANDOM(1, 4)

{ 
- ! Scene_1 && Scene <= 1 :
    // s1
    -> Scene_1
- ! Scene_2 && Scene <= 2 :
    // s2
    -> Scene_2
- ! Scene_3 && Scene <= 3 :
    // s3
    -> Scene_3
- ! Scene_4 && Scene <= 4 :
    // s4
    -> Scene_4    
}

{ Scene_1 && Scene_2 && Scene_3 && Scene_4 :
    // c
    -> Conclusion
- else:
    // m
    -> MainLoop
}



=== Conclusion == 
- "Open Your Eyes"

- The sound comes again. I look around and find I am in the white room again. It seems like there is a loop in here and I never can get off.


    -> END
