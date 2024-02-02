repeat task.wait() until not not workspace.Scenery.Chests.ChestObjects == true

local ChestObjects = workspace.Scenery.Chests.ChestObjects

local _lt
local _ts = game:GetService('TweenService')
local _lp = game.Players.LocalPlayer
local _hr = (_lp.Character or _lp.CharacterAdded:Wait()):FindFirstChild('HumanoidRootPart')

if not not _hr == false then for _ = 1, 5 do task.wait(1) if _ == 5 and not not _hr == false then return end end end

local function tweenTo(_CFrame, _Duration, _Player)
    _lt = _ts:Create(_Player, TweenInfo.new(_Duration, Enum.EasingStyle.Linear), {CFrame = _CFrame})
    _lt:Play()
    _lt.Completed:Wait()
    task.wait(.5)
end

local _nCF = CFrame.new

local function RUNN3R()
    for _, v in next, ChestObjects:GetDescendants() do
        if v.Name == 'Hitbox' and v.ClassName == 'Part' then
            _hr.CFrame = _nCF(v.CFrame.X, v.CFrame.Y + 80, v.CFrame.Z)
            tweenTo(v.CFrame, 6, _hr)
        end
    end
    RUNN3R('#1485')
end;RUNN3R('#1485') 