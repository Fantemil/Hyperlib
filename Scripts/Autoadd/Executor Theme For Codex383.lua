
local image = _G.CodexSpooferImage or 17553743137
local text = _G.CodexSpooferText or "Tsploit Executor"
local powered = _G.CodexSpooferPoweredBy or "Powered by Team Tsploit. Make Sure To Join!!!"
CodexUi = game:GetService("RunService"):IsStudio() and game.StarterGui.Codex or game:GetService("CoreGui"):WaitForChild("Codex")
if CodexUi or _G.Codex_gui_Object then
gui = _G.Codex_gui_Object or CodexUi:WaitForChild("gui")
end
if not gui then
return warn("unable to find codex")
end
_G.Codex_gui_Object = gui
function HideForever(object) 
        object.Visible = false
        object:GetPropertyChangedSignal("Visible"):Connect(function()
                object.Visible = false
        end)
end
HideForever(gui:WaitForChild("fade"))
task.wait(0.3)
gui.tabs.editor.contentContainer.inputBox.MultiLine = true
gui.navbar.floatingIcon.codexIcon2.Image = "http://www.roblox.com/asset/?id="..image
gui.navbar.main.codexIcon.Image = "http://www.roblox.com/asset/?id="..image
gui.navbar.main.title.Text = text
gui.navbar.main.title:GetPropertyChangedSignal("Text"):Connect(function()
        gui.navbar.main.title.Text = text
end)
gui.navbar.main.poweredBy:GetPropertyChangedSignal("Text"):Connect(function()
        gui.navbar.main.poweredBy.Text = powered
end)
gui.navbar.main.poweredBy.Text = powered