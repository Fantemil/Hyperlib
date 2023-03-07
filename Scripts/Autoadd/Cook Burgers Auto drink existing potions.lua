local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
if workspace.Items:FindFirstChild("Potion") then
 OrionLib:MakeNotification({
     Name = "Potion Found!",
     Content = "By DylanIsAKing#2402",
     Image = "rbxassetid://4483345998",
     Time = 5
    })
 local selectedPotion = workspace.Items:FindFirstChild("Potion")
    selectedPotion.ContextAction:FireServer()
 local args = {[1] = "interaction",[2] = {["Object"] =selectedPotion}}
    game:GetService("ReplicatedStorage").Libs.Events.RemoteEvent:FireServer(unpack(args))
else
 OrionLib:MakeNotification({
     Name = "No Potions were found!",
     Content = ":Sad:",
     Image = "rbxassetid://4483345998",
     Time = 5
    })
end