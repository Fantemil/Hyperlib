local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v11, v12)
 local v13 = {};
 for v14 = (1174 - (131 + 1042)) - (0 + 0), #v11 do
  v6(v13, v0(v4(v1(v2(v11, v14, v14 + 1 + 0)), v1(v2(v12, (729 - (64 + 664)) + 0 + 0 + ((v14 - (1 + 0)) % #v12), ((1405 - (38 + 1365)) - (1 + 0)) + ((v14 - ((1938 - (1407 + 528)) - (877 - (72 + 803)))) % #v12) + (448 - (425 + 22)) + 0))) % 256));
 end
 return v5(v13);
end
_G.v8 = true;
_G.v9 = true;
_G.v10 = true;
spawn(function()
 while _G.v9 == true do
  local v15 = 0;
  local v16;
  local v17;
  while true do
   if (v15 == (514 - ((1259 - (836 + 361)) + (1025 - 574)))) then
    while true do
     if (v16 == (0 - 0)) then
      v17 = {[3 - 2]=(1 + 0)};
      game:GetService(v7("\17\137\63\207\119\236\34\152\42\199\77\251\44\158\46\196\123", "\67\236\79\163\30\143")).Events.Tap:FireServer(unpack(v17));
      v16 = 1 - 0;
     end
     if (v16 == ((3 - 2) + 0)) then
      wait();
      break;
     end
    end
    break;
   end
   if (v15 == ((0 - 0) + 0 + 0)) then
    v16 = (434 - 225) - ((13 - 6) + 202);
    v17 = nil;
    v15 = (1 + 0) - 0;
   end
  end
 end
end);
spawn(function()
 while _G.v8 == true do
  local v18 = (0 + 0) - (0 + 0);
  local v19;
  local v20;
  while true do
   if (v18 == ((1098 - (208 + 890)) - (0 - 0))) then
    local v23 = 0;
    while true do
     if (v23 == 0) then
      v19 = (0 - 0) + 0 + 0;
      v20 = nil;
      v23 = 1;
     end
     if (v23 == 1) then
      v18 = 1 - (0 - 0);
      break;
     end
    end
   end
   if (v18 == (2 - (772 - (568 + 203)))) then
    while true do
     if (v19 == (0 + 0)) then
      v20 = {[(1 + 3) - 3]=(7 + 3)};
      game:GetService(v7("\232\20\255\52\22\188\219\5\234\60\44\171\213\3\238\63\26", "\186\113\143\88\127\223")).Events.Rebirth:FireServer(unpack(v20));
      v19 = 1 - 0;
     end
     if (v19 == (2 - 1)) then
      wait();
      break;
     end
    end
    break;
   end
  end
 end
end);
spawn(function()
 while _G.v10 == true do
  local v21 = 0 + 0;
  local v22;
  while true do
   if (v21 == 0) then
    local v24 = 0 + (0 - 0);
    while true do
     if (((1 - 0) + (850 - (431 + 419))) == v24) then
      v21 = 1 - 0;
      break;
     end
     if (v24 == 0) then
      v22 = {[1 + 0]={},[2 - (959 - (163 + 796))]=v7("\17\88\4\226\85\46\101\30\74\13", "\91\45\106\133\57\75\69"),[1 + 2]=(0 + 0 + (0 - 0))};
      game:GetService(v7("\116\160\29\189\47\95\71\177\8\181\21\72\73\183\12\182\35", "\38\197\109\209\70\60")).Events.HatchEgg:InvokeServer(unpack(v22));
      v24 = (3205 - (1109 + 746)) - (1321 + (130 - 102));
     end
    end
   end
   if (v21 == (349 - (138 + 210))) then
    wait();
    break;
   end
  end
 end
end);