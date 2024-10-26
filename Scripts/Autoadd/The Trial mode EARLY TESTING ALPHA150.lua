workspace.Ambience_Dark.SoundId="rbxassetid://3466798390"
--create entity func
function makeEntity(ent:Part, achData:{Image:number | number, Name:string | string, Desc:string | string, Reason: string | string, Title:string | string}, camshakeIntensity, entityData: {Spawn_Noise:Sound | Sound,Audio_Far:Sound | Sound,Audio_Near:Sound | Sound,Spawn_Time:number | number,EntityName:string | string, Attach:Attachment | Attachment,Rebounds:number | number,Speed:number})
	local entity_Spawn=entityData.Spawn_Noise
	local audio_Far=entityData.Audio_Far
	local audio_Near=entityData.Audio_Near
	local appearance=entityData.Attach
	local rb=entityData.Rebounds
	local spd=entityData.Speed
	local spawnTime=entityData.Spawn_Time
	local entityName=entityData.EntityName
	local attach=appearance
	local rebounds=rb
	local speed=spd
	local spawn_Time=spawnTime
	local entity_Name=entityName
	local ent_Spawn=entity_Spawn
	local aud_Far=audio_Far
	local aud_Near=audio_Near
	local ent_Name=entity_Name
	local spwn_Time=spawn_Time
	local rbs=rebounds
	local spd=speed
	local ap=appearance
	ent.Name=entity_Name
	ent_Spawn.Parent=ent
	aud_Far.Parent=ent
	aud_Near.Parent=ent
	ent_Spawn.SoundId="rbxassetid://3466798390"
	aud_Far.SoundId="rbxassetid://3466798390"
	aud_Near.SoundId="rbxassetid://3466798390"
	ent_Spawn.Volume=1
	aud_Far.Volume=1
	aud_Near.Volume=1
	ent_Spawn.RollOffMaxDistance=math.huge
	ent_Spawn.RollOffMinDistance=math.huge
	aud_Far.RollOffMaxDistance=2000
	aud_Far.RollOffMinDistance=1000
	aud_Near.RollOffMaxDistance=1000
	aud_Near.RollOffMinDistance=0
	ent_Spawn.RollOffMode=Enum.RollOffMode.Linear
	aud_Far.RollOffMode=Enum.RollOffMode.Linear
	aud_Near.RollOffMode=Enum.RollOffMode.Linear
	ent_Spawn:Play()
	audio_Far:Play()
	audio_Near:Play()
	local camshake=Instance.new("NumberValue", ent)
	camshake.Name="CamShake"
	camshake.Value=camshakeIntensity
	ent.Destroying:Connect(function()
		local achHolder=game.Players.LocalPlayer.PlayerGui.MainUI.AchievementsHolder
		local main=achHolder.Achievement:Clone()
		main.Frame.Details.Title.Text=achData.Title
		main.Frame.Details.Desc.Text=achData.Desc
		main.Frame.Details.Reason.Text=achData.Reason
		main.Frame.ImageLabel.Image="rbxassetid://"..achData.Image
		main.Sound:Play()
		main.Position=UDim2.new(1.7,0,0.2,0)
		local ts=game:GetService("TweenService")
		ts:Create(main, TweenInfo.new(0.5), {Position=UDim2.new(1.5,0,0.2,0)}):Play()
		wait(0.5)
		ts:Create(main, TweenInfo.new(0.5), {Position=UDim2.new(1,0,0.2,0)}):Play()
	end)
end
function setupParticle(attach)
	local particle=Instance.new("ParticleEmitter", attach)
	particle.Texture="rbxassetid://84277811"
	particle.Brightness=1
	particle.Color=ColorSequence.new(Color3.fromRGB(0,7,91))
	particle.Size=5
	particle.Transparency=0
	particle.ZOffset=-1
	particle.Lifetime=NumberRange.new(0.4)
	particle.Speed=NumberRange.new(15)
	particle.Rotation=NumberRange.new(-360, 360)
	particle.RotSpeed=NumberRange.new(335533, 32323232)
	particle.SpreadAngle=Vector2.new(360,360)
	particle.Shape=Enum.ParticleEmitterShape.Box
	particle.ShapeInOut=Enum.ParticleEmitterShapeInOut.Outward
	particle.ShapeStyle=Enum.ParticleEmitterShapeStyle.Volume
	particle.Drag=-2
	particle.LockedToPart=true
	particle.Rate=100
	return particle
end
function setupNoise(AudioID:number, Entity:Part)
	local noise=Instance.new("Sound")
	noise.SoundId="rbxassetid://"..AudioID
	noise.Parent=Entity
	return noise
end
function setup_EntityPart()
	local ent=Instance.new("Part")
	ent.Anchored=true
	ent.CanCollide=false
	ent.Parent=workspace
	attach.Parent=ent
	ent.Position=Vector3.new(0,0,0)
	ent.Transparency=1
	ent.Size=Vector3.new(6,8,6)
	ent.Position=workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value-4)].RoomEntrance.Position
	return ent
end
local partToUseToCreateAttaches=Instance.new("Part", game.ReplicatedStorage)
local TIMEChance={number=10, inAChance=100}
local doorNumV:IntValue=game.ReplicatedStorage.GameData.LatestRoom
doorNumV.Changed:Connect(function()
	if math.random(1,40) <=20 then
		if math.random(1, TIMEChance.inAChance) <=TIMEChance.number then
			local attach=Instance.new("Attachment", partToUseToCreateAttaches)
			local backParticle=setupParticle(attach)
			backParticle.Name="BG"
			local FaceParticle=setupParticle(attach)
			FaceParticle.Name="FACE"
			FaceParticle.ZOffset=4
			FaceParticle.Drag=5
			FaceParticle.Size=NumberSequence.new(3)
			FaceParticle.Transparency=NumberSequence.new(0.8,1)
			FaceParticle.Speed=NumberRange.new(1)
			FaceParticle.Lifetime=1
			FaceParticle.Rotation=NumberRange.new(-3,3)
			FaceParticle.RotSpeed=NumberRange.new(-1.5,1.5)
			FaceParticle.Rate=25
			FaceParticle.Texture="rbxassetid://90918839467071"
			FaceParticle.Color=ColorSequence.new(Color3.new(1,1,1))
			local ent=setup_EntityPart()
			local far=setupNoise(3179847853, ent)
			local near=setupNoise(3179847853, ent)
			local spawnN=setupNoise(5721957175, ent)
			makeEntity(ent, {Desc="Placeholder", Image=FaceParticle.Texture, Name="Too Early!", Reason="Survive (UHHH)", Title="Too Early, Not Late!"}, 3, {Attach=attach, Speed=1, Spawn_Noise=spawnN, Audio_Far=far, Audio_Near=near, EntityName="TIME", Rebounds=1, Spawn_Time=1})
			
			wait(10)
			ent:Destroy()
		end
	end
end)