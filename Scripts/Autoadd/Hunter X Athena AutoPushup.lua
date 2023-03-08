local inputManager = game:GetService('VirtualInputManager')
local keyMap = {
  A = 'A',
  T = 'T',
  Z = 'Z',
  S = 'S',
  W = 'W',
  D = 'D',
  Q = 'Q'
}

inputManager:SendKeyEvent(true, 'J', false, fool)
wait(1)

getgenv().farmer = true -- true,false to turn off and off
while true do
  if getgenv().farmer == true then
    local buttonText = game:GetService("Players").LocalPlayer.PlayerGui.PushupsGui.Pushups.Button.Text
    if keyMap[buttonText] then
      inputManager:SendKeyEvent(true, keyMap[buttonText], false, fool)
    end
  end
  wait()
end