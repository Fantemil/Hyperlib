-- (Hat Giver Script - Loaded.)

debounce = true

function onTouched(hit)
if (hit.Parent:findFirstChild("Humanoid") ~= nil and debounce == true) then
debounce = false
h = Instance.new("Hat")
p = Instance.new("Part")
h.Name = "GrandPumpkin"
p.Parent = h
p.Position = hit.Parent:findFirstChild("Head").Position
p.Name = "Handle"
p.formFactor = 0
p.Size = Vector3.new(0,-0.25,0)
p.BottomSurface = 0
p.TopSurface = 0
p.Locked = true
script.Parent.Mesh:clone().Parent = p
h.Parent = hit.Parent
h.AttachmentPos = Vector3.new(0,-0.4,0.2)
wait(5)
debounce = true
end
end

script.Parent.Touched:connect(onTouched)