getgenv().Config = {
      ["Process"] =
      {
         ["Start"] = true, 
         ["Hunter Quest"] = true, 
         ["Saber"] = true, 
         ["Bartilo"] = true, 
         ["V2 Race"] = true, 
         ["V3 Race"] = true, -- Human Only
         ["Force Rengoku"] = false,
         ["Cursed Dual Katana"] = true,
         ["Hop For Rip Indra"] = true,
         ["Auto Katakuri While Maxed"] = 
         {
            ["Enable"] = true, -- Bật or Tắt
            ["Until"] = 30000 
         },
         ["Auto Bone While Maxed"] =
         {
            ["Enable"] = true, 
         },
         ["Hop For Swan Quest"] = false, 
         ["Delay On Server While Swan Hop"] = 15,
         ["Auto Awakening Fruit"] = true, 
         ["Auto Buy 3 Legendary Sword"] = true,
         ["Auto Buy Haki Color"] = true, 
         ["Auto 600 Mastery All Weapon After Done All"] = true, 
         ["Auto Do Lever Stuff"] = true, 
         ["Auto Hop"] =
         {
           ["Enable"] = true,
           ["Delay"] = 2048
         },
         ["Boss"] =
         {
            ["Questable Boss"] =
            {
              --[[ "Beautiful Pirate [Lv. 1950] [Boss]",
               "Cake Queen [Lv. 2175] [Boss]",
               "Tide Keeper [Lv. 1475] [Boss]",
               "Smoke Admiral [Lv. 1150] [Boss]",
               "Thunder God [Lv. 575] [Boss]",
               "Fishman Lord [Lv. 425] [Boss]"]]
            }
         }
      },
      ["Fruit"] =
      {
         ["Snipe"] =
         { 
            "Dough-Dough", "Meme-Meme"
         },
         ["Random Fruit"] = true,
         ["Auto Loot Spawn Fruit"] = true, 
         ["Auto Fruit Event"] = true, 
         ["Auto Raid While Cant Store"] = true, 
         ["Fragments Limit By Fruit Loot Raid"] = 30000,
         ["Eat While Cant Store"] = true 
      },
      ["Misc"] =
      {
         ["Webhook"] =
         { -- Discord Webhook
            ["Url"] = "", 
            ["Enable"] = false, 
            ["Image"] = {"https://raw.githubusercontent.com/zaizooo/ayumi-cdn/main/1c914d7c0f43a92c48504d9a612a8d5d.gif",
              "https://raw.githubusercontent.com/zaizooo/ayumi-cdn/main/departing-07-EXPORT.gif", 
              "https://raw.githubusercontent.com/zaizooo/ayumi-cdn/main/c41a75767e2741bb005f96b4b6895898%20(1).gif",
              "https://github.com/zaizooo/Nexus-cdn/blob/main/7a1451c07ba25f8c2f1ae81f8da4ad9f.gif?raw=true", 
              },
            ["Send While"] =
            { 
               ["Account Status"] = true ,
               ["Delay"] = 120,
             
               
            }
         },
         ["White Screen"] = false,

         ["Fast Attack Delay"] = 0.1,
         ["Remove Terrain"] = true
      }
   }
   
   
   loadstring(game:HttpGet"https://raw.githubusercontent.com/eltrul/a/main/Protected_9799515069316288.lua.txt")()