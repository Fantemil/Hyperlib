local virtualUser = game:GetService('VirtualUser')
virtualUser:CaptureController()
while true do
wait()
virtualUser:SetKeyDown('0x1f')
wait(2)
virtualUser:SetKeyUp('0x1f')
end