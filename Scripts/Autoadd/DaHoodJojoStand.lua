        getgenv().settings =  {
           ['Stand'] =1, --userid of the stand
           ['Owner'] =2, -- userid of the jojo stand owner
        }
        getgenv().commands =  {
            ['Summon'] = "Summon!", -- if someone else wants to own the stand.
            ['Follow'] = "Follow!", -- follow/unfollow you
            ['Ghost'] = "Disappear!", -- disappear
            ['Unghost'] = "Appear!", -- appear
            ['Attack'] = "Ora!", -- loop attack a target
            ['Stopattack'] = "Booga!", -- stop attacking the target
            ['Void'] = "Void!", -- send the target to the void when ko (goes with attack)
            ['Godmode'] = "Requiem!", -- enable/disable godmode
            ['Autosave'] = "Save!", -- grab you when k.o 
            ['Autosave2'] = "Bird!", -- send you in the air when k.o
            ['Reset'] = "Stop!", -- resets commands and character (debug)
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/racemodex/my-scripts/master/dahoodjojostand", true))()