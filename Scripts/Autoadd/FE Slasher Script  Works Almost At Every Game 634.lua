--amogus
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(45,0,0)
end)
end
end
 
Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
-----OPTIONS
local ToolName = "Back_AccAccessory" ----- the hats name on explorer/dex (not name in catalog)
local NoSound = false ----- sound or no sound (Background Music)
local OldModel = false ----- Use Old Model or your accessory
 
local IsDead = false
local StateMover = true
 
local playerss = workspace.non
local maybe = playerss[ToolName].Handle
local bbv,bullet
if Bypass == "death" then
	bullet = game.Players.LocalPlayer.Character["HumanoidRootPart"]
	bullet.Transparency = 0
	bullet.Massless = true
	if bullet:FindFirstChildOfClass("Attachment") then
		for _,v in pairs(bullet:GetChildren()) do
			if v:IsA("Attachment") then
				v:Destroy()
			end
		end
	end
 
	bbv = Instance.new("BodyPosition",bullet)
    bbv.Position = playerss.Torso.CFrame.p
end
 
 
maybe:FindFirstChildOfClass("AlignPosition").Name = "AlignPosition2"
maybe:FindFirstChildOfClass("AlignOrientation").Name = "AlignOrientation2"
 
playerss.Torso.WaistBackAttachment.Position = Vector3.new(-0, 2, 0.6)
playerss.Torso.WaistBackAttachment.Orientation = Vector3.new(-4.16, -190, 99.8)
 
if Bypass == "death" then
coroutine.wrap(function()
	while true do
		if not playerss or not playerss:FindFirstChildOfClass("Humanoid") or playerss:FindFirstChildOfClass("Humanoid").Health <= 0 then IsDead = true; return end
		if StateMover then
			bbv.Position = playerss.Torso.CFrame.p
    		bullet.Position = playerss.Torso.CFrame.p
		end
		game:GetService("RunService").RenderStepped:wait()
	end
end)()
end
 
local CDDF = {}
local DamageFling = function(DmgPer)
	if IsDead or Bypass ~= "death" or (DmgPer.Name == playerss.Name and DmgPer.Name == "non") or CDDF[DmgPer] or not DmgPer or not DmgPer:FindFirstChildOfClass("Humanoid") or DmgPer:FindFirstChildOfClass("Humanoid").Health <= 0 then return end
	CDDF[DmgPer] = true; StateMover = false
	local PosFling = (DmgPer:FindFirstChild("HumanoidRootPart") and DmgPer:FindFirstChild("HumanoidRootPart") .CFrame.p) or (DmgPer:FindFirstChildOfClass("Part") and DmgPer:FindFirstChildOfClass("Part").CFrame.p)
    bbav = Instance.new("BodyAngularVelocity",bullet)
    bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
    bbav.P = 1000000000000000000000000000
    bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)
    game:GetService("Debris"):AddItem(bbav,0.1)
    bullet.Rotation = playerss.Torso.Rotation
	for _=1,15 do
		bbv.Position = PosFling
		bullet.Position = PosFling
        wait(0.03)
	end
	bbv.Position = playerss.Torso.CFrame.p
    bullet.Position = playerss.Torso.CFrame.p
	CDDF[DmgPer] = false; StateMover = true
end
 
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
Part3 = Instance.new("Part")
SpecialMesh4 = Instance.new("SpecialMesh")
Weld5 = Instance.new("Weld")
Weld6 = Instance.new("Weld")
Weld7 = Instance.new("Weld")
Weld8 = Instance.new("Weld")
Weld9 = Instance.new("Weld")
Weld10 = Instance.new("Weld")
Weld11 = Instance.new("Weld")
Weld12 = Instance.new("Weld")
Weld13 = Instance.new("Weld")
Weld14 = Instance.new("Weld")
Weld15 = Instance.new("Weld")
Weld16 = Instance.new("Weld")
Weld17 = Instance.new("Weld")
Weld18 = Instance.new("Weld")
Weld19 = Instance.new("Weld")
Weld20 = Instance.new("Weld")
Weld21 = Instance.new("Weld")
Weld22 = Instance.new("Weld")
Weld23 = Instance.new("Weld")
Weld24 = Instance.new("Weld")
Weld25 = Instance.new("Weld")
Weld26 = Instance.new("Weld")
Weld27 = Instance.new("Weld")
Weld28 = Instance.new("Weld")
Weld29 = Instance.new("Weld")
Weld30 = Instance.new("Weld")
Weld31 = Instance.new("Weld")
Weld32 = Instance.new("Weld")
Weld33 = Instance.new("Weld")
Weld34 = Instance.new("Weld")
Weld35 = Instance.new("Weld")
Weld36 = Instance.new("Weld")
Weld37 = Instance.new("Weld")
Weld38 = Instance.new("Weld")
Weld39 = Instance.new("Weld")
Weld40 = Instance.new("Weld")
Weld41 = Instance.new("Weld")
Weld42 = Instance.new("Weld")
Weld43 = Instance.new("Weld")
Weld44 = Instance.new("Weld")
Weld45 = Instance.new("Weld")
Weld46 = Instance.new("Weld")
Weld47 = Instance.new("Weld")
Weld48 = Instance.new("Weld")
Weld49 = Instance.new("Weld")
Weld50 = Instance.new("Weld")
Weld51 = Instance.new("Weld")
Weld52 = Instance.new("Weld")
Weld53 = Instance.new("Weld")
Weld54 = Instance.new("Weld")
Weld55 = Instance.new("Weld")
Weld56 = Instance.new("Weld")
Weld57 = Instance.new("Weld")
Weld58 = Instance.new("Weld")
Weld59 = Instance.new("Weld")
Weld60 = Instance.new("Weld")
Weld61 = Instance.new("Weld")
Weld62 = Instance.new("Weld")
Weld63 = Instance.new("Weld")
Weld64 = Instance.new("Weld")
Weld65 = Instance.new("Weld")
Weld66 = Instance.new("Weld")
Weld67 = Instance.new("Weld")
Weld68 = Instance.new("Weld")
Weld69 = Instance.new("Weld")
Weld70 = Instance.new("Weld")
Weld71 = Instance.new("Weld")
Weld72 = Instance.new("Weld")
Weld73 = Instance.new("Weld")
Weld74 = Instance.new("Weld")
Weld75 = Instance.new("Weld")
Weld76 = Instance.new("Weld")
Weld77 = Instance.new("Weld")
Weld78 = Instance.new("Weld")
Weld79 = Instance.new("Weld")
Weld80 = Instance.new("Weld")
Weld81 = Instance.new("Weld")
Weld82 = Instance.new("Weld")
Weld83 = Instance.new("Weld")
Weld84 = Instance.new("Weld")
Weld85 = Instance.new("Weld")
Weld86 = Instance.new("Weld")
Weld87 = Instance.new("Weld")
Weld88 = Instance.new("Weld")
Weld89 = Instance.new("Weld")
Weld90 = Instance.new("Weld")
Weld91 = Instance.new("Weld")
Weld92 = Instance.new("Weld")
Weld93 = Instance.new("Weld")
Weld94 = Instance.new("Weld")
Weld95 = Instance.new("Weld")
Weld96 = Instance.new("Weld")
Weld97 = Instance.new("Weld")
Weld98 = Instance.new("Weld")
Weld99 = Instance.new("Weld")
Weld100 = Instance.new("Weld")
Weld101 = Instance.new("Weld")
Weld102 = Instance.new("Weld")
Weld103 = Instance.new("Weld")
Weld104 = Instance.new("Weld")
Weld105 = Instance.new("Weld")
Weld106 = Instance.new("Weld")
Weld107 = Instance.new("Weld")
Weld108 = Instance.new("Weld")
Weld109 = Instance.new("Weld")
Weld110 = Instance.new("Weld")
Weld111 = Instance.new("Weld")
Weld112 = Instance.new("Weld")
Weld113 = Instance.new("Weld")
Weld114 = Instance.new("Weld")
Weld115 = Instance.new("Weld")
Weld116 = Instance.new("Weld")
Weld117 = Instance.new("Weld")
Weld118 = Instance.new("Weld")
Weld119 = Instance.new("Weld")
Weld120 = Instance.new("Weld")
Weld121 = Instance.new("Weld")
Weld122 = Instance.new("Weld")
Weld123 = Instance.new("Weld")
Weld124 = Instance.new("Weld")
Weld125 = Instance.new("Weld")
Weld126 = Instance.new("Weld")
Weld127 = Instance.new("Weld")
Weld128 = Instance.new("Weld")
Weld129 = Instance.new("Weld")
Weld130 = Instance.new("Weld")
Weld131 = Instance.new("Weld")
Weld132 = Instance.new("Weld")
Weld133 = Instance.new("Weld")
Weld134 = Instance.new("Weld")
Weld135 = Instance.new("Weld")
Weld136 = Instance.new("Weld")
Weld137 = Instance.new("Weld")
Weld138 = Instance.new("Weld")
Weld139 = Instance.new("Weld")
Weld140 = Instance.new("Weld")
Weld141 = Instance.new("Weld")
Weld142 = Instance.new("Weld")
Weld143 = Instance.new("Weld")
Weld144 = Instance.new("Weld")
Weld145 = Instance.new("Weld")
Weld146 = Instance.new("Weld")
Weld147 = Instance.new("Weld")
Weld148 = Instance.new("Weld")
Weld149 = Instance.new("Weld")
Weld150 = Instance.new("Weld")
Weld151 = Instance.new("Weld")
Weld152 = Instance.new("Weld")
Weld153 = Instance.new("Weld")
Weld154 = Instance.new("Weld")
Weld155 = Instance.new("Weld")
Weld156 = Instance.new("Weld")
Weld157 = Instance.new("Weld")
Weld158 = Instance.new("Weld")
Weld159 = Instance.new("Weld")
Weld160 = Instance.new("Weld")
Weld161 = Instance.new("Weld")
Weld162 = Instance.new("Weld")
Part163 = Instance.new("Part")
SpecialMesh164 = Instance.new("SpecialMesh")
Part165 = Instance.new("Part")
SpecialMesh166 = Instance.new("SpecialMesh")
Part167 = Instance.new("Part")
SpecialMesh168 = Instance.new("SpecialMesh")
Part169 = Instance.new("Part")
SpecialMesh170 = Instance.new("SpecialMesh")
Part171 = Instance.new("Part")
SpecialMesh172 = Instance.new("SpecialMesh")
Part173 = Instance.new("Part")
SpecialMesh174 = Instance.new("SpecialMesh")
Part175 = Instance.new("Part")
SpecialMesh176 = Instance.new("SpecialMesh")
Part177 = Instance.new("Part")
SpecialMesh178 = Instance.new("SpecialMesh")
Part179 = Instance.new("Part")
SpecialMesh180 = Instance.new("SpecialMesh")
Part181 = Instance.new("Part")
SpecialMesh182 = Instance.new("SpecialMesh")
Part183 = Instance.new("Part")
SpecialMesh184 = Instance.new("SpecialMesh")
Part185 = Instance.new("Part")
SpecialMesh186 = Instance.new("SpecialMesh")
Part187 = Instance.new("Part")
SpecialMesh188 = Instance.new("SpecialMesh")
Part189 = Instance.new("Part")
SpecialMesh190 = Instance.new("SpecialMesh")
Part191 = Instance.new("Part")
SpecialMesh192 = Instance.new("SpecialMesh")
Part193 = Instance.new("Part")
SpecialMesh194 = Instance.new("SpecialMesh")
Part195 = Instance.new("Part")
SpecialMesh196 = Instance.new("SpecialMesh")
Part197 = Instance.new("Part")
SpecialMesh198 = Instance.new("SpecialMesh")
Part199 = Instance.new("Part")
SpecialMesh200 = Instance.new("SpecialMesh")
Part201 = Instance.new("Part")
SpecialMesh202 = Instance.new("SpecialMesh")
Part203 = Instance.new("Part")
SpecialMesh204 = Instance.new("SpecialMesh")
Part205 = Instance.new("Part")
SpecialMesh206 = Instance.new("SpecialMesh")
Part207 = Instance.new("Part")
SpecialMesh208 = Instance.new("SpecialMesh")
Part209 = Instance.new("Part")
SpecialMesh210 = Instance.new("SpecialMesh")
Part211 = Instance.new("Part")
SpecialMesh212 = Instance.new("SpecialMesh")
Part213 = Instance.new("Part")
SpecialMesh214 = Instance.new("SpecialMesh")
Part215 = Instance.new("Part")
SpecialMesh216 = Instance.new("SpecialMesh")
Part217 = Instance.new("Part")
SpecialMesh218 = Instance.new("SpecialMesh")
Part219 = Instance.new("Part")
SpecialMesh220 = Instance.new("SpecialMesh")
Part221 = Instance.new("Part")
SpecialMesh222 = Instance.new("SpecialMesh")
Part223 = Instance.new("Part")
SpecialMesh224 = Instance.new("SpecialMesh")
Part225 = Instance.new("Part")
SpecialMesh226 = Instance.new("SpecialMesh")
Part227 = Instance.new("Part")
SpecialMesh228 = Instance.new("SpecialMesh")
Part229 = Instance.new("Part")
SpecialMesh230 = Instance.new("SpecialMesh")
Part231 = Instance.new("Part")
SpecialMesh232 = Instance.new("SpecialMesh")
Part233 = Instance.new("Part")
SpecialMesh234 = Instance.new("SpecialMesh")
Part235 = Instance.new("Part")
SpecialMesh236 = Instance.new("SpecialMesh")
Part237 = Instance.new("Part")
SpecialMesh238 = Instance.new("SpecialMesh")
Part239 = Instance.new("Part")
SpecialMesh240 = Instance.new("SpecialMesh")
Part241 = Instance.new("Part")
SpecialMesh242 = Instance.new("SpecialMesh")
Part243 = Instance.new("Part")
SpecialMesh244 = Instance.new("SpecialMesh")
Part245 = Instance.new("Part")
SpecialMesh246 = Instance.new("SpecialMesh")
Part247 = Instance.new("Part")
SpecialMesh248 = Instance.new("SpecialMesh")
Part249 = Instance.new("Part")
SpecialMesh250 = Instance.new("SpecialMesh")
Part251 = Instance.new("Part")
SpecialMesh252 = Instance.new("SpecialMesh")
Part253 = Instance.new("Part")
SpecialMesh254 = Instance.new("SpecialMesh")
Part255 = Instance.new("Part")
SpecialMesh256 = Instance.new("SpecialMesh")
Part257 = Instance.new("Part")
SpecialMesh258 = Instance.new("SpecialMesh")
Part259 = Instance.new("Part")
SpecialMesh260 = Instance.new("SpecialMesh")
Part261 = Instance.new("Part")
SpecialMesh262 = Instance.new("SpecialMesh")
Part263 = Instance.new("Part")
SpecialMesh264 = Instance.new("SpecialMesh")
Part265 = Instance.new("Part")
SpecialMesh266 = Instance.new("SpecialMesh")
Part267 = Instance.new("Part")
SpecialMesh268 = Instance.new("SpecialMesh")
Part269 = Instance.new("Part")
SpecialMesh270 = Instance.new("SpecialMesh")
Part271 = Instance.new("Part")
SpecialMesh272 = Instance.new("SpecialMesh")
Part273 = Instance.new("Part")
SpecialMesh274 = Instance.new("SpecialMesh")
Part275 = Instance.new("Part")
SpecialMesh276 = Instance.new("SpecialMesh")
Part277 = Instance.new("Part")
SpecialMesh278 = Instance.new("SpecialMesh")
Part279 = Instance.new("Part")
SpecialMesh280 = Instance.new("SpecialMesh")
Part281 = Instance.new("Part")
SpecialMesh282 = Instance.new("SpecialMesh")
Part283 = Instance.new("Part")
SpecialMesh284 = Instance.new("SpecialMesh")
Part285 = Instance.new("Part")
SpecialMesh286 = Instance.new("SpecialMesh")
Part287 = Instance.new("Part")
SpecialMesh288 = Instance.new("SpecialMesh")
Part289 = Instance.new("Part")
SpecialMesh290 = Instance.new("SpecialMesh")
Part291 = Instance.new("Part")
SpecialMesh292 = Instance.new("SpecialMesh")
Part293 = Instance.new("Part")
SpecialMesh294 = Instance.new("SpecialMesh")
Part295 = Instance.new("Part")
SpecialMesh296 = Instance.new("SpecialMesh")
Part297 = Instance.new("Part")
SpecialMesh298 = Instance.new("SpecialMesh")
Part299 = Instance.new("Part")
SpecialMesh300 = Instance.new("SpecialMesh")
Part301 = Instance.new("Part")
SpecialMesh302 = Instance.new("SpecialMesh")
Part303 = Instance.new("Part")
SpecialMesh304 = Instance.new("SpecialMesh")
Part305 = Instance.new("Part")
SpecialMesh306 = Instance.new("SpecialMesh")
Part307 = Instance.new("Part")
SpecialMesh308 = Instance.new("SpecialMesh")
Part309 = Instance.new("Part")
SpecialMesh310 = Instance.new("SpecialMesh")
Part311 = Instance.new("Part")
SpecialMesh312 = Instance.new("SpecialMesh")
Part313 = Instance.new("Part")
SpecialMesh314 = Instance.new("SpecialMesh")
Part315 = Instance.new("Part")
SpecialMesh316 = Instance.new("SpecialMesh")
Part317 = Instance.new("Part")
SpecialMesh318 = Instance.new("SpecialMesh")
Part319 = Instance.new("Part")
SpecialMesh320 = Instance.new("SpecialMesh")
Part321 = Instance.new("Part")
SpecialMesh322 = Instance.new("SpecialMesh")
Part323 = Instance.new("Part")
SpecialMesh324 = Instance.new("SpecialMesh")
Part325 = Instance.new("Part")
SpecialMesh326 = Instance.new("SpecialMesh")
Part327 = Instance.new("Part")
SpecialMesh328 = Instance.new("SpecialMesh")
Part329 = Instance.new("Part")
SpecialMesh330 = Instance.new("SpecialMesh")
Part331 = Instance.new("Part")
SpecialMesh332 = Instance.new("SpecialMesh")
Part333 = Instance.new("Part")
SpecialMesh334 = Instance.new("SpecialMesh")
Part335 = Instance.new("Part")
SpecialMesh336 = Instance.new("SpecialMesh")
Part337 = Instance.new("Part")
SpecialMesh338 = Instance.new("SpecialMesh")
Part339 = Instance.new("Part")
SpecialMesh340 = Instance.new("SpecialMesh")
Part341 = Instance.new("Part")
SpecialMesh342 = Instance.new("SpecialMesh")
Part343 = Instance.new("Part")
SpecialMesh344 = Instance.new("SpecialMesh")
Part345 = Instance.new("Part")
SpecialMesh346 = Instance.new("SpecialMesh")
Part347 = Instance.new("Part")
SpecialMesh348 = Instance.new("SpecialMesh")
Part349 = Instance.new("Part")
SpecialMesh350 = Instance.new("SpecialMesh")
Part351 = Instance.new("Part")
SpecialMesh352 = Instance.new("SpecialMesh")
Part353 = Instance.new("Part")
SpecialMesh354 = Instance.new("SpecialMesh")
Part355 = Instance.new("Part")
SpecialMesh356 = Instance.new("SpecialMesh")
Part357 = Instance.new("Part")
SpecialMesh358 = Instance.new("SpecialMesh")
Part359 = Instance.new("Part")
SpecialMesh360 = Instance.new("SpecialMesh")
Part361 = Instance.new("Part")
SpecialMesh362 = Instance.new("SpecialMesh")
Part363 = Instance.new("Part")
SpecialMesh364 = Instance.new("SpecialMesh")
Part365 = Instance.new("Part")
SpecialMesh366 = Instance.new("SpecialMesh")
Part367 = Instance.new("Part")
SpecialMesh368 = Instance.new("SpecialMesh")
Part369 = Instance.new("Part")
SpecialMesh370 = Instance.new("SpecialMesh")
Part371 = Instance.new("Part")
SpecialMesh372 = Instance.new("SpecialMesh")
Part373 = Instance.new("Part")
SpecialMesh374 = Instance.new("SpecialMesh")
Part375 = Instance.new("Part")
SpecialMesh376 = Instance.new("SpecialMesh")
Part377 = Instance.new("Part")
SpecialMesh378 = Instance.new("SpecialMesh")
Part379 = Instance.new("Part")
SpecialMesh380 = Instance.new("SpecialMesh")
Part381 = Instance.new("Part")
SpecialMesh382 = Instance.new("SpecialMesh")
Part383 = Instance.new("Part")
SpecialMesh384 = Instance.new("SpecialMesh")
Part385 = Instance.new("Part")
SpecialMesh386 = Instance.new("SpecialMesh")
Part387 = Instance.new("Part")
SpecialMesh388 = Instance.new("SpecialMesh")
Part389 = Instance.new("Part")
SpecialMesh390 = Instance.new("SpecialMesh")
Part391 = Instance.new("Part")
SpecialMesh392 = Instance.new("SpecialMesh")
Part393 = Instance.new("Part")
SpecialMesh394 = Instance.new("SpecialMesh")
Part395 = Instance.new("Part")
SpecialMesh396 = Instance.new("SpecialMesh")
Part397 = Instance.new("Part")
SpecialMesh398 = Instance.new("SpecialMesh")
Part399 = Instance.new("Part")
SpecialMesh400 = Instance.new("SpecialMesh")
Part401 = Instance.new("Part")
SpecialMesh402 = Instance.new("SpecialMesh")
Part403 = Instance.new("Part")
SpecialMesh404 = Instance.new("SpecialMesh")
Part405 = Instance.new("Part")
SpecialMesh406 = Instance.new("SpecialMesh")
Part407 = Instance.new("Part")
SpecialMesh408 = Instance.new("SpecialMesh")
Part409 = Instance.new("Part")
SpecialMesh410 = Instance.new("SpecialMesh")
Part411 = Instance.new("Part")
SpecialMesh412 = Instance.new("SpecialMesh")
Part413 = Instance.new("Part")
SpecialMesh414 = Instance.new("SpecialMesh")
Part415 = Instance.new("Part")
SpecialMesh416 = Instance.new("SpecialMesh")
Part417 = Instance.new("Part")
SpecialMesh418 = Instance.new("SpecialMesh")
Part419 = Instance.new("Part")
SpecialMesh420 = Instance.new("SpecialMesh")
Part421 = Instance.new("Part")
SpecialMesh422 = Instance.new("SpecialMesh")
Part423 = Instance.new("Part")
SpecialMesh424 = Instance.new("SpecialMesh")
Part425 = Instance.new("Part")
SpecialMesh426 = Instance.new("SpecialMesh")
Part427 = Instance.new("Part")
SpecialMesh428 = Instance.new("SpecialMesh")
Part429 = Instance.new("Part")
SpecialMesh430 = Instance.new("SpecialMesh")
Part431 = Instance.new("Part")
SpecialMesh432 = Instance.new("SpecialMesh")
Part433 = Instance.new("Part")
SpecialMesh434 = Instance.new("SpecialMesh")
Part435 = Instance.new("Part")
SpecialMesh436 = Instance.new("SpecialMesh")
Part437 = Instance.new("Part")
SpecialMesh438 = Instance.new("SpecialMesh")
Part439 = Instance.new("Part")
SpecialMesh440 = Instance.new("SpecialMesh")
Part441 = Instance.new("Part")
SpecialMesh442 = Instance.new("SpecialMesh")
Part443 = Instance.new("Part")
SpecialMesh444 = Instance.new("SpecialMesh")
Part445 = Instance.new("Part")
SpecialMesh446 = Instance.new("SpecialMesh")
Part447 = Instance.new("Part")
SpecialMesh448 = Instance.new("SpecialMesh")
Part449 = Instance.new("Part")
SpecialMesh450 = Instance.new("SpecialMesh")
Part451 = Instance.new("Part")
SpecialMesh452 = Instance.new("SpecialMesh")
Part453 = Instance.new("Part")
SpecialMesh454 = Instance.new("SpecialMesh")
Part455 = Instance.new("Part")
SpecialMesh456 = Instance.new("SpecialMesh")
Part457 = Instance.new("Part")
SpecialMesh458 = Instance.new("SpecialMesh")
Part459 = Instance.new("Part")
SpecialMesh460 = Instance.new("SpecialMesh")
Part461 = Instance.new("Part")
SpecialMesh462 = Instance.new("SpecialMesh")
Part463 = Instance.new("Part")
SpecialMesh464 = Instance.new("SpecialMesh")
Part465 = Instance.new("Part")
SpecialMesh466 = Instance.new("SpecialMesh")
Part467 = Instance.new("Part")
SpecialMesh468 = Instance.new("SpecialMesh")
Part469 = Instance.new("Part")
SpecialMesh470 = Instance.new("SpecialMesh")
Part471 = Instance.new("Part")
SpecialMesh472 = Instance.new("SpecialMesh")
Part473 = Instance.new("Part")
SpecialMesh474 = Instance.new("SpecialMesh")
Part475 = Instance.new("Part")
SpecialMesh476 = Instance.new("SpecialMesh")
Model0.Parent = mas
Part1.Parent = Model0
Part1.CFrame = CFrame.new(-0.612978518, 3.52787709, -14.4877329, 0.999985635, -0.00299202278, 0.00444748998, 0.00513700023, 0.297964603, -0.95456326, 0.00153088011, 0.95457232, 0.297975689)
Part1.Orientation = Vector3.new(72.659996, 0.859999955, 0.98999995)
Part1.Position = Vector3.new(-0.612978518, 3.52787709, -14.4877329)
Part1.Rotation = Vector3.new(72.659996, 0.25, 0.170000002)
Part1.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part1.Velocity = Vector3.new(1.29135582e-08, 0.00246586069, 1.6969787e-07)
Part1.Size = Vector3.new(0.275000006, 0.22512494, 0.42337501)
Part1.Anchored = true
Part1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.BrickColor = BrickColor.new("Really black")
Part1.CanCollide = false
Part1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.Material = Enum.Material.Metal
Part1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part1.brickColor = BrickColor.new("Really black")
SpecialMesh2.Parent = Part1
SpecialMesh2.Scale = Vector3.new(0.400000006, 1, 0.5)
SpecialMesh2.MeshType = Enum.MeshType.Brick
Part3.Parent = Model0
Part3.CFrame = CFrame.new(-0.608517408, 2.57421446, -14.2038746, 0.999985635, 0.00162795268, -0.00510686403, 0.0051367972, -0.0189460143, 0.999807417, 0.00153088395, -0.999819279, -0.0189541057)
Part3.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part3.Position = Vector3.new(-0.608517408, 2.57421446, -14.2038746)
Part3.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part3.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part3.Velocity = Vector3.new(1.6413172e-07, 0.00246645301, 2.15686623e-06)
Part3.Size = Vector3.new(0.275000006, 0.315999985, 0.303375006)
Part3.Anchored = true
Part3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.BrickColor = BrickColor.new("Really black")
Part3.CanCollide = false
Part3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.Material = Enum.Material.Glass
Part3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part3.brickColor = BrickColor.new("Really black")
SpecialMesh4.Parent = Part3
SpecialMesh4.Scale = Vector3.new(0.5, 1, 0.5)
SpecialMesh4.MeshType = Enum.MeshType.Wedge
Weld5.Name = "BTWeld"
Weld5.Parent = Part3
Weld5.C1 = CFrame.new(1.78813934e-06, -0.442868233, -0.256871939, -1, 2.08499841e-07, 2.3712164e-07, -2.08849087e-07, -1.00000024, 0, 2.39566361e-07, 1.86264515e-09, 1.00000024)
Weld5.Part0 = Part3
Weld5.Part1 = Part441
Weld5.part1 = Part441
Weld6.Name = "BTWeld"
Weld6.Parent = Part3
Weld6.C1 = CFrame.new(2.8014183e-06, 0.12912178, 0.434119463, -1, -2.32830644e-10, 3.05299181e-08, 2.32830644e-10, 1.00000024, 1.80676579e-07, -3.2619937e-08, 1.76951289e-07, -1.00000024)
Weld6.Part0 = Part3
Weld6.Part1 = Part323
Weld6.part1 = Part323
Weld7.Name = "BTWeld"
Weld7.Parent = Part3
Weld7.C1 = CFrame.new(-3.09944153e-06, -0.192704201, -0.62885952, 1, 8.96397978e-08, 1.20697223e-07, -8.91741365e-08, 1.00000024, 1.78813934e-07, -1.1825432e-07, -1.78813934e-07, 1.00000024)
Weld7.Part0 = Part3
Weld7.Part1 = Part371
Weld7.part1 = Part371
Weld8.Name = "BTWeld"
Weld8.Parent = Part3
Weld8.C1 = CFrame.new(-2.86102295e-06, 0.0544996262, -0.312496185, 1, 2.32830644e-10, 1.14778231e-09, 2.32830644e-10, 1.00000024, 1.86264515e-09, 1.14778231e-09, 1.86264515e-09, 1.00000024)
Weld8.Part0 = Part3
Weld8.Part1 = Part167
Weld8.part1 = Part167
Weld9.Name = "BTWeld"
Weld9.Parent = Part3
Weld9.C1 = CFrame.new(3.63588333e-06, -2.63571262, -0.638117313, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld9.Part0 = Part3
Weld9.Part1 = Part177
Weld9.part1 = Part177
Weld10.Name = "BTWeld"
Weld10.Parent = Part3
Weld10.C1 = CFrame.new(-2.98023224e-06, -0.077252388, -0.223499537, 1, 2.32830644e-10, 1.14778231e-09, 2.32830644e-10, 1.00000024, 1.86264515e-09, 1.14778231e-09, 1.86264515e-09, 1.00000024)
Weld10.Part0 = Part3
Weld10.Part1 = Part277
Weld10.part1 = Part277
Weld11.Name = "BTWeld"
Weld11.Parent = Part3
Weld11.C1 = CFrame.new(1.90734863e-06, -0.629117966, -0.531242609, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld11.Part0 = Part3
Weld11.Part1 = Part427
Weld11.part1 = Part427
Weld12.Name = "BTWeld"
Weld12.Parent = Part3
Weld12.C1 = CFrame.new(3.87430191e-06, -1.56084347, -0.606865883, -1, 2.08499841e-07, 1.81222276e-07, -2.08849087e-07, -1.00000024, 0, 1.83687007e-07, 1.86264515e-09, 1.00000024)
Weld12.Part0 = Part3
Weld12.Part1 = Part209
Weld12.part1 = Part209
Weld13.Name = "BTWeld"
Weld13.Parent = Part3
Weld13.C1 = CFrame.new(-1.66893005e-06, -0.394741058, 0.453120232, 1, -1.19092874e-07, -2.68964868e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, -2.71322278e-07, 5.77419996e-08, -1.00000024)
Weld13.Part0 = Part3
Weld13.Part1 = Part265
Weld13.part1 = Part265
Weld14.Name = "BTWeld"
Weld14.Parent = Part3
Weld14.C1 = CFrame.new(-3.51667404e-06, -3.62178516, 0.128079414, 1, 2.32830644e-10, -2.82076144e-07, 4.92436811e-08, -0.984807968, 0.173648342, -2.7945498e-07, -0.173648342, -0.984807968)
Weld14.Part0 = Part3
Weld14.Part1 = Part445
Weld14.part1 = Part445
Weld15.Name = "BTWeld"
Weld15.Parent = Part3
Weld15.C1 = CFrame.new(1.7285347e-06, -0.568753242, -0.743589878, -1, 1.18976459e-07, 3.28123861e-07, -1.1944212e-07, -1.00000024, -8.94069672e-08, 3.30041075e-07, -8.7544322e-08, 1.00000024)
Weld15.Part0 = Part3
Weld15.Part1 = Part175
Weld15.part1 = Part175
Weld16.Name = "BTWeld"
Weld16.Parent = Part3
Weld16.C1 = CFrame.new(-0.568752289, -0.0312482715, 1.24358273, -5.98374754e-08, -1.00000024, 0, -1, 5.93718141e-08, 3.27925591e-07, -3.30370312e-07, -1.86264515e-09, -1.00000024)
Weld16.Part0 = Part3
Weld16.Part1 = Part433
Weld16.part1 = Part433
Weld17.Name = "BTWeld"
Weld17.Parent = Part3
Weld17.C1 = CFrame.new(1.7285347e-06, -0.568753242, -0.743589878, -1, 1.18976459e-07, 3.28123861e-07, -1.1944212e-07, -1.00000024, -8.94069672e-08, 3.30041075e-07, -8.7544322e-08, 1.00000024)
Weld17.Part0 = Part3
Weld17.Part1 = Part417
Weld17.part1 = Part417
Weld18.Name = "BTWeld"
Weld18.Parent = Part3
Weld18.C1 = CFrame.new(-3.09944153e-06, -0.364574432, -0.628859282, 1, 8.96397978e-08, 1.20697223e-07, -8.91741365e-08, 1.00000024, 1.78813934e-07, -1.1825432e-07, -1.78813934e-07, 1.00000024)
Weld18.Part0 = Part3
Weld18.Part1 = Part295
Weld18.part1 = Part295
Weld19.Name = "BTWeld"
Weld19.Parent = Part3
Weld19.C1 = CFrame.new(3.93390656e-06, -3.33387375, 1.42912102, -1, 2.08499841e-07, 7.08205334e-08, -1.35507435e-07, -0.838670611, 0.544639409, 1.75263267e-07, 0.544639468, 0.838670611)
Weld19.Part0 = Part3
Weld19.Part1 = Part165
Weld19.part1 = Part165
Weld20.Name = "BTWeld"
Weld20.Parent = Part3
Weld20.C1 = CFrame.new(1.78813934e-07, -3.38045502, 0.755048752, 1, 2.32830644e-10, -2.6903399e-07, -2.32830644e-10, -1.00000024, 8.7544322e-08, -2.71093086e-07, -9.12696123e-08, -1.00000024)
Weld20.Part0 = Part3
Weld20.Part1 = Part315
Weld20.part1 = Part315
Weld21.Name = "BTWeld"
Weld21.Parent = Part3
Weld21.C1 = CFrame.new(0.522247314, -0.031253159, 0.449784279, 2.578774e-06, -0.500000775, -0.866025329, 1, 2.96742655e-06, 1.26622399e-06, 1.93726737e-06, -0.866025329, 0.500000715)
Weld21.Part0 = Part3
Weld21.Part1 = Part457
Weld21.part1 = Part457
Weld22.Name = "BTWeld"
Weld22.Parent = Part3
Weld22.C1 = CFrame.new(-3.03983688e-06, -0.26757431, -0.628857851, 1, 8.96397978e-08, 1.20697223e-07, -8.91741365e-08, 1.00000024, 1.78813934e-07, -1.1825432e-07, -1.78813934e-07, 1.00000024)
Weld22.Part0 = Part3
Weld22.Part1 = Part363
Weld22.part1 = Part363
Weld23.Name = "BTWeld"
Weld23.Parent = Part3
Weld23.C1 = CFrame.new(-3.03983688e-06, 0.579193592, -0.519788742, 1, 2.08732672e-07, 7.35781214e-08, -9.66247171e-08, 0.707106471, -0.707107365, -1.97673216e-07, 0.707107365, 0.707106471)
Weld23.Part0 = Part3
Weld23.Part1 = Part429
Weld23.part1 = Part429
Weld24.Name = "BTWeld"
Weld24.Parent = Part3
Weld24.C1 = CFrame.new(3.57627869e-06, -2.7432127, -0.596743584, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld24.Part0 = Part3
Weld24.Part1 = Part253
Weld24.part1 = Part253
Weld25.Name = "BTWeld"
Weld25.Parent = Part3
Weld25.C1 = CFrame.new(-5.96046448e-08, -0.0365514755, -0.0244483948, -1, 2.08383426e-07, 3.34477591e-07, -3.4889672e-07, -0.866025686, -0.49999994, 1.87254045e-07, -0.499999881, 0.866025686)
Weld25.Part0 = Part3
Weld25.Part1 = Part383
Weld25.part1 = Part383
Weld26.Name = "BTWeld"
Weld26.Parent = Part3
Weld26.C1 = CFrame.new(0.0437097549, -0.0312481523, 1.49426508, -1.02329068e-07, -0.707107306, -0.707106531, -1, -1.1047814e-07, 2.52499376e-07, -2.57976353e-07, 0.70710659, -0.707107306)
Weld26.Part0 = Part3
Weld26.Part1 = Part289
Weld26.part1 = Part289
Weld27.Name = "BTWeld"
Weld27.Parent = Part3
Weld27.C1 = CFrame.new(-0.390325546, -0.0312492251, 0.188101292, 1.53668225e-07, 0.866025686, 0.5, -1, 1.49011612e-07, 4.73319233e-08, -3.19560058e-08, -0.49999994, 0.866025686)
Weld27.Part0 = Part3
Weld27.Part1 = Part465
Weld27.part1 = Part465
Weld28.Name = "BTWeld"
Weld28.Parent = Part3
Weld28.C1 = CFrame.new(3.69548798e-06, 1.39622211, 0.606865406, -1, -8.95233825e-08, 3.02316039e-08, -8.91741365e-08, 1.00000024, -8.94069672e-08, -3.26745067e-08, -9.12696123e-08, -1.00000024)
Weld28.Part0 = Part3
Weld28.Part1 = Part325
Weld28.part1 = Part325
Weld29.Name = "BTWeld"
Weld29.Parent = Part3
Weld29.C1 = CFrame.new(-3.03983688e-06, -0.0283536911, -0.593729019, 1, 8.95233825e-08, 4.61641321e-08, -6.54254109e-08, 0.923879802, -0.382683307, -7.52625056e-08, 0.382683337, 0.923879921)
Weld29.Part0 = Part3
Weld29.Part1 = Part435
Weld29.part1 = Part435
Weld30.Name = "BTWeld"
Weld30.Parent = Part3
Weld30.C1 = CFrame.new(-2.98023224e-06, 0.0857448578, -0.331493855, 1, 2.32830644e-10, 1.14778231e-09, 2.32830644e-10, 1.00000024, 1.86264515e-09, 1.14778231e-09, 1.86264515e-09, 1.00000024)
Weld30.Part0 = Part3
Weld30.Part1 = Part297
Weld30.part1 = Part297
Weld31.Name = "BTWeld"
Weld31.Parent = Part3
Weld31.C1 = CFrame.new(2.98023224e-06, 0.0857439041, 0.434119463, -1, -2.32830644e-10, -8.87230271e-08, 2.32830644e-10, 1.00000024, 1.86264515e-09, 8.63965397e-08, -1.86264515e-09, -1.00000024)
Weld31.Part0 = Part3
Weld31.Part1 = Part403
Weld31.part1 = Part403
Weld32.Name = "BTWeld"
Weld32.Parent = Part3
Weld32.C1 = CFrame.new(3.69548798e-06, -1.12822342, -0.591116667, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld32.Part0 = Part3
Weld32.Part1 = Part317
Weld32.part1 = Part317
Weld33.Name = "BTWeld"
Weld33.Parent = Part3
Weld33.C1 = CFrame.new(-3.57627869e-06, 1.17320824, 0.736830235, 1, -1.19092874e-07, 2.04781827e-07, -1.19325705e-07, -1.00000024, 2.68220901e-07, 2.03222953e-07, -2.68220901e-07, -1.00000024)
Weld33.Part0 = Part3
Weld33.Part1 = Part171
Weld33.part1 = Part171
Weld34.Name = "BTWeld"
Weld34.Parent = Part3
Weld34.C1 = CFrame.new(3.51667404e-06, -2.70561504, -1.06026649, -1, 1.18976459e-07, 3.69582267e-07, -1.82189979e-07, -0.984807968, -0.173648283, 3.45506123e-07, -0.173648298, 0.984807968)
Weld34.Part0 = Part3
Weld34.Part1 = Part251
Weld34.part1 = Part251
Weld35.Name = "BTWeld"
Weld35.Parent = Part3
Weld35.C1 = CFrame.new(0.568753242, -0.0312516689, 1.24358273, 1.1944212e-07, 1.00000024, 0, 1, -1.18976459e-07, -3.28123861e-07, -3.30370312e-07, -1.86264515e-09, -1.00000024)
Weld35.Part0 = Part3
Weld35.Part1 = Part443
Weld35.part1 = Part443
Weld36.Name = "BTWeld"
Weld36.Parent = Part3
Weld36.C1 = CFrame.new(-0.00166904926, -3.09995842, -0.665301085, -1, -2.32830644e-10, 6.22057996e-08, -1.16415322e-10, -1.00000024, -6.14672899e-08, 6.45686669e-08, -5.77419996e-08, 1.00000024)
Weld36.Part0 = Part3
Weld36.Part1 = Part243
Weld36.part1 = Part243
Weld37.Name = "BTWeld"
Weld37.Parent = Part3
Weld37.C1 = CFrame.new(-1.3257277, -0.0312492847, 5.10531425, 9.66574589e-08, 0.0174533594, 0.999847949, -1, 2.08499841e-07, 9.1315087e-08, -2.07335688e-07, -0.999847949, 0.0174533576)
Weld37.Part0 = Part3
Weld37.Part1 = Part191
Weld37.part1 = Part191
Weld38.Name = "BTWeld"
Weld38.Parent = Part3
Weld38.C1 = CFrame.new(2.98023224e-06, -0.520121574, 0.565322638, -1, 2.08499841e-07, -1.4426405e-08, 1.87777914e-07, 0.923879921, 0.382683069, 9.12114047e-08, 0.382683039, -0.923879921)
Weld38.Part0 = Part3
Weld38.Part1 = Part459
Weld38.part1 = Part459
Weld39.Name = "BTWeld"
Weld39.Parent = Part3
Weld39.C1 = CFrame.new(-2.44379044e-06, 1.62276363, -0.980819702, 1, -3.87430191e-07, 3.99177225e-08, -1.89582352e-07, -0.569997728, -0.821646571, 3.3993274e-07, 0.821646512, -0.569997668)
Weld39.Part0 = Part3
Weld39.Part1 = Part327
Weld39.part1 = Part327
Weld40.Name = "BTWeld"
Weld40.Parent = Part3
Weld40.C1 = CFrame.new(3.69548798e-06, -1.7807188, -0.638116598, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld40.Part0 = Part3
Weld40.Part1 = Part229
Weld40.part1 = Part229
Weld41.Name = "BTWeld"
Weld41.Parent = Part3
Weld41.C1 = CFrame.new(-2.98023224e-06, -0.170754433, -0.381493092, 1, 2.32830644e-10, 1.14778231e-09, 2.32830644e-10, 1.00000024, 1.86264515e-09, 1.14778231e-09, 1.86264515e-09, 1.00000024)
Weld41.Part0 = Part3
Weld41.Part1 = Part469
Weld41.part1 = Part469
Weld42.Name = "BTWeld"
Weld42.Parent = Part3
Weld42.C1 = CFrame.new(1.7285347e-06, -0.568753242, -0.743589878, -1, 1.18976459e-07, 3.28123861e-07, -1.1944212e-07, -1.00000024, -8.94069672e-08, 3.30041075e-07, -8.7544322e-08, 1.00000024)
Weld42.Part0 = Part3
Weld42.Part1 = Part169
Weld42.part1 = Part169
Weld43.Name = "BTWeld"
Weld43.Parent = Part3
Weld43.C1 = CFrame.new(1.84774399e-06, -0.227245331, -0.390619993, -1, 1.18976459e-07, 3.56074452e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.58400939e-07, -5.77419996e-08, 1.00000024)
Weld43.Part0 = Part3
Weld43.Part1 = Part463
Weld43.part1 = Part463
Weld44.Name = "BTWeld"
Weld44.Parent = Part3
Weld44.C1 = CFrame.new(-1.84774399e-06, 0.916108131, -0.790865183, 1, -5.93718141e-08, 2.56368367e-08, 5.97210601e-08, 1.00000024, 5.96046448e-08, -2.29756552e-08, -5.77419996e-08, 1.00000024)
Weld44.Part0 = Part3
Weld44.Part1 = Part411
Weld44.part1 = Part411
Weld45.Name = "BTWeld"
Weld45.Parent = Part3
Weld45.C1 = CFrame.new(3.75509262e-06, -2.08321857, -0.731868029, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld45.Part0 = Part3
Weld45.Part1 = Part475
Weld45.part1 = Part475
Weld46.Name = "BTWeld"
Weld46.Parent = Part3
Weld46.C1 = CFrame.new(0.00166875124, 3.12339592, -0.606613398, 1, -1.18976459e-07, -6.2136678e-08, 1.1944212e-07, 1.00000024, -8.94069672e-08, 6.48051355e-08, 9.12696123e-08, 1.00000024)
Weld46.Part0 = Part3
Weld46.Part1 = Part473
Weld46.part1 = Part473
Weld47.Name = "BTWeld"
Weld47.Parent = Part3
Weld47.C1 = CFrame.new(-0.246384621, -0.03125, 0.315700531, 8.35862011e-08, -0.965926051, 0.258819014, 1, 6.17001206e-08, -9.08512447e-08, 7.39237294e-08, 0.258818984, 0.965926111)
Weld47.Part0 = Part3
Weld47.Part1 = Part355
Weld47.part1 = Part355
Weld48.Name = "BTWeld"
Weld48.Parent = Part3
Weld48.C1 = CFrame.new(2.74181366e-06, 0.908480644, 0.621105194, -1, 3.87430191e-07, -2.68737494e-08, -1.25437509e-07, -0.382683992, -0.923879504, -3.67756002e-07, -0.923879564, 0.382684022)
Weld48.Part0 = Part3
Weld48.Part1 = Part341
Weld48.part1 = Part341
Weld49.Name = "BTWeld"
Weld49.Parent = Part3
Weld49.C1 = CFrame.new(1.96695328e-06, -0.43809557, 0.254676819, -1, 2.08499841e-07, 8.61909939e-08, -8.48667696e-08, -0.707106531, 0.707107365, 2.10478902e-07, 0.707107365, 0.707106471)
Weld49.Part0 = Part3
Weld49.Part1 = Part269
Weld49.part1 = Part269
Weld50.Name = "BTWeld"
Weld50.Parent = Part3
Weld50.C1 = CFrame.new(1.32572746, -0.0312505364, 5.10531616, -1.84201781e-07, -0.0174533594, -0.999847949, 1, -2.08499841e-07, -1.78890332e-07, -2.05705874e-07, -0.999847949, 0.0174533576)
Weld50.Part0 = Part3
Weld50.Part1 = Part379
Weld50.part1 = Part379
Weld51.Name = "BTWeld"
Weld51.Parent = Part3
Weld51.C1 = CFrame.new(1.7285347e-06, -0.242359161, -0.146375895, -1, 2.08499841e-07, 2.3712164e-07, -2.08849087e-07, -1.00000024, 0, 2.39566361e-07, 1.86264515e-09, 1.00000024)
Weld51.Part0 = Part3
Weld51.Part1 = Part455
Weld51.part1 = Part455
Weld52.Name = "BTWeld"
Weld52.Parent = Part3
Weld52.C1 = CFrame.new(-3.03983688e-06, -0.143110275, -0.641388893, 1, 8.95233825e-08, 7.0387614e-08, -6.88014552e-08, 0.96592617, -0.258818775, -8.91450327e-08, 0.258818746, 0.96592623)
Weld52.Part0 = Part3
Weld52.Part1 = Part453
Weld52.part1 = Part453
Weld53.Name = "BTWeld"
Weld53.Parent = Part3
Weld53.C1 = CFrame.new(1.84774399e-06, -0.316618919, -0.362743855, -1, 1.18976459e-07, 3.56074452e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.58400939e-07, -5.77419996e-08, 1.00000024)
Weld53.Part0 = Part3
Weld53.Part1 = Part425
Weld53.part1 = Part425
Weld54.Name = "BTWeld"
Weld54.Parent = Part3
Weld54.C1 = CFrame.new(-2.44379044e-06, 3.96811485, 0.642149091, 1, -2.08499841e-07, 1.92838343e-07, -1.85798854e-07, -0.993572116, -0.113202929, 2.13360181e-07, 0.113202937, -0.993572235)
Weld54.Part0 = Part3
Weld54.Part1 = Part241
Weld54.part1 = Part241
Weld55.Name = "BTWeld"
Weld55.Parent = Part3
Weld55.C1 = CFrame.new(-2.08616257e-06, 0.207164764, -0.535107613, 1, 2.08732672e-07, 7.35781214e-08, -2.08383426e-07, 1.00000024, 1.78813934e-07, -7.12225301e-08, -1.76951289e-07, 1.00000024)
Weld55.Part0 = Part3
Weld55.Part1 = Part321
Weld55.part1 = Part321
Weld56.Name = "BTWeld"
Weld56.Parent = Part3
Weld56.C1 = CFrame.new(0.3903265, -0.0312507153, 0.188101292, -2.43075192e-07, -0.866025627, -0.5, 1, -2.29571015e-07, -8.65911716e-08, -3.80096026e-08, -0.49999994, 0.866025686)
Weld56.Part0 = Part3
Weld56.Part1 = Part449
Weld56.part1 = Part449
Weld57.Name = "BTWeld"
Weld57.Parent = Part3
Weld57.C1 = CFrame.new(4.0832634, -0.0312500596, 2.68361759, -3.40398401e-07, -0.719340265, -0.694658279, 1, -3.15834768e-07, -1.60429408e-07, -1.03143975e-07, -0.694658279, 0.719340265)
Weld57.Part0 = Part3
Weld57.Part1 = Part261
Weld57.part1 = Part261
Weld58.Name = "BTWeld"
Weld58.Parent = Part3
Weld58.C1 = CFrame.new(3.87430191e-06, -2.97136497, -1.32431102, -1, 1.19092874e-07, 2.00954673e-07, -1.67870894e-07, -0.965925992, -0.258819073, 1.64814992e-07, -0.258819073, 0.965926111)
Weld58.Part0 = Part3
Weld58.Part1 = Part367
Weld58.part1 = Part367
Weld59.Name = "BTWeld"
Weld59.Parent = Part3
Weld59.C1 = CFrame.new(-3.21865082e-06, -0.0555143356, 0.74919796, 1, 2.08732672e-07, 1.05254003e-07, 7.4505806e-08, -0.707106292, 0.707107484, 2.20257789e-07, -0.707107544, -0.707106352)
Weld59.Part0 = Part3
Weld59.Part1 = Part179
Weld59.part1 = Part179
Weld60.Name = "BTWeld"
Weld60.Parent = Part3
Weld60.C1 = CFrame.new(0.854812145, -0.0312569141, 0.683163643, -7.71833584e-08, 0.707106531, -0.707107306, 1, 1.8987339e-07, 8.20728019e-08, 1.90921128e-07, -0.707107365, -0.707106531)
Weld60.Part0 = Part3
Weld60.Part1 = Part437
Weld60.part1 = Part437
Weld61.Name = "BTWeld"
Weld61.Parent = Part3
Weld61.C1 = CFrame.new(1.84774399e-06, -0.363491058, -0.331495762, -1, 1.18976459e-07, 3.56074452e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.58400939e-07, -5.77419996e-08, 1.00000024)
Weld61.Part0 = Part3
Weld61.Part1 = Part365
Weld61.part1 = Part365
Weld62.Name = "BTWeld"
Weld62.Parent = Part3
Weld62.C1 = CFrame.new(-5.96046448e-08, -0.251069069, 0.0857863426, -1, 2.08499841e-07, 1.84947567e-07, -1.53202564e-07, -0.965926051, 0.258819163, 2.35246262e-07, 0.258819163, 0.96592617)
Weld62.Part0 = Part3
Weld62.Part1 = Part423
Weld62.part1 = Part423
Weld63.Name = "BTWeld"
Weld63.Parent = Part3
Weld63.C1 = CFrame.new(2.92062759e-06, 0.530877113, 0.384551048, -1, -2.32830644e-10, 1.16708179e-07, -1.19271135e-07, -1.01514161e-06, -1.00000024, -1.16415322e-10, -1.00000024, 1.01141632e-06)
Weld63.Part0 = Part3
Weld63.Part1 = Part421
Weld63.part1 = Part421
Weld64.Name = "BTWeld"
Weld64.Parent = Part3
Weld64.C1 = CFrame.new(3.81469727e-06, -1.63659573, -0.658368826, -1, 2.08499841e-07, 1.81222276e-07, -2.08849087e-07, -1.00000024, 0, 1.83687007e-07, 1.86264515e-09, 1.00000024)
Weld64.Part0 = Part3
Weld64.Part1 = Part391
Weld64.part1 = Part391
Weld65.Name = "BTWeld"
Weld65.Parent = Part3
Weld65.C1 = CFrame.new(3.93390656e-06, -2.9557457, -1.37312269, -1, 1.19092874e-07, 2.00954673e-07, -1.67870894e-07, -0.965925992, -0.258819073, 1.64814992e-07, -0.258819073, 0.965926111)
Weld65.Part0 = Part3
Weld65.Part1 = Part419
Weld65.part1 = Part419
Weld66.Name = "BTWeld"
Weld66.Parent = Part3
Weld66.C1 = CFrame.new(-2.98023224e-07, 3.86712265, 0.467648745, 1, -2.08499841e-07, 1.92838343e-07, -1.85798854e-07, -0.993572116, -0.113202929, 2.13360181e-07, 0.113202937, -0.993572235)
Weld66.Part0 = Part3
Weld66.Part1 = Part415
Weld66.part1 = Part415
Weld67.Name = "BTWeld"
Weld67.Parent = Part3
Weld67.C1 = CFrame.new(-2.02655792e-06, 0.114692688, -0.875624657, 1, 2.08732672e-07, 7.35781214e-08, -2.19908543e-07, 0.965926111, 0.258818954, -1.55705493e-08, -0.258818954, 0.96592617)
Weld67.Part0 = Part3
Weld67.Part1 = Part193
Weld67.part1 = Part193
Weld68.Name = "BTWeld"
Weld68.Parent = Part3
Weld68.C1 = CFrame.new(1.84774399e-06, -0.820864677, -0.453119278, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld68.Part0 = Part3
Weld68.Part1 = Part447
Weld68.part1 = Part447
Weld69.Name = "BTWeld"
Weld69.Parent = Part3
Weld69.C1 = CFrame.new(1.84774399e-06, -0.879114151, -0.453119278, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld69.Part0 = Part3
Weld69.Part1 = Part329
Weld69.part1 = Part329
Weld70.Name = "BTWeld"
Weld70.Parent = Part3
Weld70.C1 = CFrame.new(-3.09944153e-06, 2.06479263, 0.744927168, 1, -1.19092874e-07, 2.05247488e-07, -1.07684173e-07, -0.998391926, -0.0566923842, 2.10064172e-07, 0.0566923767, -0.998391867)
Weld70.Part0 = Part3
Weld70.Part1 = Part213
Weld70.part1 = Part213
Weld71.Name = "BTWeld"
Weld71.Parent = Part3
Weld71.C1 = CFrame.new(-4.0832634, -0.0312493443, 2.68361759, 2.50991434e-07, 0.719340265, 0.694658279, -1, 2.34693289e-07, 1.15569492e-07, -7.84639269e-08, -0.694658279, 0.719340265)
Weld71.Part0 = Part3
Weld71.Part1 = Part257
Weld71.part1 = Part257
Weld72.Name = "BTWeld"
Weld72.Parent = Part3
Weld72.C1 = CFrame.new(1.84774399e-06, -0.227245331, -0.390619993, -1, 1.18976459e-07, 3.56074452e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.58400939e-07, -5.77419996e-08, 1.00000024)
Weld72.Part0 = Part3
Weld72.Part1 = Part173
Weld72.part1 = Part173
Weld73.Name = "BTWeld"
Weld73.Parent = Part3
Weld73.C1 = CFrame.new(2.86102295e-06, 0.835924149, -0.142241955, -1, 3.27709131e-07, -1.37008101e-07, -1.36438757e-07, -0.707107067, -0.707106829, -3.27592716e-07, -0.707106769, 0.707107008)
Weld73.Part0 = Part3
Weld73.Part1 = Part361
Weld73.part1 = Part361
Weld74.Name = "BTWeld"
Weld74.Parent = Part3
Weld74.C1 = CFrame.new(-0.00166893005, 2.82995987, 0.726299524, -1, 1.18976459e-07, 1.49711923e-07, 1.1944212e-07, 1.00000024, 0, -1.52022039e-07, -1.86264515e-09, -1.00000024)
Weld74.Part0 = Part3
Weld74.Part1 = Part377
Weld74.part1 = Part377
Weld75.Name = "BTWeld"
Weld75.Parent = Part3
Weld75.C1 = CFrame.new(1.7285347e-06, 0.0122146606, -1.26963711, -1, -2.32830644e-10, 3.04902642e-07, -2.17230991e-07, -0.707107246, -0.70710665, 2.16532499e-07, -0.70710665, 0.707107186)
Weld75.Part0 = Part3
Weld75.Part1 = Part283
Weld75.part1 = Part283
Weld76.Name = "BTWeld"
Weld76.Parent = Part3
Weld76.C1 = CFrame.new(-2.86102295e-06, -0.724999189, 0.384550095, 1, -1.19092874e-07, -4.21059667e-08, 4.47653292e-08, 1.01514161e-06, 1.00000024, -1.19325705e-07, -1.00000024, 1.01327896e-06)
Weld76.Part0 = Part3
Weld76.Part1 = Part291
Weld76.part1 = Part291
Weld77.Name = "BTWeld"
Weld77.Parent = Part3
Weld77.C1 = CFrame.new(-8.94069672e-07, 4.09370422, 0.476376891, 1, -5.93718141e-08, 2.00789145e-07, -3.6903657e-08, -0.993572116, -0.113202639, 2.04046955e-07, 0.113202639, -0.993572235)
Weld77.Part0 = Part3
Weld77.Part1 = Part395
Weld77.part1 = Part395
Weld78.Name = "BTWeld"
Weld78.Parent = Part3
Weld78.C1 = CFrame.new(2.92062759e-06, -0.468894958, 0.574460983, -1, 2.08499841e-07, -3.86498868e-08, 1.92318112e-07, 0.965926051, 0.258818746, 8.94651748e-08, 0.258818746, -0.965926111)
Weld78.Part0 = Part3
Weld78.Part1 = Part451
Weld78.part1 = Part451
Weld79.Name = "BTWeld"
Weld79.Parent = Part3
Weld79.C1 = CFrame.new(1.90734863e-06, 0.962981224, 0.66424036, -1, 5.93718141e-08, 6.19384082e-08, 5.98374754e-08, 1.00000024, -8.94069672e-08, -6.48051355e-08, -9.12696123e-08, -1.00000024)
Weld79.Part0 = Part3
Weld79.Part1 = Part203
Weld79.part1 = Part203
Weld80.Name = "BTWeld"
Weld80.Parent = Part3
Weld80.C1 = CFrame.new(-1.93451118, -0.0312488079, -0.270594597, 1.53435394e-07, 0.998629808, 0.0523359701, -1, 1.53202564e-07, 4.08908818e-09, -2.91402102e-09, -0.0523359627, 0.998629689)
Weld80.Part0 = Part3
Weld80.Part1 = Part397
Weld80.part1 = Part397
Weld81.Name = "BTWeld"
Weld81.Parent = Part3
Weld81.C1 = CFrame.new(-1.90734863e-06, 0.382622719, -0.453119993, 1, 2.32830644e-10, 1.14778231e-09, 2.32830644e-10, 1.00000024, 1.86264515e-09, 1.14778231e-09, 1.86264515e-09, 1.00000024)
Weld81.Part0 = Part3
Weld81.Part1 = Part237
Weld81.part1 = Part237
Weld82.Name = "BTWeld"
Weld82.Parent = Part3
Weld82.C1 = CFrame.new(-1.90734863e-06, 1.7890873, 3.13711452, 1, 2.68220901e-07, 1.37593815e-07, 9.1502443e-08, -0.700908601, 0.713251352, 2.86381692e-07, -0.713251412, -0.700908601)
Weld82.Part0 = Part3
Weld82.Part1 = Part373
Weld82.part1 = Part373
Weld83.Name = "BTWeld"
Weld83.Parent = Part3
Weld83.C1 = CFrame.new(-3.57627869e-06, 1.17321014, 0.911328077, 1, -1.19092874e-07, 2.04781827e-07, -1.19325705e-07, -1.00000024, 2.68220901e-07, 2.03222953e-07, -2.68220901e-07, -1.00000024)
Weld83.Part0 = Part3
Weld83.Part1 = Part163
Weld83.part1 = Part163
Weld84.Name = "BTWeld"
Weld84.Parent = Part3
Weld84.C1 = CFrame.new(1.7285347e-06, -0.568753242, -0.743589878, -1, 1.18976459e-07, 3.28123861e-07, -1.1944212e-07, -1.00000024, -8.94069672e-08, 3.30041075e-07, -8.7544322e-08, 1.00000024)
Weld84.Part0 = Part3
Weld84.Part1 = Part281
Weld84.part1 = Part281
Weld85.Name = "BTWeld"
Weld85.Parent = Part3
Weld85.C1 = CFrame.new(-4.17232513e-07, 4.000597, -2.49560165, 1, -3.27709131e-07, 1.59834599e-07, -1.16531737e-07, -0.700910211, -0.713249803, 3.44938599e-07, 0.713249862, -0.700910151)
Weld85.Part0 = Part3
Weld85.Part1 = Part345
Weld85.part1 = Part345
Weld86.Name = "BTWeld"
Weld86.Parent = Part3
Weld86.C1 = CFrame.new(1.78813934e-06, -0.568753242, -1.01896238, -1, 1.18976459e-07, 3.28123861e-07, -1.1944212e-07, -1.00000024, -8.94069672e-08, 3.30041075e-07, -8.7544322e-08, 1.00000024)
Weld86.Part0 = Part3
Weld86.Part1 = Part399
Weld86.part1 = Part399
Weld87.Name = "BTWeld"
Weld87.Parent = Part3
Weld87.C1 = CFrame.new(3.69548798e-06, -2.28520775, -0.633616686, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld87.Part0 = Part3
Weld87.Part1 = Part199
Weld87.part1 = Part199
Weld88.Name = "BTWeld"
Weld88.Parent = Part3
Weld88.C1 = CFrame.new(1.78813934e-06, -0.829603195, -0.33899641, -1, 2.08499841e-07, 1.81222276e-07, -2.08849087e-07, -1.00000024, 0, 1.83687007e-07, 1.86264515e-09, 1.00000024)
Weld88.Part0 = Part3
Weld88.Part1 = Part219
Weld88.part1 = Part219
Weld89.Name = "BTWeld"
Weld89.Parent = Part3
Weld89.C1 = CFrame.new(-3.33786011e-06, -0.0132074356, 0.994934082, 1, 2.32830644e-10, 2.04248863e-07, -5.65778464e-08, -0.960049927, 0.279829443, 1.94384484e-07, -0.279829443, -0.960049987)
Weld89.Part0 = Part3
Weld89.Part1 = Part1
Weld89.part1 = Part1
Weld90.Name = "BTWeld"
Weld90.Parent = Part3
Weld90.C1 = CFrame.new(1.96695328e-06, 0.916108131, 0.907114267, -1, 5.93718141e-08, 6.19384082e-08, 5.98374754e-08, 1.00000024, -8.94069672e-08, -6.48051355e-08, -9.12696123e-08, -1.00000024)
Weld90.Part0 = Part3
Weld90.Part1 = Part275
Weld90.part1 = Part275
Weld91.Name = "BTWeld"
Weld91.Parent = Part3
Weld91.C1 = CFrame.new(-1.7285347e-06, -1.12285709, 0.789239883, 1, 2.32830644e-10, -1.49781044e-07, -1.16415322e-10, -1.00000024, -6.14672899e-08, -1.52112989e-07, 5.77419996e-08, -1.00000024)
Weld91.Part0 = Part3
Weld91.Part1 = Part233
Weld91.part1 = Part233
Weld92.Name = "BTWeld"
Weld92.Parent = Part3
Weld92.C1 = CFrame.new(3.03983688e-06, 0.303620577, 0.382497787, -1, -2.08732672e-07, 1.17877789e-07, -1.20393452e-07, -1.19395554e-06, -1.00000024, 2.08499841e-07, -1.00000024, 1.1920929e-06)
Weld92.Part0 = Part3
Weld92.Part1 = Part221
Weld92.part1 = Part221
Weld93.Name = "BTWeld"
Weld93.Parent = Part3
Weld93.C1 = CFrame.new(-0.522247314, -0.0312470198, 0.449783325, -2.65327981e-06, 0.500000775, 0.866025329, -1, -2.96032522e-06, -1.35692608e-06, 1.88592821e-06, -0.866025269, 0.500000715)
Weld93.Part0 = Part3
Weld93.Part1 = Part467
Weld93.part1 = Part467
Weld94.Name = "BTWeld"
Weld94.Parent = Part3
Weld94.C1 = CFrame.new(-3.4570694e-06, 1.39806747, 0.593937159, 1, -1.19092874e-07, 2.05247488e-07, -1.07684173e-07, -0.998391926, -0.0566924736, 2.09929567e-07, 0.0566924661, -0.998391867)
Weld94.Part0 = Part3
Weld94.Part1 = Part339
Weld94.part1 = Part339
Weld95.Name = "BTWeld"
Weld95.Parent = Part3
Weld95.C1 = CFrame.new(0.795685768, -0.0312509537, -0.711493969, -8.45175236e-08, -0.932008028, 0.362438083, 1, -8.89413059e-08, 5.51335688e-09, 2.98023224e-08, 0.362438083, 0.932008028)
Weld95.Part0 = Part3
Weld95.Part1 = Part401
Weld95.part1 = Part401
Weld96.Name = "BTWeld"
Weld96.Parent = Part3
Weld96.C1 = CFrame.new(3.93390656e-06, -1.17022419, -0.44987011, -1, 2.08499841e-07, 1.81222276e-07, -2.08849087e-07, -1.00000024, 0, 1.83687007e-07, 1.86264515e-09, 1.00000024)
Weld96.Part0 = Part3
Weld96.Part1 = Part409
Weld96.part1 = Part409
Weld97.Name = "BTWeld"
Weld97.Parent = Part3
Weld97.C1 = CFrame.new(-2.92062759e-06, 2.3621769, 0.817341089, 1, -1.19092874e-07, 1.99657734e-07, -1.07917003e-07, -0.998391926, -0.0566924736, 2.04341632e-07, 0.0566924661, -0.998391867)
Weld97.Part0 = Part3
Weld97.Part1 = Part381
Weld97.part1 = Part381
Weld98.Name = "BTWeld"
Weld98.Parent = Part3
Weld98.C1 = CFrame.new(-0.431774139, -0.0312498212, 0.503154755, 7.72997737e-08, -0.70710665, 0.707107186, 1, 2.03726813e-08, -8.74406396e-08, 4.88944352e-08, 0.707107186, 0.70710665)
Weld98.Part0 = Part3
Weld98.Part1 = Part431
Weld98.part1 = Part431
Weld99.Name = "BTWeld"
Weld99.Parent = Part3
Weld99.C1 = CFrame.new(-3.15904617e-06, 0.420814514, 0.987199306, 1, -1.18976459e-07, 2.12703526e-07, -1.42492354e-07, -0.993572056, 0.1132036, 1.96479959e-07, -0.113203593, -0.993572116)
Weld99.Part0 = Part3
Weld99.Part1 = Part215
Weld99.part1 = Part215
Weld100.Name = "BTWeld"
Weld100.Parent = Part3
Weld100.C1 = CFrame.new(1.66893005e-06, -0.394741058, -0.312496424, -1, 1.18976459e-07, 3.56074452e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.58400939e-07, -5.77419996e-08, 1.00000024)
Weld100.Part0 = Part3
Weld100.Part1 = Part231
Weld100.part1 = Part231
Weld101.Name = "BTWeld"
Weld101.Parent = Part3
Weld101.C1 = CFrame.new(0.431774139, -0.0312502384, 0.503154755, 1.21071935e-08, 0.70710665, -0.707107186, -1, 2.66591087e-08, 8.21273716e-09, 2.63098627e-08, 0.707107186, 0.70710665)
Weld101.Part0 = Part3
Weld101.Part1 = Part195
Weld101.part1 = Part195
Weld102.Name = "BTWeld"
Weld102.Parent = Part3
Weld102.C1 = CFrame.new(-2.98023224e-06, 0.52676487, 0.681500196, 1, -1.18976459e-07, 2.07579433e-07, -1.19325705e-07, -1.00000024, 3.57627869e-07, 2.05687684e-07, -3.57627869e-07, -1.00000024)
Weld102.Part0 = Part3
Weld102.Part1 = Part247
Weld102.part1 = Part247
Weld103.Name = "BTWeld"
Weld103.Parent = Part3
Weld103.C1 = CFrame.new(-3.33786011e-06, -0.982596397, -1.40651131, 1, 2.08732672e-07, -4.8930815e-10, -1.93249434e-07, 0.922201157, -0.386711091, -7.82310963e-08, 0.386711091, 0.922201216)
Weld103.Part0 = Part3
Weld103.Part1 = Part307
Weld103.part1 = Part307
Weld104.Name = "BTWeld"
Weld104.Parent = Part3
Weld104.C1 = CFrame.new(-0.0437107086, -0.0312517285, 1.4942646, 1.91503204e-07, 0.707107306, 0.70710659, 1, 2.29338184e-08, -2.9189323e-07, -2.23633833e-07, 0.707106531, -0.707107246)
Weld104.Part0 = Part3
Weld104.Part1 = Part259
Weld104.part1 = Part259
Weld105.Name = "BTWeld"
Weld105.Parent = Part3
Weld105.C1 = CFrame.new(3.87430191e-06, -3.31824732, 1.47011757, -1, 2.08499841e-07, 7.08205334e-08, -1.35507435e-07, -0.838670611, 0.544639409, 1.75263267e-07, 0.544639468, 0.838670611)
Weld105.Part0 = Part3
Weld105.Part1 = Part407
Weld105.part1 = Part407
Weld106.Name = "BTWeld"
Weld106.Parent = Part3
Weld106.C1 = CFrame.new(-0.795685768, -0.0312490463, -0.711493969, -4.88944352e-09, 0.932008028, -0.362438083, -1, 1.22236088e-08, 4.33428795e-08, 4.74974513e-08, 0.362438083, 0.932008028)
Weld106.Part0 = Part3
Weld106.Part1 = Part263
Weld106.part1 = Part263
Weld107.Name = "BTWeld"
Weld107.Parent = Part3
Weld107.C1 = CFrame.new(-3.69548798e-06, -3.00638485, 1.33266807, 1, -1.18976459e-07, -3.95668394e-07, -1.86846592e-07, -0.984807968, -0.173648164, -3.70942871e-07, 0.173648179, -0.984807909)
Weld107.Part0 = Part3
Weld107.Part1 = Part351
Weld107.part1 = Part351
Weld108.Name = "BTWeld"
Weld108.Parent = Part3
Weld108.C1 = CFrame.new(3.63588333e-06, -0.320664406, -1.40051842, -1, -2.32830644e-10, 3.04902642e-07, -2.17230991e-07, -0.707107246, -0.70710665, 2.16532499e-07, -0.70710665, 0.707107186)
Weld108.Part0 = Part3
Weld108.Part1 = Part331
Weld108.part1 = Part331
Weld109.Name = "BTWeld"
Weld109.Parent = Part3
Weld109.C1 = CFrame.new(4.17232513e-07, 0.449201822, 1.99047565, -1, 4.76720743e-07, 8.52196536e-08, -6.01830834e-08, 0.0566915721, -0.998391926, -4.81144525e-07, -0.998391926, -0.0566915721)
Weld109.Part0 = Part3
Weld109.Part1 = Part187
Weld109.part1 = Part187
Weld110.Name = "BTWeld"
Weld110.Parent = Part3
Weld110.C1 = CFrame.new(-2.86102295e-06, 2.36217117, 0.642843485, 1, -1.19092874e-07, 1.99657734e-07, -1.07800588e-07, -0.998391807, -0.0566924661, 2.0434527e-07, 0.0566924587, -0.998391867)
Weld110.Part0 = Part3
Weld110.Part1 = Part239
Weld110.part1 = Part239
Weld111.Name = "BTWeld"
Weld111.Parent = Part3
Weld111.C1 = CFrame.new(-3.64600945, -0.0312488079, -0.13107121, 1.57626346e-07, 0.994522154, 0.104528487, -1, 1.56695023e-07, 1.25419319e-08, -2.27009878e-09, -0.104528494, 0.994522214)
Weld111.Part0 = Part3
Weld111.Part1 = Part293
Weld111.part1 = Part293
Weld112.Name = "BTWeld"
Weld112.Parent = Part3
Weld112.C1 = CFrame.new(-1.84774399e-06, -0.363490105, 0.43412137, 1, -1.19092874e-07, -2.68964868e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, -2.71322278e-07, 5.77419996e-08, -1.00000024)
Weld112.Part0 = Part3
Weld112.Part1 = Part387
Weld112.part1 = Part387
Weld113.Name = "BTWeld"
Weld113.Parent = Part3
Weld113.C1 = CFrame.new(1.7285347e-06, -0.568753242, -0.743589878, -1, 1.18976459e-07, 3.28123861e-07, -1.1944212e-07, -1.00000024, -8.94069672e-08, 3.30041075e-07, -8.7544322e-08, 1.00000024)
Weld113.Part0 = Part3
Weld113.Part1 = Part471
Weld113.part1 = Part471
Weld114.Name = "BTWeld"
Weld114.Parent = Part3
Weld114.C1 = CFrame.new(5.96046448e-08, 0.289498925, 3.66633129, -1, 4.76720743e-07, 1.08511813e-07, -5.57629392e-08, 0.113202013, -0.993572295, -4.86383215e-07, -0.993572235, -0.113202013)
Weld114.Part0 = Part3
Weld114.Part1 = Part301
Weld114.part1 = Part301
Weld115.Name = "BTWeld"
Weld115.Parent = Part3
Weld115.C1 = CFrame.new(3.75509262e-06, -2.22058773, -0.638116837, -1, 2.08499841e-07, 1.81222276e-07, -2.08849087e-07, -1.00000024, 0, 1.83687007e-07, 1.86264515e-09, 1.00000024)
Weld115.Part0 = Part3
Weld115.Part1 = Part389
Weld115.part1 = Part389
Weld116.Name = "BTWeld"
Weld116.Parent = Part3
Weld116.C1 = CFrame.new(-3.03983688e-06, 0.552669525, 1.01939201, 1, 2.32830644e-10, 1.78628397e-07, -6.84522092e-08, -0.922201097, 0.386711597, 1.62399374e-07, -0.386711597, -0.922201097)
Weld116.Part0 = Part3
Weld116.Part1 = Part255
Weld116.part1 = Part255
Weld117.Name = "BTWeld"
Weld117.Parent = Part3
Weld117.C1 = CFrame.new(-3.75509262e-06, -3.10320187, 0.522767544, 1, -1.19092874e-07, -3.84490704e-07, -8.49831849e-08, -0.996194959, 0.0871557072, -3.95724783e-07, -0.0871557146, -0.996194959)
Weld117.Part0 = Part3
Weld117.Part1 = Part299
Weld117.part1 = Part299
Weld118.Name = "BTWeld"
Weld118.Parent = Part3
Weld118.C1 = CFrame.new(-4.76837158e-07, -2.59509277, 3.90086365, -1, 3.87430191e-07, 3.84452505e-07, 5.47152013e-09, 0.713250041, -0.700909913, -5.47152013e-07, -0.700909972, -0.713250101)
Weld118.Part0 = Part3
Weld118.Part1 = Part461
Weld118.part1 = Part461
Weld119.Name = "BTWeld"
Weld119.Parent = Part3
Weld119.C1 = CFrame.new(-3.4570694e-06, 3.23180103, 0.775444984, 1, -1.19092874e-07, 2.05247488e-07, -1.07567757e-07, -0.998391926, -0.056692116, 2.10009603e-07, 0.0566921085, -0.998391867)
Weld119.Part0 = Part3
Weld119.Part1 = Part349
Weld119.part1 = Part349
Weld120.Name = "BTWeld"
Weld120.Parent = Part3
Weld120.C1 = CFrame.new(-0.854813099, -0.0312469006, 0.683163643, 1.75787136e-08, -0.707106531, 0.707107306, -1, -9.8021701e-08, -7.47404556e-08, 1.20606273e-07, -0.707107365, -0.707106531)
Weld120.Part0 = Part3
Weld120.Part1 = Part217
Weld120.part1 = Part217
Weld121.Name = "BTWeld"
Weld121.Parent = Part3
Weld121.C1 = CFrame.new(8.94069672e-07, 0.388443947, 0.0130519867, -1, 2.08383426e-07, 3.34477591e-07, -3.4889672e-07, -0.866025686, -0.49999994, 1.87254045e-07, -0.499999881, 0.866025686)
Weld121.Part0 = Part3
Weld121.Part1 = Part393
Weld121.part1 = Part393
Weld122.Name = "BTWeld"
Weld122.Parent = Part3
Weld122.C1 = CFrame.new(1.84774399e-06, -1.088727, -0.591116905, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld122.Part0 = Part3
Weld122.Part1 = Part287
Weld122.part1 = Part287
Weld123.Name = "BTWeld"
Weld123.Parent = Part3
Weld123.C1 = CFrame.new(-2.98023224e-06, 0.291165352, -0.776105642, 1, 2.08732672e-07, 7.35781214e-08, -2.08383426e-07, 1.00000024, 1.78813934e-07, -7.12225301e-08, -1.76951289e-07, 1.00000024)
Weld123.Part0 = Part3
Weld123.Part1 = Part235
Weld123.part1 = Part235
Weld124.Name = "BTWeld"
Weld124.Parent = Part3
Weld124.C1 = CFrame.new(-1.78813934e-06, -0.316618919, 0.434119701, 1, -1.19092874e-07, -2.68964868e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, -2.71322278e-07, 5.77419996e-08, -1.00000024)
Weld124.Part0 = Part3
Weld124.Part1 = Part227
Weld124.part1 = Part227
Weld125.Name = "BTWeld"
Weld125.Parent = Part3
Weld125.C1 = CFrame.new(1.7285347e-06, -0.568753242, -0.743589878, -1, 1.18976459e-07, 3.28123861e-07, -1.1944212e-07, -1.00000024, -8.94069672e-08, 3.30041075e-07, -8.7544322e-08, 1.00000024)
Weld125.Part0 = Part3
Weld125.Part1 = Part375
Weld125.part1 = Part375
Weld126.Name = "BTWeld"
Weld126.Parent = Part3
Weld126.C1 = CFrame.new(1.1920929e-06, 0.194246531, 0.194999695, -1, -2.08732672e-07, 1.17877789e-07, -1.20393452e-07, -1.19395554e-06, -1.00000024, 2.08499841e-07, -1.00000024, 1.1920929e-06)
Weld126.Part0 = Part3
Weld126.Part1 = Part223
Weld126.part1 = Part223
Weld127.Name = "BTWeld"
Weld127.Parent = Part3
Weld127.C1 = CFrame.new(2.08616257e-06, 0.382621765, 0.593743563, -1, -2.32830644e-10, -8.87230271e-08, 2.32830644e-10, 1.00000024, 1.86264515e-09, 8.63965397e-08, -1.86264515e-09, -1.00000024)
Weld127.Part0 = Part3
Weld127.Part1 = Part347
Weld127.part1 = Part347
Weld128.Name = "BTWeld"
Weld128.Parent = Part3
Weld128.C1 = CFrame.new(3.87430191e-06, -3.59139156, -0.606614113, -1, 2.08383426e-07, 1.49542757e-07, -2.08732672e-07, -1.00000024, -5.96046448e-08, 1.52112989e-07, -5.77419996e-08, 1.00000024)
Weld128.Part0 = Part3
Weld128.Part1 = Part207
Weld128.part1 = Part207
Weld129.Name = "BTWeld"
Weld129.Parent = Part3
Weld129.C1 = CFrame.new(3.64600849, -0.0312508941, -0.13107121, -2.47033313e-07, -0.994522214, -0.104528487, 1, -2.45636329e-07, -2.16805347e-08, -2.28465069e-09, -0.104528487, 0.994522214)
Weld129.Part0 = Part3
Weld129.Part1 = Part273
Weld129.part1 = Part273
Weld130.Name = "BTWeld"
Weld130.Parent = Part3
Weld130.C1 = CFrame.new(-1.84774399e-06, -0.879115105, 0.593742847, 1, -1.19092874e-07, -2.13065505e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, -2.15442924e-07, 5.77419996e-08, -1.00000024)
Weld130.Part0 = Part3
Weld130.Part1 = Part369
Weld130.part1 = Part369
Weld131.Name = "BTWeld"
Weld131.Parent = Part3
Weld131.C1 = CFrame.new(3.51667404e-06, 2.25183678, 0.638117313, -1, -8.95233825e-08, 3.02316039e-08, -8.92905518e-08, 1.00000024, 5.96046448e-08, -3.29036993e-08, 5.77419996e-08, -1.00000024)
Weld131.Part0 = Part3
Weld131.Part1 = Part285
Weld131.part1 = Part285
Weld132.Name = "BTWeld"
Weld132.Parent = Part3
Weld132.C1 = CFrame.new(1.93451023, -0.0312511921, -0.27059412, -2.42958777e-07, -0.998629749, -0.0523359664, 1, -2.42260285e-07, -8.10723577e-09, -2.90310709e-09, -0.0523359701, 0.998629689)
Weld132.Part0 = Part3
Weld132.Part1 = Part405
Weld132.part1 = Part405
Weld133.Name = "BTWeld"
Weld133.Parent = Part3
Weld133.C1 = CFrame.new(3.63588333e-06, -1.6542244, -0.638116837, -1, 1.18976459e-07, 3.0064075e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.02987246e-07, -5.77419996e-08, 1.00000024)
Weld133.Part0 = Part3
Weld133.Part1 = Part359
Weld133.part1 = Part359
Weld134.Name = "BTWeld"
Weld134.Parent = Part3
Weld134.C1 = CFrame.new(-1.78813934e-06, 0.12912178, -0.362743616, 1, 2.32830644e-10, -1.18105163e-07, 2.32830644e-10, 1.00000024, 1.80676579e-07, 1.20164259e-07, -1.76951289e-07, 1.00000024)
Weld134.Part0 = Part3
Weld134.Part1 = Part183
Weld134.part1 = Part183
Weld135.Name = "BTWeld"
Weld135.Parent = Part3
Weld135.C1 = CFrame.new(-1.7285347e-06, 0.139364243, -0.256871939, 1, -1.18976459e-07, -1.49711923e-07, 1.1944212e-07, 1.00000024, 0, 1.52022039e-07, 1.86264515e-09, 1.00000024)
Weld135.Part0 = Part3
Weld135.Part1 = Part225
Weld135.part1 = Part225
Weld136.Name = "BTWeld"
Weld136.Parent = Part3
Weld136.C1 = CFrame.new(2.86102295e-06, 0.0545005798, 0.453119755, -1, -2.32830644e-10, -8.87230271e-08, 2.32830644e-10, 1.00000024, 1.86264515e-09, 8.63965397e-08, -1.86264515e-09, -1.00000024)
Weld136.Part0 = Part3
Weld136.Part1 = Part337
Weld136.part1 = Part337
Weld137.Name = "BTWeld"
Weld137.Parent = Part3
Weld137.C1 = CFrame.new(0.246384621, -0.0312500596, 0.315700054, 5.82076609e-09, 0.965926111, -0.258819044, -1, 2.29338184e-08, 6.17128535e-08, 6.73753675e-08, 0.258819014, 0.965926111)
Weld137.Part0 = Part3
Weld137.Part1 = Part245
Weld137.part1 = Part245
Weld138.Name = "BTWeld"
Weld138.Parent = Part3
Weld138.C1 = CFrame.new(-1.07288361e-06, 1.90734863e-06, 0.152749538, 1, -1.18976459e-07, -3.88215994e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, -3.90531568e-07, 5.77419996e-08, -1.00000024)
Weld138.Part0 = Part3
Weld138.Part1 = Part309
Weld138.part1 = Part309
Weld139.Name = "BTWeld"
Weld139.Parent = Part3
Weld139.C1 = CFrame.new(-3.03983688e-06, 0.82331419, -0.458539009, 1, 2.08732672e-07, 7.35781214e-08, -9.66247171e-08, 0.707106471, -0.707107365, -1.97673216e-07, 0.707107365, 0.707106471)
Weld139.Part0 = Part3
Weld139.Part1 = Part181
Weld139.part1 = Part181
Weld140.Name = "BTWeld"
Weld140.Parent = Part3
Weld140.C1 = CFrame.new(-3.39746475e-06, -1.05464268, -1.43672371, 1, 2.08732672e-07, -4.8930815e-10, -1.93249434e-07, 0.922201157, -0.386711091, -7.82310963e-08, 0.386711091, 0.922201216)
Weld140.Part0 = Part3
Weld140.Part1 = Part333
Weld140.part1 = Part333
Weld141.Name = "BTWeld"
Weld141.Parent = Part3
Weld141.C1 = CFrame.new(0.0437097549, -0.0312481523, 1.49426508, -1.02329068e-07, -0.707107306, -0.707106531, -1, -1.1047814e-07, 2.52499376e-07, -2.57976353e-07, 0.70710659, -0.707107306)
Weld141.Part0 = Part3
Weld141.Part1 = Part249
Weld141.part1 = Part249
Weld142.Name = "BTWeld"
Weld142.Parent = Part3
Weld142.C1 = CFrame.new(1.84774399e-06, 1.04499984, 4.84788132, -1, -2.32830644e-10, 1.16708179e-07, -1.19271135e-07, -1.01514161e-06, -1.00000024, -1.16415322e-10, -1.00000024, 1.01141632e-06)
Weld142.Part0 = Part3
Weld142.Part1 = Part205
Weld142.part1 = Part205
Weld143.Name = "BTWeld"
Weld143.Parent = Part3
Weld143.C1 = CFrame.new(-3.03983688e-06, 0.591758728, 0.577001572, 1, -1.18976459e-07, 2.07579433e-07, -1.19325705e-07, -1.00000024, 3.57627869e-07, 2.05687684e-07, -3.57627869e-07, -1.00000024)
Weld143.Part0 = Part3
Weld143.Part1 = Part385
Weld143.part1 = Part385
Weld144.Name = "BTWeld"
Weld144.Parent = Part3
Weld144.C1 = CFrame.new(-0.568752289, -0.0312482715, 1.24358273, -5.98374754e-08, -1.00000024, 0, -1, 5.93718141e-08, 3.27925591e-07, -3.30370312e-07, -1.86264515e-09, -1.00000024)
Weld144.Part0 = Part3
Weld144.Part1 = Part197
Weld144.part1 = Part197
Weld145.Name = "BTWeld"
Weld145.Parent = Part3
Weld145.C1 = CFrame.new(8.34465027e-07, 0.340940475, -0.537741661, -1, 2.08383426e-07, 3.34477591e-07, -1.24564394e-08, -0.866025329, 0.500000596, 3.95695679e-07, 0.500000596, 0.866025448)
Weld145.Part0 = Part3
Weld145.Part1 = Part357
Weld145.part1 = Part357
Weld146.Name = "BTWeld"
Weld146.Parent = Part3
Weld146.C1 = CFrame.new(-0.0784215927, -0.0312500596, 0.188100338, -2.43075192e-07, -0.866025627, -0.5, 1, -2.29571015e-07, -8.65911716e-08, -3.80096026e-08, -0.49999994, 0.866025686)
Weld146.Part0 = Part3
Weld146.Part1 = Part343
Weld146.part1 = Part343
Weld147.Name = "BTWeld"
Weld147.Parent = Part3
Weld147.C1 = CFrame.new(0.078420639, -0.0312501192, 0.188100815, 1.53668225e-07, 0.866025686, 0.5, -1, 1.49011612e-07, 4.73319233e-08, -3.19560058e-08, -0.49999994, 0.866025686)
Weld147.Part0 = Part3
Weld147.Part1 = Part353
Weld147.part1 = Part353
Weld148.Name = "BTWeld"
Weld148.Parent = Part3
Weld148.C1 = CFrame.new(-3.39746475e-06, -1.19873238, -1.4971447, 1, 2.08732672e-07, -4.8930815e-10, -1.93249434e-07, 0.922201157, -0.386711091, -7.82310963e-08, 0.386711091, 0.922201216)
Weld148.Part0 = Part3
Weld148.Part1 = Part313
Weld148.part1 = Part313
Weld149.Name = "BTWeld"
Weld149.Parent = Part3
Weld149.C1 = CFrame.new(-0.665288925, -0.0312472582, -0.400229454, 6.10016286e-08, 0.999914467, 0.0130897425, -1, 6.01867214e-08, 2.42216629e-08, 2.52284735e-08, -0.0130897434, 0.999914587)
Weld149.Part0 = Part3
Weld149.Part1 = Part211
Weld149.part1 = Part211
Weld150.Name = "BTWeld"
Weld150.Parent = Part3
Weld150.C1 = CFrame.new(1.78813934e-06, -0.22074604, -0.390618801, -1, 1.18976459e-07, 3.56074452e-07, -1.19325705e-07, -1.00000024, -5.96046448e-08, 3.58400939e-07, -5.77419996e-08, 1.00000024)
Weld150.Part0 = Part3
Weld150.Part1 = Part311
Weld150.part1 = Part311
Weld151.Name = "BTWeld"
Weld151.Parent = Part3
Weld151.C1 = CFrame.new(-3.39746475e-06, -1.12668896, -1.46693516, 1, 2.08732672e-07, -4.8930815e-10, -1.93249434e-07, 0.922201157, -0.386711091, -7.82310963e-08, 0.386711091, 0.922201216)
Weld151.Part0 = Part3
Weld151.Part1 = Part319
Weld151.part1 = Part319
Weld152.Name = "BTWeld"
Weld152.Parent = Part3
Weld152.C1 = CFrame.new(-3.03983688e-06, 0.522769928, 0.783498287, 1, -1.18976459e-07, 2.07579433e-07, -1.19325705e-07, -1.00000024, 3.57627869e-07, 2.05687684e-07, -3.57627869e-07, -1.00000024)
Weld152.Part0 = Part3
Weld152.Part1 = Part189
Weld152.part1 = Part189
Weld153.Name = "BTWeld"
Weld153.Parent = Part3
Weld153.C1 = CFrame.new(0.854812145, -0.0312569141, 0.683163643, -7.71833584e-08, 0.707106531, -0.707107306, 1, 1.8987339e-07, 8.20728019e-08, 1.90921128e-07, -0.707107365, -0.707106531)
Weld153.Part0 = Part3
Weld153.Part1 = Part271
Weld153.part1 = Part271
Weld154.Name = "BTWeld"
Weld154.Parent = Part3
Weld154.C1 = CFrame.new(1.78813934e-06, -0.589484215, -0.222372532, -1, 2.08499841e-07, 2.3712164e-07, -2.08849087e-07, -1.00000024, 0, 2.39566361e-07, 1.86264515e-09, 1.00000024)
Weld154.Part0 = Part3
Weld154.Part1 = Part303
Weld154.part1 = Part303
Weld155.Name = "BTWeld"
Weld155.Parent = Part3
Weld155.C1 = CFrame.new(-2.44379044e-06, 1.74366188, -2.46923256, 1, -3.87313776e-07, -1.35698428e-07, -2.53145117e-07, -0.31730628, -0.948323369, 3.2375101e-07, 0.948323369, -0.31730631)
Weld155.Part0 = Part3
Weld155.Part1 = Part305
Weld155.part1 = Part305
Weld156.Name = "BTWeld"
Weld156.Parent = Part3
Weld156.C1 = CFrame.new(2.74181366e-06, 0.0869274139, -0.603420258, -1, 2.08499841e-07, 2.86032446e-07, 5.57629392e-08, -0.707106411, 0.707107425, 3.51225026e-07, 0.707107425, 0.707106411)
Weld156.Part0 = Part3
Weld156.Part1 = Part413
Weld156.part1 = Part413
Weld157.Name = "BTWeld"
Weld157.Parent = Part3
Weld157.C1 = CFrame.new(-1.25169754e-06, 2.73876762, 0.462646961, 1, -2.08499841e-07, 1.89578714e-07, -1.861481e-07, -0.993572116, -0.113202803, 2.0985317e-07, 0.113202795, -0.993572176)
Weld157.Part0 = Part3
Weld157.Part1 = Part267
Weld157.part1 = Part267
Weld158.Name = "BTWeld"
Weld158.Parent = Part3
Weld158.C1 = CFrame.new(8.94069672e-07, 0.443323135, -0.28379035, -1, 2.08383426e-07, 3.34477591e-07, -2.08732672e-07, -1.00000024, 1.78813934e-07, 3.36614903e-07, 1.80676579e-07, 1.00000024)
Weld158.Part0 = Part3
Weld158.Part1 = Part439
Weld158.part1 = Part439
Weld159.Name = "BTWeld"
Weld159.Parent = Part3
Weld159.C1 = CFrame.new(-2.98023224e-07, 2.46521568, 0.596743584, -1, -8.95233825e-08, 3.02316039e-08, -8.92905518e-08, 1.00000024, 5.96046448e-08, -3.29036993e-08, 5.77419996e-08, -1.00000024)
Weld159.Part0 = Part3
Weld159.Part1 = Part201
Weld159.part1 = Part201
Weld160.Name = "BTWeld"
Weld160.Parent = Part3
Weld160.C1 = CFrame.new(0.665288925, -0.0312529206, -0.400229454, -1.50408596e-07, -0.999914527, -0.0130897444, 1, -1.49477273e-07, -2.5913323e-08, 2.56950443e-08, -0.0130897444, 0.999914587)
Weld160.Part0 = Part3
Weld160.Part1 = Part279
Weld160.part1 = Part279
Weld161.Name = "BTWeld"
Weld161.Parent = Part3
Weld161.C1 = CFrame.new(-3.63588333e-06, 1.55414867, 1.9456358, 1, 8.95233825e-08, 2.22247763e-07, -4.30736691e-08, -0.843391299, 0.537300408, 2.34518666e-07, -0.537300348, -0.84339118)
Weld161.Part0 = Part3
Weld161.Part1 = Part335
Weld161.part1 = Part335
Weld162.Name = "BTWeld"
Weld162.Parent = Part3
Weld162.C1 = CFrame.new(8.34465027e-07, -3.73201656, 0.770674467, 1, 2.32830644e-10, -2.6903399e-07, -2.32830644e-10, -1.00000024, 8.7544322e-08, -2.71093086e-07, -9.12696123e-08, -1.00000024)
Weld162.Part0 = Part3
Weld162.Part1 = Part185
Weld162.part1 = Part185
Part163.Parent = Model0
Part163.CFrame = CFrame.new(-0.611257851, 3.46313882, -15.394145, 0.999985635, -0.00162807317, 0.00510706799, 0.00513700349, 0.0189462826, -0.999807417, 0.00153099932, 0.999819279, 0.0189543739)
Part163.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part163.Position = Vector3.new(-0.611257851, 3.46313882, -15.394145)
Part163.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part163.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part163.Velocity = Vector3.new(2.31788153e-08, 0.0024639722, 3.04594494e-07)
Part163.Size = Vector3.new(0.275000006, 0.84512496, 0.359375)
Part163.Anchored = true
Part163.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.BrickColor = BrickColor.new("Really black")
Part163.CanCollide = false
Part163.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.Material = Enum.Material.Metal
Part163.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part163.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part163.brickColor = BrickColor.new("Really black")
SpecialMesh164.Parent = Part163
SpecialMesh164.Scale = Vector3.new(0.349999994, 1, 0.5)
SpecialMesh164.MeshType = Enum.MeshType.Brick
Part165.Parent = Model0
Part165.CFrame = CFrame.new(-0.617485046, 3.2590127, -10.6418428, -0.999985635, -0.00414685067, -0.00339615461, -0.00513672922, 0.560423911, 0.828190207, -0.00153109396, 0.828195751, -0.560437143)
Part165.Orientation = Vector3.new(-55.9099998, -179.649994, -0.529999971)
Part165.Position = Vector3.new(-0.617485046, 3.2590127, -10.6418428)
Part165.Rotation = Vector3.new(-124.089996, -0.189999998, 179.759995)
Part165.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part165.Velocity = Vector3.new(5.55462663e-08, 0.00247387378, 7.29936687e-07)
Part165.Size = Vector3.new(0.275000006, 0.4375, 0.25)
Part165.Anchored = true
Part165.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.BrickColor = BrickColor.new("Really black")
Part165.CanCollide = false
Part165.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.Material = Enum.Material.Metal
Part165.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part165.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part165.brickColor = BrickColor.new("Really black")
SpecialMesh166.Parent = Part165
SpecialMesh166.Scale = Vector3.new(0.5, 1, 0.25)
SpecialMesh166.MeshType = Enum.MeshType.Brick
Part167.Parent = Model0
Part167.CFrame = CFrame.new(-0.610199153, 2.88768315, -14.1553068, 0.999985635, 0.00162795268, -0.00510686403, 0.0051367972, -0.0189460143, 0.999807417, 0.00153088395, -0.999819279, -0.0189541057)
Part167.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part167.Position = Vector3.new(-0.610199153, 2.88768315, -14.1553068)
Part167.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part167.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part167.Velocity = Vector3.new(1.14426342e-07, 0.00246655382, 1.50368453e-06)
Part167.Size = Vector3.new(0.275000006, 0.207000002, 0.303375006)
Part167.Anchored = true
Part167.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.BrickColor = BrickColor.new("Really black")
Part167.CanCollide = false
Part167.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.Material = Enum.Material.Glass
Part167.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part167.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part167.brickColor = BrickColor.new("Really black")
SpecialMesh168.Parent = Part167
SpecialMesh168.Scale = Vector3.new(0.524999976, 0.5, 0.5)
SpecialMesh168.MeshType = Enum.MeshType.Wedge
Part169.Parent = Model0
Part169.CFrame = CFrame.new(-0.613238811, 3.32843637, -13.6493177, -0.999985635, -0.00162807142, -0.00510653527, -0.00513647031, 0.0189459249, 0.999807417, -0.00153100933, 0.999819279, -0.0189540163)
Part169.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part169.Position = Vector3.new(-0.613238811, 3.32843637, -13.6493177)
Part169.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part169.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part169.Velocity = Vector3.new(4.45380195e-08, 0.00246760761, 5.85277007e-07)
Part169.Size = Vector3.new(0.275000006, 0.698124886, 0.534374952)
Part169.Anchored = true
Part169.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.BrickColor = BrickColor.new("Bright blue")
Part169.CanCollide = false
Part169.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.Material = Enum.Material.Neon
Part169.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part169.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part169.brickColor = BrickColor.new("Bright blue")
SpecialMesh170.Parent = Part169
SpecialMesh170.Scale = Vector3.new(0.452499986, 1, 1)
SpecialMesh170.MeshType = Enum.MeshType.Cylinder
Part171.Parent = Model0
Part171.CFrame = CFrame.new(-0.610366702, 3.28867483, -15.3908367, 0.999985635, -0.00162807317, 0.00510706799, 0.00513700349, 0.0189462826, -0.999807417, 0.00153099932, 0.999819279, 0.0189543739)
Part171.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part171.Position = Vector3.new(-0.610366702, 3.28867483, -15.3908367)
Part171.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part171.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part171.Velocity = Vector3.new(5.08428144e-08, 0.00246397941, 6.68129019e-07)
Part171.Size = Vector3.new(0.275000006, 0.84512496, 0.422374964)
Part171.Anchored = true
Part171.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.BrickColor = BrickColor.new("Really black")
Part171.CanCollide = false
Part171.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.Material = Enum.Material.Metal
Part171.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part171.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part171.brickColor = BrickColor.new("Really black")
SpecialMesh172.Parent = Part171
SpecialMesh172.Scale = Vector3.new(0.400000006, 1, 0.5)
SpecialMesh172.MeshType = Enum.MeshType.Brick
Part173.Parent = Model0
Part173.CFrame = CFrame.new(-0.610880256, 2.96906447, -13.9840736, -0.999985635, -0.00162807154, -0.00510650687, -0.00513644237, 0.0189459547, 0.999807417, -0.00153100991, 0.999819279, -0.0189540461)
Part173.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part173.Position = Vector3.new(-0.610880256, 2.96906447, -13.9840736)
Part173.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part173.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part173.Velocity = Vector3.new(1.01522062e-07, 0.00246691052, 1.33410845e-06)
Part173.Size = Vector3.new(0.275000006, 0.239124984, 0.205375016)
Part173.Anchored = true
Part173.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.BrickColor = BrickColor.new("Bright blue")
Part173.CanCollide = false
Part173.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.Material = Enum.Material.Neon
Part173.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part173.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part173.brickColor = BrickColor.new("Bright blue")
SpecialMesh174.Parent = Part173
SpecialMesh174.Scale = Vector3.new(0.550000012, 1, 1)
SpecialMesh174.MeshType = Enum.MeshType.Brick
Part175.Parent = Model0
Part175.CFrame = CFrame.new(-0.613238811, 3.32843637, -13.6493177, -0.999985635, -0.00162807142, -0.00510653527, -0.00513647031, 0.0189459249, 0.999807417, -0.00153100933, 0.999819279, -0.0189540163)
Part175.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part175.Position = Vector3.new(-0.613238811, 3.32843637, -13.6493177)
Part175.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part175.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part175.Velocity = Vector3.new(4.45380195e-08, 0.00246760761, 5.85277007e-07)
Part175.Size = Vector3.new(0.275000006, 0.698124886, 0.372374952)
Part175.Anchored = true
Part175.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.BrickColor = BrickColor.new("Really black")
Part175.CanCollide = false
Part175.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.Material = Enum.Material.Metal
Part175.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part175.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part175.brickColor = BrickColor.new("Really black")
SpecialMesh176.Parent = Part175
SpecialMesh176.Scale = Vector3.new(0.455000013, 1, 1)
SpecialMesh176.MeshType = Enum.MeshType.Cylinder
Part177.Parent = Model0
Part177.CFrame = CFrame.new(-0.616063476, 3.26214504, -11.5807333, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part177.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part177.Position = Vector3.new(-0.616063476, 3.26214504, -11.5807333)
Part177.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part177.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part177.Velocity = Vector3.new(5.50495756e-08, 0.00247191754, 7.23409755e-07)
Part177.Size = Vector3.new(0.275000006, 0.630125046, 0.280375004)
Part177.Anchored = true
Part177.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.BrickColor = BrickColor.new("Really black")
Part177.CanCollide = false
Part177.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.Material = Enum.Material.Metal
Part177.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part177.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part177.brickColor = BrickColor.new("Really black")
SpecialMesh178.Parent = Part177
SpecialMesh178.Scale = Vector3.new(0.400000006, 1.04999995, 0.5)
SpecialMesh178.MeshType = Enum.MeshType.Brick
Part179.Parent = Model0
Part179.CFrame = CFrame.new(-0.610621691, 3.13382888, -14.7050791, 0.999985635, -0.00476216245, 0.00246017892, 0.00513689732, 0.720368028, -0.693573177, 0.00153067347, 0.693575799, 0.720382154)
Part179.Orientation = Vector3.new(43.9099998, 0.199999988, 0.409999996)
Part179.Position = Vector3.new(-0.610621691, 3.13382888, -14.7050791)
Part179.Rotation = Vector3.new(43.9099998, 0.140000001, 0.269999981)
Part179.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part179.Velocity = Vector3.new(7.53960734e-08, 0.0024654083, 9.90785111e-07)
Part179.Size = Vector3.new(0.275000006, 0.221124932, 0.418375015)
Part179.Anchored = true
Part179.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.BrickColor = BrickColor.new("Really black")
Part179.CanCollide = false
Part179.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.Material = Enum.Material.Metal
Part179.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part179.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part179.brickColor = BrickColor.new("Really black")
SpecialMesh180.Parent = Part179
SpecialMesh180.Scale = Vector3.new(0.550000012, 1.04999995, 0.899999976)
SpecialMesh180.MeshType = Enum.MeshType.Brick
Part181.Parent = Model0
Part181.CFrame = CFrame.new(-0.61356318, 3.48533392, -13.9631662, 0.999985635, 0.0047621401, -0.00246015727, 0.00513686566, -0.720367908, 0.693573296, 0.00153067405, -0.693575978, -0.720381975)
Part181.Orientation = Vector3.new(-43.9099998, -179.800003, 179.589996)
Part181.Position = Vector3.new(-0.61356318, 3.48533392, -13.9631662)
Part181.Rotation = Vector3.new(-136.089996, -0.140000001, -0.269999981)
Part181.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part181.Velocity = Vector3.new(1.96594527e-08, 0.00246695359, 2.58346063e-07)
Part181.Size = Vector3.new(0.275000006, 0.413124949, 0.622375011)
Part181.Anchored = true
Part181.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.BrickColor = BrickColor.new("Really black")
Part181.CanCollide = false
Part181.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.Material = Enum.Material.Metal
Part181.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part181.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part181.brickColor = BrickColor.new("Really black")
SpecialMesh182.Parent = Part181
SpecialMesh182.Scale = Vector3.new(0.400000006, 1.04999995, 0.5)
SpecialMesh182.MeshType = Enum.MeshType.Brick
Part183.Parent = Model0
Part183.CFrame = CFrame.new(-0.610578179, 2.93933439, -14.0816517, 0.999985635, 0.00162795174, -0.00510674529, 0.005136678, -0.0189458355, 0.999807417, 0.00153088616, -0.999819279, -0.0189539269)
Part183.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part183.Position = Vector3.new(-0.610578179, 2.93933439, -14.0816517)
Part183.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part183.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part183.Velocity = Vector3.new(1.06236229e-07, 0.00246670726, 1.39605754e-06)
Part183.Size = Vector3.new(0.275000006, 0.252000004, 0.213375002)
Part183.Anchored = true
Part183.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.BrickColor = BrickColor.new("Really black")
Part183.CanCollide = false
Part183.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.Material = Enum.Material.Metal
Part183.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part183.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part183.brickColor = BrickColor.new("Really black")
SpecialMesh184.Parent = Part183
SpecialMesh184.Scale = Vector3.new(0.569999993, 0.125, 0.375)
SpecialMesh184.MeshType = Enum.MeshType.Wedge
Part185.Parent = Model0
Part185.CFrame = CFrame.new(-0.61852932, 3.41544771, -10.4871407, 0.999985635, -0.00162795314, 0.00510659395, 0.00513652712, 0.0189461038, -0.999807417, 0.00153088907, 0.999819279, 0.0189541951)
Part185.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part185.Position = Vector3.new(-0.61852932, 3.41544771, -10.4871407)
Part185.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part185.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part185.Velocity = Vector3.new(3.07410488e-08, 0.00247419602, 4.03969523e-07)
Part185.Size = Vector3.new(0.270000011, 0.21875, 0.234375)
Part185.Anchored = true
Part185.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.BrickColor = BrickColor.new("Really black")
Part185.CanCollide = false
Part185.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.Material = Enum.Material.Metal
Part185.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part185.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part185.brickColor = BrickColor.new("Really black")
SpecialMesh186.Parent = Part185
SpecialMesh186.Scale = Vector3.new(0.5, 0.5, 0.5)
SpecialMesh186.MeshType = Enum.MeshType.Wedge
Part187.Parent = Model0
Part187.CFrame = CFrame.new(-0.608188927, 3.09825993, -16.1759663, -0.999985635, 0.00519088237, -0.00133629935, -0.0051367199, -0.999273539, -0.0377651006, -0.0015313623, -0.0377576947, 0.999285877)
Part187.Orientation = Vector3.new(2.15999985, -0.0799999982, -179.709991)
Part187.Position = Vector3.new(-0.608188927, 3.09825993, -16.1759663)
Part187.Rotation = Vector3.new(2.15999985, -0.0799999982, -179.699997)
Part187.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part187.Velocity = Vector3.new(8.10360774e-08, 0.00246234378, 1.06490097e-06)
Part187.Size = Vector3.new(0.275000006, 0.235124931, 1.6693753)
Part187.Anchored = true
Part187.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.BrickColor = BrickColor.new("Really black")
Part187.CanCollide = false
Part187.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.Material = Enum.Material.Metal
Part187.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part187.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part187.brickColor = BrickColor.new("Really black")
SpecialMesh188.Parent = Part187
SpecialMesh188.Scale = Vector3.new(0.400000006, 1.04999995, 1)
SpecialMesh188.MeshType = Enum.MeshType.Brick
Part189.Parent = Model0
Part189.CFrame = CFrame.new(-0.611664593, 3.3476572, -14.7413998, 0.999985635, -0.00162807363, 0.00510707032, 0.00513700629, 0.018946372, -0.999807417, 0.0015309992, 0.999819279, 0.0189544633)
Part189.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part189.Position = Vector3.new(-0.611664593, 3.3476572, -14.7413998)
Part189.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part189.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part189.Velocity = Vector3.new(4.14902424e-08, 0.00246533239, 5.45226158e-07)
Part189.Size = Vector3.new(0.275000006, 0.480124891, 0.214375019)
Part189.Anchored = true
Part189.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.BrickColor = BrickColor.new("Bright blue")
Part189.CanCollide = false
Part189.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.Material = Enum.Material.Neon
Part189.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part189.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part189.brickColor = BrickColor.new("Bright blue")
SpecialMesh190.Parent = Part189
SpecialMesh190.Scale = Vector3.new(0.449999988, 1, 0.100000001)
SpecialMesh190.MeshType = Enum.MeshType.Brick
Part191.Parent = Model0
Part191.CFrame = CFrame.new(-0.637731671, 3.71308732, -19.354105, -0.0050775772, -0.999985635, -0.00171704381, 0.999324501, -0.00513670873, 0.0363931209, -0.0364014208, -0.00153109431, 0.999336243)
Part191.Orientation = Vector3.new(-2.08999991, -0.099999994, 90.2900009)
Part191.Position = Vector3.new(-0.637731671, 3.71308732, -19.354105)
Part191.Rotation = Vector3.new(-2.08999991, -0.099999994, 90.2900009)
Part191.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part191.Velocity = Vector3.new(-1.64544822e-08, 0.00245571672, -2.16228841e-07)
Part191.Size = Vector3.new(0.210000038, 0.200000003, 0.285374999)
Part191.Anchored = true
Part191.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.BrickColor = BrickColor.new("Royal purple")
Part191.CanCollide = false
Part191.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.Material = Enum.Material.Neon
Part191.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part191.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part191.brickColor = BrickColor.new("Royal purple")
SpecialMesh192.Parent = Part191
SpecialMesh192.Scale = Vector3.new(0.5, 0.300000012, 0.5)
SpecialMesh192.MeshType = Enum.MeshType.Wedge
Part193.Parent = Model0
Part193.CFrame = CFrame.new(-0.613232374, 3.39655375, -13.8819904, 0.999985635, 0.000250508543, -0.00535421353, 0.00513686566, 0.240468621, 0.97064352, 0.00153067405, -0.970657051, 0.240463868)
Part193.Orientation = Vector3.new(-76.0800018, -1.27999997, 1.22000003)
Part193.Position = Vector3.new(-0.613232374, 3.39655375, -13.8819904)
Part193.Rotation = Vector3.new(-76.0899963, -0.310000002, -0.00999999978)
Part193.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part193.Velocity = Vector3.new(3.37369386e-08, 0.00246712286, 4.43339275e-07)
Part193.Size = Vector3.new(0.275000006, 0.422124922, 0.412375003)
Part193.Anchored = true
Part193.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.BrickColor = BrickColor.new("Really black")
Part193.CanCollide = false
Part193.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.Material = Enum.Material.Metal
Part193.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part193.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part193.brickColor = BrickColor.new("Really black")
SpecialMesh194.Parent = Part193
SpecialMesh194.Scale = Vector3.new(0.5, 1.04999995, 0.5)
SpecialMesh194.MeshType = Enum.MeshType.Brick
Part195.Parent = Model0
Part195.CFrame = CFrame.new(-0.640585661, 2.53611565, -13.5419912, 0.00476224814, -0.999985635, -0.00245993445, -0.72036773, -0.00513678836, 0.693573475, -0.693576157, -0.00153091096, -0.720381796)
Part195.Orientation = Vector3.new(-43.9099998, -179.800003, -90.409996)
Part195.Position = Vector3.new(-0.640585661, 2.53611565, -13.5419912)
Part195.Rotation = Vector3.new(-136.089996, -0.140000001, 89.7299957)
Part195.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part195.Velocity = Vector3.new(1.70172896e-07, 0.00246782694, 2.23625375e-06)
Part195.Size = Vector3.new(0.421999991, 0.200000003, 0.280375004)
Part195.Anchored = true
Part195.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.BrickColor = BrickColor.new("Royal purple")
Part195.CanCollide = false
Part195.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.Material = Enum.Material.Neon
Part195.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part195.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part195.brickColor = BrickColor.new("Royal purple")
SpecialMesh196.Parent = Part195
SpecialMesh196.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh196.MeshType = Enum.MeshType.Wedge
Part197.Parent = Model0
Part197.CFrame = CFrame.new(-0.647041559, 3.82817221, -13.658843, -0.00162801228, -0.999985635, 0.00510653481, 0.0189460143, -0.00513646938, -0.999807417, 0.999819279, -0.00153094972, 0.0189541057)
Part197.Orientation = Vector3.new(88.8799973, 15.0799999, 105.169998)
Part197.Position = Vector3.new(-0.647041559, 3.82817221, -13.658843)
Part197.Rotation = Vector3.new(88.909996, 0.289999992, 90.0899963)
Part197.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part197.Velocity = Vector3.new(-3.47029321e-08, 0.00246758247, -4.56033831e-07)
Part197.Size = Vector3.new(0.643000007, 0.200000003, 0.280375004)
Part197.Anchored = true
Part197.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.BrickColor = BrickColor.new("Royal purple")
Part197.CanCollide = false
Part197.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.Material = Enum.Material.Neon
Part197.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part197.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part197.brickColor = BrickColor.new("Royal purple")
SpecialMesh198.Parent = Part197
SpecialMesh198.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh198.MeshType = Enum.MeshType.Wedge
Part199.Parent = Model0
Part199.CFrame = CFrame.new(-0.615469754, 3.2510047, -11.9310894, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part199.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part199.Position = Vector3.new(-0.615469754, 3.2510047, -11.9310894)
Part199.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part199.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part199.Velocity = Vector3.new(5.68160452e-08, 0.00247118762, 7.46623186e-07)
Part199.Size = Vector3.new(0.275000006, 0.261124998, 0.245374992)
Part199.Anchored = true
Part199.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.BrickColor = BrickColor.new("Bright blue")
Part199.CanCollide = false
Part199.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.Material = Enum.Material.Neon
Part199.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part199.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part199.brickColor = BrickColor.new("Bright blue")
SpecialMesh200.Parent = Part199
SpecialMesh200.Scale = Vector3.new(0.375, 1.04999995, 0.5)
SpecialMesh200.MeshType = Enum.MeshType.Brick
Part201.Parent = Model0
Part201.CFrame = CFrame.new(-0.615578175, 3.21754885, -11.7504148, -0.999985635, 0.00162786292, 0.00510683237, -0.00513676414, -0.0189459566, -0.999807417, -0.00153079513, -0.999819279, 0.0189540461)
Part201.Orientation = Vector3.new(88.8799973, 15.0799999, -164.830002)
Part201.Position = Vector3.new(-0.615578175, 3.21754885, -11.7504148)
Part201.Rotation = Vector3.new(88.909996, 0.289999992, -179.909988)
Part201.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part201.Velocity = Vector3.new(6.21209963e-08, 0.0024715641, 8.16335842e-07)
Part201.Size = Vector3.new(0.275000006, 0.214125022, 0.234375)
Part201.Anchored = true
Part201.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part201.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part201.BrickColor = BrickColor.new("Really black")
Part201.CanCollide = false
Part201.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part201.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part201.Material = Enum.Material.Metal
Part201.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part201.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part201.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part201.brickColor = BrickColor.new("Really black")
SpecialMesh202.Parent = Part201
SpecialMesh202.Scale = Vector3.new(0.5, 0.560000002, 0.400000006)
SpecialMesh202.MeshType = Enum.MeshType.Wedge
Part203.Parent = Model0
Part203.CFrame = CFrame.new(-0.613475382, 3.25657153, -13.2536583, -0.999985635, 0.00162801275, 0.00510680024, -0.00513673527, -0.0189461038, -0.999807417, -0.00153094472, -0.999819279, 0.0189541951)
Part203.Orientation = Vector3.new(88.8799973, 15.0799999, -164.830002)
Part203.Position = Vector3.new(-0.613475382, 3.25657153, -13.2536583)
Part203.Rotation = Vector3.new(88.909996, 0.289999992, -179.909988)
Part203.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part203.Velocity = Vector3.new(5.59333202e-08, 0.00246843207, 7.35023434e-07)
Part203.Size = Vector3.new(0.275000006, 0.204125047, 0.210375011)
Part203.Anchored = true
Part203.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part203.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part203.BrickColor = BrickColor.new("Really black")
Part203.CanCollide = false
Part203.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part203.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part203.Material = Enum.Material.Metal
Part203.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part203.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part203.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part203.brickColor = BrickColor.new("Really black")
SpecialMesh204.Parent = Part203
SpecialMesh204.Scale = Vector3.new(0.5, 0.5, 0.5)
SpecialMesh204.MeshType = Enum.MeshType.Wedge
Part205.Parent = Model0
Part205.CFrame = CFrame.new(-0.605959892, 3.52715993, -19.0706863, -0.999985635, 0.00510674436, -0.0016279578, -0.00513667939, -0.999807417, 0.0189470276, -0.00153088616, 0.018955119, 0.999819279)
Part205.Orientation = Vector3.new(-1.09000003, -0.0899999961, -179.709991)
Part205.Position = Vector3.new(-0.605959892, 3.52715993, -19.0706863)
Part205.Rotation = Vector3.new(-1.09000003, -0.0899999961, -179.709991)
Part205.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part205.Velocity = Vector3.new(1.30272237e-08, 0.0024563123, 1.71192255e-07)
Part205.Size = Vector3.new(0.275000006, 0.446125001, 0.496375084)
Part205.Anchored = true
Part205.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part205.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part205.BrickColor = BrickColor.new("Really black")
Part205.CanCollide = false
Part205.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part205.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part205.Material = Enum.Material.Metal
Part205.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part205.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part205.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part205.brickColor = BrickColor.new("Really black")
SpecialMesh206.Parent = Part205
SpecialMesh206.Scale = Vector3.new(0.400000006, 1, 0.899999976)
SpecialMesh206.MeshType = Enum.MeshType.Wedge
Part207.Parent = Model0
Part207.CFrame = CFrame.new(-0.617458701, 3.24875402, -10.62463, -0.999985635, -0.00162816094, -0.00510671316, -0.00513665052, 0.0189459547, 0.999807417, -0.00153109536, 0.999819279, -0.0189540461)
Part207.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part207.Position = Vector3.new(-0.617458701, 3.24875402, -10.62463)
Part207.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part207.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part207.Velocity = Vector3.new(5.71729402e-08, 0.00247390964, 7.51312939e-07)
Part207.Size = Vector3.new(0.25999999, 0.375, 0.21875)
Part207.Anchored = true
Part207.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part207.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part207.BrickColor = BrickColor.new("Really black")
Part207.CanCollide = false
Part207.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part207.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part207.Material = Enum.Material.Metal
Part207.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part207.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part207.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part207.brickColor = BrickColor.new("Really black")
SpecialMesh208.Parent = Part207
SpecialMesh208.Scale = Vector3.new(0.300000012, 1, 1)
SpecialMesh208.MeshType = Enum.MeshType.Wedge
Part209.Parent = Model0
Part209.CFrame = CFrame.new(-0.614153862, 3.21053505, -12.6548157, -0.999985635, -0.00162816129, -0.00510668149, -0.00513661886, 0.0189460143, 0.999807417, -0.00153109606, 0.999819279, -0.0189541057)
Part209.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part209.Position = Vector3.new(-0.614153862, 3.21053505, -12.6548157)
Part209.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part209.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part209.Velocity = Vector3.new(6.32331378e-08, 0.00246967981, 8.30950682e-07)
Part209.Size = Vector3.new(0.275000006, 0.35512504, 0.416375011)
Part209.Anchored = true
Part209.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part209.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part209.BrickColor = BrickColor.new("Really black")
Part209.CanCollide = false
Part209.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part209.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part209.Material = Enum.Material.Metal
Part209.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part209.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part209.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part209.brickColor = BrickColor.new("Really black")
SpecialMesh210.Parent = Part209
SpecialMesh210.Scale = Vector3.new(0.5, 0.560000002, 0.5)
SpecialMesh210.MeshType = Enum.MeshType.Wedge
Part211.Parent = Model0
Part211.CFrame = CFrame.new(-0.640777826, 2.97037435, -14.8715458, 0.00156102644, -0.999985635, -0.00512771169, -0.00585717242, -0.00513677299, 0.99996984, -0.999981701, -0.00153094484, -0.00586510729)
Part211.Orientation = Vector3.new(-89.5599976, -138.839996, -131.25)
Part211.Position = Vector3.new(-0.640777826, 2.97037435, -14.8715458)
Part211.Rotation = Vector3.new(-90.3399963, -0.289999992, 89.909996)
Part211.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part211.Velocity = Vector3.new(1.01314356e-07, 0.00246505649, 1.33137894e-06)
Part211.Size = Vector3.new(0.49000001, 0.200000003, 0.290374994)
Part211.Anchored = true
Part211.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part211.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part211.BrickColor = BrickColor.new("Royal purple")
Part211.CanCollide = false
Part211.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part211.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part211.Material = Enum.Material.Neon
Part211.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part211.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part211.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part211.brickColor = BrickColor.new("Royal purple")
SpecialMesh212.Parent = Part211
SpecialMesh212.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh212.MeshType = Enum.MeshType.Wedge
Part213.Parent = Model0
Part213.CFrame = CFrame.new(-0.609622896, 3.39657903, -16.2390652, 0.999985635, -0.00133592181, 0.00519115385, 0.00513700396, -0.0377659053, -0.999273479, 0.00153099932, 0.999285877, -0.0377584994)
Part213.Orientation = Vector3.new(87.8199997, 172.169998, 172.25)
Part213.Position = Vector3.new(-0.609622896, 3.39657903, -16.2390652)
Part213.Rotation = Vector3.new(92.159996, 0.299999982, 0.0799999982)
Part213.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part213.Velocity = Vector3.new(3.37329027e-08, 0.002462212, 4.43286638e-07)
Part213.Size = Vector3.new(0.275000006, 0.533124864, 0.214375019)
Part213.Anchored = true
Part213.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part213.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part213.BrickColor = BrickColor.new("Bright blue")
Part213.CanCollide = false
Part213.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part213.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part213.Material = Enum.Material.Neon
Part213.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part213.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part213.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part213.brickColor = BrickColor.new("Bright blue")
SpecialMesh214.Parent = Part213
SpecialMesh214.Scale = Vector3.new(0.449999988, 0.899999976, 0.100000001)
SpecialMesh214.MeshType = Enum.MeshType.Brick
Part215.Parent = Model0
Part215.CFrame = CFrame.new(-0.612417579, 3.49721146, -14.7513313, 0.999985635, -0.00219574547, 0.00488994364, 0.00513701141, 0.13200599, -0.991235793, 0.00153099908, 0.991246581, 0.132015377)
Part215.Orientation = Vector3.new(82.409996, 2.11999989, 2.23000002)
Part215.Position = Vector3.new(-0.612417579, 3.49721146, -14.7513313)
Part215.Rotation = Vector3.new(82.409996, 0.280000001, 0.129999995)
Part215.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part215.Velocity = Vector3.new(1.77760739e-08, 0.00246531144, 2.33596552e-07)
Part215.Size = Vector3.new(0.275000006, 0.488124937, 0.359375)
Part215.Anchored = true
Part215.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part215.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part215.BrickColor = BrickColor.new("Really black")
Part215.CanCollide = false
Part215.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part215.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part215.Material = Enum.Material.Metal
Part215.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part215.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part215.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part215.brickColor = BrickColor.new("Really black")
SpecialMesh216.Parent = Part215
SpecialMesh216.Scale = Vector3.new(0.400000006, 1, 0.5)
SpecialMesh216.MeshType = Enum.MeshType.Brick
Part217.Parent = Model0
Part217.CFrame = CFrame.new(-0.645515323, 3.66365719, -14.1031828, -0.0047622188, -0.999985635, 0.00246008043, 0.720367849, -0.00513686892, -0.693573356, 0.693576038, -0.00153078465, 0.720381975)
Part217.Orientation = Vector3.new(43.9099998, 0.199999988, 90.409996)
Part217.Position = Vector3.new(-0.645515323, 3.66365719, -14.1031828)
Part217.Rotation = Vector3.new(43.9099998, 0.140000001, 90.2699966)
Part217.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part217.Velocity = Vector3.new(-8.61649951e-09, 0.00246665697, -1.13230158e-07)
Part217.Size = Vector3.new(0.496000022, 0.200000003, 0.280375004)
Part217.Anchored = true
Part217.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part217.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part217.BrickColor = BrickColor.new("Royal purple")
Part217.CanCollide = false
Part217.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part217.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part217.Material = Enum.Material.Neon
Part217.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part217.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part217.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part217.brickColor = BrickColor.new("Royal purple")
SpecialMesh218.Parent = Part217
SpecialMesh218.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh218.MeshType = Enum.MeshType.Wedge
Part219.Parent = Model0
Part219.CFrame = CFrame.new(-0.611597419, 2.92886329, -13.380847, -0.999985635, -0.00162816129, -0.00510668149, -0.00513661886, 0.0189460143, 0.999807417, -0.00153109606, 0.999819279, -0.0189541057)
Part219.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part219.Position = Vector3.new(-0.611597419, 2.92886329, -13.380847)
Part219.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part219.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part219.Velocity = Vector3.new(1.07896597e-07, 0.00246816734, 1.41787655e-06)
Part219.Size = Vector3.new(0.275000006, 0.630125046, 0.280375004)
Part219.Anchored = true
Part219.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part219.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part219.BrickColor = BrickColor.new("Really black")
Part219.CanCollide = false
Part219.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part219.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part219.Material = Enum.Material.Metal
Part219.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part219.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part219.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part219.brickColor = BrickColor.new("Really black")
SpecialMesh220.Parent = Part219
SpecialMesh220.Scale = Vector3.new(0.395000011, 0.75, 0.25)
SpecialMesh220.MeshType = Enum.MeshType.Wedge
Part221.Parent = Model0
Part221.CFrame = CFrame.new(-0.609442294, 2.87052941, -14.5920582, -0.999985635, 0.00510674296, -0.00162775011, -0.00513667427, -0.999807417, 0.0189472083, -0.00153067766, 0.0189552978, 0.999819279)
Part221.Orientation = Vector3.new(-1.09000003, -0.0899999961, -179.709991)
Part221.Position = Vector3.new(-0.609442294, 2.87052941, -14.5920582)
Part221.Rotation = Vector3.new(-1.09000003, -0.0899999961, -179.709991)
Part221.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part221.Velocity = Vector3.new(1.17146328e-07, 0.00246564392, 1.53942813e-06)
Part221.Size = Vector3.new(0.275000006, 0.216999978, 0.295375019)
Part221.Anchored = true
Part221.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part221.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part221.BrickColor = BrickColor.new("Really black")
Part221.CanCollide = false
Part221.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part221.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part221.Material = Enum.Material.Glass
Part221.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part221.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part221.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part221.brickColor = BrickColor.new("Really black")
SpecialMesh222.Parent = Part221
SpecialMesh222.Scale = Vector3.new(0.5, 0.75, 0.25)
SpecialMesh222.MeshType = Enum.MeshType.Wedge
Part223.Parent = Model0
Part223.CFrame = CFrame.new(-0.609190822, 2.76472902, -14.4025202, -0.999985635, 0.00510674296, -0.00162775011, -0.00513667427, -0.999807417, 0.0189472083, -0.00153067766, 0.0189552978, 0.999819279)
Part223.Orientation = Vector3.new(-1.09000003, -0.0899999961, -179.709991)
Part223.Position = Vector3.new(-0.609190822, 2.76472902, -14.4025202)
Part223.Rotation = Vector3.new(-1.09000003, -0.0899999961, -179.709991)
Part223.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part223.Velocity = Vector3.new(1.3392264e-07, 0.0024660388, 1.7598868e-06)
Part223.Size = Vector3.new(0.275000006, 0.23299998, 0.295375019)
Part223.Anchored = true
Part223.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part223.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part223.BrickColor = BrickColor.new("Really black")
Part223.CanCollide = false
Part223.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part223.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part223.Material = Enum.Material.Glass
Part223.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part223.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part223.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part223.brickColor = BrickColor.new("Really black")
SpecialMesh224.Parent = Part223
SpecialMesh224.Scale = Vector3.new(0.5, 1, 0.25)
SpecialMesh224.MeshType = Enum.MeshType.Wedge
Part225.Parent = Model0
Part225.CFrame = CFrame.new(-0.610054374, 2.83367729, -14.0694036, 0.999985635, 0.00162807188, -0.00510671316, 0.00513664866, -0.0189460143, 0.999807417, 0.00153100595, -0.999819279, -0.0189541057)
Part225.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part225.Position = Vector3.new(-0.610054374, 2.83367729, -14.0694036)
Part225.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part225.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part225.Velocity = Vector3.new(1.22989817e-07, 0.00246673287, 1.61621767e-06)
Part225.Size = Vector3.new(0.275000006, 0.311124951, 0.267374992)
Part225.Anchored = true
Part225.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part225.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part225.BrickColor = BrickColor.new("Really black")
Part225.CanCollide = false
Part225.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part225.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part225.Material = Enum.Material.Metal
Part225.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part225.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part225.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part225.brickColor = BrickColor.new("Really black")
SpecialMesh226.Parent = Part225
SpecialMesh226.Scale = Vector3.new(0.495000005, 1, 1)
SpecialMesh226.MeshType = Enum.MeshType.Brick
Part227.Parent = Model0
Part227.CFrame = CFrame.new(-0.611247957, 3.01424932, -13.8955402, 0.999985635, -0.00162807154, 0.00510659395, 0.00513652945, 0.0189459547, -0.999807417, 0.00153100828, 0.999819279, 0.0189540461)
Part227.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part227.Position = Vector3.new(-0.611247957, 3.01424932, -13.8955402)
Part227.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part227.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part227.Velocity = Vector3.new(9.43572971e-08, 0.00246709492, 1.23995574e-06)
Part227.Size = Vector3.new(0.275000006, 0.228, 0.213375002)
Part227.Anchored = true
Part227.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part227.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part227.BrickColor = BrickColor.new("Really black")
Part227.CanCollide = false
Part227.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part227.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part227.Material = Enum.Material.Metal
Part227.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part227.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part227.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part227.brickColor = BrickColor.new("Really black")
SpecialMesh228.Parent = Part227
SpecialMesh228.Scale = Vector3.new(0.569999993, 0.125, 0.375)
SpecialMesh228.MeshType = Enum.MeshType.Wedge
Part229.Parent = Model0
Part229.CFrame = CFrame.new(-0.614671409, 3.24594569, -12.4355726, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part229.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part229.Position = Vector3.new(-0.614671409, 3.24594569, -12.4355726)
Part229.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part229.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part229.Velocity = Vector3.new(5.76182231e-08, 0.00247013662, 7.57164685e-07)
Part229.Size = Vector3.new(0.275000006, 0.745124936, 0.280375004)
Part229.Anchored = true
Part229.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part229.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part229.BrickColor = BrickColor.new("Really black")
Part229.CanCollide = false
Part229.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part229.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part229.Material = Enum.Material.Metal
Part229.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part229.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part229.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part229.brickColor = BrickColor.new("Really black")
SpecialMesh230.Parent = Part229
SpecialMesh230.Scale = Vector3.new(0.400000006, 1.04999995, 0.5)
SpecialMesh230.MeshType = Enum.MeshType.Brick
Part231.Parent = Model0
Part231.CFrame = CFrame.new(-0.610754132, 2.89412951, -13.8151274, -0.999985635, -0.00162807154, -0.00510650687, -0.00513644237, 0.0189459547, 0.999807417, -0.00153100991, 0.999819279, -0.0189540461)
Part231.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part231.Position = Vector3.new(-0.610754132, 2.89412951, -13.8151274)
Part231.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part231.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part231.Velocity = Vector3.new(1.1340417e-07, 0.00246726256, 1.49025209e-06)
Part231.Size = Vector3.new(0.275000006, 0.200000003, 0.303375006)
Part231.Anchored = true
Part231.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part231.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part231.BrickColor = BrickColor.new("Really black")
Part231.CanCollide = false
Part231.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part231.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part231.Material = Enum.Material.Glass
Part231.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part231.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part231.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part231.brickColor = BrickColor.new("Really black")
SpecialMesh232.Parent = Part231
SpecialMesh232.Scale = Vector3.new(0.524999976, 0.5, 0.5)
SpecialMesh232.MeshType = Enum.MeshType.Wedge
Part233.Parent = Model0
Part233.CFrame = CFrame.new(-0.614374042, 3.38457584, -13.09618, 0.999985635, -0.00162795233, 0.00510671316, 0.00513664633, 0.0189459547, -0.999807417, 0.00153088674, 0.999819279, 0.0189540461)
Part233.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part233.Position = Vector3.new(-0.614374042, 3.38457584, -13.09618)
Part233.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part233.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part233.Velocity = Vector3.new(3.56362335e-08, 0.00246876013, 4.68297941e-07)
Part233.Size = Vector3.new(0.275000006, 0.322125077, 0.363375008)
Part233.Anchored = true
Part233.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part233.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part233.BrickColor = BrickColor.new("Really black")
Part233.CanCollide = false
Part233.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part233.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part233.Material = Enum.Material.Metal
Part233.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part233.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part233.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part233.brickColor = BrickColor.new("Really black")
SpecialMesh234.Parent = Part233
SpecialMesh234.Scale = Vector3.new(0.5, 1, 1)
SpecialMesh234.MeshType = Enum.MeshType.Wedge
Part235.Parent = Model0
Part235.CFrame = CFrame.new(-0.612951875, 3.3556869, -13.9274721, 0.999985635, 0.00162774313, -0.00510693667, 0.00513686566, -0.0189458374, 0.999807417, 0.00153067405, -0.999819279, -0.0189539269)
Part235.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part235.Position = Vector3.new(-0.612951875, 3.3556869, -13.9274721)
Part235.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part235.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part235.Velocity = Vector3.new(4.02170173e-08, 0.0024670281, 5.28494468e-07)
Part235.Size = Vector3.new(0.275000006, 0.54112494, 0.367374986)
Part235.Anchored = true
Part235.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part235.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part235.BrickColor = BrickColor.new("Really black")
Part235.CanCollide = false
Part235.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part235.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part235.Material = Enum.Material.Metal
Part235.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part235.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part235.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part235.brickColor = BrickColor.new("Really black")
SpecialMesh236.Parent = Part235
SpecialMesh236.Scale = Vector3.new(0.5, 1.04999995, 0.600000024)
SpecialMesh236.MeshType = Enum.MeshType.Brick
Part237.Parent = Model0
Part237.CFrame = CFrame.new(-0.611452341, 3.03449631, -13.8299093, 0.999985635, 0.00162795268, -0.00510686403, 0.0051367972, -0.0189460143, 0.999807417, 0.00153088395, -0.999819279, -0.0189541057)
Part237.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part237.Position = Vector3.new(-0.611452341, 3.03449631, -13.8299093)
Part237.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part237.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part237.Velocity = Vector3.new(9.11468163e-08, 0.00246723159, 1.19776655e-06)
Part237.Size = Vector3.new(0.275000006, 0.207000002, 0.303375006)
Part237.Anchored = true
Part237.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part237.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part237.BrickColor = BrickColor.new("Really black")
Part237.CanCollide = false
Part237.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part237.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part237.Material = Enum.Material.Metal
Part237.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part237.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part237.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part237.brickColor = BrickColor.new("Really black")
SpecialMesh238.Parent = Part237
SpecialMesh238.Scale = Vector3.new(0.5, 0.5, 0.5)
SpecialMesh238.MeshType = Enum.MeshType.Wedge
Part239.Parent = Model0
Part239.CFrame = CFrame.new(-0.608695984, 3.30580091, -16.5400867, 0.999985635, -0.00133592135, 0.00519114826, 0.0051369979, -0.0377659909, -0.999273479, 0.00153099943, 0.999285758, -0.0377585851)
Part239.Orientation = Vector3.new(87.8199997, 172.169998, 172.25)
Part239.Position = Vector3.new(-0.608695984, 3.30580091, -16.5400867)
Part239.Rotation = Vector3.new(92.159996, 0.299999982, 0.0799999982)
Part239.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part239.Velocity = Vector3.new(4.81271911e-08, 0.00246158475, 6.32443061e-07)
Part239.Size = Vector3.new(0.275000006, 1.65712488, 0.422374964)
Part239.Anchored = true
Part239.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part239.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part239.BrickColor = BrickColor.new("Really black")
Part239.CanCollide = false
Part239.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part239.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part239.Material = Enum.Material.Metal
Part239.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part239.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part239.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part239.brickColor = BrickColor.new("Really black")
SpecialMesh240.Parent = Part239
SpecialMesh240.Scale = Vector3.new(0.400000006, 1, 0.5)
SpecialMesh240.MeshType = Enum.MeshType.Brick
Part241.Parent = Model0
Part241.CFrame = CFrame.new(-0.607766628, 3.58790874, -18.0936966, 0.999985635, -0.0010395617, 0.00525854016, 0.00513699278, -0.0943568796, -0.99552542, 0.00153108896, 0.995537996, -0.094350189)
Part241.Orientation = Vector3.new(84.5800018, 176.809998, 176.87999)
Part241.Position = Vector3.new(-0.607766628, 3.58790874, -18.0936966)
Part241.Rotation = Vector3.new(95.409996, 0.299999982, 0.0599999987)
Part241.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part241.Velocity = Vector3.new(3.39455752e-09, 0.00245834771, 4.46085551e-08)
Part241.Size = Vector3.new(0.275000006, 1.66212487, 0.359375)
Part241.Anchored = true
Part241.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part241.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part241.BrickColor = BrickColor.new("Really black")
Part241.CanCollide = false
Part241.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part241.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part241.Material = Enum.Material.Metal
Part241.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part241.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part241.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part241.brickColor = BrickColor.new("Really black")
SpecialMesh242.Parent = Part241
SpecialMesh242.Scale = Vector3.new(0.400000006, 1, 0.5)
SpecialMesh242.MeshType = Enum.MeshType.Brick
Part243.Parent = Model0
Part243.CFrame = CFrame.new(-0.618630528, 3.29811025, -11.1170893, -0.999985635, -0.00162795233, -0.0051068007, -0.00513673387, 0.0189459547, 0.999807417, -0.00153088511, 0.999819279, -0.0189540461)
Part243.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part243.Position = Vector3.new(-0.618630528, 3.29811025, -11.1170893)
Part243.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part243.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part243.Velocity = Vector3.new(4.93467311e-08, 0.00247288332, 6.48468244e-07)
Part243.Size = Vector3.new(0.25999999, 0.3125, 0.320125014)
Part243.Anchored = true
Part243.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part243.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part243.BrickColor = BrickColor.new("Really black")
Part243.CanCollide = false
Part243.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part243.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part243.Material = Enum.Material.Metal
Part243.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part243.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part243.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part243.brickColor = BrickColor.new("Really black")
SpecialMesh244.Parent = Part243
SpecialMesh244.Scale = Vector3.new(0.5, 1, 1)
SpecialMesh244.MeshType = Enum.MeshType.Wedge
Part245.Parent = Model0
Part245.CFrame = CFrame.new(-0.639055848, 2.33898354, -13.8797112, 0.0028942409, -0.999985635, -0.00451144017, -0.277069569, -0.00513673481, 0.960836232, -0.960845649, -0.00153090828, -0.277080446)
Part245.Orientation = Vector3.new(-73.909996, -179.069992, -91.0599976)
Part245.Position = Vector3.new(-0.639055848, 2.33898354, -13.8797112)
Part245.Rotation = Vector3.new(-106.089996, -0.25999999, 89.8299942)
Part245.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part245.Velocity = Vector3.new(2.01431277e-07, 0.00246712356, 2.64702226e-06)
Part245.Size = Vector3.new(0.453000009, 0.200000003, 0.280375004)
Part245.Anchored = true
Part245.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part245.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part245.BrickColor = BrickColor.new("Royal purple")
Part245.CanCollide = false
Part245.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part245.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part245.Material = Enum.Material.Neon
Part245.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part245.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part245.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part245.brickColor = BrickColor.new("Royal purple")
SpecialMesh246.Parent = Part245
SpecialMesh246.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh246.MeshType = Enum.MeshType.Wedge
Part247.Parent = Model0
Part247.CFrame = CFrame.new(-0.611137211, 3.24560308, -14.7434616, 0.999985635, -0.00162807363, 0.00510707032, 0.00513700629, 0.018946372, -0.999807417, 0.0015309992, 0.999819279, 0.0189544633)
Part247.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part247.Position = Vector3.new(-0.611137211, 3.24560308, -14.7434616)
Part247.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part247.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part247.Velocity = Vector3.new(5.76725228e-08, 0.0024653282, 7.57878638e-07)
Part247.Size = Vector3.new(0.275000006, 0.488124937, 0.418375015)
Part247.Anchored = true
Part247.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part247.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part247.BrickColor = BrickColor.new("Really black")
Part247.CanCollide = false
Part247.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part247.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part247.Material = Enum.Material.Metal
Part247.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part247.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part247.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part247.brickColor = BrickColor.new("Really black")
SpecialMesh248.Parent = Part247
SpecialMesh248.Scale = Vector3.new(0.400000006, 1, 0.899999976)
SpecialMesh248.MeshType = Enum.MeshType.Brick
Part249.Parent = Model0
Part249.CFrame = CFrame.new(-0.646988273, 3.68078995, -13.1990242, 0.00245985761, -0.999985635, 0.00476197852, -0.693573356, -0.00513654156, -0.720367849, 0.720381916, -0.00153077836, -0.693576097)
Part249.Orientation = Vector3.new(46.079998, 179.610001, -90.4199982)
Part249.Position = Vector3.new(-0.646988273, 3.68078995, -13.1990242)
Part249.Rotation = Vector3.new(133.910004, 0.269999981, 89.8600006)
Part249.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part249.Velocity = Vector3.new(-1.13331566e-08, 0.00246854057, -1.48930098e-07)
Part249.Size = Vector3.new(0.496000022, 0.200000003, 0.280375004)
Part249.Anchored = true
Part249.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part249.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part249.BrickColor = BrickColor.new("Royal purple")
Part249.CanCollide = false
Part249.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part249.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part249.Material = Enum.Material.Neon
Part249.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part249.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part249.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part249.brickColor = BrickColor.new("Royal purple")
SpecialMesh250.Parent = Part249
SpecialMesh250.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh250.MeshType = Enum.MeshType.Wedge
Part251.Parent = Model0
Part251.CFrame = CFrame.new(-0.616084397, 3.20240736, -11.3666525, -0.999985635, -0.000716604234, -0.00531162601, -0.00513642887, -0.154956639, 0.987908065, -0.00153101014, 0.987921119, 0.154950723)
Part251.Orientation = Vector3.new(-81.0800018, -1.95999992, -178.099991)
Part251.Position = Vector3.new(-0.616084397, 3.20240736, -11.3666525)
Part251.Rotation = Vector3.new(-81.0899963, -0.299999982, 179.959991)
Part251.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part251.Velocity = Vector3.new(6.45219203e-08, 0.00247236365, 8.47886554e-07)
Part251.Size = Vector3.new(0.275000006, 0.203125, 0.234375)
Part251.Anchored = true
Part251.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part251.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part251.BrickColor = BrickColor.new("Really black")
Part251.CanCollide = false
Part251.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part251.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part251.Material = Enum.Material.Metal
Part251.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part251.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part251.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part251.brickColor = BrickColor.new("Really black")
SpecialMesh252.Parent = Part251
SpecialMesh252.Scale = Vector3.new(0.5, 1.04999995, 0.400000006)
SpecialMesh252.MeshType = Enum.MeshType.Brick
Part253.Parent = Model0
Part253.CFrame = CFrame.new(-0.616027236, 3.22281599, -11.4724684, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part253.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part253.Position = Vector3.new(-0.616027236, 3.22281599, -11.4724684)
Part253.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part253.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part253.Velocity = Vector3.new(6.12858102e-08, 0.00247214315, 8.05360628e-07)
Part253.Size = Vector3.new(0.275000006, 0.415125012, 0.234375)
Part253.Anchored = true
Part253.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part253.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part253.BrickColor = BrickColor.new("Really black")
Part253.CanCollide = false
Part253.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part253.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part253.Material = Enum.Material.Metal
Part253.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part253.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part253.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part253.brickColor = BrickColor.new("Really black")
SpecialMesh254.Parent = Part253
SpecialMesh254.Scale = Vector3.new(0.5, 1.04999995, 0.400000006)
SpecialMesh254.MeshType = Enum.MeshType.Brick
Part255.Parent = Model0
Part255.CFrame = CFrame.new(-0.610752404, 3.28331137, -15.1213608, 0.999985635, -0.00347625092, 0.00408016983, 0.00513697462, 0.404109061, -0.914696634, 0.00153088057, 0.914704442, 0.404121131)
Part255.Orientation = Vector3.new(66.159996, 0.579999983, 0.729999959)
Part255.Position = Vector3.new(-0.610752404, 3.28331137, -15.1213608)
Part255.Rotation = Vector3.new(66.159996, 0.229999989, 0.199999988)
Part255.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part255.Velocity = Vector3.new(5.16932808e-08, 0.00246454077, 6.79305003e-07)
Part255.Size = Vector3.new(0.275000006, 0.330124885, 0.214375019)
Part255.Anchored = true
Part255.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part255.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part255.BrickColor = BrickColor.new("Bright blue")
Part255.CanCollide = false
Part255.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part255.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part255.Material = Enum.Material.Neon
Part255.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part255.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part255.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part255.brickColor = BrickColor.new("Bright blue")
SpecialMesh256.Parent = Part255
SpecialMesh256.Scale = Vector3.new(0.449999988, 1, 0.100000001)
SpecialMesh256.MeshType = Enum.MeshType.Brick
Part257.Parent = Model0
Part257.CFrame = CFrame.new(-0.63657546, 3.38894939, -19.0216789, -0.00237622252, -0.999985635, -0.00480452133, 0.680895686, -0.00513668498, 0.732362568, -0.732376754, -0.00153112097, 0.68089813)
Part257.Orientation = Vector3.new(-47.079998, -0.399999976, 90.4300003)
Part257.Position = Vector3.new(-0.63657546, 3.38894939, -19.0216789)
Part257.Rotation = Vector3.new(-47.0900002, -0.280000001, 90.1399994)
Part257.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part257.Velocity = Vector3.new(3.49426692e-08, 0.00245640939, 4.59184662e-07)
Part257.Size = Vector3.new(0.940000057, 0.200000003, 0.285374999)
Part257.Anchored = true
Part257.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part257.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part257.BrickColor = BrickColor.new("Royal purple")
Part257.CanCollide = false
Part257.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part257.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part257.Material = Enum.Material.Neon
Part257.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part257.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part257.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part257.brickColor = BrickColor.new("Royal purple")
SpecialMesh258.Parent = Part257
SpecialMesh258.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh258.MeshType = Enum.MeshType.Wedge
Part259.Parent = Model0
Part259.CFrame = CFrame.new(-0.584489346, 3.6811111, -13.1989288, -0.00245976867, 0.999985635, 0.00476201251, 0.693573415, 0.00513650384, -0.720367789, -0.720381916, 0.00153086672, -0.693576038)
Part259.Orientation = Vector3.new(46.079998, 179.610001, 89.5799942)
Part259.Position = Vector3.new(-0.584489346, 3.6811111, -13.1989288)
Part259.Rotation = Vector3.new(133.910004, 0.269999981, -90.1399994)
Part259.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part259.Velocity = Vector3.new(-1.13840777e-08, 0.00246855081, -1.49599259e-07)
Part259.Size = Vector3.new(0.496000022, 0.200000003, 0.280375004)
Part259.Anchored = true
Part259.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part259.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part259.BrickColor = BrickColor.new("Royal purple")
Part259.CanCollide = false
Part259.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part259.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part259.Material = Enum.Material.Neon
Part259.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part259.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part259.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part259.brickColor = BrickColor.new("Royal purple")
SpecialMesh260.Parent = Part259
SpecialMesh260.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh260.MeshType = Enum.MeshType.Wedge
Part261.Parent = Model0
Part261.CFrame = CFrame.new(-0.574076533, 3.38927007, -19.0215836, 0.00237613311, 0.999985635, -0.00480454601, -0.680895686, 0.00513664167, 0.732362568, 0.732376754, 0.00153120293, 0.68089813)
Part261.Orientation = Vector3.new(-47.079998, -0.399999976, -89.5699997)
Part261.Position = Vector3.new(-0.574076533, 3.38927007, -19.0215836)
Part261.Rotation = Vector3.new(-47.0900002, -0.280000001, -89.8600006)
Part261.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part261.Velocity = Vector3.new(3.48918228e-08, 0.00245641964, 4.58516467e-07)
Part261.Size = Vector3.new(0.940000057, 0.200000003, 0.285374999)
Part261.Anchored = true
Part261.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part261.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part261.BrickColor = BrickColor.new("Royal purple")
Part261.CanCollide = false
Part261.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part261.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part261.Material = Enum.Material.Neon
Part261.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part261.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part261.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part261.brickColor = BrickColor.new("Royal purple")
SpecialMesh262.Parent = Part261
SpecialMesh262.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh262.MeshType = Enum.MeshType.Wedge
Part263.Parent = Model0
Part263.CFrame = CFrame.new(-0.640052557, 2.92977762, -15.2103024, 0.00336818164, -0.999985635, -0.00416955911, -0.380026042, -0.00513675297, 0.924961627, -0.924969733, -0.00153089722, -0.380037904)
Part263.Orientation = Vector3.new(-67.659996, -179.369995, -90.7699966)
Part263.Position = Vector3.new(-0.640052557, 2.92977762, -15.2103024)
Part263.Rotation = Vector3.new(-112.339996, -0.239999995, 89.8099976)
Part263.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part263.Velocity = Vector3.new(1.07751589e-07, 0.00246435078, 1.41597127e-06)
Part263.Size = Vector3.new(0.288000047, 0.200000003, 0.27837503)
Part263.Anchored = true
Part263.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part263.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part263.BrickColor = BrickColor.new("Royal purple")
Part263.CanCollide = false
Part263.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part263.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part263.Material = Enum.Material.Neon
Part263.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part263.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part263.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part263.brickColor = BrickColor.new("Royal purple")
SpecialMesh264.Parent = Part263
SpecialMesh264.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh264.MeshType = Enum.MeshType.Wedge
Part265.Parent = Model0
Part265.CFrame = CFrame.new(-0.611472309, 3.03472614, -13.8177929, 0.999985635, -0.00162807154, 0.00510659395, 0.00513652945, 0.0189459547, -0.999807417, 0.00153100828, 0.999819279, 0.0189540461)
Part265.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part265.Position = Vector3.new(-0.611472309, 3.03472614, -13.8177929)
Part265.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part265.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part265.Velocity = Vector3.new(9.11103797e-08, 0.00246725697, 1.1972877e-06)
Part265.Size = Vector3.new(0.275000006, 0.200000003, 0.303375006)
Part265.Anchored = true
Part265.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part265.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part265.BrickColor = BrickColor.new("Really black")
Part265.CanCollide = false
Part265.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part265.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part265.Material = Enum.Material.Glass
Part265.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part265.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part265.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part265.brickColor = BrickColor.new("Really black")
SpecialMesh266.Parent = Part265
SpecialMesh266.Scale = Vector3.new(0.524999976, 0.5, 0.5)
SpecialMesh266.MeshType = Enum.MeshType.Wedge
Part267.Parent = Model0
Part267.CFrame = CFrame.new(-0.608101904, 3.29321218, -16.8867702, 0.999985635, -0.00103956275, 0.00525853597, 0.00513698952, -0.0943567529, -0.99552536, 0.00153108896, 0.995537996, -0.0943500549)
Part267.Orientation = Vector3.new(84.5800018, 176.809998, 176.87999)
Part267.Position = Vector3.new(-0.608101904, 3.29321218, -16.8867702)
Part267.Rotation = Vector3.new(95.409996, 0.299999982, 0.0599999987)
Part267.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part267.Velocity = Vector3.new(5.0123333e-08, 0.00246086251, 6.5867448e-07)
Part267.Size = Vector3.new(0.275000006, 0.454124868, 0.214375019)
Part267.Anchored = true
Part267.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part267.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part267.BrickColor = BrickColor.new("Bright blue")
Part267.CanCollide = false
Part267.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part267.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part267.Material = Enum.Material.Neon
Part267.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part267.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part267.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part267.brickColor = BrickColor.new("Bright blue")
SpecialMesh268.Parent = Part267
SpecialMesh268.Scale = Vector3.new(0.449999988, 0.899999976, 0.100000001)
SpecialMesh268.MeshType = Enum.MeshType.Brick
Part269.Parent = Model0
Part269.CFrame = CFrame.new(-0.609975338, 2.71316695, -13.7165575, -0.999985635, -0.00476232171, -0.00245974911, -0.00513671385, 0.720367908, 0.693573296, -0.0015310942, 0.693576038, -0.720381975)
Part269.Orientation = Vector3.new(-43.9099998, -179.800003, -0.409999996)
Part269.Position = Vector3.new(-0.609975338, 2.71316695, -13.7165575)
Part269.Rotation = Vector3.new(-136.089996, -0.140000001, 179.729996)
Part269.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part269.Velocity = Vector3.new(1.42098628e-07, 0.00246746815, 1.8673278e-06)
Part269.Size = Vector3.new(0.275000006, 0.403124899, 0.352375001)
Part269.Anchored = true
Part269.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part269.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part269.BrickColor = BrickColor.new("Really black")
Part269.CanCollide = false
Part269.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part269.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part269.Material = Enum.Material.Metal
Part269.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part269.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part269.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part269.brickColor = BrickColor.new("Really black")
SpecialMesh270.Parent = Part269
SpecialMesh270.Scale = Vector3.new(0.349999994, 1, 1)
SpecialMesh270.MeshType = Enum.MeshType.Brick
Part271.Parent = Model0
Part271.CFrame = CFrame.new(-0.583012402, 3.6639781, -14.1030874, 0.00476215919, 0.999985635, 0.00246015075, -0.720367849, 0.0051368745, -0.693573356, -0.693576038, 0.00153069268, 0.720381975)
Part271.Orientation = Vector3.new(43.9099998, 0.199999988, -89.5899963)
Part271.Position = Vector3.new(-0.583012402, 3.6639781, -14.1030874)
Part271.Rotation = Vector3.new(43.9099998, 0.140000001, -89.7299957)
Part271.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part271.Velocity = Vector3.new(-8.66738503e-09, 0.00246666698, -1.13898864e-07)
Part271.Size = Vector3.new(0.496000022, 0.200000003, 0.280375004)
Part271.Anchored = true
Part271.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part271.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part271.BrickColor = BrickColor.new("Royal purple")
Part271.CanCollide = false
Part271.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part271.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part271.Material = Enum.Material.Neon
Part271.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part271.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part271.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part271.brickColor = BrickColor.new("Royal purple")
SpecialMesh272.Parent = Part271
SpecialMesh272.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh272.MeshType = Enum.MeshType.Wedge
Part273.Parent = Model0
Part273.CFrame = CFrame.new(-0.573997319, 3.0173018, -17.825201, -0.00108546892, 0.999985635, -0.00524905883, -0.0856661052, 0.00513677904, 0.99631083, 0.996323526, 0.00153113017, 0.0856593028)
Part273.Orientation = Vector3.new(-85.0800018, -3.50999999, -86.5699997)
Part273.Position = Vector3.new(-0.573997319, 3.0173018, -17.825201)
Part273.Rotation = Vector3.new(-85.0899963, -0.299999982, -90.0599976)
Part273.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part273.Velocity = Vector3.new(9.38732327e-08, 0.00245891255, 1.23359519e-06)
Part273.Size = Vector3.new(1.78499997, 0.200000003, 0.301375002)
Part273.Anchored = true
Part273.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part273.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part273.BrickColor = BrickColor.new("Royal purple")
Part273.CanCollide = false
Part273.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part273.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part273.Material = Enum.Material.Neon
Part273.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part273.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part273.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part273.brickColor = BrickColor.new("Royal purple")
SpecialMesh274.Parent = Part273
SpecialMesh274.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh274.MeshType = Enum.MeshType.Wedge
Part275.Parent = Model0
Part275.CFrame = CFrame.new(-0.614639282, 3.4985106, -13.3051252, -0.999985635, 0.00162801275, 0.00510680024, -0.00513673527, -0.0189461038, -0.999807417, -0.00153094472, -0.999819279, 0.0189541951)
Part275.Orientation = Vector3.new(88.8799973, 15.0799999, -164.830002)
Part275.Position = Vector3.new(-0.614639282, 3.4985106, -13.3051252)
Part275.Rotation = Vector3.new(88.909996, 0.289999992, -179.909988)
Part275.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part275.Velocity = Vector3.new(1.75700912e-08, 0.00246832473, 2.30889498e-07)
Part275.Size = Vector3.new(0.275000006, 0.204125047, 0.207375005)
Part275.Anchored = true
Part275.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part275.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part275.BrickColor = BrickColor.new("Really black")
Part275.CanCollide = false
Part275.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part275.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part275.Material = Enum.Material.Metal
Part275.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part275.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part275.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part275.brickColor = BrickColor.new("Really black")
SpecialMesh276.Parent = Part275
SpecialMesh276.Scale = Vector3.new(0.5, 0.5, 0.5)
SpecialMesh276.MeshType = Enum.MeshType.Wedge
Part277.Parent = Model0
Part277.CFrame = CFrame.new(-0.609530032, 2.79620743, -14.2853489, 0.999985635, 0.00162795268, -0.00510686403, 0.0051367972, -0.0189460143, 0.999807417, 0.00153088395, -0.999819279, -0.0189541057)
Part277.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part277.Position = Vector3.new(-0.609530032, 2.79620743, -14.2853489)
Part277.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part277.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part277.Velocity = Vector3.new(1.28931248e-07, 0.00246628304, 1.6942945e-06)
Part277.Size = Vector3.new(0.275000006, 0.223999977, 0.375375003)
Part277.Anchored = true
Part277.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part277.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part277.BrickColor = BrickColor.new("Really black")
Part277.CanCollide = false
Part277.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part277.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part277.Material = Enum.Material.Glass
Part277.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part277.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part277.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part277.brickColor = BrickColor.new("Really black")
SpecialMesh278.Parent = Part277
SpecialMesh278.Scale = Vector3.new(0.5, 0.699999988, 0.5)
SpecialMesh278.MeshType = Enum.MeshType.Brick
Part279.Parent = Model0
Part279.CFrame = CFrame.new(-0.578278601, 2.9706955, -14.8714504, -0.00156111596, 0.999985635, -0.00512771122, 0.00585717056, 0.00513677299, 0.99996984, 0.999981761, 0.00153103413, -0.00586510636)
Part279.Orientation = Vector3.new(-89.5599976, -138.839996, 48.75)
Part279.Position = Vector3.new(-0.578278601, 2.9706955, -14.8714504)
Part279.Rotation = Vector3.new(-90.3399963, -0.289999992, -90.0899963)
Part279.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part279.Velocity = Vector3.new(1.01263424e-07, 0.00246506673, 1.33070978e-06)
Part279.Size = Vector3.new(0.49000001, 0.200000003, 0.290374994)
Part279.Anchored = true
Part279.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part279.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part279.BrickColor = BrickColor.new("Royal purple")
Part279.CanCollide = false
Part279.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part279.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part279.Material = Enum.Material.Neon
Part279.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part279.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part279.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part279.brickColor = BrickColor.new("Royal purple")
SpecialMesh280.Parent = Part279
SpecialMesh280.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh280.MeshType = Enum.MeshType.Wedge
Part281.Parent = Model0
Part281.CFrame = CFrame.new(-0.613238811, 3.32843637, -13.6493177, -0.999985635, -0.00162807142, -0.00510653527, -0.00513647031, 0.0189459249, 0.999807417, -0.00153100933, 0.999819279, -0.0189540163)
Part281.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part281.Position = Vector3.new(-0.613238811, 3.32843637, -13.6493177)
Part281.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part281.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part281.Velocity = Vector3.new(4.45380195e-08, 0.00246760761, 5.85277007e-07)
Part281.Size = Vector3.new(0.275000006, 0.698124886, 0.732374966)
Part281.Anchored = true
Part281.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part281.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part281.BrickColor = BrickColor.new("Really black")
Part281.CanCollide = false
Part281.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part281.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part281.Material = Enum.Material.Metal
Part281.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part281.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part281.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part281.brickColor = BrickColor.new("Really black")
SpecialMesh282.Parent = Part281
SpecialMesh282.Scale = Vector3.new(0.425000012, 1, 1)
SpecialMesh282.MeshType = Enum.MeshType.Cylinder
Part283.Parent = Model0
Part283.CFrame = CFrame.new(-0.614591718, 3.4972918, -13.3320847, -0.999985635, 0.00245974353, -0.0047620195, -0.00513649127, -0.693573475, 0.72036773, -0.00153088977, 0.720381856, 0.693576157)
Part283.Orientation = Vector3.new(-46.079998, -0.389999986, -179.580002)
Part283.Position = Vector3.new(-0.614591718, 3.4972918, -13.3320847)
Part283.Rotation = Vector3.new(-46.0900002, -0.269999981, -179.860001)
Part283.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part283.Velocity = Vector3.new(1.77633499e-08, 0.00246826862, 2.33429148e-07)
Part283.Size = Vector3.new(0.275000006, 0.413124949, 0.622375011)
Part283.Anchored = true
Part283.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part283.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part283.BrickColor = BrickColor.new("Really black")
Part283.CanCollide = false
Part283.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part283.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part283.Material = Enum.Material.Metal
Part283.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part283.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part283.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part283.brickColor = BrickColor.new("Really black")
SpecialMesh284.Parent = Part283
SpecialMesh284.Scale = Vector3.new(0.400000006, 1.04999995, 0.5)
SpecialMesh284.MeshType = Enum.MeshType.Brick
Part285.Parent = Model0
Part285.CFrame = CFrame.new(-0.615438342, 3.25487208, -11.9645395, -0.999985635, 0.00162786292, 0.00510683237, -0.00513676414, -0.0189459566, -0.999807417, -0.00153079513, -0.999819279, 0.0189540461)
Part285.Orientation = Vector3.new(88.8799973, 15.0799999, -164.830002)
Part285.Position = Vector3.new(-0.615438342, 3.25487208, -11.9645395)
Part285.Rotation = Vector3.new(88.909996, 0.289999992, -179.909988)
Part285.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part285.Velocity = Vector3.new(5.62028113e-08, 0.002471118, 7.38564609e-07)
Part285.Size = Vector3.new(0.275000006, 0.206125051, 0.280375004)
Part285.Anchored = true
Part285.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part285.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part285.BrickColor = BrickColor.new("Really black")
Part285.CanCollide = false
Part285.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part285.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part285.Material = Enum.Material.Metal
Part285.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part285.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part285.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part285.brickColor = BrickColor.new("Really black")
SpecialMesh286.Parent = Part285
SpecialMesh286.Scale = Vector3.new(0.400000006, 0.560000002, 0.5)
SpecialMesh286.MeshType = Enum.MeshType.Wedge
Part287.Parent = Model0
Part287.CFrame = CFrame.new(-0.613306701, 3.18584442, -13.1265478, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part287.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part287.Position = Vector3.new(-0.613306701, 3.18584442, -13.1265478)
Part287.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part287.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part287.Velocity = Vector3.new(6.71482141e-08, 0.00246869703, 8.82399092e-07)
Part287.Size = Vector3.new(0.275000006, 0.567124963, 0.311374992)
Part287.Anchored = true
Part287.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part287.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part287.BrickColor = BrickColor.new("Really black")
Part287.CanCollide = false
Part287.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part287.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part287.Material = Enum.Material.Metal
Part287.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part287.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part287.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part287.brickColor = BrickColor.new("Really black")
SpecialMesh288.Parent = Part287
SpecialMesh288.Scale = Vector3.new(0.400000006, 1.04999995, 0.5)
SpecialMesh288.MeshType = Enum.MeshType.Brick
Part289.Parent = Model0
Part289.CFrame = CFrame.new(-0.646988273, 3.68078995, -13.1990242, 0.00245985761, -0.999985635, 0.00476197852, -0.693573356, -0.00513654156, -0.720367849, 0.720381916, -0.00153077836, -0.693576097)
Part289.Orientation = Vector3.new(46.079998, 179.610001, -90.4199982)
Part289.Position = Vector3.new(-0.646988273, 3.68078995, -13.1990242)
Part289.Rotation = Vector3.new(133.910004, 0.269999981, 89.8600006)
Part289.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part289.Velocity = Vector3.new(-1.13331566e-08, 0.00246854057, -1.48930098e-07)
Part289.Size = Vector3.new(0.496000022, 0.200000003, 0.280375004)
Part289.Anchored = true
Part289.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part289.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part289.BrickColor = BrickColor.new("Royal purple")
Part289.CanCollide = false
Part289.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part289.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part289.Material = Enum.Material.Neon
Part289.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part289.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part289.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part289.brickColor = BrickColor.new("Royal purple")
SpecialMesh290.Parent = Part289
SpecialMesh290.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh290.MeshType = Enum.MeshType.Wedge
Part291.Parent = Model0
Part291.CFrame = CFrame.new(-0.611590862, 3.29178786, -14.6020966, 0.999985635, -0.00510681886, -0.00162807701, 0.00513675623, 0.999807417, 0.0189470276, 0.00153100397, -0.018955119, 0.999819279)
Part291.Orientation = Vector3.new(-1.09000003, -0.0899999961, 0.289999992)
Part291.Position = Vector3.new(-0.611590862, 3.29178786, -14.6020966)
Part291.Rotation = Vector3.new(-1.09000003, -0.0899999961, 0.289999992)
Part291.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part291.Velocity = Vector3.new(5.03492039e-08, 0.00246562273, 6.61642332e-07)
Part291.Size = Vector3.new(0.275000006, 0.200124964, 0.287375033)
Part291.Anchored = true
Part291.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part291.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part291.BrickColor = BrickColor.new("Institutional white")
Part291.CanCollide = false
Part291.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part291.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part291.Material = Enum.Material.Metal
Part291.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part291.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part291.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part291.brickColor = BrickColor.new("Institutional white")
SpecialMesh292.Parent = Part291
SpecialMesh292.Scale = Vector3.new(0.560000002, 1, 0.899999976)
SpecialMesh292.MeshType = Enum.MeshType.Wedge
Part293.Parent = Model0
Part293.CFrame = CFrame.new(-0.636496425, 3.01698065, -17.8252964, 0.00108537939, -0.999985635, -0.00524905883, 0.0856661052, -0.00513678649, 0.99631083, -0.996323466, -0.00153104111, 0.0856593102)
Part293.Orientation = Vector3.new(-85.0800018, -3.50999999, 93.4300003)
Part293.Position = Vector3.new(-0.636496425, 3.01698065, -17.8252964)
Part293.Rotation = Vector3.new(-85.0899963, -0.299999982, 89.9399948)
Part293.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part293.Velocity = Vector3.new(9.39241573e-08, 0.00245890254, 1.23426435e-06)
Part293.Size = Vector3.new(1.78499997, 0.200000003, 0.301375002)
Part293.Anchored = true
Part293.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part293.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part293.BrickColor = BrickColor.new("Royal purple")
Part293.CanCollide = false
Part293.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part293.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part293.Material = Enum.Material.Neon
Part293.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part293.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part293.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part293.brickColor = BrickColor.new("Royal purple")
SpecialMesh294.Parent = Part293
SpecialMesh294.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh294.MeshType = Enum.MeshType.Wedge
Part295.Parent = Model0
Part295.CFrame = CFrame.new(-0.611132324, 3.1960454, -14.5803022, 0.999985635, 0.00162786234, -0.00510698371, 0.00513691502, -0.0189458374, 0.999807417, 0.00153079221, -0.999819279, -0.0189539269)
Part295.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part295.Position = Vector3.new(-0.611132324, 3.1960454, -14.5803022)
Part295.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part295.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part295.Velocity = Vector3.new(6.55306707e-08, 0.00246566813, 8.61143121e-07)
Part295.Size = Vector3.new(0.275000006, 0.277124941, 0.702375054)
Part295.Anchored = true
Part295.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part295.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part295.BrickColor = BrickColor.new("Really black")
Part295.CanCollide = false
Part295.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part295.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part295.Material = Enum.Material.Glass
Part295.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part295.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part295.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part295.brickColor = BrickColor.new("Really black")
SpecialMesh296.Parent = Part295
SpecialMesh296.Scale = Vector3.new(0.550000012, 0.5, 0.800000012)
SpecialMesh296.MeshType = Enum.MeshType.Brick
Part297.Parent = Model0
Part297.CFrame = CFrame.new(-0.610346913, 2.907269, -14.1244287, 0.999985635, 0.00162795268, -0.00510686403, 0.0051367972, -0.0189460143, 0.999807417, 0.00153088395, -0.999819279, -0.0189541057)
Part297.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part297.Position = Vector3.new(-0.610346913, 2.907269, -14.1244287)
Part297.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part297.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part297.Velocity = Vector3.new(1.11320702e-07, 0.00246661808, 1.462873e-06)
Part297.Size = Vector3.new(0.275000006, 0.207000002, 0.213375002)
Part297.Anchored = true
Part297.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part297.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part297.BrickColor = BrickColor.new("Bright blue")
Part297.CanCollide = false
Part297.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part297.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part297.Material = Enum.Material.Neon
Part297.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part297.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part297.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part297.brickColor = BrickColor.new("Bright blue")
SpecialMesh298.Parent = Part297
SpecialMesh298.Scale = Vector3.new(0.550000012, 0.25, 0.5)
SpecialMesh298.MeshType = Enum.MeshType.Wedge
Part299.Parent = Model0
Part299.CFrame = CFrame.new(-0.617512941, 3.42300797, -11.1735916, 0.999985635, -0.00206693518, 0.00494515104, 0.00513641397, 0.106012821, -0.994351625, 0.00153101049, 0.994362772, 0.106021926)
Part299.Orientation = Vector3.new(83.909996, 2.66999984, 2.76999998)
Part299.Position = Vector3.new(-0.617512941, 3.42300797, -11.1735916)
Part299.Rotation = Vector3.new(83.909996, 0.280000001, 0.119999997)
Part299.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part299.Velocity = Vector3.new(2.95422424e-08, 0.00247276574, 3.88216051e-07)
Part299.Size = Vector3.new(0.275000006, 0.223124996, 0.234375)
Part299.Anchored = true
Part299.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part299.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part299.BrickColor = BrickColor.new("Really black")
Part299.CanCollide = false
Part299.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part299.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part299.Material = Enum.Material.Metal
Part299.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part299.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part299.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part299.brickColor = BrickColor.new("Really black")
SpecialMesh300.Parent = Part299
SpecialMesh300.Scale = Vector3.new(0.5, 1, 0.400000006)
SpecialMesh300.MeshType = Enum.MeshType.Brick
Part301.Parent = Model0
Part301.CFrame = CFrame.new(-0.60622716, 3.20835805, -17.8265324, -0.999985635, 0.00525827007, -0.00103986717, -0.00513669662, -0.995525479, -0.0943559632, -0.00153136277, -0.0943492651, 0.995538116)
Part301.Orientation = Vector3.new(5.40999985, -0.0599999987, -179.699997)
Part301.Position = Vector3.new(-0.60622716, 3.20835805, -17.8265324)
Part301.Rotation = Vector3.new(5.40999985, -0.0599999987, -179.699997)
Part301.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part301.Velocity = Vector3.new(6.35782698e-08, 0.00245890464, 8.35486958e-07)
Part301.Size = Vector3.new(0.275000006, 0.235124931, 1.6693753)
Part301.Anchored = true
Part301.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part301.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part301.BrickColor = BrickColor.new("Really black")
Part301.CanCollide = false
Part301.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part301.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part301.Material = Enum.Material.Metal
Part301.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part301.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part301.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part301.brickColor = BrickColor.new("Really black")
SpecialMesh302.Parent = Part301
SpecialMesh302.Scale = Vector3.new(0.400000006, 1.04999995, 1)
SpecialMesh302.MeshType = Enum.MeshType.Brick
Part303.Parent = Model0
Part303.CFrame = CFrame.new(-0.610610962, 2.80771255, -13.6187115, -0.999985635, -0.00162816129, -0.00510662561, -0.00513656298, 0.0189460143, 0.999807417, -0.00153109711, 0.999819279, -0.0189541057)
Part303.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part303.Position = Vector3.new(-0.610610962, 2.80771255, -13.6187115)
Part303.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part303.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part303.Velocity = Vector3.new(1.27106944e-07, 0.00246767187, 1.67032101e-06)
Part303.Size = Vector3.new(0.275000006, 0.368124902, 0.378374994)
Part303.Anchored = true
Part303.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part303.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part303.BrickColor = BrickColor.new("Really black")
Part303.CanCollide = false
Part303.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part303.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part303.Material = Enum.Material.Glass
Part303.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part303.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part303.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part303.brickColor = BrickColor.new("Really black")
SpecialMesh304.Parent = Part303
SpecialMesh304.Scale = Vector3.new(0.400000006, 1, 1)
SpecialMesh304.MeshType = Enum.MeshType.Wedge
Part305.Parent = Model0
Part305.CFrame = CFrame.new(-0.608244181, 3.38925195, -17.114748, 0.999985635, 0.00432614516, 0.00316458894, 0.00513666775, -0.942128837, -0.335212082, 0.00153127394, 0.335223496, -0.942137599)
Part305.Orientation = Vector3.new(19.5900002, 179.809998, 179.690002)
Part305.Position = Vector3.new(-0.608244181, 3.38925195, -17.114748)
Part305.Rotation = Vector3.new(160.410004, 0.179999992, -0.25)
Part305.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part305.Velocity = Vector3.new(3.48947182e-08, 0.00246038754, 4.5855424e-07)
Part305.Size = Vector3.new(0.275000006, 0.35212487, 0.214375019)
Part305.Anchored = true
Part305.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part305.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part305.BrickColor = BrickColor.new("Bright blue")
Part305.CanCollide = false
Part305.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part305.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part305.Material = Enum.Material.Neon
Part305.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part305.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part305.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part305.brickColor = BrickColor.new("Bright blue")
SpecialMesh306.Parent = Part305
SpecialMesh306.Scale = Vector3.new(0.449999988, 0.5, 0.100000001)
SpecialMesh306.MeshType = Enum.MeshType.Brick
Part307.Parent = Model0
Part307.CFrame = CFrame.new(-0.610837221, 3.46367049, -15.6710596, 0.999985635, 0.00347598689, -0.00408008695, 0.00513679162, -0.404108554, 0.914696753, 0.00153067545, -0.914704561, -0.404120624)
Part307.Orientation = Vector3.new(-66.159996, -179.419998, 179.269989)
Part307.Position = Vector3.new(-0.610837221, 3.46367049, -15.6710596)
Part307.Rotation = Vector3.new(-113.839996, -0.229999989, -0.199999988)
Part307.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part307.Velocity = Vector3.new(2.30945076e-08, 0.00246339524, 3.03486615e-07)
Part307.Size = Vector3.new(0.200000003, 0.217000008, 0.200375021)
Part307.Anchored = true
Part307.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part307.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part307.BrickColor = BrickColor.new("Royal purple")
Part307.CanCollide = false
Part307.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part307.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part307.Material = Enum.Material.Neon
Part307.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part307.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part307.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part307.brickColor = BrickColor.new("Royal purple")
SpecialMesh308.Parent = Part307
SpecialMesh308.Scale = Vector3.new(0.560000002, 0.200000003, 0.600000024)
SpecialMesh308.MeshType = Enum.MeshType.Brick
Part309.Parent = Model0
Part309.CFrame = CFrame.new(-0.609296381, 2.72693467, -14.2067709, 0.999985635, -0.00162807154, 0.00510647474, 0.00513641024, 0.0189459547, -0.999807417, 0.00153101049, 0.999819279, 0.0189540461)
Part309.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part309.Position = Vector3.new(-0.609296381, 2.72693467, -14.2067709)
Part309.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part309.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part309.Velocity = Vector3.new(1.39915542e-07, 0.00246644672, 1.83863972e-06)
Part309.Size = Vector3.new(0.275000006, 0.315999985, 0.310375005)
Part309.Anchored = true
Part309.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part309.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part309.BrickColor = BrickColor.new("Really black")
Part309.CanCollide = false
Part309.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part309.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part309.Material = Enum.Material.Glass
Part309.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part309.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part309.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part309.brickColor = BrickColor.new("Really black")
SpecialMesh310.Parent = Part309
SpecialMesh310.Scale = Vector3.new(0.5, 1, 0.5)
SpecialMesh310.MeshType = Enum.MeshType.Wedge
Part311.Parent = Model0
Part311.CFrame = CFrame.new(-0.610869706, 2.96894002, -13.990572, -0.999985635, -0.00162807154, -0.00510650687, -0.00513644237, 0.0189459547, 0.999807417, -0.00153100991, 0.999819279, -0.0189540461)
Part311.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part311.Position = Vector3.new(-0.610869706, 2.96894002, -13.990572)
Part311.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part311.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part311.Velocity = Vector3.new(1.01541801e-07, 0.00246689701, 1.33436765e-06)
Part311.Size = Vector3.new(0.275000006, 0.214124978, 0.205375016)
Part311.Anchored = true
Part311.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part311.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part311.BrickColor = BrickColor.new("Really black")
Part311.CanCollide = false
Part311.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part311.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part311.Material = Enum.Material.Metal
Part311.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part311.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part311.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part311.brickColor = BrickColor.new("Really black")
SpecialMesh312.Parent = Part311
SpecialMesh312.Scale = Vector3.new(0.569999993, 0.75, 0.75)
SpecialMesh312.MeshType = Enum.MeshType.Brick
Part313.Parent = Model0
Part313.CFrame = CFrame.new(-0.610455632, 3.45922971, -15.9053869, 0.999985635, 0.00347598689, -0.00408008695, 0.00513679162, -0.404108554, 0.914696753, 0.00153067545, -0.914704561, -0.404120624)
Part313.Orientation = Vector3.new(-66.159996, -179.419998, 179.269989)
Part313.Position = Vector3.new(-0.610455632, 3.45922971, -15.9053869)
Part313.Rotation = Vector3.new(-113.839996, -0.229999989, -0.199999988)
Part313.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part313.Velocity = Vector3.new(2.37986608e-08, 0.00246290723, 3.12739985e-07)
Part313.Size = Vector3.new(0.200000003, 0.217000008, 0.200375021)
Part313.Anchored = true
Part313.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part313.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part313.BrickColor = BrickColor.new("Royal purple")
Part313.CanCollide = false
Part313.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part313.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part313.Material = Enum.Material.Neon
Part313.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part313.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part313.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part313.brickColor = BrickColor.new("Royal purple")
SpecialMesh314.Parent = Part313
SpecialMesh314.Scale = Vector3.new(0.560000002, 0.200000003, 0.600000024)
SpecialMesh314.MeshType = Enum.MeshType.Brick
Part315.Parent = Model0
Part315.CFrame = CFrame.new(-0.61787647, 3.39316416, -10.8383427, 0.999985635, -0.00162795314, 0.00510659395, 0.00513652712, 0.0189461038, -0.999807417, 0.00153088907, 0.999819279, 0.0189541951)
Part315.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part315.Position = Vector3.new(-0.61787647, 3.39316416, -10.8383427)
Part315.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part315.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part315.Velocity = Vector3.new(3.42744499e-08, 0.00247346424, 4.50402268e-07)
Part315.Size = Vector3.new(0.275000006, 0.578125, 0.234375)
Part315.Anchored = true
Part315.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part315.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part315.BrickColor = BrickColor.new("Really black")
Part315.CanCollide = false
Part315.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part315.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part315.Material = Enum.Material.Metal
Part315.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part315.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part315.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part315.brickColor = BrickColor.new("Really black")
SpecialMesh316.Parent = Part315
SpecialMesh316.Scale = Vector3.new(0.5, 1.04999995, 0.400000006)
SpecialMesh316.MeshType = Enum.MeshType.Brick
Part317.Parent = Model0
Part317.CFrame = CFrame.new(-0.613369107, 3.18659282, -13.087059, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part317.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part317.Position = Vector3.new(-0.613369107, 3.18659282, -13.087059)
Part317.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part317.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part317.Velocity = Vector3.new(6.70295464e-08, 0.00246877922, 8.8083965e-07)
Part317.Size = Vector3.new(0.275000006, 0.248124972, 0.311374992)
Part317.Anchored = true
Part317.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part317.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part317.BrickColor = BrickColor.new("Really black")
Part317.CanCollide = false
Part317.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part317.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part317.Material = Enum.Material.Metal
Part317.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part317.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part317.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part317.brickColor = BrickColor.new("Really black")
SpecialMesh318.Parent = Part317
SpecialMesh318.Scale = Vector3.new(0.400000006, 1.04999995, 0.5)
SpecialMesh318.MeshType = Enum.MeshType.Brick
Part319.Parent = Model0
Part319.CFrame = CFrame.new(-0.610582829, 3.460711, -15.82728, 0.999985635, 0.00347598689, -0.00408008695, 0.00513679162, -0.404108554, 0.914696753, 0.00153067545, -0.914704561, -0.404120624)
Part319.Orientation = Vector3.new(-66.159996, -179.419998, 179.269989)
Part319.Position = Vector3.new(-0.610582829, 3.460711, -15.82728)
Part319.Rotation = Vector3.new(-113.839996, -0.229999989, -0.199999988)
Part319.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part319.Velocity = Vector3.new(2.35637785e-08, 0.00246306974, 3.09653387e-07)
Part319.Size = Vector3.new(0.200000003, 0.217000008, 0.200375021)
Part319.Anchored = true
Part319.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part319.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part319.BrickColor = BrickColor.new("Royal purple")
Part319.CanCollide = false
Part319.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part319.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part319.Material = Enum.Material.Neon
Part319.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part319.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part319.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part319.brickColor = BrickColor.new("Royal purple")
SpecialMesh320.Parent = Part319
SpecialMesh320.Scale = Vector3.new(0.560000002, 0.200000003, 0.600000024)
SpecialMesh320.MeshType = Enum.MeshType.Brick
Part321.Parent = Model0
Part321.CFrame = CFrame.new(-0.611585259, 3.11314392, -14.0068893, 0.999985635, 0.00162774313, -0.00510693667, 0.00513686566, -0.0189458374, 0.999807417, 0.00153067405, -0.999819279, -0.0189539269)
Part321.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part321.Position = Vector3.new(-0.611585259, 3.11314392, -14.0068893)
Part321.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part321.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part321.Velocity = Vector3.new(7.86760097e-08, 0.00246686279, 1.03388675e-06)
Part321.Size = Vector3.new(0.275000006, 0.709124923, 0.47437498)
Part321.Anchored = true
Part321.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part321.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part321.BrickColor = BrickColor.new("Really black")
Part321.CanCollide = false
Part321.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part321.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part321.Material = Enum.Material.Metal
Part321.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part321.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part321.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part321.brickColor = BrickColor.new("Really black")
SpecialMesh322.Parent = Part321
SpecialMesh322.Scale = Vector3.new(0.5, 1.04999995, 0.800000012)
SpecialMesh322.MeshType = Enum.MeshType.Brick
Part323.Parent = Model0
Part323.CFrame = CFrame.new(-0.610941768, 3.01069665, -14.083005, -0.999985635, 0.00162795174, 0.00510683283, -0.00513676554, -0.0189458355, -0.999807417, -0.00153088453, -0.999819279, 0.0189539269)
Part323.Orientation = Vector3.new(88.8799973, 15.0799999, -164.830002)
Part323.Position = Vector3.new(-0.610941768, 3.01069665, -14.083005)
Part323.Rotation = Vector3.new(88.909996, 0.289999992, -179.909988)
Part323.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part323.Velocity = Vector3.new(9.49206296e-08, 0.00246670446, 1.24735845e-06)
Part323.Size = Vector3.new(0.275000006, 0.252000004, 0.213375002)
Part323.Anchored = true
Part323.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part323.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part323.BrickColor = BrickColor.new("Really black")
Part323.CanCollide = false
Part323.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part323.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part323.Material = Enum.Material.Metal
Part323.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part323.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part323.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part323.brickColor = BrickColor.new("Really black")
SpecialMesh324.Parent = Part323
SpecialMesh324.Scale = Vector3.new(0.569999993, 0.125, 0.375)
SpecialMesh324.MeshType = Enum.MeshType.Wedge
Part325.Parent = Model0
Part325.CFrame = CFrame.new(-0.61388576, 3.20741606, -12.8194075, -0.999985635, 0.00162786373, 0.00510683237, -0.00513676414, -0.0189461056, -0.999807417, -0.00153079513, -0.999819279, 0.0189541951)
Part325.Orientation = Vector3.new(88.8799973, 15.0799999, -164.830002)
Part325.Position = Vector3.new(-0.61388576, 3.20741606, -12.8194075)
Part325.Rotation = Vector3.new(88.909996, 0.289999992, -179.909988)
Part325.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part325.Velocity = Vector3.new(6.37276969e-08, 0.00246933685, 8.37449761e-07)
Part325.Size = Vector3.new(0.275000006, 0.244125068, 0.416375011)
Part325.Anchored = true
Part325.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part325.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part325.BrickColor = BrickColor.new("Really black")
Part325.CanCollide = false
Part325.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part325.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part325.Material = Enum.Material.Metal
Part325.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part325.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part325.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part325.brickColor = BrickColor.new("Really black")
SpecialMesh326.Parent = Part325
SpecialMesh326.Scale = Vector3.new(0.5, 0.560000002, 0.5)
SpecialMesh326.MeshType = Enum.MeshType.Wedge
Part327.Parent = Model0
Part327.CFrame = CFrame.new(-0.609650612, 3.31554532, -15.9490957, 0.999985635, 0.00326791825, 0.00424884167, 0.00513684331, -0.810688972, -0.585454702, 0.00153127068, 0.585468173, -0.810694098)
Part327.Orientation = Vector3.new(35.8400002, 179.699997, 179.639999)
Part327.Position = Vector3.new(-0.609650612, 3.31554532, -15.9490957)
Part327.Rotation = Vector3.new(144.160004, 0.239999995, -0.189999998)
Part327.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part327.Velocity = Vector3.new(4.65820733e-08, 0.00246281619, 6.12138422e-07)
Part327.Size = Vector3.new(0.275000006, 0.237124875, 0.214375019)
Part327.Anchored = true
Part327.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part327.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part327.BrickColor = BrickColor.new("Bright blue")
Part327.CanCollide = false
Part327.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part327.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part327.Material = Enum.Material.Neon
Part327.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part327.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part327.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part327.brickColor = BrickColor.new("Bright blue")
SpecialMesh328.Parent = Part327
SpecialMesh328.Scale = Vector3.new(0.449999988, 0.800000012, 0.100000001)
SpecialMesh328.MeshType = Enum.MeshType.Brick
Part329.Parent = Model0
Part329.CFrame = CFrame.new(-0.612260759, 3.04390216, -13.3335075, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part329.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part329.Position = Vector3.new(-0.612260759, 3.04390216, -13.3335075)
Part329.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part329.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part329.Velocity = Vector3.new(8.96553871e-08, 0.00246826583, 1.17816739e-06)
Part329.Size = Vector3.new(0.275000006, 0.200000003, 0.303375006)
Part329.Anchored = true
Part329.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part329.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part329.BrickColor = BrickColor.new("Really black")
Part329.CanCollide = false
Part329.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part329.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part329.Material = Enum.Material.Metal
Part329.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part329.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part329.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part329.brickColor = BrickColor.new("Really black")
SpecialMesh330.Parent = Part329
SpecialMesh330.Scale = Vector3.new(0.5, 0.5, 0.5)
SpecialMesh330.MeshType = Enum.MeshType.Wedge
Part331.Parent = Model0
Part331.CFrame = CFrame.new(-0.614394248, 3.36069822, -13.0015078, -0.999985635, 0.00245974353, -0.0047620195, -0.00513649127, -0.693573475, 0.72036773, -0.00153088977, 0.720381856, 0.693576157)
Part331.Orientation = Vector3.new(-46.079998, -0.389999986, -179.580002)
Part331.Position = Vector3.new(-0.614394248, 3.36069822, -13.0015078)
Part331.Rotation = Vector3.new(-46.0900002, -0.269999981, -179.860001)
Part331.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part331.Velocity = Vector3.new(3.94224067e-08, 0.00246895733, 5.18052275e-07)
Part331.Size = Vector3.new(0.275000006, 0.216124982, 0.280375004)
Part331.Anchored = true
Part331.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part331.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part331.BrickColor = BrickColor.new("Mid gray")
Part331.CanCollide = false
Part331.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part331.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part331.Material = Enum.Material.Metal
Part331.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part331.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part331.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part331.brickColor = BrickColor.new("Mid gray")
SpecialMesh332.Parent = Part331
SpecialMesh332.Scale = Vector3.new(0.349999994, 1.04999995, 0.5)
SpecialMesh332.MeshType = Enum.MeshType.Brick
Part333.Parent = Model0
Part333.CFrame = CFrame.new(-0.610709965, 3.46219134, -15.7491703, 0.999985635, 0.00347598689, -0.00408008695, 0.00513679162, -0.404108554, 0.914696753, 0.00153067545, -0.914704561, -0.404120624)
Part333.Orientation = Vector3.new(-66.159996, -179.419998, 179.269989)
Part333.Position = Vector3.new(-0.610709965, 3.46219134, -15.7491703)
Part333.Rotation = Vector3.new(-113.839996, -0.229999989, -0.199999988)
Part333.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part333.Velocity = Vector3.new(2.33290489e-08, 0.00246323249, 3.06568751e-07)
Part333.Size = Vector3.new(0.200000003, 0.217000008, 0.200375021)
Part333.Anchored = true
Part333.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part333.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part333.BrickColor = BrickColor.new("Royal purple")
Part333.CanCollide = false
Part333.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part333.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part333.Material = Enum.Material.Neon
Part333.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part333.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part333.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part333.brickColor = BrickColor.new("Royal purple")
SpecialMesh334.Parent = Part333
SpecialMesh334.Scale = Vector3.new(0.560000002, 0.200000003, 0.600000024)
SpecialMesh334.MeshType = Enum.MeshType.Brick
Part335.Parent = Model0
Part335.CFrame = CFrame.new(-0.608794093, 3.33530617, -16.5748692, 0.999985635, -0.0041169636, 0.00343261915, 0.005137017, 0.553175688, -0.83304894, 0.00153079035, 0.833054662, 0.55318886)
Part335.Orientation = Vector3.new(56.4099998, 0.359999985, 0.529999971)
Part335.Position = Vector3.new(-0.608794093, 3.33530617, -16.5748692)
Part335.Rotation = Vector3.new(56.4099998, 0.199999988, 0.239999995)
Part335.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part335.Velocity = Vector3.new(4.34486722e-08, 0.00246151234, 5.709623e-07)
Part335.Size = Vector3.new(0.275000006, 0.265124857, 0.214375019)
Part335.Anchored = true
Part335.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part335.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part335.BrickColor = BrickColor.new("Bright blue")
Part335.CanCollide = false
Part335.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part335.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part335.Material = Enum.Material.Neon
Part335.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part335.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part335.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part335.brickColor = BrickColor.new("Bright blue")
SpecialMesh336.Parent = Part335
SpecialMesh336.Scale = Vector3.new(0.449999988, 0.899999976, 0.100000001)
SpecialMesh336.MeshType = Enum.MeshType.Brick
Part337.Parent = Model0
Part337.CFrame = CFrame.new(-0.61091727, 3.02827954, -14.1579723, -0.999985635, 0.00162795268, 0.00510695158, -0.00513688475, -0.0189460143, -0.999807417, -0.00153088232, -0.999819279, 0.0189541057)
Part337.Orientation = Vector3.new(88.8799973, 15.0799999, -164.830002)
Part337.Position = Vector3.new(-0.61091727, 3.02827954, -14.1579723)
Part337.Rotation = Vector3.new(88.909996, 0.289999992, -179.909988)
Part337.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part337.Velocity = Vector3.new(9.21325807e-08, 0.00246654823, 1.2107206e-06)
Part337.Size = Vector3.new(0.275000006, 0.207000002, 0.303375006)
Part337.Anchored = true
Part337.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part337.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part337.BrickColor = BrickColor.new("Really black")
Part337.CanCollide = false
Part337.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part337.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part337.Material = Enum.Material.Glass
Part337.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part337.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part337.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part337.brickColor = BrickColor.new("Really black")
SpecialMesh338.Parent = Part337
SpecialMesh338.Scale = Vector3.new(0.524999976, 0.5, 0.5)
SpecialMesh338.MeshType = Enum.MeshType.Wedge
Part339.Parent = Model0
Part339.CFrame = CFrame.new(-0.609729409, 3.2205193, -15.578517, 0.999985635, -0.00133592135, 0.00519115385, 0.00513700396, -0.0377659947, -0.999273479, 0.00153099932, 0.999285877, -0.0377585888)
Part339.Orientation = Vector3.new(87.8199997, 172.169998, 172.25)
Part339.Position = Vector3.new(-0.609729409, 3.2205193, -15.578517)
Part339.Rotation = Vector3.new(92.159996, 0.299999982, 0.0799999982)
Part339.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part339.Velocity = Vector3.new(6.1649942e-08, 0.00246358826, 8.10146275e-07)
Part339.Size = Vector3.new(0.275000006, 0.621124864, 0.214375019)
Part339.Anchored = true
Part339.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part339.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part339.BrickColor = BrickColor.new("Bright blue")
Part339.CanCollide = false
Part339.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part339.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part339.Material = Enum.Material.Neon
Part339.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part339.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part339.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part339.brickColor = BrickColor.new("Bright blue")
SpecialMesh340.Parent = Part339
SpecialMesh340.Scale = Vector3.new(0.449999988, 1, 0.100000001)
SpecialMesh340.MeshType = Enum.MeshType.Brick
Part341.Parent = Model0
Part341.CFrame = CFrame.new(-0.610086679, 3.15827918, -15.1365986, -0.999985635, 0.00409500999, -0.00345871458, -0.00513683027, -0.916451037, 0.400114089, -0.00153127091, 0.40012604, 0.916459024)
Part341.Orientation = Vector3.new(-23.5900002, -0.219999999, -179.679993)
Part341.Position = Vector3.new(-0.610086679, 3.15827918, -15.1365986)
Part341.Rotation = Vector3.new(-23.5900002, -0.199999988, -179.769989)
Part341.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part341.Velocity = Vector3.new(7.15190893e-08, 0.0024645091, 9.39837378e-07)
Part341.Size = Vector3.new(0.275000006, 0.221124932, 0.655375004)
Part341.Anchored = true
Part341.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part341.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part341.BrickColor = BrickColor.new("Really black")
Part341.CanCollide = false
Part341.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part341.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part341.Material = Enum.Material.Metal
Part341.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part341.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part341.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part341.brickColor = BrickColor.new("Really black")
SpecialMesh342.Parent = Part341
SpecialMesh342.Scale = Vector3.new(0.400000006, 1.04999995, 0.899999976)
SpecialMesh342.MeshType = Enum.MeshType.Brick
Part343.Parent = Model0
Part343.CFrame = CFrame.new(-0.576193094, 2.37180829, -14.2261257, 0.00114334025, 0.999985635, -0.00523668947, -0.483495861, 0.00513671385, 0.8753317, 0.875346005, 0.00153111527, 0.483494759)
Part343.Orientation = Vector3.new(-61.079998, -0.620000005, -89.3899994)
Part343.Position = Vector3.new(-0.576193094, 2.37180829, -14.2261257)
Part343.Rotation = Vector3.new(-61.0900002, -0.299999982, -89.9300003)
Part343.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part343.Velocity = Vector3.new(1.96226381e-07, 0.00246641156, 2.57862462e-06)
Part343.Size = Vector3.new(0.405000031, 0.200000003, 0.280375004)
Part343.Anchored = true
Part343.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part343.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part343.BrickColor = BrickColor.new("Royal purple")
Part343.CanCollide = false
Part343.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part343.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part343.Material = Enum.Material.Neon
Part343.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part343.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part343.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part343.brickColor = BrickColor.new("Royal purple")
SpecialMesh344.Parent = Part343
SpecialMesh344.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh344.MeshType = Enum.MeshType.Wedge
Part345.Parent = Model0
Part345.CFrame = CFrame.new(-0.606692195, 3.59138489, -18.8080196, 0.999985635, 0.00250130473, 0.00474093435, 0.00513696205, -0.699832857, -0.714288294, 0.00153120875, 0.714302421, -0.699835718)
Part345.Orientation = Vector3.new(45.579998, 179.610001, 179.580002)
Part345.Position = Vector3.new(-0.606692195, 3.59138489, -18.8080196)
Part345.Rotation = Vector3.new(134.410004, 0.269999981, -0.140000001)
Part345.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part345.Velocity = Vector3.new(2.843354e-09, 0.00245685945, 3.73652256e-08)
Part345.Size = Vector3.new(0.275000006, 0.47012496, 0.214375019)
Part345.Anchored = true
Part345.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part345.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part345.BrickColor = BrickColor.new("Bright blue")
Part345.CanCollide = false
Part345.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part345.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part345.Material = Enum.Material.Neon
Part345.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part345.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part345.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part345.brickColor = BrickColor.new("Bright blue")
SpecialMesh346.Parent = Part345
SpecialMesh346.Scale = Vector3.new(0.449999988, 0.699999988, 0.100000001)
SpecialMesh346.MeshType = Enum.MeshType.Brick
Part347.Parent = Model0
Part347.CFrame = CFrame.new(-0.612170458, 3.17509294, -13.8325748, -0.999985635, 0.00162795268, 0.00510695158, -0.00513688475, -0.0189460143, -0.999807417, -0.00153088232, -0.999819279, 0.0189541057)
Part347.Orientation = Vector3.new(88.8799973, 15.0799999, -164.830002)
Part347.Position = Vector3.new(-0.612170458, 3.17509294, -13.8325748)
Part347.Rotation = Vector3.new(88.909996, 0.289999992, -179.909988)
Part347.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part347.Velocity = Vector3.new(6.88530264e-08, 0.002467226, 9.04802221e-07)
Part347.Size = Vector3.new(0.275000006, 0.207000002, 0.303375006)
Part347.Anchored = true
Part347.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part347.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part347.BrickColor = BrickColor.new("Really black")
Part347.CanCollide = false
Part347.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part347.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part347.Material = Enum.Material.Metal
Part347.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part347.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part347.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part347.brickColor = BrickColor.new("Really black")
SpecialMesh348.Parent = Part347
SpecialMesh348.Scale = Vector3.new(0.5, 0.5, 0.5)
SpecialMesh348.MeshType = Enum.MeshType.Wedge
Part349.Parent = Model0
Part349.CFrame = CFrame.new(-0.608221889, 3.47114682, -17.4040871, 0.999985635, -0.00133592309, 0.00519115338, 0.00513700396, -0.037765637, -0.999273479, 0.00153099932, 0.999285877, -0.0377582312)
Part349.Orientation = Vector3.new(87.8199997, 172.169998, 172.25)
Part349.Position = Vector3.new(-0.608221889, 3.47114682, -17.4040871)
Part349.Rotation = Vector3.new(92.159996, 0.299999982, 0.0799999982)
Part349.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part349.Velocity = Vector3.new(2.19089991e-08, 0.0024597845, 2.87908023e-07)
Part349.Size = Vector3.new(0.275000006, 0.678124905, 0.214375019)
Part349.Anchored = true
Part349.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part349.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part349.BrickColor = BrickColor.new("Bright blue")
Part349.CanCollide = false
Part349.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part349.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part349.Material = Enum.Material.Neon
Part349.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part349.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part349.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part349.brickColor = BrickColor.new("Bright blue")
SpecialMesh350.Parent = Part349
SpecialMesh350.Scale = Vector3.new(0.449999988, 0.800000012, 0.100000001)
SpecialMesh350.MeshType = Enum.MeshType.Brick
Part351.Parent = Model0
Part351.CFrame = CFrame.new(-0.617746711, 3.42490911, -11.0273066, 0.999985635, -0.000716609415, 0.00531159993, 0.00513640279, -0.15495652, -0.987908006, 0.00153101061, 0.987921119, -0.154950604)
Part351.Orientation = Vector3.new(81.0800018, 178.039993, 178.099991)
Part351.Position = Vector3.new(-0.617746711, 3.42490911, -11.0273066)
Part351.Rotation = Vector3.new(98.909996, 0.299999982, 0.0399999991)
Part351.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part351.Velocity = Vector3.new(2.92407876e-08, 0.00247307052, 3.84254577e-07)
Part351.Size = Vector3.new(0.275000006, 0.203125, 0.234375)
Part351.Anchored = true
Part351.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part351.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part351.BrickColor = BrickColor.new("Really black")
Part351.CanCollide = false
Part351.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part351.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part351.Material = Enum.Material.Metal
Part351.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part351.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part351.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part351.brickColor = BrickColor.new("Really black")
SpecialMesh352.Parent = Part351
SpecialMesh352.Scale = Vector3.new(0.5, 0.502499998, 0.400000006)
SpecialMesh352.MeshType = Enum.MeshType.Brick
Part353.Parent = Model0
Part353.CFrame = CFrame.new(-0.638692379, 2.37148738, -14.226222, -0.00114342954, -0.999985635, -0.00523668341, 0.483495861, -0.00513675157, 0.8753317, -0.875346065, -0.00153103401, 0.483494759)
Part353.Orientation = Vector3.new(-61.079998, -0.620000005, 90.6100006)
Part353.Position = Vector3.new(-0.638692379, 2.37148738, -14.226222)
Part353.Rotation = Vector3.new(-61.0900002, -0.299999982, 90.0699997)
Part353.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part353.Velocity = Vector3.new(1.9627727e-07, 0.00246640155, 2.57929332e-06)
Part353.Size = Vector3.new(0.405000031, 0.200000003, 0.280375004)
Part353.Anchored = true
Part353.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part353.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part353.BrickColor = BrickColor.new("Royal purple")
Part353.CanCollide = false
Part353.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part353.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part353.Material = Enum.Material.Neon
Part353.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part353.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part353.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part353.brickColor = BrickColor.new("Royal purple")
SpecialMesh354.Parent = Part353
SpecialMesh354.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh354.MeshType = Enum.MeshType.Wedge
Part355.Parent = Model0
Part355.CFrame = CFrame.new(-0.576556623, 2.33930445, -13.8796148, -0.00289415126, 0.999985635, -0.00451143365, 0.277069539, 0.00513670407, 0.960836232, 0.96084559, 0.00153082411, -0.277080417)
Part355.Orientation = Vector3.new(-73.909996, -179.069992, 88.9399948)
Part355.Position = Vector3.new(-0.576556623, 2.33930445, -13.8796148)
Part355.Rotation = Vector3.new(-106.089996, -0.25999999, -90.1699982)
Part355.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part355.Velocity = Vector3.new(2.01380388e-07, 0.00246713357, 2.64635355e-06)
Part355.Size = Vector3.new(0.453000009, 0.200000003, 0.280375004)
Part355.Anchored = true
Part355.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part355.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part355.BrickColor = BrickColor.new("Royal purple")
Part355.CanCollide = false
Part355.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part355.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part355.Material = Enum.Material.Neon
Part355.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part355.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part355.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part355.brickColor = BrickColor.new("Royal purple")
SpecialMesh356.Parent = Part355
SpecialMesh356.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh356.MeshType = Enum.MeshType.Wedge
Part357.Parent = Model0
Part357.CFrame = CFrame.new(-0.609105706, 2.8586967, -14.7735023, -0.999985635, -0.0039632949, -0.00360830128, -0.00513646565, 0.516311884, 0.856385469, -0.00153109885, 0.856391609, -0.516324818)
Part357.Orientation = Vector3.new(-58.9099998, -179.599991, -0.569999993)
Part357.Position = Vector3.new(-0.609105706, 2.8586967, -14.7735023)
Part357.Rotation = Vector3.new(-121.089996, -0.209999993, 179.769989)
Part357.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part357.Velocity = Vector3.new(1.19022602e-07, 0.0024652658, 1.56408419e-06)
Part357.Size = Vector3.new(0.275000006, 0.277124912, 0.227375031)
Part357.Anchored = true
Part357.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part357.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part357.BrickColor = BrickColor.new("Really black")
Part357.CanCollide = false
Part357.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part357.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part357.Material = Enum.Material.Metal
Part357.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part357.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part357.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part357.brickColor = BrickColor.new("Really black")
SpecialMesh358.Parent = Part357
SpecialMesh358.Scale = Vector3.new(0.349999994, 0.300000012, 1)
SpecialMesh358.MeshType = Enum.MeshType.Brick
Part359.Parent = Model0
Part359.CFrame = CFrame.new(-0.614465594, 3.24354935, -12.5620441, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part359.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part359.Position = Vector3.new(-0.614465594, 3.24354935, -12.5620441)
Part359.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part359.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part359.Velocity = Vector3.new(5.79982e-08, 0.00246987306, 7.62158038e-07)
Part359.Size = Vector3.new(0.275000006, 0.998124957, 0.280375004)
Part359.Anchored = true
Part359.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part359.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part359.BrickColor = BrickColor.new("Really black")
Part359.CanCollide = false
Part359.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part359.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part359.Material = Enum.Material.Metal
Part359.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part359.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part359.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part359.brickColor = BrickColor.new("Really black")
SpecialMesh360.Parent = Part359
SpecialMesh360.Scale = Vector3.new(0.400000006, 1.04999995, 0.5)
SpecialMesh360.MeshType = Enum.MeshType.Brick
Part361.Parent = Model0
Part361.CFrame = CFrame.new(-0.611248136, 3.25645614, -14.7074032, -0.999985635, 0.00245982548, -0.00476256292, -0.00513693923, -0.693573654, 0.720367551, -0.00153120921, 0.720381677, 0.693576276)
Part361.Orientation = Vector3.new(-46.079998, -0.389999986, -179.580002)
Part361.Position = Vector3.new(-0.611248136, 3.25645614, -14.7074032)
Part361.Rotation = Vector3.new(-46.0900002, -0.269999981, -179.860001)
Part361.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part361.Velocity = Vector3.new(5.59516025e-08, 0.00246540317, 7.35263882e-07)
Part361.Size = Vector3.new(0.275000006, 0.221124932, 0.418375015)
Part361.Anchored = true
Part361.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part361.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part361.BrickColor = BrickColor.new("Really black")
Part361.CanCollide = false
Part361.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part361.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part361.Material = Enum.Material.Metal
Part361.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part361.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part361.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part361.brickColor = BrickColor.new("Really black")
SpecialMesh362.Parent = Part361
SpecialMesh362.Scale = Vector3.new(0.550000012, 1.04999995, 0.899999976)
SpecialMesh362.MeshType = Enum.MeshType.Brick
Part363.Parent = Model0
Part363.CFrame = CFrame.new(-0.611290276, 3.1978817, -14.4833202, 0.999985635, 0.00162786234, -0.00510698371, 0.00513691502, -0.0189458374, 0.999807417, 0.00153079221, -0.999819279, -0.0189539269)
Part363.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part363.Position = Vector3.new(-0.611290276, 3.1978817, -14.4833202)
Part363.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part363.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part363.Velocity = Vector3.new(6.52394974e-08, 0.00246587023, 8.57316763e-07)
Part363.Size = Vector3.new(0.275000006, 0.221124932, 0.448374987)
Part363.Anchored = true
Part363.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part363.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part363.BrickColor = BrickColor.new("Really black")
Part363.CanCollide = false
Part363.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part363.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part363.Material = Enum.Material.Metal
Part363.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part363.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part363.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part363.brickColor = BrickColor.new("Really black")
SpecialMesh364.Parent = Part363
SpecialMesh364.Scale = Vector3.new(0.550000012, 1.04999995, 0.800000012)
SpecialMesh364.MeshType = Enum.MeshType.Brick
Part365.Parent = Model0
Part365.CFrame = CFrame.new(-0.610800147, 2.91253304, -13.8467321, -0.999985635, -0.00162807154, -0.00510650687, -0.00513644237, 0.0189459547, 0.999807417, -0.00153100991, 0.999819279, -0.0189540461)
Part365.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part365.Position = Vector3.new(-0.610800147, 2.91253304, -13.8467321)
Part365.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part365.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part365.Velocity = Vector3.new(1.10486013e-07, 0.00246719667, 1.45190415e-06)
Part365.Size = Vector3.new(0.275000006, 0.200000003, 0.213375002)
Part365.Anchored = true
Part365.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part365.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part365.BrickColor = BrickColor.new("Bright blue")
Part365.CanCollide = false
Part365.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part365.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part365.Material = Enum.Material.Neon
Part365.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part365.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part365.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part365.brickColor = BrickColor.new("Bright blue")
SpecialMesh366.Parent = Part365
SpecialMesh366.Scale = Vector3.new(0.550000012, 0.25, 0.5)
SpecialMesh366.MeshType = Enum.MeshType.Wedge
Part367.Parent = Model0
Part367.CFrame = CFrame.new(-0.616349459, 3.1451273, -11.0012493, -0.999985635, -0.000250895391, -0.00535403285, -0.00513659744, -0.24046874, 0.970643461, -0.001531007, 0.970656931, 0.240463987)
Part367.Orientation = Vector3.new(-76.0800018, -1.27999997, -178.779999)
Part367.Position = Vector3.new(-0.616349459, 3.1451273, -11.0012493)
Part367.Rotation = Vector3.new(-76.0899963, -0.310000002, 179.98999)
Part367.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part367.Velocity = Vector3.new(7.3604582e-08, 0.002473125, 9.67242272e-07)
Part367.Size = Vector3.new(0.200000003, 0.449500024, 0.236624971)
Part367.Anchored = true
Part367.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part367.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part367.BrickColor = BrickColor.new("Bright blue")
Part367.CanCollide = false
Part367.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part367.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part367.Material = Enum.Material.Neon
Part367.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part367.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part367.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part367.brickColor = BrickColor.new("Bright blue")
SpecialMesh368.Parent = Part367
SpecialMesh368.Scale = Vector3.new(0.5, 1, 0.25)
SpecialMesh368.MeshType = Enum.MeshType.Brick
Part369.Parent = Model0
Part369.CFrame = CFrame.new(-0.612978816, 3.18449855, -13.3361721, 0.999985635, -0.00162807154, 0.00510664983, 0.00513658533, 0.0189459547, -0.999807417, 0.00153100723, 0.999819279, 0.0189540461)
Part369.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part369.Position = Vector3.new(-0.612978816, 3.18449855, -13.3361721)
Part369.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part369.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part369.Velocity = Vector3.new(6.73616256e-08, 0.00246826024, 8.85203519e-07)
Part369.Size = Vector3.new(0.275000006, 0.200000003, 0.303375006)
Part369.Anchored = true
Part369.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part369.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part369.BrickColor = BrickColor.new("Really black")
Part369.CanCollide = false
Part369.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part369.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part369.Material = Enum.Material.Metal
Part369.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part369.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part369.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part369.brickColor = BrickColor.new("Really black")
SpecialMesh370.Parent = Part369
SpecialMesh370.Scale = Vector3.new(0.5, 0.5, 0.5)
SpecialMesh370.MeshType = Enum.MeshType.Wedge
Part371.Parent = Model0
Part371.CFrame = CFrame.new(-0.611412168, 3.19930172, -14.4084625, 0.999985635, 0.00162786234, -0.00510698371, 0.00513691502, -0.0189458374, 0.999807417, 0.00153079221, -0.999819279, -0.0189539269)
Part371.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part371.Position = Vector3.new(-0.611412168, 3.19930172, -14.4084625)
Part371.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part371.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part371.Velocity = Vector3.new(6.50143335e-08, 0.00246602623, 8.54357836e-07)
Part371.Size = Vector3.new(0.275000006, 0.204124942, 0.464375019)
Part371.Anchored = true
Part371.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part371.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part371.BrickColor = BrickColor.new("Royal purple")
Part371.CanCollide = false
Part371.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part371.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part371.Material = Enum.Material.Neon
Part371.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part371.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part371.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part371.brickColor = BrickColor.new("Royal purple")
SpecialMesh372.Parent = Part371
SpecialMesh372.Scale = Vector3.new(0.524999976, 1.04999995, 0.800000012)
SpecialMesh372.MeshType = Enum.MeshType.Brick
Part373.Parent = Model0
Part373.CFrame = CFrame.new(-0.607544899, 3.43064713, -17.7122707, 0.999985635, -0.004783432, 0.00241859211, 0.00513692852, 0.726393282, -0.68726027, 0.00153061328, 0.687262774, 0.726407468)
Part373.Orientation = Vector3.new(43.4099998, 0.189999998, 0.409999996)
Part373.Position = Vector3.new(-0.607544899, 3.43064713, -17.7122707)
Part373.Rotation = Vector3.new(43.4099998, 0.140000001, 0.269999981)
Part373.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part373.Velocity = Vector3.new(2.83308559e-08, 0.00245914259, 3.72298132e-07)
Part373.Size = Vector3.new(0.275000006, 0.24712491, 0.214375019)
Part373.Anchored = true
Part373.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part373.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part373.BrickColor = BrickColor.new("Bright blue")
Part373.CanCollide = false
Part373.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part373.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part373.Material = Enum.Material.Neon
Part373.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part373.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part373.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part373.brickColor = BrickColor.new("Bright blue")
SpecialMesh374.Parent = Part373
SpecialMesh374.Scale = Vector3.new(0.449999988, 0.600000024, 0.100000001)
SpecialMesh374.MeshType = Enum.MeshType.Brick
Part375.Parent = Model0
Part375.CFrame = CFrame.new(-0.613238811, 3.32843637, -13.6493177, -0.999985635, -0.00162807142, -0.00510653527, -0.00513647031, 0.0189459249, 0.999807417, -0.00153100933, 0.999819279, -0.0189540163)
Part375.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part375.Position = Vector3.new(-0.613238811, 3.32843637, -13.6493177)
Part375.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part375.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part375.Velocity = Vector3.new(4.45380195e-08, 0.00246760761, 5.85277007e-07)
Part375.Size = Vector3.new(0.275000006, 0.698124886, 0.534374952)
Part375.Anchored = true
Part375.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part375.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part375.BrickColor = BrickColor.new("Bright blue")
Part375.CanCollide = false
Part375.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part375.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part375.Material = Enum.Material.Glass
Part375.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part375.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part375.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part375.brickColor = BrickColor.new("Bright blue")
SpecialMesh376.Parent = Part375
SpecialMesh376.Scale = Vector3.new(0.452499986, 1, 1)
SpecialMesh376.MeshType = Enum.MeshType.Cylinder
Part377.Parent = Model0
Part377.CFrame = CFrame.new(-0.618502736, 3.35398197, -11.388195, -0.999985635, 0.00162807188, 0.00510671316, -0.00513664866, -0.0189460143, -0.999807417, -0.00153100595, -0.999819279, 0.0189541057)
Part377.Orientation = Vector3.new(88.8799973, 15.0799999, -164.830002)
Part377.Position = Vector3.new(-0.618502736, 3.35398197, -11.388195)
Part377.Rotation = Vector3.new(88.909996, 0.289999992, -179.909988)
Part377.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part377.Velocity = Vector3.new(4.0487393e-08, 0.00247231848, 5.32047068e-07)
Part377.Size = Vector3.new(0.25999999, 0.225500003, 0.210125014)
Part377.Anchored = true
Part377.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part377.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part377.BrickColor = BrickColor.new("Really black")
Part377.CanCollide = false
Part377.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part377.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part377.Material = Enum.Material.Metal
Part377.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part377.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part377.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part377.brickColor = BrickColor.new("Really black")
SpecialMesh378.Parent = Part377
SpecialMesh378.Scale = Vector3.new(0.5, 1, 1)
SpecialMesh378.MeshType = Enum.MeshType.Wedge
Part379.Parent = Model0
Part379.CFrame = CFrame.new(-0.575232625, 3.71340823, -19.3540096, 0.00507748965, 0.999985635, -0.00171704218, -0.999324501, 0.00513662118, 0.0363931209, 0.0364014208, 0.00153109594, 0.999336243)
Part379.Orientation = Vector3.new(-2.08999991, -0.099999994, -89.7099991)
Part379.Position = Vector3.new(-0.575232625, 3.71340823, -19.3540096)
Part379.Rotation = Vector3.new(-2.08999991, -0.099999994, -89.7099991)
Part379.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part379.Velocity = Vector3.new(-1.65053677e-08, 0.00245572673, -2.16897547e-07)
Part379.Size = Vector3.new(0.210000038, 0.200000003, 0.285374999)
Part379.Anchored = true
Part379.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part379.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part379.BrickColor = BrickColor.new("Royal purple")
Part379.CanCollide = false
Part379.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part379.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part379.Material = Enum.Material.Neon
Part379.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part379.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part379.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part379.brickColor = BrickColor.new("Royal purple")
SpecialMesh380.Parent = Part379
SpecialMesh380.Scale = Vector3.new(0.5, 0.300000012, 0.5)
SpecialMesh380.MeshType = Enum.MeshType.Wedge
Part381.Parent = Model0
Part381.CFrame = CFrame.new(-0.609601736, 3.48017144, -16.5335026, 0.999985635, -0.00133592158, 0.00519114826, 0.0051369979, -0.0377659947, -0.999273479, 0.00153099943, 0.999285877, -0.0377585888)
Part381.Orientation = Vector3.new(87.8199997, 172.169998, 172.25)
Part381.Position = Vector3.new(-0.609601736, 3.48017144, -16.5335026)
Part381.Rotation = Vector3.new(92.159996, 0.299999982, 0.0799999982)
Part381.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part381.Velocity = Vector3.new(2.0478014e-08, 0.00246159849, 2.69103225e-07)
Part381.Size = Vector3.new(0.275000006, 1.65712488, 0.359375)
Part381.Anchored = true
Part381.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part381.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part381.BrickColor = BrickColor.new("Really black")
Part381.CanCollide = false
Part381.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part381.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part381.Material = Enum.Material.Metal
Part381.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part381.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part381.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part381.brickColor = BrickColor.new("Really black")
SpecialMesh382.Parent = Part381
SpecialMesh382.Scale = Vector3.new(0.400000006, 1, 0.5)
SpecialMesh382.MeshType = Enum.MeshType.Brick
Part383.Parent = Model0
Part383.CFrame = CFrame.new(-0.608603716, 2.57794237, -14.160059, -0.999985635, 0.00114323408, -0.00523646409, -0.00513646565, -0.483495802, 0.8753317, -0.00153109885, 0.875346065, 0.483494699)
Part383.Orientation = Vector3.new(-61.079998, -0.620000005, -179.389999)
Part383.Position = Vector3.new(-0.608603716, 2.57794237, -14.160059)
Part383.Rotation = Vector3.new(-61.0900002, -0.299999982, -179.929993)
Part383.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part383.Velocity = Vector3.new(1.63540591e-07, 0.00246654428, 2.14909824e-06)
Part383.Size = Vector3.new(0.275000006, 0.309124947, 0.343375027)
Part383.Anchored = true
Part383.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part383.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part383.BrickColor = BrickColor.new("Really black")
Part383.CanCollide = false
Part383.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part383.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part383.Material = Enum.Material.Metal
Part383.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part383.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part383.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part383.brickColor = BrickColor.new("Really black")
SpecialMesh384.Parent = Part383
SpecialMesh384.Scale = Vector3.new(0.349999994, 1, 1)
SpecialMesh384.MeshType = Enum.MeshType.Brick
Part385.Parent = Model0
Part385.CFrame = CFrame.new(-0.610497713, 3.13989329, -14.8064632, 0.999985635, -0.00162807363, 0.00510707032, 0.00513700629, 0.018946372, -0.999807417, 0.0015309992, 0.999819279, 0.0189544633)
Part385.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part385.Position = Vector3.new(-0.610497713, 3.13989329, -14.8064632)
Part385.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part385.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part385.Velocity = Vector3.new(7.44344675e-08, 0.00246519689, 9.78148478e-07)
Part385.Size = Vector3.new(0.275000006, 0.618124902, 0.209375009)
Part385.Anchored = true
Part385.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part385.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part385.BrickColor = BrickColor.new("Really black")
Part385.CanCollide = false
Part385.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part385.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part385.Material = Enum.Material.Metal
Part385.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part385.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part385.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part385.brickColor = BrickColor.new("Really black")
SpecialMesh386.Parent = Part385
SpecialMesh386.Scale = Vector3.new(0.400000006, 1, 0.899999976)
SpecialMesh386.MeshType = Enum.MeshType.Brick
Part387.Parent = Model0
Part387.CFrame = CFrame.new(-0.611324251, 3.01513863, -13.8486776, 0.999985635, -0.00162807154, 0.00510659395, 0.00513652945, 0.0189459547, -0.999807417, 0.00153100828, 0.999819279, 0.0189540461)
Part387.Orientation = Vector3.new(88.8799973, 15.0799999, 15.1700001)
Part387.Position = Vector3.new(-0.611324251, 3.01513863, -13.8486776)
Part387.Rotation = Vector3.new(88.909996, 0.289999992, 0.0899999961)
Part387.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part387.Velocity = Vector3.new(9.42162828e-08, 0.00246719248, 1.23810264e-06)
Part387.Size = Vector3.new(0.275000006, 0.200000003, 0.213375002)
Part387.Anchored = true
Part387.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part387.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part387.BrickColor = BrickColor.new("Bright blue")
Part387.CanCollide = false
Part387.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part387.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part387.Material = Enum.Material.Neon
Part387.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part387.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part387.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part387.brickColor = BrickColor.new("Bright blue")
SpecialMesh388.Parent = Part387
SpecialMesh388.Scale = Vector3.new(0.550000012, 0.25, 0.5)
SpecialMesh388.MeshType = Enum.MeshType.Wedge
Part389.Parent = Model0
Part389.CFrame = CFrame.new(-0.615387738, 3.25427985, -11.9957829, -0.999985635, -0.00162816129, -0.00510668149, -0.00513661886, 0.0189460143, 0.999807417, -0.00153109606, 0.999819279, -0.0189541057)
Part389.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part389.Position = Vector3.new(-0.615387738, 3.25427985, -11.9957829)
Part389.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part389.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part389.Velocity = Vector3.new(5.62967202e-08, 0.00247105281, 7.39798622e-07)
Part389.Size = Vector3.new(0.275000006, 0.206125051, 0.280375004)
Part389.Anchored = true
Part389.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part389.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part389.BrickColor = BrickColor.new("Really black")
Part389.CanCollide = false
Part389.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part389.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part389.Material = Enum.Material.Metal
Part389.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part389.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part389.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part389.brickColor = BrickColor.new("Really black")
SpecialMesh390.Parent = Part389
SpecialMesh390.Scale = Vector3.new(0.400000006, 0.560000002, 0.5)
SpecialMesh390.MeshType = Enum.MeshType.Wedge
Part391.Parent = Model0
Part391.CFrame = CFrame.new(-0.614540219, 3.2634635, -12.5800533, -0.999985635, -0.00162816129, -0.00510668149, -0.00513661886, 0.0189460143, 0.999807417, -0.00153109606, 0.999819279, -0.0189541057)
Part391.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part391.Position = Vector3.new(-0.614540219, 3.2634635, -12.5800533)
Part391.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part391.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part391.Velocity = Vector3.new(5.48404984e-08, 0.00246983557, 7.20662456e-07)
Part391.Size = Vector3.new(0.275000006, 0.405125052, 0.211375013)
Part391.Anchored = true
Part391.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part391.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part391.BrickColor = BrickColor.new("Really black")
Part391.CanCollide = false
Part391.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part391.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part391.Material = Enum.Material.Metal
Part391.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part391.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part391.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part391.brickColor = BrickColor.new("Really black")
SpecialMesh392.Parent = Part391
SpecialMesh392.Scale = Vector3.new(0.5, 0.560000002, 0.5)
SpecialMesh392.MeshType = Enum.MeshType.Wedge
Part393.Parent = Model0
Part393.CFrame = CFrame.new(-0.608892262, 2.75060058, -14.5502081, -0.999985635, 0.00114323408, -0.00523646409, -0.00513646565, -0.483495802, 0.8753317, -0.00153109885, 0.875346065, 0.483494699)
Part393.Orientation = Vector3.new(-61.079998, -0.620000005, -179.389999)
Part393.Position = Vector3.new(-0.608892262, 2.75060058, -14.5502081)
Part393.Rotation = Vector3.new(-61.0900002, -0.299999982, -179.929993)
Part393.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part393.Velocity = Vector3.new(1.36162924e-07, 0.00246573123, 1.78932657e-06)
Part393.Size = Vector3.new(0.275000006, 0.409124911, 0.268375039)
Part393.Anchored = true
Part393.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part393.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part393.BrickColor = BrickColor.new("Really black")
Part393.CanCollide = false
Part393.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part393.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part393.Material = Enum.Material.Metal
Part393.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part393.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part393.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part393.brickColor = BrickColor.new("Really black")
SpecialMesh394.Parent = Part393
SpecialMesh394.Scale = Vector3.new(0.349999994, 1, 1)
SpecialMesh394.MeshType = Enum.MeshType.Brick
Part395.Parent = Model0
Part395.CFrame = CFrame.new(-0.606766462, 3.43472743, -18.2343674, 0.999985635, -0.00103941432, 0.00525853038, 0.0051369979, -0.0943565816, -0.99552542, 0.00153093971, 0.995537996, -0.0943498909)
Part395.Orientation = Vector3.new(84.5800018, 176.809998, 176.87999)
Part395.Position = Vector3.new(-0.606766462, 3.43472743, -18.2343674)
Part395.Rotation = Vector3.new(95.409996, 0.299999982, 0.0599999987)
Part395.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part395.Velocity = Vector3.new(2.76838534e-08, 0.00245805481, 3.63795948e-07)
Part395.Size = Vector3.new(0.275000006, 1.04612494, 0.214375019)
Part395.Anchored = true
Part395.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part395.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part395.BrickColor = BrickColor.new("Bright blue")
Part395.CanCollide = false
Part395.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part395.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part395.Material = Enum.Material.Neon
Part395.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part395.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part395.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part395.brickColor = BrickColor.new("Bright blue")
SpecialMesh396.Parent = Part395
SpecialMesh396.Scale = Vector3.new(0.449999988, 0.899999976, 0.100000001)
SpecialMesh396.MeshType = Enum.MeshType.Brick
Part397.Parent = Model0
Part397.CFrame = CFrame.new(-0.638540506, 2.9091177, -16.128315, 0.00135860231, -0.999985635, -0.00518506905, 0.0334058255, -0.00513679488, 0.999428749, -0.999441087, -0.00153103739, 0.0333983675)
Part397.Orientation = Vector3.new(-88.0599976, -8.81999969, 98.7399979)
Part397.Position = Vector3.new(-0.638540506, 2.9091177, -16.128315)
Part397.Rotation = Vector3.new(-88.0899963, -0.299999982, 89.9199982)
Part397.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part397.Velocity = Vector3.new(1.11027532e-07, 0.00246243807, 1.45902084e-06)
Part397.Size = Vector3.new(1.625, 0.200000003, 0.296375006)
Part397.Anchored = true
Part397.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part397.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part397.BrickColor = BrickColor.new("Royal purple")
Part397.CanCollide = false
Part397.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part397.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part397.Material = Enum.Material.Neon
Part397.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part397.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part397.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part397.brickColor = BrickColor.new("Royal purple")
SpecialMesh398.Parent = Part397
SpecialMesh398.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh398.MeshType = Enum.MeshType.Wedge
Part399.Parent = Model0
Part399.CFrame = CFrame.new(-0.614644945, 3.60375571, -13.6545372, -0.999985635, -0.00162807142, -0.00510653527, -0.00513647031, 0.0189459249, 0.999807417, -0.00153100933, 0.999819279, -0.0189540163)
Part399.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part399.Position = Vector3.new(-0.614644945, 3.60375571, -13.6545372)
Part399.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part399.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part399.Velocity = Vector3.new(8.81826168e-10, 0.00246759667, 1.1587872e-08)
Part399.Size = Vector3.new(0.275000006, 0.51412493, 0.622375011)
Part399.Anchored = true
Part399.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part399.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part399.BrickColor = BrickColor.new("Really black")
Part399.CanCollide = false
Part399.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part399.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part399.Material = Enum.Material.Metal
Part399.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part399.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part399.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part399.brickColor = BrickColor.new("Really black")
SpecialMesh400.Parent = Part399
SpecialMesh400.Scale = Vector3.new(0.400000006, 1.04999995, 0.5)
SpecialMesh400.MeshType = Enum.MeshType.Brick
Part401.Parent = Model0
Part401.CFrame = CFrame.new(-0.577553451, 2.93009853, -15.210207, -0.00336827105, 0.999985635, -0.0041695768, 0.380026042, 0.00513680326, 0.924961627, 0.924969733, 0.00153097301, -0.380037904)
Part401.Orientation = Vector3.new(-67.659996, -179.369995, 89.2299957)
Part401.Position = Vector3.new(-0.577553451, 2.93009853, -15.210207)
Part401.Rotation = Vector3.new(-112.339996, -0.239999995, -90.1899948)
Part401.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part401.Velocity = Vector3.new(1.07700714e-07, 0.00246436079, 1.41530256e-06)
Part401.Size = Vector3.new(0.288000047, 0.200000003, 0.27837503)
Part401.Anchored = true
Part401.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part401.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part401.BrickColor = BrickColor.new("Royal purple")
Part401.CanCollide = false
Part401.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part401.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part401.Material = Enum.Material.Neon
Part401.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part401.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part401.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part401.brickColor = BrickColor.new("Royal purple")
SpecialMesh402.Parent = Part401
SpecialMesh402.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh402.MeshType = Enum.MeshType.Wedge
Part403.Parent = Model0
Part403.CFrame = CFrame.new(-0.610871017, 3.00987482, -14.1263742, -0.999985635, 0.00162795268, 0.00510695158, -0.00513688475, -0.0189460143, -0.999807417, -0.00153088232, -0.999819279, 0.0189541057)
Part403.Orientation = Vector3.new(88.8799973, 15.0799999, -164.830002)
Part403.Position = Vector3.new(-0.610871017, 3.00987482, -14.1263742)
Part403.Rotation = Vector3.new(88.909996, 0.289999992, -179.909988)
Part403.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part403.Velocity = Vector3.new(9.5050936e-08, 0.00246661413, 1.24907092e-06)
Part403.Size = Vector3.new(0.275000006, 0.207000002, 0.213375002)
Part403.Anchored = true
Part403.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part403.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part403.BrickColor = BrickColor.new("Bright blue")
Part403.CanCollide = false
Part403.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part403.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part403.Material = Enum.Material.Neon
Part403.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part403.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part403.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part403.brickColor = BrickColor.new("Bright blue")
SpecialMesh404.Parent = Part403
SpecialMesh404.Scale = Vector3.new(0.550000012, 0.25, 0.5)
SpecialMesh404.MeshType = Enum.MeshType.Wedge
Part405.Parent = Model0
Part405.CFrame = CFrame.new(-0.576041341, 2.90943861, -16.1282196, -0.00135869172, 0.999985635, -0.00518506905, -0.0334058292, 0.00513679255, 0.999428749, 0.999441028, 0.00153112656, 0.0333983749)
Part405.Orientation = Vector3.new(-88.0599976, -8.81999969, -81.2599945)
Part405.Position = Vector3.new(-0.576041341, 2.90943861, -16.1282196)
Part405.Rotation = Vector3.new(-88.0899963, -0.299999982, -90.0799942)
Part405.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part405.Velocity = Vector3.new(1.10976643e-07, 0.00246244832, 1.45835213e-06)
Part405.Size = Vector3.new(1.625, 0.200000003, 0.296375006)
Part405.Anchored = true
Part405.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part405.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part405.BrickColor = BrickColor.new("Royal purple")
Part405.CanCollide = false
Part405.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part405.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part405.Material = Enum.Material.Neon
Part405.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part405.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part405.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part405.brickColor = BrickColor.new("Royal purple")
SpecialMesh406.Parent = Part405
SpecialMesh406.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh406.MeshType = Enum.MeshType.Wedge
Part407.Parent = Model0
Part407.CFrame = CFrame.new(-0.61728102, 3.21630335, -10.6318092, -0.999985635, -0.00414685067, -0.00339615461, -0.00513672922, 0.560423911, 0.828190207, -0.00153109396, 0.828195751, -0.560437143)
Part407.Orientation = Vector3.new(-55.9099998, -179.649994, -0.529999971)
Part407.Position = Vector3.new(-0.61728102, 3.21630335, -10.6318092)
Part407.Rotation = Vector3.new(-124.089996, -0.189999998, 179.759995)
Part407.Color = Color3.new(0.0509804, 0.411765, 0.67451)
Part407.Velocity = Vector3.new(6.23185059e-08, 0.00247389474, 8.18931142e-07)
Part407.Size = Vector3.new(0.200000003, 0.46875, 0.220999971)
Part407.Anchored = true
Part407.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part407.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part407.BrickColor = BrickColor.new("Bright blue")
Part407.CanCollide = false
Part407.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part407.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part407.Material = Enum.Material.Neon
Part407.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part407.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part407.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part407.brickColor = BrickColor.new("Bright blue")
SpecialMesh408.Parent = Part407
SpecialMesh408.Scale = Vector3.new(0.5, 1, 0.25)
SpecialMesh408.MeshType = Enum.MeshType.Brick
Part409.Parent = Model0
Part409.CFrame = CFrame.new(-0.612716079, 3.04616904, -13.0423889, -0.999985635, -0.00162816129, -0.00510668149, -0.00513661886, 0.0189460143, 0.999807417, -0.00153109606, 0.999819279, -0.0189541057)
Part409.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part409.Position = Vector3.new(-0.612716079, 3.04616904, -13.0423889)
Part409.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part409.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part409.Velocity = Vector3.new(8.92959378e-08, 0.00246887235, 1.17344382e-06)
Part409.Size = Vector3.new(0.275000006, 0.35512504, 0.283374995)
Part409.Anchored = true
Part409.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part409.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part409.BrickColor = BrickColor.new("Really black")
Part409.CanCollide = false
Part409.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part409.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part409.Material = Enum.Material.Metal
Part409.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part409.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part409.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part409.brickColor = BrickColor.new("Really black")
SpecialMesh410.Parent = Part409
SpecialMesh410.Scale = Vector3.new(0.400000006, 0.560000002, 0.5)
SpecialMesh410.MeshType = Enum.MeshType.Wedge
Part411.Parent = Model0
Part411.CFrame = CFrame.new(-0.614045858, 3.38228369, -13.3029222, 0.999985635, 0.00162801193, -0.00510688825, 0.00513682282, -0.0189459547, 0.999807417, 0.00153094309, -0.999819279, -0.0189540461)
Part411.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part411.Position = Vector3.new(-0.614045858, 3.38228369, -13.3029222)
Part411.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part411.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part411.Velocity = Vector3.new(3.59996903e-08, 0.00246832939, 4.73074152e-07)
Part411.Size = Vector3.new(0.275000006, 0.204125047, 0.287375003)
Part411.Anchored = true
Part411.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part411.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part411.BrickColor = BrickColor.new("Really black")
Part411.CanCollide = false
Part411.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part411.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part411.Material = Enum.Material.Metal
Part411.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part411.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part411.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part411.brickColor = BrickColor.new("Really black")
SpecialMesh412.Parent = Part411
SpecialMesh412.Scale = Vector3.new(0.5, 0.5, 0.5)
SpecialMesh412.MeshType = Enum.MeshType.Wedge
Part413.Parent = Model0
Part413.CFrame = CFrame.new(-0.609584808, 2.93011069, -14.6988583, -0.999985635, -0.00476218108, -0.00245960802, -0.00513651408, 0.720367968, 0.693573236, -0.00153109804, 0.693575919, -0.720382035)
Part413.Orientation = Vector3.new(-43.9099998, -179.800003, -0.409999996)
Part413.Position = Vector3.new(-0.609584808, 2.93011069, -14.6988583)
Part413.Rotation = Vector3.new(-136.089996, -0.140000001, 179.729996)
Part413.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part413.Velocity = Vector3.new(1.07698781e-07, 0.00246542133, 1.41527721e-06)
Part413.Size = Vector3.new(0.275000006, 0.484124899, 0.227375031)
Part413.Anchored = true
Part413.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part413.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part413.BrickColor = BrickColor.new("Really black")
Part413.CanCollide = false
Part413.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part413.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part413.Material = Enum.Material.Metal
Part413.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part413.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part413.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part413.brickColor = BrickColor.new("Really black")
SpecialMesh414.Parent = Part413
SpecialMesh414.Scale = Vector3.new(0.349999994, 0.300000012, 1)
SpecialMesh414.MeshType = Enum.MeshType.Brick
Part415.Parent = Model0
Part415.CFrame = CFrame.new(-0.606956184, 3.40465999, -18.0096188, 0.999985635, -0.0010395617, 0.00525854016, 0.00513699278, -0.0943568796, -0.99552542, 0.00153108896, 0.995537996, -0.094350189)
Part415.Orientation = Vector3.new(84.5800018, 176.809998, 176.87999)
Part415.Position = Vector3.new(-0.606956184, 3.40465999, -18.0096188)
Part415.Rotation = Vector3.new(95.409996, 0.299999982, 0.0599999987)
Part415.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part415.Velocity = Vector3.new(3.24515206e-08, 0.00245852303, 4.26448139e-07)
Part415.Size = Vector3.new(0.275000006, 1.46012485, 0.422374964)
Part415.Anchored = true
Part415.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part415.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part415.BrickColor = BrickColor.new("Really black")
Part415.CanCollide = false
Part415.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part415.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part415.Material = Enum.Material.Metal
Part415.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part415.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part415.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part415.brickColor = BrickColor.new("Really black")
SpecialMesh416.Parent = Part415
SpecialMesh416.Scale = Vector3.new(0.400000006, 1, 0.5)
SpecialMesh416.MeshType = Enum.MeshType.Brick
Part417.Parent = Model0
Part417.CFrame = CFrame.new(-0.613238811, 3.32843637, -13.6493177, -0.999985635, -0.00162807142, -0.00510653527, -0.00513647031, 0.0189459249, 0.999807417, -0.00153100933, 0.999819279, -0.0189540163)
Part417.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part417.Position = Vector3.new(-0.613238811, 3.32843637, -13.6493177)
Part417.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part417.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part417.Velocity = Vector3.new(4.45380195e-08, 0.00246760761, 5.85277007e-07)
Part417.Size = Vector3.new(0.275000006, 0.320124894, 0.316374987)
Part417.Anchored = true
Part417.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part417.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part417.BrickColor = BrickColor.new("Royal purple")
Part417.CanCollide = false
Part417.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part417.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part417.Material = Enum.Material.Neon
Part417.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part417.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part417.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part417.brickColor = BrickColor.new("Royal purple")
SpecialMesh418.Parent = Part417
SpecialMesh418.Scale = Vector3.new(0.457500011, 1, 1)
SpecialMesh418.MeshType = Enum.MeshType.Cylinder
Part419.Parent = Model0
Part419.CFrame = CFrame.new(-0.616606832, 3.19626212, -11.004673, -0.999985635, -0.000250895391, -0.00535403285, -0.00513659744, -0.24046874, 0.970643461, -0.001531007, 0.970656931, 0.240463987)
Part419.Orientation = Vector3.new(-76.0800018, -1.27999997, -178.779999)
Part419.Position = Vector3.new(-0.616606832, 3.19626212, -11.004673)
Part419.Rotation = Vector3.new(-76.0899963, -0.310000002, 179.98999)
Part419.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part419.Velocity = Vector3.new(6.54963515e-08, 0.00247311778, 8.606915e-07)
Part419.Size = Vector3.new(0.275000006, 0.418250024, 0.25)
Part419.Anchored = true
Part419.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part419.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part419.BrickColor = BrickColor.new("Really black")
Part419.CanCollide = false
Part419.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part419.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part419.Material = Enum.Material.Metal
Part419.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part419.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part419.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part419.brickColor = BrickColor.new("Really black")
SpecialMesh420.Parent = Part419
SpecialMesh420.Scale = Vector3.new(0.5, 1, 0.25)
SpecialMesh420.MeshType = Enum.MeshType.Brick
Part421.Parent = Model0
Part421.CFrame = CFrame.new(-0.610599458, 3.09770298, -14.5984182, -0.999985635, 0.00510674436, -0.0016279578, -0.00513667939, -0.999807417, 0.0189470276, -0.00153088616, 0.018955119, 0.999819279)
Part421.Orientation = Vector3.new(-1.09000003, -0.0899999961, -179.709991)
Part421.Position = Vector3.new(-0.610599458, 3.09770298, -14.5984182)
Part421.Rotation = Vector3.new(-1.09000003, -0.0899999961, -179.709991)
Part421.Color = Color3.new(0.972549, 0.972549, 0.972549)
Part421.Velocity = Vector3.new(8.1124405e-08, 0.00246563042, 1.06606149e-06)
Part421.Size = Vector3.new(0.275000006, 0.200124964, 0.287375033)
Part421.Anchored = true
Part421.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part421.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part421.BrickColor = BrickColor.new("Institutional white")
Part421.CanCollide = false
Part421.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part421.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part421.Material = Enum.Material.Metal
Part421.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part421.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part421.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part421.brickColor = BrickColor.new("Institutional white")
SpecialMesh422.Parent = Part421
SpecialMesh422.Scale = Vector3.new(0.560000002, 1, 0.899999976)
SpecialMesh422.MeshType = Enum.MeshType.Wedge
Part423.Parent = Model0
Part423.CFrame = CFrame.new(-0.608857095, 2.56135106, -13.9388657, -0.999985635, -0.00289438874, -0.00451127253, -0.00513661513, 0.277069688, 0.960836291, -0.00153109606, 0.96084559, -0.277080595)
Part423.Orientation = Vector3.new(-73.909996, -179.069992, -1.05999994)
Part423.Position = Vector3.new(-0.608857095, 2.56135106, -13.9388657)
Part423.Rotation = Vector3.new(-106.089996, -0.25999999, 179.830002)
Part423.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part423.Velocity = Vector3.new(1.66171404e-07, 0.00246700505, 2.18366995e-06)
Part423.Size = Vector3.new(0.275000006, 0.409124941, 0.360375017)
Part423.Anchored = true
Part423.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part423.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part423.BrickColor = BrickColor.new("Really black")
Part423.CanCollide = false
Part423.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part423.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part423.Material = Enum.Material.Metal
Part423.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part423.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part423.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part423.brickColor = BrickColor.new("Really black")
SpecialMesh424.Parent = Part423
SpecialMesh424.Scale = Vector3.new(0.349999994, 1, 1)
SpecialMesh424.MeshType = Enum.MeshType.Brick
Part425.Parent = Model0
Part425.CFrame = CFrame.new(-0.610883415, 2.94288707, -13.8941879, -0.999985635, -0.00162807154, -0.00510650687, -0.00513644237, 0.0189459547, 0.999807417, -0.00153100991, 0.999819279, -0.0189540461)
Part425.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part425.Position = Vector3.new(-0.610883415, 2.94288707, -13.8941879)
Part425.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part425.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part425.Velocity = Vector3.new(1.05672896e-07, 0.00246709795, 1.38865482e-06)
Part425.Size = Vector3.new(0.275000006, 0.228, 0.213375002)
Part425.Anchored = true
Part425.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part425.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part425.BrickColor = BrickColor.new("Really black")
Part425.CanCollide = false
Part425.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part425.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part425.Material = Enum.Material.Metal
Part425.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part425.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part425.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part425.brickColor = BrickColor.new("Really black")
SpecialMesh426.Parent = Part425
SpecialMesh426.Scale = Vector3.new(0.569999993, 0.125, 0.375)
SpecialMesh426.MeshType = Enum.MeshType.Wedge
Part427.Parent = Model0
Part427.CFrame = CFrame.new(-0.612252593, 3.11727381, -13.584939, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part427.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part427.Position = Vector3.new(-0.612252593, 3.11727381, -13.584939)
Part427.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part427.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part427.Velocity = Vector3.new(7.80211593e-08, 0.00246774196, 1.02528122e-06)
Part427.Size = Vector3.new(0.275000006, 0.398124993, 0.303375006)
Part427.Anchored = true
Part427.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part427.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part427.BrickColor = BrickColor.new("Really black")
Part427.CanCollide = false
Part427.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part427.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part427.Material = Enum.Material.Metal
Part427.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part427.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part427.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part427.brickColor = BrickColor.new("Really black")
SpecialMesh428.Parent = Part427
SpecialMesh428.Scale = Vector3.new(0.5, 1, 1)
SpecialMesh428.MeshType = Enum.MeshType.Brick
Part429.Parent = Model0
Part429.CFrame = CFrame.new(-0.612551332, 3.35195827, -14.1766062, 0.999985635, 0.0047621401, -0.00246015727, 0.00513686566, -0.720367908, 0.693573296, 0.00153067405, -0.693575978, -0.720381975)
Part429.Orientation = Vector3.new(-43.9099998, -179.800003, 179.589996)
Part429.Position = Vector3.new(-0.612551332, 3.35195827, -14.1766062)
Part429.Rotation = Vector3.new(-136.089996, -0.140000001, -0.269999981)
Part429.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part429.Velocity = Vector3.new(4.08082492e-08, 0.00246650912, 5.36263883e-07)
Part429.Size = Vector3.new(0.275000006, 0.331124961, 0.412375003)
Part429.Anchored = true
Part429.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part429.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part429.BrickColor = BrickColor.new("Really black")
Part429.CanCollide = false
Part429.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part429.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part429.Material = Enum.Material.Metal
Part429.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part429.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part429.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part429.brickColor = BrickColor.new("Really black")
SpecialMesh430.Parent = Part429
SpecialMesh430.Scale = Vector3.new(0.5, 1.04999995, 0.5)
SpecialMesh430.MeshType = Enum.MeshType.Brick
Part431.Parent = Model0
Part431.CFrame = CFrame.new(-0.578086436, 2.53643656, -13.5418949, -0.00476215873, 0.999985635, -0.00245991186, 0.72036773, 0.00513670826, 0.693573475, 0.693576157, 0.00153086532, -0.720381796)
Part431.Orientation = Vector3.new(-43.9099998, -179.800003, 89.5899963)
Part431.Position = Vector3.new(-0.578086436, 2.53643656, -13.5418949)
Part431.Rotation = Vector3.new(-136.089996, -0.140000001, -90.2699966)
Part431.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part431.Velocity = Vector3.new(1.70122007e-07, 0.00246783718, 2.23558482e-06)
Part431.Size = Vector3.new(0.421999991, 0.200000003, 0.280375004)
Part431.Anchored = true
Part431.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part431.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part431.BrickColor = BrickColor.new("Royal purple")
Part431.CanCollide = false
Part431.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part431.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part431.Material = Enum.Material.Neon
Part431.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part431.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part431.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part431.brickColor = BrickColor.new("Royal purple")
SpecialMesh432.Parent = Part431
SpecialMesh432.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh432.MeshType = Enum.MeshType.Wedge
Part433.Parent = Model0
Part433.CFrame = CFrame.new(-0.647041559, 3.82817221, -13.658843, -0.00162801228, -0.999985635, 0.00510653481, 0.0189460143, -0.00513646938, -0.999807417, 0.999819279, -0.00153094972, 0.0189541057)
Part433.Orientation = Vector3.new(88.8799973, 15.0799999, 105.169998)
Part433.Position = Vector3.new(-0.647041559, 3.82817221, -13.658843)
Part433.Rotation = Vector3.new(88.909996, 0.289999992, 90.0899963)
Part433.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part433.Velocity = Vector3.new(-3.47029321e-08, 0.00246758247, -4.56033831e-07)
Part433.Size = Vector3.new(0.643000007, 0.200000003, 0.280375004)
Part433.Anchored = true
Part433.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part433.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part433.BrickColor = BrickColor.new("Royal purple")
Part433.CanCollide = false
Part433.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part433.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part433.Material = Enum.Material.Neon
Part433.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part433.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part433.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part433.brickColor = BrickColor.new("Royal purple")
SpecialMesh434.Parent = Part433
SpecialMesh434.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh434.MeshType = Enum.MeshType.Wedge
Part435.Parent = Model0
Part435.CFrame = CFrame.new(-0.610847712, 3.10699439, -14.4674244, 0.999985635, 0.00345827825, -0.00409521349, 0.00513684051, -0.400113374, 0.916451454, 0.00153079373, -0.916459262, -0.400125414)
Part435.Orientation = Vector3.new(-66.409996, -179.409988, 179.259995)
Part435.Position = Vector3.new(-0.610847712, 3.10699439, -14.4674244)
Part435.Rotation = Vector3.new(-113.589996, -0.229999989, -0.199999988)
Part435.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part435.Velocity = Vector3.new(7.96511017e-08, 0.00246590329, 1.04670062e-06)
Part435.Size = Vector3.new(0.275000006, 0.23712492, 0.375375003)
Part435.Anchored = true
Part435.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part435.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part435.BrickColor = BrickColor.new("Royal purple")
Part435.CanCollide = false
Part435.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part435.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part435.Material = Enum.Material.Neon
Part435.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part435.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part435.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part435.brickColor = BrickColor.new("Royal purple")
SpecialMesh436.Parent = Part435
SpecialMesh436.Scale = Vector3.new(0.524999976, 1.04999995, 0.800000012)
SpecialMesh436.MeshType = Enum.MeshType.Brick
Part437.Parent = Model0
Part437.CFrame = CFrame.new(-0.583012402, 3.6639781, -14.1030874, 0.00476215919, 0.999985635, 0.00246015075, -0.720367849, 0.0051368745, -0.693573356, -0.693576038, 0.00153069268, 0.720381975)
Part437.Orientation = Vector3.new(43.9099998, 0.199999988, -89.5899963)
Part437.Position = Vector3.new(-0.583012402, 3.6639781, -14.1030874)
Part437.Rotation = Vector3.new(43.9099998, 0.140000001, -89.7299957)
Part437.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part437.Velocity = Vector3.new(-8.66738503e-09, 0.00246666698, -1.13898864e-07)
Part437.Size = Vector3.new(0.496000022, 0.200000003, 0.280375004)
Part437.Anchored = true
Part437.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part437.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part437.BrickColor = BrickColor.new("Royal purple")
Part437.CanCollide = false
Part437.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part437.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part437.Material = Enum.Material.Neon
Part437.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part437.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part437.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part437.brickColor = BrickColor.new("Royal purple")
SpecialMesh438.Parent = Part437
SpecialMesh438.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh438.MeshType = Enum.MeshType.Wedge
Part439.Parent = Model0
Part439.CFrame = CFrame.new(-0.609243929, 2.84955072, -14.6524963, -0.999985635, -0.00162816211, -0.00510652829, -0.00513646565, 0.0189461932, 0.999807417, -0.00153109885, 0.999819279, -0.0189542845)
Part439.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part439.Position = Vector3.new(-0.609243929, 2.84955072, -14.6524963)
Part439.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part439.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part439.Velocity = Vector3.new(1.20472833e-07, 0.00246551796, 1.58314185e-06)
Part439.Size = Vector3.new(0.275000006, 0.287124902, 0.227375031)
Part439.Anchored = true
Part439.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part439.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part439.BrickColor = BrickColor.new("Really black")
Part439.CanCollide = false
Part439.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part439.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part439.Material = Enum.Material.Metal
Part439.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part439.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part439.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part439.brickColor = BrickColor.new("Really black")
SpecialMesh440.Parent = Part439
SpecialMesh440.Scale = Vector3.new(0.349999994, 1, 1)
SpecialMesh440.MeshType = Enum.MeshType.Brick
Part441.Parent = Model0
Part441.CFrame = CFrame.new(-0.610548377, 2.83942795, -13.765955, -0.999985635, -0.00162816129, -0.00510662561, -0.00513656298, 0.0189460143, 0.999807417, -0.00153109711, 0.999819279, -0.0189541057)
Part441.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part441.Position = Vector3.new(-0.610548377, 2.83942795, -13.765955)
Part441.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part441.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part441.Velocity = Vector3.new(1.22077964e-07, 0.002467365, 1.60423497e-06)
Part441.Size = Vector3.new(0.275000006, 0.304124922, 0.267374992)
Part441.Anchored = true
Part441.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part441.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part441.BrickColor = BrickColor.new("Really black")
Part441.CanCollide = false
Part441.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part441.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part441.Material = Enum.Material.Metal
Part441.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part441.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part441.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part441.brickColor = BrickColor.new("Really black")
SpecialMesh442.Parent = Part441
SpecialMesh442.Scale = Vector3.new(0.495000005, 1, 1)
SpecialMesh442.MeshType = Enum.MeshType.Wedge
Part443.Parent = Model0
Part443.CFrame = CFrame.new(-0.584542513, 3.82849336, -13.6587467, 0.00162807188, 0.999985635, 0.00510653481, -0.0189460143, 0.00513647031, -0.999807417, -0.999819279, 0.00153100933, 0.0189541057)
Part443.Orientation = Vector3.new(88.8799973, 15.0799999, -74.8300018)
Part443.Position = Vector3.new(-0.584542513, 3.82849336, -13.6587467)
Part443.Rotation = Vector3.new(88.909996, 0.289999992, -89.909996)
Part443.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part443.Velocity = Vector3.new(-3.47538496e-08, 0.00246759271, -4.56702992e-07)
Part443.Size = Vector3.new(0.643000007, 0.200000003, 0.280375004)
Part443.Anchored = true
Part443.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part443.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part443.BrickColor = BrickColor.new("Royal purple")
Part443.CanCollide = false
Part443.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part443.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part443.Material = Enum.Material.Neon
Part443.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part443.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part443.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part443.brickColor = BrickColor.new("Royal purple")
SpecialMesh444.Parent = Part443
SpecialMesh444.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh444.MeshType = Enum.MeshType.Wedge
Part445.Parent = Model0
Part445.CFrame = CFrame.new(-0.618139863, 3.39627433, -10.6743059, 0.999985635, -0.0024899696, 0.00474630948, 0.00513651408, 0.192273051, -0.981328189, 0.00153088931, 0.981338441, 0.192283079)
Part445.Orientation = Vector3.new(78.909996, 1.40999997, 1.52999997)
Part445.Position = Vector3.new(-0.618139863, 3.39627433, -10.6743059)
Part445.Rotation = Vector3.new(78.909996, 0.269999981, 0.140000001)
Part445.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part445.Velocity = Vector3.new(3.37812835e-08, 0.00247380603, 4.43921522e-07)
Part445.Size = Vector3.new(0.275000006, 0.28125, 0.234375)
Part445.Anchored = true
Part445.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part445.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part445.BrickColor = BrickColor.new("Really black")
Part445.CanCollide = false
Part445.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part445.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part445.Material = Enum.Material.Metal
Part445.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part445.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part445.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part445.brickColor = BrickColor.new("Really black")
SpecialMesh446.Parent = Part445
SpecialMesh446.Scale = Vector3.new(0.5, 1.04999995, 0.400000006)
SpecialMesh446.MeshType = Enum.MeshType.Brick
Part447.Parent = Model0
Part447.CFrame = CFrame.new(-0.612165928, 3.04279852, -13.3917465, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part447.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part447.Position = Vector3.new(-0.612165928, 3.04279852, -13.3917465)
Part447.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part447.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part447.Velocity = Vector3.new(8.98303796e-08, 0.00246814452, 1.18046705e-06)
Part447.Size = Vector3.new(0.275000006, 0.577124953, 0.303375006)
Part447.Anchored = true
Part447.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part447.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part447.BrickColor = BrickColor.new("Really black")
Part447.CanCollide = false
Part447.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part447.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part447.Material = Enum.Material.Metal
Part447.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part447.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part447.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part447.brickColor = BrickColor.new("Really black")
SpecialMesh448.Parent = Part447
SpecialMesh448.Scale = Vector3.new(0.400000006, 0.870000005, 0.5)
SpecialMesh448.MeshType = Enum.MeshType.Brick
Part449.Parent = Model0
Part449.CFrame = CFrame.new(-0.576728344, 2.5984447, -14.6364422, 0.00114334025, 0.999985635, -0.00523668947, -0.483495861, 0.00513671385, 0.8753317, 0.875346005, 0.00153111527, 0.483494759)
Part449.Orientation = Vector3.new(-61.079998, -0.620000005, -89.3899994)
Part449.Position = Vector3.new(-0.576728344, 2.5984447, -14.6364422)
Part449.Rotation = Vector3.new(-61.0900002, -0.299999982, -89.9300003)
Part449.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part449.Velocity = Vector3.new(1.6028963e-07, 0.00246555661, 2.10637722e-06)
Part449.Size = Vector3.new(0.423000038, 0.200000003, 0.280375004)
Part449.Anchored = true
Part449.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part449.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part449.BrickColor = BrickColor.new("Royal purple")
Part449.CanCollide = false
Part449.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part449.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part449.Material = Enum.Material.Neon
Part449.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part449.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part449.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part449.brickColor = BrickColor.new("Royal purple")
SpecialMesh450.Parent = Part449
SpecialMesh450.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh450.MeshType = Enum.MeshType.Wedge
Part451.Parent = Model0
Part451.CFrame = CFrame.new(-0.611472607, 3.24456573, -14.520874, -0.999985635, 0.000250921701, 0.00535428664, -0.00513683865, 0.240468413, -0.970643461, -0.00153109187, -0.970656991, -0.240463659)
Part451.Orientation = Vector3.new(76.0800018, 178.720001, -1.22000003)
Part451.Position = Vector3.new(-0.611472607, 3.24456573, -14.520874)
Part451.Rotation = Vector3.new(103.909996, 0.310000002, -179.98999)
Part451.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part451.Velocity = Vector3.new(5.78370134e-08, 0.002465792, 7.60040166e-07)
Part451.Size = Vector3.new(0.275000006, 0.221124932, 0.408374965)
Part451.Anchored = true
Part451.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part451.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part451.BrickColor = BrickColor.new("Really black")
Part451.CanCollide = false
Part451.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part451.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part451.Material = Enum.Material.Metal
Part451.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part451.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part451.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part451.brickColor = BrickColor.new("Really black")
SpecialMesh452.Parent = Part451
SpecialMesh452.Scale = Vector3.new(0.550000012, 1.04999995, 0.800000012)
SpecialMesh452.MeshType = Enum.MeshType.Brick
Part453.Parent = Model0
Part453.CFrame = CFrame.new(-0.610993803, 3.15083313, -14.5190973, 0.999985635, 0.00289416499, -0.00451159757, 0.00513686473, -0.2770693, 0.960836351, 0.00153079326, -0.960845709, -0.277080178)
Part453.Orientation = Vector3.new(-73.909996, -179.069992, 178.940002)
Part453.Position = Vector3.new(-0.610993803, 3.15083313, -14.5190973)
Part453.Rotation = Vector3.new(-106.089996, -0.25999999, -0.170000002)
Part453.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part453.Velocity = Vector3.new(7.26997911e-08, 0.00246579573, 9.55352903e-07)
Part453.Size = Vector3.new(0.275000006, 0.221124932, 0.408374965)
Part453.Anchored = true
Part453.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part453.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part453.BrickColor = BrickColor.new("Really black")
Part453.CanCollide = false
Part453.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part453.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part453.Material = Enum.Material.Metal
Part453.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part453.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part453.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part453.brickColor = BrickColor.new("Really black")
SpecialMesh454.Parent = Part453
SpecialMesh454.Scale = Vector3.new(0.550000012, 1.04999995, 0.800000012)
SpecialMesh454.MeshType = Enum.MeshType.Brick
Part455.Parent = Model0
Part455.CFrame = CFrame.new(-0.609657764, 2.72515392, -13.9643335, -0.999985635, -0.00162816129, -0.00510662561, -0.00513656298, 0.0189460143, 0.999807417, -0.00153109711, 0.999819279, -0.0189541057)
Part455.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part455.Position = Vector3.new(-0.609657764, 2.72515392, -13.9643335)
Part455.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part455.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part455.Velocity = Vector3.new(1.40197898e-07, 0.00246695196, 1.84235034e-06)
Part455.Size = Vector3.new(0.275000006, 0.330124915, 0.226374999)
Part455.Anchored = true
Part455.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.BrickColor = BrickColor.new("Really black")
Part455.CanCollide = false
Part455.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.Material = Enum.Material.Glass
Part455.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part455.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part455.brickColor = BrickColor.new("Really black")
SpecialMesh456.Parent = Part455
SpecialMesh456.Scale = Vector3.new(0.400000006, 1, 1)
SpecialMesh456.MeshType = Enum.MeshType.Brick
Part457.Parent = Model0
Part457.CFrame = CFrame.new(-0.577368915, 2.78939152, -14.8586674, 0.00361127499, 0.999985635, -0.00396134611, -0.85638535, 0.00513800606, 0.516312063, 0.516324997, 0.00152789324, 0.856391609)
Part457.Orientation = Vector3.new(-31.0900002, -0.269999981, -89.659996)
Part457.Position = Vector3.new(-0.577368915, 2.78939152, -14.8586674)
Part457.Rotation = Vector3.new(-31.0900002, -0.229999989, -89.7900009)
Part457.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part457.Velocity = Vector3.new(1.30012012e-07, 0.00246509351, 1.70849694e-06)
Part457.Size = Vector3.new(0.293000042, 0.200000003, 0.280375004)
Part457.Anchored = true
Part457.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part457.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part457.BrickColor = BrickColor.new("Royal purple")
Part457.CanCollide = false
Part457.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part457.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part457.Material = Enum.Material.Neon
Part457.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part457.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part457.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part457.brickColor = BrickColor.new("Royal purple")
SpecialMesh458.Parent = Part457
SpecialMesh458.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh458.MeshType = Enum.MeshType.Wedge
Part459.Parent = Model0
Part459.CFrame = CFrame.new(-0.611768007, 3.29040194, -14.4816895, -0.999985635, -0.00045009004, 0.00534120994, -0.00513681443, 0.36510545, -0.930952132, -0.00153109233, -0.930966198, -0.3651025)
Part459.Orientation = Vector3.new(68.5800018, 179.159988, -0.810000002)
Part459.Position = Vector3.new(-0.611768007, 3.29040194, -14.4816895)
Part459.Rotation = Vector3.new(111.409996, 0.310000002, 179.970001)
Part459.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part459.Velocity = Vector3.new(5.05689677e-08, 0.00246587349, 6.64530262e-07)
Part459.Size = Vector3.new(0.275000006, 0.238124937, 0.381375015)
Part459.Anchored = true
Part459.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part459.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part459.BrickColor = BrickColor.new("Royal purple")
Part459.CanCollide = false
Part459.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part459.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part459.Material = Enum.Material.Neon
Part459.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part459.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part459.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part459.brickColor = BrickColor.new("Royal purple")
SpecialMesh460.Parent = Part459
SpecialMesh460.Scale = Vector3.new(0.524999976, 1.04999995, 0.800000012)
SpecialMesh460.MeshType = Enum.MeshType.Brick
Part461.Parent = Model0
Part461.CFrame = CFrame.new(-0.605971158, 3.45052385, -18.8064079, -0.999985635, 0.00474059395, 0.00250087585, -0.00513641909, -0.714288056, -0.699833155, -0.00153127871, -0.699835896, 0.714302182)
Part461.Orientation = Vector3.new(44.4099998, 0.199999988, -179.589996)
Part461.Position = Vector3.new(-0.605971158, 3.45052385, -18.8064079)
Part461.Rotation = Vector3.new(44.4099998, 0.140000001, -179.729996)
Part461.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part461.Velocity = Vector3.new(2.51790748e-08, 0.00245686295, 3.30880596e-07)
Part461.Size = Vector3.new(0.275000006, 0.235124931, 0.586375237)
Part461.Anchored = true
Part461.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part461.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part461.BrickColor = BrickColor.new("Really black")
Part461.CanCollide = false
Part461.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part461.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part461.Material = Enum.Material.Metal
Part461.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part461.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part461.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part461.brickColor = BrickColor.new("Really black")
SpecialMesh462.Parent = Part461
SpecialMesh462.Scale = Vector3.new(0.400000006, 1.04999995, 1)
SpecialMesh462.MeshType = Enum.MeshType.Brick
Part463.Parent = Model0
Part463.CFrame = CFrame.new(-0.610880256, 2.96906447, -13.9840736, -0.999985635, -0.00162807154, -0.00510650687, -0.00513644237, 0.0189459547, 0.999807417, -0.00153100991, 0.999819279, -0.0189540461)
Part463.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part463.Position = Vector3.new(-0.610880256, 2.96906447, -13.9840736)
Part463.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part463.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part463.Velocity = Vector3.new(1.01522062e-07, 0.00246691052, 1.33410845e-06)
Part463.Size = Vector3.new(0.275000006, 0.239124984, 0.303375006)
Part463.Anchored = true
Part463.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part463.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part463.BrickColor = BrickColor.new("Really black")
Part463.CanCollide = false
Part463.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part463.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part463.Material = Enum.Material.Glass
Part463.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part463.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part463.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part463.brickColor = BrickColor.new("Really black")
SpecialMesh464.Parent = Part463
SpecialMesh464.Scale = Vector3.new(0.524999976, 1, 1)
SpecialMesh464.MeshType = Enum.MeshType.Brick
Part465.Parent = Model0
Part465.CFrame = CFrame.new(-0.63922745, 2.59812379, -14.6365376, -0.00114342954, -0.999985635, -0.00523668341, 0.483495861, -0.00513675157, 0.8753317, -0.875346065, -0.00153103401, 0.483494759)
Part465.Orientation = Vector3.new(-61.079998, -0.620000005, 90.6100006)
Part465.Position = Vector3.new(-0.63922745, 2.59812379, -14.6365376)
Part465.Rotation = Vector3.new(-61.0900002, -0.299999982, 90.0699997)
Part465.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part465.Velocity = Vector3.new(1.6034052e-07, 0.0024655466, 2.10704593e-06)
Part465.Size = Vector3.new(0.423000038, 0.200000003, 0.280375004)
Part465.Anchored = true
Part465.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part465.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part465.BrickColor = BrickColor.new("Royal purple")
Part465.CanCollide = false
Part465.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part465.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part465.Material = Enum.Material.Neon
Part465.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part465.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part465.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part465.brickColor = BrickColor.new("Royal purple")
SpecialMesh466.Parent = Part465
SpecialMesh466.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh466.MeshType = Enum.MeshType.Wedge
Part467.Parent = Model0
Part467.CFrame = CFrame.new(-0.63986814, 2.78907037, -14.8587627, -0.0036113495, -0.999985635, -0.00396139733, 0.85638535, -0.00513809687, 0.516312063, -0.516324997, -0.0015278986, 0.856391549)
Part467.Orientation = Vector3.new(-31.0900002, -0.269999981, 90.3399963)
Part467.Position = Vector3.new(-0.63986814, 2.78907037, -14.8587627)
Part467.Rotation = Vector3.new(-31.0900002, -0.229999989, 90.2099991)
Part467.Color = Color3.new(0.384314, 0.145098, 0.819608)
Part467.Velocity = Vector3.new(1.30062929e-07, 0.00246508326, 1.70916621e-06)
Part467.Size = Vector3.new(0.293000042, 0.200000003, 0.280375004)
Part467.Anchored = true
Part467.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part467.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part467.BrickColor = BrickColor.new("Royal purple")
Part467.CanCollide = false
Part467.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part467.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part467.Material = Enum.Material.Neon
Part467.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part467.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part467.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part467.brickColor = BrickColor.new("Royal purple")
SpecialMesh468.Parent = Part467
SpecialMesh468.Scale = Vector3.new(1, 0.300000012, 0.5)
SpecialMesh468.MeshType = Enum.MeshType.Wedge
Part469.Parent = Model0
Part469.CFrame = CFrame.new(-0.610184669, 2.95239902, -14.3818283, 0.999985635, 0.00162795268, -0.00510686403, 0.0051367972, -0.0189460143, 0.999807417, 0.00153088395, -0.999819279, -0.0189541057)
Part469.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part469.Position = Vector3.new(-0.610184669, 2.95239902, -14.3818283)
Part469.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part469.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part469.Velocity = Vector3.new(1.04164627e-07, 0.00246608187, 1.36883455e-06)
Part469.Size = Vector3.new(0.275000006, 0.410999984, 0.469375014)
Part469.Anchored = true
Part469.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part469.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part469.BrickColor = BrickColor.new("Really black")
Part469.CanCollide = false
Part469.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part469.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part469.Material = Enum.Material.Glass
Part469.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part469.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part469.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part469.brickColor = BrickColor.new("Really black")
SpecialMesh470.Parent = Part469
SpecialMesh470.Scale = Vector3.new(0.5, 0.850000024, 0.699999988)
SpecialMesh470.MeshType = Enum.MeshType.Brick
Part471.Parent = Model0
Part471.CFrame = CFrame.new(-0.613238811, 3.32843637, -13.6493177, -0.999985635, -0.00162807142, -0.00510653527, -0.00513647031, 0.0189459249, 0.999807417, -0.00153100933, 0.999819279, -0.0189540163)
Part471.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part471.Position = Vector3.new(-0.613238811, 3.32843637, -13.6493177)
Part471.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part471.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part471.Velocity = Vector3.new(4.45380195e-08, 0.00246760761, 5.85277007e-07)
Part471.Size = Vector3.new(0.275000006, 0.698124886, 0.638374984)
Part471.Anchored = true
Part471.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part471.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part471.BrickColor = BrickColor.new("Really black")
Part471.CanCollide = false
Part471.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part471.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part471.Material = Enum.Material.Glass
Part471.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part471.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part471.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part471.brickColor = BrickColor.new("Really black")
SpecialMesh472.Parent = Part471
SpecialMesh472.Scale = Vector3.new(0.449999988, 1, 1)
SpecialMesh472.MeshType = Enum.MeshType.Cylinder
Part473.Parent = Model0
Part473.CFrame = CFrame.new(-0.618369102, 3.23987865, -11.0925436, 0.999985635, 0.00162807235, -0.00510680024, 0.0051367362, -0.0189461038, 0.999807417, 0.00153100432, -0.999819279, -0.0189541951)
Part473.Orientation = Vector3.new(-88.8799973, -164.919998, 164.830002)
Part473.Position = Vector3.new(-0.618369102, 3.23987865, -11.0925436)
Part473.Rotation = Vector3.new(-91.0899963, -0.289999992, -0.0899999961)
Part473.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part473.Velocity = Vector3.new(5.85802624e-08, 0.00247293455, 7.69806775e-07)
Part473.Size = Vector3.new(0.25999999, 0.578125, 0.21875)
Part473.Anchored = true
Part473.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part473.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part473.BrickColor = BrickColor.new("Really black")
Part473.CanCollide = false
Part473.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part473.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part473.Material = Enum.Material.Metal
Part473.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part473.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part473.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part473.brickColor = BrickColor.new("Really black")
SpecialMesh474.Parent = Part473
SpecialMesh474.Scale = Vector3.new(0.300000012, 1, 1)
SpecialMesh474.MeshType = Enum.MeshType.Wedge
Part475.Name = "TrueHandle"
Part475.Parent = Model0
Part475.CFrame = CFrame.new(-0.615642607, 3.34541011, -12.1349049, -0.999985635, -0.00162807154, -0.00510656228, -0.00513649778, 0.0189459547, 0.999807417, -0.00153100886, 0.999819279, -0.0189540461)
Part475.Orientation = Vector3.new(-88.8799973, -164.919998, -15.1700001)
Part475.Position = Vector3.new(-0.615642607, 3.34541011, -12.1349049)
Part475.Rotation = Vector3.new(-91.0899963, -0.289999992, 179.909988)
Part475.Color = Color3.new(0.803922, 0.803922, 0.803922)
Part475.Velocity = Vector3.new(4.18465866e-08, 0.00247076293, 5.49908464e-07)
Part475.Size = Vector3.new(0.275000006, 1.73512506, 0.280375004)
Part475.Anchored = true
Part475.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part475.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part475.BrickColor = BrickColor.new("Mid gray")
Part475.CanCollide = false
Part475.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part475.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part475.Material = Enum.Material.Metal
Part475.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part475.RotVelocity = Vector3.new(-2.08372262e-06, 1.18487212e-14, 1.58565669e-07)
Part475.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part475.brickColor = BrickColor.new("Mid gray")
SpecialMesh476.Parent = Part475
SpecialMesh476.Scale = Vector3.new(0.349999994, 1.04999995, 0.5)
SpecialMesh476.MeshType = Enum.MeshType.Brick
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
for i,v in pairs(Model0:GetChildren()) do
	if v:IsA("Part") then
        v.Locked = true
		v.Anchored = false
        v.CanCollide = false
	end
end
if not OldModel then
	Model0:Destroy()
end
 
plr = game:GetService("Players").LocalPlayer
char = playerss
hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
t = char.Torso
h = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
tors = char.Torso
lleg = char["Left Leg"]
root = char.HumanoidRootPart
hed = char.Head
rleg = char["Right Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
it = Instance.new
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
ceuler = CFrame.fromEulerAnglesXYZ
 
local muter = false
local ORGID = 5801326053
local ORVOL = 8
local ORPIT = 0.85
local kan = Instance.new("Sound",char)
kan.Volume = 0
if not NoSound then
	kan.Volume = 6
end
kan.TimePosition = 0
kan.PlaybackSpeed = 1.01
kan.Pitch = 0.9
kan.SoundId = "rbxassetid://5801326053"
kan.Name = "nepnepnep"
kan.Looped = true
kan:Play()
 
local BanishMode = 1
 
function CameraShake(Times, Power)
coroutine.resume(coroutine.create(function()
FV = Instance.new("BoolValue", Character)
FV.Name = "CameraShake"
for ShakeNum=1,Times do
swait()
local ef=Power
  if ef>=1 then
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef),math.random(-ef,ef),math.random(-ef,ef))
  else
   ef=Power*10
   Humanoid.CameraOffset = Vector3.new(math.random(-ef,ef)/10,math.random(-ef,ef)/10,math.random(-ef,ef)/10)
  end	
end
Humanoid.CameraOffset = Vector3.new(0,0,0)
FV:Destroy()
end))
end
 
CamShake=function(Part,Distan,Power,Times) 
local de=Part.Position
for i,v in pairs(workspace:children()) do
 if v:IsA("Model") and v:findFirstChild("Humanoid") then
for _,c in pairs(v:children()) do
if c.ClassName=="Part" and (c.Position - de).magnitude < Distan then
local Noob=v.Humanoid
if Noob~=nil then
if Noob:FindFirstChild("CamShake")==nil then-- and Noob == Character then
--[[local ss=script.CamShake:clone()
ss.Parent=Noob
ss.Power.Value=Power
ss.Times.Value=Times
ss.Disabled=false]]
CameraShake(Times, Power)
end
end
end
end
end
end
end
 
function chatfunc(text,color,typet,font,timeex)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = font
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = color
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = font
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
if typet == "Inverted" then
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = color
elseif typet == "Normal" then
tecks3.TextColor3 = color
tecks3.TextStrokeColor3 = Color3.new(0,0,0)
end
tecks3.Size = UDim2.new(1,0,0.5,0)
coroutine.resume(coroutine.create(function()
while true do
swait(1)
if chaosmode == true then
tecks2.TextColor3 = BrickColor.random().Color
tecks3.TextStrokeColor3 = BrickColor.random().Color
end
end
end))
for i = 0, 74*timeex do
swait()
tecks2.Text = text
tecks3.Text = text
end
local randomrot = math.random(1,2)
if randomrot == 1 then
for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
elseif randomrot == 2 then
	for i = 1, 50 do
swait()
tecks2.Text = text
tecks3.Text = text
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
end
naeeym2:Destroy()
end)
chat()
end
 
FELOADLIBRARY = {}
loadstring(game:GetObjects("rbxassetid://5209815302")[1].Source)()
local Create = FELOADLIBRARY.Create
 
CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			return Part
		end;
	};
 
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
 
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
 
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};
 
	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
 
["LongSound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = char,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 30)
			end))
		end;
	};
 
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};
 
	CreateTemplate = {
 
	};
}
 
 
 
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
local m = Instance.new("Model",char)
 
function CreateParta(parent,transparency,reflectance,material,brickcolor)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = parent
p.Size = Vector3.new(0.05,0.05,0.05)
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.Locked = true
p.BrickColor = brickcolor
p.Material = material
return p
end
 
function CreateMesh(parent,meshtype,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = meshtype
mesh.Scale = Vector3.new(x1*20,y1*20,z1*20)
return mesh
end
 
function CreateSpecialMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.Scale = Vector3.new(x1,y1,z1)
return mesh
end
 
 
function CreateSpecialGlowMesh(parent,meshid,x1,y1,z1)
local mesh = Instance.new("SpecialMesh",parent)
mesh.MeshType = "FileMesh"
mesh.MeshId = meshid
mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
mesh.Scale = Vector3.new(x1,y1,z1)
mesh.VertexColor = Vector3.new(parent.BrickColor.r, parent.BrickColor.g, parent.BrickColor.b)
return mesh
end
 
function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
return weld
end
 
 
 
 
---- WEAPON OR STUFF
local rarmor = CreateParta(m,1,0,"SmoothPlastic",BrickColor.Random())
local weaponweld = CreateWeld(rarmor,tors,rarmor,-3,0,-0.5,math.rad(0),math.rad(0),math.rad(-40),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local MainWeldS = CreateWeld(Part475,rarmor,Part475,0,0,0,math.rad(90),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local A0 = Instance.new("Attachment",rarmor)
A0.Position = Vector3.new(-2.5,0.25,0)
local A1 = Instance.new("Attachment",rarmor)
A1.Position = Vector3.new(-4.7,0.19,0)
tl1 = Instance.new('Trail',rarmor)
tl1.Attachment0 = A0
tl1.Attachment1 = A1
tl1.Texture = "http://www.roblox.com/asset/?id=1978704853"
tl1.LightEmission = 1
tl1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl1.Color = ColorSequence.new(BrickColor.new('Royal purple').Color)
tl1.Lifetime = 0.8
tl1.Enabled = false
 
 
 
 
--------------- WINGS
local mainpart = CreateParta(m,1,0,"SmoothPlastic",BrickColor.Random())
local mwingweld = CreateWeld(mainpart,tors,mainpart,0,-0.5,-0.75,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
 
local wng1a = CreateParta(m,1,0,"Neon",BrickColor.new("Alder"))
CreateMesh(wng1a,"Wedge",0.1,4,4)
CreateWeld(wng1a,mainpart,wng1a,0,-2,-2.5,math.rad(0),math.rad(70),math.rad(5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local wng2a = CreateParta(m,1,0,"Neon",BrickColor.new("Alder"))
CreateMesh(wng2a,"Wedge",0.1,4,4)
CreateWeld(wng2a,mainpart,wng2a,0,-2,-2.5,math.rad(0),math.rad(-70),math.rad(-5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local wng1b = CreateParta(m,1,0,"Neon",BrickColor.new("Alder"))
CreateMesh(wng1b,"Wedge",0.1,1.5,3)
CreateWeld(wng1b,mainpart,wng1b,0,-1,-2.25,math.rad(180),math.rad(-110),math.rad(-5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local wng2b = CreateParta(m,1,0,"Neon",BrickColor.new("Alder"))
CreateMesh(wng2b,"Wedge",0.1,1.5,3)
CreateWeld(wng2b,mainpart,wng2b,0,-1,-2.25,math.rad(180),math.rad(110),math.rad(5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
------
 
 
function lerp(object, newCFrame, alpha)
  return object:lerp(newCFrame, alpha)
end
 
function RemoveOutlines(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  local Part = Create("Part")({
    Parent = Parent,
    Reflectance = Reflectance,
    Transparency = Transparency,
    CanCollide = false,
    Locked = true,
    BrickColor = BrickColor.new(tostring(BColor)),
    Name = Name,
    Size = Size,
    Material = Material
  })
  Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
  RemoveOutlines(Part)
  return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  local Msh = Create(Mesh)({
    Parent = Part,
    Offset = OffSet,
    Scale = Scale
  })
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
  local Weld = Create("Weld")({
    Parent = Parent,
    Part0 = Part0,
    Part1 = Part1,
    C0 = C0,
    C1 = C1
  })
  return Weld
end
 
Player=game:GetService("Players").LocalPlayer
Character=playerss 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
local sine = 0
local change = 1
player=nil 
 
mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 
 
local Stats=Instance.new("BoolValue")
Stats.Name="Stats"
Stats.Parent=Character
local Atk=Instance.new("NumberValue")
Atk.Name="Damage"
Atk.Parent=Stats
Atk.Value=1
local Def=Instance.new("NumberValue")
Def.Name="Defense"
Def.Parent=Stats
Def.Value=1
local Speed=Instance.new("NumberValue")
Speed.Name="Speed"
Speed.Parent=Stats
Speed.Value=1
local Mvmt=Instance.new("NumberValue")
Mvmt.Name="Movement"
Mvmt.Parent=Stats
Mvmt.Value=1
 
local donum=0
 
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=it("Part")
fp.formFactor=formfactor 
fp.Parent=parent
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
NoOutline(fp)
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh=it(Mesh) 
mesh.Parent=part
if Mesh=="SpecialMesh" then
mesh.MeshType=meshtype
if meshid~="nil" then
mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
 
local Color1=Torso.BrickColor
 
local bodvel=Instance.new("BodyVelocity")
local bg=Instance.new("BodyGyro")
 
function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end
 
 
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",char)
sou.Volume = 0
if not NoSound then
	sou.Volume=vol
end
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end
 
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end
 
function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
local l1 = Instance.new("PointLight",w1)
l1.Color = Color3.new(170,0,0)
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really red")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
local l2 = Instance.new("PointLight",w2)
l2.Color = Color3.new(170,0,0)
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
 
 
function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  if hit.Parent == nil then
    return
  end
  local h = hit.Parent:FindFirstChildOfClass("Humanoid")
  for _, v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil or h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("UpperTorso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return
    end
    local c = Create("ObjectValue")({
      Name = "creator",
      Value = game:service("Players").LocalPlayer,
      Parent = h
    })
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CFuncs.Sound.Create(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
	DamageFling(hit.Parent)
      if HitHealth ~= h.Health and HitHealth ~= 0 and 0 >= h.Health and h.Parent.Name ~= "Hologram" then
        print("gained kill")
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
	DamageFling(hit.Parent)
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
 
        HHumanoid.PlatformStand = true
      end), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({
        velocity = angle * knockback,
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      local rl = Create("BodyAngularVelocity")({
        P = 3000,
        maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
        angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    elseif Type == "Normal" then
      local vp = Create("BodyVelocity")({
        P = 500,
        maxForce = Vector3.new(math.huge, 0, math.huge),
        velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
      })
      if knockback > 0 then
        vp.Parent = hit.Parent.Torso
      end
      game:GetService("Debris"):AddItem(vp, 0.5)
    elseif Type == "Up" then
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Normal" then
      local hum = hit.Parent.Humanoid
      if hum ~= nil then
        for i = 0, 2 do
          Effects.Sphere.Create(BrickColor.new("Bright red"), hit.Parent.Torso.CFrame * cn(0, 0, 0) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
        end
      end
    elseif Type == "UpKnock" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      if hum ~= nil then
        hitr = true
      end
      coroutine.resume(coroutine.create(function(HHumanoid)
 
        HHumanoid.PlatformStand = false
        hitr = false
      end), hum)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
      local bodyVelocity = Create("BodyVelocity")({
        velocity = Vector3.new(0, 20, 0),
        P = 5000,
        maxForce = Vector3.new(8000, 8000, 8000),
        Parent = hit
      })
      game:GetService("Debris"):AddItem(bodyVelocity, 1)
    elseif Type == "Snare" then
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Slashnare" then
      Effects.Block.Create(BrickColor.new("Pastel Blue"), hit.Parent.Torso.CFrame * cn(0, 0, 0), 15*4, 15*4, 15*4, 3*4, 3*4, 3*4, 0.07)
      for i = 1, math.random(4, 5) do
        Effects.Sphere.Create(BrickColor.new("Teal"), hit.Parent.Torso.CFrame * cn(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 15, 1, 0, 5, 0, 0.02)
      end
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Spike" then
      CreateBigIceSword(hit.Parent.Torso.CFrame)
      local bp = Create("BodyPosition")({
        P = 2000,
        D = 100,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      game:GetService("Debris"):AddItem(bp, 1)
    elseif Type == "Normal" then
      local BodPos = Create("BodyPosition")({
        P = 50000,
        D = 1000,
        maxForce = Vector3.new(math.huge, math.huge, math.huge),
        position = hit.Parent.Torso.Position,
        Parent = hit.Parent.Torso
      })
      local BodGy = Create("BodyGyro")({
        maxTorque = Vector3.new(400000, 400000, 400000) * math.huge,
        P = 20000,
        Parent = hit.Parent.Torso,
        cframe = hit.Parent.Torso.CFrame
      })
      hit.Parent.Torso.Anchored = true
      coroutine.resume(coroutine.create(function(Part)
        Part.Anchored = false
      end), hit.Parent.Torso)
      game:GetService("Debris"):AddItem(BodPos, 3)
      game:GetService("Debris"):AddItem(BodGy, 3)
    end
    local debounce = Create("BoolValue")({
      Name = "DebounceHit",
      Parent = hit.Parent,
      Value = true
    })
    game:GetService("Debris"):AddItem(debounce, Delay)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = Player
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
  end
end
function ShowDamage(Pos, Text, Time, Color)
  local Rate = 0.1
  local Pos = Pos or Vector3.new(0, 0, 0)
  local Text = Text or ""
  local Time = Time or 2
  local Color = Color or Color3.new(1, 0, 1)
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({
    Size = UDim2.new(3, 0, 3, 0),
    Adornee = EffectPart,
    Parent = EffectPart
  })
  local TextLabel = Create("TextLabel")({
    BackgroundTransparency = 1,
    Size = UDim2.new(1, 0, 1, 0),
    Text = Text,
    TextColor3 = Color3.new(1,1,1),
    TextStrokeColor3 = Color3.new(0,0,0),
    TextStrokeTransparency = 0.25,
    TextScaled = true,
    Font = Enum.Font.Fantasy,
    TextSize = 24,
    Parent = BillboardGui
  })
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      swait(Rate)
      local Percent = Frame / Frames
      TextLabel.Text = Text
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent*2, 0)
    end
    for Frame = 1, Frames do
      swait(Rate)
      local Percent = Frame / Frames
      TextLabel.Text = Text
    end
    for Frame = 1, Frames do
      swait(Rate)
      local Percent = Frame / Frames
      TextLabel.TextTransparency = Percent
      TextLabel.Text = Text
      TextLabel.TextStrokeTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end)
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type,Sound)
  for _, c in pairs(workspace:children()) do
    local hum = c:findFirstChildOfClass("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://" ..Sound, 1)
        end
      end
      local head = c:findFirstChild("UpperTorso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if magni >= mag and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://" ..Sound, 1)
        end
      end
    end
  end
end
 
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
----
 
function dmg(dude)
if dude.Name ~= Character then
local bgf = Instance.new("BodyGyro",dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
--[[local val = Instance.new("BoolValue",dude)
val.Name = "IsHit"]]--
local ds = coroutine.wrap(function()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Part") or v:IsA("MeshPart") then
v.Name = "DEMINISHED"
CFuncs["Sound"].Create("rbxassetid://763718160", v, 0.75, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", v, 1, 1)
for i = 0, 1 do
sphere2(1,"Add",v.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,10,-0.01,BrickColor.new("Royal purple"),BrickColor.new("Royal purple").Color)
end
end
end
wait(0.5)
targetted = nil
CFuncs["Sound"].Create("rbxassetid://62339698", char, 0.25, 0.285)
coroutine.resume(coroutine.create(function()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Accessory") then
 
end
if v:IsA("Humanoid") then
 
end
if v:IsA("CharacterMesh") then
 
end
if v:IsA("Model") then
 
end
if v:IsA("Part") or v:IsA("MeshPart") then
for x, o in pairs(v:GetChildren()) do
if o:IsA("Decal") then
end
end
coroutine.resume(coroutine.create(function()
v.Material = "Neon"
v.CanCollide = false
v.Anchored = false
local bld = Instance.new("ParticleEmitter",v)
bld.LightEmission = 1
bld.Texture = "rbxassetid://363275192" ---284205403
bld.Color = ColorSequence.new(BrickColor.new("Royal purple").Color)
bld.Rate = 500
bld.Lifetime = NumberRange.new(1)
bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,2.25,0),NumberSequenceKeypoint.new(1,0,0)})
bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.8,0.75,0),NumberSequenceKeypoint.new(1,1,0)})
bld.Speed = NumberRange.new(2,5)
bld.VelocitySpread = 50000
bld.Rotation = NumberRange.new(-500,500)
bld.RotSpeed = NumberRange.new(-500,500)
local sbs = Instance.new("BodyPosition", v)
sbs.P = 3000
sbs.D = 1000
sbs.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
sbs.position = v.Position + Vector3.new(math.random(-2,2),10 + math.random(-2,2),math.random(-2,2))
v.Color = BrickColor.new("Royal purple").Color
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait(1)
end
for i = 0, 4 do
slash(math.random(10,50)/10,3,true,"Round","Add","Out",v.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.01,0.0025,0.01),math.random(10,100)/2500,BrickColor.new("White"))
end
block(1,"Add",v.CFrame,vt(0,0,0),0.1,0.1,0.1,BrickColor.new("Royal purple"),BrickColor.new("Royal purple").Color)
CFuncs["Sound"].Create("rbxassetid://782353117", v, 0.25, 1.2)
CFuncs["Sound"].Create("rbxassetid://1192402877", v, 0.5, 0.75)
bld.Speed = NumberRange.new(10,25)
bld.Drag = 5
bld.Acceleration = vt(0,2,0)
wait(0.5)
bld.Enabled = false
wait(4)
coroutine.resume(coroutine.create(function()
for i = 0, 99 do
swait()
end
end))
end))
end))
end
end
end))
end)
ds()
end
end
 
function sphere(bonuspeed,type,pos,scale,value,color)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end
 
function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.Color = color3
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end
 
function block(bonuspeed,type,pos,scale,value,value2,value3,color,color3)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.Color = color3
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Brick"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.CFrame = rng.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end))
end
 
function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,color3,outerpos)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.Color = color3
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "Sphere"
rngm.Scale = vt(x1,y1,z1)
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if rainbowmode == true then
rng.Color = Color3.new(r/255,g/255,b/255)
end
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end
if chaosmode == true then
rng.BrickColor = BrickColor.random()
end
speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end))
end
 
function waveEff(bonuspeed,type,typeoftrans,pos,scale,value,value2,color)
local type = type
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
if typeoftrans == "In" then
rng.Transparency = 1
end
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "FileMesh"
rngm.MeshId = "rbxassetid://20329976"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
end
local randomrot = math.random(1,2)
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
end
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(5*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-5*bonuspeed/2),0)
end
if typeoftrans == "Out" then
rng.Transparency = rng.Transparency + 0.01*bonuspeed
elseif typeoftrans == "In" then
rng.Transparency = rng.Transparency - 0.01*bonuspeed
end
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2*bonuspeed)
end
rng:Destroy()
end))
end
 
function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
local type = type
local rotenable = rotatingop
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = color
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Material = "Neon"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
if typeoftrans == "In" then
rng.Transparency = 1
end
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = pos
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshType = "FileMesh"
if typeofshape == "Normal" then
rngm.MeshId = "rbxassetid://662586858"
elseif typeofshape == "Round" then
rngm.MeshId = "rbxassetid://662585058"
end
rngm.Scale = scale
local scaler2 = 1/10
if type == "Add" then
scaler2 = 1*value/10
elseif type == "Divide" then
scaler2 = 1/value/10
end
local randomrot = math.random(1,2)
coroutine.resume(coroutine.create(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed/10
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed/10
end
if rotenable == true then
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
end
end
if typeoftrans == "Out" then
rng.Transparency = rng.Transparency + 0.01*bonuspeed
elseif typeoftrans == "In" then
rng.Transparency = rng.Transparency - 0.01*bonuspeed
end
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10, 0, scaler2*bonuspeed/10)
end
rng:Destroy()
end))
end
 
rarmor.Attachment.Name = "Attachment2"
function FindNearestTorso(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA("Model") then
			if v:findFirstChild("Torso") or v:findFirstChild("UpperTorso") then
				if v ~= Character then
					if (v.Head.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end
 
 
local dashing = false
local floatmode = false
local OWS = hum.WalkSpeed
local equipped = false
Instance.new("ForceField",char).Visible = false
Humanoid.Animator.Parent = nil
------------------
function equip()
	attack = true
	equipped = true
	hum.WalkSpeed = 0
tl1.Enabled = true
for i = 0, 9 do
end
CFuncs["Sound"].Create("rbxassetid://1368637781", rarmor, 2.5, 1.25)
CFuncs["Sound"].Create("rbxassetid://200633077", rarmor, 1, 1)
CFuncs["Sound"].Create("rbxassetid://169380495", rarmor, 0.5, 1.1)
	for i = 0, 2, 0.1 do
		swait()
hum.CameraOffset = vt(math.random(-5,5)/50,math.random(-5,5)/50,math.random(-5,5)/50)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(10),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-10)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0),math.rad(-20)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-20),math.rad(-30),math.rad(130)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(-13),math.rad(10),math.rad(-10)),.3)
end
hum.CameraOffset = vt(0,0,0)
weaponweld.Part0 = rarm
for i = 0, 2, 0.1 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-40),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(5)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.1,0.1,0)*angles(math.rad(0),math.rad(0),math.rad(40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0),math.rad(-40)),.3)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-0.65)*angles(math.rad(100),math.rad(0),math.rad(-23)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(110),math.rad(0),math.rad(-85)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
hitb.Anchored = true
hitb.CFrame = root.CFrame + root.CFrame.lookVector*4
MagniDamage(hitb, 4, 40,73, 0, "Normal",153092213)
CFuncs["Sound"].Create("rbxassetid://200633196", rarmor, 1, 1.05)
CFuncs["Sound"].Create("rbxassetid://200633108", rarmor, 1.5, 1.025)
CFuncs["Sound"].Create("rbxassetid://234365549", rarmor, 1, 1)
for i = 0, 2, 0.1 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(50),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(-0.1,-0.25,0)*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0),math.rad(50)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(80),math.rad(0),math.rad(70)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(100),math.rad(0),math.rad(-50)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
end
hitb:Destroy()
hum.WalkSpeed = Speed
OWS = hum.WalkSpeed
	attack = false
end
 
function unequip()
	attack = true
	equipped = false
	hum.WalkSpeed = 0
hum.WalkSpeed = 16
OWS = hum.WalkSpeed
tl1.Enabled = false
CFuncs["Sound"].Create("rbxassetid://200633029", rarmor, 1, 1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.5)
weaponweld.Part0 = tors
	attack = false
end
 
------------------
function attackone()
attack = true
hum.WalkSpeed = Speed
for i = 0, 2, 0.1 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-40),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(5)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.1,0.1,0)*angles(math.rad(0),math.rad(0),math.rad(40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0),math.rad(-40)),.3)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-0.65)*angles(math.rad(100),math.rad(0),math.rad(-23)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(110),math.rad(0),math.rad(-85)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
hitb.Anchored = true
hitb.CFrame = root.CFrame + root.CFrame.lookVector*4
MagniDamage(hitb, 4, 24,30, 0, "Normal",153092213)
CFuncs["Sound"].Create("rbxassetid://200633196", rarmor, 1, 1.05)
CFuncs["Sound"].Create("rbxassetid://200633108", rarmor, 1.5, 1.025)
CFuncs["Sound"].Create("rbxassetid://234365549", rarmor, 1, 1)
for i = 0, 1, 0.1 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(50),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(-0.1,-0.25,0)*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0),math.rad(50)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(80),math.rad(0),math.rad(70)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(100),math.rad(0),math.rad(-50)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
end
hitb:Destroy()
attack = false
hum.WalkSpeed = Speed
end
function attacktwo()
attack = true
hum.WalkSpeed = Speed
for i = 0, 1, 0.1 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(20),math.rad(5)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(-0.1,0.1,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-0.65)*angles(math.rad(100),math.rad(0),math.rad(-23)),.3)
LW.C0=clerp(LW.C0,cf(-0.5,0.5,-0.25)*angles(math.rad(90),math.rad(0),math.rad(40)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(180),math.rad(0)),.3)
end
local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
hitb.Anchored = true
hitb.CFrame = root.CFrame + root.CFrame.lookVector*4
MagniDamage(hitb, 4, 24,30, 0, "Normal",153092213)
CFuncs["Sound"].Create("rbxassetid://200633281", rarmor, 1, 1.05)
CFuncs["Sound"].Create("rbxassetid://161006195", rarmor, 1.5, 1.025)
for i = 0, 1, 0.1 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-30),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.2,-0.25,0)*angles(math.rad(10),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0),math.rad(-90)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(80),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(100),math.rad(0),math.rad(-50)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(180),math.rad(70)),.3)
end
attack = false
hum.WalkSpeed = Speed
end
function attackthree()
attack = true
hum.WalkSpeed = Speed
for i = 0, 1, 0.1 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-30),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(5)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(-0.1,0.1,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(53)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-10)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
end
for x = 0, 2 do
CFuncs["Sound"].Create("rbxassetid://200633108", rarmor, 1, 1.05)
CFuncs["Sound"].Create("rbxassetid://234365573", rarmor, 1.5, 1.025)
local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
hitb.Anchored = true
hitb.CFrame = root.CFrame + root.CFrame.lookVector*4
MagniDamage(hitb, 4, 12,15, 0, "Normal",153092213)
for i = 0, 1, 0.6 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(40),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.2,-0.25,0)*angles(math.rad(-2),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(0),math.rad(30),math.rad(90)),.3)
end
for i = 0, 1, 0.6 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(40),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.2,-0.25,0)*angles(math.rad(-2),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(180)),.3)
end
for i = 0, 1, 0.6 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(40),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.2,-0.25,0)*angles(math.rad(-2),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(0),math.rad(-30),math.rad(270)),.3)
end
for i = 0, 1, 0.6 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(40),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.2,-0.25,0)*angles(math.rad(-2),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-20)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
end
attack = false
hum.WalkSpeed = Speed
end
------------------
function spinnyblade()
attack = true
hum.WalkSpeed = 16
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1368583274", root, 4.5, 1)
local bgui = Instance.new("BillboardGui",root)
bgui.Size = UDim2.new(25, 0, 25, 0)
local imgc = Instance.new("ImageLabel",bgui)
imgc.BackgroundTransparency = 1
imgc.ImageTransparency = 1
imgc.Size = UDim2.new(1,0,1,0)
imgc.Image = "rbxassetid://997291547"
imgc.ImageColor3 = Color3.new(0,0.5,1)
local imgc2 = imgc:Clone()
imgc2.Parent = bgui
imgc2.Position = UDim2.new(-0.5,0,-0.5,0)
imgc2.Size = UDim2.new(2,0,2,0)
imgc2.ImageColor3 = Color3.new(0.5,0,1)
for i = 0, 1, 0.1 do
		swait()
bgui.Size = bgui.Size - UDim2.new(0.25, 0, 0.25, 0)
hum.CameraOffset = vt(math.random(-10,10)/50,math.random(-10,10)/50,math.random(-10,10)/50)
	RH.C0=clerp(RH.C0,cf(1,-0.5,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-40),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.1,0.2,-0.3)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-0.65)*angles(math.rad(100),math.rad(0),math.rad(-23)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(110),math.rad(0),math.rad(-85)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
imgc.ImageTransparency = 1
hum.CameraOffset = vt(0,0,0)
for i = 0, 9 do
end
CFuncs["Sound"].Create("rbxassetid://430315987", root, 1.5, 1)
CFuncs["Sound"].Create("rbxassetid://1295446488", root, 3, 1)
for x = 0, 20 do
CFuncs["Sound"].Create("rbxassetid://200633281", rarmor, 1, 1.05)
CFuncs["Sound"].Create("rbxassetid://161006195", rarmor, 1.5, 1.025)
MagniDamage(tors, 10, 60,85, 0, "Normal",153092213)
CFuncs["Sound"].Create("rbxassetid://200632992", rarmor, 1.25, 1)
for i = 0, 1, 0.6 do
		swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*2
root.Velocity = vt(0,0,0)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.5)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
CFuncs["Sound"].Create("rbxassetid://200632992", rarmor, 1.25, 1)
MagniDamage(tors, 10, 60,85, 0, "Normal",153092213)
for i = 0, 1, 0.6 do
		swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*3
root.Velocity = vt(0,0,0)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.5)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
CFuncs["Sound"].Create("rbxassetid://200632992", rarmor, 1.25, 1)
MagniDamage(tors, 10, 60,85, 0, "Normal",153092213)
for i = 0, 1, 0.6 do
		swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*3
root.Velocity = vt(0,0,0)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.5)*angles(math.rad(180),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
CFuncs["Sound"].Create("rbxassetid://200632992", rarmor, 1.25, 1)
MagniDamage(tors, 10, 60,85, 0, "Normal",153092213)
for i = 0, 1, 0.6 do
		swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*3
root.Velocity = vt(0,0,0)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.5)*angles(math.rad(270),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
end
hum.WalkSpeed = 0
for i = 0, 5, 0.1 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-0.6,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(20),math.rad(-12)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.1,0.2,-0.35)*angles(math.rad(10),math.rad(0),math.rad(-40)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(40)),.2)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(110)),.2)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0)*angles(math.rad(45),math.rad(0),math.rad(-20)),.2)
weaponweld.C1=clerp(weaponweld.C1,cf(2,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.2)
end
bgui:Destroy()
attack = false
hum.WalkSpeed = Speed
hum.JumpPower = 50
end
 
function darkspin()
attack = true
hum.WalkSpeed = 16
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1368583274", root, 4.5, 1)
local bgui = Instance.new("BillboardGui",root)
bgui.Size = UDim2.new(25, 0, 25, 0)
local imgc = Instance.new("ImageLabel",bgui)
imgc.BackgroundTransparency = 1
imgc.ImageTransparency = 1
imgc.Size = UDim2.new(1,0,1,0)
imgc.Image = "rbxassetid://997291547"
imgc.ImageColor3 = Color3.new(0,0.5,1)
local imgc2 = imgc:Clone()
imgc2.Parent = bgui
imgc2.Position = UDim2.new(-0.5,0,-0.5,0)
imgc2.Size = UDim2.new(2,0,2,0)
imgc2.ImageColor3 = Color3.new(0.5,0,1)
for i = 0, 1, 0.1 do
		swait()
bgui.Size = bgui.Size - UDim2.new(0.25, 0, 0.25, 0)
hum.CameraOffset = vt(math.random(-10,10)/50,math.random(-10,10)/50,math.random(-10,10)/50)
	RH.C0=clerp(RH.C0,cf(1,-0.5,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-40),math.rad(10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(1),math.rad(20)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.1,0.2,-0.3)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.25,0.5,-0.65)*angles(math.rad(100),math.rad(0),math.rad(-23)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(110),math.rad(0),math.rad(-85)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
imgc.ImageTransparency = 1
hum.CameraOffset = vt(0,0,0)
for i = 0, 9 do
end
CFuncs["Sound"].Create("rbxassetid://430315987", root, 1.5, 1)
CFuncs["Sound"].Create("rbxassetid://1295446488", root, 3, 1)
for x = 0, 20 do
CFuncs["Sound"].Create("rbxassetid://200633281", rarmor, 1, 1.05)
CFuncs["Sound"].Create("rbxassetid://161006195", rarmor, 1.5, 1.025)
MagniDamage(tors, 10, 60,85, 0, "Normal",153092213)
CFuncs["Sound"].Create("rbxassetid://200632992", rarmor, 1.25, 1)
for i = 0, 1, 0.6 do
		swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*6
root.Velocity = vt(0,0,0)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.5)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
CFuncs["Sound"].Create("rbxassetid://200632992", rarmor, 1.25, 1)
MagniDamage(tors, 10, 60,85, 0, "Normal",153092213)
for i = 0, 1, 0.6 do
		swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*4
root.Velocity = vt(0,0,0)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.5)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
CFuncs["Sound"].Create("rbxassetid://200632992", rarmor, 1.25, 1)
MagniDamage(tors, 10, 60,85, 0, "Normal",153092213)
for i = 0, 1, 0.6 do
		swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*5
root.Velocity = vt(0,0,0)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.5)*angles(math.rad(180),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
CFuncs["Sound"].Create("rbxassetid://200632992", rarmor, 1.25, 1)
MagniDamage(tors, 10, 60,85, 0, "Normal",153092213)
for i = 0, 1, 0.6 do
		swait()
root.CFrame = root.CFrame + root.CFrame.lookVector*4
root.Velocity = vt(0,0,0)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0.5)*angles(math.rad(270),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.3)
end
end
hum.WalkSpeed = 0
for i = 0, 5, 0.1 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-20)),.2)
LH.C0=clerp(LH.C0,cf(-1,-0.6,-0.5)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(20),math.rad(-12)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0.1,0.2,-0.35)*angles(math.rad(10),math.rad(0),math.rad(-40)),.2)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(40)),.2)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(110)),.2)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0)*angles(math.rad(45),math.rad(0),math.rad(-20)),.2)
weaponweld.C1=clerp(weaponweld.C1,cf(2,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.2)
end
bgui:Destroy()
attack = false
hum.WalkSpeed = Speed
hum.JumpPower = 50
end
 
function eightbitmegablade()
attack = true
hum.WalkSpeed = 0
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1368583274", larm, 4.5, 1.2)
local OverCut = false
cam.CameraSubject = Humanoid
cam.CameraType = "Scriptable"
coroutine.resume(coroutine.create(function()
while true do
swait()
if OverCut == false then
cam.CFrame = lerp(cam.CFrame, root.CFrame * cf(1, 1.5, -6) * ceuler(math.rad(10), math.rad(170), math.rad(-20)), 0.1)
else
break
end
end
end))
for i = 0, 4, 0.1 do
swait()
sphere2(5,"Add",larm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(1,1,1),-0.01,0.1,-0.01,BrickColor.new("Toothpaste"),BrickColor.new("Toothpaste").Color)
slash(math.random(20,40)/10,5,true,"Round","Add","Out",larm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),vt(0.025,0.001,0.025),-0.025,BrickColor.new("White"))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0),math.rad(-6)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(3)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-15),math.rad(5),math.rad(50)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-13),math.rad(-40),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(170),math.rad(10),math.rad(0)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
end
OverCut = true
local orb = Instance.new("Part", char)
orb.Anchored = true
orb.BrickColor = BrickColor.new("Toothpaste")
orb.CanCollide = false
orb.FormFactor = 3
orb.Name = "Ring"
orb.Material = "Neon"
orb.Size = Vector3.new(1, 1, 1)
orb.Transparency = 0.5
orb.TopSurface = 0
orb.BottomSurface = 0
local orbm = Instance.new("SpecialMesh", orb)
orbm.MeshType = "FileMesh"
orbm.MeshId = "rbxassetid://361629844"
orbm.Scale = vt(30,60,60)
orb.CFrame = root.CFrame*CFrame.new(0,50,0)
for i = 0, 24 do
end
CFuncs["Sound"].Create("rbxassetid://1368637781", orb, 7.5, 1)
local a = Instance.new("Part",workspace)
a.Name = "Direction"	
a.Anchored = true
a.Transparency = 1
a.CanCollide = false
local ray = Ray.new(
orb.CFrame.p,                           -- origin
(mouse.Hit.p - orb.CFrame.p).unit * 500 -- direction
) 
local ignore = orb
local hit, position, normal = workspace:FindPartOnRay(ray, ignore)
a.BottomSurface = 10
a.TopSurface = 10
local distance = (orb.CFrame.p - position).magnitude
a.Size = Vector3.new(0.1, 0.1, 0.1)
a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
for i = 0, 7, 0.1 do
swait()
ray = Ray.new(
orb.CFrame.p,                           -- origin
(mouse.Hit.p - orb.CFrame.p).unit * 500 -- direction
) 
hit, position, normal = workspace:FindPartOnRay(ray, ignore)
distance = (orb.CFrame.p - position).magnitude
a.CFrame = CFrame.new(orb.CFrame.p, position) * CFrame.new(0, 0, 0)
orb.CFrame = a.CFrame
cam.CFrame = lerp(cam.CFrame, root.CFrame * cf(20, 65, 55) * ceuler(math.rad(-20), math.rad(0), math.rad(10)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0),math.rad(-6)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(40),math.rad(3)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(90)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-13),math.rad(-20),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.25,0.5,-0.5)*angles(math.rad(100),math.rad(0),math.rad(60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
end
cam.CameraType = "Custom"
orb.Anchored = false
a:Destroy()
local bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
bv.velocity = orb.CFrame.lookVector*250
bv.Parent = orb
local hitted = false
CFuncs["Sound"].Create("rbxassetid://466493476", orb, 7.5, 0.7)
waveEff(2,"Add","Out",orb.CFrame*CFrame.Angles(math.rad(90),math.rad(math.random(-360,360)),0),vt(5,1,5),0.5,0.1,BrickColor.new("Cyan"))
coroutine.resume(coroutine.create(function()
while true do
swait(2)
if hitted == false and orb.Parent ~= nil then
elseif hitted == true and orb.Parent == nil then
break
end
end
end))
orb.Touched:connect(function(hit) 
if hitted == false and hit.Parent ~= char then
hitted = true
MagniDamage(orb, 30, 72,95, 0, "Normal",153092213)
CFuncs["Sound"].Create("rbxassetid://763717897", orb, 10, 1)
CFuncs["Sound"].Create("rbxassetid://1295446488", orb, 9, 0.75)
for i = 0, 24 do
end
orb.Anchored = true
orb.Transparency = 1
coroutine.resume(coroutine.create(function()
for i = 0, 4, 0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/25,math.random(-10,10)/25,math.random(-10,10)/25)
end
hum.CameraOffset = vt(0,0,0)
end))
wait(10)
orb:Destroy()
end
end)
game:GetService("Debris"):AddItem(orb, 10)
for i = 0, 2, 0.1 do
swait()
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6),math.rad(0),math.rad(-6)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(3)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.4,0)*angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(70)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-13),math.rad(-40),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-80)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
end
attack = false
hum.WalkSpeed = Speed
hum.JumpPower = 50
end
 
function bladespinagain()
attack = true
hum.WalkSpeed = 40
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1368598393", rarmor, 2, 1)
CFuncs["Sound"].Create("rbxassetid://1368583274", rarmor, 2.5, 1)
for x = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://200633108", rarmor, 2, 1.05)
CFuncs["Sound"].Create("rbxassetid://234365573", rarmor, 2.5, 1.025)
for i = 0, 1, 0.6 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
for i = 0, 1, 0.6 do
		swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
end
for i = 0, 1, 0.6 do
		swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(180),math.rad(0)),.3)
end
for i = 0, 1, 0.6 do
		swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(270),math.rad(0)),.3)
end
end
local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
hitb.Anchored = true
hitb.CFrame = root.CFrame + root.CFrame.lookVector*8
hitb.CFrame = hitb.CFrame*CFrame.new(0,1,0)
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
for i = 0, 24 do
end
CFuncs["Sound"].Create("rbxassetid://313205954", root, 4,1)
CFuncs["Sound"].Create("rbxassetid://1368637781", rarmor, 4,1)
CFuncs["Sound"].Create("rbxassetid://763718160", rarmor, 5, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", rarmor, 6, 1)
--CFuncs["Sound"].Create("rbxassetid://1548538202", rarmor, 4,1)
for i = 0, 2, 0.1 do
		swait()
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
hum.CameraOffset = vt(math.random(-10,10)/25,math.random(-10,10)/25,math.random(-10,10)/25)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-20),math.rad(-10)),.9)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.9)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.9)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-80)),.9)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(70)),.9)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-60)),.9)
weaponweld.C1=clerp(weaponweld.C1,cf(2,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.9)
end
hum.CameraOffset = vt(0,0,0)
hitb:Destroy()
attack = false
hum.WalkSpeed = Speed
hum.JumpPower = 50
end
 
function darkbruh()
attack = true
hum.WalkSpeed = hum.WalkSpeed
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1368598393", rarmor, 2, 1)
CFuncs["Sound"].Create("rbxassetid://1368583274", rarmor, 2.5, 1)
for x = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://200633108", rarmor, 2, 1.05)
CFuncs["Sound"].Create("rbxassetid://234365573", rarmor, 2.5, 1.025)
for i = 0, 1, 0.6 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
for i = 0, 1, 0.6 do
		swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
end
for i = 0, 1, 0.6 do
		swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(180),math.rad(0)),.3)
end
end
local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
hitb.Anchored = true
hitb.CFrame = root.CFrame + root.CFrame.lookVector*16
hitb.CFrame = hitb.CFrame*CFrame.new(0,1,0)
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
for i = 0, 24 do
end
CFuncs["Sound"].Create("rbxassetid://313205954", root, 4,1)
CFuncs["Sound"].Create("rbxassetid://1368637781", rarmor, 4,1)
CFuncs["Sound"].Create("rbxassetid://763718160", rarmor, 5, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", rarmor, 6, 1)
--CFuncs["Sound"].Create("rbxassetid://1548538202", rarmor, 4,1)
for i = 0, 2, 0.1 do
		swait()
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
hum.CameraOffset = vt(math.random(-10,10)/25,math.random(-10,10)/25,math.random(-10,10)/25)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-20),math.rad(-10)),.9)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.9)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.9)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-80)),.9)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(70)),.9)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-60)),.9)
weaponweld.C1=clerp(weaponweld.C1,cf(2,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.9)
end
hum.CameraOffset = vt(0,0,0)
hitb:Destroy()
attack = false
hum.WalkSpeed = Speed
hum.JumpPower = 50
end
 
function SCYTHEslash2()
attack = true
hum.WalkSpeed = 90
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1368598393", rarmor, 2, 1)
CFuncs["Sound"].Create("rbxassetid://1368583274", rarmor, 2.5, 1)
for x = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://200633108", rarmor, 2, 1.05)
CFuncs["Sound"].Create("rbxassetid://234365573", rarmor, 2.5, 1.025)
for i = 0, 1, 0.6 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(65),math.rad(0)),.3)
end
end
wait(0.05)
local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
hitb.Anchored = true
hitb.CFrame = root.CFrame + root.CFrame.lookVector*8
hitb.CFrame = hitb.CFrame*CFrame.new(0,1,0)
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
for i = 0, 24 do
end
CFuncs["Sound"].Create("rbxassetid://313205954", root, 4,1)
CFuncs["Sound"].Create("rbxassetid://1368637781", rarmor, 4,1)
CFuncs["Sound"].Create("rbxassetid://763718160", rarmor, 5, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", rarmor, 6, 1)
--CFuncs["Sound"].Create("rbxassetid://1548538202", rarmor, 4,1)
for i = 0, 2, 0.1 do
		swait()
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
hum.CameraOffset = vt(math.random(-10,10)/25,math.random(-10,10)/25,math.random(-10,10)/25)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-20),math.rad(-10)),.9)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.9)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.9)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-80)),.9)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(70)),.9)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-60)),.9)
weaponweld.C1=clerp(weaponweld.C1,cf(2,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.9)
end
hum.CameraOffset = vt(0,0,0)
hitb:Destroy()
attack = false
hum.WalkSpeed = Speed
hum.JumpPower = 50
end
 
function axeslash()
attack = true
hum.WalkSpeed = 100
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1368598393", rarmor, 2, 1)
CFuncs["Sound"].Create("rbxassetid://1368583274", rarmor, 2.5, 1)
for x = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://200633108", rarmor, 2, 1.05)
CFuncs["Sound"].Create("rbxassetid://234365573", rarmor, 2.5, 1.025)
for i = 0, 1, 0.6 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(65),math.rad(0)),.3)
end
end
local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
hitb.Anchored = true
hitb.CFrame = root.CFrame + root.CFrame.lookVector*8
hitb.CFrame = hitb.CFrame*CFrame.new(0,1,0)
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
for i = 0, 24 do
end
CFuncs["Sound"].Create("rbxassetid://313205954", root, 4,1)
CFuncs["Sound"].Create("rbxassetid://1368637781", rarmor, 4,1)
CFuncs["Sound"].Create("rbxassetid://763718160", rarmor, 5, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", rarmor, 6, 1)
--CFuncs["Sound"].Create("rbxassetid://1548538202", rarmor, 4,1)
for i = 0, 2, 0.1 do
		swait()
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
hum.CameraOffset = vt(math.random(-10,10)/25,math.random(-10,10)/25,math.random(-10,10)/25)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-20),math.rad(-10)),.9)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.9)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.9)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-80)),.9)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(70)),.9)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-60)),.9)
weaponweld.C1=clerp(weaponweld.C1,cf(2,0,0)*angles(math.rad(90),math.rad(0),math.rad(-90)),.9)
end
hum.CameraOffset = vt(0,0,0)
hitb:Destroy()
attack = false
hum.WalkSpeed = Speed
hum.JumpPower = 50
end
 
function darkslash()
attack = true
hum.WalkSpeed = 80
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1368598393", rarmor, 2, 1)
CFuncs["Sound"].Create("rbxassetid://1368583274", rarmor, 2.5, 1)
for x = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://200633108", rarmor, 2, 1.05)
CFuncs["Sound"].Create("rbxassetid://234365573", rarmor, 2.5, 1.025)
for i = 0, 1, 0.6 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0)*angles(math.rad(0),math.rad(0),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(60)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(-15),math.rad(180),math.rad(90)),.3)
end
end
wait(0.06)
local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
hitb.Anchored = true
hitb.CFrame = root.CFrame + root.CFrame.lookVector*8
hitb.CFrame = hitb.CFrame*CFrame.new(0,1,0)
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
for i = 0, 24 do
end
CFuncs["Sound"].Create("rbxassetid://313205954", root, 4,1)
CFuncs["Sound"].Create("rbxassetid://1368637781", rarmor, 4,1)
CFuncs["Sound"].Create("rbxassetid://763718160", rarmor, 5, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", rarmor, 6, 1)
--CFuncs["Sound"].Create("rbxassetid://1548538202", rarmor, 4,1)
for i = 0, 2, 0.1 do
		swait()
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
hum.CameraOffset = vt(math.random(-10,10)/25,math.random(-10,10)/25,math.random(-10,10)/25)
	RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-20),math.rad(-10)),.9)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.9)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.9)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(-80)),.9)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(70)),.9)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-60)),.9)
weaponweld.C1=clerp(weaponweld.C1,cf(2,0,0)*angles(math.rad(0),math.rad(180),math.rad(90)),.9)
end
hum.CameraOffset = vt(0,0,0)
hitb:Destroy()
attack = false
hum.WalkSpeed = Speed
hum.JumpPower = 50
end
 
function smack()
attack = true
hum.WalkSpeed = 3
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1368598393", rarmor, 2, 1)
CFuncs["Sound"].Create("rbxassetid://1368583274", rarmor, 2.5, 1)
for x = 0, 1 do
CFuncs["Sound"].Create("rbxassetid://200633108", rarmor, 2, 1.05)
CFuncs["Sound"].Create("rbxassetid://234365573", rarmor, 2.5, 1.025)
for i = 0, 1, 0.6 do
		swait()
	RH.C0=clerp(RH.C0,cf(1,-0.5,-0.5)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-55),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(30),math.rad(0)),.2)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.25,0)*angles(math.rad(-60),math.rad(0),math.rad(-0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(64),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(-60)),.3)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0 + -0 * math.sin(sine / 0.5)),math.rad(-90 + -5 * math.sin(sine / 40)),math.rad(0 + -0.1 * math.sin(sine / 0.5))),.3)
end
end
wait(0.08)
local hitb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.Random())
hitb.Anchored = true
hitb.CFrame = root.CFrame + root.CFrame.lookVector*8
hitb.CFrame = hitb.CFrame*CFrame.new(0,1,0)
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
for i = 0, 24 do
end
CFuncs["Sound"].Create("rbxassetid://313205954", root, 4,1)
CFuncs["Sound"].Create("rbxassetid://1368637781", rarmor, 4,1)
CFuncs["Sound"].Create("rbxassetid://763718160", rarmor, 5, 1.1)
CFuncs["Sound"].Create("rbxassetid://782353443", rarmor, 6, 1)
--CFuncs["Sound"].Create("rbxassetid://1548538202", rarmor, 4,1)
for i = 0, 2, 0.1 do
		swait()
MagniDamage(hitb, 8, 92,158, 0, "Normal",153092213)
hum.CameraOffset = vt(math.random(-10,10)/25,math.random(-10,10)/25,math.random(-10,10)/25)
	RH.C0=clerp(RH.C0,cf(1,-1,-0.5)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(-20),math.rad(-10)),.9)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(15),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(0)),.9)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.9)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.9)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(90),math.rad(0),math.rad(70)),.9)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-60)),.9)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0 + -0 * math.sin(sine / 0.5)),math.rad(-90 + -5 * math.sin(sine / 40)),math.rad(0 + -0.1 * math.sin(sine / 0.5))),.3)
end
hum.CameraOffset = vt(0,0,0)
hitb:Destroy()
attack = false
hum.WalkSpeed = Speed
hum.JumpPower = 50
end
 
function superjump()
attack = true
hum.WalkSpeed = 0
hum.JumpPower = 0
CFuncs["Sound"].Create("rbxassetid://1368637781", root, 7.5, 1)
for i = 0, 2, 0.1 do
		swait()
hum.CameraOffset = vt(math.random(-10,10)/100,math.random(-10,10)/100,math.random(-10,10)/100)
root.Velocity = vt(0,0,0)
	RH.C0=clerp(RH.C0,cf(1,-0.45,-0.45)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(20)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(40)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.5,-1)*angles(math.rad(20),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(4),math.rad(0),math.rad(0)),.4)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(40)),.4)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(10),math.rad(0),math.rad(-40)),.4)
end
CFuncs["Sound"].Create("rbxassetid://477843807", root, 7, 1.05)
local lat1 = Instance.new("Attachment",larm)
lat1.Position = Vector3.new(1,-1,0.5)
local lat2 = Instance.new("Attachment",larm)
lat2.Position = Vector3.new(-1,-1,-0.5)
local rat1 = Instance.new("Attachment",rarm)
rat1.Position = Vector3.new(1,-1,-0.5)
local rat2 = Instance.new("Attachment",rarm)
rat2.Position = Vector3.new(-1,-1,0.5)
local tl1 = Instance.new('Trail',larm)
tl1.Attachment0 = lat1
tl1.Attachment1 = lat2
tl1.Texture = "http://www.roblox.com/asset/?id=1049219073"
tl1.LightEmission = 1
tl1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.05, 0),NumberSequenceKeypoint.new(1, 1)})
tl1.Color = ColorSequence.new(BrickColor.new('Royal purple').Color,BrickColor.new('Royal purple').Color)
tl1.Lifetime = 5
local tl2 = tl1:Clone()
tl2.Attachment0 = rat1
tl2.Attachment1 = rat2
tl2.Parent = rarm
hum.JumpPower = 20
hum.Jump = true
swait()
hum.JumpPower = 0
root.Velocity = vt(0,250,0) + root.CFrame.lookVector*250
for i = 0, 49 do
end
coroutine.resume(coroutine.create(function()
for i = 0, 2, 0.1 do
swait()
hum.CameraOffset = vt(math.random(-10,10)/50,math.random(-10,10)/50,math.random(-10,10)/50)
end
hum.CameraOffset = vt(0,0,0)
wait(3)
tl1.Enabled = false
tl2.Enabled = false
game:GetService("Debris"):AddItem(tl1, 5)
game:GetService("Debris"):AddItem(tl2, 5)
game:GetService("Debris"):AddItem(rat1, 5)
game:GetService("Debris"):AddItem(rat2, 5)
game:GetService("Debris"):AddItem(lat1, 5)
game:GetService("Debris"):AddItem(lat2, 5)
end))
CFuncs["Sound"].Create("rbxassetid://1295446488", root, 10, 1)
for i = 0, 3, 0.1 do
		swait()
RH.C0=clerp(RH.C0,cf(1,-0.45,-0.45)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(-20)),.4)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3),math.rad(0),math.rad(30)),.4)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.75,0)*angles(math.rad(40),math.rad(0),math.rad(0)),.4)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-20),math.rad(0),math.rad(0)),.4)
RW.C0=clerp(RW.C0,cf(1.45,0.5,0.1)*angles(math.rad(-30),math.rad(0),math.rad(20)),.4)
LW.C0=clerp(LW.C0,cf(-1.45,0.5,0.1)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.4)
end
coroutine.resume(coroutine.create(function()
for i = 0, 54 do
swait()
end
end))
attack = false
if equipped == false then
hum.WalkSpeed = 16
else
hum.WalkSpeed = Speed
end
hum.JumpPower = 50
end
------------------
 
 
local attacktype = 1
mouse.Button1Down:connect(function()
if equipped == true then
  if attack == false and attacktype == 1 then
    attacktype = 2
    attackone()
  elseif attack == false and attacktype == 2 then
    attacktype = 3
    attacktwo()
  elseif attack == false and attacktype == 3 then
    attacktype = 1
    attackthree()
  --[[elseif attack == false and attacktype == 4 then
    attacktype = 1
    --attackfour()]]--
  end
end
end)
mouse.KeyDown:connect(function(k)
if k == "f" and attack == false and equipped == false then
	maybe:FindFirstChildOfClass("AlignOrientation").Attachment1 = rarmor.Attachment
    maybe:FindFirstChildOfClass("AlignPosition").Attachment1 = rarmor.Attachment2
 
    rarmor.Attachment2.Position = Vector3.new(-1.5, -0.100, 0)
    rarmor.Attachment.Rotation = Vector3.new(-1.1, 2, 5000)
	equip()
elseif k == "f" and attack == false and equipped == true then
	maybe:FindFirstChildOfClass("AlignOrientation").Attachment1 = playerss.Torso.WaistBackAttachment
    maybe:FindFirstChildOfClass("AlignPosition").Attachment1 = playerss.Torso.WaistBackAttachment
 
    playerss.Torso.WaistBackAttachment.Position = Vector3.new(-0, 0.26, 0.6)
    playerss.Torso.WaistBackAttachment.Orientation = Vector3.new(-4.16, -179.28, 160.7)
   unequip()
end
if k == "y" and attack == false and equipped == false then
	maybe:FindFirstChildOfClass("AlignOrientation").Attachment1 = rarmor.Attachment
    maybe:FindFirstChildOfClass("AlignPosition").Attachment1 = rarmor.Attachment2
 
    rarmor.Attachment2.Position = Vector3.new(-1.25, 0.28, -0)
    rarmor.Attachment.Rotation = Vector3.new(-0, -0, -290)
elseif k == "y" and attack == false and equipped == true then
	maybe:FindFirstChildOfClass("AlignOrientation").Attachment1 = playerss.Torso.WaistBackAttachment
    maybe:FindFirstChildOfClass("AlignPosition").Attachment1 = playerss.Torso.WaistBackAttachment
 
    playerss.Torso.WaistBackAttachment.Position = Vector3.new(-0, 0.26, 0.6)
    playerss.Torso.WaistBackAttachment.Orientation = Vector3.new(-4.16, -179.28, 125.7)
end
if k == "2" and attack == false then
       hum.WalkSpeed = 40
       Speed = 40
       kan.Pitch = 0.92
       kan.SoundId = "rbxassetid://183142252"
		BanishMode = 2
	end
 
if k == "1" and attack == false then
      hum.WalkSpeed = 24
      Speed = 24
      kan.Pitch = 0.91
      kan.SoundId = "rbxassetid://5801326053"
		BanishMode = 1
	end
 
if k == "3" and attack == false then
      hum.WalkSpeed = 13.8
      Speed = 13.8
      kan.Pitch = 0.8
      kan.SoundId = "rbxassetid://4565857495"
		BanishMode = 4
	end
 
if k == "4" and attack == false then
      hum.WalkSpeed = 8
      Speed = 8
      kan.Pitch = 0.9
      kan.SoundId = "rbxassetid://4466439348"
		BanishMode = 5
	end
 
if k == "5" and attack == false then
      hum.WalkSpeed = 35
      Speed = 35
      kan.Pitch = 1
      kan.SoundId = "rbxassetid://264721135"
		BanishMode = 7
	end
 
if k == "r" and attack == false then
superjump()
end
if k == "v" and attack == false then
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(playerss:FindFirstChild("HumanoidRootPart").Position,mouse.Hit.p)
game:GetService("Debris"):AddItem(g1,.05)
playerss:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,3.3,0)
end
plr.Chatted:connect(function(message)
if message == "/sit" and attack == false then
Speed = 0
hum.WalkSpeed = 0
      BanishMode = 2000
    end
 
if message == "/glitch" and attack == false and BanishMode == 5 then
Speed = 8
hum.WalkSpeed = 8
kan.Pitch = 0.6
      BanishMode = 1000
      kan.Pitch = 0.6
wait(0.02)
      kan.Pitch = 0.5
wait(0.02)
kan.Pitch = 0.467
    end
 
if message:sub(1,3) == "id/" then
ORGID = message:sub(4)
kan.TimePosition = 0
kan:Play()
elseif message:sub(1,6) == "pitch/" then
ORPIT = message:sub(7)
elseif message:sub(1,4) == "vol/" then
ORVOL = message:sub(5)
elseif message:sub(1,5) == "skip/" then
kan.TimePositcion = message:sub(6)
end
end)
if equipped == true then
 
if k == "z" and attack == false then
spinnyblade()
end
 
 
if k == "x" and attack == false then
eightbitmegablade()
end
if k == "q" and attack == false and BanishMode == 2 then
axeslash()
end
if k == "q" and attack == false and BanishMode == 4 then
darkslash()
end
if k == "q" and attack == false and BanishMode == 5 then
smack()
end
if k == "e" and attack == false and BanishMode == 4 then
darkspin()
end
if k == "c" and attack == false then
bladespinagain()
end
end
if k == "l" and muter == false then
muter = true
kan.Volume = 0
elseif k == "l" and muter == true then
muter = false
if not NoSound then
	kan.Volume = 1.25
end
end
end)
 
 
idleanim=.25
while true do
swait()
if muter == false then
if not NoSound then
	kan.Volume = ORVOL
end
else
kan.Volume = 6
end
 
  sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-tors.Velocity.Y/6),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(25)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(-25)),.1)
if equipped == false then
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
end
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-tors.Velocity.Y/6),math.rad(0),math.rad(0)),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5),math.rad(0),math.rad(0)),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(55)),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(-55)),.1)
if equipped == false then
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(130),math.rad(0)),.3)
end
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and BanishMode == 1 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-6 + 5 * math.cos(sine / 26)),math.rad(-10 - 6 * math.cos(sine / 24)),math.rad(13 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-13 - 1 * math.cos(sine / 25)),math.rad(10 + 2 * math.cos(sine / 24)),math.rad(10 + 2 * math.cos(sine / 34))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
RH.C0=clerp(RH.C0,cf(1,-0.5 + -0.266 * math.sin(sine / 20)  - 0.05 * math.sin(sine / 40),-0.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6 + 4 * math.cos(sine / 40)),math.rad(0 - 8 * math.cos(sine / 40)),math.rad(-10 + 5 * math.cos(sine / 20) - 6 * math.cos(sine / 40))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + -0.266 * math.sin(sine / 20) - 0.05 * math.sin(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6 - 4 * math.cos(sine / 40)),math.rad(10 - 8 * math.cos(sine / 40)),math.rad(10 - 5 * math.cos(sine / 20) - 3 * math.cos(sine / 40))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.05 * math.cos(sine / 40),1 - 0.266 * math.cos(sine / 20))*angles(math.rad(6 + -5 * math.cos(sine / 20)),math.rad(0 + 5 * math.cos(sine / 40)),math.rad(-20 + 16 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20 - 4 * math.sin(sine / 42)),math.rad(0 - 4 * math.sin(sine / 40)),math.rad(20 - 30 * math.sin(sine / 40))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.3 * math.sin(sine / 20),0.1)*angles(math.rad(-13 + 3 * math.cos(sine / 26)),math.rad(-20 - 3 * math.cos(sine / 24)),math.rad(20 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.3 * math.sin(sine / 20),0.1)*angles(math.rad(-13 - 3 * math.cos(sine / 25)),math.rad(10 + 3 * math.cos(sine / 24)),math.rad(-10 + 5 * math.cos(sine / 34))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(190 + -90 * math.sin(sine / 40)),math.rad(0)),.3)
end
end
if attack==false and BanishMode == 7 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2),math.rad(0 - 7 * math.cos(sine / 40)),math.rad(-30 - 3 * math.cos(sine / 40))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-6 + 5 * math.cos(sine / 26)),math.rad(-10 - 6 * math.cos(sine / 24)),math.rad(13 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-13 - 1 * math.cos(sine / 25)),math.rad(10 + 2 * math.cos(sine / 24)),math.rad(10 + 2 * math.cos(sine / 34))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(190 + -600 * math.sin(sine / 40))),.3)
else
RH.C0=clerp(RH.C0,cf(1,-0.5 + -0.266 * math.sin(sine / 20)  - 0.05 * math.sin(sine / 40),-0.25)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6 + 4 * math.cos(sine / 40)),math.rad(0 - 8 * math.cos(sine / 40)),math.rad(-10 + 5 * math.cos(sine / 20) - 6 * math.cos(sine / 40))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + -0.266 * math.sin(sine / 20) - 0.05 * math.sin(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6 - 4 * math.cos(sine / 40)),math.rad(10 - 8 * math.cos(sine / 40)),math.rad(10 - 5 * math.cos(sine / 20) - 3 * math.cos(sine / 40))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.05 * math.cos(sine / 40),1 - 0.266 * math.cos(sine / 20))*angles(math.rad(6 + -5 * math.cos(sine / 20)),math.rad(0 + 5 * math.cos(sine / 40)),math.rad(10 + 16 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(1+math.random(-10,10)), math.rad(0+math.random(-10,10)), math.rad(0+math.random(-10,10))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.3 * math.sin(sine / 20),0.1)*angles(math.rad(10 + 3 * math.cos(sine / 26)),math.rad(8 - 3 * math.cos(sine / 24)),math.rad(20 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.3 * math.sin(sine / 20),0.1)*angles(math.rad(10 - 3 * math.cos(sine / 25)),math.rad(10 + 3 * math.cos(sine / 24)),math.rad(-10 + 5 * math.cos(sine / 34))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0.5 + 5 * math.cos(sine / 30),0,-1.5)*angles(math.rad(0),math.rad(0),math.rad(190 + -800 * math.sin(sine / 40))),.3)
end
end
if attack==false and BanishMode == 2 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10 - 15 * math.cos(sine / 0.5)),math.rad(5 - 15 * math.cos(sine / 0.5)),math.rad(20 - 20 * math.cos(sine / 0.5))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-6 + 5 * math.cos(sine / 26)),math.rad(-10 - 6 * math.cos(sine / 24)),math.rad(13 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-13 - 1 * math.cos(sine / 25)),math.rad(10 + 2 * math.cos(sine / 24)),math.rad(10 + 2 * math.cos(sine / 34))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6 + 4 * math.cos(sine / 40)),math.rad(0 - 8 * math.cos(sine / 40)),math.rad(10 + -5 * math.cos(sine / 40) - 6 * math.cos(sine / 40))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6 - 4 * math.cos(sine / 40)),math.rad(10 - 8 * math.cos(sine / 40)),math.rad(-10 - -5 * math.cos(sine / 40) - 3 * math.cos(sine / 40))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.06 * math.cos(sine / 40),-0.05 - 0.08 * math.cos(sine / 20))*angles(math.rad(22 + -5 * math.cos(sine / 20)),math.rad(1 + 0.5 * math.cos(sine / 40)),math.rad(-10 + 8 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10 - 15 * math.cos(sine / 0.5)),math.rad(5 - 15 * math.cos(sine / 0.5)),math.rad(20 - 20 * math.cos(sine / 0.5))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.155 * math.sin(sine / 20),0.1)*angles(math.rad(25 + 3 * math.cos(sine / 26)),math.rad(30 - 3 * math.cos(sine / 24)),math.rad(60 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.155 * math.sin(sine / 20),0.1)*angles(math.rad(25 - 3 * math.cos(sine / 25)),math.rad(10 + 3 * math.cos(sine / 24)),math.rad(-10 + 5 * math.cos(sine / 34))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(180 + -360 * math.sin(sine / 40)),math.rad(0)),.3)
end
end
 
if attack==false and BanishMode == 4 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10 - 15 * math.cos(sine / 0.5)),math.rad(5 - 15 * math.cos(sine / 0.5)),math.rad(20 - 20 * math.cos(sine / 0.5))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-6 + 5 * math.cos(sine / 26)),math.rad(-10 - 6 * math.cos(sine / 24)),math.rad(13 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-13 - 1 * math.cos(sine / 25)),math.rad(10 + 2 * math.cos(sine / 24)),math.rad(10 + 2 * math.cos(sine / 34))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
RH.C0=clerp(RH.C0,cf(1,-1 + -0.05 * math.cos(sine / 80)  - 0.02 * math.cos(sine / 80),-0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-6 + 4 * math.cos(sine / 80)),math.rad(10 - 8 * math.cos(sine / 80)),math.rad(10 + -5 * math.cos(sine / 80) - 6 * math.cos(sine / 80))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 80) - 0.02 * math.cos(sine / 80),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-6 - 4 * math.cos(sine / 80)),math.rad(10 - 8 * math.cos(sine / 80)),math.rad(-10 - -5 * math.cos(sine / 80) - 6 * math.cos(sine / 80))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.1 * math.cos(sine / 80),0 - 0.095 * math.cos(sine / 80),-0 - 0.122 * math.cos(sine / 40))*angles(math.rad(12.6 + -5 * math.cos(sine / 40)),math.rad(1 + 0.5 * math.cos(sine / 40)),math.rad(-10 + 8 * math.cos(sine / 80))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(18+math.random(-30,30)), math.rad(0+math.random(-30,30)), math.rad(0+math.random(-30,30))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.2 * math.sin(sine / 40),0.1)*angles(math.rad(20+math.random(-10,10)), math.rad(10+math.random(-10,10)), math.rad(12+math.random(-10,10))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.2 * math.sin(sine / 40),0.1)*angles(math.rad(25 - 3 * math.cos(sine / 25)),math.rad(30 + 3 * math.sin(sine / 40)),math.rad(-10 + 5 * math.cos(sine / 34))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0 + -0.1 * math.sin(sine / 0.5)),math.rad(180 + -90 * math.sin(sine / 40)),math.rad(0 + -0.1 * math.sin(sine / 0.5))),.3)
end
end
 
if attack==false and BanishMode == 5 then
if equipped == false then
kan.Pitch = 0.95
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(-30 + 10 * math.sin(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(1+math.random(-10,10)), math.rad(0+math.random(-10,10)), math.rad(0+math.random(-10,10))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-6 + 5 * math.cos(sine / 26)),math.rad(-10 - 6 * math.cos(sine / 24)),math.rad(13 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-13 - 1 * math.cos(sine / 25)),math.rad(10 + 2 * math.cos(sine / 24)),math.rad(10 + 2 * math.cos(sine / 34))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
kan.Pitch = 0.778
RH.C0=clerp(RH.C0,cf(1,-1 + -0.255 * math.cos(sine / 40)  - 0 * math.cos(sine / 40),-0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-8 + 0 * math.cos(sine / 80)),math.rad(0 - 0 * math.cos(sine / 80)),math.rad(0 + -0 * math.cos(sine / 80) - 0 * math.cos(sine / 40))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + -0.255 * math.cos(sine / 40) - 0 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-8 - 0 * math.cos(sine / 80)),math.rad(0 - 0 * math.cos(sine / 80)),math.rad(0 - -0 * math.cos(sine / 80) - 0 * math.cos(sine / 40))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf( 0 + 0 * math.cos(sine / 40),0 - 0 * math.cos(sine / 40),0 - -0.255 * math.cos(sine / 40))*angles(math.rad(1 + -0.1 * math.cos(sine / 40)),math.rad(1 + 0.1 * math.cos(sine / 40)),math.rad(-1 + 2 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(1+math.random(-10,10)), math.rad(0+math.random(-10,10)), math.rad(0+math.random(-10,10))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.585 + -0.277 * math.sin(sine / 40),0.1)*angles(math.rad(-20+math.random(-10,10)), math.rad(10+math.random(-10,10)), math.rad(-150+math.random(-10,10))),.1)
LW.C0=clerp(LW.C0,cf(-1.45,0.5 + -0.277 * math.sin(sine / 40),0.1)*angles(math.rad(5 - 3 * math.cos(sine / 25)),math.rad(0 + 10 * math.sin(sine / 40)),math.rad(-12 + -11 * math.cos(sine / 40))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0 + -0 * math.sin(sine / 0.5)),math.rad(-90 + -5 * math.sin(sine / 40)),math.rad(0 + -0.1 * math.sin(sine / 0.5))),.3)
end
end
 
if attack==false and BanishMode == 1000 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 20)  - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-0.05 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(30 + 3 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(1+math.random(-10,10)), math.rad(0+math.random(-10,10)), math.rad(0+math.random(-10,10))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-6 + 5 * math.cos(sine / 26)),math.rad(-10 - 6 * math.cos(sine / 24)),math.rad(13 - 5 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-13 - 1 * math.cos(sine / 25)),math.rad(10 + 2 * math.cos(sine / 24)),math.rad(10 + 2 * math.cos(sine / 34))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
RH.C0=clerp(RH.C0,cf(1 + 0 * (1+math.random(-10,10)),-1 + -0.255 * (1+math.random(-10,10))  - 0 * (1+math.random(-10,10)),-0 + 0 * (1+math.random(-10,10)))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-8 + 0 * math.cos(sine / 80)),math.rad(0 - 0 * math.cos(sine / 80)),math.rad(0 + -0 * math.cos(sine / 80) - 0 * math.cos(sine / 40))),.1)
LH.C0=clerp(LH.C0,cf(-1 + 0 * (1+math.random(-10,10)),-1 + -0.255 * (1+math.random(-10,10)) - 0 * (1+math.random(-10,10)),0 + 0 * (1+math.random(-10,10)))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-8 - 0 * math.cos(sine / 80)),math.rad(0 - 0 * math.cos(sine / 80)),math.rad(0 - -0 * math.cos(sine / 80) - 0 * math.cos(sine / 40))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf( 0 + 0 * (1+math.random(-10,10)),0 - 0 * (1+math.random(-10,10)),0 - -0.255 * (1+math.random(-2.5,10)))*angles(math.rad(1 + -0.1 * math.cos(sine / 40)),math.rad(1 + 0.1 * math.cos(sine / 40)),math.rad(-10 + 2 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(1+math.random(-10,10)), math.rad(0+math.random(-10,10)), math.rad(0+math.random(-10,10))),.1)
RW.C0=clerp(RW.C0,cf(1.45 + 0 * (1+math.random(-10,10)),0.585 + -0.277 * (1+math.random(-10,10)),-0.15 - 0 * (1+math.random(-10,10)))*angles(math.rad(-20+math.random(-10,10)), math.rad(10+math.random(-10,10)), math.rad(-150+math.random(-10,10))),.1)
LW.C0=clerp(LW.C0,cf(-1.45 + 0 * (1+math.random(-10,10)),0.5 + -0.277 * (1+math.random(-10,10)),0.1 - 0 * (1+math.random(-10,10)))*angles(math.rad(5 - 3 * math.cos(sine / 25)),math.rad(0 + 10 * math.sin(sine / 40)),math.rad(-12 + -11 * math.cos(sine / 40))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0 + -0 * math.sin(sine / 0.5)),math.rad(-90 + -5 * math.sin(sine / 40)),math.rad(0 + -0.1 * math.sin(sine / 0.5))),.3)
end
end
 
if attack==false and BanishMode == "KAR" then
RH.C0=clerp(RH.C0,cf(1,0.255 + 0.05 * math.cos(sine / 20)  - 0.05 * math.cos(sine / 40),-0.8)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1.45 + 0.05 * math.cos(sine / 20) - 0.02 * math.cos(sine / 40),0)*angles(math.rad(-0),math.rad(-90),math.rad(90))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-1.25 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(0 + 3 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0 - 40 * math.cos(sine / 0.5)),math.rad(2 - 45 * math.cos(sine / 0.5)),math.rad(0 - 40 * math.cos(sine / 0.5))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(-10 + 5 * math.cos(sine / 26)),math.rad(-10 - 6 * math.cos(sine / 24)),math.rad(-20 - 20 * math.cos(sine / 1))),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(180 - 1 * math.cos(sine / 25)),math.rad(10 + 2 * math.cos(sine / 24)),math.rad(20 + 2 * math.cos(sine / 1))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(190 + -90 * math.sin(sine / 40)),math.rad(0)),.3)
end
 
if attack==false and BanishMode == 2000 then
RH.C0=clerp(RH.C0,cf(1,-1.45 + 0.05 * math.cos(sine / 20)  - 0.05 * math.cos(sine / 40),0)*angles(math.rad(10),math.rad(90),math.rad(90))*angles(math.rad(-3 + 2 * math.cos(sine / 40)),math.rad(-15),math.rad(0 + 2 * math.cos(sine / 20))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1.45 + 0.05 * math.cos(sine / 20) - 0.05 * math.cos(sine / 40),0)*angles(math.rad(10),math.rad(-90),math.rad(-90))*angles(math.rad(-3 - 2 * math.cos(sine / 40)),math.rad(1),math.rad(0 - 2 * math.cos(sine / 20))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0 + 0.02 * math.cos(sine / 40),0 - 0.02 * math.cos(sine / 40),-1.75 - 0.05 * math.cos(sine / 20))*angles(math.rad(0 + 2 * math.cos(sine / 20)),math.rad(0 + 2 * math.cos(sine / 40)),math.rad(0 + 3 * math.cos(sine / 40))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0 - 2 * math.cos(sine / 8)),math.rad(0 - 2 * math.cos(sine / 16)),math.rad(0 - 2 * math.cos(sine / 8))),.1)
RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(10 + 5 * math.cos(sine / 26)),math.rad(-10 - 4 * math.cos(sine / 24)),math.rad(20 - 2 * math.cos(sine / 24))),.1)
LW.C0=clerp(LW.C0,cf(-1.4,0.5 + 0.05 * math.cos(sine / 28),0.1)*angles(math.rad(10 - 5 * math.cos(sine / 25)),math.rad(10 + 4 * math.cos(sine / 24)),math.rad(-20 + 2 * math.cos(sine / 24))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(190 + -90 * math.sin(sine / 40)),math.rad(0)),.3)
end
 
elseif torvel>2 and torvel<42 and hitfloor~=nil then
Anim="Walk"
if attack==false and BanishMode == 1 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5 - 5 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 10 * math.cos(sine / 8))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
RH.C0=clerp(RH.C0,cf(1,-0.5 - -0.266 * math.sin(sine / 22),-0.6)*angles(math.rad(-10),math.rad(90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(-4 + 2 * math.sin(sine / 22))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - -0.266 * math.sin(sine / 22),-0)*angles(math.rad(10),math.rad(-90),math.rad(20))*angles(math.rad(0),math.rad(0),math.rad(6 + 2 * math.sin(sine / 22))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,1.1 + 0.34 * math.cos(sine / 22))*angles(math.rad(45 - 2 * math.sin(sine / 22)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 22))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5 + 4 * math.cos(sine / 22)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 10 * math.cos(sine / 22))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.255 * math.sin(sine / 22))*angles(math.rad(-10),math.rad(0),math.rad(15 - 2 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.255 * math.sin(sine / 22))*angles(math.rad(0 + 3 * math.sin(sine / 22)),math.rad(0),math.rad(-5 + 3 * math.sin(sine / 22))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(190 + -90 * math.sin(sine / 40)),math.rad(0)),.3)
end
end
if attack==false and BanishMode == 7 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5 - 5 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 10 * math.cos(sine / 8))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
RH.C0=clerp(RH.C0,cf(1,-0.5 - -0.266 * math.sin(sine / 22),-0.6)*angles(math.rad(-10),math.rad(90),math.rad(-20))*angles(math.rad(0),math.rad(0),math.rad(-4 + 2 * math.sin(sine / 22))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - -0.266 * math.sin(sine / 22),-0)*angles(math.rad(10),math.rad(-90),math.rad(20))*angles(math.rad(0),math.rad(0),math.rad(6 + 2 * math.sin(sine / 22))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,1.1 + 0.34 * math.cos(sine / 22))*angles(math.rad(45 - 2 * math.sin(sine / 22)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 22))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(1+math.random(-10,10)), math.rad(0+math.random(-10,10)), math.rad(0+math.random(-10,10))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.255 * math.sin(sine / 22))*angles(math.rad(-10),math.rad(0),math.rad(15 - 2 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.255 * math.sin(sine / 22))*angles(math.rad(0 + 3 * math.sin(sine / 22)),math.rad(0),math.rad(-5 + 3 * math.sin(sine / 22))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0.5 + 5 * math.cos(sine / 30),0,-1.5)*angles(math.rad(0),math.rad(0),math.rad(190 + -800 * math.sin(sine / 40))),.3)
end
end
if attack==false and BanishMode == 2 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5 - 5 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 10 * math.cos(sine / 8))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
RH.C0=clerp(RH.C0,cf(1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 85 * math.cos(sine / 6))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 85 * math.cos(sine / 6))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.05 + 0.15 * math.cos(sine / 3))*angles(math.rad(15 - 4 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 6))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-6 - 15 * math.cos(sine / 0.5)),math.rad(6 - 15 * math.cos(sine / 0.5)),math.rad(10 - 20 * math.cos(sine / 0.5))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 4.6))*angles(math.rad(-40),math.rad(0),math.rad(25 - 2 * math.cos(sine / 34))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.5 * math.cos(sine / 6))*angles(math.rad(0 + 140 * math.cos(sine / 6)),math.rad(0),math.rad(-5 + 20 * math.cos(sine / 3))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(190 + -360 * math.sin(sine / 40)),math.rad(0)),.3)
end
end
if attack==false and BanishMode == 4 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20+math.random(-30,30)), math.rad(0+math.random(-30,30)), math.rad(0+math.random(-30,30))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 12),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 16)),math.rad(0 + 22 * math.cos(sine / 16))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 12),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 16)),math.rad(0 + 22 * math.cos(sine / 16))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 12))*angles(math.rad(10 + 3 * math.cos(sine / 12)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 16))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(30+math.random(-30,30)), math.rad(0+math.random(-30,30)), math.rad(0+math.random(-30,30))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 16))*angles(math.rad(12 - 12 * math.cos(sine / 16)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 8))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 16))*angles(math.rad(12 + 12 * math.cos(sine / 16)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 8))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(190 + -100 * math.sin(sine / 80)),math.rad(0)),.3)
end
end
 
if attack==false and BanishMode == 5 then
if equipped == false then
kan.Pitch = 0.95
RH.C0=clerp(RH.C0,cf(1,-1 + 0.2 * math.sin(sine / 8),-0.12 + 0.2 * math.cos(sine / 8))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + -40 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + -0.2 * math.sin(sine / 8),-0.12 + -0.2 * math.cos(sine / 8))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + -40 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 4))*angles(math.rad(10 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1),math.rad(0 - root.RotVelocity.Y - 6 * math.sin(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(3+math.random(-10,10)), math.rad(0+math.random(-25,12)), math.rad(0+math.random(-10,10))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + -0.25 * math.sin(sine / 8))*angles(math.rad(12 + 18 * math.cos(sine / 8)),math.rad(0),math.rad(0 + 0 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - -0.25 * math.sin(sine / 8))*angles(math.rad(12 + -18 * math.cos(sine / 8)),math.rad(0),math.rad(0 + 0 * math.cos(sine / 4))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
kan.Pitch = 0.778
RH.C0=clerp(RH.C0,cf(1,-1 + 0.2 * math.sin(sine / 12),-0.12 + 0.2 * math.cos(sine / 12))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 12)),math.rad(0 + -22 * math.cos(sine / 12))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + -0.2 * math.sin(sine / 12),-0.12 + -0.2 * math.cos(sine / 12))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 12)),math.rad(0 + -22 * math.cos(sine / 12))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 6))*angles(math.rad(10 + 3 * math.cos(sine / 6)),math.rad(0 + root.RotVelocity.Y/0.6),math.rad(0 - root.RotVelocity.Y - 6 * math.sin(sine / 12))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(3+math.random(-10,10)), math.rad(0+math.random(-25,12)), math.rad(0+math.random(-10,10))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + -0.25 * math.sin(sine / 12))*angles(math.rad(12 + 18 * math.cos(sine / 12)),math.rad(0),math.rad(0 + 0 * math.cos(sine / 6))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - -0.25 * math.sin(sine / 12))*angles(math.rad(95 + -3 * math.cos(sine / 12)),math.rad(0),math.rad(0 + 0 * math.cos(sine / 6))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(-90 + -2 * math.sin(sine / 80)),math.rad(0)),.3)
end
end
 
if attack==false and BanishMode == 1000 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(20+math.random(-100,100)), math.rad(0+math.random(-100,100)), math.rad(0+math.random(-100,100))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
RH.C0=clerp(RH.C0,cf(1 + 0.2 * (1+math.random(-5,5)),-1 + 0.2 * (1+math.random(-5,5)),0 + 0.1 * (1+math.random(-5,5)))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 18)),math.rad(0 + -22 * math.cos(sine / 18))),.1)
LH.C0=clerp(LH.C0,cf(-1 + 0.2 * (1+math.random(-5,5)),-1 + 0.2 * (1+math.random(-5,5)),0 + -0.1 * (1+math.random(-5,5)))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 18)),math.rad(0 + -22 * math.cos(sine / 18))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(-0 + 0.05 * (1+math.random(-10,10)),-0.05 + 0.05 * (1+math.random(-10,10)),-0.05 + 0.05 * (1+math.random(-10,10)))*angles(math.rad(10 + 3 * math.cos(sine / 9)),math.rad(0 + root.RotVelocity.Y/1),math.rad(0 - root.RotVelocity.Y - -6 * math.sin(sine / 18))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(3+math.random(-100,100)), math.rad(0+math.random(-100,100)), math.rad(0+math.random(-100,100))),.1)
RW.C0=clerp(RW.C0,cf(1.5 + 0.05 * (1+math.random(-20,20)),0.5 + 0.05 * (1+math.random(-20,20)),0 + 0.05 * (1+math.random(-20,20)))*angles(math.rad(-20+math.random(-10,10)), math.rad(0+math.random(-10,10)), math.rad(215+math.random(-10,10))),.1)
LW.C0=clerp(LW.C0,cf(-1.5 + 0.05 * (1+math.random(-20,20)),0.5 + 0.05 * (1+math.random(-20,20)),0 - -0.25 * (1+math.random(-20,20)))*angles(math.rad(12 + -18 * math.cos(sine / 18)),math.rad(0),math.rad(0 + 0 * math.cos(sine / 9))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(-90 + -2 * math.sin(sine / 80)),math.rad(0)),.3)
end
end
 
if attack==false and BanishMode == 3 then
if equipped == false then
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-5 - 5 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 10 * math.cos(sine / 8))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(-3,0,-0.5)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
else
RH.C0=clerp(RH.C0,cf(1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 + 0.05 * math.cos(sine / 4),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 45 * math.cos(sine / 8))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.05,-0.05 + 0.05 * math.cos(sine / 4))*angles(math.rad(5 + 3 * math.cos(sine / 4)),math.rad(0 + root.RotVelocity.Y/1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 8))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-0 - 35 * math.cos(sine / 0.5)),math.rad(10 - 30 * math.cos(sine / 0.5)),math.rad(0 - 25 * math.cos(sine / 0.5))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.25 * math.cos(sine / 8))*angles(math.rad(0 - 50 * math.cos(sine / 8)),math.rad(0),math.rad(5 - 10 * math.cos(sine / 4))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.25 * math.cos(sine / 8))*angles(math.rad(0 + 50 * math.cos(sine / 8)),math.rad(0),math.rad(-5 + 10 * math.cos(sine / 4))),.1)
weaponweld.C1=clerp(weaponweld.C1,cf(0,1,0)*angles(math.rad(0),math.rad(190 + -999 * math.sin(sine / 40)),math.rad(0)),.3)
end
end
elseif torvel>=42 and hitfloor~=nil then
Anim="Run"
if attack==false then
RH.C0=clerp(RH.C0,cf(1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 85 * math.cos(sine / 6))),.1)
LH.C0=clerp(LH.C0,cf(-1,-1 - 0.15 * math.cos(sine / 3),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0 + 85 * math.cos(sine / 6))),.1)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,-0.3,-0.05 + 0.15 * math.cos(sine / 3))*angles(math.rad(15 - 4 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - root.RotVelocity.Y - 10 * math.cos(sine / 6))),.1)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5 + 4 * math.cos(sine / 3)),math.rad(0 + root.RotVelocity.Y*1.5),math.rad(0 - hed.RotVelocity.Y*1.5 + 10 * math.cos(sine / 6))),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0 + 0.5 * math.cos(sine / 6))*angles(math.rad(0 - 140 * math.cos(sine / 6)),math.rad(0),math.rad(5 - 20 * math.cos(sine / 3))),.1)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0 - 0.5 * math.cos(sine / 6))*angles(math.rad(0 + 140 * math.cos(sine / 6)),math.rad(0),math.rad(-5 + 20 * math.cos(sine / 3))),.1)
end
end
end
end
------