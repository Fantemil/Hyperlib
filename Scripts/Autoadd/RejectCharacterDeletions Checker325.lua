-- Original Script by O_GioXx (FE Checker)
-- Changed to RCD Checker

print('[Checking...]')
wait(1)

-- Function to check if RejectCharacterDeletions is bypassed
local function isRCD_Bypassed()
    -- Check if RejectCharacterDeletions is a BooleanValue in Workspace
    local rcd = game.Workspace:FindFirstChild("RejectCharacterDeletions")
    if rcd and rcd:IsA("BoolValue") then
        return not rcd.Value -- Return true if RejectCharacterDeletions is false (bypassed)
    end
    return false -- Default to false if RejectCharacterDeletions doesn't exist or isn't a BoolValue
end

-- Check if RCD is bypassed
if isRCD_Bypassed() then
    print('Congratulations! You Have Joined The RCD Bypassed Game! :D')
    warn('Enjoy Exploiting! :D')
else
    print('Sorry! RCD Not Bypass :(')
    warn('Try Joining RCD Bypassed Games!')
end