--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.7) ~  Much Love, Ferib 

]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v118=v5(v87,v19);v19=nil;return v118;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/((5 -3)^(v32-1)))%(((882 -(282 + 595)) -(1640 -(1523 + 114)))^(((v33-1) -(v32-((1 + 0) -0))) + (2 -(1 -0)))) ;return v88-(v88%1) ;else local v89=619 -((1620 -(68 + 997)) + 64) ;local v90;while true do if (v89==(931 -(857 + 74))) then v90=(570 -(367 + 201))^(v32-(928 -(214 + 713))) ;return (((v31%(v90 + v90))>=v90) and (1 + (1270 -(226 + 1044)))) or (0 + 0) ;end end end end local function v21() local v34=0 -(957 -(892 + 65)) ;local v35;while true do if (v34==1) then return v35;end if (v34==(117 -(32 + 85))) then v35=v1(v16,v18,v18);v18=v18 + 1 + 0 ;v34=(2 -1) + 0 ;end end end local function v22() local v36=0 -0 ;local v37;local v38;while true do if (v36==(1 -0)) then return (v38 * ((1487 -881) -(87 + 263))) + v37 ;end if (v36==((133 + 47) -(67 + 113))) then v37,v38=v1(v16,v18,v18 + 2 );v18=v18 + (7 -5) ;v36=1 + 0 ;end end end local function v23() local v39,v40,v41,v42=v1(v16,v18,v18 + (955 -(802 + 150)) );v18=v18 + (10 -6) ;return (v42 * 16777216) + (v41 * (118879 -53343)) + (v40 * 256) + v39 ;end local function v24() local v43=0 + 0 ;local v44;local v45;local v46;local v47;local v48;local v49;while true do if (v43==(1000 -(915 + 82))) then if (v48==(0 -0)) then if (v47==(0 + (0 -0))) then return v49 * (0 -0) ;else local v129=1187 -(1069 + (977 -(814 + 45))) ;while true do if ((0 -0)==v129) then v48=1 -0 ;v46=(0 -0) + 0 ;break;end end end elseif (v48==2047) then return ((v47==(0 -(0 + 0))) and (v49 * ((1 + 0)/(791 -(131 + 237 + 423))))) or (v49 * NaN) ;end return v8(v49,v48-(3214 -2191) ) * (v46 + (v47/((20 -(10 + 8))^(199 -147)))) ;end if (v43==(442 -(416 + 26))) then v44=v23();v45=v23();v43=1;end if (v43==((891 -(261 + 624)) -4)) then v48=v20(v45,10 + 11 ,54 -23 );v49=((v20(v45,32)==(439 -(145 + 293))) and  -(431 -((77 -33) + 386))) or (1487 -(998 + 488)) ;v43=1 + 2 ;end if (v43==((1081 -(1020 + 60)) + 0)) then v46=773 -(201 + 571) ;v47=(v20(v45,1139 -(116 + 1022) ,20) * ((8 -6)^(19 + 13))) + v44 ;v43=7 -5 ;end end end local function v25(v50) local v51=1423 -(630 + 793) ;local v52;local v53;while true do if (v51==2) then v53={};for v119=3 -2 , #v52 do v53[v119]=v2(v1(v3(v52,v119,v119)));end v51=14 -(1 + 10) ;end if (v51==(1 + 0)) then v52=v3(v16,v18,(v18 + v50) -(3 -2) );v18=v18 + v50 ;v51=2;end if ((1747 -(597 + 163 + 987))==v51) then v52=nil;if  not v50 then local v125=1913 -(1789 + 124) ;while true do if (v125==(766 -(745 + (82 -61)))) then v50=v23();if (v50==(0 + 0)) then return "";end break;end end end v51=2 -1 ;end if (v51==3) then return v6(v53);end end end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v54=(function() return function(v91,v92,v93,v94,v95,v96,v97,v98) local v91=(function() return 0;end)();local v92=(function() return;end)();local v93=(function() return;end)();while true do if ( #":"==v91) then if (v92== #"<") then v93=(function() return v94()~=(1500 -(1408 + 92)) ;end)();elseif (v92==(1 + 1)) then v93=(function() return v95();end)();elseif (v92~= #"nil") then else v93=(function() return v96();end)();end v97[v98]=(function() return v93;end)();break;end if (v91==0) then local v127=(function() return 1690 -(209 + 1481) ;end)();local v128=(function() return;end)();while true do if (v127==0) then v128=(function() return 0;end)();while true do if (v128==(0 -0)) then v92=(function() return v94();end)();v93=(function() return nil;end)();v128=(function() return 1;end)();end if (v128~=(1637 -(1373 + 263))) then else v91=(function() return  #"]";end)();break;end end break;end end end end return v91,v92,v93,v94,v95,v96,v97,v98;end;end)();local v55=(function() return function(v99,v100,v101,v102,v103,v104,v105,v106,v107) local v108=(function() return 1000 -(451 + 549) ;end)();local v99=(function() return;end)();local v100=(function() return;end)();while true do local v117=(function() return 0 + 0 ;end)();while true do if (v117==(0 + 0)) then if (v108==1) then local v130=(function() return 0 + 0 ;end)();while true do if (v130==0) then while true do if (v99~=(0 -0)) then else v100=(function() return v101();end)();if (v102(v100, #"[", #"{")==0) then local v317=(function() return 0;end)();local v318=(function() return;end)();local v319=(function() return;end)();local v320=(function() return;end)();while true do if (v317~=3) then else if (v102(v319, #"xnx", #"91(")== #"[") then v320[ #"0836"]=(function() return v105[v320[ #"http"]];end)();end v106[v107]=(function() return v320;end)();break;end if ((1 + 1)~=v317) then else if (v102(v319, #"{", #"/")== #"}") then v320[2 -0 ]=(function() return v105[v320[1386 -(746 + 638) ]];end)();end if (v102(v319,1 + 1 ,2 -0 )~= #"|") then else v320[ #"gha"]=(function() return v105[v320[ #"asd"]];end)();end v317=(function() return 1 + 2 ;end)();end if (v317~=(342 -(218 + 123))) then else local v358=(function() return 0;end)();while true do if (v358~=(1581 -(1535 + 46))) then else local v377=(function() return 0;end)();while true do if (v377==1) then v358=(function() return 1 + 0 ;end)();break;end if (v377==(0 + 0)) then v320=(function() return {v103(),v103(),nil,nil};end)();if (v318==(0 + 0)) then local v381=(function() return 0 -0 ;end)();local v382=(function() return;end)();while true do if (0==v381) then v382=(function() return 1467 -(899 + 568) ;end)();while true do if (v382==(0 + 0)) then v320[ #"asd"]=(function() return v103();end)();v320[ #"?id="]=(function() return v103();end)();break;end end break;end end elseif (v318== #":") then v320[ #"91("]=(function() return v104();end)();elseif (v318==(4 -2)) then v320[ #"asd"]=(function() return v104() -(2^(38 -22)) ;end)();elseif (v318~= #"19(") then else local v387=(function() return 603 -(268 + 335) ;end)();local v388=(function() return;end)();while true do if ((290 -(60 + 230))==v387) then v388=(function() return 572 -(426 + 146) ;end)();while true do if (v388==(0 + 0)) then v320[ #"asd"]=(function() return v104() -((1 + 1)^16) ;end)();v320[ #".dev"]=(function() return v103();end)();break;end end break;end end end v377=(function() return 1 + 0 ;end)();end end end if (v358==(1457 -(282 + 1174))) then v317=(function() return 5 -3 ;end)();break;end end end if (v317~=(114 -(4 + 110))) then else local v359=(function() return 0;end)();while true do if (v359==(585 -(57 + 527))) then v317=(function() return 1;end)();break;end if (v359~=(1427 -(41 + 1386))) then else v318=(function() return v102(v100,813 -(569 + 242) , #"19(");end)();v319=(function() return v102(v100, #"?id=",17 -11 );end)();v359=(function() return 1;end)();end end end end end break;end end return v99,v100,v101,v102,v103,v104,v105,v106,v107;end end end if (v108~=(0 + 0)) then else local v131=(function() return 0 + 0 ;end)();local v132=(function() return;end)();while true do if (v131==(0 -0)) then v132=(function() return 1024 -(706 + 318) ;end)();while true do if (v132==(1251 -(721 + 530))) then v99=(function() return 0;end)();v100=(function() return nil;end)();v132=(function() return 1272 -(945 + 326) ;end)();end if (1==v132) then v108=(function() return 167 -(122 + 44) ;end)();break;end end break;end end end break;end end end end;end)();local v56=(function() return function(v109,v110,v111) local v112=(function() return 0 -0 ;end)();local v113=(function() return;end)();while true do if (v112==(0 + 0)) then v113=(function() return 0 -0 ;end)();while true do if (v113==(700 -(271 + 429))) then local v133=(function() return 0;end)();while true do if (v133==(0 + 0)) then v109[v110-#"}" ]=(function() return v111();end)();return v109,v110,v111;end end end end break;end end end;end)();local v57=(function() return {};end)();local v58=(function() return {};end)();local v59=(function() return {};end)();local v60=(function() return {v57,v58,nil,v59};end)();local v61=(function() return v23();end)();local v62=(function() return {};end)();for v70= #" ",v61 do FlatIdent_2D88C,Type,Cons,v21,v24,v25,v62,v70=(function() return v54(FlatIdent_2D88C,Type,Cons,v21,v24,v25,v62,v70);end)();end v60[ #"91("]=(function() return v21();end)();for v71= #"}",v23() do FlatIdent_44839,Descriptor,v21,v20,v22,v23,v62,v57,v71=(function() return v55(FlatIdent_44839,Descriptor,v21,v20,v22,v23,v62,v57,v71);end)();end for v72= #".",v23() do v58,v72,v28=(function() return v56(v58,v72,v28);end)();end return v60;end local function v29(v64,v65,v66) local v67=v64[(6 -4) -1 ];local v68=v64[2];local v69=v64[5 -(970 -(478 + 490)) ];return function(...) local v73=v67;local v74=v68;local v75=v69;local v76=v27;local v77=66 -(30 + 35) ;local v78= -(1 + 0);local v79={};local v80={...};local v81=v12("#",...) -(1258 -(1043 + 214)) ;local v82={};local v83={};for v114=0 -0 ,v81 do if (v114>=v75) then v79[v114-v75 ]=v80[v114 + 1 + 0 ];else v83[v114]=v80[v114 + (1213 -(323 + 889)) ];end end local v84=(v81-v75) + (2 -1) ;local v85;local v86;while true do v85=v73[v77];v86=v85[581 -(361 + 219) ];if (v86<=15) then if (v86<=(327 -(53 + 267))) then if (v86<=(1 + 0 + 2)) then if ((546==546) and (v86<=(1 + (1172 -(786 + 386))))) then if ((v86>(413 -(15 + 398))) or (2366<=8)) then local v135=982 -(18 + 964) ;local v136;local v137;local v138;while true do if ((v135==(14 -10)) or (2590==2864)) then v137=v83[v138];v136=v83[v138 + 2 + 0 ];if (v136>(0 + 0)) then if ((v137>v83[v138 + (3 -2) + 0 ]) or (2624>4149)) then v77=v85[853 -(20 + 830) ];else v83[v138 + 2 + 1 ]=v137;end elseif (v137<v83[v138 + 1 + 0 ]) then v77=v85[129 -(116 + 10) ];else v83[v138 + 1 + 2 ]=v137;end break;end if ((v135==(554 -(83 + 468))) or (2618>=4495)) then v83[v85[740 -((1921 -(1055 + 324)) + 196) ]]=v85[13 -10 ];v77=v77 + (1 -0) ;v85=v73[v77];v138=v85[1 + 1 ];v135=3 + 1 ;end if (v135==((1340 -(1093 + 247)) + 0)) then v136=nil;v137=nil;v138=nil;v83[v85[2]]=v83[v85[3]];v135=1 + 0 ;end if ((v135==1) or (2485>=3131)) then v77=v77 + (2 -1) ;v85=v73[v77];v83[v85[2 + 0 ]]=v85[7 -4 ];v77=v77 + ((1380 + 172) -(1126 + 425)) ;v135=407 -(118 + 287) ;end if ((7 -5)==v135) then v85=v73[v77];v83[v85[1123 -(118 + 1003) ]]= #v83[v85[1914 -(340 + 1571) ]];v77=v77 + 1 + 0 ;v85=v73[v77];v135=8 -5 ;end end else for v262=v85[379 -(142 + 235) ],v85[3] do v83[v262]=nil;end end elseif ((v86>(9 -7)) or (2804<=2785)) then v77=v85[1 + 0 + 2 ];else v83[v85[979 -(553 + 424) ]]=v83[v85[5 -2 ]] + v85[4 + 0 ] ;end elseif (v86<=5) then if ((v86==(4 + 0)) or (4571==3415)) then v83[v85[(7 -5) + 0 ]]=v83[v85[2 + 1 ]]%v85[2 + 2 ] ;else local v142=v85[2 + 0 ];local v143={};for v264=2 -1 , #v82 do local v265=v82[v264];for v284=(0 -0) -0 , #v265 do local v285=726 -(228 + 498) ;local v286;local v287;local v288;while true do if ((v285==(1 + 0)) or (4441>4787)) then v288=v286[4 -2 ];if ((1920==1920) and (v287==v83) and (v288>=v142)) then local v364=0 + 0 ;while true do if ((v364==(0 -0)) or (647==4477)) then v143[v288]=v287[v288];v286[754 -(239 + 514) ]=v143;break;end end end break;end if (v285==(0 + (0 -0))) then v286=v265[v284];v287=v286[1270 -(231 + 1038) ];v285=(3342 -2012) -(797 + 532) ;end end end end end elseif (v86==(5 + 1)) then do return;end else local v144=0 + 0 ;local v145;local v146;local v147;while true do if ((8 -6)==v144) then for v321=2 -1 ,v85[(430 + 776) -(373 + 829) ] do local v322=731 -(476 + 255) ;local v323;while true do if (v322==((4357 -3226) -(369 + (2622 -1861)))) then if (v323[1 + 0 ]==(32 -14)) then v147[v321-(1 -0) ]={v83,v323[241 -(64 + 174) ]};else v147[v321-(1 + 0) ]={v65,v323[219 -(42 + 174) ]};end v82[ #v82 + 1 + 0 ]=v147;break;end if (v322==(523 -(423 + 100))) then v77=v77 + 1 + 0 ;v323=v73[v77];v322=1 + 0 ;end end end v83[v85[(13 -8) -3 ]]=v29(v145,v146,v66);break;end if (v144==(0 + 0)) then v145=v74[v85[1507 -(363 + 1141) ]];v146=nil;v144=772 -((781 -455) + 148 + 297) ;end if ((3819==3819) and (v144==(1581 -(1183 + 397)))) then v147={};v146=v10({},{__index=function(v324,v325) local v326=0;local v327;while true do if (v326==(0 -0)) then v327=v147[v325];return v327[2 -1 ][v327[2]];end end end,__newindex=function(v328,v329,v330) local v331=v147[v329];v331[1 + 0 ][v331[2 + 0 ]]=v330;end});v144=34 -(19 + 13) ;end end end elseif ((v86<=((26 -9) -6)) or (1466>4360)) then if (v86<=(1984 -(1913 + 62))) then if (v86==(22 -14)) then v83[v85[2 + 0 ]]=v85[4 -1 ] + v83[v85[7 -3 ]] ;else local v149=v85[5 -3 ];v83[v149]=v83[v149](v13(v83,v149 + (1934 -((1715 -1150) + 1368)) ,v78));end elseif (v86>(37 -27)) then local v151=(1268 -(1249 + 19)) -(0 + 0) ;local v152;local v153;local v154;local v155;while true do if (v151==((6465 -4804) -(1477 + 184))) then v152=v85[(1088 -(686 + 400)) -0 ];v153,v154=v76(v83[v152](v13(v83,v152 + 1 + 0 ,v78)));v151=(4 + 0) -3 ;end if ((v151==((1086 -(73 + 156)) -(564 + 292))) or (14>994)) then v78=(v154 + v152) -(1 -0) ;v155=0 -0 ;v151=306 -(244 + 60) ;end if (v151==(2 + 0)) then for v333=v152,v78 do local v334=0 + 0 ;while true do if ((476 -(41 + 435))==v334) then v155=v155 + ((5 + 997) -(938 + 63)) ;v83[v333]=v153[v155];break;end end end break;end end else local v156;local v157,v158;local v159;v83[v85[(813 -(721 + 90)) + 0 ]]=v83[v85[1099 -(709 + 387) ]];v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[2]]=v65[v85[1128 -(936 + 189) ]];v77=v77 + (3 -2) ;v85=v73[v77];v83[v85[1 + 1 ]]=v65[v85[1616 -(18 + 1547 + 48) ]];v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[2 + 0 ]]=v65[v85[1141 -(782 + 356) ]];v77=v77 + ((870 -602) -(176 + 91)) ;v85=v73[v77];v83[v85[4 -2 ]]=v65[v85[4 -1 ]];v77=v77 + (1881 -(446 + (1904 -(224 + 246)))) ;v85=v73[v77];v83[v85[1094 -(975 + 117) ]]=v83[v85[1878 -(157 + 1718) ]];v77=v77 + 1 + (0 -0) ;v85=v73[v77];v83[v85[2]]=v83[v85[10 -7 ]];v77=v77 + (3 -2) ;v85=v73[v77];v83[v85[7 -5 ]]=v83[v85[1021 -(697 + 321) ]] + v85[10 -6 ] ;v77=v77 + 1 ;v85=v73[v77];v159=v85[3 -1 ];v157,v158=v76(v83[v159](v13(v83,v159 + (2 -1) ,v85[2 + 1 ])));v78=(v158 + v159) -(1 -0) ;v156=0 -0 ;for v266=v159,v78 do local v267=1227 -((592 -270) + 905) ;while true do if (v267==(611 -(602 + 9))) then v156=v156 + (1190 -(449 + 740)) ;v83[v266]=v157[v156];break;end end end v77=v77 + (2 -1) ;v85=v73[v77];v159=v85[2 + 0 ];v83[v159]=v83[v159](v13(v83,v159 + (1 -0) ,v78));v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[874 -(826 + 46) ]]=v65[v85[2 + 1 ]];v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[949 -(245 + 516 + 186) ]]=v65[v85[9 -6 ]];v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[2]]=v83[v85[1901 -((516 -256) + 1638) ]];v77=v77 + ((1467 -1026) -(382 + 58)) ;v85=v73[v77];v83[v85[6 -4 ]]= #v83[v85[3 + (513 -(203 + 310)) ]];v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[(1996 -(1238 + 755)) -1 ]]=v83[v85[8 -5 ]]%v83[v85[4]] ;v77=v77 + (1206 -(902 + 303)) ;v85=v73[v77];v83[v85[3 -1 ]]=v85[6 -3 ] + v83[v85[671 -(89 + 578) ]] ;v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[1 + 1 ]]= #v83[v85[(74 + 978) -(572 + 477) ]];v77=v77 + (1691 -(1121 + (2103 -(709 + 825)))) ;v85=v73[v77];v83[v85[216 -(22 + 192) ]]=v83[v85[686 -(483 + 200) ]]%v83[v85[1467 -(1404 + 59) ]] ;v77=v77 + (1 -0) ;v85=v73[v77];v83[v85[2 + 0 ]]=v85[8 -5 ] + v83[v85[1 + 3 ]] ;v77=v77 + 1 ;v85=v73[v77];v83[v85[2 -0 ]]=v83[v85[768 -(468 + 297) ]] + v85[566 -(334 + 228) ] ;v77=v77 + 1 + 0 ;v85=v73[v77];v159=v85[6 -4 ];v157,v158=v76(v83[v159](v13(v83,v159 + (2 -1) ,v85[5 -2 ])));v78=(v158 + v159) -(1 + 0) ;v156=(434 -198) -(141 + 95) ;for v268=v159,v78 do local v269=0 + 0 ;while true do if (v269==0) then v156=v156 + (2 -1) ;v83[v268]=v157[v156];break;end end end v77=v77 + 1 ;v85=v73[v77];v159=v85[2 + 0 ];v157,v158=v76(v83[v159](v13(v83,v159 + (2 -1) ,v78)));v78=(v158 + v159) -(1 + 0) ;v156=0 -0 ;for v270=v159,v78 do v156=v156 + (1403 -(832 + 570)) ;v83[v270]=v157[v156];end v77=v77 + 1 ;v85=v73[v77];v159=v85[2 + 0 ];v83[v159]=v83[v159](v13(v83,v159 + 1 + 0 ,v78));v77=v77 + 1 ;v85=v73[v77];v83[v85[2 + 0 ]]=v83[v85[2 + 1 ]]%v85[(1165 -365) -(588 + 208) ] ;v77=v77 + (1 -0) ;v85=v73[v77];v159=v85[2 + 0 ];v157,v158=v76(v83[v159](v83[v159 + (164 -((956 -(196 + 668)) + 71)) ]));v78=(v158 + v159) -(1801 -(884 + 916)) ;v156=0 -(0 -0) ;for v273=v159,v78 do local v274=0 + 0 ;while true do if ((653 -(232 + 421))==v274) then v156=v156 + (1890 -(1569 + 320)) ;v83[v273]=v157[v156];break;end end end v77=v77 + (1 -0) ;v85=v73[v77];v159=v85[767 -((1188 -614) + 191) ];v83[v159](v13(v83,v159 + (834 -(171 + 662)) + 0 ,v78));end elseif ((401<=734) and (v86<=(32 -19))) then if ((v86>(7 + 5)) or (2167>=3426)) then v83[v85[851 -(254 + 595) ]]=v66[v85[129 -(55 + 71) ]];else local v192;local v193,v194;local v195;local v196;v83[v85[2 -0 ]]=v66[v85[428 -(360 + 65) ]];v77=v77 + (1791 -(573 + 1217)) ;v85=v73[v77];v83[v85[5 -3 ]]=v66[v85[4 -1 ]];v77=v77 + 1 + 0 ;v85=v73[v77];v196=v85[2];v195=v83[v85[4 -1 ]];v83[v196 + (940 -(714 + 225)) ]=v195;v83[v196]=v195[v85[4]];v77=v77 + (1 -(93 -(4 + 89))) ;v85=v73[v77];v83[v85[(17 -12) -3 ]]=v83[v85[(2 + 1) -0 ]];v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[2 + 0 ]]=v85[3 -0 ];v77=v77 + (807 -(118 + 688)) ;v85=v73[v77];v83[v85[50 -(25 + 23) ]]=v85[1 + (8 -6) ];v77=v77 + 1 + 0 ;v85=v73[v77];v196=v85[4 -(1 + 1) ];v193,v194=v76(v83[v196](v13(v83,v196 + (1887 -(927 + 959)) ,v85[2 + 1 ])));v78=(v194 + v196) -(2 -1) ;v192=0 -0 ;for v275=v196,v78 do local v276=732 -(16 + (2202 -(35 + 1451))) ;while true do if ((764<3285) and (v276==0)) then v192=v192 + ((1454 -(28 + 1425)) -0) ;v83[v275]=v193[v192];break;end end end v77=v77 + (98 -(11 + 86)) ;v85=v73[v77];v196=v85[4 -(1995 -(941 + 1052)) ];v193,v194=v76(v83[v196](v13(v83,v196 + (1190 -(442 + 747)) ,v78)));v78=(v194 + v196) -(1136 -(832 + 303)) ;v192=285 -(175 + 110) ;for v277=v196,v78 do v192=v192 + (2 -1) ;v83[v277]=v193[v192];end v77=v77 + (4 -3) ;v85=v73[v77];v196=v85[1798 -(503 + 1293) ];v83[v196]=v83[v196](v13(v83,v196 + (2 -1) ,v78));v77=v77 + 1 + 0 + 0 ;v85=v73[v77];v83[v85[1063 -((2324 -(822 + 692)) + 251) ]]();end elseif (v86==(10 + 4)) then local v216=v85[1 + 1 ];local v217=v83[v216];local v218=v83[v216 + 2 + 0 ];if (v218>(0 -0)) then if (v217>v83[v216 + (534 -(43 + 490)) ]) then v77=v85[736 -(711 + 22) ];else v83[v216 + (11 -8) ]=v217;end elseif (v217<v83[v216 + (860 -(240 + 619)) ]) then v77=v85[1 + 2 ];else v83[v216 + (4 -1) ]=v217;end else local v219=v85[(2115 -633) -(641 + 396 + 443) ];v83[v219](v13(v83,v219 + (914 -(910 + 3)) ,v78));end elseif (v86<=23) then if (v86<=(2 + 17)) then if (v86<=(1761 -(1344 + (697 -(45 + 252))))) then if ((2499==2499) and (v86>(421 -(255 + 150)))) then local v220=v85[2 + 0 ];local v221,v222=v76(v83[v220](v83[v220 + 1 + 0 ]));v78=(v222 + v220) -(4 -3) ;local v223=0 -0 ;for v280=v220,v78 do local v281=1739 -(404 + 1335) ;while true do if ((0 -0)==v281) then v223=v223 + (1 -0) ;v83[v280]=v221[v223];break;end end end else v83[v85[(404 + 4) -(183 + 223) ]]();end elseif (v86>(21 -3)) then local v224=v85[1 + 1 + 0 ];local v225=v83[v224 + 1 + 1 ];local v226=v83[v224] + v225 ;v83[v224]=v226;if (v225>((819 -482) -(10 + 327))) then if (v226<=v83[v224 + 1 + 0 ]) then v77=v85[341 -(118 + 220) ];v83[v224 + 1 + 2 ]=v226;end elseif (v226>=v83[v224 + (450 -(108 + 341)) ]) then local v351=0 + 0 ;while true do if (v351==((433 -(114 + 319)) + 0)) then v77=v85[12 -9 ];v83[v224 + 3 ]=v226;break;end end end else v83[v85[1495 -(711 + 782) ]]=v83[v85[5 -2 ]];end elseif ((v86<=(490 -(270 + 199))) or (692>=4933)) then if (v86==20) then if  not v83[v85[1 + 1 ]] then v77=v77 + (1 -0) ;else v77=v85[1822 -(580 + 1239) ];end else v83[v85[5 -3 ]]=v66[v85[3 + 0 ]];v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[1 + 1 ]]=v83[v85[3]][v85[9 -5 ]];v77=v77 + 1 + 0 ;v85=v73[v77];v83[v85[3 -(1 -0) ]]=v66[v85[1170 -(645 + 522) ]];v77=v77 + (1791 -(1010 + 780)) ;v85=v73[v77];v83[v85[4 -2 ]]=v83[v85[1029 -(834 + 192) ]][v85[4 + 0 ]];v77=v77 + 1 + (0 -0) ;v85=v73[v77];v83[v85[9 -7 ]]=v66[v85[4 -(1 + 0) ]];v77=v77 + 1 ;v85=v73[v77];v83[v85[5 -3 ]]=v83[v85[1839 -(1045 + (1178 -387)) ]][v85[4]];v77=v77 + (2 -1) ;v85=v73[v77];v83[v85[2 -0 ]]=v66[v85[508 -(351 + 154) ]];v77=v77 + (1575 -(1281 + 293)) ;v85=v73[v77];if  not v83[v85[(561 -293) -(28 + 238) ]] then v77=v77 + (2 -1) ;else v77=v85[1562 -(1381 + 178) ];end end elseif (v86==(21 + (1964 -(556 + 1407)))) then if (v83[v85[2 + 0 ]]==v85[2 + 2 ]) then v77=v77 + 1 + 0 ;else v77=v85[(1208 -(741 + 465)) + 1 ];end else local v244=v85[6 -(469 -(170 + 295)) ];local v245,v246=v76(v83[v244](v13(v83,v244 + 1 + 0 ,v85[885 -(244 + 638) ])));v78=(v246 + v244) -(694 -(627 + 66)) ;local v247=470 -(381 + 89) ;for v282=v244,v78 do local v283=0 + 0 + 0 ;while true do if (v283==(0 + 0 + 0)) then v247=v247 + ((2 -1) -0) ;v83[v282]=v245[v247];break;end end end end elseif ((v86<=(1183 -(1074 + 82))) or (3154<=2260)) then if (v86<=(7 + 18)) then if ((v86==(52 -28)) or (2637>3149)) then v83[v85[1786 -(214 + 1570) ]]=v65[v85[1458 -(990 + 465) ]];else local v250=0 + 0 ;local v251;while true do if (v250==(0 -(0 + 0))) then v251=v85[1 + 1 ];do return v83[v251](v13(v83,v251 + ((794 + 443) -(298 + 938)) ,v85[1262 -(233 + 1026) ]));end break;end end end elseif ((v86>(12 + 14)) or (3992<2407)) then local v252=0 + 0 ;local v253;local v254;while true do if ((v252==(3 -2)) or (2902>4859)) then v83[v253 + (1727 -(1668 + 58)) ]=v254;v83[v253]=v254[v85[630 -(512 + 114) ]];break;end if (v252==((0 + 0) -0)) then v253=v85[(1233 -(957 + 273)) -1 ];v254=v83[v85[10 -7 ]];v252=1 + 0 ;end end else v83[v85[1 + 1 + 0 ]]=v83[v85[1 + 2 ]][v85[1 + 3 ]];end elseif (v86<=(3 + 3 + 23)) then if (v86==(25 + 3)) then v83[v85[299 -(36 + (994 -733)) ]]=v85[10 -(18 -11) ];else v83[v85[1996 -((332 -223) + (9333 -7448)) ]]= #v83[v85[1472 -(1269 + 200) ]];end elseif ((1679<4359) and (v86<=(57 -27))) then local v260=815 -(98 + 717) ;local v261;while true do if ((1913<4670) and (v260==(826 -(802 + 24)))) then v261=v85[2 -0 ];do return v13(v83,v261,v78);end break;end end elseif (v86>(38 -7)) then v83[v85[1 + 1 ]]={};else v83[v85[2 + (1780 -(389 + 1391)) ]]=v83[v85[322 -(134 + 185) ]]%v83[v85[1 + 3 ]] ;end v77=v77 + 1 + 0 + 0 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!0F3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E73657274030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574033D3O00D9D7CF35F5E18851C3C2CC6BE1B2D316C4C1CE36E3A9C411DFD7DE2BF2F5C411DC8CE924EFADC210DECA827CA997C8129ECEDA2CE8F4EB11DD8DD730E703083O007EB1A3BB4586DBA700223O0012153O00013O00206O000200122O000100013O00202O00010001000300122O000200013O00202O00020002000400122O000300053O00062O0003000A000100010004033O000A000100120D000300063O00201A00040003000700120D000500083O00201A00050005000900120D000600083O00201A00060006000A00060700073O000100062O00123O00064O00128O00123O00044O00123O00014O00123O00024O00123O00053O00120C0008000B3O00122O0009000C3O00202O00090009000D4O000B00073O00122O000C000E3O00122O000D000F6O000B000D6O00098O00083O00024O0008000100012O00058O00063O00013O00013O00033O00028O00026O00F03F026O007040022F3O00121C000200016O000300033O00261600020027000100010004033O002700012O002000046O0001000300043O00122O000400026O00055O00122O000600023O00042O0004002600012O001800086O000A000900036O000A00016O000B00026O000C00036O000D00046O000E8O000F00073O00202O0010000700024O000D00106O000C3O00024O000D00036O000E00046O000F00016O001000016O00100007001000102O0010000200104O001100016O00110007001100102O00110002001100202O0011001100024O000E00116O000D8O000B3O000200202O000B000B00034O000A000B6O00083O00010004130004000A000100121C000200023O00261600020002000100020004033O000200012O0018000400054O0012000500034O0019000400054O001E00045O0004033O000200012O00063O00017O00",v9(),...);