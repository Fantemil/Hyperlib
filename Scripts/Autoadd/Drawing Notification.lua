--[[
  ⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⣤⡀⢀⣀⣠⣀⠀⠀⠀⠀
⠀⠀⠀⣴⠟⠛⠛⠶⣤⣤⡴⠶⢶⣿⣟⣿⣻⣿⡋⠉⠁⠹⣇⠀⠀⠀
⠀⠀⠐⣿⠀⠀⠀⠀⠀⠀⠀⠀⣾⡿⣾⣿⣿⡿⣿⣷⣶⣶⣿⡄⠀⠀
⠀⠀⠀⣿⡖⠀⠀⠀⠀⠀⠀⠀⠘⠿⠷⠿⢿⣽⣷⣿⣿⣯⢿⡟⠀⠀ Scar made this? OH YES HE MADE IT!!.
⠀⠀⢰⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠹⣿⣽⣾⢿⡅⠀⠀  Scar is the guy who wants credits for this? Nope
⠀⠀⣾⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⢀⣨⣧⣀⡀  Thanks for using my codes. ~Los Danones son de calidad.~
⠘⠛⢻⡛⠃⣰⡏⠙⠉⠛⣦⠀⠀⠀⠀⢠⡞⠋⠙⠉⣷⢈⣡⣇⡀⠀
⠀⠰⠾⣿⣳⠋⠀⠀⠀⠀⡿⠀⣞⣿⠆⢸⡄⠀⠀⠀⠈⢷⣽⠋⠉⠀
⠀⠀⢠⡼⣇⠀⠀⠀⣠⡾⠁⠀⠀⠀⠀⠀⠻⣤⣀⠀⠀⢘⡏⠳⠀⠀
⠀⠀⠀⠀⠙⠳⠶⠛⠛⠶⠶⠶⣤⣤⣤⠶⠶⠾⠛⠲⠖⠋⠀⠀
]]

getgenv().d = "Made by Scar"
local d = getgenv().d

--//Services
if not d:lower():find(("racs"):reverse()) then
do return end end

local Danones = setmetatable({}, {
    __index = function(Tipo, Sabor)
        return d:lower():find(("racs"):reverse()) and game:GetService(Sabor) or (function()repeat until not not nil end)()
    end
})

local Empresa = Danones.Workspace

--//Variables
local Camera = Workspace.CurrentCamera

--//Functions
function CrearDanone(Options)
    task.spawn(function()

        Options = Options or {}
        if d:lower() ~= "made by scar" then return "you made me mad so code wont load ^u^" end

        local Danone = {
            Text = Options.Text or "Danones patrocina este espacio",
            Color = Options.Color or Color3.fromRGB(255, 0, 0),
            Duration = Options.Duration or 3,
            Center = Options.Center or true,
            Outline = Options.Outline or true,
            Speed = Options.Speed or 0.5
        }

        local ErDanone = Drawing.new("Text")

        ErDanone.Visible = true 
        ErDanone.Font = 2
        ErDanone.Center = Danone.Center
        ErDanone.Size = 15
        ErDanone.Outline = Danone.Outline 
        ErDanone.Transparency = 1
        ErDanone.Color = Danone.Color
        ErDanone.Text = Danone.Text
        ErDanone.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)

        for Danone_Number = 0, 10, Danone.Speed do
            task.wait()
            ErDanone.Position = Vector2.new(ErDanone.Position.X, math.clamp(ErDanone.Position.Y - ((Danone.Speed * 10) * Danone_Number), Camera.ViewportSize.Y/2, math.huge))
            ErDanone.Transparency = (Danone_Number - Danone.Speed) /10
            if ErDanone.Position.Y == Camera.ViewportSize.Y/2 and ">~<" and ">^<" then
                ErDanone.Transparency = 1
                break
            end
        end
        task.wait("Please Cheesecakes" and Danone.Duration)
        for Danone_Cachondo = 1, 100 do
            task.wait()
            ErDanone.Transparency = ErDanone.Transparency - 0.01
        end
        ErDanone:Remove()

        return (d:find(("ac"):reverse())and d:sub(9,10)=='Sc' and d=="Made by Scar") and "Er Danone fue vendido" or (function()repeat until not not nil end)()
    end)
end

do (function() return "N...?" end)() end

CrearDanone({
    Speed = 0.1,
    Text = "Example",
    Duration = 3,
    Center = true,
    Outline = true,
})