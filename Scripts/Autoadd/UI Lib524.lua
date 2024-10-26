local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/slf0Dev/Ocerium_Project/main/Library.lua"))()

Window = Library.Main("Title text","LeftAlt")

local Tab = Window.NewTab("tab title")

local Section = Tab.NewSection("text")

-- examples

local Button = Section.NewButton("Grab V4",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Grab%20V4.txt", true))()
    end)

local Button = Section.NewButton("Grab V3",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Grab%20V3.txt", true))()
    end)

local Button = Section.NewButton("Green Sword",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Neon%20Green%20Sword.txt", true))()
    end)

local Button = Section.NewButton("Lua Hammer",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Lua%20Hammer.txt", true))()
    end)

local Button = Section.NewButton("R6",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/R6%20anims.lua", true))()
    end)

local Button = Section.NewButton("Plasma Cutters",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Nightwing%20Plasma%20Cutters.txt", true))()
    end)

local Button = Section.NewButton("Telekinesis",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Fe%20telekinesis%20script.txt", true))()
    end)

local Button = Section.NewButton("Train",function()
   
    end)

local Button = Section.NewButton("Xester",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Xester%20FD.txt", true))()
    end)

local Section = Tab.NewSection("CLIENT SIDE")

local Button = Section.NewButton("PrizzLife",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/pladmin.lua'))()
    end)

local Button = Section.NewButton("IY FE",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end)

local Button = Section.NewButton("CMD ADMIN",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/testing-main.lua"))()
            end)

local Button = Section.NewButton("DEX EXPLORER",function()
    loadstring(game:GetObjects('rbxassetid://2180084478')[1].Source)()
                        end)