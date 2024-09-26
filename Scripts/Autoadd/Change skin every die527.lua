local AvatarEditorService = game:GetService("AvatarEditorService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local pf = game:GetService("CoreGui").ThemeProvider.PromptFrame
local ButtonOkPos
local hd = Instance.new('HumanoidDescription')
local x,y = 0,0
local lp = game:GetService("Players").LocalPlayer

local function changeColors()
    hd.HeadColor = BrickColor.Random().Color
    hd.TorsoColor = BrickColor.Random().Color
    hd.LeftArmColor = BrickColor.Random().Color
    hd.RightArmColor = BrickColor.Random().Color
    hd.LeftLegColor = BrickColor.Random().Color
    hd.RightLegColor = BrickColor.Random().Color

    AvatarEditorService:PromptSaveAvatar(hd, Enum.HumanoidRigType.R6)

    ButtonOkPos = pf:WaitForChild('Prompt').AlertContents.Footer.Buttons:FindFirstChild('2').AbsolutePosition

    x = ButtonOkPos.x + 15
    y = ButtonOkPos.y + 45

    VirtualInputManager:SendMouseButtonEvent(x, y, 0, true, nil, 0)
    VirtualInputManager:SendMouseButtonEvent(x, y, 0, false, nil, 0)
end

lp.CharacterAdded:Connect(changeColors)
changeColors()