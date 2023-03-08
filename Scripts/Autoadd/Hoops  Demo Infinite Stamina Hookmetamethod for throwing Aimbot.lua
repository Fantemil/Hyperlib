if not game:IsLoaded() then
 game.Loaded:Wait()
end

wait()

if not getgenv()["Iris"] then getgenv()["Iris"]={}; end
if getgenv()["Iris"]["IrisCompat"] then return else getgenv()["Iris"]["IrisCompat"] = true end

--Compat Script
local LoadStrings = {
 "IrisBetterConsole.lua",
 "IrisHiddenUiFix.lua",
 "IrisCryptLibraryFix.lua",
 "IrisWebSocketFix.lua"
}

for _, ExternalScript in next, LoadStrings do
 loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/"..ExternalScript))();
end

if rawget(getgenv(), "syn") then
 for FuncName, Function in next, syn do
  getgenv()[FuncName] = getgenv()["syn"][FuncName]
 end
else
 getgenv()["syn"] = {};
end

local Functions = {
 --// Meta Table Functions \\--
 ["getrawmetatable"] = get_raw_metatable or getrawmetatable or function(...) return "getrawmetatable was not found in exploit environment" end,
 ["setrawmetatable"] = set_raw_metatable or setrawmetatable or function(...) return "setrawmetatable was not found in exploit environment" end,
 ["setreadonly"] = setreadonly or make_readonly or makereadonly or function(...) return "setreadonly was not found in exploit environment" end,
 ["iswriteable"] = iswriteable or writeable or is_writeable or function(...) return "iswriteable was not found in exploit environment" end,

 --// Mouse Inputs \\--
 ["mouse1release"] = mouse1release or syn_mouse1release or m1release or m1rel or mouse1up or function(...) return "mouse1release was not found in exploit environment" end,
 ["mouse1press"] = mouse1press or mouse1press or m1press or mouse1click or function(...) return "mouse1press was not found in exploit environment" end,
 ["mouse2release"] = mouse2release or syn_mouse2release or m2release or m1rel or mouse2up or function(...) return "mouse2release was not found in exploit environment" end,
 ["mouse2press"] = mouse2press or mouse2press or m2press or mouse2click or function(...) return "mouse2press was not found in exploit environment" end,

 --// IO Functions \\--
 ["isfolder"] = isfolder or syn_isfolder or is_folder or function(...) return "isfolder was not found in exploit environment" end,
 ["isfile"] = isfile or syn_isfile or is_file or function(...) return "isfile was not found in exploit environment" end,
 ["delfolder"] = delfolder or syn_delsfolder or del_folder or function(...) return "delfolder was not found in exploit environment" end,
 ["delfile"] = delfile or syn_delfile or del_file or function(...) return "delfile was not found in exploit environment" end,
 ["appendfile"] = appendfile or syn_io_append or append_file or function(...) return "appendfile was not found in exploit environment" end,
 ["makefolder"] = makefolder or make_folder or createfolder or create_folder or function(...) return "makefolder was not found in exploit environment" end,

 --// Environment Manipulation Functions \\--
 ["hookfunction"] = hookfunction or hookfunc or detour_function or function(...) return "hookfunction was not found in exploit environment" end,
 ["hookmetamethod"] = hookmetamethod or hook_meta_method or function(...) return "hookmetamethod was not found in exploit environment" end,
 ["islclosure"] = islclosure or is_lclosure or isluaclosure or function(...) return "islclosure was not found in exploit environment" end,
 ["iscclosure"] = iscclosure or is_cclosure or function(...) return "iscclosure was not found in exploit environment" end,
 ["newcclosure"] = newcclosure or new_cclosure or function(...) return "newcclosure was not found in exploit environment" end,
 ["cloneref"] = clonereference or cloneref or function(...) return "cloneref was not found in exploit environment" end,
 ["getconnections"] = getconnections or get_connections or get_signal_cons or function(...) return "getconnections was not found in exploit environment" end,
 ["getnamecallmethod"] = getnamecallmethod or get_namecall_method or function(...) return "getconnections was not found in exploit environment" end,
 ["setnamecallmethod"] = setnamecallmethod or set_namecall_method or function(...) return "getconnections was not found in exploit environment" end,

 --// Instance Functions \\--
 ["getnilinstances"] = getnilinstances or get_nil_instances or function(...) return "getnilinstances was not found in exploit environment" end,
 ["getproperties"] = getproperties or get_properties or function(...) return "getproperties was not found in exploit environment" end,
 ["fireclickdetector"] = fireclickdetector or fire_click_detector or function(...) return "fireclickdetector was not found in exploit environment" end,
 ["gethiddenproperties"] = gethiddenproperties or get_hidden_properties or gethiddenprop or get_hidden_prop or function(...) return "gethiddenproperties was not found in exploit environment" end,
 ["sethiddenproperties"] = sethiddenproperties or set_hidden_properties or sethiddenprop or set_hidden_prop or function(...) return "sethiddenproperties was not found in exploit environment" end,
 ["getscripts"] = getrunningscripts or getscripts or get_running_scripts or get_scripts or function(...) return "getscripts was not found in exploit environment" end,

 --// Network Functions \\--
 ["setsimulationradius"] = setsimradius or set_simulation_radius or setsimulationradius or function(...) return "setsimulationradius was not found in exploit environment" end,
 ["getsimulationradius"] = getsimradius or get_simulation_radius or getsimulationradius or function(...) return "getsimulationradius was not found in exploit environment" end,
 ["isnetworkowner"] = isnetowner or isnetworkowner or is_network_owner or isnetworkowner or function(...) return "isnetworkowner was not found in exploit environment" end, 

 --// Script Methods \\--
 ["getthreadcontext"] = getthreadcontext or get_thread_context or getthreadidentity or get_thread_identity or function(...) return "getthreadcontext was not found in exploit environment" end,
 ["setthreadcontext"] = setthreadcontext or set_thread_context or setthreadidentity or set_thread_identity  or function(...) return "setthreadcontext was not found in exploit environment" end,
 ["getcallingscript"] = getcallingscript or get_calling_script or function(...) return "getcallingscript was not found in exploit environment" end,
 ["getscriptclosure"] = getscriptclosure or function(...) return "getscriptclosure was not found in exploit environment" end,
 ["securecall"] = KRNL_SAFE_CALL or securecall or secure_call or function(...) return "securecall was not found in exploit environment" end,

 --// Misc Functions \\--
 ["http_request"] = http_request or request or httprequest or function(...) return "http_request was not found in exploit environment" end,
 ["isluau"] = function() return true end,
 ["isrbxactive"] = iswindowactive or isrbxactive or function(...) return "isrbxactive was not found in exploit environment" end, 
 ["writeclipboard"] = write_clipboard or writeclipboard or setclipboard or set_clipboard or function(...) return "writeclipboard was not found in exploit environment" end,
 ["queue_on_teleport"] = queue_on_teleport or queueonteleport or function(...) return "queue_on_teleport was not found in exploit environment" end,
 ["is_exploit_function"] = is_synapse_function or iskrnlclosure or isourclosure or isexecutorclosure or is_sirhurt_closure or issentinelclosure or is_protosmasher_closure or function(...) return "is_exploit_function was not found in exploit environment" end,
 ["firesignal"] = fire_signal or firesignal or function(...) return "firesignal was not found in exploit environment" end,
 ["getcustomasset"] = getcustomasset or getsynasset or function(...) return  "customasset was not found in exploit environment" end

}

for FuncName, Function in next, Functions do
 getgenv()[FuncName] = Function;
end

if not (type(Functions["setreadonly"]) == "string" and type(Functions["setrawmetatable"]) == "string") then 
 Functions["setreadonly"](getgenv().syn, false)

 Functions["setrawmetatable"](getgenv().syn, {
  __index = function(OriginalEnv, Element)
   return getgenv()[Element];
  end,
 })
 Functions["setreadonly"](getgenv().syn, true)
end

local SynIsGoingToMakeMeCry = {
 ["syn_checkcaller"] = checkcaller,
 ["syn_clipboard_set"] = clipboard_set or setclipboard,
 ["syn_context_get"] = context_get or getthreadcontext,
 ["syn_context_set"] = context_set or setthreadcontext,
 ["syn_decompile"] = decompile,
 ["syn_getcallingscript"] = getcallingscript,
 ["syn_getgc"] = getgc,
 ["syn_getgenv"] = getgenv,
 ["syn_getinstances"] = getinstances,
 ["syn_getloadedmodules"] = getloadedmodules,
 ["syn_getmenv"] = getmenv,
 ["syn_getreg"] = getreg,
 ["syn_getrenv"] = getrenv,
 ["syn_getsenv"] = getsenv,
 ["syn_io_append"] = appendfile,
 ["syn_io_delfile"] = delfile,
 ["syn_io_delfolder"] = delfolder,
 ["syn_io_isfile"] = isfile,
 ["syn_io_isfolder"] = isfolder,
 ["syn_io_listdir"] = listdir,
 ["syn_io_makefolder"] = makefolder,
 ["syn_io_read"] = read or readfile,
 ["syn_io_write"] = write or writefile,
 ["syn_isactive"] = isactive,
 ["syn_islclosure"] = islclosure,
 ["syn_keypress"] = keypress,
 ["syn_keyrelease"] = keyrelease,
 ["syn_mouse1click"] = mouse1click,
 ["syn_mouse1press"] = mouse1press,
 ["syn_mouse1release"] = mouse1release,
 ["syn_mouse2click"] = mouse2click,
 ["syn_mouse2press"] = mouse2press,
 ["syn_mouse2release"] = mouse2release,
 ["syn_mousemoveabs"] = mousemoveabs,
 ["syn_mousemoverel"] = mousemoverel,
 ["syn_mousescroll"] = mousescroll,
 ["syn_newcclosure"] = newcclosure,
 ["syn_setfflag"] = setfflag,
}

for FunctionName, Function in next, SynIsGoingToMakeMeCry do
 getgenv()[FunctionName] = Function;
end

-- You need hookmetamethod/ a supported exploit
if not hookmetamethod then
 game.Players.LocalPlayer:Kick("Executor Not Supported")
end
wait()
--//Infinite-Stamina\\--
local stamina = game:GetService("Players").LocalPlayer.PlayerScripts.Events.Player.Stamina.Stamina
local STAMINA
STAMINA = hookmetamethod(game, "__index", function(self, key)
 if not checkcaller() and self == stamina and key == "Value" then
  return 9001
 end

 return STAMINA(self, key)
end)
wait()
--//Hook-For-Green\\-- (Doesn't even work lol)
local perfect
perfect = hookmetamethod(game,"__namecall",function(self, ...)
 local args = {...}
 local method = getnamecallmethod()

 if not checkcaller() and self.Name == "EndShooting" and method == "InvokeServer" then
  args[1] = true
  args[2] = "Great"
  game.StarterGui:SetCore("SendNotification",  {
   Title = "Woah!";
   Text = "Returned to great (this shit is broken)";
   Icon = "rbxassetid://11401835376";
   Duration = 5;
  })
  return self.InvokeServer(self, unpack(args))
 end

 return perfect(self, ...)
end)
wait()
--//Aimbot\\--
game:GetService("UserInputService").InputBegan:Connect(function(Key)
 if Key.KeyCode == Enum.KeyCode.R then
  game.ReplicatedStorage.Ball.StartShooting:FireServer()
  wait(0.5)
  game.ReplicatedStorage.Ball.EndShooting:InvokeServer(true,"Great")
  game.StarterGui:SetCore("SendNotification",  {
   Title = "ALERT!";
   Text = "ez";
   Icon = "rbxassetid://6525485104";
   Duration = 5;
  })
 end
end)
wait()
--//End\\--
game.StarterGui:SetCore("SendNotification",  {
 Title = "ALERT!";
 Text = "Loaded!";
 Icon = "rbxassetid://6525485104";
 Duration = 5;
})