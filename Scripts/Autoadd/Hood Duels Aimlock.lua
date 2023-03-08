-- Created By Nosss Supports mostly, all hood games!
-- I UPDATED THIS TO ADD ANTI-AIM RESOLVER AND SOME FIXES TO QUALITY OF LIFE STUFF!

getgenv().ToggleKey =  (  "e"  )  -- [ Toggle On And Off | Stop asking re-tarded questions ]

getgenv().Prediction =  (  0.18 )   -- [ Lower Prediction: Lower Ping | Higher Prediction: Higher Ping  ]

getgenv().FOV =  (  350  )   -- [ Increases Or Decreases FOV Radius ]

getgenv().FOV_Visible = false -- [ True or False, same for below ]

getgenv().TargetAim_Visible = true -- [ Shows The Dot Or Disables It ]

getgenv().FIXCrossHair = true -- [ Attempts to Fix the crosshair-placement when you toggle silent-aim, you will want to leave this on true ]

getgenv().AntiAimResolver = false -- [ True or False | Bypasses anti-lock what else would it do :V ]

getgenv().DontShootMyFriends = true -- [ True or False ]

getgenv().DontShootThesePeople = {  -- [ List Of Who Not To Shoot like this. "Quotations with their name and then a comma afterwards for each line"; ]

 "Player1";
 "Player2";

};

task.wait(1) --- ysyncload

loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/ReZero", true))();