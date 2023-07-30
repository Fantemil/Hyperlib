-- Made by ThroughTheFireAndFlames#9925

task.spawn(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))();
end);
wait(1);
task.spawn(function()
	while true do wait(0.0001);
		for i = 1, 5 do
			function getNil(name, class)
				for _, v in next, getnilinstances() do
					if ((v.ClassName == class) and (v.Name == name)) then
						return v;
					end
				end
			end
			local args = {[1]=getNil("Value", "BoolValue")};
			game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("cleanTrash"):FireServer(unpack(args));
		end
	end
end);
task.spawn(function()
	while true do wait(0.1);
		local args = {[1]="Cleaner",[2]={GetWareHouseObject=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("GetWareHouseObject"),IncreaseWorkAcheivement=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("IncreaseWorkAcheivement"),GetCarriedBox=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("GetCarriedBox"),RemoveObjects=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("RemoveObjects"),GetJob=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("GetJob"),ChangePlayerJob=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("ChangePlayerJob"),setRolltainerCargo=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("setRolltainerCargo"),OpenStoreMenu=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("OpenStoreMenu"),OpenGetJobUi=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("OpenGetJobUi"),RemoveCarriedBox=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("RemoveCarriedBox"),cleanTrash=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("cleanTrash"),FirePlayer=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("FirePlayer"),AsManagerAnnounce=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("AsManagerAnnounce"),Summon=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Summon"),SetStoreShelf=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("SetStoreShelf"),GetRolltainer=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("GetRolltainer"),AnnounceFromManager=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("AnnounceFromManager"),BonusPlayment=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("BonusPlayment"),IncreaseRequestOBJAttribute=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("IncreaseRequestOBJAttribute"),requetToServerForSpawnCargo=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("requetToServerForSpawnCargo"),RemoveRolltainer=game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("RemoveRolltainer")}};
		game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("GetJob"):FireServer(unpack(args));
		wait(0.1);
		game:GetService("ReplicatedStorage"):WaitForChild("ManagerBanStartRemote"):FireServer();
		wait(0.1);
		local args = {[1]=true};
		game:GetService("ReplicatedStorage"):WaitForChild("ManagerBanProcess"):FireServer(unpack(args));
	end
end);