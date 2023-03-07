-- updated by zade#1337 originally made by serilKilla
-- working as of 18/01/2023
getupvalues = getupvalues or debug.getupvalues
setupvalue = setupvalue or debug.setupvalue
if not (getrawmetatable and getupvalues and setupvalue and (getreg or debug.getregistry)) then
 local h = Instance.new("Hint",workspace)
 h.Text = "Incompatible exploit."
 wait(3)
 h:Destroy()
 return
end
local settings = {refill_at=0, refill_end=60, deliver_at=24, stay_in_kitchen=true}
local doCashier,doBoxer,doCook,doSupplier,doDelivery = true,true,true,false,true
if readfile then
 pcall(function()
  local new = game:GetService("HttpService"):JSONDecode(readfile("PizzaFarm.txt"))
  --corruption?
  local doOverwrite=false
  for k,v in pairs(new) do
   if settings[k]==nil then
    doOverwrite=true
    new[k]=nil
   end
  end
  for k,v in pairs(settings) do
   if new[k]==nil then
    doOverwrite=true
    new[k]=v
   end
  end
  --use input
  if doOverwrite then
   warn("Settings overwritten")
   writefile("PizzaFarm.txt",game:GetService("HttpService"):JSONEncode(new))
  end
  settings = new
 end)
end

if getconnections then
 for _,c in next,getconnections(game:GetService("ScriptContext").Error) do
  c:Disable()
 end
end

local player = game:GetService("Players").LocalPlayer
local ffc = game.FindFirstChild
local RNG = Random.new()
local network
local character,root,humanoid
do
 local reg = (getreg or debug.getregistry)()
 for i=1,#reg do
  local f = reg[i]
  if type(f)=="function" then
      for k,v in next,getupvalues(f) do
    if typeof(v)=="Instance" then
        if v.Name=="CashOut" then
         setupvalue(f,k,{MouseButton1Click={wait=function()end,Wait=function()end}})
        elseif v.Name=="StickerName" then
            setupvalue(f,k,nil)
        end
    end
   end
      if tostring(getfenv(f).script) == "Music" then
          local consts = getconstants(f)
          local loc=false
          for ci,c in next,consts do
              if c == "location changed" then
                  loc=true
              elseif loc and c == "SendData" then
                  setconstant(f,ci,"ExplodeString")
                  break
              end
          end
      end
  elseif type(f)=="table" and rawget(f,"FireServer") and rawget(f,"BindEvents") then
   network = f
  end
 end
end
assert(network,"failed to find network")
--//gui
Create = function(class,parent,props)
 local new = Instance.new(class)
 for k,v in next,props do
  new[k]=v
 end
 new.Parent = parent
 return new
end
gui=Create("ScreenGui",game.CoreGui,{Name="Farm", ZIndexBehavior="Sibling"})
main=Create("Frame",gui,{Name="main", Draggable=true, Active=true, Size=UDim2.new(0,350,0,100), Position=UDim2.new(.335,0,0.02,0), BackgroundColor3=Color3.new(0.098,0.098,0.098)})
topbar=Create("Frame",main,{Name="topbar", Size=UDim2.new(1,0,0.15,0), BackgroundColor3=Color3.new(0.255,0.255,0.255)})
closeBtn=Create("TextButton",topbar,{Name="closeBtn", TextWrapped=true, Size=UDim2.new(0.03,0,1,0), TextColor3=Color3.new(1,1,1), Text="X", BackgroundTransparency=1, 
 Font="GothamSemibold", Position=UDim2.new(0.96,0,0,0), TextSize=14, TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
titleLbl=Create("TextLabel",topbar,{Name="titleLbl", TextWrapped=true, Size=UDim2.new(0.5,0,1,0), Text="Pizza Factory", TextSize=14, Font="GothamSemibold", 
 BackgroundTransparency=1, Position=UDim2.new(0.25,0,0,0), TextColor3=Color3.new(1,1,1), BackgroundColor3=Color3.new(1,1,1)})
saveBtn=Create("ImageButton",topbar,{Name="saveBtn", Image="rbxassetid://55687833", Size=UDim2.new(0.05,0,1,0), Position=UDim2.new(0.01,0,0,0), BackgroundTransparency=1, BackgroundColor3=Color3.new(), Visible=writefile~=nil})
settings_1=Create("Frame",main,{Name="settings", BackgroundTransparency=1, Size=UDim2.new(0.97,0,0.75,0), Position=UDim2.new(0.025,0,0.2,0), BackgroundColor3=Color3.new(1,1,1)})
Layout=Create("UIGridLayout",settings_1,{VerticalAlignment="Center", SortOrder="LayoutOrder", HorizontalAlignment="Center", CellPadding=UDim2.new(0.01,0,0.1,0), CellSize=UDim2.new(0.325,0,0.26,0)})
cashier=Create("Frame",settings_1,{Name="cashier", LayoutOrder=4, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
Label=Create("TextLabel",cashier,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text="Cashier", TextSize=14, TextXAlignment="Left", Font="SourceSans", 
 BackgroundTransparency=1, Position=UDim2.new(0.4,0,0,0), TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
cashierBtn=Create("ImageButton",cashier,{Name="cashierBtn", ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.38,0,1,0), BackgroundColor3=Color3.new(0.392,0.392,0.392)})
cashierSlider=Create("Frame",cashierBtn,{Name="slider", Size=UDim2.new(0.5,-4,1,-4), Position=UDim2.new(doCashier and 0.5 or 0,2,0,2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
kitchen=Create("Frame",settings_1,{Name="kitchen", LayoutOrder=9, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
Label_2=Create("TextLabel",kitchen,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text="Deliver At:", TextSize=14, TextXAlignment="Right", Font="SourceSans", 
 BackgroundTransparency=1, TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
deliverAtBox=Create("TextBox",kitchen,{Name="deliverAtBox", TextWrapped=true, Size=UDim2.new(0.25,0,1,0), Text=tostring(settings.deliver_at), TextSize=50, TextColor3=Color3.new(), 
 Font="Code", Position=UDim2.new(0.62,0,0,0), TextScaled=true, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
refillEnd=Create("Frame",settings_1,{Name="refillEnd", LayoutOrder=8, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
refillEndBox=Create("TextBox",refillEnd,{Name="refillEndBox", TextWrapped=true, Size=UDim2.new(0.25,0,1,0), Text=tostring(settings.refill_end), TextSize=50, TextColor3=Color3.new(), 
 Font="Code", Position=UDim2.new(0.62,0,0,0), TextScaled=true, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
Label_3=Create("TextLabel",refillEnd,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text="Refill End:", TextSize=14, TextXAlignment="Right", Font="SourceSans", 
 BackgroundTransparency=1, TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
refillAt=Create("Frame",settings_1,{Name="refillAt", LayoutOrder=7, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
Label_4=Create("TextLabel",refillAt,{TextWrapped=true, Size=UDim2.new(0.5,0,1,0), Text="Refill At:", TextSize=14, TextXAlignment="Right", Font="SourceSans", 
 BackgroundTransparency=1, TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
refillAtBox=Create("TextBox",refillAt,{Name="refillAtBox", TextWrapped=true, Size=UDim2.new(0.25,0,1,0), Text=tostring(settings.refill_at), TextSize=50, TextColor3=Color3.new(), 
 Font="Code", Position=UDim2.new(0.52,0,0,0), TextScaled=true, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
supplier=Create("Frame",settings_1,{Name="supplier", LayoutOrder=6, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
Label_5=Create("TextLabel",supplier,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text="Supplier", TextSize=14, TextXAlignment="Left", Font="SourceSans", 
 BackgroundTransparency=1, Position=UDim2.new(0.4,0,0,0), TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
supplierBtn=Create("ImageButton",supplier,{Name="supplierBtn", ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.38,0,1,0), BackgroundColor3=Color3.new(0.392,0.392,0.392)})
supplierSlider=Create("Frame",supplierBtn,{Name="slider", Size=UDim2.new(0.5,-4,1,-4), Position=UDim2.new(doSupplier and 0.5 or 0,2,0,2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
delivery=Create("Frame",settings_1,{Name="delivery", LayoutOrder=5, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
Label_6=Create("TextLabel",delivery,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text="Delivery", TextSize=14, TextXAlignment="Left", Font="SourceSans", 
 BackgroundTransparency=1, Position=UDim2.new(0.4,0,0,0), TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
deliveryBtn=Create("ImageButton",delivery,{Name="deliveryBtn", ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.38,0,1,0), BackgroundColor3=Color3.new(0.392,0.392,0.392)})
deliverySlider=Create("Frame",deliveryBtn,{Name="slider", Size=UDim2.new(0.5,-4,1,-4), Position=UDim2.new(doDelivery and 0.5 or 0,2,0,2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
boxer=Create("Frame",settings_1,{Name="boxer", LayoutOrder=2, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
boxerLbl=Create("TextLabel",boxer,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text="Boxer", TextSize=14, TextXAlignment="Left", Font="SourceSans", 
 BackgroundTransparency=1, Position=UDim2.new(0.4,0,0,0), TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
boxerBtn=Create("ImageButton",boxer,{Name="boxerBtn", ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.38,0,1,0), BackgroundColor3=Color3.new(0.392,0.392,0.392)})
boxerSlider=Create("Frame",boxerBtn,{Name="slider", Size=UDim2.new(0.5,-4,1,-4), Position=UDim2.new(doBoxer and 0.5 or 0,2,0,2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
cook=Create("Frame",settings_1,{Name="cook", LayoutOrder=3, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
cookLbl=Create("TextLabel",cook,{TextWrapped=true, Size=UDim2.new(0.6,0,1,0), Text="Cook", TextSize=14, TextXAlignment="Left", Font="SourceSans", 
 BackgroundTransparency=1, Position=UDim2.new(0.4,0,0,0), TextColor3=Color3.new(1,1,1), TextScaled=true, BackgroundColor3=Color3.new(1,1,1)})
cookBtn=Create("ImageButton",cook,{Name="cookBtn", ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.38,0,1,0), BackgroundColor3=Color3.new(0.392,0.392,0.392)})
cookSlider=Create("Frame",cookBtn,{Name="slider", Size=UDim2.new(0.5,-4,1,-4), Position=UDim2.new(doCook and 0.5 or 0,2,0,2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
toggleAll=Create("Frame",settings_1,{Name="toggleAll", LayoutOrder=1, BackgroundTransparency=1, Size=UDim2.new(0,100,0,100), BackgroundColor3=Color3.new(1,1,1)})
switch=Create("Frame",toggleAll,{Name="switch", BackgroundTransparency=1, Size=UDim2.new(0.75,0,1,0), BackgroundColor3=Color3.new(1,1,1)})
allOffBtn=Create("ImageButton",switch,{Name="allOffBtn", ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.5,0,1,0), BackgroundColor3=Color3.new(0.235,0.235,0.235)})
allOnBtn=Create("ImageButton",switch,{Name="allOnBtn", ImageTransparency=1, BorderSizePixel=0, Size=UDim2.new(0.5,0,1,0), Position=UDim2.new(0.5,0,0,0), BackgroundColor3=Color3.new(0.333,0.333,0.333)})
toggleAllSlider=Create("Frame",switch,{Name="slider", Size=UDim2.new(0.1,0,1,4), Position=UDim2.new(0.45,0,0,-2), BorderSizePixel=0, BackgroundColor3=Color3.new(0.784,0.784,0.784)})
messageLbl=Create("TextLabel",topbar,{Name="messageLbl", Size=UDim2.new(0.5,0,1,0), Text="Saved.", TextSize=14, Font="GothamSemibold", BackgroundTransparency=1, 
 Position=UDim2.new(0.07,0,0,0), TextColor3=Color3.new(1,1,1), Visible=false, TextXAlignment="Left"})
camframe=Create("Frame",gui,{Name="camframe", BackgroundTransparency=1, Size=UDim2.new(0,120,0,40), Position=UDim2.new(0.5,-320,0,-38), BackgroundColor3=Color3.new(0.118,0.118,0.118)})
rightCamBtn=Create("ImageButton",camframe,{Name="rightCamBtn", Image="rbxassetid://144168163", Size=UDim2.new(0.333,0,1,0), Rotation=180, Position=UDim2.new(0.666,0,0,0), BackgroundTransparency=1, 
 BackgroundColor3=Color3.new(1,1,1)})
leftCamBtn=Create("ImageButton",camframe,{Name="leftCamBtn", Image="rbxassetid://144168163", Size=UDim2.new(0.333,0,1,0), BackgroundTransparency=1, BackgroundColor3=Color3.new(1,1,1)})
centerCamBtn=Create("ImageButton",camframe,{Name="centerCamBtn", Image="rbxassetid://58282192", Size=UDim2.new(0.333,0,1,0), Position=UDim2.new(0.333,0,0,0), BackgroundTransparency=1, BackgroundColor3=Color3.new(1,1,1)})
creditLbl=Create("TextLabel",main,{Position=UDim2.new(0,0,1,5),Size=UDim2.new(0,100,0,15),BackgroundTransparency=1,TextColor3=Color3.new(1,1,1),Text="by sirelKilla",TextScaled=true,TextStrokeTransparency=.8})

local function toggleCashier(bool)
 if bool~=nil then
  doCashier=bool
 else
  doCashier = not doCashier
 end
 cashierSlider:TweenPosition(UDim2.new(doCashier and 0.5 or 0,2,0,2),nil,"Sine",0.1,true)
end
local function toggleCook(bool)
 if bool~=nil then
  doCook=bool
 else
  doCook = not doCook
 end
 cookSlider:TweenPosition(UDim2.new(doCook and 0.5 or 0,2,0,2),nil,"Sine",0.1,true)
end
local function toggleBoxer(bool)
 if bool~=nil then
  doBoxer=bool
 else
  doBoxer = not doBoxer
 end
 boxerSlider:TweenPosition(UDim2.new(doBoxer and 0.5 or 0,2,0,2),nil,"Sine",0.1,true)
end
local function toggleDelivery(bool)
 if bool~=nil then
  doDelivery=bool
 else
  doDelivery = not doDelivery
 end
 deliverySlider:TweenPosition(UDim2.new(doDelivery and 0.5 or 0,2,0,2),nil,"Sine",0.1,true)
end
local function toggleSupplier(bool)
 if bool~=nil then
  doSupplier=bool
 else
  doSupplier = not doSupplier
 end
 supplierSlider:TweenPosition(UDim2.new(doSupplier and 0.5 or 0,2,0,2),nil,"Sine",0.1,true)
end
cashierBtn.MouseButton1Click:Connect(toggleCashier)
cookBtn.MouseButton1Click:Connect(toggleCook)
boxerBtn.MouseButton1Click:Connect(toggleBoxer)
deliveryBtn.MouseButton1Click:Connect(toggleDelivery)
allOffBtn.InputBegan:Connect(function()
 if game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
  toggleCashier(false)
  toggleCook(false)
  toggleBoxer(false)
  toggleDelivery(false)
  toggleSupplier(false)
  toggleAllSlider:TweenPosition(UDim2.new(0,0,0,-2),nil,"Sine",0.1,true)
  wait(1)
  if toggleAllSlider.Position.X.Scale<.01 then
   toggleAllSlider:TweenPosition(UDim2.new(0.45,0,0,-2),nil,"Sine",0.1,true)
  end
 end
end)
allOnBtn.InputBegan:Connect(function()
 if game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
  toggleCashier(true)
  toggleCook(true)
  toggleBoxer(true)
  toggleDelivery(true)
  toggleSupplier(true)
  toggleAllSlider:TweenPosition(UDim2.new(0.9,0,0,-2),nil,"Sine",0.1,true)
  wait(1)
  if toggleAllSlider.Position.X.Scale>.88 then
   toggleAllSlider:TweenPosition(UDim2.new(0.45,0,0,-2),nil,"Sine",0.1,true)
  end
 end
end)
local oldRefillAt=refillAtBox.Text
refillAtBox:GetPropertyChangedSignal("Text"):Connect(function()
 if #refillAtBox.Text>2 or refillAtBox.Text:match("%D") then
  refillAtBox.Text = oldRefillAt
 end
 oldRefillAt = refillAtBox.Text
end)
refillAtBox.FocusLost:Connect(function()
 if tonumber(refillAtBox.Text) then
  settings.refill_at=tonumber(refillAtBox.Text)
 end
 refillAtBox.Text=tostring(settings.refill_at)
end)
local oldRefillEnd=refillEndBox.Text
refillEndBox:GetPropertyChangedSignal("Text"):Connect(function()
 if #refillEndBox.Text>2 or refillEndBox.Text:match("%D") then
  refillEndBox.Text = oldRefillEnd
 end
 oldRefillEnd = refillEndBox.Text
end)
refillEndBox.FocusLost:Connect(function()
 if tonumber(refillEndBox.Text) then
  settings.refill_end=tonumber(refillEndBox.Text)
 end
 refillEndBox.Text=tostring(settings.refill_end)
end)
local oldDeliverAt=deliverAtBox.Text
deliverAtBox:GetPropertyChangedSignal("Text"):Connect(function()
 if #deliverAtBox.Text>2 or deliverAtBox.Text:match("%D") then
  deliverAtBox.Text = oldDeliverAt
 end
 oldDeliverAt = deliverAtBox.Text
end)
deliverAtBox.FocusLost:Connect(function()
 if tonumber(deliverAtBox.Text) then
  settings.deliver_at=tonumber(deliverAtBox.Text)
 end
 deliverAtBox.Text=tostring(settings.deliver_at)
end)
closeBtn.MouseButton1Click:Connect(function()
    gui:Destroy()
    doCashier,doBoxer,doCook,doSupplier,doDelivery = false,false,false,false,false
end)
closeBtn.MouseEnter:Connect(function() closeBtn.TextColor3=Color3.new(.9,0,0) end)
closeBtn.MouseLeave:Connect(function() closeBtn.TextColor3=Color3.new(1,1,1) end)
saveBtn.MouseButton1Click:Connect(function()
 if writefile and messageLbl.Visible==false then
  writefile("PizzaFarm.txt",game:GetService("HttpService"):JSONEncode(settings))
  messageLbl.Visible=true
  wait(2)
  messageLbl.Visible=false
 end
end)
local cameraArray = {CFrame.new(23,14,65,0.629,0.386,-0.674,-0,0.867,0.497,0.777,-0.313,0.545),CFrame.new(39,15,83,-0.571,0.392,-0.720,-0,0.878,0.478,0.820,0.273,-0.502),CFrame.new(40,20,-38,-0.801,-0.229,0.552,-0,0.923,0.384,-0.598,0.307,-0.739),CFrame.new(51,15,-25,-0.707,0.338,-0.620,0,0.878,0.478,0.707,0.338,-0.620),CFrame.new(47,12,21,0.026,0.323,-0.945,-0,0.946,0.323,0.999,-0.008,0.024)}
local cameraIndex = 0
centerCamBtn.MouseButton1Click:Connect(function()
 cameraIndex = 0
 workspace.CurrentCamera.CameraType = "Custom"
end)
leftCamBtn.MouseButton1Click:Connect(function()
 cameraIndex = cameraIndex - 1
 if cameraIndex < 0 then
  cameraIndex = #cameraArray
 end
 if cameraIndex == 0 then
  workspace.CurrentCamera.CameraType="Custom"
 else
  local cf = cameraArray[cameraIndex]
  workspace.CurrentCamera.CameraType="Scriptable"
  workspace.CurrentCamera:Interpolate(cf,cf+cf.lookVector*10,0.5)
 end
end)
rightCamBtn.MouseButton1Click:Connect(function()
 cameraIndex = cameraIndex + 1
 if cameraIndex > #cameraArray then
  cameraIndex = 0
  workspace.CurrentCamera.CameraType="Custom"
 else
  local cf = cameraArray[cameraIndex]
  workspace.CurrentCamera.CameraType="Scriptable"
  workspace.CurrentCamera:Interpolate(cf,cf+cf.lookVector*10,0.5)
 end
end)

--//subroutines
--local supplyCounts = {TomatoSauce=99,Cheese=99,Sausage=99,Pepperoni=99,Dough=99,Box=99,Dew=99}
--for name in pairs(supplyCounts) do
 --local lbl = workspace.SupplyCounters[name=="Dew" and "CounterMountainDew" or "Counter"..name].a.SG.Counter
 --supplyCounts[name]=tonumber(lbl.Text)
 --lbl.Changed:Connect(function()
  --supplyCounts[name]=tonumber(lbl.Text)
 --end)
--end

local function FindFirstCustomer()
 local children = workspace.Customers:GetChildren()
 for i=1,#children do
  local c = children[i]
  if ffc(c,"Head") and ffc(c,"Humanoid") and c.Head.CFrame.Z<102 and ffc(c.Head,"Dialog") and ffc(c.Head.Dialog,"Correct") and ((c.Humanoid.SeatPart and c.Humanoid.SeatPart.Anchored) or (c.Humanoid.SeatPart==nil and (c.Head.Velocity.Z^2)^.5<.0001)) then
   local dialog = c.Head.Dialog.Correct.ResponseDialog or ''
   local order = "MountainDew"
   if dialog:sub(-8)=="instead." then
    dialog = dialog:sub(-30)
   end
   if dialog:find("pepperoni",1,true) then
    order = "PepperoniPizza"
   elseif dialog:find("sausage",1,true) then
    order = "SausagePizza"
   elseif dialog:find("cheese",1,true) then
    order = "CheesePizza"
   end
   return c,order
  end
 end
end

local boxPtick=0
local boxDtick=0
local function FindBoxes()
 local c,o,f
 local children = workspace.AllBox:GetChildren()
 for i=1,#children do
  local b = children[i]
  if ffc(b,"HasPizzaInside") or ffc(b,"Pizza") then
   if c==nil and b.Name=="BoxClosed" and b.Anchored==false and not b.HasPizzaInside.Value then
    c=b
   elseif o==nil and b.Name=="BoxOpen" and b.Anchored==false and not b.Pizza.Value then
    o=b
   elseif f==nil and (b.Name=="BoxOpen" and b.Pizza.Value) or (b.Name=="BoxClosed" and b.HasPizzaInside.Value) then
    f=b
   end
   if c and o and f then
    return c,o,f
   end
  end
 end
 return c,o,f
end
local function FindBoxingFoods()
 local p,d
 local children = workspace.BoxingRoom:GetChildren()
 for i=1,#children do
  local f = children[i]
  if not f.Anchored then
   if p==nil and f.Name=="Pizza" then
    p=f
   elseif d==nil and f.Name=="Dew" then
    d=f
   end
   if p and d then
    return p,d
   end
  end
 end
 return p,d
end

local orderDict={["3540529228"]="Cheese",["3540530535"]="Sausage",["3540529917"]="Pepperoni",["2512571151"]="Dew",["2512441325"]="Dew"}
local cookingDict = {Cheese=0,Sausage=0,Pepperoni=0,Dew=0}
local cookPtick=0
local cookDtick=0
local cookWarned=false
local boxerWarned=false
local function getOrders()
 local orders={}
 local tempCookingDict = {}
 for i,v in pairs(cookingDict) do tempCookingDict[i]=v end
 local children = workspace.Orders:GetChildren()
 for i=1,#children do
  local o = orderDict[children[i].SG.ImageLabel.Image:match("%d+$")]
  if o then
   if tempCookingDict[o]>0 then
    --ignores oven pizzas, so new orders are priority
    tempCookingDict[o]=tempCookingDict[o]-1
   --elseif (o=="Dew" and #workspace.AllMountainDew:GetChildren()>0) or (supplyCounts[o]>0 and supplyCounts.TomatoSauce>0 and supplyCounts.Cheese>0) then
    --need supplies
    orders[#orders+1]=o
   end
  end
 end
 return orders
end
local function FindFirstDew()
 local children = workspace.AllMountainDew:GetChildren()
 for i=1,#children do
  local d = children[i]
  if (ffc(d,"IsBurned")==nil or d.IsBurned.Value==false) and not d.Anchored then
   return d
  end
 end
end
local function FindBadDew()
 local children = workspace.AllMountainDew:GetChildren()
 for i=1,#children do
  local d = children[i]
  if (ffc(d,"IsBurned")==nil or d.IsBurned.Value==false) and d.Position.X > 53 and d.Position.Z > 50 and not d.Anchored then
   return d
  end
 end
end
local function FindDoughAndWithout(str)
 local goodraw,p,raw,trash
 local children = workspace.AllDough:GetChildren()
 for i = #children, 2, -1 do --shuffle
  local j = RNG:NextInteger(1, i)
  children[j], children[i] = children[i], children[j]
 end
 for i=1,#children do
  local d = children[i]
  if d.Anchored==false and #d:GetChildren()>9 then
   if d.IsBurned.Value or d.HasBugs.Value or d.Cold.Value or (d.BrickColor.Name=="Bright orange" and ffc(d,"XBillboard")) then
    if trash==nil and d.Position.Y > 0 and ((d.Position*Vector3.new(1,0,1))-Vector3.new(47.90, 0, 72.49)).Magnitude > 1 then
     trash=d
    end
   elseif p==nil and d.BrickColor.Name=="Bright orange" then
    p=d
   elseif goodraw==nil and d.Position.X<55 and d.BrickColor.Name=="Brick yellow" and ((str and not ffc(d.SG.Frame,str)) or (str==nil and ffc(d.SG.Frame,"Sausage")==nil and ffc(d.SG.Frame,"Pepperoni")==nil)) then
    --prefers flat
    if d.Mesh.Scale.Y<1.1 then
     goodraw=d
    else
     raw=d
    end
   end
   if goodraw and p and trash then
    return goodraw,p,trash
   end
  end
 end
 return goodraw or raw,p,trash
end
local function getOvenNear(pos)
 local children = workspace.Ovens:GetChildren()
 for i=1,#children do
  if ffc(children[i],"Bottom") and (children[i].Bottom.Position-pos).magnitude < 1.5 then
   return children[i]
  end
 end
end
local function getDoughNear(pos)
 local children = workspace.AllDough:GetChildren()
 for i=1,#children do
  if (children[i].Position-pos).magnitude < 1.5 then
   return children[i]
  end
 end
end
local function isFullyOpen(oven)
 return oven.IsOpen.Value==true and (oven.Door.Meter.RotVelocity.Z^2)^.5<.0001
end

local bcolorToSupply = {["Dark orange"]="Sausage",["Bright blue"]="Pepperoni",["Bright yellow"]="Cheese",["Bright red"]="TomatoSauce",["Dark green"]="Dew",["Brick yellow"]="Dough",["Light stone grey"]="Box",["Really black"]="Dew"}
local supplyButtons = {}
for i,v in ipairs(workspace.SupplyButtons:GetChildren()) do
 supplyButtons[i] = v.Unpressed
end
table.sort(supplyButtons,function(a,b) return a.Position.X < b.Position.X end)
local delTick = 0
local function FindAllDeliveryTools(parent)
 local t = {}
 local children = parent:GetChildren()
 for i=1,#children do
  local v = children[i]
  if v.ClassName=="Tool" and v.Name:match("^%u%d$") and ffc(v,"Handle") and ffc(v,"House") and (parent~=workspace or (v.Handle.Position-Vector3.new(54.45, 4.02, -16.56)).Magnitude < 30) then
   t[#t+1] = v
  end
 end
 return t
end
local function getHousePart(address)
    local houses = workspace.Houses:GetChildren()
    for i=1,#houses do
        local h = houses[i]
        if ffc(h,"Address") and h.Address.Value==address and ffc(h,"GivePizza",true) then
            return ffc(h,"GivePizza",true)
        end
    end
end
local function onCharacterAdded(char)
 if not char then return end
 character=char
 root = character:WaitForChild("HumanoidRootPart")
 humanoid = character:WaitForChild("Humanoid")
 humanoid:SetStateEnabled("FallingDown",false)
end
onCharacterAdded(player.Character or player.CharacterAdded:Wait())
player.CharacterAdded:Connect(onCharacterAdded)

local function smoothTP2(cf)
 local cf0 = (cf-cf.p) + root.Position + Vector3.new(0,4,0)
 local diff = cf.p - root.Position
 local oldg = workspace.Gravity
 workspace.Gravity = 0
 for i=0,diff.Magnitude,0.9 do
  humanoid.Sit=false
  root.CFrame = cf0 + diff.Unit * i
  root.Velocity,root.RotVelocity=Vector3.new(),Vector3.new()
  wait()
 end
 root.CFrame = cf
 workspace.Gravity = oldg
end
local function smoothTP(cf)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cf
end
for _,o in ipairs(workspace.Ovens:GetChildren()) do
 if ffc(o,"Bottom") then
  o.Bottom.CanTouch = false
 end
end
local function tryCook()
 for zz=1,18 do
  local order = getOrders()[1]
  local topping
  if order=="Pepperoni" or order=="Sausage" then topping=order end
  local cookD = FindFirstDew()
  local badD = FindBadDew()
  local raw,cookP,trash
  if topping then
   --pepperoni order avoids sausage dough and vice verca
   raw,cookP,trash = FindDoughAndWithout(topping=="Pepperoni" and "Sausage" or "Pepperoni")
  else
   raw,cookP,trash = FindDoughAndWithout()
  end
  local ovens = workspace.Ovens:GetChildren()
  for i=#ovens,1,-1 do
      if #ovens[i]:GetChildren() < 10 then
          table.remove(ovens,i)
      end
  end
  for i = #ovens, 2, -1 do --shuffle
   local j = RNG:NextInteger(1, i)
   ovens[j], ovens[i] = ovens[i], ovens[j]
  end
  if doCook then
   local didsomething=false
   --move final pizza
   if cookP and tick()-cookPtick>0.8 then
    local oven = getOvenNear(cookP.Position)
    if oven==nil or oven.IsOpen.Value then
     cookPtick=tick()
     didsomething=true
     if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
     network:FireServer("UpdateProperty", cookP, "CFrame", CFrame.new(RNG:NextNumber(56,57),4.1,38))
    end
   end
   if order then
    if order=="Dew" and cookD and tick()-cookDtick>0.8 then
     --move dew if ordered
     cookDtick=tick()
     didsomething=true
     if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
     network:FireServer("UpdateProperty", cookD, "CFrame", CFrame.new(53,4.68,36.5))
    elseif order~="Dew" and raw and raw.Parent and supplyCounts[order]>0 and supplyCounts.TomatoSauce>0 and supplyCounts.Cheese>0 then
     --make pizza
     if raw.Mesh.Scale.Y>1.5 then
      if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
      didsomething=true
      network:FireServer("UpdateProperty", raw, "CFrame", CFrame.new(RNG:NextNumber(29.6,44.6),3.7,RNG:NextNumber(42.5,48.5)))
      wait()
      network:FireServer("SquishDough", raw)
     else
      --make sure it will have an oven
      local oven
      for _,o in ipairs(ovens) do
       if isFullyOpen(o) then
        local other = getDoughNear(o.Bottom.Position)
        if other==nil or not (other.BrickColor.Name=="Bright orange" and ffc(other.SG.Frame,"TomatoSauce") and ffc(other.SG.Frame,"MeltedCheese")) then
         if other then
          --replace mistaken dough
          didsomething=true
          if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
          network:FireServer("UpdateProperty", other, "CFrame", CFrame.new(RNG:NextNumber(29.6,44.6),3.7,RNG:NextNumber(42.5,48.5)))
          wait()
         end
         oven=o
         break
        end
       end
      end
      if oven and raw.Parent==workspace.AllDough then
       --make
       if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
       didsomething=true
       network:FireServer("AddIngredientToPizza", raw,"TomatoSauce")
       network:FireServer("AddIngredientToPizza", raw,"Cheese")
       network:FireServer("AddIngredientToPizza", raw,topping)
       network:FireServer("UpdateProperty", raw, "CFrame", oven.Bottom.CFrame+Vector3.new(0,0.7,0))
       oven.Door.ClickDetector.Detector:FireServer()
       --mark as cooking
       cookingDict[order]=cookingDict[order]+1
       local revoked=false
       spawn(function()
        raw.AncestryChanged:Wait()
        if not revoked then
         cookingDict[order]=cookingDict[order]-1
         revoked=true
        end
       end)
       delay(40, function()
        if not revoked then
         cookingDict[order]=cookingDict[order]-1
         revoked=true
        end
       end)
      end
     end
    end
   end
   --open unnecessarily closed ovens
   for _,o in ipairs(ovens) do
    local bar = o.Door.Meter.SurfaceGui.ProgressBar.Bar
    if o.IsOpen.Value==false and (o.IsCooking.Value==false or (Vector3.new(bar.ImageColor3.r,bar.ImageColor3.g,bar.ImageColor3.b)-Vector3.new(.871,.518,.224)).magnitude>.1) then
     didsomething=true
     if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
     o.Door.ClickDetector.Detector:FireServer()
     break
    end
   end
   --trash
   if badD then
    didsomething=true
    if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
    network:FireServer("UpdateProperty", badD, "CFrame", CFrame.new(RNG:NextNumber(28,30), 1.7, RNG:NextNumber(55,57)))
   end
   if trash and (trash.IsBurned.Value==false or getOvenNear(trash.Position)==nil or getOvenNear(trash.Position).IsOpen.Value) then
    --closed oven breaks if you take burnt out of it
    didsomething=true
    if (root.Position-Vector3.new(36.64, 3.80, 54.11)).magnitude>9 then  smoothTP(CFrame.new(36.64, 3.80, 54.11)) wait(.1) end
    network:FireServer("UpdateProperty", trash, "CFrame", CFrame.new(47.90, 7.00, 72.49, 1, 0, -0, 0, 0, 1, 0, -1, 0))
   end
   if didsomething then wait(0.5) else break end
  else
   break
  end
 end
end
wait(1)
--//main loop
while gui.Parent do
 wait(0.9)
 humanoid.Sit=false
 if RNG:NextInteger(1,20)==1 then
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
        wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
 end
 for zz=1,3 do
  local c,order = FindFirstCustomer()
  if doCashier and c and order then
   local reg = 3
   if c.Head.Position.X < 50 then
       reg = 2
   elseif c.Head.Position.X < 70 then
       reg = 1
   end
   if (root.Position-Vector3.new(50.30, 3.80, 83.24)).magnitude>9 then smoothTP(CFrame.new(50.30, 3.80, 83.24)) wait(.1) end
   network:FireServer("OrderComplete", c, order, workspace["Register"..reg])
   wait(0.3)
  else
   break
  end
 end
 tryCook()
 for zz=1,7 do
  if doBoxer then
   local didsomething = false
   local boxP,boxD = FindBoxingFoods()
   local closedBox,openBox,fullBox = FindBoxes()
   if boxD and tick()-boxDtick>0.8 then
    boxDtick=tick()
    didsomething=true
    if (root.Position-Vector3.new(58.74, 3.80, 12.400)).magnitude>9 then  smoothTP(CFrame.new(58.74, 3.80, 12.40))wait(.1) continue end
    network:FireServer("UpdateProperty", boxD, "CFrame", CFrame.new(63,4.9,-1,-1,0,0,0,1,0,0,0,-1))
   end
   if fullBox then
    if fullBox.Name=="BoxOpen" then
     didsomething=true
     if (root.Position-Vector3.new(58.74, 3.80, 12.400)).magnitude>9 then  smoothTP(CFrame.new(58.74, 3.80, 12.40))wait(.1) continue end
     network:FireServer("CloseBox", fullBox)
     --will be moved next loop
    elseif tick()-boxPtick>0.8 then
     didsomething=true
     if (root.Position-Vector3.new(58.74, 3.80, 12.400)).magnitude>9 then  smoothTP(CFrame.new(58.74, 3.80, 12.40))wait(.1) continue end
     network:FireServer("UpdateProperty", fullBox, "CFrame", CFrame.new(68.2,4.4,RNG:NextNumber(-3,-2),-1,0,0,0,1,0,0,0,-1))
     boxPtick=tick()
    end
   end
   if closedBox and not openBox then
    didsomething=true
    if (root.Position-Vector3.new(58.74, 3.80, 12.400)).magnitude>9 then  smoothTP(CFrame.new(58.74, 3.80, 12.40))wait(.1) continue end
    network:FireServer("UpdateProperty", closedBox, "CFrame", CFrame.new(RNG:NextNumber(62.5,70.5),3.5,RNG:NextNumber(11,25)))
    wait()
    network:FireServer("OpenBox", closedBox)
   end
   if openBox and boxP then
    didsomething=true
    if (root.Position-Vector3.new(58.74, 3.80, 12.400)).magnitude>9 then  smoothTP(CFrame.new(58.74, 3.80, 12.40))wait(.1) continue end
    network:FireServer("UpdateProperty", boxP, "Anchored", true)
    network:FireServer("UpdateProperty", openBox, "Anchored", true)
    wait()
    network:FireServer("UpdateProperty", boxP, "CFrame", openBox.CFrame+Vector3.new(0,-2,0))
    wait()
    network:FireServer("AssignPizzaToBox", openBox, boxP)
   end
   if didsomething then wait(0.5) else break end
  else
   break
  end
 end
 if doDelivery then
  local wstools = FindAllDeliveryTools(workspace)
  if #wstools > 1 or (wstools[1] and ffc(wstools[1].Handle,"X10")) then
   --get tools
   if (root.Position-Vector3.new(54.45, 4.02, -15)).magnitude>9 then smoothTP(CFrame.new(54.45, 4.02, -15)) wait(.1) end
   for i=1,#wstools do
    if wstools[i].Parent == workspace then
     humanoid:EquipTool(wstools[i])
     wait()
    end
   end
   wait(0.3)
   local t = FindAllDeliveryTools(character)
      for i=1,#t do
       t[i].Parent = player.Backpack
      end
      wait(0.1)
      if ffc(character,"RightHand") and ffc(character.RightHand,"RightGrip") then
       character.RightHand.RightGrip:Destroy()
      end
  end
  local bptools = FindAllDeliveryTools(player.Backpack)
  if #bptools >= settings.deliver_at and #bptools > 0 and tick()-delTick > 30 then
   --deliver to houses
   table.sort(bptools,function(a,b)
    a,b=tostring(a),tostring(b)
    if (a:sub(1,1)=="B" and b:sub(1,1)=="B") then
     return a < b
    end
    return a > b
   end)
   local fatass=false
   for i=1,#bptools do
    if not doDelivery then
     break
    end
    humanoid.Sit=false
    local tool = bptools[i]
    local giver = getHousePart(tool.Name)
    local ogp = giver.Position
    if giver then
     if (giver.Position-root.Position).Magnitude > 9 then
      smoothTP(giver.CFrame+Vector3.new(0,7,0))
      if giver.Parent==nil or (giver.Position-ogp).Magnitude>1 then
       giver = getHousePart(tool.Name) or giver
       smoothTP(giver.CFrame+Vector3.new(0,7,0))
      end
      pcall(function() tool.Parent = character end)
      wait(1.2)
      local t = FindAllDeliveryTools(character)
                  for i=1,#t do
                      if t[i] ~= tool then
                       t[i].Parent = player.Backpack
                   end
                  end
      wait(2)
      fatass=false
     else
      if fatass then
       wait(0.2)
      else
       wait(0.7)
      end
      pcall(function() tool.Parent = character end)
      wait()
      fatass=true
     end
    end
   end
   delTick = tick()
  end
 end
 tryCook()
 if doSupplier then
  local refill=false
  for s,c in pairs(supplyCounts) do
   if c <= settings.refill_at then
    refill=true
    break
   end
  end
  if refill then
   local oldcf = root.CFrame
   local waiting = false
   local waitingTick = 0
   local lastBox
   while doSupplier do
    --check if refill is done otherwise hit buttons
    local fulfilled=true
    local boxes = workspace.AllSupplyBoxes:GetChildren()
    for yy=1,2 do
    local needtp=true
    local realc = 0
    for _,btn in ipairs(supplyButtons) do
        local s = bcolorToSupply[btn.BrickColor.Name]
     if supplyCounts[s] < settings.refill_end then
      local count = 0
      if #boxes > 30 then
       for i=1,#boxes do
        local box = boxes[i]
        if bcolorToSupply[box.BrickColor.Name]==s and box.Anchored==false and box.Position.Z < -940 then
         count=count+1
        end
       end
      end
      if count < 2 then
       if needtp then
           needtp=false
        smoothTP(btn.CFrame + Vector3.new(0,3,2.5))
        wait(0.1)
       end
       if not doSupplier then break end
       root.CFrame = btn.CFrame + Vector3.new(0,3,0)
       wait(0.1)
       realc=realc+1
      end
      fulfilled=false
     end
    end
    wait(0.2)
    if yy == 1 and realc < 3 then
        wait(0.6)
    end
    end
    if fulfilled or not (doSupplier) then
     break
    end
    smoothTP(CFrame.new(8,12.4,-1020))
    if not doSupplier then break end
    --check if can finish waiting for boxes to move
    if waiting and (lastBox.Position.X>42 or tick()-waitingTick>6) then
     waiting=false
     if lastBox.Position.X<42 then
      --clear boxes if stuck
      smoothTP(CFrame.new(20.5,8,-35))
      wait(0.1)
      local boxes = workspace.AllSupplyBoxes:GetChildren()
      for i=1,#boxes do
       local box = boxes[i]
       if box.Anchored==false and box.Position.Z>-55 then
        network:FireServer("UpdateProperty", box, "CFrame", CFrame.new(RNG:NextNumber(0,40),RNG:NextNumber(-10,-30),-70))
        wait()
       end
      end
      wait(0.1)
     end
    end
    if not waiting then
     --move boxes
     if root.Position.Z > -900 then smoothTP(CFrame.new(8,12.4,-1020)) end
     wait(0.1)
     lastBox=nil
     local j=0
     local boxes = workspace.AllSupplyBoxes:GetChildren()
     for i=1,#boxes do
      local box = boxes[i]
      if box.Anchored==false and box.Position.Z < -940 and bcolorToSupply[box.BrickColor.Name] and supplyCounts[bcolorToSupply[box.BrickColor.Name]]<settings.refill_end then
       box.CFrame = CFrame.new(38-4.3*math.floor(j/2),5,-7-5*(j%2))
       network:FireServer("UpdateProperty", box, "CFrame", box.CFrame)
       lastBox=box
       j=j+1
       if j>13 then break end
      end
     end
     if lastBox then
      waiting=true
      waitingTick=tick()
     end
    end
   end
   --smoothTP(oldcf)
  end
 end
end