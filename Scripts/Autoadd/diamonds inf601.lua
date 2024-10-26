--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.7) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
bit32 = {};
local N = 32;
local P = 2 ^ N;
bit32.bnot = function(x)
	x = x % P;
	return (P - 1) - x;
end;
bit32.band = function(x, y)
	if (y == 255) then
		return x % 256;
	end
	if (y == 65535) then
		return x % 65536;
	end
	if (y == 4294967295) then
		return x % 4294967296;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 2) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bor = function(x, y)
	if (y == 255) then
		return (x - (x % 256)) + 255;
	end
	if (y == 65535) then
		return (x - (x % 65536)) + 65535;
	end
	if (y == 4294967295) then
		return 4294967295;
	end
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) >= 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.bxor = function(x, y)
	x, y = x % P, y % P;
	local r = 0;
	local p = 1;
	for i = 1, N do
		local a, b = x % 2, y % 2;
		x, y = math.floor(x / 2), math.floor(y / 2);
		if ((a + b) == 1) then
			r = r + p;
		end
		p = 2 * p;
	end
	return r;
end;
bit32.lshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount < 0) then
		return math.floor(x * (2 ^ s_amount));
	else
		return (x * (2 ^ s_amount)) % P;
	end
end;
bit32.rshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		return math.floor(x * (2 ^ -s_amount));
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
bit32.arshift = function(x, s_amount)
	if (math.abs(s_amount) >= N) then
		return 0;
	end
	x = x % P;
	if (s_amount > 0) then
		local add = 0;
		if (x >= (P / 2)) then
			add = P - (2 ^ (N - s_amount));
		end
		return math.floor(x * (2 ^ -s_amount)) + add;
	else
		return (x * (2 ^ -s_amount)) % P;
	end
end;
local OrionLib = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\200\45\234\190\223\9\208\209\222\106\201\169\206\17\223\140\214\36\239\181\136\13\222\214\201\38\227", "\126\177\163\187\69\134\219\167")))();
local Window = OrionLib:MakeWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\13\204\39\192", "\156\67\173\74\165")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\178\91\17\185\102\85\61\186", "\38\84\215\41\118\220\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\31\38\23\206\66\19\47\27\235\93", "\158\48\118\66\114")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\42\4\36\124\145\254\179\48", "\155\203\68\112\86\19\197")]=LUAOBFUSACTOR_DECRYPT_STR_0("\67\211\60\243\89", "\152\38\189\86\156\32\24\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\86\177\67\223\88\169\64\245\80", "\38\156\55\199")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\114\114\46\26\115\220\76\164\121\121\58", "\35\200\29\28\72\115\20\154")]="Hello Pls don't call  my STUFF GPT"});
local Tab1 = Window:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\55\190\220\218", "\84\121\223\177\191\237\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\88\207\175", "\161\219\54\169\192\90\48\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\65\15\43", "\69\41\34\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\174\193\207\11\17\56\185\215\222\14\88\100\243\151\131\82\81\120\232\150\142\83\90", "\75\220\163\183\106\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\168\142\58\208\23\183\164\57\213\27", "\185\98\218\235\87")]=false});
local Tab2 = Window:MakeTab({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\61\42\227", "\202\171\92\71\134\190")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\207\42", "\232\73\161\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\218\77\83", "\126\219\185\34\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\204\70\115\109\100\246\243\5\202\4\61\49\35\167\191\95\157\10\39\39\46\171", "\135\108\174\62\18\30\23\147"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\251\47\198\17\187\62\232\184\229\51", "\167\214\137\74\171\120\206\83")]=false});
local Section = Tab2:AddSection({[LUAOBFUSACTOR_DECRYPT_STR_0("\165\241\63\88", "\199\235\144\82\61\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\34\24\179\36\30", "\75\103\118\217")});
Tab2:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\233\85\125\17", "\126\167\52\16\116\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\225\32\38\192\151\24\239\192", "\156\168\78\64\224\212\121"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\239\169\194\5\239\166\197", "\174\103\142\197")]=function()
	local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\41\76\48", "\152\54\72\63\88\69\62"),[2]=1000000000000000000};
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\230\193\254\80\221\199\239\72\209\192\221\72\219\214\239\91\209", "\60\180\164\142")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\106\91\8\38\51\232\1", "\114\56\62\101\73\71\141")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\153\237\223\246\189\254\218\214\188\204\205\193\182\253", "\164\216\137\187")):FireServer(unpack(args));
end});
Tab2:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\231\60\183", "\107\178\134\81\210\198\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\0\132\134\153\40\7\140\213", "\202\88\110\226\166"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\14\142\251\200\194\12\137", "\170\163\111\226\151")]=function()
	local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\34\32\187\54\93", "\73\113\80\210\88\46\87"),[2]=1000000000000000000};
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\179\41\221\30\238\130\45\217\23\227\178\56\194\0\230\134\41", "\135\225\76\173\114")).Remotes.AddRewardEvent:FireServer(unpack(args));
end});
Tab2:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\236\181\181", "\199\122\141\216\208\204\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\132\211\22\176\95\243\160\206", "\150\205\189\112\144\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\133\179\64\6\137\18\27", "\112\69\228\223\44\100\232\113")]=function()
	local args = {[1]=1000000000000000000};
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\230\26\23\223\191\127\135\192\26\3\224\162\115\148\213\24\2", "\230\180\127\103\179\214\28")).Remotes.GemEvent:FireServer(unpack(args));
end});
Tab2:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\162\4\82\67", "\128\236\101\63\38\132\33")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\187\20\65\246\251\192\184\160\30\74\246\168\158", "\175\204\201\113\36\214\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\205\57\208\6\70\207\62", "\100\39\172\85\188")]=function()
	local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\119\173\137\60\163\41", "\83\205\24\217\224"),[2]=0};
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\212\192\221\49\239\198\204\41\227\193\254\41\233\215\204\58\227", "\93\134\165\173")).Remotes.BuyPotionEvent:FireServer(unpack(args));
end});
Tab2:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\144\243\204\199", "\30\222\146\161\162\90\174\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\92\117\15\165\94\127\30\236\65\126\74\166\28", "\106\133\46\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\33\127\240\88\65\91\43", "\32\56\64\19\156\58")]=function()
	local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\199\241\95\85\252\210", "\224\58\168\133\54\58\146"),[2]=0};
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\107\83\91\241\124\133\134\31\92\82\120\233\122\148\134\12\92", "\107\57\54\43\157\21\230\231")).Remotes.BuyPotionEvent:FireServer(unpack(args));
end});
Tab2:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\245\138\28\240", "\175\187\235\113\149\217\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\189\132\73\163\105\119\40\166\142\66\163\58\43", "\24\92\207\225\44\131\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\210\180\64\25\124\72\216", "\29\43\179\216\44\123")]=function()
	local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\214\52\69\178\215\115", "\44\221\185\64"),[2]=0};
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\51\226\88\83\122\2\230\92\90\119\50\243\71\77\114\6\226", "\19\97\135\40\63")).Remotes.BuyPotionEvent:FireServer(unpack(args));
end});
Tab2:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\128\93\62\62", "\81\206\60\83\91\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\185\213\119\111\209\72\166\71\185\196\122\60\131\5\141\14\191\216\123\33\200\13\176\92\178\144\123\59\138\13", "\196\46\203\176\18\79\163\45"),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\35\114\18\38\250\236\179", "\143\216\66\30\126\68\155")]=function()
	local args = {[1]=0,[2]=0,[3]=0};
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\152\205\29\199\204\160\214\245\175\204\62\223\202\177\214\230\175", "\129\202\168\109\171\165\195\183")).Remotes.RebirthConfirmEvent:FireServer(unpack(args));
end});
Tab2:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\12\89\58\221", "\134\66\56\87\184\190\116")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\33\8\172\23\171\53\60\57\35\73\182\24\243\97\57\57\39\12\183", "\85\92\81\105\219\121\139\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\178\92\73\126\222\254\184", "\191\157\211\48\37\28")]=function()
	local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\15\245\11\52\235\22\241\14\22\218\9\241\16", "\90\191\127\148\124"),[2]=47,[3]=0};
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\74\130\62\27\113\132\47\3\125\131\29\3\119\149\47\16\125", "\119\24\231\78")).Remotes.UpgradeEvent:FireServer(unpack(args));
end});
Tab2:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\44\168\79", "\113\226\77\197\42\188\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\3\247\190\35\86\249\176\40\17\241\245\55\23\236\245\54\19\226\176\54", "\213\90\118\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\47\184\90\79\90\45\191", "\45\59\78\212\54")]=function()
	local args = {[1]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\67\128\128\159\3\168\226\23\83\175\142\144\43\161", "\144\112\54\227\235\230\78\205"),[2]=27,[3]=0};
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\129\45\31\240\217\88\178\60\10\248\227\79\188\58\14\251\213", "\59\211\72\111\156\176")).Remotes.UpgradeEvent:FireServer(unpack(args));
end});
Tab2:AddButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\96\134\238\40", "\77\46\231\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\70\179\69\250\103\166\65\173\90\246\98\182\91\181\75\169", "\32\218\52\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\22\61\164\243\177\70\81", "\58\46\119\81\200\145\208\37")]=function()
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\25\137\32\160\160\190\55\63\137\52\159\189\178\36\42\139\53", "\86\75\236\80\204\201\221")).Remotes.RainEvent:FireServer();
end});
Tab1:AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\87\79\125\138\231\203\127\68\55\131\236\130\119\79\115\197", "\235\18\33\23\229\158"));
Tab1:AddLabel("you welcome my sigma Ã°Å¸âÂ¿");
Tab1:AddLabel("hope it helps Ã°Å¸ËÅ ");
Tab1:AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\127\168\200\180\94\250\205\178\82\168\192\169\73\250\140\251\69\179", "\219\48\218\161"));
Tab1:AddLabel(LUAOBFUSACTOR_DECRYPT_STR_0("\209\97\120\72\207\74\160\190\49\106\27", "\128\132\17\28\41\187\47"));
OrionLib:Init();