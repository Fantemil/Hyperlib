		function farm()
	while getgenv().farm == true do wait(.2)
		for i,v in pairs (game:GetService("Workspace").Wins:GetDescendants()) do
			if v:IsA("Part") then
				game:GetService"Players".LocalPlayer.Character:FindFirstChild"HumanoidRootPart".CFrame = v.CFrame
			end
		end
	end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/mohamedyoo/owlhub/main/New%20ui"))()
local Window = Library.CreateLib("Shoot Wall Simulator", "Sentinel")

local Main = Window:NewTab("Main")

local credit = Window:NewTab("credit")


local Section = Main:NewSection("Main")

local creditSection = credit:NewSection("credit")

Section:NewToggle("Auto farm", "ToggleInfo", function(bool)
    getgenv().farm = bool
		if bool then
        farm()
            end
end)
   
   Section:NewToggle("auto rebirth", "Make your player auto click", function(v)
    getgenv().rebirth = v
      while getgenv().rebirth == true do
game:GetService("ReplicatedStorage").RebirthSystem.Remotes.Rebirth:FireServer()
game:GetService("RunService").Heartbeat:wait();
  end
   end)
   
   Eggs = {}
	for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
		if not table.find(Eggs, v.Name) then
		table.insert(Eggs, v.Name)
	end
end

Section:NewToggle("Auto Buy Selected Egg", "Will glitch if you have high flight.", function(bool)
  getgenv().AutoEgg = bool
                while getgenv().AutoEgg and task.wait() do
                local args = {
                [1] = getgenv().SelectedEgg,
                [2] = {}
                }
game:GetService("ReplicatedStorage").PetSystem.Remotes.HatchPet:FireServe(unpack(args))
            end
end)

Section:NewDropdown("Select Egg", "You have to be next to the egg.", Eggs, function(Selected)
         getgenv().SelectedEgg = Selected
end)

Section:NewLabel("Don't work!!")
    
  creditSection:NewButton("Copy link", "Link to the website script", function()
game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Copied",
			Text = "you have copied the link pastebin",
			Duration = 4
		})
		wait(0.5)
         	setclipboard("https://scriptblox.com/script/Universal-Script-emptyness-hub-7276")

end)