local c = workspace['Glass Bridge'].GlassPane:GetChildren()
for i=1,#c do
if c[i]['1'].CanCollide == true then
c[i]['1'].Transparency = 0
elseif c[i]['2'].CanCollide == true then
c[i]['2'].Transparency = 0
end
end