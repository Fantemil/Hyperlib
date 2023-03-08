--// The GetObjects function to load the core Gui
 game:GetObjects("rbxassetid://02520334413")[1].Parent = game.StarterGui
 game:GetObjects("rbxassetid://02520334413")[1].Parent = game.Players.LocalPlayer.PlayerGui
--// The table to add new menu buttons (Only part you need to edit

menuButtons = {
 
 ["Money Printer ESP"] = {
  ["Name"]   = "Money Printer ESP",
  ["Submenu"]  = true,
  ["Type"]  = "button",
  ["Toggle"]  = true,
  ["Script"]  = function(input1, input2)
  end
 },
 
 ["Shipment ESP GUNS"] = {
  ["Name"]   = "Shipment ESP GUNS",
  ["Submenu"]  = true,
  ["Type"]  = "button",
  ["Toggle"]  = true,
  ["Script"]  = function(input1, input2)
  end
 },
 
 ["Shipment ESP OTHER"] = {
  ["Name"]   = "Shipment ESP OTHER",
  ["Submenu"]  = true,
  ["Type"]  = "button",
  ["Toggle"]  = true,
  ["Script"]  = function(input1, input2)
  end
 },
 --[[
 ["Example Label"] = {
  ["Name"]   = "Example Label",
  ["Text"]   = "undefined_text",
  ["Type"]  = "label",
 },
 
 ["Example Text"] = {
  ["Name"]   = "Example Text",
  ["Text"]   = "undefined_text",
  ["Type"]  = "text",
  ["Script"]  = function(input1, input2)
   print(input1)
  end
 }
 ]]
}

submenuButtons = {
 
 ["Standard Printers"] = {
  ["Name"]   = "Standard Printers",
  ["Parent"]  = "Money Printer ESP",
  ["Toggle"]  = true,
  ["Type"]  = "button",
  ["Script"]  = function(input1, input2)
   if workspace:FindFirstChild("t") then
    workspace.t:Destroy()
    for i,v in pairs(workspace.MoneyPrinters:GetChildren()) do
     if v.Name == "Money Printer Basic" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "Main" then
        for i,k in pairs(b:GetChildren()) do
         if k:IsA("SurfaceGui") then
          if k.AlwaysOnTop == true then
           k:Destroy()
          end
         elseif k:IsA("BillboardGui") then
          k:Destroy()
         end
        end
       end
      end
     end
    end  
   else
    local toggled = Instance.new("BoolValue",workspace)
    toggled.Name = "t"
    for i,v in pairs(workspace.MoneyPrinters:GetChildren()) do
     if v.Name == "Money Printer Basic" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "Main" then
           
        local bill = Instance.new("BillboardGui", b)
        bill.AlwaysOnTop = true
        bill.StudsOffset = Vector3.new(0,5,0)
        bill.Adornee = b
        bill.Size = UDim2.new(2,1,2)
         
        local text = Instance.new("TextLabel", bill)
        text.BackgroundTransparency = 1
        text.Size = UDim2.new(1,0,1,0)
        text.Text = "Basic Printer | "..b.SurfaceGui["2"].Text
        text.TextColor3 = Color3.fromRGB(255,255,255)
        text.Font = "ArialBold"
        text.TextSize = 15
      
        local surface1 = Instance.new("SurfaceGui",b)
        surface1.Face = "Top"
        surface1.AlwaysOnTop = true
        local frame1 = Instance.new("Frame",surface1)
        frame1.Size = UDim2.new(1,0,1,0)
        frame1.BackgroundTransparency = 0.2
           
        local surface2 = Instance.new("SurfaceGui",b)
        surface2.Face = "Bottom"
        surface2.AlwaysOnTop = true
        local frame2 = Instance.new("Frame",surface2)
        frame2.Size = UDim2.new(1,0,1,0)
        frame2.BackgroundTransparency = 0.2
           
        local surface3 = Instance.new("SurfaceGui",b)
        surface3.Face = "Left"
        surface3.AlwaysOnTop = true
        local frame3 = Instance.new("Frame",surface3)
        frame3.Size = UDim2.new(1,0,1,0)
        frame3.BackgroundTransparency = 0.2
           
        local surface4 = Instance.new("SurfaceGui",b)
        surface4.Face = "Right"
        surface4.AlwaysOnTop = true
        local frame4 = Instance.new("Frame",surface4)
        frame4.Size = UDim2.new(1,0,1,0)
        frame4.BackgroundTransparency = 0.2
           
        local surface5 = Instance.new("SurfaceGui",b)
        surface5.Face = "Front"
        surface5.AlwaysOnTop = true
        local frame5 = Instance.new("Frame",surface5)
        frame5.Size = UDim2.new(1,0,1,0)
        frame5.BackgroundTransparency = 0.2
           
        local surface6 = Instance.new("SurfaceGui",b)
        surface6.Face = "Back"
        surface6.AlwaysOnTop = true
        local frame6 = Instance.new("Frame",surface6)
        frame6.Size = UDim2.new(1,0,1,0)
        frame6.BackgroundTransparency = 0.2
       end
      end
     end
    end
   end
  end 
 },
 
 ["Advanced Printers"] = {
  ["Name"]   = "Advanced Printers",
  ["Parent"]  = "Money Printer ESP",
  ["Toggle"]  = true,
  ["Type"]  = "button",
  ["Script"]  = function(input1, input2)
   if workspace:FindFirstChild("tb") then
    workspace.tb:Destroy()
    for i,v in pairs(workspace.MoneyPrinters:GetChildren()) do
     if v.Name == "Money Printer Advanced" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "Main" then
        for i,k in pairs(b:GetChildren()) do
         if k:IsA("SurfaceGui") then
          if k.AlwaysOnTop == true then
           k:Destroy()
          end
         elseif k:IsA("BillboardGui") then
          k:Destroy()
         end
        end
       end
      end
     end
    end  
   else
    local toggled = Instance.new("BoolValue",workspace)
    toggled.Name = "tb"
    for i,v in pairs(workspace.MoneyPrinters:GetChildren()) do
     if v.Name == "Money Printer Advanced" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "Main" then
           
        local bill = Instance.new("BillboardGui", b)
        bill.AlwaysOnTop = true
        bill.StudsOffset = Vector3.new(0,5,0)
        bill.Adornee = b
        bill.Size = UDim2.new(2,1,2)
         
        local text = Instance.new("TextLabel", bill)
        text.BackgroundTransparency = 1
        text.Size = UDim2.new(1,0,1,0)
        text.Text = "Advanced Printer | "..b.SurfaceGui["2"].Text
        text.TextColor3 = Color3.fromRGB(255,0,0)
        text.Font = "ArialBold"
        text.TextSize = 15
      
        local surface1 = Instance.new("SurfaceGui",b)
        surface1.Face = "Top"
        surface1.AlwaysOnTop = true
        local frame1 = Instance.new("Frame",surface1)
        frame1.Size = UDim2.new(1,0,1,0)
        frame1.BackgroundTransparency = 0.2
        frame1.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface2 = Instance.new("SurfaceGui",b)
        surface2.Face = "Bottom"
        surface2.AlwaysOnTop = true
        local frame2 = Instance.new("Frame",surface2)
        frame2.Size = UDim2.new(1,0,1,0)
        frame2.BackgroundTransparency = 0.2
        frame2.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface3 = Instance.new("SurfaceGui",b)
        surface3.Face = "Left"
        surface3.AlwaysOnTop = true
        local frame3 = Instance.new("Frame",surface3)
        frame3.Size = UDim2.new(1,0,1,0)
        frame3.BackgroundTransparency = 0.2
        frame3.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface4 = Instance.new("SurfaceGui",b)
        surface4.Face = "Right"
        surface4.AlwaysOnTop = true
        local frame4 = Instance.new("Frame",surface4)
        frame4.Size = UDim2.new(1,0,1,0)
        frame4.BackgroundTransparency = 0.2
        frame4.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface5 = Instance.new("SurfaceGui",b)
        surface5.Face = "Front"
        surface5.AlwaysOnTop = true
        local frame5 = Instance.new("Frame",surface5)
        frame5.Size = UDim2.new(1,0,1,0)
        frame5.BackgroundTransparency = 0.2
        frame5.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface6 = Instance.new("SurfaceGui",b)
        surface6.Face = "Back"
        surface6.AlwaysOnTop = true
        local frame6 = Instance.new("Frame",surface6)
        frame6.Size = UDim2.new(1,0,1,0)
        frame6.BackgroundTransparency = 0.2
        frame6.BackgroundColor3 = Color3.fromRGB(255,0,0)
       end
      end
     end
    end
   end
  end 
 },
  
  ["Bloxy Cola Shipment"] = {
  ["Name"]   = "Bloxy Cola Shipment",
  ["Parent"]  = "Shipment ESP OTHER",
  ["Toggle"]  = true,
  ["Type"]  = "button",
  ["Script"]  = function(input1, input2)
   if workspace:FindFirstChild("x") then
    workspace.x:Destroy()
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "Bloxy Cola Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
        for i,k in pairs(b:GetChildren()) do
         if k:IsA("SurfaceGui") then
          if k.AlwaysOnTop == true then
           k:Destroy()
          end
         elseif k:IsA("BillboardGui") then
          k:Destroy()
         end
        end
       end
      end
     end
    end  
   else
    local toggled = Instance.new("BoolValue",workspace)
    toggled.Name = "x"
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "Bloxy Cola Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
           
        local bill = Instance.new("BillboardGui", b)
        bill.AlwaysOnTop = true
        bill.StudsOffset = Vector3.new(0,5,0)
        bill.Adornee = b
        bill.Size = UDim2.new(2,1,2)
         
        local text = Instance.new("TextLabel", bill)
        text.BackgroundTransparency = 1
        text.Size = UDim2.new(1,0,1,0)
        text.Text = "Bloxy Cola | "..b.SurfaceGui.Uses.Text
        text.TextColor3 = Color3.fromRGB(255,255,255)
        text.Font = "ArialBold"
        text.TextSize = 15
      
        local surface1 = Instance.new("SurfaceGui",b)
        surface1.Face = "Top"
        surface1.AlwaysOnTop = true
        local frame1 = Instance.new("Frame",surface1)
        frame1.Size = UDim2.new(1,0,1,0)
        frame1.BackgroundTransparency = 0.2
           
        local surface2 = Instance.new("SurfaceGui",b)
        surface2.Face = "Bottom"
        surface2.AlwaysOnTop = true
        local frame2 = Instance.new("Frame",surface2)
        frame2.Size = UDim2.new(1,0,1,0)
        frame2.BackgroundTransparency = 0.2
           
        local surface3 = Instance.new("SurfaceGui",b)
        surface3.Face = "Left"
        surface3.AlwaysOnTop = true
        local frame3 = Instance.new("Frame",surface3)
        frame3.Size = UDim2.new(1,0,1,0)
        frame3.BackgroundTransparency = 0.2
           
        local surface4 = Instance.new("SurfaceGui",b)
        surface4.Face = "Right"
        surface4.AlwaysOnTop = true
        local frame4 = Instance.new("Frame",surface4)
        frame4.Size = UDim2.new(1,0,1,0)
        frame4.BackgroundTransparency = 0.2
           
        local surface5 = Instance.new("SurfaceGui",b)
        surface5.Face = "Front"
        surface5.AlwaysOnTop = true
        local frame5 = Instance.new("Frame",surface5)
        frame5.Size = UDim2.new(1,0,1,0)
        frame5.BackgroundTransparency = 0.2
           
        local surface6 = Instance.new("SurfaceGui",b)
        surface6.Face = "Back"
        surface6.AlwaysOnTop = true
        local frame6 = Instance.new("Frame",surface6)
        frame6.Size = UDim2.new(1,0,1,0)
        frame6.BackgroundTransparency = 0.2
       end
      end
     end
    end
   end
  end 
  },
  
  ["Deagle Shipment"] = {
  ["Name"]   = "Deagle Shipment",
  ["Parent"]  = "Shipment ESP GUNS",
  ["Toggle"]  = true,
  ["Type"]  = "button",
  ["Script"]  = function(input1, input2)
   if workspace:FindFirstChild("ye") then
    workspace.ye:Destroy()
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "Deagle Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
        for i,k in pairs(b:GetChildren()) do
         if k:IsA("SurfaceGui") then
          if k.AlwaysOnTop == true then
           k:Destroy()
          end
         elseif k:IsA("BillboardGui") then
          k:Destroy()
         end
        end
       end
      end
     end
    end  
   else
    local toggled = Instance.new("BoolValue",workspace)
    toggled.Name = "ye"
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "Deagle Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
           
        local bill = Instance.new("BillboardGui", b)
        bill.AlwaysOnTop = true
        bill.StudsOffset = Vector3.new(0,5,0)
        bill.Adornee = b
        bill.Size = UDim2.new(2,1,2)
         
        local text = Instance.new("TextLabel", bill)
        text.BackgroundTransparency = 1
        text.Size = UDim2.new(1,0,1,0)
        text.Text = "Deagles | "..b.SurfaceGui.Uses.Text
        text.TextColor3 = Color3.fromRGB(255,255,255)
        text.Font = "ArialBold"
        text.TextSize = 15
      
        local surface1 = Instance.new("SurfaceGui",b)
        surface1.Face = "Top"
        surface1.AlwaysOnTop = true
        local frame1 = Instance.new("Frame",surface1)
        frame1.Size = UDim2.new(1,0,1,0)
        frame1.BackgroundTransparency = 0.2
           
        local surface2 = Instance.new("SurfaceGui",b)
        surface2.Face = "Bottom"
        surface2.AlwaysOnTop = true
        local frame2 = Instance.new("Frame",surface2)
        frame2.Size = UDim2.new(1,0,1,0)
        frame2.BackgroundTransparency = 0.2
           
        local surface3 = Instance.new("SurfaceGui",b)
        surface3.Face = "Left"
        surface3.AlwaysOnTop = true
        local frame3 = Instance.new("Frame",surface3)
        frame3.Size = UDim2.new(1,0,1,0)
        frame3.BackgroundTransparency = 0.2
           
        local surface4 = Instance.new("SurfaceGui",b)
        surface4.Face = "Right"
        surface4.AlwaysOnTop = true
        local frame4 = Instance.new("Frame",surface4)
        frame4.Size = UDim2.new(1,0,1,0)
        frame4.BackgroundTransparency = 0.2
           
        local surface5 = Instance.new("SurfaceGui",b)
        surface5.Face = "Front"
        surface5.AlwaysOnTop = true
        local frame5 = Instance.new("Frame",surface5)
        frame5.Size = UDim2.new(1,0,1,0)
        frame5.BackgroundTransparency = 0.2
           
        local surface6 = Instance.new("SurfaceGui",b)
        surface6.Face = "Back"
        surface6.AlwaysOnTop = true
        local frame6 = Instance.new("Frame",surface6)
        frame6.Size = UDim2.new(1,0,1,0)
        frame6.BackgroundTransparency = 0.2
       end
      end
     end
    end
   end
  end 
  },
  
  ["M1911 Shipment"] = {
  ["Name"]   = "M1911 Shipment",
  ["Parent"]  = "Shipment ESP GUNS",
  ["Toggle"]  = true,
  ["Type"]  = "button",
  ["Script"]  = function(input1, input2)
   if workspace:FindFirstChild("xe") then
    workspace.xe:Destroy()
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "M1911 Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
        for i,k in pairs(b:GetChildren()) do
         if k:IsA("SurfaceGui") then
          if k.AlwaysOnTop == true then
           k:Destroy()
          end
         elseif k:IsA("BillboardGui") then
          k:Destroy()
         end
        end
       end
      end
     end
    end  
   else
    local toggled = Instance.new("BoolValue",workspace)
    toggled.Name = "xe"
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "M1911 Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
           
        local bill = Instance.new("BillboardGui", b)
        bill.AlwaysOnTop = true
        bill.StudsOffset = Vector3.new(0,5,0)
        bill.Adornee = b
        bill.Size = UDim2.new(2,1,2)
         
        local text = Instance.new("TextLabel", bill)
        text.BackgroundTransparency = 1
        text.Size = UDim2.new(1,0,1,0)
        text.Text = "M1911 | "..b.SurfaceGui.Uses.Text
        text.TextColor3 = Color3.fromRGB(255,255,255)
        text.Font = "ArialBold"
        text.TextSize = 15
      
        local surface1 = Instance.new("SurfaceGui",b)
        surface1.Face = "Top"
        surface1.AlwaysOnTop = true
        local frame1 = Instance.new("Frame",surface1)
        frame1.Size = UDim2.new(1,0,1,0)
        frame1.BackgroundTransparency = 0.2
           
        local surface2 = Instance.new("SurfaceGui",b)
        surface2.Face = "Bottom"
        surface2.AlwaysOnTop = true
        local frame2 = Instance.new("Frame",surface2)
        frame2.Size = UDim2.new(1,0,1,0)
        frame2.BackgroundTransparency = 0.2
           
        local surface3 = Instance.new("SurfaceGui",b)
        surface3.Face = "Left"
        surface3.AlwaysOnTop = true
        local frame3 = Instance.new("Frame",surface3)
        frame3.Size = UDim2.new(1,0,1,0)
        frame3.BackgroundTransparency = 0.2
           
        local surface4 = Instance.new("SurfaceGui",b)
        surface4.Face = "Right"
        surface4.AlwaysOnTop = true
        local frame4 = Instance.new("Frame",surface4)
        frame4.Size = UDim2.new(1,0,1,0)
        frame4.BackgroundTransparency = 0.2
           
        local surface5 = Instance.new("SurfaceGui",b)
        surface5.Face = "Front"
        surface5.AlwaysOnTop = true
        local frame5 = Instance.new("Frame",surface5)
        frame5.Size = UDim2.new(1,0,1,0)
        frame5.BackgroundTransparency = 0.2
           
        local surface6 = Instance.new("SurfaceGui",b)
        surface6.Face = "Back"
        surface6.AlwaysOnTop = true
        local frame6 = Instance.new("Frame",surface6)
        frame6.Size = UDim2.new(1,0,1,0)
        frame6.BackgroundTransparency = 0.2
       end
      end
     end
    end
   end
  end 
  },
  
  ["Lockpick Shipment"] = {
  ["Name"]   = "Lockpick Shipment",
  ["Parent"]  = "Shipment ESP OTHER",
  ["Toggle"]  = true,
  ["Type"]  = "button",
  ["Script"]  = function(input1, input2)
   if workspace:FindFirstChild("xea") then
    workspace.xea:Destroy()
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "Lockpick Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
        for i,k in pairs(b:GetChildren()) do
         if k:IsA("SurfaceGui") then
          if k.AlwaysOnTop == true then
           k:Destroy()
          end
         elseif k:IsA("BillboardGui") then
          k:Destroy()
         end
        end
       end
      end
     end
    end  
   else
    local toggled = Instance.new("BoolValue",workspace)
    toggled.Name = "xea"
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "Lockpick Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
           
        local bill = Instance.new("BillboardGui", b)
        bill.AlwaysOnTop = true
        bill.StudsOffset = Vector3.new(0,5,0)
        bill.Adornee = b
        bill.Size = UDim2.new(2,1,2)
         
        local text = Instance.new("TextLabel", bill)
        text.BackgroundTransparency = 1
        text.Size = UDim2.new(1,0,1,0)
        text.Text = "Lockpicks | "..b.SurfaceGui.Uses.Text
        text.TextColor3 = Color3.fromRGB(255,255,255)
        text.Font = "ArialBold"
        text.TextSize = 15
      
        local surface1 = Instance.new("SurfaceGui",b)
        surface1.Face = "Top"
        surface1.AlwaysOnTop = true
        local frame1 = Instance.new("Frame",surface1)
        frame1.Size = UDim2.new(1,0,1,0)
        frame1.BackgroundTransparency = 0.2
           
        local surface2 = Instance.new("SurfaceGui",b)
        surface2.Face = "Bottom"
        surface2.AlwaysOnTop = true
        local frame2 = Instance.new("Frame",surface2)
        frame2.Size = UDim2.new(1,0,1,0)
        frame2.BackgroundTransparency = 0.2
           
        local surface3 = Instance.new("SurfaceGui",b)
        surface3.Face = "Left"
        surface3.AlwaysOnTop = true
        local frame3 = Instance.new("Frame",surface3)
        frame3.Size = UDim2.new(1,0,1,0)
        frame3.BackgroundTransparency = 0.2
           
        local surface4 = Instance.new("SurfaceGui",b)
        surface4.Face = "Right"
        surface4.AlwaysOnTop = true
        local frame4 = Instance.new("Frame",surface4)
        frame4.Size = UDim2.new(1,0,1,0)
        frame4.BackgroundTransparency = 0.2
           
        local surface5 = Instance.new("SurfaceGui",b)
        surface5.Face = "Front"
        surface5.AlwaysOnTop = true
        local frame5 = Instance.new("Frame",surface5)
        frame5.Size = UDim2.new(1,0,1,0)
        frame5.BackgroundTransparency = 0.2
           
        local surface6 = Instance.new("SurfaceGui",b)
        surface6.Face = "Back"
        surface6.AlwaysOnTop = true
        local frame6 = Instance.new("Frame",surface6)
        frame6.Size = UDim2.new(1,0,1,0)
        frame6.BackgroundTransparency = 0.2
       end
      end
     end
    end
   end
  end 
  },
  
  ["M16 Shipment"] = {
  ["Name"]   = "M16 Shipment",
  ["Parent"]  = "Shipment ESP GUNS",
  ["Toggle"]  = true,
  ["Type"]  = "button",
  ["Script"]  = function(input1, input2)
   if workspace:FindFirstChild("xOa") then
    workspace.xOa:Destroy()
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "M16 Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
        for i,k in pairs(b:GetChildren()) do
         if k:IsA("SurfaceGui") then
          if k.AlwaysOnTop == true then
           k:Destroy()
          end
         elseif k:IsA("BillboardGui") then
          k:Destroy()
         end
        end
       end
      end
     end
    end  
   else
    local toggled = Instance.new("BoolValue",workspace)
    toggled.Name = "xOa"
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "M16 Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
           
        local bill = Instance.new("BillboardGui", b)
        bill.AlwaysOnTop = true
        bill.StudsOffset = Vector3.new(0,5,0)
        bill.Adornee = b
        bill.Size = UDim2.new(2,1,2)
         
        local text = Instance.new("TextLabel", bill)
        text.BackgroundTransparency = 1
        text.Size = UDim2.new(1,0,1,0)
        text.Text = "M16 | "..b.SurfaceGui.Uses.Text
        text.TextColor3 = Color3.fromRGB(255,255,255)
        text.TextSize = 15
        text.Font = "ArialBold"
      
        local surface1 = Instance.new("SurfaceGui",b)
        surface1.Face = "Top"
        surface1.AlwaysOnTop = true
        local frame1 = Instance.new("Frame",surface1)
        frame1.Size = UDim2.new(1,0,1,0)
        frame1.BackgroundTransparency = 0.2
           
        local surface2 = Instance.new("SurfaceGui",b)
        surface2.Face = "Bottom"
        surface2.AlwaysOnTop = true
        local frame2 = Instance.new("Frame",surface2)
        frame2.Size = UDim2.new(1,0,1,0)
        frame2.BackgroundTransparency = 0.2
           
        local surface3 = Instance.new("SurfaceGui",b)
        surface3.Face = "Left"
        surface3.AlwaysOnTop = true
        local frame3 = Instance.new("Frame",surface3)
        frame3.Size = UDim2.new(1,0,1,0)
        frame3.BackgroundTransparency = 0.2
           
        local surface4 = Instance.new("SurfaceGui",b)
        surface4.Face = "Right"
        surface4.AlwaysOnTop = true
        local frame4 = Instance.new("Frame",surface4)
        frame4.Size = UDim2.new(1,0,1,0)
        frame4.BackgroundTransparency = 0.2
           
        local surface5 = Instance.new("SurfaceGui",b)
        surface5.Face = "Front"
        surface5.AlwaysOnTop = true
        local frame5 = Instance.new("Frame",surface5)
        frame5.Size = UDim2.new(1,0,1,0)
        frame5.BackgroundTransparency = 0.2
           
        local surface6 = Instance.new("SurfaceGui",b)
        surface6.Face = "Back"
        surface6.AlwaysOnTop = true
        local frame6 = Instance.new("Frame",surface6)
        frame6.Size = UDim2.new(1,0,1,0)
        frame6.BackgroundTransparency = 0.2
       end
      end
     end
    end
   end
  end 
  },
  
  ["AK Shipment"] = {
  ["Name"]   = "AK Shipment",
  ["Parent"]  = "Shipment ESP GUNS",
  ["Toggle"]  = true,
  ["Type"]  = "button",
  ["Script"]  = function(input1, input2)
   if workspace:FindFirstChild("xua") then
    workspace.xua:Destroy()
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "AK Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
        for i,k in pairs(b:GetChildren()) do
         if k:IsA("SurfaceGui") then
          if k.AlwaysOnTop == true then
           k:Destroy()
          end
         elseif k:IsA("BillboardGui") then
          k:Destroy()
         end
        end
       end
      end
     end
    end  
   else
    local toggled = Instance.new("BoolValue",workspace)
    toggled.Name = "xua"
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "AK Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
           
        local bill = Instance.new("BillboardGui", b)
        bill.AlwaysOnTop = true
        bill.StudsOffset = Vector3.new(0,5,0)
        bill.Adornee = b
        bill.Size = UDim2.new(2,1,2)
         
        local text = Instance.new("TextLabel", bill)
        text.BackgroundTransparency = 1
        text.Size = UDim2.new(1,0,1,0)
        text.Text = "AK | "..b.SurfaceGui.Uses.Text
        text.TextColor3 = Color3.fromRGB(255,255,255)
        text.TextSize = 15
        text.Font = "ArialBold"
      
        local surface1 = Instance.new("SurfaceGui",b)
        surface1.Face = "Top"
        surface1.AlwaysOnTop = true
        local frame1 = Instance.new("Frame",surface1)
        frame1.Size = UDim2.new(1,0,1,0)
        frame1.BackgroundTransparency = 0.2
           
        local surface2 = Instance.new("SurfaceGui",b)
        surface2.Face = "Bottom"
        surface2.AlwaysOnTop = true
        local frame2 = Instance.new("Frame",surface2)
        frame2.Size = UDim2.new(1,0,1,0)
        frame2.BackgroundTransparency = 0.2
           
        local surface3 = Instance.new("SurfaceGui",b)
        surface3.Face = "Left"
        surface3.AlwaysOnTop = true
        local frame3 = Instance.new("Frame",surface3)
        frame3.Size = UDim2.new(1,0,1,0)
        frame3.BackgroundTransparency = 0.2
           
        local surface4 = Instance.new("SurfaceGui",b)
        surface4.Face = "Right"
        surface4.AlwaysOnTop = true
        local frame4 = Instance.new("Frame",surface4)
        frame4.Size = UDim2.new(1,0,1,0)
        frame4.BackgroundTransparency = 0.2
           
        local surface5 = Instance.new("SurfaceGui",b)
        surface5.Face = "Front"
        surface5.AlwaysOnTop = true
        local frame5 = Instance.new("Frame",surface5)
        frame5.Size = UDim2.new(1,0,1,0)
        frame5.BackgroundTransparency = 0.2
           
        local surface6 = Instance.new("SurfaceGui",b)
        surface6.Face = "Back"
        surface6.AlwaysOnTop = true
        local frame6 = Instance.new("Frame",surface6)
        frame6.Size = UDim2.new(1,0,1,0)
        frame6.BackgroundTransparency = 0.2
       end
      end
     end
    end
   end
  end 
  },
  
  ["M4 Shipment"] = {
  ["Name"]   = "M4 Shipment",
  ["Parent"]  = "Shipment ESP GUNS",
  ["Toggle"]  = true,
  ["Type"]  = "button",
  ["Script"]  = function(input1, input2)
   if workspace:FindFirstChild("xpa") then
    workspace.xpa:Destroy()
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "M4 Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
        for i,k in pairs(b:GetChildren()) do
         if k:IsA("SurfaceGui") then
          if k.AlwaysOnTop == true then
           k:Destroy()
          end
         elseif k:IsA("BillboardGui") then
          k:Destroy()
         end
        end
       end
      end
     end
    end  
   else
    local toggled = Instance.new("BoolValue",workspace)
    toggled.Name = "xpa"
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "M4 Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
           
        local bill = Instance.new("BillboardGui", b)
        bill.AlwaysOnTop = true
        bill.StudsOffset = Vector3.new(0,5,0)
        bill.Adornee = b
        bill.Size = UDim2.new(2,1,2)
         
        local text = Instance.new("TextLabel", bill)
        text.BackgroundTransparency = 1
        text.Size = UDim2.new(1,0,1,0)
        text.TextSize = 15
        text.Text = "M4 Shipment | "..b.SurfaceGui.Uses.Text
        text.TextColor3 = Color3.fromRGB(255,0,0)
        text.Font = "ArialBold"
      
        local surface1 = Instance.new("SurfaceGui",b)
        surface1.Face = "Top"
        surface1.AlwaysOnTop = true
        local frame1 = Instance.new("Frame",surface1)
        frame1.Size = UDim2.new(1,0,1,0)
        frame1.BackgroundTransparency = 0.2
        frame1.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface2 = Instance.new("SurfaceGui",b)
        surface2.Face = "Bottom"
        surface2.AlwaysOnTop = true
        local frame2 = Instance.new("Frame",surface2)
        frame2.Size = UDim2.new(1,0,1,0)
        frame2.BackgroundTransparency = 0.2
        frame2.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface3 = Instance.new("SurfaceGui",b)
        surface3.Face = "Left"
        surface3.AlwaysOnTop = true
        local frame3 = Instance.new("Frame",surface3)
        frame3.Size = UDim2.new(1,0,1,0)
        frame3.BackgroundTransparency = 0.2
        frame3.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface4 = Instance.new("SurfaceGui",b)
        surface4.Face = "Right"
        surface4.AlwaysOnTop = true
        local frame4 = Instance.new("Frame",surface4)
        frame4.Size = UDim2.new(1,0,1,0)
        frame4.BackgroundTransparency = 0.2
        frame4.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface5 = Instance.new("SurfaceGui",b)
        surface5.Face = "Front"
        surface5.AlwaysOnTop = true
        local frame5 = Instance.new("Frame",surface5)
        frame5.Size = UDim2.new(1,0,1,0)
        frame5.BackgroundTransparency = 0.2
        frame5.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface6 = Instance.new("SurfaceGui",b)
        surface6.Face = "Back"
        surface6.AlwaysOnTop = true
        local frame6 = Instance.new("Frame",surface6)
        frame6.Size = UDim2.new(1,0,1,0)
        frame6.BackgroundTransparency = 0.2
        frame6.BackgroundColor3 = Color3.fromRGB(255,0,0)
       end
      end
     end
    end
   end
  end 
  },
  
  ["C4 Shipment"] = {
  ["Name"]   = "C4 Shipment",
  ["Parent"]  = "Shipment ESP OTHER",
  ["Toggle"]  = true,
  ["Type"]  = "button",
  ["Script"]  = function(input1, input2)
   if workspace:FindFirstChild("ypa") then
    workspace.ypa:Destroy()
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "C4 Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
        for i,k in pairs(b:GetChildren()) do
         if k:IsA("SurfaceGui") then
          if k.AlwaysOnTop == true then
           k:Destroy()
          end
         elseif k:IsA("BillboardGui") then
          k:Destroy()
         end
        end
       end
      end
     end
    end  
   else
    local toggled = Instance.new("BoolValue",workspace)
    toggled.Name = "ypa"
    for i,v in pairs(workspace.Entities:GetChildren()) do
     if v.Name == "C4 Shipment" then
      for i,b in pairs(v:GetChildren()) do
       if b.Name == "MeshPart" then
           
        local bill = Instance.new("BillboardGui", b)
        bill.AlwaysOnTop = true
        bill.StudsOffset = Vector3.new(0,5,0)
        bill.Adornee = b
        bill.Size = UDim2.new(2,1,2)
         
        local text = Instance.new("TextLabel", bill)
        text.BackgroundTransparency = 1
        text.Size = UDim2.new(1,0,1,0)
        text.TextSize = 15
        text.Text = "C4 Shipment | "..b.SurfaceGui.Uses.Text
        text.TextColor3 = Color3.fromRGB(255,0,0)
        text.Font = "ArialBold"
      
        local surface1 = Instance.new("SurfaceGui",b)
        surface1.Face = "Top"
        surface1.AlwaysOnTop = true
        local frame1 = Instance.new("Frame",surface1)
        frame1.Size = UDim2.new(1,0,1,0)
        frame1.BackgroundTransparency = 0.2
        frame1.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface2 = Instance.new("SurfaceGui",b)
        surface2.Face = "Bottom"
        surface2.AlwaysOnTop = true
        local frame2 = Instance.new("Frame",surface2)
        frame2.Size = UDim2.new(1,0,1,0)
        frame2.BackgroundTransparency = 0.2
        frame2.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface3 = Instance.new("SurfaceGui",b)
        surface3.Face = "Left"
        surface3.AlwaysOnTop = true
        local frame3 = Instance.new("Frame",surface3)
        frame3.Size = UDim2.new(1,0,1,0)
        frame3.BackgroundTransparency = 0.2
        frame3.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface4 = Instance.new("SurfaceGui",b)
        surface4.Face = "Right"
        surface4.AlwaysOnTop = true
        local frame4 = Instance.new("Frame",surface4)
        frame4.Size = UDim2.new(1,0,1,0)
        frame4.BackgroundTransparency = 0.2
        frame4.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface5 = Instance.new("SurfaceGui",b)
        surface5.Face = "Front"
        surface5.AlwaysOnTop = true
        local frame5 = Instance.new("Frame",surface5)
        frame5.Size = UDim2.new(1,0,1,0)
        frame5.BackgroundTransparency = 0.2
        frame5.BackgroundColor3 = Color3.fromRGB(255,0,0)
           
        local surface6 = Instance.new("SurfaceGui",b)
        surface6.Face = "Back"
        surface6.AlwaysOnTop = true
        local frame6 = Instance.new("Frame",surface6)
        frame6.Size = UDim2.new(1,0,1,0)
        frame6.BackgroundTransparency = 0.2
        frame6.BackgroundColor3 = Color3.fromRGB(255,0,0)
       end
      end
     end
    end
   end
  end 
 },
}

--// Global Vairables
gui = game.Players.LocalPlayer.PlayerGui.ava.Frame

--// Creating the menu buttons
for i,v in pairs(menuButtons) do
 if v.Type == "button" then
  newbutton = gui.Parent.Prefabs.button:Clone()
  newbutton.Parent = gui
  newbutton.Visible = true
  newbutton.Text = v.Name
  newbutton.Name = v.Name
  if not v.Submenu then
   newbutton:ClearAllChildren()
  end
 elseif v.Type == "label" then
  newlabel = gui.Parent.Prefabs.label:Clone()
  newlabel.Parent = gui
  newlabel.Visible = true
  newlabel.Text = v.Text
  newlabel.Name = v.Name
 elseif v.Type == "text" then
  newtext = gui.Parent.Prefabs.text:Clone()
  newtext.Parent = gui
  newtext.Visible = true
  newtext.Text = v.Text
  newtext.Name = v.Name
 end
end

--// Creating the submenu buttons
for i,b in pairs(submenuButtons) do
 if b.Type == "button" then
  newsubbutton = gui.Parent.Prefabs.button:Clone()
  newsubbutton:ClearAllChildren()
  newsubbutton.Parent = gui[b.Parent].Frame
  newsubbutton.Visible = true
  newsubbutton.Text = b.Name
  newsubbutton.Name = b.Name
 elseif b.Type == "label" then
  newlabel = gui.Parent.Prefabs.label:Clone()
  newlabel.Parent = gui[b.Parent].Frame
  newlabel.Visible = true
  newlabel.Text = b.Text
  newlabel.Name = b.Name
 elseif b.Type == "text" then
  newtext = gui.Parent.Prefabs.text:Clone()
  newtext.Parent = gui[b.Parent].Frame
  newtext.Visible = true
  newtext.Text = b.Text
  newtext.Name = b.Name
 end
end

--// Creating the toggle color function
buttonToggle = function(button)
 if button.BackgroundColor3 == Color3.fromRGB(255,255,255) then
  button.BackgroundColor3 = Color3.fromRGB(96, 208, 255)
 else
  button.BackgroundColor3 = Color3.fromRGB(255,255,255)
 end
end

--// Connecting button presses menu
for i,t in pairs(gui:GetChildren()) do
 if t:IsA("TextButton") then
  t.MouseButton1Down:connect(function()
   if menuButtons[t.Name]["Submenu"] then
    t.Frame.Visible = not t.Frame.Visible
   end
   if menuButtons[t.Name]["Toggle"] then
    buttonToggle(t)
   end
   menuButtons[t.Name]["Script"]()
  end)
 end
end

--// Connecting textbox enters menu
for i,j in pairs(gui:GetChildren()) do
 if j:IsA("TextBox") then
  j.FocusLost:connect(function(enterPressed)
   if enterPressed then
    menuButtons[j.Name]["Script"](j.Text)
   end
  end)
 end
end

--// Connecting textbox enters submenu
for i,u in pairs(gui:GetChildren()) do
 if u:IsA("TextButton") then
  for i,o in pairs(u.Frame:GetChildren()) do
   if o:IsA("TextBox") then
    o.FocusLost:connect(function(enterPressed)
     if enterPressed then
      submenuButtons[o.Name]["Script"](o.Text)
     end
    end)
   end
  end
 end
end

--// Connecting button presses for sub
for i,x in pairs(gui:GetChildren()) do
 if x:IsA("TextButton") then
  for i,y in pairs(x.Frame:GetChildren()) do
   if y:IsA("TextButton") then
    y.MouseButton1Down:connect(function()
     if submenuButtons[y.Name]["Toggle"] then
      buttonToggle(y)
     end
     submenuButtons[y.Name]["Script"]()
    end)
   end
  end
 end
end

--// Custom notify function
notify = function(t,m)
 game:GetService("StarterGui"):SetCore("SendNotification", {Title = t, Text = m})
end