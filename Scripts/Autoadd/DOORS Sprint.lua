-- Gui to Lua


-- Version: 3.2



-- Instances:


local runService = game:GetService("RunService")



local character = game.Players.LocalPlayer.Character


local humanoid = character:WaitForChild("Humanoid")



local StaminaBar = Instance.new("ScreenGui")


local Border = Instance.new("Frame")


local Bar = Instance.new("Frame")


local SideBar = Instance.new("Frame")


local Bar_2 = Instance.new("Frame")



--Properties:



StaminaBar.Name = "StaminaBar"


StaminaBar.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


StaminaBar.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



Border.Name = "Border"


Border.Parent = StaminaBar


Border.AnchorPoint = Vector2.new(0, 1)


Border.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


Border.BorderColor3 = Color3.fromRGB(0, 0, 0)


Border.BorderSizePixel = 4


Border.Position = UDim2.new(0.25, 0, 0.85, 0)


Border.Size = UDim2.new(0.6, 0, 0.0263093561, 0)



Bar.Name = "Bar"


Bar.Parent = Border


Bar.AnchorPoint = Vector2.new(0, 1)


Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 0)


Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)


Bar.BorderSizePixel = 0


Bar.Position = UDim2.new(0, 0, 1, 0)


Bar.Size = UDim2.new(1, 0, 1, 0)



SideBar.Name = "SideBar"


SideBar.Parent = StaminaBar


SideBar.AnchorPoint = Vector2.new(0, 1)


SideBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)


SideBar.BorderColor3 = Color3.fromRGB(0, 0, 0)


SideBar.BorderSizePixel = 4


SideBar.Position = UDim2.new(0.985890269, 0, 1, 0)


SideBar.Size = UDim2.new(0.0141097549, 0, 0.17468825, 0)



Bar_2.Name = "Bar"


Bar_2.Parent = SideBar


Bar_2.AnchorPoint = Vector2.new(0, 1)


Bar_2.BackgroundColor3 = Color3.fromRGB(255, 255, 0)


Bar_2.BorderColor3 = Color3.fromRGB(0, 0, 0)


Bar_2.BorderSizePixel = 0


Bar_2.Position = UDim2.new(0, 0, 1, 0)


Bar_2.Size = UDim2.new(1, 0, 1, 0)


local Started=false


-- Scripts:


local OO = 0


function QCHWWK_fake_script() -- StaminaBar.SprintFire 


 local script = Instance.new('LocalScript', StaminaBar)


 local Bool = Instance.new('NumberValue', script.Parent)


 Bool.Name = "Dissapear"


 --------------------------------------------------------------------------------------------------------------


 script.Parent.Dissapear.Changed:Connect(function(Value)



  for i,v in pairs(script:GetChildren()) do


   v:Destroy()


  end



  local A = Instance.new("Part")


  A.Parent = script


  A.Name="Keep"..tick()..game.JobId..game:GetService("Players").LocalPlayer.Name



  Border.Visible = true


  SideBar.Visible = false


  wait(1)


  if script:FindFirstChild(A.Name) then




   OO=0


   repeat wait(1)


    --if not script:FindFirstChild(A.Name) then


    --Border.Visible = true


    --SideBar.Visible = false


    OO = OO +1


    -- end


   until Value > OO or not script:FindFirstChild(A.Name)




   if script:FindFirstChild(A.Name) then


    Border.Visible = false


    SideBar.Visible = true


   end


  end



 end)




 --------------------------------------------------------------------------------------------------------------


 local Players = game:GetService("Players")


 local RS = game:GetService("RunService")


 local ReSt = game:GetService("ReplicatedStorage")


 local CG = game:GetService("CoreGui")


 local TS = game:GetService("TweenService")


 local Plr = Players.LocalPlayer



 --local ModuleScripts = {


 --- MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),


 -- ModuleEvents = require(ReSt.ClientModules.Module_Events),


 --}


 -- KEYBINDS HERE


 local Camera = workspace.CurrentCamera


 local bind1 = Enum.KeyCode.LeftShift -- This is the keybind this script is set to by default


 local bind2 = Enum.KeyCode.RightShift -- This is the second keybind this script is set to by default



 -- To change the keybind, replace the word after "Enum.Keycode." with your desired keybind




 --------------------------------------------------------------------------------------------------------------




 local player = game.Players.LocalPlayer -- Targets the player


 local char = player.Character or player.CharacterAdded:Wait() -- Finds player's character


 local hrp = char:WaitForChild("HumanoidRootPart") -- Finds character's humanoid root part



 local cam = game.Workspace.CurrentCamera


 local bar = script.Parent.Border.Bar



 --local runSound = hrp:WaitForChild("Running") -- Finds the running sound of the player



 local TS = game:GetService("TweenService")


 local TI = TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)




 --------------------------------------------------------------------------------------------------------------




 local FOV1 = {


  FieldOfView = 90 -- FOV change while sprinting, change as desired


 }


 local FOV2 = {


  FieldOfView = 70 -- FOV default value, suggested to keep as is


 }




 --------------------------------------------------------------------------------------------------------------




 local BigFOV = TS:Create(cam, TI, FOV1)


 local SmallFOV = TS:Create(cam, TI, FOV2)




 --------------------------------------------------------------------------------------------------------------




 local stamPower = 100 -- Total stamina points


 local stamTick = 2 -- How much the stamina goes down every tick of holding down the sprint button


 local regenTick = 0.5 -- How much the stamina goes back up every tick of not holding down the sprint button (until it hits stamPower max)






 --------------------------------------------------------------------------------------------------------------




 local sprinting = false


 local DEF = 15

 function sprint(name, IS, context)


  -- ModuleScripts.MainGame.camShaker.ShakeOnce(ModuleScripts.MainGame.camShaker, 5)


  if IS == Enum.UserInputState.Begin then

   if sprinting == false then
    DEF = char.Humanoid.WalkSpeed
   end
   -- runSound.PlaybackSpeed = 4 -- Changes the playback speed that the running sound plays at during sprinting, replace 4 with your desired playback speed if wanted


   script.Parent.Dissapear.Value=999999999999999999999999999999999999999999999999999999999999999999999

   
   Walkspeed2 = DEF+5
   char.Humanoid.WalkSpeed = Walkspeed2
   


   sprinting = true


   while stamPower > 0 and sprinting == true do





    if Started~=true then


     script.Parent.Dissapear.Value=991291291291291291291289129129129129129129129129129129129129129


     BigFOV:Play()


     Started=true



    end



    bar.Size = UDim2.new(stamPower / 100, 0, 1, 0)


    SideBar.Bar.Size = UDim2.new(1, 0, stamPower/100, 0)


    bar.Visible = true


    SideBar.Bar.Visible = true


    stamPower = stamPower - stamTick


    --BigFOV:Play()


    wait()


    if stamPower <= 0 then


     bar.Visible = false


     -- runSound.PlaybackSpeed = 2
     Walkspeed2 = DEF

     char.Humanoid.WalkSpeed = Walkspeed2


     SmallFOV:Play()


     Started=false


     script.Parent.Dissapear.Value=10


     stamPower=0



    end


   end


  elseif IS == Enum.UserInputState.End then



   if stamPower < 1 then


    bar.Visible = false


    SideBar.Bar.Visible = false


   else


    bar.Visible = true


    SideBar.Bar.Visible = true


   end


   -- runSound.PlaybackSpeed = 2 -- Resets the playback speed to its original value, recommended to leave as is

   Walkspeed2 = DEF
    char.Humanoid.WalkSpeed = Walkspeed2 -- Sets player speed to 16 (Roblox game default), if you change your Roblox game's default player speed, replace 16 with the new value


   sprinting = false


   while stamPower <= 100 and sprinting == false do


    stamPower = stamPower + regenTick


    -- bar.Visible = true


    --SideBar.Bar.Visible = true


    if stamPower > 100 then


     stamPower = 100


    end


    -- SideBar.Bar.Visible = false


    if stamPower < 1 then


     bar.Visible = false


     SideBar.Bar.Visible = false


    else


     bar.Visible = true


     SideBar.Bar.Visible = true


    end



    bar.Size = UDim2.new(stamPower / 100, 0, 1, 0)


    SideBar.Bar.Size = UDim2.new(1, 0, stamPower/100, 0)





    --if cam.FieldOfView > 78 and script.Parent.Dissapear.Value ~= 10 then


    -- Fov(70)


    -- end








    if Started~=false then


     Started=false


     SmallFOV:Play()


     script.Parent.Dissapear.Value=10 


    end



    wait()


   end



  end


 end




 --------------------------------------------------------------------------------------------------------------

 char.Changed:Connect(function()
  if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= Walkspeed2 and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= 10 then
   DEF=game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
   if sprinting == true then
    WalkSpeed2=DEF+5
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = DEF
   end
   
  end
 end)

 function updateBobbleEffect()


  local currentTime = tick()


  if  Started == true then


   if humanoid.MoveDirection.Magnitude > 0  then -- we are walking


    local bobbleY = math.abs(math.sin(currentTime * 10)) * .35


    local bobbleX = math.abs(math.sin(currentTime * 10)) * .05



    local bobble = Vector3.new(bobbleX, bobbleY, 0)



    humanoid.CameraOffset = humanoid.CameraOffset:lerp(bobble, .75)





   else -- we are not walking


    humanoid.CameraOffset =humanoid.CameraOffset * 0


   end


  end


 end



 runService.RenderStepped:Connect(updateBobbleEffect)






 local CAS = game:GetService("ContextActionService")



 CAS:BindAction("Sprint", sprint, true, bind1, bind2) -- Binds the keybinds to the sprint function and creates a mobile button for it


 CAS:SetPosition("Sprint", UDim2.new(0.7,0,0,0)) -- Changes the position of the mobile button within the context frame, to read more about how UDim2 positions work, go to https://developer.roblox.com/en-us/api-reference/datatype/UDim2


 CAS:SetTitle("Sprint", "Shift") -- Sets the text on the mobile button, replace Ctrl with any text you desire


end


coroutine.wrap(QCHWWK_fake_script)()


function CJZEISY_fake_script() -- SideBar.LocalScript 


 local script = Instance.new('LocalScript', SideBar)



 script.Parent.Visible = false


end


coroutine.wrap(CJZEISY_fake_script)()