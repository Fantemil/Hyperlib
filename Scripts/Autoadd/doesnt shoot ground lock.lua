hookfunction(game.Players.LocalPlayer.IsInGroup, function() return true end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/AntiAimViewer"))()
local Aiming = loadstring(game:HttpGet("https://pastebin.com/raw/3A9wdSkL"))()

Aiming.TeamCheck(false)



local Workspace = game:GetService("Workspace")

local Players = game:GetService("Players")

local RunService = game:GetService("RunService")

local UserInputService = game:GetService("UserInputService")



local LocalPlayer = Players.LocalPlayer

local Mouse = LocalPlayer:GetMouse()

local CurrentCamera = Workspace.CurrentCamera


---------------------------------------------------------------
local DaHoodSettings = {
    
    SilentAim = true,

    AimLock = false,

    Prediction = 0.1,

    AimLockKeybind = Enum.KeyCode.E,

    Resolver = true,
    
}
--------------------------------------------------
getgenv().DaHoodSettings = DaHoodSettings        
getgenv().Aiming.FOV = 7                         
--------------------------------------------------- -fov 5.5-6.6 is legit

function Aiming.Check()

    if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then

        return false

    end

    local Character = Aiming.Character(Aiming.Selected)

    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value

    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

    if (KOd or Grabbed) then

        return false

    end

    return true

end



task.spawn(function()

    while task.wait() do

        if DaHoodSettings.Resolver and Aiming.Selected ~= nil and (Aiming.Selected.Character)  then

            local oldVel = game.Players[Aiming.Selected.Name].Character.HumanoidRootPart.Velocity

            game.Players[Aiming.Selected.Name].Character.HumanoidRootPart.Velocity = Vector3.new(oldVel.X, -0, oldVel.Z)

        end 

    end

end)



local Script = {Functions = {}}



Script.Functions.getToolName = function(name)

    local split = string.split(string.split(name, "[")[2], "]")[1]

    return split

end



Script.Functions.getEquippedWeaponName = function(player)

   if (player.Character) and player.Character:FindFirstChildWhichIsA("Tool") then

      local Tool =  player.Character:FindFirstChildWhichIsA("Tool")

      if string.find(Tool.Name, "%[") and string.find(Tool.Name, "%]") and not string.find(Tool.Name, "Wallet") and not string.find(Tool.Name, "Phone") then 

         return Script.Functions.getToolName(Tool.Name)

      end

   end

   return nil

end



game:GetService("RunService").RenderStepped:Connect(function()

    if Script.Functions.getEquippedWeaponName(game.Players.LocalPlayer) ~= nil then

        local WeaponSettings = GunSettings[Script.Functions.getEquippedWeaponName(game.Players.LocalPlayer)]

        if WeaponSettings ~= nil then

            Aiming.FOV = WeaponSettings.FOV

        else

            Aiming.FOV = 5

        end

    end    

end)

local __index

__index = hookmetamethod(game, "__index", function(t, k)

    if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then

        local SelectedPart = Aiming.SelectedPart

        if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then

            local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

            return (k == "Hit" and Hit or SelectedPart)

        end

    end



    return __index(t, k)

end)



RunService:BindToRenderStep("AimLock", 0, function()

    if (DaHoodSettings.AimLock and Aiming.Check() and UserInputService:IsKeyDown(DaHoodSettings.AimLockKeybind)) then

        local SelectedPart = Aiming.SelectedPart

        local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

        CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)

    end
end)
--                    $$\                               $$\   $$\                                           $$\           
--                    \__|                              $$ |  $$ |                                          $$ |          
-- $$$$$$\   $$$$$$\  $$\ $$$$$$\$$$$\   $$$$$$\        \$$\ $$  |      $$$$$$$$\  $$$$$$\  $$$$$$$\   $$$$$$$ | $$$$$$\  
--$$  __$$\ $$  __$$\ $$ |$$  _$$  _$$\ $$  __$$\        \$$$$  /       \____$$  |$$  __$$\ $$  __$$\ $$  __$$ |$$  __$$\ 
--$$ /  $$ |$$ |  \__|$$ |$$ / $$ / $$ |$$$$$$$$ |       $$  $$<          $$$$ _/ $$$$$$$$ |$$ |  $$ |$$ /  $$ |$$ /  $$ |
--$$ |  $$ |$$ |      $$ |$$ | $$ | $$ |$$   ____|      $$  /\$$\        $$  _/   $$   ____|$$ |  $$ |$$ |  $$ |$$ |  $$ |
--$$$$$$$  |$$ |      $$ |$$ | $$ | $$ |\$$$$$$$\       $$ /  $$ |      $$$$$$$$\ \$$$$$$$\ $$ |  $$ |\$$$$$$$ |\$$$$$$  |
--$$  ____/ \__|      \__|\__| \__| \__| \_______|      \__|  \__|      \________| \_______|\__|  \__| \_______| \______/ 
--$$ |                                                                                                                    
--$$ |                                                                                                                    
--\__| 