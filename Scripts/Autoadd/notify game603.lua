local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v15,v16) local v17={};for v18=1, #v15 do v6(v17,v0(v4(v1(v2(v15,v18,v18 + 1 )),v1(v2(v16,1 + (v18% #v16) ,1 + (v18% #v16) + 1 )))%256 ));end return v5(v17);end local v8=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\16\217\43\215\232\38\223\13\208\245","\156\67\173\74\165"));local v10=game:GetService(v7("\25\182\91\29\185\50\86\56\182\74\19\143\35\84\34\190\74\19","\38\84\215\41\118\220\70"));local v11=game.PlaceId;local v12=v8.LocalPlayer;local v13=v10:GetProductInfo(game.PlaceId);local function v14() v9:SetCore(v7("\99\19\44\22\208\95\2\43\20\247\83\23\54\27\241\94","\158\48\118\66\114"),{[v7("\159\45\4\58\118","\155\203\68\112\86\19\197")]=v13.Name,[v7("\114\216\46\232","\152\38\189\86\156\32\24\133")]=v7("\219\86\170\67\188\126\163\28\188","\38\156\55\199")   .. v11 ,[v7("\129\126\115\38","\35\200\29\28\72\115\20\154")]=v7("\11\189\201\222\158\63\49\13\182\213\133\194\99","\84\121\223\177\191\237\76")   .. v13.IconImageAssetId ,[v7("\159\67\219\161\46\89\63\207","\161\219\54\169\192\90\48\80")]=(3285723600000000000 -(915 + 82)) -(1388962431 -  -37070646) ,[v7("\107\87\20\49\70\76\81","\69\41\34\96")]=v7("\179\200\153","\75\220\163\183\106\98"),[v7("\32\175\159\35\214\12\232","\185\98\218\235\87")]=v7("\197\51\105","\202\171\92\71\134\190")});end v14();