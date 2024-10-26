local remote = game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.2").knit.Services.QuestService.RF
remote.InteractWithNPC:InvokeServer(workspace:FindFirstChild("Barehands Rep").HumanoidRootPart)
remote.StartBarehandsQuest:InvokeServer()
remote.FindBarehandsNPC:InvokeServer("3")
remote.FindBarehandsNPC:InvokeServer("1")
remote.FindBarehandsNPC:InvokeServer("2")
remote.InteractWithNPC:InvokeServer(workspace:FindFirstChild("Barehands Rep").HumanoidRootPart)
remote.EndBarehandsQuest:InvokeServer()