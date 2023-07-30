local UIntKeys = {[" "] = 0x20, ["a"] = 0x41, ["b"] = 0x42, ["c"] = 0x43, ["d"] = 0x44, ["e"] = 0x45, ["f"] = 0x46, ["g"] = 0x47, ["h"] = 0x48, ["i"] = 0x49, ["j"] = 0x4A, ["k"] = 0x4B, ["l"] = 0x4C, ["m"] = 0x4D, ["n"] = 0x4E, ["o"] = 0x4F, ["p"] = 0x50, ["q"] = 0x51, ["r"] = 0x52, ["s"] = 0x53, ["t"] = 0x54, ["u"] = 0x55, ["v"] = 0x56, ["w"] = 0x57, ["x"] = 0x58, ["y"] = 0x59, ["z"] = 0x5A};
for Int = 1, #workspace.Letters:FindFirstChildOfClass("Folder"):GetChildren(), 1 do
    repeat
        if iswindowactive() == false then
            wait();
        end;
    until iswindowactive() == true;
    local Key = UIntKeys[string.lower(workspace.SelectionBox.Adornee.SurfaceGui.TextLabel.ContentText)];
    keypress(Key);
    wait();
    keyrelease(Key);
    wait();
end;