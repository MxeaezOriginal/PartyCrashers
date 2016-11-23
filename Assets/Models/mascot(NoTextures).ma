//Maya ASCII 2016 scene
//Name: mascot(NoTextures).ma
//Last modified: Tue, Nov 22, 2016 05:53:37 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "Unfold3DUnfold" "Unfold3D" "Trunk.r2128.release.Feb  3 2015|16:08:48";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "49E40EE8-4670-0F81-E724-F986E40ABFD1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 80.551307789731638 341.62661483375194 509.46044931667461 ;
	setAttr ".r" -type "double3" -18.905266459674589 1443.3999999996438 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8BBFDC88-4E73-1FC1-2DEA-95838A2FFC88";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 633.29485219082517;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 128.15090560913086 126.49850463867187 10.508497476577759 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D1B15937-4248-A5B7-24FA-89A2C544FBE1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.23971307117025525 100.10000000000001 0.5111016776467916 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D02CDA15-4230-AB29-2EE0-48892800718C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 692.53690279866396;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "93725112-4BA6-78E2-F0B2-4C83876A5761";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.966961736022469 29.684817335134728 100.10000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "16609648-4AC7-E24F-6625-7F9DAA9B68AF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 133.93369598322244;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "C6C929A1-45AC-4F3A-29BD-75A543E6C9A1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 263.43796102819903 31.577096927810015 52.207839245720272 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4B2C7445-40A7-F936-FCD8-C8BEFFE27AD8";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 52.602214359682293;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane1";
	rename -uid "606E6EA6-487F-5CB1-78E2-49968D7F7B94";
	setAttr ".t" -type "double3" -3.3441872059933218 123.60685693584666 -359.45641548342968 ;
	setAttr ".s" -type "double3" 71.248870959774933 71.248870959774933 71.248870959774933 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "ED859987-4210-5136-79B2-9091FFB907D0";
	setAttr -k off ".v";
	setAttr ".fc" 102;
	setAttr ".imn" -type "string" "D:/Maya Projects/PartyCrashers/sourceimages/lionFront.jpg";
	setAttr ".cov" -type "short2" 337 461 ;
	setAttr ".dlc" no;
	setAttr ".w" 3.37;
	setAttr ".h" 4.61;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane2";
	rename -uid "9C5E566E-449C-3D27-A61D-1783513AC6B1";
	setAttr ".t" -type "double3" -236.46032851202187 123.60685693584666 -5.2504740224895013e-014 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".s" -type "double3" 71.248870959774933 71.248870959774933 71.248870959774933 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "402E87A7-40C0-5404-429F-73B3C4F661A7";
	setAttr -k off ".v";
	setAttr ".fc" 102;
	setAttr ".imn" -type "string" "D:/Maya Projects/PartyCrashers/sourceimages/lionSide.jpg";
	setAttr ".cov" -type "short2" 224 461 ;
	setAttr ".dlc" no;
	setAttr ".w" 2.24;
	setAttr ".h" 4.61;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pCube1";
	rename -uid "F6DE9B29-4579-1D3F-5DD3-EAA6E75A4FF0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 109.53303126564678 6.1209635119037964 ;
	setAttr ".s" -type "double3" 84.326583643226499 84.326583643226499 84.326583643226499 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "884B3591-480F-11DA-860C-A8B1C45F2B8A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode joint -n "rootJnt";
	rename -uid "95E78B9E-4E76-029E-5E3B-C6A6564781AC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -1.7226620716228667 90 ;
	setAttr ".bps" -type "matrix" 0 0.99988899211820148 -0.014899779892577125 0 -1.1102230246251565e-016 -0.014899779892577181 -0.99988899211820148 0
		 -1 1.1102230246251565e-016 0 0 0 70.345101742659324 1.2864740396617693 1;
	setAttr ".radi" 1.967965848877125;
createNode joint -n "left_hipJnt" -p "rootJnt";
	rename -uid "0BA90E04-4F8D-269A-E5A5-959ED248CBD5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -16.312360018863615 -1.7514729347201463 -31.840120886374894 ;
	setAttr ".r" -type "double3" 1.3236331311763891 -0.1641604973641578 2.5955761662462842 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yxz";
	setAttr ".jo" -type "double3" 90.000000000000384 87.868426412273209 -178.186155453753 ;
	setAttr ".bps" -type "matrix" 0.99660492485983165 -0.08232495636870342 -0.001106934514866672 0
		 -0.082277069224095542 -0.99633798770977278 0.023261515993891133 0 -0.0030178841963358627 -0.023091466071511517 -0.99972880151051247 0
		 31.840120886374894 54.060649085543673 3.2808031208909476 1;
	setAttr ".radi" 2;
createNode joint -n "left_kneeJnt" -p "left_hipJnt";
	rename -uid "03E0BA3B-4BD2-62D4-C72B-BDBBF0A2EC51";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.4695884242111853e-014 28.580983980026566 -2.1610254901129062e-014 ;
	setAttr ".r" -type "double3" -2.922382716887959 0.00015502678241930364 0.02364943310858509 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yxz";
	setAttr ".jo" -type "double3" 13.617765201511951 -0.49050335680871854 -0.10768972074832941 ;
	setAttr ".bps" -type "matrix" 0.99666191512494662 -0.081049966110717103 -0.0097943827230270834 0
		 -0.081562507004027021 -0.98331582870989198 -0.16259624368292253 0 0.0035474484762353991 0.16285233803059102 -0.98664407544325661 0
		 29.488561288957499 25.584329020118751 3.9456401368635037 1;
	setAttr ".radi" 1.6805697403191915;
createNode joint -n "left_footJnt" -p "left_kneeJnt";
	rename -uid "155AEF01-4B4C-2673-7B53-B78E8469F197";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 4.5604911890097964e-016 24.266279886146719 3.5527136788004994e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 169.0411413525529 0 -2.0824503294879091 ;
	setAttr ".bps" -type "matrix" 0.99896747737350078 -0.045265088141026616 -0.0038795548210126705 0
		 0.045140756550397065 0.99859680482705249 -0.027689952821552732 0 0.0051274992035032132 0.027486236279038567 0.99960903135532531 0
		 27.509342665781979 1.7229119041662067 3.4179217586860489e-005 1;
	setAttr ".radi" 1.6805697403191915;
createNode ikEffector -n "effector1" -p "left_kneeJnt";
	rename -uid "EF04763A-4137-EE11-5618-C4AE1E8092F3";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "spine1Jnt" -p "rootJnt";
	rename -uid "7B00E687-4890-9C62-0F39-79BF0A9635E5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 1.9846668871586756e-014 10.002687254201467 ;
	setAttr ".bps" -type "matrix" -1.9283948479321923e-017 0.98210227923461624 -0.18834838231896761 0
		 -4.5721916986702183e-016 0.18834838231896767 0.98210227923461635 0 1 -4.3127938287972253e-018 5.564138664472455e-016 0
		 -1.9721522630525295e-031 77.190133526526253 -10.195514759082602 1;
	setAttr ".radi" 1.2972083960779577;
createNode joint -n "spine2Jnt" -p "spine1Jnt";
	rename -uid "AF4773F2-4A08-27DC-59A2-61A0CBEFA7E7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -79.907485112867789 -89.999999999999957 0 ;
	setAttr ".bps" -type "matrix" 1 6.7080961500721425e-016 5.3998389632070535e-016 0
		 -8.2075273907074717e-016 0.99991112296120754 -0.013332148306150204 0 -4.4676491500682768e-016 0.013332148306150232 0.99991112296120765 0
		 -3.9608521004921183e-015 93.309079340148145 -13.286819435667621 1;
	setAttr ".radi" 1.3049327285438179;
createNode joint -n "spine3Jnt" -p "spine2Jnt";
	rename -uid "EEEAFF74-4348-6C42-53DD-9A828119987B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 10.569991220827069 0 0 ;
	setAttr ".bps" -type "matrix" 1 6.7080961500721425e-016 5.3998389632070535e-016 0
		 -8.8877884208751433e-016 0.9853897930516673 0.17031428521880559 0 -2.8862799211228481e-016 -0.17031428521880554 0.98538979305166741 0
		 -8.5784429101722771e-015 109.86964010756792 -13.507626912566565 1;
	setAttr ".radi" 1.3870994567728085;
createNode joint -n "spine4Jnt" -p "spine3Jnt";
	rename -uid "C754D82F-4398-74E6-7151-C98D7F0D05F4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" 17.77593644790004 0 0 ;
	setAttr ".bps" -type "matrix" 1 6.7080961500721425e-016 5.3998389632070535e-016 0
		 -9.3446329030631607e-016 0.88634884820483495 0.46301805503237464 0 -3.5081395476390256e-018 -0.46301805503237453 0.88634884820483495 0
		 -1.4968456013200128e-014 127.75504573638128 -10.41632223598155 1;
	setAttr ".radi" 1.3116065018825438;
createNode joint -n "headJnt" -p "spine4Jnt";
	rename -uid "7F5B79C2-4D62-A62D-E72A-7795EDEB884A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yzx";
	setAttr ".jo" -type "double3" -31.804259413939807 0 0 ;
	setAttr ".bps" -type "matrix" 1 6.7080961500721425e-016 5.3998389632070535e-016 0
		 -7.9230805703169155e-016 0.99728598644968847 -0.073625139939239526 0 -4.9546129085515651e-016 0.073625139939239637 0.99728598644968847 0
		 -1.571588257444123e-014 142.54914668860962 -2.6880605445190104 1;
	setAttr ".radi" 2;
createNode joint -n "headEndJnt" -p "headJnt";
	rename -uid "FA5210AC-4592-2CE7-C250-70B4D301F532";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.0962628814328018e-013 98.969546865081739 2.0995825086789836e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.2222302061426786 0 0 ;
	setAttr ".bps" -type "matrix" 1 6.7080961500721425e-016 5.3998389632070535e-016 0
		 -8.2663612910257297e-016 1.0000000000000004 -9.5756735873919752e-016 0 -4.3578281062417617e-016 1.0685896612017132e-015 1.0000000000000004 0
		 1.5496036186859093e-014 241.25008886243134 -9.9747072821837577 1;
	setAttr ".radi" 2;
createNode parentConstraint -n "headJnt_parentConstraint1" -p "headJnt";
	rename -uid "5C5B2D37-4E9D-CEDA-2E8C-05A4632EF3DB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "headCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.5777218104420236e-030 2.8421709430404007e-014 
		-5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" -4.222230206142723 0 0 ;
	setAttr ".lr" -type "double3" 6.361109362927032e-015 0 0 ;
	setAttr ".rst" -type "double3" 1.484975538460634e-014 16.691059036395856 -1.4210854715202004e-014 ;
	setAttr ".rsrr" -type "double3" 6.361109362927032e-015 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "left_clavicleJnt" -p "spine4Jnt";
	rename -uid "6AF81847-41EF-7FA7-997C-6EA1DAF094B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -27.557640771763335 -1.2079145139261973 -2.3132645399205516 ;
	setAttr ".bps" -type "matrix" 0.9989630395911645 -0.045528513382071908 -1.0408340855860843e-017 0
		 0.045528513382071742 0.99896303959116484 0 0 1.1238980778449576e-016 1.1102230246251565e-016 1.0000000000000002 0
		 19.07272201469058 134.38059636408249 1.4210854715202004e-014 1;
	setAttr ".radi" 2;
createNode joint -n "left_shoulderJnt" -p "left_clavicleJnt";
	rename -uid "8AFE91D1-48A8-CD44-31AC-AAB1C885E186";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 3.5217697838253876 ;
	setAttr ".bps" -type "matrix" 0.99987324411358136 0.015921548473142449 -1.0388685023824453e-017 0
		 -0.015921548473142595 0.99987324411358169 6.3936128092616155e-019 0 1.1238980778449576e-016 1.1102230246251565e-016 1.0000000000000002 0
		 53.977594876001035 132.78977977910046 1.384717578027395e-014 1;
	setAttr ".radi" 2;
createNode joint -n "left_elbowJnt" -p "left_shoulderJnt";
	rename -uid "457DAC5C-4CFE-5E19-1569-69AED9E319EF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 7.400879263395419 ;
	setAttr ".bps" -type "matrix" 0.98949261822558099 0.14458339627040415 -1.0219782171191803e-017 0
		 -0.14458339627040426 0.98949261822558132 1.97220986336956e-018 0 1.1238980778449576e-016 1.1102230246251565e-016 1.0000000000000002 0
		 95.152174031163241 133.44542594399155 1.3419371819772215e-014 1;
	setAttr ".radi" 1.9494267180184708;
createNode joint -n "left_finger1Jnt" -p "left_elbowJnt";
	rename -uid "24C43B48-4579-E03B-CBC5-2D9CD3E387E7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -3.4827353817094755 ;
	setAttr ".bps" -type "matrix" 0.9964482918573746 0.08420689790344027 -1.0320715111192334e-017 0
		 -0.084206897903440395 0.99644829185737493 1.3477384632740315e-018 0 1.1238980778449576e-016 1.1102230246251565e-016 1.0000000000000002 0
		 121.13310643376383 135.06792193840181 1.3150002695123482e-014 1;
	setAttr ".radi" 0.93155312572975901;
createNode joint -n "left_finger2Jnt" -p "left_finger1Jnt";
	rename -uid "6CBA7D85-421B-24A3-03BB-C79FD6E29D80";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -12.857657468721918 ;
	setAttr ".pa" -type "double3" -1.9696536029698626 1.4735436601189764 -1.2111551322178893 ;
	setAttr ".bps" -type "matrix" 0.99020179615021586 -0.13964384304682564 -1.0361844431105977e-017 0
		 0.13964384304682548 0.99020179615021608 -9.8272038614252417e-019 0 1.1238980778449576e-016 1.1102230246251565e-016 1.0000000000000002 0
		 133.17965159484802 138.42833679716406 1.3026340586676223e-014 1;
	setAttr ".radi" 0.98254941283269392;
createNode joint -n "left_fingerEndJnt" -p "left_finger2Jnt";
	rename -uid "37D14782-4564-629F-4D04-2F83134712F0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 10.32928864809875 1.5765166949677223e-014 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 8.0272375104319771 ;
	setAttr ".bps" -type "matrix" 1 1.1102230246251565e-016 -1.0397547818471652e-017 0
		 -2.4980018054066022e-016 1.0000000000000002 4.7387628594122707e-019 0 1.1238980778449576e-016 1.1102230246251565e-016 1.0000000000000002 0
		 143.40773176714944 136.98591523440362 1.2919310104620634e-014 1;
	setAttr ".radi" 0.98254941283269392;
createNode parentConstraint -n "left_finger2Jnt_parentConstraint1" -p "left_finger2Jnt";
	rename -uid "6C60C34D-4653-386A-1CB2-73A0A33B573F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_finger1CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-014 0 -9.4663308626521417e-030 ;
	setAttr ".tg[0].tor" -type "double3" -1.9696536029698626 1.4735436601189766 -9.2383926426498615 ;
	setAttr ".lr" -type "double3" -1.9696536029698626 1.4735436601189766 -1.2111551322178919 ;
	setAttr ".rst" -type "double3" 12.286729459470109 2.3340774474771848 1.4791141972893971e-030 ;
	setAttr ".rsrr" -type "double3" -1.9696536029698626 1.4735436601189766 -1.2111551322178919 ;
	setAttr -k on ".w0";
createNode joint -n "left_thumb1Jnt" -p "left_finger1Jnt";
	rename -uid "0C658E76-4BEB-3B43-3249-CB89FAA0C3C9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.6217918818163133 -7.4601640755848893 11 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -10.024848866024888 ;
	setAttr ".bps" -type "matrix" 0.99589320646770363 -0.090535746042520904 -1.0397749979418557e-017 0
		 0.090535746042520723 0.99589320646770396 -4.6941957488310223e-019 0 1.1238980778449576e-016 1.1102230246251565e-016 1.0000000000000002 0
		 119.14882366617812 127.41348122699333 11.000000000000014 1;
	setAttr ".radi" 0.8228542374529324;
createNode joint -n "left_thumb2Jnt" -p "left_thumb1Jnt";
	rename -uid "7551B5A5-4C2C-7064-8D77-3E9700E2ACA4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 7.2418485907566943 -2.3314683517128287e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 5.1944289077350101 ;
	setAttr ".bps" -type "matrix" 1 1.2212453270876722e-015 -1.039754781847165e-017 0
		 -1.3600232051658168e-015 1.0000000000000002 4.7387628594123881e-019 0 1.1238980778449576e-016 1.1102230246251565e-016 1.0000000000000002 0
		 126.36093147998042 126.75783506210219 11.000000000000014 1;
	setAttr ".radi" 0.9366192124706243;
createNode joint -n "left_thumbEndJnt" -p "left_thumb2Jnt";
	rename -uid "CFFD5392-4FF4-4747-E7DD-77A79DCC4636";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 9.4413047744320693 2.6585063383346694e-015 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 1.2212453270876722e-015 -1.039754781847165e-017 0
		 -1.3600232051658168e-015 1.0000000000000002 4.7387628594123881e-019 0 1.1238980778449576e-016 1.1102230246251565e-016 1.0000000000000002 0
		 135.80223625441249 126.7578350621022 11.000000000000014 1;
	setAttr ".radi" 0.9366192124706243;
createNode joint -n "joint1" -p "left_finger1Jnt";
	rename -uid "A781DFA5-43F2-7EE1-42A8-3DAB1776D398";
	setAttr ".t" -type "double3" -9.948241714141659e-005 8.6746803276582796e-005 -3.1597554872208879e-020 ;
	setAttr ".bps" -type "matrix" 0.9964482918573746 0.08420689790344027 -1.0320715111192334e-017 0
		 -0.084206897903440395 0.99644829185737493 1.3477384632740315e-018 0 1.1238980778449576e-016 1.1102230246251565e-016 1.0000000000000002 0
		 121.133 135.06800000000001 1.3149972241210299e-014 1;
	setAttr ".radi" 0.93155312572975901;
createNode parentConstraint -n "left_finger1Jnt_parentConstraint1" -p "left_finger1Jnt";
	rename -uid "B8BA453C-4C76-5179-8EC0-F48DBA16754C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_finger1CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-014 0 1.5777218104420236e-030 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 4.8304199582899461 ;
	setAttr ".lr" -type "double3" 0 0 -1.1927080055488188e-015 ;
	setAttr ".rst" -type "double3" 25.942526808298055 -2.1509636354702479 3.1554436208840472e-030 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.1927080055488188e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "left_elbowJnt_parentConstraint1" -p "left_elbowJnt";
	rename -uid "8FCE655E-4360-33EA-FD34-629D751C0EC1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_elbowCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 7.8886090522101181e-031 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 8.313155339999426 ;
	setAttr ".lr" -type "double3" 0 0 1.5902773407317584e-015 ;
	setAttr ".rst" -type "double3" 41.179798937079028 1.4210854715202004e-013 -8.8746851837363828e-031 ;
	setAttr ".rsrr" -type "double3" 0 0 1.5902773407317584e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "left_shoulderJnt_parentConstraint1" -p "left_shoulderJnt";
	rename -uid "8532C142-489F-3DD5-5135-FBB3A256B205";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_shoulderCtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-014 8.5265128291212022e-014 
		8.6774699574311299e-030 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 0.912276076604006 ;
	setAttr ".lr" -type "double3" 0 0 -3.975693351829396e-016 ;
	setAttr ".rst" -type "double3" 34.941105404255637 5.6843418860808015e-014 1.8735446498999034e-030 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.975693351829396e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "left_clavicleJnt_parentConstraint1" -p "left_clavicleJnt";
	rename -uid "994768F5-4D3A-1BF2-1E82-46BF1B311DDF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_clavicleCtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.8421709430404007e-014 -5.3290705182007514e-015 ;
	setAttr ".tg[0].tor" -type "double3" 1.2722218725854067e-014 3.2004331482226638e-014 
		-2.6094937072214206 ;
	setAttr ".lr" -type "double3" -8.8195166191559133e-015 -3.2004331482226638e-014 
		-5.2180975242760578e-016 ;
	setAttr ".rst" -type "double3" 19.072722014690605 10.695494429880455 6.1647456512358971 ;
	setAttr ".rsrr" -type "double3" -8.8195166191559133e-015 -3.2004331482226638e-014 
		-5.2180975242760578e-016 ;
	setAttr -k on ".w0";
createNode joint -n "right_clavicleJnt" -p "spine4Jnt";
	rename -uid "E14F19F5-4BF2-5256-14C7-49A65BF395F2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 152.44235922823668 1.2079145139261822 2.3132645399204308 ;
	setAttr ".bps" -type "matrix" 0.99896303959116461 0.04552851338207127 3.5388358909926865e-016 0
		 0.045528513382071402 -0.99896303959116484 -3.3306690738754696e-016 0 2.3455488741086547e-016 1.1102230246251565e-016 -1.0000000000000002 0
		 -19.072700000000001 134.38099999999997 1.2434497875801753e-014 1;
	setAttr ".radi" 2;
createNode joint -n "right_shoulderJnt" -p "right_clavicleJnt";
	rename -uid "C1A0F422-464F-A0A6-E299-D29EF5B1F389";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4787793329033612e-006 0 3.5217697838252828 ;
	setAttr ".bps" -type "matrix" 0.99987324411358147 -0.015921548473141263 3.3275572982039485e-016 0
		 -0.015921548473141117 -0.99987324411358136 -2.580956862378518e-008 0 4.1092852683031153e-010 2.5806296865927183e-008 -0.99999999999999989 0
		 -53.977599999999995 132.78999999999996 1.5502246736968035e-014 1;
	setAttr ".radi" 2;
createNode joint -n "right_elbowJnt" -p "right_shoulderJnt";
	rename -uid "CDD65324-4503-284D-4146-099D8DD8C658";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.4664598985945376e-006 1.9048275464968296e-007 7.4008792633954652 ;
	setAttr ".bps" -type "matrix" 0.9894926182255811 -0.14458339627040373 -3.3245512337975882e-009 0
		 -0.14458339627040354 -0.98949261822558132 -3.659892317801944e-016 0 -3.2896189556371918e-009 4.8067503279003681e-010 -1.0000000000000002 0
		 -95.152199999999993 133.44499999999999 1.507223071132652e-014 1;
	setAttr ".radi" 1.9494267180184708;
createNode joint -n "right_finger1Jnt" -p "right_elbowJnt";
	rename -uid "2E810AA5-497E-99ED-A2D6-F8A5CD158138";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.4799329218826725e-007 1.9013096021822611e-007 -3.4827353817093654 ;
	setAttr ".bps" -type "matrix" 0.9964482918573746 -0.084206897903441769 -3.3184112592134949e-009 0
		 -0.084206897903441602 -0.99644829185737482 -2.0195945353042123e-010 0 -3.2896189556371918e-009 4.8067503279003681e-010 -1.0000000000000002 0
		 -121.13299999999998 135.06800000000001 1.4868794546749939e-014 1;
	setAttr ".radi" 0.93155312572975901;
createNode joint -n "right_finger2Jnt" -p "right_finger1Jnt";
	rename -uid "F3D13722-4813-3405-8AF0-06A6A516037B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.1868221077609429e-006 1.8278861533480432e-007 -12.857657468722 ;
	setAttr ".bps" -type "matrix" 0.99020179615021597 0.13964384304682559 -3.1902631536967743e-009 0
		 0.1396438430468257 -0.9902017961502162 -9.3534053494431296e-010 0 -3.2896189556371918e-009 4.8067503279003681e-010 -1.0000000000000002 0
		 -133.18000000000001 138.42800000000003 1.4920665448158918e-014 1;
	setAttr ".radi" 0.98254941283269392;
createNode joint -n "right_fingerEndJnt" -p "right_finger2Jnt";
	rename -uid "E541C576-4A46-4B7E-D46D-D18D87B81573";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -10.329150392697898 -0.00040623663429073531 3.2953088073221994e-008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.3224915143210139e-008 1.8848127706658241e-007 8.0272375104319504 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 3.3306690738754696e-016 -3.2896188518394951e-009 0
		 4.7184478546569153e-016 -1.0000000000000004 -4.8067527060106051e-010 0 -3.2896189556371918e-009 4.8067503279003681e-010 -1.0000000000000002 0
		 -143.40799999999996 136.98599999999999 1.4723850950412608e-014 1;
	setAttr ".radi" 0.98254941283269392;
createNode parentConstraint -n "right_finger2Jnt_parentConstraint1" -p "right_finger2Jnt";
	rename -uid "129B6BC8-4DF8-EB74-0369-549947B89918";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_finger1CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.00034840515195355692 -0.00033679716412393645 
		7.7625231378587071e-014 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -8.0272375104319682 ;
	setAttr ".lr" -type "double3" 0 0 -3.1805546814635168e-015 ;
	setAttr ".rst" -type "double3" -12.287147748961388 -2.3336257615980287 4.1245107165459271e-008 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.1805546814635168e-015 ;
	setAttr -k on ".w0";
createNode joint -n "right_thumb1Jnt" -p "right_finger1Jnt";
	rename -uid "50A324BE-4050-512C-457B-7C829830FD58";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.1911736898077676e-006 1.8521380907702306e-007 -10.024848866024966 ;
	setAttr ".bps" -type "matrix" 0.99589320646770374 0.090535746042520751 -3.232590772186983e-009 0
		 0.090535746042520862 -0.99589320646770396 -7.7652933345544921e-010 0 -3.2896189556371918e-009 4.8067503279003681e-010 -1.0000000000000002 0
		 -119.149 127.413 11 1;
	setAttr ".radi" 0.8228542374529324;
createNode joint -n "right_thumb2Jnt" -p "right_thumb1Jnt";
	rename -uid "87F15E5A-4663-480C-BF78-E7BE00F3D3DF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.6232334870008795e-007 1.8848127706658169e-007 5.1944289077349373 ;
	setAttr ".bps" -type "matrix" 1 -8.3266726846886741e-017 -3.2896188518394951e-009 0
		 5.5511151231257827e-017 -1.0000000000000002 -4.8067527060105907e-010 0 -3.2896189556371918e-009 4.8067503279003681e-010 -1.0000000000000002 0
		 -126.361 126.758 11 1;
	setAttr ".radi" 0.9366192124706243;
createNode joint -n "right_thumbEndJnt" -p "right_thumb2Jnt";
	rename -uid "4AD7EB82-4229-E24E-0DAD-A58F1D89A383";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -9.4409999999999883 0 3.1057290073022159e-008 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 -8.3266726846886741e-017 -3.2896188518394951e-009 0
		 5.5511151231257827e-017 -1.0000000000000002 -4.8067527060105907e-010 0 -3.2896189556371918e-009 4.8067503279003681e-010 -1.0000000000000002 0
		 -135.80199999999999 126.758 11.000000000000002 1;
	setAttr ".radi" 0.9366192124706243;
createNode parentConstraint -n "right_thumb2Jnt_parentConstraint1" -p "right_thumb2Jnt";
	rename -uid "1EF166B4-438C-D483-8640-15B68F0E37CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_thumb2CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.25926635548817956 0.5729831976344002 5.6843418860808015e-014 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.1805546814635168e-015 ;
	setAttr ".lr" -type "double3" 0 0 -4.7708320221952752e-015 ;
	setAttr ".rst" -type "double3" -7.2416827187029185 -0.00063375022233458367 2.3409887361935944e-008 ;
	setAttr ".rsrr" -type "double3" 0 0 -4.7708320221952752e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "right_thumb1Jnt_parentConstraint1" -p "right_thumb1Jnt";
	rename -uid "553CE8A3-492B-2771-0BC2-D1A69995A641";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_thumb1CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.25915854168583508 0.57233703274326331 5.1514348342607263e-014 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -5.1944289077349328 ;
	setAttr ".lr" -type "double3" 0 0 -3.1805546814635168e-015 ;
	setAttr ".rst" -type "double3" 2.6215571779933668 7.4607451865062444 -11.000000010206156 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.1805546814635168e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "right_finger1Jnt_parentConstraint1" -p "right_finger1Jnt";
	rename -uid "DC85D171-4EAF-4EDF-EB7D-AE84055C2F8A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_finger1CtrlW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.00010643376390362391 7.8061598117074027e-005 
		7.0698056833891232e-014 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 4.830419958290034 ;
	setAttr ".lr" -type "double3" 0 0 -1.1927080055488188e-015 ;
	setAttr ".rst" -type "double3" -25.942468667742077 2.1504457824419489 8.624706563349331e-008 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.1927080055488188e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "right_elbowJnt_parentConstraint1" -p "right_elbowJnt";
	rename -uid "39A79154-4CC1-CF33-0C30-B8BBC77D06FE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_elbowCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.596883666683425e-005 -0.00042594399167228403 
		5.5957289672595036e-014 ;
	setAttr ".tg[0].tor" -type "double3" -3.404113641527644e-009 -2.1377984072372631e-007 
		8.3131553399994011 ;
	setAttr ".lr" -type "double3" 3.4041136415280005e-009 2.1377984072372618e-007 1.1518731029114414e-015 ;
	setAttr ".rst" -type "double3" -41.179809491328939 0.00064641486781624735 -1.6696961690716906e-011 ;
	setAttr ".rsrr" -type "double3" 3.4041136415280005e-009 2.1377984072372618e-007 
		1.1518731029114414e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "right_shoulderJnt_parentConstraint1" -p "right_shoulderJnt";
	rename -uid "B694A9D0-4EBD-EE84-B80B-C2A031DB3C6D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_shoulderCtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.1239989247164885e-006 0.00022022089945039625 
		3.2664160096588974e-014 ;
	setAttr ".tg[0].tor" -type "double3" 1.4787793329033612e-006 0 0.91227607660393739 ;
	setAttr ".lr" -type "double3" -1.895758319773386e-022 -6.577232924178479e-040 -3.975693351829396e-016 ;
	setAttr ".rst" -type "double3" -34.9411408654165 0.00018198923973500314 -1.5432905812436232e-014 ;
	setAttr ".rsrr" -type "double3" -1.895758319773386e-022 -6.577232924178479e-040 
		-3.975693351829396e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "right_clavicleJnt_parentConstraint1" -p "right_clavicleJnt";
	rename -uid "9015B0E3-4C30-9460-4385-F0B1DD0D41BA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_clavicleCtrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.2014690607363718e-005 0.00040363591750747219 
		4.1120889400100173e-015 ;
	setAttr ".tg[0].tor" -type "double3" 3.816665617756222e-014 -9.7404487119820203e-015 
		-2.6094937072213065 ;
	setAttr ".lr" -type "double3" -3.841047799640487e-014 9.7404487119820219e-015 7.9513867036587614e-016 ;
	setAttr ".rst" -type "double3" -19.072699999999976 10.695852192111033 6.1645587605184531 ;
	setAttr ".rsrr" -type "double3" -3.841047799640487e-014 9.7404487119820219e-015 
		7.9513867036587623e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "spine4Jnt_parentConstraint1" -p "spine4Jnt";
	rename -uid "2A30E88A-4F98-FB85-6821-BAAD7C19C591";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine4CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.3410635388757201e-029 0 -3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 27.582029207797074 0 0 ;
	setAttr ".rst" -type "double3" 9.741846813861662e-015 18.150589497607641 7.1054273576010019e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "spine3Jnt_parentConstraint1" -p "spine3Jnt";
	rename -uid "3A6546E5-4666-1BFD-20BB-2BA078D9FC76";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine3CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.7610131682735413e-030 -1.4210854715202004e-014 
		1.7763568394002505e-015 ;
	setAttr ".tg[0].tor" -type "double3" 9.8060927598970355 0 0 ;
	setAttr ".rst" -type "double3" 8.9757429359778093e-015 16.562032751847141 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "spine2Jnt_parentConstraint1" -p "spine2Jnt";
	rename -uid "208EF897-4E2A-B853-5470-7EA273953445";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine2CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5498740734945531e-030 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -0.76389846093003755 1.6687886311497315e-015 
		2.5588092344295856e-014 ;
	setAttr ".lr" -type "double3" 0 0 -2.2263882770244611e-014 ;
	setAttr ".rst" -type "double3" 16.412695657507172 3.5527136788005009e-015 -3.6443505230259585e-015 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.2263882770244611e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "spine1Jnt_parentConstraint1" -p "spine1Jnt";
	rename -uid "86C1B677-4351-5818-B822-47A3DDD76E24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "spine1CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.9164567891575885e-031 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999972 10.856413348062244 89.999999999999986 ;
	setAttr ".lr" -type "double3" 4.9941675053935587e-016 3.956661291692337e-016 2.2263882770244611e-014 ;
	setAttr ".rst" -type "double3" 7.0153510372180818 11.378724740551675 -1.2632922197832365e-015 ;
	setAttr ".rsrr" -type "double3" 4.9941675053935587e-016 3.956661291692337e-016 2.2263882770244611e-014 ;
	setAttr -k on ".w0";
createNode joint -n "tail1Jnt" -p "rootJnt";
	rename -uid "3658B997-4B6F-4D59-9276-C4AF50B2A345";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999923 1.9081187032666642e-014 88.672765847404307 ;
	setAttr ".bps" -type "matrix" -1.1099251656807407e-016 0.0082641805874092613 -0.99996585107653491 0
		 -1.3442569417530052e-014 0.99996585107653491 0.0082641805874092058 0 1 1.3333659535863952e-014 1.1111307304402023e-016 0
		 0 64.435260201733612 -35.249507479126031 1;
	setAttr ".radi" 1.1868051098127053;
createNode joint -n "tail2Jnt" -p "tail1Jnt";
	rename -uid "FE1BCFC6-49C5-17F4-AA72-D7BEA3D91408";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.5450627439844958e-016 2.7088457089280981e-014 -1.0765992531154962 ;
	setAttr ".bps" -type "matrix" 1.4160080423434598e-016 -0.01052573266254331 -0.99994460294154131 0
		 -1.3442281841119406e-014 0.99994460294154131 -0.010525732662543365 0 1 1.3333659535863952e-014 1.1111307304402023e-016 0
		 -4.7551813262695098e-015 64.553258090467409 -49.527252015915678 1;
	setAttr ".radi" 1.0281251958980067;
createNode joint -n "tail3Jnt" -p "tail2Jnt";
	rename -uid "8773690D-4BBB-313D-2FF1-70952C9EED96";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.3968564054355425e-017 -3.2267346097961207e-015 
		2.2714286426738006 ;
	setAttr ".bps" -type "matrix" -3.9127546774790747e-016 0.029113867034799984 -0.99957610152818277 0
		 -1.3437332153079607e-014 0.99957610152818277 0.029113867034799928 0 1 1.3333659535863952e-014 1.1111307304402023e-016 0
		 -8.4678703587700105e-015 64.435260201733612 -60.73705144562657 1;
	setAttr ".radi" 1.0771863807378397;
createNode joint -n "tailEndJnt" -p "tail3Jnt";
	rename -uid "0C649EB8-41B9-B42B-ABC8-1095D14DFEF6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 12.158936694264902 1.3211653993039363e-014 6.8475657689151129e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.668337448293215 -89.999999999999247 0 ;
	setAttr ".bps" -type "matrix" 1 1.3720035861656432e-014 -1.3094890015548893e-014 0
		 -1.3828136242123458e-014 0.99999999999999989 1.0408340855860839e-016 0 1.3211550898107232e-014 -1.5959455978969009e-016 0.99999999999999989 0
		 -1.2540607424244372e-014 64.789253867935003 -72.890833985207848 1;
	setAttr ".radi" 1.0771863807378397;
createNode parentConstraint -n "tail3Jnt_parentConstraint1" -p "tail3Jnt";
	rename -uid "5E15074B-4358-69C7-49A7-F4AE2C9A69DF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail3CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.3835469671445681e-015 1.4210854715202004e-014 
		-7.1054273576010019e-015 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999973582 88.331662551706771 89.999999999973582 ;
	setAttr ".lr" -type "double3" 1.91777976965175e-014 -4.3844036239993163e-016 -6.7586786981099735e-015 ;
	setAttr ".rst" -type "double3" 11.210420454028139 1.4210854715202004e-014 -5.3000935845959279e-015 ;
	setAttr ".rsrr" -type "double3" 1.09006890564574e-015 -1.7461119691344006e-016 2.3854160110976376e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "tail2Jnt_parentConstraint1" -p "tail2Jnt";
	rename -uid "BD266D93-4B80-8A75-9E4F-E78DF4A231AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail2CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.6817467254251067e-015 0.1179978887338109 
		-0.014365968552397135 ;
	setAttr ".tg[0].tor" -type "double3" -89.999999999928093 89.396908805619432 -89.999999999928093 ;
	setAttr ".lr" -type "double3" -1.0356330136876765e-014 1.2609171325019376e-014 2.9817700138720464e-015 ;
	setAttr ".rst" -type "double3" 14.27823212304564 1.4210854715202004e-014 -3.1704044107892605e-015 ;
	setAttr ".rsrr" -type "double3" -1.0356330136876765e-014 1.2609171325019376e-014 
		2.9817700138720464e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "tail1Jnt_parentConstraint1" -p "tail1Jnt";
	rename -uid "03EFE8E9-4C1B-1F1B-B4BB-C98731A4A976";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail1CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.9164567891575885e-031 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999574 89.526491941265078 90.000000000001521 ;
	setAttr ".lr" -type "double3" -1.1891460191163961e-012 2.9813485374330191e-015 6.3611093629270028e-015 ;
	setAttr ".rst" -type "double3" -5.3648074191452793 36.61998107502977 -4.0656346150835527e-015 ;
	setAttr ".rsrr" -type "double3" -1.2001384269202411e-012 2.3333383983588979e-014 
		-2.4437481247983062e-028 ;
	setAttr -k on ".w0";
createNode joint -n "right_hipJnt" -p "rootJnt";
	rename -uid "7A608CB2-485C-F36F-8A0A-8E9EFE500288";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -16.312409052457816 -1.7514690828118455 31.8401 ;
	setAttr ".r" -type "double3" 1.321703662306476 -0.16469799470738627 2.5955036156514084 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yxz";
	setAttr ".jo" -type "double3" 90.000000000000341 87.868426412273152 1.8138445462467754 ;
	setAttr ".bps" -type "matrix" 0.9966049346727609 0.082324870834937919 0.0011044581988796987 0
		 -0.082276938663268587 0.99633720695758043 -0.023295394312366196 0 -0.0030182031248874308 0.023125433487366759 0.99972801540014811 0
		 -31.8401 54.060600000000008 3.2808000000000002 1;
	setAttr ".radi" 2;
createNode joint -n "right_kneeJnt" -p "right_hipJnt";
	rename -uid "57C52F01-4050-7A16-41B4-E18CF00C629D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.6301211565993299e-005 -28.580922088017541 8.9690960693999955e-006 ;
	setAttr ".r" -type "double3" -2.9181768200196889 0.00015856473016476777 0.023641941115974618 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "yxz";
	setAttr ".jo" -type "double3" 13.617765201511901 -0.49050335680850365 -0.10768972074822485 ;
	setAttr ".bps" -type "matrix" 0.996661932378196 0.081050058658485233 0.0097918608863152082 0
		 -0.08156204567791546 0.98330934494022282 0.16263568138039042 0 0.0035532032019752807 -0.16289143668310568 0.98663760044016136 0
		 -29.488523041577842 25.584366287210475 3.9466128455565874 1;
	setAttr ".radi" 1.6805697403191915;
createNode joint -n "right_footJnt" -p "right_kneeJnt";
	rename -uid "EC0C2489-4B96-FE12-538F-2EB5BC1B1A99";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.0418004040910773e-005 -24.266292385404647 -2.138758599001811e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 169.04114135255298 -2.607806357965595e-013 -2.0824503294880703 ;
	setAttr ".bps" -type "matrix" 0.9989674778518659 0.045265416232384857 0.0038756015779998266 0
		 0.04514139731754277 -0.99859787961504098 0.027650118924955919 0 0.0051217616600361445 -0.027446619494090579 -0.99961014932614856 0
		 -27.509344917671946 1.7230921005947621 4.5440852007416765e-005 1;
	setAttr ".radi" 1.6805697403191915;
createNode ikEffector -n "effector2" -p "right_kneeJnt";
	rename -uid "BE9BBF2D-495B-66BC-F321-8A9AB6844B8D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.0418004040910773e-005 -24.266292385404647 -2.138758599001811e-006 ;
	setAttr ".hd" yes;
createNode parentConstraint -n "rootJnt_parentConstraint1" -p "rootJnt";
	rename -uid "1CF600E2-4E94-E3BC-8DFB-84896B1C0D3A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "rootCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-014 2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" -90 0.85372609386078446 90 ;
	setAttr ".lr" -type "double3" 3.3227570614159573e-015 6.287998562317577e-015 2.5763881654836527 ;
	setAttr ".rst" -type "double3" 0 70.34510174265931 1.2864740396617695 ;
	setAttr ".rsrr" -type "double3" 3.3227570614159573e-015 6.287998562317577e-015 2.5763881654836527 ;
	setAttr -k on ".w0";
createNode ikHandle -n "left_legIK";
	rename -uid "EA1C4C6C-44CA-8B6E-C1B1-E7B3544F8E92";
	setAttr ".roc" yes;
createNode parentConstraint -n "left_legIK_parentConstraint1" -p "left_legIK";
	rename -uid "42ACA3B7-4C92-C20A-211E-EF99BC29633A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_footCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.6888737631940849 0.00054525720299380964 1.7418282885620657 ;
	setAttr ".rst" -type "double3" 27.509342665781976 1.7229119041662067 3.4179217586860489e-005 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "left_legIK_poleVectorConstraint1" -p "left_legIK";
	rename -uid "977D655C-4736-B7A3-7A95-929571B2EA30";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_kneeCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -2.3515499644243931 -28.314335990450903 48.450462382441955 ;
	setAttr -k on ".w0";
createNode ikHandle -n "right_legIK";
	rename -uid "C212A945-455A-5E90-3A49-269E40A321BD";
	setAttr ".roc" yes;
createNode parentConstraint -n "right_legIK_parentConstraint1" -p "right_legIK";
	rename -uid "6BCA6C71-48A8-FF41-F36E-05926118CEBC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "right_footCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.6888760150840518 0.00072545363154929987 
		1.7418395501964863 ;
	setAttr ".rst" -type "double3" -27.509344917671942 1.7230921005947621 4.5440852007416765e-005 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "right_legIK_poleVectorConstraint1" -p "right_legIK";
	rename -uid "A8E256E2-4EFB-F82B-BFB9-039F37A97FD6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "left_kneeCtrl1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.3515290780495057 -28.314286904907238 48.450465503332886 ;
	setAttr -k on ".w0";
createNode transform -n "mainCtrl";
	rename -uid "FB06D1FE-4FC2-6ED9-B71F-99B241F2BCFA";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "mainCtrlShape" -p "mainCtrl";
	rename -uid "F8FE3E22-473F-2587-0C50-C2B3AE4E4C0E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		49.34085079611053 3.0212557497331896e-015 -49.340850796110452
		-7.9608925484900936e-015 4.2727008566703736e-015 -69.778500374886775
		-49.34085079611048 3.0212557497331916e-015 -49.34085079611048
		-69.778500374886775 1.2381218137275758e-030 -2.0220063688397414e-014
		-49.340850796110495 -3.0212557497331904e-015 49.340850796110466
		-2.1025623968424721e-014 -4.2727008566703743e-015 69.778500374886789
		49.340850796110452 -3.0212557497331919e-015 49.340850796110487
		69.778500374886775 -2.2948759650224823e-030 3.7478168670677359e-014
		49.34085079611053 3.0212557497331896e-015 -49.340850796110452
		-7.9608925484900936e-015 4.2727008566703736e-015 -69.778500374886775
		-49.34085079611048 3.0212557497331916e-015 -49.34085079611048
		;
createNode transform -n "rootCtrl" -p "mainCtrl";
	rename -uid "AC13375F-4215-8A32-C9E0-0196D9BE26D5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 70.345101742659324 1.2864740396617693 ;
	setAttr ".sp" -type "double3" 0 70.345101742659324 1.2864740396617693 ;
createNode nurbsCurve -n "rootCtrlShape" -p "rootCtrl";
	rename -uid "0D783666-4EC6-D8CC-703A-CFB1BE169071";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		52.343679244050506 70.345101742659324 -37.402405608145102
		-8.445383476998442e-015 70.345101742659324 -53.427864271287156
		-52.343679244050456 70.345101742659324 -37.402405608145123
		-74.025141091443246 70.345101742659324 1.2864740396617536
		-52.34367924405047 70.345101742659324 39.975353687468647
		-2.2305219694265982e-014 70.345101742659324 56.000812350610708
		52.343679244050428 70.345101742659324 39.975353687468662
		74.025141091443246 70.345101742659324 1.2864740396617986
		52.343679244050506 70.345101742659324 -37.402405608145102
		-8.445383476998442e-015 70.345101742659324 -53.427864271287156
		-52.343679244050456 70.345101742659324 -37.402405608145123
		;
createNode transform -n "tail1CtrlGrp" -p "rootCtrl";
	rename -uid "2DDAE776-4FAB-BA67-2C52-B1BAA09A6A1D";
	setAttr ".rp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -35.249507479126024 ;
	setAttr ".sp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -35.249507479126024 ;
createNode transform -n "tail1Ctrl" -p "tail1CtrlGrp";
	rename -uid "F2518C37-4BB4-48FA-6F05-DBB1DB5D2CF8";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -35.249507479126024 ;
	setAttr ".sp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -35.249507479126024 ;
createNode nurbsCurve -n "tail1CtrlShape" -p "tail1Ctrl";
	rename -uid "D86DD6EB-478C-69BC-F233-E287C554E0EF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.9016382777330767 58.533621924000542 -39.296611625798221
		-2.1434255317608541e-015 56.089083309143305 -39.296611625798214
		-5.9016382777330723 58.533621924000542 -39.296611625798221
		-8.3461768925903073 64.435260201733612 -39.296611625798221
		-5.901638277733074 70.336898479466683 -39.296611625798221
		-3.7060925265964223e-015 72.78143709432392 -39.296611625798221
		5.9016382777330669 70.336898479466683 -39.296611625798221
		8.3461768925903037 64.435260201733612 -39.296611625798221
		5.9016382777330767 58.533621924000542 -39.296611625798221
		-2.1434255317608541e-015 56.089083309143305 -39.296611625798214
		-5.9016382777330723 58.533621924000542 -39.296611625798221
		;
createNode transform -n "tail2CtrlGrp" -p "tail1Ctrl";
	rename -uid "ADA5F6E4-4973-DE35-0AA8-62871F6A28B9";
	setAttr ".rp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -49.512886047363281 ;
	setAttr ".sp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -49.512886047363281 ;
createNode transform -n "tail2Ctrl" -p "tail2CtrlGrp";
	rename -uid "5868D71F-4039-D2E4-C3B5-BD99901A58D1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -49.512886047363281 ;
	setAttr ".sp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -49.512886047363281 ;
createNode nurbsCurve -n "tail2CtrlShape" -p "tail2Ctrl";
	rename -uid "52B43CF1-48E9-846C-74D5-6D89BA45BBFB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.9016382777330767 58.533621924000542 -49.512886047363281
		-2.1434255317608541e-015 56.089083309143305 -49.512886047363274
		-5.9016382777330723 58.533621924000542 -49.512886047363281
		-8.3461768925903073 64.435260201733612 -49.512886047363281
		-5.901638277733074 70.336898479466683 -49.512886047363281
		-3.7060925265964223e-015 72.78143709432392 -49.512886047363281
		5.9016382777330669 70.336898479466683 -49.512886047363281
		8.3461768925903037 64.435260201733612 -49.512886047363281
		5.9016382777330767 58.533621924000542 -49.512886047363281
		-2.1434255317608541e-015 56.089083309143305 -49.512886047363274
		-5.9016382777330723 58.533621924000542 -49.512886047363281
		;
createNode transform -n "tail3CtrlGrp" -p "tail2Ctrl";
	rename -uid "E3272F8F-4163-75F1-DD7F-03972B3C442A";
	setAttr ".rp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -60.737051445626562 ;
	setAttr ".sp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -60.737051445626562 ;
createNode transform -n "tail3Ctrl" -p "tail3CtrlGrp";
	rename -uid "009D19E9-4944-9C57-E73F-58AB6BCF747C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -60.737051445626562 ;
	setAttr ".sp" -type "double3" -1.1912265438829896e-015 64.435260201733612 -60.737051445626562 ;
createNode nurbsCurve -n "tail3CtrlShape" -p "tail3Ctrl";
	rename -uid "227E3CDA-403E-4037-778D-C18A52BCB9A0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.9016382777330767 58.533621924000542 -60.737051445626562
		-2.1434255317608541e-015 56.089083309143305 -60.737051445626555
		-5.9016382777330723 58.533621924000542 -60.737051445626562
		-8.3461768925903073 64.435260201733612 -60.737051445626562
		-5.901638277733074 70.336898479466683 -60.737051445626562
		-3.7060925265964223e-015 72.78143709432392 -60.737051445626562
		5.9016382777330669 70.336898479466683 -60.737051445626562
		8.3461768925903037 64.435260201733612 -60.737051445626562
		5.9016382777330767 58.533621924000542 -60.737051445626562
		-2.1434255317608541e-015 56.089083309143305 -60.737051445626555
		-5.9016382777330723 58.533621924000542 -60.737051445626562
		;
createNode parentConstraint -n "tail3CtrlGrp_parentConstraint1" -p "tail3CtrlGrp";
	rename -uid "7FDBDB39-490B-5345-591C-4DA3A7E02EAD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail2CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -11.224165398263281 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "tail2CtrlGrp_parentConstraint1" -p "tail2CtrlGrp";
	rename -uid "D62D7D69-4292-8F74-E789-93AFA57F556F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "tail1CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -14.263378568237258 ;
	setAttr -k on ".w0";
createNode transform -n "spine1CtrlGrp" -p "rootCtrl";
	rename -uid "E58D7533-4E05-3349-45E2-A087CC43FD26";
	setAttr ".rp" -type "double3" 1.5577208494694976e-015 77.190133526526239 -10.195514759082599 ;
	setAttr ".sp" -type "double3" 1.5577208494694976e-015 77.190133526526239 -10.195514759082599 ;
createNode transform -n "spine1Ctrl" -p "spine1CtrlGrp";
	rename -uid "BDEC9AD1-4284-CBC4-86F1-06ABD73BE548";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.5577208494694976e-015 77.190133526526239 -10.195514759082599 ;
	setAttr ".sp" -type "double3" 1.5577208494694976e-015 77.190133526526239 -10.195514759082599 ;
createNode nurbsCurve -n "spine1CtrlShape" -p "spine1Ctrl";
	rename -uid "EA8C0565-436E-208C-0819-7CA9113F83AB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		26.252234673276721 91.919244238391883 -40.843562427449896
		-2.6779422171304087e-015 95.488594546227134 -45.326825214503437
		-26.252234673276696 91.919244238391883 -40.843562427449896
		-37.126266317549124 83.302070316355454 -33.364889138744189
		-26.252234673276703 74.684896394319011 -40.843562427449903
		-9.6291477526152596e-015 71.115546086483761 -45.326825214503451
		26.252234673276682 74.684896394319011 -40.843562427449903
		37.126266317549124 83.302070316355454 -33.364889138744189
		26.252234673276721 91.919244238391883 -40.843562427449896
		-2.6779422171304087e-015 95.488594546227134 -45.326825214503437
		-26.252234673276696 91.919244238391883 -40.843562427449896
		;
createNode transform -n "spine2CtrlGrp" -p "spine1Ctrl";
	rename -uid "D3C4B259-4EB5-64D1-7CE4-F5B55CA36DA5";
	setAttr ".rp" -type "double3" 1.1858237139393676e-015 93.309079340148131 -13.286819435667615 ;
	setAttr ".sp" -type "double3" 1.1858237139393676e-015 93.309079340148131 -13.286819435667615 ;
createNode transform -n "spine2Ctrl" -p "spine2CtrlGrp";
	rename -uid "7F59DE04-490F-E0BF-E541-D3A0EAD6DDD2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.1858237139393676e-015 93.309079340148131 -13.286819435667615 ;
	setAttr ".sp" -type "double3" 1.1858237139393676e-015 93.309079340148131 -13.286819435667615 ;
createNode nurbsCurve -n "spine2CtrlShape" -p "spine2Ctrl";
	rename -uid "654E5E2A-4EEF-89F2-8E1C-7DA300B908C3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		26.252234673276721 108.03819005201377 -43.934867104034915
		-3.0498393526605387e-015 111.60754035984903 -48.418129891088455
		-26.252234673276696 108.03819005201377 -43.934867104034915
		-37.126266317549124 99.421016129977346 -36.456193815329208
		-26.252234673276703 90.803842207940903 -43.934867104034922
		-1.0001044888145389e-014 87.234491900105652 -48.418129891088469
		26.252234673276682 90.803842207940903 -43.934867104034922
		37.126266317549124 99.421016129977346 -36.456193815329208
		26.252234673276721 108.03819005201377 -43.934867104034915
		-3.0498393526605387e-015 111.60754035984903 -48.418129891088455
		-26.252234673276696 108.03819005201377 -43.934867104034915
		;
createNode transform -n "spine3CtrlGrp" -p "spine2Ctrl";
	rename -uid "3169B20E-4EB6-9CF7-3F7C-C49446D75F7D";
	setAttr ".rp" -type "double3" 2.4573840381491065e-016 109.8696401075679 -13.507626912566558 ;
	setAttr ".sp" -type "double3" 2.4573840381491065e-016 109.8696401075679 -13.507626912566558 ;
createNode transform -n "spine3Ctrl" -p "spine3CtrlGrp";
	rename -uid "13B286DF-4E8A-744B-DB74-9DA0705A70BC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 2.4573840381491065e-016 109.8696401075679 -13.507626912566558 ;
	setAttr ".sp" -type "double3" 2.4573840381491065e-016 109.8696401075679 -13.507626912566558 ;
createNode nurbsCurve -n "spine3CtrlShape" -p "spine3Ctrl";
	rename -uid "7CEC9D5A-46E2-6067-E46A-01951F8598A4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		26.252234673276721 128.19205178048492 -42.152674629982982
		-3.989924662784996e-015 132.27668425486695 -46.172088068166019
		-26.252234673276696 128.19205178048492 -42.152674629982982
		-37.126266317549124 118.73480841220712 -35.769353516723001
		-26.252234673276703 111.08383199266186 -44.233914957777557
		-1.0941130198269845e-014 108.08200780286781 -49.115406366290948
		26.252234673276682 111.08383199266186 -44.233914957777557
		37.126266317549124 118.73480841220712 -35.769353516723001
		26.252234673276721 128.19205178048492 -42.152674629982982
		-3.989924662784996e-015 132.27668425486695 -46.172088068166019
		-26.252234673276696 128.19205178048492 -42.152674629982982
		;
createNode transform -n "spine4CtrlGrp" -p "spine3Ctrl";
	rename -uid "5219B938-4B82-9E6D-AE0C-B6A882EF29CA";
	setAttr ".rp" -type "double3" -2.1835850455076416e-015 127.75504573638125 -10.416322235981543 ;
	setAttr ".sp" -type "double3" -2.1835850455076416e-015 127.75504573638125 -10.416322235981543 ;
createNode transform -n "spine4Ctrl" -p "spine4CtrlGrp";
	rename -uid "4DB4E44E-4E25-D689-446B-2F89748A2B91";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -2.1835850455076416e-015 127.75504573638125 -10.416322235981543 ;
	setAttr ".sp" -type "double3" -2.1835850455076416e-015 127.75504573638125 -10.416322235981543 ;
createNode nurbsCurve -n "spine4CtrlShape" -p "spine4Ctrl";
	rename -uid "9F092766-4881-E8F5-A516-8094B0FF8A63";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		26.252234673276718 146.07745740929826 -39.061369953397971
		-6.4192481121075483e-015 150.1620898836803 -43.080783391581008
		-26.2522346732767 146.07745740929826 -39.061369953397971
		-37.126266317549124 136.62021404102046 -32.67804884013799
		-26.252234673276707 128.9692376214752 -41.142610281192546
		-1.3370453647592398e-014 125.96741343168115 -46.02410168970593
		26.252234673276678 128.9692376214752 -41.142610281192546
		37.126266317549124 136.62021404102046 -32.67804884013799
		26.252234673276718 146.07745740929826 -39.061369953397971
		-6.4192481121075483e-015 150.1620898836803 -43.080783391581008
		-26.2522346732767 146.07745740929826 -39.061369953397971
		;
createNode transform -n "headCtrlGrp" -p "spine4Ctrl";
	rename -uid "EEE2BE8C-4934-FDF3-47D1-1E837ED35836";
	setAttr ".rp" -type "double3" 3.2800573641439443e-016 142.5491466886096 -2.688060544519006 ;
	setAttr ".sp" -type "double3" 3.2800573641439443e-016 142.5491466886096 -2.688060544519006 ;
createNode transform -n "headCtrl" -p "headCtrlGrp";
	rename -uid "AC4AE0AE-44EE-52FB-C62D-468E2F6BE95F";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 3.2800573641439443e-016 142.5491466886096 -2.688060544519006 ;
	setAttr ".sp" -type "double3" 3.2800573641439443e-016 142.5491466886096 -2.688060544519006 ;
createNode nurbsCurve -n "headCtrlShape" -p "headCtrl";
	rename -uid "4C464C26-4C48-25B9-6EEC-F3BE9FDEA302";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 32 2 no 3
		37 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		 26 27 28 29 30 31 32 33 34
		35
		8.845334703173604 242.77209682080297 -47.156561018854802
		1.3632195473695772e-014 238.83198293663656 -59.244356875331611
		-8.8453347031735774 242.77209682080297 -47.156561018854902
		-10.561017535703739 249.60098242413301 -28.184612311675068
		-12.935952869061078 251.39890648971243 -22.04808215392498
		-16.464345011983262 251.39890648971243 -19.152405556502266
		-19.360021609405969 251.39890648971243 -15.624013413580082
		-25.496551767156053 249.60098242413301 -13.24907808022275
		-44.468500474335826 242.77209682080297 -11.533395247692599
		-56.556296330812458 238.83198293663656 -2.688060544518998
		-44.468500474335841 242.77209682080297 6.157274158654598
		-25.496551767156046 249.60098242413301 7.872956991184731
		-19.36002160940598 251.39890648971243 10.24789232454207
		-16.464345011983255 251.39890648971243 13.776284467464246
		-12.935952869061076 251.39890648971243 16.671961064886965
		-10.561017535703737 249.60098242413301 22.808491222637045
		-8.8453347031735809 242.77209682080297 41.780439929816907
		4.4759581678352069e-015 238.83198293663656 53.868235786293582
		8.8453347031735898 242.77209682080297 41.780439929816907
		10.561017535703732 249.60098242413301 22.808491222637045
		12.935952869061071 251.39890648971243 16.671961064886958
		16.464345011983252 251.39890648971243 13.776284467464242
		19.360021609405962 251.39890648971243 10.247892324542065
		25.496551767156031 249.60098242413301 7.8729569911847381
		44.468500474335826 242.77209682080297 6.1572741586546123
		56.556296330812458 238.83198293663656 -2.6880605445189762
		44.468500474335826 242.77209682080297 -11.533395247692583
		25.496551767156031 249.60098242413301 -13.249078080222732
		19.360021609405962 251.39890648971243 -15.624013413580069
		16.464345011983248 251.39890648971243 -19.152405556502245
		12.935952869061069 251.39890648971243 -22.048082153924959
		10.561017535703741 249.60098242413301 -28.184612311675046
		8.845334703173604 242.77209682080297 -47.156561018854802
		1.3632195473695772e-014 238.83198293663656 -59.244356875331611
		-8.8453347031735774 242.77209682080297 -47.156561018854902
		;
createNode transform -n "left_clavicleCtrlGrp" -p "spine4CtrlGrp";
	rename -uid "BCD2476D-4E9B-D3D9-3F46-9E8E17851BBD";
	setAttr ".rp" -type "double3" 19.072722014690594 134.38059636408246 1.2434497875801753e-014 ;
	setAttr ".sp" -type "double3" 19.072722014690594 134.38059636408246 1.2434497875801753e-014 ;
createNode transform -n "left_clavicleCtrl" -p "left_clavicleCtrlGrp";
	rename -uid "567A1E96-4D47-0390-714F-FA86255A2BC1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 19.072722014690594 134.38059636408246 1.2434497875801753e-014 ;
	setAttr ".sp" -type "double3" 19.072722014690594 134.38059636408246 1.2434497875801753e-014 ;
createNode nurbsCurve -n "left_clavicleCtrlShape" -p "left_clavicleCtrl";
	rename -uid "EA121842-4AC5-0320-FF13-F6917CD27753";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		19.85633363958182 134.38059636408246 -0.78361162489121139
		19.072722014690594 134.38059636408246 -1.1081941875543755
		18.289110389799369 134.38059636408246 -0.78361162489121183
		17.964527827136205 134.38059636408246 1.2113370925078031e-014
		18.289110389799369 134.38059636408246 0.78361162489123648
		19.072722014690594 134.38059636408246 1.1081941875544006
		19.85633363958182 134.38059636408246 0.78361162489123681
		20.180916202244983 134.38059636408246 1.3029711135729811e-014
		19.85633363958182 134.38059636408246 -0.78361162489121139
		19.072722014690594 134.38059636408246 -1.1081941875543755
		18.289110389799369 134.38059636408246 -0.78361162489121183
		;
createNode transform -n "left_shoulderCtrlGrp" -p "left_clavicleCtrl";
	rename -uid "CB357801-42A0-EB8E-0950-64AF9EA3A264";
	setAttr ".rp" -type "double3" 53.977594876001049 132.78977977910043 4.1911086840991988e-015 ;
	setAttr ".sp" -type "double3" 53.977594876001049 132.78977977910043 4.1911086840991988e-015 ;
createNode transform -n "left_shoulderCtrl" -p "left_shoulderCtrlGrp";
	rename -uid "053D5918-48B8-9277-D361-099586565DE5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 53.977594876001049 132.78977977910043 4.1911086840991988e-015 ;
	setAttr ".sp" -type "double3" 53.977594876001049 132.78977977910043 4.1911086840991988e-015 ;
createNode nurbsCurve -n "left_shoulderCtrlShape" -p "left_shoulderCtrl";
	rename -uid "881F5403-4211-B8F6-3753-B5BC56DC0436";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		63.935633102546944 114.6805338834684 -21.090018388748732
		68.305905433101529 135.31278037759873 -29.825790036066472
		72.676177763656185 155.94502687172914 -21.090018388748746
		74.48640383423573 164.4911831918225 -4.9287304649039592e-015
		72.676177763656185 155.94502687172914 21.090018388748746
		68.305905433101529 135.31278037759873 29.825790036066493
		63.935633102546973 114.68053388346844 21.090018388748753
		62.125407031967349 106.134377563375 1.9733527315764657e-014
		63.935633102546944 114.6805338834684 -21.090018388748732
		68.305905433101529 135.31278037759873 -29.825790036066472
		72.676177763656185 155.94502687172914 -21.090018388748746
		;
createNode transform -n "left_elbowCtrlGrp" -p "left_shoulderCtrl";
	rename -uid "74D5FBFD-428C-CEE5-DD53-BE896C035F1B";
	setAttr ".rp" -type "double3" 95.15217403116327 133.44542594399158 -5.2249408846420495e-015 ;
	setAttr ".sp" -type "double3" 95.15217403116327 133.44542594399158 -5.2249408846420495e-015 ;
createNode transform -n "left_elbowCtrl" -p "left_elbowCtrlGrp";
	rename -uid "B3066DA6-43DD-C106-EA52-788F5D83CFD9";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 95.15217403116327 133.44542594399158 -5.2249408846420495e-015 ;
	setAttr ".sp" -type "double3" 95.15217403116327 133.44542594399158 -5.2249408846420495e-015 ;
createNode nurbsCurve -n "left_elbowCtrlShape" -p "left_elbowCtrl";
	rename -uid "FE542322-457A-374C-A046-63A3FE514307";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		95.15217403116327 118.94403198150661 -14.047694962904421
		95.15217403116327 130.08635008965271 -19.866440736619655
		95.15217403116327 141.22866819779881 -14.047694962904428
		95.15217403116327 145.84396747446823 -1.0981738391009697e-014
		95.15217403116327 141.22866819779881 14.047694962904414
		95.15217403116327 130.08635008965271 19.866440736619651
		95.15217403116327 118.94403198150663 14.047694962904421
		95.15217403116327 117.68780855917606 5.4453631891470284e-015
		95.15217403116327 118.94403198150661 -14.047694962904421
		95.15217403116327 130.08635008965271 -19.866440736619655
		95.15217403116327 141.22866819779881 -14.047694962904428
		;
createNode transform -n "left_finger1CtrlGrp" -p "left_elbowCtrl";
	rename -uid "8915048F-4001-357E-5415-9FA10904F356";
	setAttr ".rp" -type "double3" 121.13310643376386 135.06792193840184 -1.1019369283993143e-014 ;
	setAttr ".sp" -type "double3" 121.13310643376386 135.06792193840184 -1.1019369283993143e-014 ;
createNode transform -n "left_finger1Ctrl" -p "left_finger1CtrlGrp";
	rename -uid "65369E2B-461C-1491-A5E6-95BABB3820C0";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 121.13310643376386 135.06792193840184 -1.1019369283993143e-014 ;
	setAttr ".sp" -type "double3" 121.13310643376386 135.06792193840184 -1.1019369283993143e-014 ;
createNode nurbsCurve -n "left_finger1CtrlShape" -p "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl";
	rename -uid "1E792C40-49D2-7896-F28E-DD94D2088ADB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		121.13310643376386 124.99614258113917 -9.7566678424519306
		121.13310643376386 132.73491375058677 -13.798011986364973
		121.13310643376386 140.47368492003434 -9.756667842451936
		121.13310643376386 143.67918889452142 -1.5017687958637244e-014
		121.13310643376386 140.47368492003434 9.7566678424519129
		121.13310643376386 132.73491375058677 13.798011986364953
		121.13310643376386 124.99614258113918 9.7566678424519164
		121.13310643376386 124.12364679446719 -3.608430129858977e-015
		121.13310643376386 124.99614258113917 -9.7566678424519306
		121.13310643376386 132.73491375058677 -13.798011986364973
		121.13310643376386 140.47368492003434 -9.756667842451936
		;
createNode transform -n "left_finger2CtrlGrp" -p "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl";
	rename -uid "9D808F49-4485-EFED-A9A1-2C9E2F9D4F42";
	setAttr ".rp" -type "double3" 133.17965159484805 138.42833679716409 -1.3388791515323117e-014 ;
	setAttr ".sp" -type "double3" 133.17965159484805 138.42833679716409 -1.3388791515323117e-014 ;
createNode transform -n "left_finger1Ctrl" -p "left_finger2CtrlGrp";
	rename -uid "2520D533-401E-32A3-C468-11BFF5BD43D2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 133.17965159484805 138.42833679716409 -1.3388791515323117e-014 ;
	setAttr ".sp" -type "double3" 133.17965159484805 138.42833679716409 -1.3388791515323117e-014 ;
createNode nurbsCurve -n "left_finger1CtrlShape" -p "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl|left_finger2CtrlGrp|left_finger1Ctrl";
	rename -uid "A47E0D34-4B68-CEF8-3C5D-5893E73B7DB6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		133.17965159484805 133.58799284527242 -10.242017834178586
		133.17965159484805 137.22157612013126 -13.038064879324004
		133.17965159484805 141.86114426645639 -8.2919087662739415
		133.17965159484805 144.78890118768479 1.2162166230868185
		133.17965159484805 142.97419314397439 10.701305874772766
		133.17965159484805 136.70823422488624 16.698773965242196
		133.17965159484805 133.58799284527242 12.674451080352249
		133.17965159484805 133.0649119101974 1.2162166230868325
		133.17965159484805 133.58799284527242 -10.242017834178586
		133.17965159484805 137.22157612013126 -13.038064879324004
		133.17965159484805 141.86114426645639 -8.2919087662739415
		;
createNode transform -n "left_thumb1CtrlGrp" -p "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl";
	rename -uid "5E643FDF-4965-6E89-EA65-E58F323D59A3";
	setAttr ".rp" -type "double3" 119.14882366617815 127.41348122699335 10.999999999999989 ;
	setAttr ".sp" -type "double3" 119.14882366617815 127.41348122699335 10.999999999999989 ;
createNode transform -n "left_thumb1Ctrl" -p "left_thumb1CtrlGrp";
	rename -uid "F7B59CB4-4F12-5ECF-5B56-E7B9395449E4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 119.40815854168581 126.84066296725668 10.999999999999989 ;
	setAttr ".sp" -type "double3" 119.40815854168581 126.84066296725668 10.999999999999989 ;
createNode nurbsCurve -n "left_thumb1CtrlShape" -p "left_thumb1Ctrl";
	rename -uid "717BBF8E-4B9E-B281-9D16-268EDF0225EC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		120.36453327431363 122.69641849430423 6.615146204838779
		122.56511738617303 126.48909200669252 4.798880293859864
		124.7657014980324 130.28176551908081 6.6151462048387764
		125.67721328230731 131.85274232556526 10.999999999999988
		124.7657014980324 130.28176551908081 15.384853795161201
		122.56511738617303 126.48909200669252 17.201119706140116
		120.36453327431364 122.69641849430424 15.384853795161202
		119.45302149003872 121.12544168781979 10.999999999999993
		120.36453327431363 122.69641849430423 6.615146204838779
		122.56511738617303 126.48909200669252 4.798880293859864
		124.7657014980324 130.28176551908081 6.6151462048387764
		;
createNode transform -n "left_thumb2CtrlGrp" -p "left_thumb1Ctrl";
	rename -uid "4BBD0CFE-4713-CE97-E024-849F1F286477";
	setAttr ".t" -type "double3" 7.2121078138023051 -0.65564616489113803 -1.7763568394002505e-015 ;
	setAttr ".rp" -type "double3" 119.14882366617815 127.41348122699335 10.999999999999989 ;
	setAttr ".sp" -type "double3" 119.14882366617815 127.41348122699335 10.999999999999989 ;
createNode transform -n "left_thumb2Ctrl" -p "left_thumb2CtrlGrp";
	rename -uid "0433E416-46CC-C2D5-2D81-3FA7D8C99914";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 119.40815854168581 126.84066296725668 10.999999999999989 ;
	setAttr ".sp" -type "double3" 119.40815854168581 126.84066296725668 10.999999999999989 ;
createNode nurbsCurve -n "left_thumb2CtrlShape" -p "left_thumb2Ctrl";
	rename -uid "C8EF99EF-4C01-4449-B53D-F5BF45ADD3E1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		120.80059471476844 123.84377225861908 7.7278474283324918
		120.87510007775212 127.11507649441828 6.372477454993815
		120.94960544073602 130.38638073021747 7.7278474283324883
		120.98046657255342 131.74139931133379 10.999999999999988
		120.94960544073602 130.38638073021747 14.272152571667476
		120.87510007775212 127.11507649441828 15.627522545006158
		120.80059471476844 123.84377225861911 14.272152571667478
		120.76973358295089 122.48875367750274 10.999999999999993
		120.80059471476844 123.84377225861908 7.7278474283324918
		120.87510007775212 127.11507649441828 6.372477454993815
		120.94960544073602 130.38638073021747 7.7278474283324883
		;
createNode transform -n "group1" -p "spine4CtrlGrp";
	rename -uid "7A367464-493A-7B9C-0E43-A89F8726E142";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "right_clavicleCtrlGrp" -p "spine4CtrlGrp";
	rename -uid "98671EDA-4153-6C37-92CA-389C1F7C5937";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 19.072722014690594 134.38059636408246 -1.2434497875801753e-014 ;
	setAttr ".rpt" -type "double3" -38.145444029381188 0 2.2533260954971699e-014 ;
	setAttr ".sp" -type "double3" 19.072722014690594 134.38059636408246 1.2434497875801753e-014 ;
	setAttr ".spt" -type "double3" 0 0 -2.4868995751603507e-014 ;
createNode transform -n "right_clavicleCtrl" -p "right_clavicleCtrlGrp";
	rename -uid "D00A07EF-4B71-B6BA-1D1A-F398CAA8AC68";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 19.072722014690594 134.38059636408246 1.2434497875801753e-014 ;
	setAttr ".sp" -type "double3" 19.072722014690594 134.38059636408246 1.2434497875801753e-014 ;
createNode nurbsCurve -n "right_clavicleCtrlShape" -p "right_clavicleCtrl";
	rename -uid "A473B81B-4467-77B0-20AD-F6ABF79EEB08";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		19.85633363958182 134.38059636408246 -0.78361162489121139
		19.072722014690594 134.38059636408246 -1.1081941875543755
		18.289110389799369 134.38059636408246 -0.78361162489121183
		17.964527827136205 134.38059636408246 1.2113370925078031e-014
		18.289110389799369 134.38059636408246 0.78361162489123648
		19.072722014690594 134.38059636408246 1.1081941875544006
		19.85633363958182 134.38059636408246 0.78361162489123681
		20.180916202244983 134.38059636408246 1.3029711135729811e-014
		19.85633363958182 134.38059636408246 -0.78361162489121139
		19.072722014690594 134.38059636408246 -1.1081941875543755
		18.289110389799369 134.38059636408246 -0.78361162489121183
		;
createNode transform -n "right_shoulderCtrlGrp" -p "right_clavicleCtrl";
	rename -uid "50E0DCB7-4D6D-AC03-AE66-CAA232D2CEC8";
	setAttr ".rp" -type "double3" 53.977594876001049 132.78977977910043 4.1911086840991988e-015 ;
	setAttr ".sp" -type "double3" 53.977594876001049 132.78977977910043 4.1911086840991988e-015 ;
createNode transform -n "right_shoulderCtrl" -p "right_shoulderCtrlGrp";
	rename -uid "69329243-4178-69DB-835D-E28C89E51496";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 53.977594876001049 132.78977977910043 4.1911086840991988e-015 ;
	setAttr ".sp" -type "double3" 53.977594876001049 132.78977977910043 4.1911086840991988e-015 ;
createNode nurbsCurve -n "right_shoulderCtrlShape" -p "right_shoulderCtrl";
	rename -uid "81822961-4C0A-8C98-2BE5-0FBDA6524904";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		63.935633102546944 114.6805338834684 -21.090018388748732
		68.305905433101529 135.31278037759873 -29.825790036066472
		72.676177763656185 155.94502687172914 -21.090018388748746
		74.48640383423573 164.4911831918225 -4.9287304649039592e-015
		72.676177763656185 155.94502687172914 21.090018388748746
		68.305905433101529 135.31278037759873 29.825790036066493
		63.935633102546973 114.68053388346844 21.090018388748753
		62.125407031967349 106.134377563375 1.9733527315764657e-014
		63.935633102546944 114.6805338834684 -21.090018388748732
		68.305905433101529 135.31278037759873 -29.825790036066472
		72.676177763656185 155.94502687172914 -21.090018388748746
		;
createNode transform -n "right_elbowCtrlGrp" -p "right_shoulderCtrl";
	rename -uid "9F0F7FAA-48B9-9912-8636-E1AD1B7493CF";
	setAttr ".rp" -type "double3" 95.15217403116327 133.44542594399158 -5.2249408846420495e-015 ;
	setAttr ".sp" -type "double3" 95.15217403116327 133.44542594399158 -5.2249408846420495e-015 ;
createNode transform -n "right_elbowCtrl" -p "right_elbowCtrlGrp";
	rename -uid "7627C5EB-4B89-775A-680B-0ABCB2B1A913";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 95.15217403116327 133.44542594399158 -5.2249408846420495e-015 ;
	setAttr ".sp" -type "double3" 95.15217403116327 133.44542594399158 -5.2249408846420495e-015 ;
createNode nurbsCurve -n "right_elbowCtrlShape" -p "right_elbowCtrl";
	rename -uid "601A6689-4BDB-C226-9F01-208548201038";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		95.15217403116327 118.94403198150661 -14.047694962904421
		95.15217403116327 130.08635008965271 -19.866440736619655
		95.15217403116327 141.22866819779881 -14.047694962904428
		95.15217403116327 145.84396747446823 -1.0981738391009697e-014
		95.15217403116327 141.22866819779881 14.047694962904414
		95.15217403116327 130.08635008965271 19.866440736619651
		95.15217403116327 118.94403198150663 14.047694962904421
		95.15217403116327 117.68780855917606 5.4453631891470284e-015
		95.15217403116327 118.94403198150661 -14.047694962904421
		95.15217403116327 130.08635008965271 -19.866440736619655
		95.15217403116327 141.22866819779881 -14.047694962904428
		;
createNode transform -n "right_finger1CtrlGrp" -p "right_elbowCtrl";
	rename -uid "DF0824FC-4075-142C-D08D-15BFCBFEAADA";
	setAttr ".rp" -type "double3" 121.13310643376386 135.06792193840184 -1.1019369283993143e-014 ;
	setAttr ".sp" -type "double3" 121.13310643376386 135.06792193840184 -1.1019369283993143e-014 ;
createNode transform -n "right_finger1Ctrl" -p "right_finger1CtrlGrp";
	rename -uid "4C481352-4C68-60FD-E728-368D8D24D547";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 121.13310643376386 135.06792193840184 -1.1019369283993143e-014 ;
	setAttr ".sp" -type "double3" 121.13310643376386 135.06792193840184 -1.1019369283993143e-014 ;
createNode nurbsCurve -n "right_finger1CtrlShape" -p "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl";
	rename -uid "1383CF0C-4D08-238A-54B2-D492822CFAA2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		121.13310643376386 124.99614258113917 -9.7566678424519306
		121.13310643376386 132.73491375058677 -13.798011986364973
		121.13310643376386 140.47368492003434 -9.756667842451936
		121.13310643376386 143.67918889452142 -1.5017687958637244e-014
		121.13310643376386 140.47368492003434 9.7566678424519129
		121.13310643376386 132.73491375058677 13.798011986364953
		121.13310643376386 124.99614258113918 9.7566678424519164
		121.13310643376386 124.12364679446719 -3.608430129858977e-015
		121.13310643376386 124.99614258113917 -9.7566678424519306
		121.13310643376386 132.73491375058677 -13.798011986364973
		121.13310643376386 140.47368492003434 -9.756667842451936
		;
createNode transform -n "right_finger2CtrlGrp" -p "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl";
	rename -uid "2294FED5-46ED-27CC-5971-65B367F2BCDD";
	setAttr ".rp" -type "double3" 133.17965159484805 138.42833679716409 -1.3388791515323117e-014 ;
	setAttr ".sp" -type "double3" 133.17965159484805 138.42833679716409 -1.3388791515323117e-014 ;
createNode transform -n "right_finger1Ctrl" -p "right_finger2CtrlGrp";
	rename -uid "1F268056-4224-EC03-6E67-648B51ACB072";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 133.17965159484805 138.42833679716409 -1.3388791515323117e-014 ;
	setAttr ".sp" -type "double3" 133.17965159484805 138.42833679716409 -1.3388791515323117e-014 ;
createNode nurbsCurve -n "right_finger1CtrlShape" -p "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl|right_finger2CtrlGrp|right_finger1Ctrl";
	rename -uid "E012844A-4863-751A-FBC4-DFA8E5313411";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		133.17965159484805 133.58799284527242 -10.242017834178586
		133.17965159484805 137.22157612013126 -13.038064879324004
		133.17965159484805 141.86114426645639 -8.2919087662739415
		133.17965159484805 144.78890118768479 1.2162166230868185
		133.17965159484805 142.97419314397439 10.701305874772766
		133.17965159484805 136.70823422488624 16.698773965242196
		133.17965159484805 133.58799284527242 12.674451080352249
		133.17965159484805 133.0649119101974 1.2162166230868325
		133.17965159484805 133.58799284527242 -10.242017834178586
		133.17965159484805 137.22157612013126 -13.038064879324004
		133.17965159484805 141.86114426645639 -8.2919087662739415
		;
createNode transform -n "right_thumb1CtrlGrp" -p "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl";
	rename -uid "264A2527-41AA-1C6C-FC3D-368147C69C0A";
	setAttr ".rp" -type "double3" 119.14882366617815 127.41348122699335 10.999999999999989 ;
	setAttr ".sp" -type "double3" 119.14882366617815 127.41348122699335 10.999999999999989 ;
createNode transform -n "right_thumb1Ctrl" -p "right_thumb1CtrlGrp";
	rename -uid "30826F5F-456E-C1FC-FBB0-1082E8438FBB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 119.40815854168581 126.84066296725668 10.999999999999989 ;
	setAttr ".sp" -type "double3" 119.40815854168581 126.84066296725668 10.999999999999989 ;
createNode nurbsCurve -n "right_thumb1CtrlShape" -p "right_thumb1Ctrl";
	rename -uid "4D635C8A-4E36-24D7-EC4B-A29DC9D8D650";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		120.36453327431363 122.69641849430423 6.615146204838779
		122.56511738617303 126.48909200669252 4.798880293859864
		124.7657014980324 130.28176551908081 6.6151462048387764
		125.67721328230731 131.85274232556526 10.999999999999988
		124.7657014980324 130.28176551908081 15.384853795161201
		122.56511738617303 126.48909200669252 17.201119706140116
		120.36453327431364 122.69641849430424 15.384853795161202
		119.45302149003872 121.12544168781979 10.999999999999993
		120.36453327431363 122.69641849430423 6.615146204838779
		122.56511738617303 126.48909200669252 4.798880293859864
		124.7657014980324 130.28176551908081 6.6151462048387764
		;
createNode transform -n "right_thumb2CtrlGrp" -p "right_thumb1Ctrl";
	rename -uid "91BB69C7-4757-F0FE-0FC8-B7A3392C21F0";
	setAttr ".t" -type "double3" 7.2121078138023051 -0.65564616489113803 -1.7763568394002505e-015 ;
	setAttr ".rp" -type "double3" 119.14882366617815 127.41348122699335 10.999999999999989 ;
	setAttr ".sp" -type "double3" 119.14882366617815 127.41348122699335 10.999999999999989 ;
createNode transform -n "right_thumb2Ctrl" -p "right_thumb2CtrlGrp";
	rename -uid "62828A5D-49DA-F68C-8529-4FAAD551A47F";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 119.40815854168581 126.84066296725668 10.999999999999989 ;
	setAttr ".sp" -type "double3" 119.40815854168581 126.84066296725668 10.999999999999989 ;
createNode nurbsCurve -n "right_thumb2CtrlShape" -p "right_thumb2Ctrl";
	rename -uid "D6A37D56-4313-094E-EFD3-F7A8A8D2DEA8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		120.80059471476844 123.84377225861908 7.7278474283324918
		120.87510007775212 127.11507649441828 6.372477454993815
		120.94960544073602 130.38638073021747 7.7278474283324883
		120.98046657255342 131.74139931133379 10.999999999999988
		120.94960544073602 130.38638073021747 14.272152571667476
		120.87510007775212 127.11507649441828 15.627522545006158
		120.80059471476844 123.84377225861911 14.272152571667478
		120.76973358295089 122.48875367750274 10.999999999999993
		120.80059471476844 123.84377225861908 7.7278474283324918
		120.87510007775212 127.11507649441828 6.372477454993815
		120.94960544073602 130.38638073021747 7.7278474283324883
		;
createNode transform -n "left_footCtrl" -p "mainCtrl";
	rename -uid "B3892E54-415D-C6E6-5E6E-9B8F4A5C51AC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 25.820468902587891 1.7223666469632128 -1.7417941093444789 ;
	setAttr ".sp" -type "double3" 25.820468902587891 1.7223666469632128 -1.7417941093444789 ;
createNode nurbsCurve -n "left_footCtrlShape" -p "left_footCtrl";
	rename -uid "1286C6DA-4F10-D852-8876-23A39D763290";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		41.640283883392243 1.7223666469632137 -17.56160909014881
		25.820468902587887 1.7223666469632142 -24.114391009431042
		10.000653921783554 1.7223666469632137 -17.561609090148821
		3.447872002501331 1.7223666469632128 -1.7417941093444889
		10.000653921783549 1.722366646963212 14.07802087145985
		25.820468902587884 1.7223666469632115 20.630802790742084
		41.640283883392215 1.722366646963212 14.078020871459858
		48.193065802674454 1.7223666469632128 -1.7417941093444704
		41.640283883392243 1.7223666469632137 -17.56160909014881
		25.820468902587887 1.7223666469632142 -24.114391009431042
		10.000653921783554 1.7223666469632137 -17.561609090148821
		;
createNode transform -n "right_footCtrl" -p "mainCtrl";
	rename -uid "B487416E-4D6B-229F-97FD-23A65F0E9170";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -25.820468902587891 1.7223666469632128 -1.7417941093444789 ;
	setAttr ".sp" -type "double3" -25.820468902587891 1.7223666469632128 -1.7417941093444789 ;
createNode nurbsCurve -n "right_footCtrlShape" -p "right_footCtrl";
	rename -uid "0AA35D7B-4D11-8DB1-6FD1-228D03A2AFD3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-41.640283883392243 1.7223666469632137 -17.56160909014881
		-25.820468902587887 1.7223666469632142 -24.114391009431042
		-10.000653921783554 1.7223666469632137 -17.561609090148821
		-3.447872002501331 1.7223666469632128 -1.7417941093444889
		-10.000653921783549 1.722366646963212 14.07802087145985
		-25.820468902587884 1.7223666469632115 20.630802790742084
		-41.640283883392215 1.722366646963212 14.078020871459858
		-48.193065802674454 1.7223666469632128 -1.7417941093444704
		-41.640283883392243 1.7223666469632137 -17.56160909014881
		-25.820468902587887 1.7223666469632142 -24.114391009431042
		-10.000653921783554 1.7223666469632137 -17.561609090148821
		;
createNode transform -n "mainKneeCtrl" -p "mainCtrl";
	rename -uid "7A6BC401-4FA7-B422-E560-5381D9B2E54E";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 25.437771066594962 51.735003896815485 ;
	setAttr ".sp" -type "double3" 0 25.437771066594962 51.735003896815485 ;
createNode nurbsCurve -n "mainKneeCtrlShape" -p "mainKneeCtrl";
	rename -uid "F2C3164A-4B1F-CEA3-A154-2E825A78B203";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		32.637260265419627 40.420772030013033 51.735003896815492
		-5.2658541119155643e-015 46.62693423410996 51.735003896815499
		-32.637260265419599 40.42077203001304 51.735003896815492
		-46.156056106056923 25.437771066594969 51.735003896815485
		-32.637260265419606 10.454770103176889 51.735003896815478
		-1.3907720491808308e-014 4.2486078990799605 51.735003896815471
		32.637260265419577 10.454770103176882 51.735003896815478
		46.156056106056923 25.437771066594951 51.735003896815485
		32.637260265419627 40.420772030013033 51.735003896815492
		-5.2658541119155643e-015 46.62693423410996 51.735003896815499
		-32.637260265419599 40.42077203001304 51.735003896815492
		;
createNode transform -n "left_kneeCtrl1" -p "mainKneeCtrl";
	rename -uid "1E6B714E-4DBF-6AE6-A077-A3986843E995";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -29.488570921950497 25.746313095092756 51.731265503332892 ;
	setAttr ".sp" -type "double3" -29.488570921950497 25.746313095092756 51.731265503332892 ;
createNode nurbsCurve -n "left_kneeCtrl1Shape" -p "left_kneeCtrl1";
	rename -uid "9306E773-476A-5095-EA1B-8E9A5967941D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		-29.488570921950501 14.460790033599544 51.731265503332885
		-34.002780146547785 18.974999258196839 51.731265503332892
		-31.745675534249141 18.974999258196839 51.731265503332892
		-31.745675534249141 23.489208482794112 51.731265503332892
		-36.259884758846425 23.489208482794112 51.731265503332892
		-36.259884758846425 21.232103870495472 51.731265503332892
		-40.774093983443706 25.746313095092759 51.731265503332892
		-36.259884758846425 30.26052231969004 51.731265503332892
		-36.259884758846425 28.003417707391407 51.731265503332892
		-31.745675534249141 28.003417707391407 51.731265503332892
		-31.745675534249141 32.517626931988687 51.731265503332892
		-34.002780146547785 32.517626931988687 51.731265503332892
		-29.488570921950501 37.031836156585968 51.731265503332899
		-24.974361697353217 32.517626931988687 51.731265503332892
		-27.231466309651861 32.517626931988687 51.731265503332892
		-27.231466309651861 28.003417707391407 51.731265503332892
		-22.717257085054577 28.003417707391407 51.731265503332892
		-22.717257085054577 30.26052231969004 51.731265503332892
		-18.203047860457293 25.746313095092759 51.731265503332892
		-22.717257085054577 21.232103870495472 51.731265503332892
		-22.717257085054577 23.489208482794112 51.731265503332892
		-27.231466309651861 23.489208482794112 51.731265503332892
		-27.231466309651861 18.974999258196839 51.731265503332892
		-24.974361697353217 18.974999258196839 51.731265503332892
		-29.488570921950501 14.460790033599544 51.731265503332885
		;
createNode transform -n "left_kneeCtrl" -p "mainKneeCtrl";
	rename -uid "32B38270-482B-5BED-562C-AF8D7EBC570D";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 29.488570921950497 25.746313095092756 51.731265503332892 ;
	setAttr ".sp" -type "double3" 29.488570921950497 25.746313095092756 51.731265503332892 ;
createNode nurbsCurve -n "left_kneeCtrlShape" -p "left_kneeCtrl";
	rename -uid "3F3A4A46-4681-84BB-9529-169FA8F7D7A7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		29.488570921950501 14.460790033599544 51.731265503332885
		34.002780146547785 18.974999258196839 51.731265503332892
		31.745675534249141 18.974999258196839 51.731265503332892
		31.745675534249141 23.489208482794112 51.731265503332892
		36.259884758846425 23.489208482794112 51.731265503332892
		36.259884758846425 21.232103870495472 51.731265503332892
		40.774093983443706 25.746313095092759 51.731265503332892
		36.259884758846425 30.26052231969004 51.731265503332892
		36.259884758846425 28.003417707391407 51.731265503332892
		31.745675534249141 28.003417707391407 51.731265503332892
		31.745675534249141 32.517626931988687 51.731265503332892
		34.002780146547785 32.517626931988687 51.731265503332892
		29.488570921950501 37.031836156585968 51.731265503332899
		24.974361697353217 32.517626931988687 51.731265503332892
		27.231466309651861 32.517626931988687 51.731265503332892
		27.231466309651861 28.003417707391407 51.731265503332892
		22.717257085054577 28.003417707391407 51.731265503332892
		22.717257085054577 30.26052231969004 51.731265503332892
		18.203047860457293 25.746313095092759 51.731265503332892
		22.717257085054577 21.232103870495472 51.731265503332892
		22.717257085054577 23.489208482794112 51.731265503332892
		27.231466309651861 23.489208482794112 51.731265503332892
		27.231466309651861 18.974999258196839 51.731265503332892
		24.974361697353217 18.974999258196839 51.731265503332892
		29.488570921950501 14.460790033599544 51.731265503332885
		;
createNode transform -n "lionGeo";
	rename -uid "41CC7D75-4D98-56F7-653B-DE9197CE04FE";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "lionGeoShape" -p "lionGeo";
	rename -uid "D471F96D-4811-CF83-81F5-F99BB18F13BA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.68502479791641235 0.18215724360197783 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 4;
	setAttr ".vcs" 2;
createNode mesh -n "lionGeoShapeOrig" -p "lionGeo";
	rename -uid "F186F6BB-4B0F-5261-B47B-F487482B9770";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 2087 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.048112065 0.098084643 0.82488382
		 0.17357787 0.79261565 0.15610154 0.056228817 0.072221383 0.76508224 0.13362843 0.077757299
		 0.053315133 0.74402136 0.10591307 0.10450965 0.048603073 0.72922128 0.074561968 0.12629509
		 0.059897691 0.17491132 0.11785439 0.1348362 0.082904741 0.15806153 0.14619084 0.12701347
		 0.10890107 0.13151941 0.16639027 0.10454991 0.12738408 0.098671645 0.17813838 0.07809186
		 0.13222946 0.063426852 0.18274677 0.056479663 0.12101324 0.091387421 0.090455398
		 0.81670833 0.19128716 0.80844223 0.21239161 0.7674675 0.19322479 0.78039062 0.17303452
		 0.73277885 0.16885281 0.75001442 0.14963183 0.70346034 0.13203502 0.72606492 0.1181851
		 0.22544226 0.10270633 0.20353466 0.092902109 0.2136226 0.15119454 0.19246653 0.13289359
		 0.18862575 0.186496 0.17292622 0.16434786 0.15677661 0.20648994 0.14367118 0.18491963
		 0.11760685 0.2194404 0.10733688 0.19730747 0.85465586 0.22964163 0.85645366 0.20673785
		 0.79546297 0.2469486 0.75373721 0.22130856 0.72026432 0.19078268 0.69193441 0.14514293
		 0.68033928 0.087673366 0.22585706 0.17379303 0.19798675 0.20726736 0.16481018 0.23376974
		 0.12680796 0.25503197 0.074755609 0.27192822 0.78634846 0.27954829 0.779863 0.31104806
		 0.72833675 0.28914171 0.7384479 0.25280327 0.68687773 0.27439135 0.70000434 0.23043504
		 0.23841509 0.23374443 0.24875911 0.2812627 0.22280872 0.28925049 0.21302085 0.24812169
		 0.18669048 0.30170289 0.17526376 0.26816955 0.14210212 0.31840545 0.13425827 0.28693274
		 0.091099381 0.33843434 0.83983743 0.30080691 0.65786183 0.17297569 0.6623596 0.13780323
		 0.67005962 0.082305461 0.25684613 0.17767552 0.64457446 0.26285249 0.65129471 0.2192367
		 0.26451293 0.22965072 0.27229804 0.27562988 0.76564491 0.35656077 0.71705937 0.33672097
		 0.67620373 0.32449681 0.2587859 0.33291781 0.23253694 0.33975291 0.19607589 0.35021895
		 0.15448403 0.36658633 0.10803011 0.38818663 0.63494658 0.31521848 0.28266549 0.32792985
		 0.74370217 0.40492046 0.70124704 0.3874014 0.66483206 0.37852001 0.26831961 0.38884532
		 0.24425232 0.3944 0.21111736 0.40272579 0.17462683 0.41749278 0.13533303 0.43761432
		 0.62338048 0.37033999 0.29536283 0.38379723 0.72350049 0.46193373 0.68654716 0.4463532
		 0.65207946 0.4354741 0.2750985 0.42852271 0.25320247 0.43595225 0.22378822 0.44656909
		 0.196064 0.46227652 0.45973009 0.47869754 0.61111593 0.4232015 0.30428761 0.42108542
		 0.44033995 0.038979828 0.42561904 0.016189978 0.52928358 0.11196561 0.49148619 0.11933656
		 0.39980438 0.0036403984 0.56302261 0.099275842 0.37267643 0.0061632842 0.59144932
		 0.079753935 0.35453343 0.022825941 0.30168194 0.063871726 0.3522054 0.047312424 0.32043293
		 0.093032047 0.36625504 0.070428312 0.3446236 0.11449559 0.39420503 0.081940457 0.37635106
		 0.12542997 0.42066148 0.079743832 0.4131074 0.1275138 0.43840832 0.063273594 0.45204532
		 0.12441335 0.39647093 0.043049783 0.49673581 0.13827173 0.53796226 0.13160266 0.5465132
		 0.15460062 0.50135493 0.16033028 0.57408118 0.11915894 0.58648753 0.14295965 0.60584813
		 0.097246081 0.62432295 0.11803336 0.28546351 0.078207731 0.65088379 0.077374622 0.30707443
		 0.11288354 0.29118669 0.13726062 0.33439434 0.13608436 0.32450637 0.16181256 0.36839512
		 0.14598316 0.36038512 0.16969106 0.40795088 0.14697644 0.40195301 0.16947868 0.451929
		 0.14331067 0.45093095 0.16524354 0.55353278 0.1853556 0.50734973 0.19610676 0.59338868
		 0.16788369 0.63208586 0.13449198 0.25718758 0.099571854 0.28530949 0.16285926 0.32079351
		 0.1842716 0.35923231 0.1971401 0.40050176 0.20361486 0.45343471 0.20260721 0.50827348
		 0.22873837 0.56003499 0.21984345 0.55868536 0.25706851 0.50541115 0.25931445 0.60237265
		 0.21230337 0.60124618 0.25821167 0.29005721 0.22365546 0.31807765 0.22755569 0.32246107
		 0.26919988 0.29601309 0.27178413 0.35889587 0.2320967 0.35921103 0.26675272 0.40168506
		 0.23415074 0.40421891 0.26452652 0.45398346 0.23269236 0.45483479 0.26183781 0.55245203
		 0.30486545 0.50266105 0.30483088 0.59360892 0.30863166 0.33277965 0.31922299 0.30645788
		 0.32323283 0.36906257 0.31413439 0.41127717 0.31113872 0.45834491 0.30808714 0.5458982
		 0.35680914 0.50110918 0.35553378 0.58221626 0.3624787 0.34635335 0.37355304 0.32219547
		 0.37798163 0.37955397 0.36735094 0.41813952 0.36379001 0.46102032 0.35995877 0.53168523
		 0.41545898 0.49036416 0.41370422 0.56826627 0.41907448 0.35824388 0.41490361 0.33446425
		 0.41677511 0.39077574 0.41210026 0.42494681 0.41286439 0.45913512 0.41399685 0.63095558
		 0.065860525 0.26668602 0.09512049 0.65877944 0.08375366 0.24712375 0.10740152 0.6147393
		 0.054440379 0.58045155 0.034250036 0.33085117 0.033363909 0.45612964 0.084740311
		 0.48485199 0.080893308 0.42645353 0.085926935 0.34452817 0.053501755 0.56354612 0.05009377
		 0.54199803 0.064119294 0.51456821 0.074530706 0.77836812 0.42804909 0.80835032 0.3787792
		 0.82990074 0.3316375 0.066459417 0.20371133 0.070572287 0.22831568 0.71111834 0.080228329
		 0.68945599 0.084401056 0.081802309 0.30625069 0.23554011 0.10357611 0.84684002 0.26859006
		 0.85881388 0.18746719 0.18473893 0.084235623 0.86126244 0.14717858 0.053300858 0.14167693
		 0.14923644 0.063245535 0.76666033 0.065385967 0.83844948 0.13710792 0.078115672 0.13836153
		 0.14188543 0.086452067 0.7779603 0.0855055 0.7935307 0.10538641 0.814785 0.12326057
		 0.45484185 0.41313213 0.4559564 0.41521651 0.46855277 0.41809386 0.48614258 0.42233962
		 0.49130201 0.43250942 0.49733806 0.44181186 0.54525763 0.45645332 0.36323875 0.4508568
		 0.38458183 0.43910557 0.40201622 0.43086299 0.41605952 0.42185628 0.41317809 0.41754925
		 0.41082698 0.41507199 0.41856703 0.41254789 0.046138465 0.16480187 0.03143096 0.16101465
		 0.036494195 0.14895213 0.046993971 0.14637199;
	setAttr ".uvst[0].uvsp[250:499]" 0.018906951 0.15420008 0.03115195 0.14227313
		 0.04339689 0.13034621 0.051102102 0.18294361 0.040861905 0.18770283 0.033948302 0.18216893
		 0.051118433 0.20064002 0.039114356 0.20039099 0.029234767 0.19996962 0.12058935 0.24372026
		 0.11883256 0.26466241 0.091679692 0.2630643 0.094641536 0.24288118 0.10706526 0.28706709
		 0.088178515 0.28300607 0.069291711 0.27894506 0.074849784 0.26036352 0.078635931
		 0.24147612 0.76901144 0.90585458 0.76953644 0.88675064 0.78407633 0.8871156 0.78336406
		 0.90496486 0.76998079 0.868397 0.78452337 0.86877215 0.79709035 0.86991388 0.79667151
		 0.88743597 0.79625267 0.90495813 0.10842764 0.11584508 0.11988634 0.13811541 0.093206227
		 0.13938004 0.09018904 0.11940807 0.1213218 0.15903896 0.095674634 0.15960351 0.079949796
		 0.16056308 0.076790392 0.14152983 0.071950436 0.12297097 0.12220103 0.18016833 0.097045779
		 0.18032983 0.1224075 0.20139331 0.097326636 0.20129001 0.082107604 0.20112389 0.081728816
		 0.18060789 0.12182578 0.22260395 0.096524715 0.22221509 0.081065893 0.22157159 0.058629513
		 0.25719589 0.062081516 0.23961809 0.054780424 0.27407277 0.040269196 0.26920047 0.044388294
		 0.25393414 0.044265926 0.23582336 0.7699219 0.95281696 0.76827055 0.92808962 0.78206289
		 0.92345202 0.78046745 0.942258 0.79363281 0.91832864 0.79101294 0.93169922 0.060906172
		 0.14387912 0.057673693 0.12665856 0.063688219 0.16177687 0.065569401 0.18102881 0.066077173
		 0.20089588 0.064739347 0.22063854 0.050221384 0.2182056 0.033495069 0.25095114 0.02884686
		 0.23874649 0.027662992 0.25723213 0.015056789 0.2452637 0.66436213 0.901842 0.67724013
		 0.90246123 0.67767036 0.9209938 0.66635162 0.91532618 0.69153887 0.90403104 0.69123238
		 0.92627883 0.6884197 0.95090616 0.67838043 0.93985832 0.6683411 0.92881036 0.66517806
		 0.86677146 0.67775667 0.86792934 0.67736971 0.88459265 0.66477007 0.88430673 0.69184649
		 0.86966664 0.6919148 0.88492209 0.04018873 0.21306255 0.032908261 0.21797496 0.021676362
		 0.2203818 0.0084690452 0.22153595 0.0018812418 0.19780809 0.017827511 0.19921315
		 0.70928144 0.93079889 0.70862514 0.95871407 0.70987701 0.90547621 0.73024464 0.90640712
		 0.72961575 0.9331069 0.72883046 0.96652192 0.71035117 0.88533813 0.70899028 0.87092769
		 0.72872829 0.8667506 0.73073101 0.88580763 0.023143828 0.1785962 0.010394037 0.17600405
		 0.75003338 0.9317559 0.74937618 0.95966947 0.75063044 0.9064343 0.7511071 0.88629645
		 0.75154722 0.8679316 0.2401273 0.045496225 0.23378509 0.0455935 0.23332006 0.024945796
		 0.23967099 0.024839938 0.2332592 0.0038087368 0.23962677 0.0036969781 0.22744155
		 0.045693696 0.22696882 0.025054693 0.1937629 0.025911421 0.19201043 0.046779871 0.17429487
		 0.047322959 0.17715994 0.026339784 0.18012576 0.0052345842 0.19571689 0.0047989786
		 0.22689915 0.0039277673 0.1869633 0.065816373 0.16650474 0.066046223 0.23422065 0.06526655
		 0.22788045 0.065356672 0.23464 0.084128201 0.22830489 0.084205747 0.18190889 0.084445924
		 0.1587109 0.084566012 0.24055904 0.065179348 0.24097237 0.084053457 0.14866139 0.10079988
		 0.17535248 0.10133417 0.23505527 0.10234189 0.22873467 0.10240275 0.23545 0.12057143
		 0.229148 0.12061185 0.16878782 0.11822847 0.13860773 0.11703677 0.24137414 0.10228288
		 0.24175164 0.12053096 0.14729562 0.13846089 0.17470489 0.13880637 0.23580712 0.13948053
		 0.22952345 0.13949734 0.2361027 0.15925473 0.22983572 0.15925401 0.17557876 0.15914649
		 0.14845029 0.15909272 0.24209198 0.13946092 0.24237213 0.15925056 0.14916572 0.18014531
		 0.17613041 0.18012229 0.2363123 0.18007922 0.2300598 0.18007624 0.23639908 0.20143476
		 0.2301515 0.20143914 0.1762795 0.20141622 0.14934351 0.20140477 0.24256897 0.18007743
		 0.24265167 0.20142692 0.14888601 0.22265726 0.17594625 0.22271058 0.23632595 0.22280177
		 0.23006672 0.22281721 0.23613057 0.24365413 0.22984838 0.24367791 0.17521887 0.24369909
		 0.14790411 0.24370968 0.24258932 0.22278476 0.24241483 0.24363056 0.14650926 0.26436892
		 0.17418598 0.26407543 0.23585021 0.2634657 0.22953939 0.26348844 0.23552921 0.28239611
		 0.22919118 0.28240791 0.16812822 0.2847375 0.13759674 0.28590229 0.24216056 0.26344362
		 0.24186477 0.28238457 0.14798932 0.30220976 0.17494458 0.30167148 0.235212 0.30060533
		 0.2288551 0.3005949 0.2349056 0.31878221 0.22853813 0.31874841 0.18177046 0.3185887
		 0.15838662 0.31850886 0.24156547 0.3006137 0.24127024 0.31881201 0.16240427 0.33701873
		 0.18435194 0.3372016 0.23461807 0.33761606 0.22824726 0.3375673 0.23433712 0.35727111
		 0.22796395 0.35721371 0.1869372 0.35622829 0.16642383 0.35573557 0.24098676 0.33766034
		 0.24070929 0.35732406 0.17357324 0.37678427 0.19160533 0.37713942 0.23405108 0.37791127
		 0.22766951 0.37784973 0.23372015 0.3990463 0.22734432 0.39898068 0.1962581 0.39829803
		 0.18071498 0.3979567 0.24043213 0.37796837 0.2401033 0.39910311 0.36032727 0.04435432
		 0.36068326 0.063652456 0.36103916 0.082950652 0.36133584 0.10099155 0.36163262 0.1190325
		 0.36187899 0.13846427 0.36212537 0.1578961 0.36226919 0.17935908 0.36241302 0.20082211
		 0.36239707 0.22229099 0.36238119 0.24375987 0.36224848 0.26319891 0.36211574 0.28263801
		 0.36193588 0.30068246 0.36175603 0.31872687 0.36155194 0.33802685 0.36134791 0.35732689
		 0.36115092 0.37851971 0.36095393 0.39971247 0.35952792 0.0019920468 0.35992759 0.023173153
		 0.36945331 0.86924589 0.36387721 0.85589087 0.36933357 0.85332608 0.37734836 0.85865146
		 0.3583011 0.84253597 0.37024766 0.8455162 0.38071874 0.84800762 0.69179767 0.79704165
		 0.71289504 0.78749144 0.71960616 0.78983891 0.71578294 0.79813033 0.73399234 0.77794111
		 0.73341197 0.78772634 0.73341036 0.79694736 0.74702072 0.78859186 0.75178277 0.79673457
		 0.75401664 0.78562093 0.77404106 0.79330075;
	setAttr ".uvst[0].uvsp[500:749]" 0.73461336 0.82763612 0.73422688 0.81067634
		 0.75304091 0.81051207 0.75254244 0.82816368 0.77043968 0.81198001 0.7707321 0.82890433
		 0.73332018 0.84654868 0.75203532 0.8479287 0.77047932 0.84841222 0.78172165 0.81644654
		 0.78446835 0.83032203 0.7861048 0.81083935 0.79816848 0.82837784 0.7850281 0.84880233
		 0.79762936 0.84914589 0.71783412 0.82630002 0.70481586 0.8116709 0.71869969 0.81110704
		 0.72165769 0.82685715 0.69081825 0.85897958 0.70408082 0.86278772 0.69071341 0.85277772
		 0.71097529 0.85681963 0.66565037 0.84596592 0.67809868 0.85301256 0.66612262 0.82516038
		 0.67841804 0.83896905 0.43008435 0.94244266 0.41339085 0.95555091 0.39210525 0.9414323
		 0.40476349 0.92697275 0.39669731 0.96865898 0.37741315 0.95482981 0.35812899 0.94100082
		 0.37334663 0.92777121 0.38496006 0.91425121 0.45988595 0.83290529 0.44786945 0.84792364
		 0.43071204 0.84360629 0.43791908 0.82834327 0.43585292 0.86294198 0.4248575 0.8592881
		 0.41010666 0.85482293 0.41371402 0.83992493 0.41595218 0.82378131 0.43754536 0.88266212
		 0.42170778 0.87580699 0.43923777 0.90238225 0.41872072 0.89292133 0.40072694 0.88407838
		 0.40595207 0.86938685 0.43466106 0.92241246 0.41335392 0.9103896 0.39390817 0.8993603
		 0.35964209 0.91502494 0.37013322 0.90356576 0.34793144 0.92558956 0.33773386 0.91017842
		 0.35069194 0.90396392 0.35916948 0.89490104 0.39703435 0.837515 0.39836699 0.82353282
		 0.39469954 0.85108644 0.38279301 0.83675051 0.38078183 0.82328451 0.39036003 0.86383665
		 0.38464546 0.87662673 0.37818542 0.8903181 0.36590084 0.88414299 0.34619665 0.89535892
		 0.35095561 0.88824296 0.33969742 0.8953917 0.34166095 0.88060486 0.36954147 0.83291024
		 0.37310973 0.83800578 0.3567698 0.8817147 0.35555714 0.87492549 0.71795869 0.84346873
		 0.70427376 0.83953887 0.15657932 0.047866046 0.16055697 0.026768148 0.16453463 0.0056701899
		 0.16517186 0.39761537 0.15554115 0.37642911 0.14591044 0.35524285 0.14045662 0.33683586
		 0.13500279 0.31842899 0.12103406 0.30274805 0.1219703 0.10026559 0.13551289 0.0846861
		 0.14604616 0.066276073 0.36153015 0.47459477 0.38097867 0.46531361 0.39579523 0.49963349
		 0.36570001 0.49560341 0.40739563 0.451702 0.42805758 0.50250357 0.42443132 0.56013715
		 0.39461347 0.53340429 0.36533138 0.52006179 0.42858863 0.62573296 0.39976141 0.62712824
		 0.39831379 0.58613527 0.40549725 0.67977315 0.38261485 0.66631103 0.36465228 0.65603226
		 0.370621 0.63158393 0.37031719 0.6018362 0.38276076 0.55892003 0.35969496 0.54240346
		 0.36204293 0.57673001 0.35140407 0.55940783 0.33474585 0.58438802 0.33121204 0.55965358
		 0.33886614 0.61114848 0.30412075 0.61420369 0.30463907 0.58586228 0.30500752 0.55983168
		 0.33855659 0.63952816 0.33840963 0.6670422 0.30283087 0.67166668 0.3035287 0.6434527
		 0.26850659 0.63884896 0.26922849 0.61075354 0.26773918 0.66583824 0.24235706 0.65363479
		 0.23641606 0.6301772 0.23739854 0.60138452 0.27449128 0.58436269 0.27854455 0.55986106
		 0.24699226 0.57668704 0.25805569 0.55973053 0.22599572 0.55899513 0.2495307 0.54279912
		 0.20875597 0.58607334 0.18156689 0.55981904 0.21287708 0.53336585 0.24283987 0.52071726
		 0.20738766 0.6258533 0.22436896 0.66472816 0.20224917 0.67940682 0.17903452 0.62597531
		 0.21172705 0.50068957 0.24182186 0.4970611 0.17985296 0.50130045 0.20130143 0.45123589
		 0.2267223 0.46667692 0.24598968 0.47710079 0.26014781 0.44238132 0.27031162 0.4668183
		 0.24440515 0.41479826 0.30298361 0.40045291 0.30325347 0.43410033 0.30337673 0.46189126
		 0.34663767 0.44140032 0.33668032 0.46554223 0.36278686 0.41414931 0.30274713 0.72906512
		 0.2457668 0.71548188 0.25922525 0.6906082 0.30290103 0.69914329 0.36053154 0.71615791
		 0.34676743 0.69151372 0.27213052 0.4902809 0.3038305 0.48678592 0.30426717 0.51128298
		 0.27281672 0.51375431 0.33547506 0.48973671 0.33562854 0.51333719 0.3329187 0.53647268
		 0.30466864 0.53559333 0.27642965 0.53663617 0.071675815 0.87914771 0.090978809 0.8865931
		 0.071835093 0.99746662 0.051152967 0.99800801 0.10559746 0.90139383 0.090570338 0.98842478
		 0.11222592 0.9229188 0.10403306 0.97036892 0.047261294 0.87904447 0.02811739 0.98991817
		 0.025412438 0.88754874 0.010385392 0.97457969 0.0018812235 0.95273095 0.010074079
		 0.90528065 0.0019842735 0.92831647 0.11149458 0.94722486 0.62678021 0.40459114 0.62246186
		 0.42634872 0.59129381 0.43052247 0.60663849 0.39497921 0.5578813 0.43349504 0.5792799
		 0.38088229 0.59251773 0.46549711 0.56163687 0.49318275 0.62284356 0.45167875 0.58868545
		 0.52010769 0.58718616 0.56256193 0.55733144 0.5611167 0.60494411 0.60314155 0.5812459
		 0.61708349 0.61736542 0.56717652 0.6235469 0.59249628 0.61768001 0.53636825 0.62868088
		 0.47481701 0.60479289 0.4919222 0.62624925 0.51036721 0.63726735 0.49242738 0.6581791
		 0.49268204 0.65451932 0.51829821 0.65025216 0.54601252 0.6856994 0.51982492 0.6862362
		 0.54917675 0.68531775 0.49286637 0.6505729 0.57540399 0.65072501 0.60389858 0.68684936
		 0.57946843 0.68757212 0.60868812 0.72237223 0.54560357 0.72311985 0.57470042 0.72391456
		 0.60265177 0.75635427 0.5657196 0.75020152 0.59001333 0.75533676 0.53590059 0.71272409
		 0.49289656 0.71692187 0.5182718 0.7454012 0.51032269 0.73394322 0.49276161 0.74277222
		 0.47522676 0.76714611 0.49200028 0.78500044 0.52004361 0.78073239 0.46545741 0.81315863
		 0.49285355 0.74970156 0.45235792 0.78641748 0.56124169 0.76883084 0.60150212 0.8157813
		 0.56136775 0.79173911 0.61670417 0.75075591 0.42785829 0.78192329 0.43161622 0.81493366
		 0.43224898 0.7663936 0.39639103 0.79272062 0.38039964 0.74643946 0.40718648 0.72125047
		 0.39653763 0.7317766 0.37122938 0.74808043 0.34266332 0.68713433 0.36265332 0.68741393
		 0.32780641;
	setAttr ".uvst[0].uvsp[750:999]" 0.68700665 0.39143479 0.65251607 0.39521581
		 0.64220357 0.37021357 0.6254788 0.3419911 0.68765885 0.66813254 0.6874994 0.63714415
		 0.73273206 0.62830466 0.74667013 0.65406525 0.64206922 0.62924242 0.62781459 0.65476525
		 0.71936679 0.42083642 0.68653673 0.41721717 0.71865612 0.44514656 0.68608451 0.44258693
		 0.65376413 0.42027301 0.65360516 0.44471461 0.68566883 0.46776411 0.65641171 0.46867478
		 0.71491438 0.46884406 0.70621812 0.13211881 0.70621812 0.011499779 0.72650647 0.015552288
		 0.72650647 0.12806644 0.7434302 0.027649863 0.7434302 0.11596879 0.75362456 0.04773315
		 0.75362456 0.095885508 0.68214202 0.12806644 0.68214202 0.015552288 0.66205871 0.11596879
		 0.66205871 0.027649863 0.64996099 0.095885508 0.64996099 0.04773315 0.64590853 0.071809366
		 0.75703943 0.071809366 0.046138465 0.16480187 0.03143096 0.16101465 0.036494195 0.14895213
		 0.046993971 0.14637199 0.018906951 0.15420008 0.03115195 0.14227313 0.04339689 0.13034621
		 0.051102102 0.18294361 0.040861905 0.18770283 0.033948302 0.18216893 0.051118433
		 0.20064002 0.039114356 0.20039099 0.029234767 0.19996962 0.12058935 0.24372026 0.11883256
		 0.26466241 0.091679692 0.2630643 0.094641536 0.24288118 0.10706526 0.28706709 0.088178515
		 0.28300607 0.069291711 0.27894506 0.074849784 0.26036352 0.078635931 0.24147612 0.76901144
		 0.90585458 0.76953644 0.88675064 0.78407633 0.8871156 0.78336406 0.90496486 0.76998079
		 0.868397 0.78452337 0.86877215 0.79709035 0.86991388 0.79667151 0.88743597 0.79625267
		 0.90495813 0.10842764 0.11584508 0.11988634 0.13811541 0.093206227 0.13938004 0.09018904
		 0.11940807 0.1213218 0.15903896 0.095674634 0.15960351 0.079949796 0.16056308 0.076790392
		 0.14152983 0.071950436 0.12297097 0.12220103 0.18016833 0.097045779 0.18032983 0.1224075
		 0.20139331 0.097326636 0.20129001 0.082107604 0.20112389 0.081728816 0.18060789 0.12182578
		 0.22260395 0.096524715 0.22221509 0.081065893 0.22157159 0.058629513 0.25719589 0.062081516
		 0.23961809 0.054780424 0.27407277 0.040269196 0.26920047 0.044388294 0.25393414 0.044265926
		 0.23582336 0.7699219 0.95281696 0.76827055 0.92808962 0.78206289 0.92345202 0.78046745
		 0.942258 0.79363281 0.91832864 0.79101294 0.93169922 0.060906172 0.14387912 0.057673693
		 0.12665856 0.063688219 0.16177687 0.065569401 0.18102881 0.066077173 0.20089588 0.064739347
		 0.22063854 0.050221384 0.2182056 0.033495069 0.25095114 0.02884686 0.23874649 0.027662992
		 0.25723213 0.015056789 0.2452637 0.66436213 0.901842 0.67724013 0.90246123 0.67767036
		 0.9209938 0.66635162 0.91532618 0.69153887 0.90403104 0.69123238 0.92627883 0.6884197
		 0.95090616 0.67838043 0.93985832 0.6683411 0.92881036 0.66517806 0.86677146 0.67775667
		 0.86792934 0.67736971 0.88459265 0.66477007 0.88430673 0.69184649 0.86966664 0.6919148
		 0.88492209 0.04018873 0.21306255 0.032908261 0.21797496 0.021676362 0.2203818 0.0084690452
		 0.22153595 0.0018812418 0.19780809 0.017827511 0.19921315 0.70928144 0.93079889 0.70862514
		 0.95871407 0.70987701 0.90547621 0.73024464 0.90640712 0.72961575 0.9331069 0.72883046
		 0.96652192 0.71035117 0.88533813 0.70899028 0.87092769 0.72872829 0.8667506 0.73073101
		 0.88580763 0.023143828 0.1785962 0.010394037 0.17600405 0.75003338 0.9317559 0.74937618
		 0.95966947 0.75063044 0.9064343 0.7511071 0.88629645 0.75154722 0.8679316 0.2401273
		 0.045496225 0.23378509 0.0455935 0.23332006 0.024945796 0.23967099 0.024839938 0.2332592
		 0.0038087368 0.23962677 0.0036969781 0.22744155 0.045693696 0.22696882 0.025054693
		 0.1937629 0.025911421 0.19201043 0.046779871 0.17429487 0.047322959 0.17715994 0.026339784
		 0.18012576 0.0052345842 0.19571689 0.0047989786 0.22689915 0.0039277673 0.1869633
		 0.065816373 0.16650474 0.066046223 0.23422065 0.06526655 0.22788045 0.065356672 0.23464
		 0.084128201 0.22830489 0.084205747 0.18190889 0.084445924 0.1587109 0.084566012 0.24055904
		 0.065179348 0.24097237 0.084053457 0.14866139 0.10079988 0.17535248 0.10133417 0.23505527
		 0.10234189 0.22873467 0.10240275 0.23545 0.12057143 0.229148 0.12061185 0.16878782
		 0.11822847 0.13860773 0.11703677 0.24137414 0.10228288 0.24175164 0.12053096 0.14729562
		 0.13846089 0.17470489 0.13880637 0.23580712 0.13948053 0.22952345 0.13949734 0.2361027
		 0.15925473 0.22983572 0.15925401 0.17557876 0.15914649 0.14845029 0.15909272 0.24209198
		 0.13946092 0.24237213 0.15925056 0.14916572 0.18014531 0.17613041 0.18012229 0.2363123
		 0.18007922 0.2300598 0.18007624 0.23639908 0.20143476 0.2301515 0.20143914 0.1762795
		 0.20141622 0.14934351 0.20140477 0.24256897 0.18007743 0.24265167 0.20142692 0.14888601
		 0.22265726 0.17594625 0.22271058 0.23632595 0.22280177 0.23006672 0.22281721 0.23613057
		 0.24365413 0.22984838 0.24367791 0.17521887 0.24369909 0.14790411 0.24370968 0.24258932
		 0.22278476 0.24241483 0.24363056 0.14650926 0.26436892 0.17418598 0.26407543 0.23585021
		 0.2634657 0.22953939 0.26348844 0.23552921 0.28239611 0.22919118 0.28240791 0.16812822
		 0.2847375 0.13759674 0.28590229 0.24216056 0.26344362 0.24186477 0.28238457 0.14798932
		 0.30220976 0.17494458 0.30167148 0.235212 0.30060533 0.2288551 0.3005949 0.2349056
		 0.31878221 0.22853813 0.31874841 0.18177046 0.3185887 0.15838662 0.31850886 0.24156547
		 0.3006137 0.24127024 0.31881201 0.16240427 0.33701873 0.18435194 0.3372016 0.23461807
		 0.33761606 0.22824726 0.3375673 0.23433712 0.35727111 0.22796395 0.35721371 0.1869372
		 0.35622829 0.16642383 0.35573557 0.24098676 0.33766034 0.24070929 0.35732406 0.17357324
		 0.37678427 0.19160533 0.37713942 0.23405108 0.37791127 0.22766951 0.37784973 0.23372015
		 0.3990463 0.22734432 0.39898068 0.1962581 0.39829803 0.18071498 0.3979567 0.24043213
		 0.37796837 0.2401033 0.39910311;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.36032727 0.04435432 0.36068326 0.063652456
		 0.36103916 0.082950652 0.36133584 0.10099155 0.36163262 0.1190325 0.36187899 0.13846427
		 0.36212537 0.1578961 0.36226919 0.17935908 0.36241302 0.20082211 0.36239707 0.22229099
		 0.36238119 0.24375987 0.36224848 0.26319891 0.36211574 0.28263801 0.36193588 0.30068246
		 0.36175603 0.31872687 0.36155194 0.33802685 0.36134791 0.35732689 0.36115092 0.37851971
		 0.36095393 0.39971247 0.35952792 0.0019920468 0.35992759 0.023173153 0.36945331 0.86924589
		 0.36387721 0.85589087 0.36933357 0.85332608 0.37734836 0.85865146 0.3583011 0.84253597
		 0.37024766 0.8455162 0.38071874 0.84800762 0.69179767 0.79704165 0.71289504 0.78749144
		 0.71960616 0.78983891 0.71578294 0.79813033 0.73399234 0.77794111 0.73341197 0.78772634
		 0.73341036 0.79694736 0.74702072 0.78859186 0.75178277 0.79673457 0.75401664 0.78562093
		 0.77404106 0.79330075 0.73461336 0.82763612 0.73422688 0.81067634 0.75304091 0.81051207
		 0.75254244 0.82816368 0.77043968 0.81198001 0.7707321 0.82890433 0.73332018 0.84654868
		 0.75203532 0.8479287 0.77047932 0.84841222 0.78172165 0.81644654 0.78446835 0.83032203
		 0.7861048 0.81083935 0.79816848 0.82837784 0.7850281 0.84880233 0.79762936 0.84914589
		 0.71783412 0.82630002 0.70481586 0.8116709 0.71869969 0.81110704 0.72165769 0.82685715
		 0.69081825 0.85897958 0.70408082 0.86278772 0.69071341 0.85277772 0.71097529 0.85681963
		 0.66565037 0.84596592 0.67809868 0.85301256 0.66612262 0.82516038 0.67841804 0.83896905
		 0.43008435 0.94244266 0.41339085 0.95555091 0.39210525 0.9414323 0.40476349 0.92697275
		 0.39669731 0.96865898 0.37741315 0.95482981 0.35812899 0.94100082 0.37334663 0.92777121
		 0.38496006 0.91425121 0.45988595 0.83290529 0.44786945 0.84792364 0.43071204 0.84360629
		 0.43791908 0.82834327 0.43585292 0.86294198 0.4248575 0.8592881 0.41010666 0.85482293
		 0.41371402 0.83992493 0.41595218 0.82378131 0.43754536 0.88266212 0.42170778 0.87580699
		 0.43923777 0.90238225 0.41872072 0.89292133 0.40072694 0.88407838 0.40595207 0.86938685
		 0.43466106 0.92241246 0.41335392 0.9103896 0.39390817 0.8993603 0.35964209 0.91502494
		 0.37013322 0.90356576 0.34793144 0.92558956 0.33773386 0.91017842 0.35069194 0.90396392
		 0.35916948 0.89490104 0.39703435 0.837515 0.39836699 0.82353282 0.39469954 0.85108644
		 0.38279301 0.83675051 0.38078183 0.82328451 0.39036003 0.86383665 0.38464546 0.87662673
		 0.37818542 0.8903181 0.36590084 0.88414299 0.34619665 0.89535892 0.35095561 0.88824296
		 0.33969742 0.8953917 0.34166095 0.88060486 0.36954147 0.83291024 0.37310973 0.83800578
		 0.3567698 0.8817147 0.35555714 0.87492549 0.71795869 0.84346873 0.70427376 0.83953887
		 0.15657932 0.047866046 0.16055697 0.026768148 0.16453463 0.0056701899 0.16517186
		 0.39761537 0.15554115 0.37642911 0.14591044 0.35524285 0.14045662 0.33683586 0.13500279
		 0.31842899 0.12103406 0.30274805 0.1219703 0.10026559 0.13551289 0.0846861 0.14604616
		 0.066276073 0.015110433 0.77309483 0.0018812418 0.77323604 0.0093356371 0.73004341
		 0.018146038 0.7402153 0.019963622 0.77305114 0.024198055 0.74240077 0.035065472 0.77295536
		 0.025322676 0.77300727 0.031575382 0.74372745 0.039898276 0.74896377 0.22543597 0.74389392
		 0.23463309 0.73742872 0.23601878 0.77311987 0.22858042 0.77308142 0.22114217 0.77304292
		 0.21778369 0.74660677 0.21430433 0.77301562 0.20971805 0.7498256 0.20249081 0.77297598
		 0.19940233 0.7531541 0.1876182 0.75592721 0.19087684 0.77294523 0.17131883 0.75915277
		 0.17682314 0.77290916 0.1526835 0.772865 0.15384132 0.76208991 0.12393713 0.77281219
		 0.12401885 0.76373768 0.13850868 0.76369399 0.13900989 0.77283204 0.11094195 0.76353097
		 0.11197692 0.77279657 0.098753691 0.77280027 0.098444223 0.76377481 0.087651432 0.76261115
		 0.087003887 0.7728067 0.074453235 0.7728337 0.075291395 0.7609328 0.061470449 0.77285188
		 0.063386798 0.7606377 0.046612442 0.77291226 0.049260855 0.75463766 0.035888195 0.69330657
		 0.037419796 0.706496 0.2112301 0.71312082 0.21848124 0.70499808 0.040964663 0.71118826
		 0.048740923 0.73204672 0.044558287 0.71975541 0.20615816 0.71912163 0.19879192 0.72589594
		 0.19017237 0.73267204 0.17841887 0.73848683 0.1645453 0.74392015 0.15040219 0.74798799
		 0.12353587 0.75048286 0.13709772 0.74998593 0.1104607 0.75089759 0.098909557 0.75113094
		 0.090188444 0.74995226 0.079720259 0.74695003 0.070446074 0.74251324 0.058390498
		 0.73694062 0.13850027 0.67349505 0.13727325 0.66663986 0.16701043 0.67601818 0.16704953
		 0.68217778 0.16271728 0.69151509 0.13809574 0.68201464 0.13719028 0.73140085 0.12412095
		 0.72797644 0.12669873 0.71646154 0.14298606 0.72206521 0.13051987 0.70435953 0.15054327
		 0.71151781 0.13485777 0.69229054 0.15745789 0.70086831 0.13988143 0.65578681 0.17495948
		 0.66779268 0.10221696 0.66846824 0.099819243 0.65922189 0.10518515 0.67503005 0.12325174
		 0.73906368 0.10968906 0.73925459 0.10885042 0.72744989 0.1071322 0.715909 0.10653603
		 0.703071 0.10695291 0.69160831 0.10850126 0.68094164 0.15562975 0.73103559 0.14509296
		 0.73710662 0.16595936 0.72319365 0.17559373 0.71475351 0.18278855 0.70627332 0.19115824
		 0.69134402 0.19642144 0.68469632 0.18884349 0.69800532 0.067189574 0.68196261 0.066383719
		 0.67792451 0.06982094 0.68732536 0.073269367 0.69419914 0.076107025 0.70289367 0.080263436
		 0.71335471 0.086357832 0.72445798 0.092715323 0.73307067 0.097523808 0.74203616 0.13486761
		 0.74234176 0.13217854 0.74027002 0.018313766 0.80594718 0.0096274018 0.81633008 0.024351358
		 0.80367607 0.039993942 0.79691029 0.031703413 0.80223995 0.22535515 0.80225098 0.23452377
		 0.80881876 0.21771795 0.79945982 0.20966464 0.79617882 0.19936162 0.79278588 0.1875878
		 0.78994942 0.17130023 0.78664762;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.15382761 0.78363842 0.13850272 0.78197831
		 0.12401885 0.78188407 0.11094743 0.78206807 0.098452747 0.78182125 0.087665081 0.78300744
		 0.075307488 0.78472304 0.063418806 0.785074 0.049328566 0.79116225 0.037678659 0.83950204
		 0.036287665 0.85277283 0.21107733 0.83294261 0.21827686 0.84114647 0.041174829 0.83474338
		 0.04888308 0.8137781 0.044736505 0.82611549 0.20603496 0.82688308 0.19869 0.82005525
		 0.19009155 0.81323159 0.17836148 0.80735922 0.16451025 0.80185968 0.15038252 0.79773122
		 0.13708699 0.79569095 0.12353718 0.79514527 0.11047333 0.79470623 0.09893173 0.79447138
		 0.090216041 0.79566532 0.079760432 0.79869998 0.070514679 0.8031801 0.058493733 0.80881828
		 0.13844746 0.87232983 0.16693336 0.86368912 0.16687882 0.86986619 0.13720948 0.87919956
		 0.13804829 0.86377829 0.1626181 0.85431737 0.13717163 0.81429321 0.14294595 0.82366216
		 0.12667906 0.82922715 0.12411875 0.81768388 0.13047975 0.84136391 0.15047359 0.83425063
		 0.15735471 0.84494162 0.13479275 0.8534742 0.17478228 0.87814462 0.13979089 0.89007187
		 0.10225374 0.87734544 0.099860489 0.88659918 0.10522109 0.87076545 0.12325501 0.80657893
		 0.1088745 0.81817305 0.10970801 0.80635554 0.10715401 0.82973629 0.10655951 0.84261441
		 0.10699081 0.85412711 0.10853928 0.86482954 0.15558678 0.81472391 0.1450727 0.8086071
		 0.16588861 0.8226161 0.17549187 0.83110368 0.18267137 0.83961952 0.19621819 0.86132228
		 0.19099498 0.85462654 0.18870896 0.84792393 0.066602349 0.86791718 0.067365468 0.86385614
		 0.069989741 0.8584643 0.073413074 0.85155857 0.076247752 0.84283632 0.080377877 0.83233696
		 0.086433887 0.82119149 0.092766643 0.8125515 0.097554803 0.80356991 0.13217145 0.80539739
		 0.13486087 0.80333501 0.1053669 0.5068329 0.10663161 0.48386362 0.13693784 0.48950103
		 0.14593534 0.51324052 0.052772611 0.52102733 0.032873616 0.53089082 0.025971832 0.49387124
		 0.04275509 0.49715081 0.040734168 0.46467331 0.055985432 0.47696543 0.010050293 0.42964217
		 0.029856306 0.41043243 0.048484661 0.41756356 0.038059525 0.44007784 0.0018811863
		 0.4002797 0.02249885 0.38873264 0.040317122 0.35089946 0.065376751 0.37184396 0.083183087
		 0.39889687 0.11332744 0.32178912 0.14129275 0.363251 0.075529233 0.28892758 0.16922891
		 0.46091759 0.10262708 0.45832375 0.090877213 0.43039665 0.15717451 0.40998915 0.0084148757
		 0.34235471 0.028661648 0.27281883 0.1418284 0.61586279 0.077347599 0.57868612 0.094933376
		 0.55370456 0.16176285 0.57156664 0.14170824 0.54723346 0.16019481 0.51506245 0.17167409
		 0.51761669 0.14594638 0.47780216 0.15216552 0.51373136 0.14050919 0.48412728 0.13681526
		 0.5393365 0.10589997 0.47021738 0.066289254 0.48326007 0.10649251 0.47739071 0.073196404
		 0.48754731 0.054054286 0.49879512 0.063773617 0.51791173 0.062278945 0.49986142 0.070816405
		 0.51584548 0.10054472 0.54257691 0.10187494 0.53563607 0.13478367 0.53331423 0.075808302
		 0.49279302 0.06762737 0.50072455 0.07502088 0.5114463 0.10379442 0.52958488 0.79894751
		 0.23643813 0.7583791 0.24284573 0.76737648 0.21910624 0.79768282 0.21346876 0.85154182
		 0.25063255 0.86155927 0.22675604 0.87834257 0.22347648 0.87144083 0.26049608 0.84832901
		 0.2065706 0.86358017 0.19427855 0.89426416 0.15924741 0.86625481 0.16968298 0.85582972
		 0.14716877 0.87445807 0.14003767 0.90243322 0.12988491 0.88181555 0.11833786 0.8389377
		 0.10144921 0.8639974 0.080504686 0.82113135 0.12850203 0.76302171 0.092856154 0.7909869
		 0.051394299 0.82878512 0.0185328 0.73508561 0.19052282 0.74713993 0.13959438 0.81343722
		 0.1600018 0.80168724 0.1879289 0.87565279 0.0024240261 0.89589965 0.07195995 0.76248604
		 0.34546804 0.74255157 0.30117187 0.80938095 0.28330982 0.82696682 0.30829126 0.73264033
		 0.24722192 0.74411952 0.24466766 0.76260614 0.27683869 0.75836802 0.20740737 0.76380527
		 0.21373251 0.75214887 0.24333659 0.76749915 0.2689417 0.79841441 0.19982253 0.83802515
		 0.21286523 0.83111805 0.21715248 0.79782182 0.20699584 0.85026008 0.22840036 0.84054083
		 0.2475169 0.833498 0.24545068 0.84203547 0.22946659 0.80376977 0.27218205 0.80243951
		 0.2652413 0.76953077 0.26291946 0.82850611 0.22239825 0.83668703 0.23032968 0.82929349
		 0.24105151 0.80052 0.25919005 0.76908123 0.94269133 0.73113209 0.9118464 0.74228966
		 0.90441656 0.77373832 0.93011951 0.71863866 0.86449903 0.73202688 0.86504471 0.73652351
		 0.8187663 0.74699312 0.82707584 0.77880085 0.79214925 0.78154624 0.80500865 0.82368684
		 0.79448885 0.81990719 0.80710852 0.8629998 0.82538438 0.85189265 0.83282506 0.87607098
		 0.87273973 0.86268193 0.87220865 0.85877055 0.91851169 0.84824628 0.91021156 0.81787324
		 0.94523203 0.81424052 0.932329 0.75225526 0.68714064 0.78722364 0.66449296 0.80462611
		 0.72944587 0.73712164 0.72593838 0.74740314 0.76605582 0.85766661 0.77178741 0.87212855
		 0.73295319 0.86117518 0.69279939 0.82879043 0.66665238 0.77373832 0.93011951 0.74228966
		 0.90441656 0.7973507 0.8686465 0.73202688 0.86504471 0.74699312 0.82707584 0.78154624
		 0.80500865 0.81990719 0.80710852 0.85189265 0.83282506 0.86268193 0.87220865 0.84824628
		 0.91021156 0.81424052 0.932329 0.93185169 0.64168763 0.92817217 0.62879622 0.96149814
		 0.60560036 0.97205019 0.61386776 0.97477019 0.56714535 0.98816013 0.5676353 0.96278
		 0.52813232 0.97385919 0.52065623 0.93002641 0.50345886 0.93375176 0.49085018 0.8916136
		 0.50259662 0.88881046 0.48972562 0.85773665 0.5257839 0.84722942 0.517519 0.84395051
		 0.56422818 0.83056045 0.56374013 0.85542631 0.60322833 0.84430259 0.61070526 0.88763016
		 0.62788558 0.88302755 0.64047563 0.96830469 0.38819906 0.91282994 0.42634401 0.93518484
		 0.36292472 0.98040497 0.42804739 0.9670645 0.46725336 0.8566826 0.46447375 0.84525657
		 0.42464063;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.85927141 0.38544992 0.89357483 0.36187562
		 0.92817217 0.62879622 0.909361 0.56568408 0.96149814 0.60560036 0.97477019 0.56714535
		 0.96278 0.52813232 0.93002641 0.50345886 0.8916136 0.50259662 0.85773665 0.5257839
		 0.84395051 0.56422818 0.85542631 0.60322833 0.88763016 0.62788558 0.74228966 0.90441656
		 0.77373832 0.93011951 0.73202688 0.86504471 0.74699312 0.82707584 0.78154624 0.80500865
		 0.81990719 0.80710852 0.85189265 0.83282506 0.86268193 0.87220865 0.84824628 0.91021156
		 0.81424052 0.932329 0.92817217 0.62879622 0.96149814 0.60560036 0.97477019 0.56714535
		 0.96278 0.52813232 0.93002641 0.50345886 0.8916136 0.50259662 0.85773665 0.5257839
		 0.84395051 0.56422818 0.85542631 0.60322833 0.88763016 0.62788558 0.42522073 0.78565544
		 0.42442757 0.77114111 0.43939716 0.76819879 0.44859087 0.78045881 0.42373878 0.75853932
		 0.43617672 0.75548887 0.46650773 0.75113952 0.46646631 0.77097285 0.45240366 0.76383281
		 0.45115346 0.75222647 0.43409097 0.7418083 0.42305809 0.74608433 0.42219132 0.73022175
		 0.43248004 0.72717565 0.42106918 0.70968026 0.43184823 0.71151912 0.4202722 0.69508618
		 0.43494278 0.69643933 0.44164142 0.71298039 0.44709474 0.7036978 0.44484061 0.7235924
		 0.45623904 0.71625578 0.44863904 0.73778403 0.46277463 0.73257971 0.41899854 0.67178595
		 0.43944681 0.67547262 0.43494278 0.69643933 0.4202722 0.69508618 0.48558459 0.74598515
		 0.49020833 0.76684791 0.46646631 0.77097285 0.46650773 0.75113952 0.51126325 0.73615694
		 0.52563977 0.75800449 0.53902513 0.7197299 0.56924957 0.74112439 0.55840909 0.69770831
		 0.58735377 0.70962167 0.59964401 0.66003001 0.59628749 0.6849978 0.56802952 0.68030763
		 0.57544696 0.66259027 0.57564878 0.64226437 0.59689027 0.63504446 0.5681206 0.62243831
		 0.58655006 0.61159503 0.55628663 0.60505617 0.54530549 0.59431779 0.55011952 0.58084774
		 0.57021457 0.59126306 0.53334373 0.59492785 0.51911128 0.59597355 0.51094532 0.57472032
		 0.53063345 0.576572 0.50151551 0.5994966 0.48904979 0.57394838 0.47986931 0.60709071
		 0.45920467 0.62124157 0.41433993 0.58653063 0.45952886 0.57330751 0.44623643 0.64457512
		 0.41597748 0.61649299 0.44709474 0.7036978 0.45555222 0.68828571 0.46853924 0.70533007
		 0.45623904 0.71625578 0.47867665 0.72487682 0.46277463 0.73257971 0.49850512 0.71346927
		 0.48404431 0.69054055 0.46696484 0.66847456 0.48135096 0.64956379 0.5003233 0.6740886
		 0.51873589 0.69736737 0.53645766 0.67958963 0.51707113 0.65836716 0.49886021 0.63475287
		 0.54822302 0.66457736 0.55698597 0.65207303 0.53144807 0.64577568 0.54286069 0.63621759
		 0.53018653 0.61693215 0.51582277 0.62405348 0.54251891 0.61185551 0.55319536 0.62920046
		 0.5614109 0.64200068 0.44859087 0.78045881 0.45094538 0.80753714 0.42658627 0.81064361
		 0.42522073 0.78565544 0.45703667 0.85204083 0.42896181 0.85409677 0.46711534 0.90299344
		 0.4313646 0.89804745 0.47882053 0.96466732 0.43517011 0.96758342 0.48712993 0.80121279
		 0.49733046 0.84948862 0.50796402 0.89898682 0.5229311 0.95638132 0.4847593 0.55066663
		 0.50816524 0.55369973 0.40798515 0.47007895 0.44807887 0.46567735 0.44342953 0.48506802
		 0.40874994 0.48408923 0.43911025 0.52447349 0.41089275 0.52335531 0.40962148 0.50006151
		 0.44061705 0.50384992 0.43926084 0.54327649 0.41190702 0.54192609 0.43850768 0.558788
		 0.41290915 0.56027865 0.46176648 0.54852223 0.40660417 0.44477209 0.45501727 0.43950623
		 0.48325655 0.44252878 0.47559619 0.46777099 0.53074545 0.55722964 0.53148741 0.45329362
		 0.56665248 0.45975882 0.55048239 0.4878282 0.52434325 0.47823673 0.55480444 0.56158221
		 0.5876447 0.47531289 0.56969786 0.50300789 0.49924704 0.47250944 0.50350785 0.44643524
		 0.469464 0.48801935 0.46515143 0.5074544 0.46281177 0.52752101 0.48513871 0.53031564
		 0.48869011 0.51167977 0.49337965 0.49274915 0.51672912 0.49899554 0.51124513 0.51689816
		 0.50840509 0.53467357 0.53863871 0.50775737 0.53213185 0.52275652 0.53018636 0.53881192
		 0.61152476 0.50111091 0.588413 0.52002317 0.55613923 0.52086705 0.54860789 0.5277921
		 0.55026662 0.54151583 0.54551101 0.88567221 0.56425571 0.93825233 0.58157521 0.86526847
		 0.60940099 0.91918898 0.50048399 0.78432178 0.53239536 0.78156942 0.53168368 0.80762756
		 0.53656179 0.84350979 0.57160908 0.77383387 0.57030916 0.80276757 0.57154602 0.83187604
		 0.6207279 0.55349195 0.64974999 0.53796011 0.59771222 0.81869125 0.61500072 0.83715272
		 0.60576004 0.79780453 0.640872 0.80310404 0.61329275 0.76865089 0.65667892 0.76700979
		 0.61848509 0.73708022 0.66520083 0.7310282 0.62653881 0.70673805 0.66936576 0.69826972
		 0.63091105 0.67994225 0.66999876 0.67315853 0.66697764 0.64889657 0.6306715 0.65386951
		 0.62416208 0.62661588 0.65868318 0.61908436 0.61049676 0.59821308 0.6431644 0.58651584
		 0.58746022 0.56884241 0.57999098 0.54100001 0.68346786 0.57763726 0.70106673 0.6158601
		 0.71045876 0.65077829 0.71367258 0.66732168 0.71633822 0.68298352 0.71549511 0.72330797
		 0.70543045 0.76927572 0.68401456 0.81897926 0.65199047 0.87284732 0.40142369 0.78303629
		 0.40922686 0.76984727 0.41104269 0.75686252 0.38041806 0.75584424 0.39579934 0.75525177
		 0.39582181 0.76692468 0.38262022 0.7755549 0.4116247 0.74303615 0.41163224 0.72831452
		 0.41055471 0.71268296 0.40583473 0.69803053 0.40097886 0.71520293 0.39454609 0.70657033
		 0.39895415 0.72610021 0.38682514 0.72004926 0.38210672 0.73698866 0.39672458 0.74062097
		 0.40583473 0.69803053 0.39907354 0.6776793 0.36089271 0.75279927 0.38041806 0.75584424
		 0.38262022 0.7755549 0.35857043 0.77404183 0.32238623 0.76911139 0.33429655 0.74582732
		 0.2771965 0.7570821 0.30491006 0.73252261 0.25576776 0.72773808 0.28324264 0.71274185;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.23814887 0.67977881 0.26248062 0.67968786
		 0.27178341 0.69649249 0.24420497 0.70423317 0.23816404 0.65464079 0.26006538 0.65950346
		 0.24588853 0.63020372 0.26538914 0.63897502 0.27526021 0.62040675 0.25991273 0.60821283
		 0.27875406 0.59567016 0.28500676 0.60853589 0.2969636 0.60783994 0.29765868 0.58929771
		 0.31702825 0.58531183 0.31122625 0.6073283 0.338709 0.58215976 0.32909989 0.60891497
		 0.35144258 0.61410892 0.36798328 0.57830805 0.3735261 0.6259234 0.38895935 0.64770544
		 0.39454609 0.70657033 0.38446009 0.69217128 0.38682514 0.72004926 0.37340754 0.71052909
		 0.38210672 0.73698866 0.36545974 0.73106396 0.34450656 0.72188461 0.3563832 0.69751662
		 0.37095737 0.67372155 0.35459656 0.65649009 0.33840856 0.68293583 0.32264176 0.70808208
		 0.30308858 0.692339 0.32004845 0.6691314 0.33557814 0.64367473 0.27968591 0.66722131
		 0.28975821 0.67869771 0.29199958 0.64992094 0.30438489 0.65818036 0.30249786 0.62937033
		 0.31755155 0.63488531 0.28968629 0.62566638 0.28096169 0.6440717 0.27419001 0.65769124
		 0.40142369 0.78303629 0.40203357 0.81021047 0.40083015 0.85511374 0.39636761 0.90686119
		 0.39146096 0.96944487 0.36537546 0.80786806 0.3604984 0.85696805 0.35532531 0.90733182
		 0.34670836 0.96601701 0.31750292 0.56411326 0.34043881 0.55854905 0.37438267 0.48883849
		 0.36764985 0.47006986 0.38296509 0.52753931 0.37922251 0.50720263 0.38486207 0.54624701
		 0.38730049 0.56158328 0.36306077 0.55391324 0.35790598 0.44481003 0.34052467 0.47514737
		 0.33016345 0.45088908 0.29544097 0.57008147 0.28338993 0.46684125 0.29320598 0.49085873
		 0.26826608 0.50324011 0.24913728 0.47709775 0.27199852 0.57702863 0.25081691 0.52042305
		 0.22996265 0.49484557 0.31753001 0.48243195 0.3104572 0.45697662 0.3488242 0.49460757
		 0.35522574 0.51345712 0.35973549 0.53315037 0.33784604 0.53835964 0.33228695 0.52022088
		 0.32556522 0.50191361 0.30303437 0.51066571 0.31043452 0.52786523 0.31519255 0.54522586
		 0.28220874 0.52176178 0.29030934 0.53596359 0.29399133 0.55171221 0.23406571 0.53937578
		 0.20903271 0.52309245 0.26623884 0.53669989 0.27447927 0.54276353 0.27432495 0.55658734
		 0.31654996 0.89818823 0.3036513 0.95249975 0.25669485 0.93846977 0.27847621 0.88183475
		 0.35026097 0.79253185 0.31824014 0.79327285 0.32178724 0.81909871 0.32084906 0.85530031
		 0.27841675 0.7898553 0.28286266 0.81847638 0.28480557 0.84754741 0.20558721 0.57616687
		 0.17504567 0.56388807 0.24218497 0.85752767 0.25735801 0.83729124 0.21275723 0.82649988
		 0.24708188 0.81740534 0.19311047 0.79234105 0.23641717 0.78924477 0.22781461 0.75842619
		 0.18071896 0.75750089 0.17300886 0.72538906 0.21650314 0.72914022 0.16964358 0.70049495
		 0.20923707 0.70297945 0.17000294 0.67604649 0.17500001 0.6455071 0.21013653 0.64923298
		 0.20663464 0.67703438 0.22062671 0.6195097 0.18687922 0.61143982 0.2403281 0.58780301
		 0.24472123 0.55931139 0.14584821 0.60700482 0.13251665 0.6469208 0.12698522 0.68265665
		 0.1246514 0.71531248 0.12559381 0.69945252 0.12988243 0.75530624 0.14489654 0.7999056
		 0.17160183 0.84698206 0.20930707 0.89704251 0.55549282 0.71636993 0.55414557 0.72490686
		 0.53334177 0.72656322 0.53933179 0.71067297 0.55477637 0.7344321 0.53410524 0.74075407
		 0.55929559 0.74282002 0.54103231 0.75311011 0.5650062 0.74954528 0.55463123 0.76264542
		 0.53605038 0.81593221 0.53889883 0.80142301 0.56273073 0.80490983 0.56108296 0.81529135
		 0.54993117 0.78749096 0.56702954 0.79717201 0.54979569 0.84338748 0.53928155 0.83010596
		 0.56238133 0.82573789 0.56627268 0.83380711 0.58111387 0.82659304 0.58037162 0.83691162
		 0.58071613 0.81559622 0.60376447 0.81636465 0.6033113 0.82840139 0.60214609 0.83976018
		 0.58178627 0.80465156 0.58171582 0.79416299 0.60374206 0.79300612 0.60411817 0.8043555
		 0.63060433 0.80396748 0.63046592 0.81731105 0.63042456 0.79132199 0.66138005 0.79005247
		 0.66119874 0.80382162 0.66098309 0.81842166 0.62987167 0.83065403 0.6290164 0.84332067
		 0.66050071 0.83302671 0.65995741 0.84682173 0.64306402 0.68161571 0.64816076 0.69339281
		 0.61721438 0.70221812 0.61215717 0.69032145 0.65247071 0.70607591 0.62160605 0.71517193
		 0.59346777 0.72332573 0.58954501 0.71060157 0.58497065 0.69896734 0.65581864 0.71904439
		 0.62509406 0.72842598 0.65801924 0.7316767 0.62748259 0.74120671 0.59941638 0.74834245
		 0.59704417 0.73612493 0.57498378 0.74016023 0.57112014 0.72979081 0.57770759 0.75021815
		 0.56882697 0.71894282 0.56585288 0.70898902 0.57479024 0.77057749 0.59947002 0.77143872
		 0.62986785 0.76635987 0.66009444 0.75739789 0.66290992 0.76345152 0.57068354 0.77820855
		 0.63060427 0.65913767 0.60019016 0.66843528 0.57296342 0.67882472 0.55242342 0.69323295
		 0.5957526 0.8610602 0.56924164 0.85350329 0.65956181 0.87319195 0.6270957 0.86729705
		 0.28764206 0.80634272 0.29911 0.80634242 0.29911104 0.82285196 0.28764504 0.82285237
		 0.27617702 0.80634332 0.27618024 0.82285297 0.2647149 0.80634362 0.26471648 0.82285357
		 0.2532542 0.80634373 0.25325331 0.82285357 0.24179266 0.80634344 0.24178976 0.82285309
		 0.32204646 0.80634284 0.3335107 0.80634344 0.33350769 0.82285309 0.32204318 0.82285267
		 0.31057906 0.80634242 0.31057742 0.82285208 0.28765413 0.88889152 0.29911402 0.88889092
		 0.29911461 0.90540069 0.28765577 0.90540129 0.27618992 0.88889211 0.27619171 0.90540206
		 0.26472139 0.88889283 0.26472229 0.90540248 0.25325039 0.88889283 0.25324985 0.90540278
		 0.2417808 0.88889241 0.24177901 0.90540218 0.32203335 0.88889152 0.33349875 0.88889241
		 0.33349696 0.90540218 0.32203156 0.90540147 0.31057256 0.88889104 0.31057167 0.90540069
		 0.29911193 0.83936167 0.29911268 0.85587156 0.28764996 0.85587192 0.28764772 0.83936214;
	setAttr ".uvst[0].uvsp[2000:2086]" 0.27618551 0.85587251 0.27618307 0.83936274
		 0.26471916 0.85587311 0.26471788 0.83936334 0.25325167 0.85587329 0.25325242 0.83936334
		 0.24178469 0.85587281 0.24178723 0.83936286 0.33350277 0.85587281 0.32203782 0.85587209
		 0.3220402 0.83936226 0.333505 0.83936286 0.31057474 0.85587156 0.31057599 0.83936185
		 0.29911491 0.92191035 0.28765741 0.92191094 0.27619359 0.92191166 0.26472303 0.92191243
		 0.25324926 0.92191243 0.24177752 0.92191195 0.33349547 0.92191195 0.32202977 0.92191106
		 0.31057084 0.92191046 0.29911342 0.87238127 0.28765219 0.87238175 0.2761879 0.87238234
		 0.26472026 0.87238294 0.25325099 0.87238306 0.24178261 0.87238264 0.33350068 0.87238264
		 0.32203558 0.87238187 0.31057361 0.87238127 0.29911551 0.93842012 0.28765875 0.93842071
		 0.27619514 0.93842161 0.26472393 0.9384222 0.25324881 0.9384222 0.24177603 0.93842191
		 0.33349413 0.93842191 0.32202828 0.93842101 0.31057003 0.93842041 0.28764445 0.80161446
		 0.29911089 0.80161375 0.27617949 0.80161566 0.26471618 0.80161673 0.25325352 0.80161685
		 0.24179035 0.80161613 0.32204393 0.80161464 0.33350828 0.80161613 0.31057778 0.80161375
		 0.28764445 0.79076111 0.29911089 0.7907601 0.27617955 0.7907629 0.26471618 0.79076427
		 0.25325337 0.79076439 0.24179035 0.79076338 0.32204378 0.79076159 0.33350843 0.79076338
		 0.31057778 0.79076022 0.28764251 0.77495658 0.29911014 0.77495581 0.27617761 0.77495807
		 0.26471514 0.77495897 0.25325412 0.77495927 0.24179229 0.77495819 0.32204586 0.774957
		 0.33351025 0.77495819 0.31057876 0.77495599 0.2876361 0.75484228 0.29910806 0.7548418
		 0.27617031 0.75484288 0.26471162 0.75484347 0.25325629 0.75484359 0.24179885 0.75484329
		 0.32205305 0.75484258 0.33351681 0.75484329 0.31058225 0.7548418 0.28761119 0.73624659
		 0.29910001 0.73624659 0.2761434 0.73624688 0.26469842 0.73624718 0.2532644 0.73624718
		 0.24182354 0.73624718 0.32207987 0.73624688 0.33354154 0.73624718 0.31059569 0.73624659
		 0.28770947 0.73023355;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1868 ".vt";
	setAttr ".vt[0:165]"  -41.26099396 1.57131374 -11.13747311 -31.7182312 1.57154548 -16.9443512
		 -19.92274666 1.57154453 -16.94436073 -10.37997913 1.57131124 -11.13749504 -6.73495913 1.57093477 -1.74180579
		 -10.37996578 1.57055891 7.65389013 -19.92272568 1.57032716 13.46075535 -31.71822357 1.57032812 13.46076488
		 -41.2609787 1.57056141 7.65391541 -44.90599823 1.57093775 -1.74177396 -45.47503662 17.5557518 -11.14605618
		 -34.42258453 17.55587769 -19.75762177 -20.76106644 17.55656052 -19.75784874 -9.70858479 17.55578613 -11.14601326
		 -5.48694801 17.55561829 2.78780484 -9.70863152 17.55552292 16.72162056 -20.76109695 17.55550575 25.33316231
		 -34.42267227 17.5555191 25.33313942 -45.47509003 17.55555153 16.72156143 -49.69671631 17.5556221 2.78774714
		 -25.82048607 1.57093632 -1.74179041 -49.25830078 35.32185364 -13.95471191 -36.99436951 35.32187653 -25.8091526
		 -21.83535957 35.32190323 -25.8091011 -9.5714941 35.32190704 -13.95456409 -4.88715219 35.32191086 5.22641325
		 -9.57158756 35.32189178 24.40739059 -21.83551788 35.32188034 36.26183319 -36.99453354 35.32190323 36.26179123
		 -49.25840378 35.32195663 24.40725899 -53.94274139 35.3219223 5.22623539 -52.62970734 50.77521896 -17.52458
		 -39.26862717 47.63204956 -31.26705551 -22.75356102 43.74775314 -31.26714325 -9.39248848 40.60452652 -17.5243206
		 -4.28907204 39.40436554 4.71167755 -9.39261436 41.36870956 31.68058205 -22.75367737 43.74843979 40.69009018
		 -39.26882172 47.633255 38.76784134 -52.62982178 50.77596664 26.94732666 -57.73322296 51.97607803 4.71133852
		 -57.36239624 78.54621887 -19.39834976 -39.022930145 78.54660034 -35.03509903 -19.77192879 78.54660034 -38.38005829
		 -10.91614532 78.54711151 46.23277283 -22.7536602 78.54720306 44.34640884 -38.55589676 78.54721069 39.69007111
		 -52.41148758 78.54697418 25.20862007 -59.18970871 78.54660797 3.52396822 9.5424015e-029 47.60987091 -28.25734138
		 6.8559585e-029 42.45853424 -15.9206562 -6.4574328e-006 41.25808716 6.31549358 -5.5024873e-005 47.46863174 32.43406296
		 1.0804526e-028 78.54660034 -38.92850876 -1.1828083e-031 78.54660034 46.087516785
		 -7.1660259e-005 60.83036804 45.10565948 -11.20621967 59.92044449 44.96833801 -22.75366974 61.46347046 43.86751938
		 -39.43080139 63.37063599 39.15332031 -53.019683838 64.91339111 26.54327774 -59.59261703 65.50238037 4.28039694
		 -55.85235596 64.91262054 -19.7374897 -39.14359283 62.54026413 -35.33428955 -20.92265129 60.63306427 -37.037109375
		 1.4675797e-028 61.54309464 -37.58556747 -47.2191658 25.74616241 -12.44082642 -35.60820389 25.74621201 -22.5473938
		 -21.25629807 25.74622345 -22.54736328 -9.64538097 25.74617577 -12.44073677 -5.21043491 25.7461071 3.91207957
		 -9.64545155 25.7460537 20.26488876 -21.25641441 25.74602318 30.37144089 -35.60832977 25.74602509 30.37141037
		 -47.21923828 25.74606133 20.26479912 -51.65418625 25.74611282 3.9119761 -56.82392883 98.94573212 -18.77592468
		 -39.022930145 98.94573212 -33.74691772 -19.77192879 98.94573212 -36.96437454 -10.91606712 98.94573212 42.22816086
		 -22.75356865 98.94573212 40.41378403 -38.55580521 98.94573212 35.93502808 -51.46063232 98.94573212 22.0056304932
		 -57.97909164 98.94573212 1.61737394 -8.5406748e-030 98.94573212 -37.49192047 -6.2283239e-030 98.94573212 42.088199615
		 -51.71953201 120.6907959 -16.70767975 -36.19310379 120.6907959 -29.46320152 -19.40195084 120.6907959 -32.20452881
		 -11.67767143 120.6907959 35.26877594 -22.0026016235 120.6907959 33.72290039 -35.7856636 120.6907959 29.90693092
		 -47.041542053 120.6907959 18.038856506 -52.72708511 120.6907959 0.66773778 3.654261e-030 120.6907959 -32.65400696
		 1.7612606e-015 120.6907959 35.1495285 -46.23546219 143.50390625 -8.61609173 -32.56745529 142.60183716 -17.33224487
		 -17.89790344 143.20608521 -19.20219803 -11.84490871 134.88626099 26.90068245 -20.83255768 136.22947693 25.84434509
		 -32.81272507 138.15246582 23.23679733 -42.50775909 140.37164307 15.12705708 -47.28980637 142.33584595 3.25695133
		 1.7909591e-029 143.64085388 -20.5432663 2.3665827e-029 133.71031189 26.81919479 41.26102066 1.57195163 -11.13745499
		 31.71826363 1.57241952 -16.94434357 19.92277908 1.57241762 -16.94436264 10.38000393 1.57194698 -11.13750553
		 6.73497581 1.57118714 -1.74181974 10.37997341 1.57042837 7.65387964 19.92272758 1.56996059 13.46075344
		 31.71822548 1.56996238 13.46077442 41.26098633 1.57043302 7.65393305 44.9060173 1.57119298 -1.74175262
		 45.47502136 17.55591583 -11.14517212 34.42256165 17.55617142 -19.75673294 20.76109886 17.55754852 -19.75719833
		 9.70857334 17.5559864 -11.14509392 5.48695707 17.5556488 2.78875351 9.7086668 17.55545616 16.7225914
		 20.76115036 17.55541992 25.33412743 34.42272568 17.55544853 25.33407974 45.47512436 17.55551338 16.72247505
		 49.69672394 17.55565453 2.78864121 25.82050133 1.57119 -1.74178672 49.25825882 35.32181168 -13.95381546
		 36.99430084 35.32185745 -25.80819893 21.83529472 35.32191467 -25.80809784 9.57145786 35.3219223 -13.95353031
		 4.88716316 35.32192993 5.22746038 9.57164478 35.3218956 24.40843201 21.83560181 35.32186508 36.2628479
		 36.99462128 35.32191849 36.26276016 49.25846481 35.32201767 24.40817451 53.94275284 35.32195663 5.22710514
		 52.62965012 50.7748642 -17.52457809 39.26853561 47.63145065 -31.26696396 22.75356102 43.74775314 -31.26714325
		 9.39244175 40.60421753 -17.52407074 4.28907681 39.40438843 4.71198702 9.39269543 41.36922073 31.68087387
		 22.75378609 43.74913788 40.69031143 39.2689209 47.63388443 38.76793289 52.62988663 50.77637482 26.94732857
		 57.73322678 51.97610474 4.71130562 57.36233139 78.5458374 -19.39883614 39.022930145 78.54660034 -35.03509903
		 19.77192879 78.54660034 -38.38005829 10.91622353 78.54763031 46.23251343 22.75375366 78.54781342 44.34606171
		 38.55599213 78.54782867 39.68963623 52.4115448 78.54734802 25.20814705 59.18970871 78.5466156 3.52347708
		 11.20631027 59.92103195 44.96830368 22.75377083 61.4641304 43.8674202 39.43089676 63.37125015 39.15314102
		 53.019744873 64.91379547 26.54303741 59.59262085 65.50239563 4.280128 55.85229492 64.91222382 -19.73773766
		 39.14359283 62.54026413 -35.33428955 20.92265129 60.63306427 -37.037109375 47.2191391 25.74623871 -12.43987846
		 35.6081543 25.74633789 -22.54641914 21.25625229 25.74636269 -22.54635811 9.64535618 25.74626541 -12.43970776;
	setAttr ".vt[166:331]" 5.21044445 25.74612427 3.91311932 9.64549637 25.74601936 20.26591873
		 21.25648308 25.74595642 30.37244606 35.60839462 25.74596214 30.37238312 47.21928406 25.74603462 20.26574707
		 51.65419769 25.74613953 3.9129138 56.82392883 98.94573212 -18.77592468 39.022930145 98.94573212 -33.74691772
		 19.77192879 98.94573212 -36.96437454 10.91606712 98.94573212 42.22816086 22.75356865 98.94573212 40.41378403
		 38.55580521 98.94573212 35.93502808 51.46063232 98.94573212 22.0056304932 57.97909164 98.94573212 1.61737394
		 51.71953201 120.6907959 -16.70767975 36.19310379 120.6907959 -29.46320152 19.40195084 120.6907959 -32.20452881
		 11.67767143 120.6907959 35.26877594 22.0026016235 120.6907959 33.72290039 35.7856636 120.6907959 29.90693092
		 47.041542053 120.6907959 18.038856506 52.72708511 120.6907959 0.66773778 46.23546219 143.50390625 -8.61609173
		 32.56745529 142.60183716 -17.33224487 17.89790344 143.20608521 -19.20219803 11.84490871 134.88626099 26.90068245
		 20.83255768 136.22947693 25.84434509 32.81272507 138.15246582 23.23679733 42.50775909 140.37164307 15.12705708
		 47.28980637 142.33584595 3.25695133 38.97619247 146.17985535 -6.56254864 27.44370651 147.098312378 -10.43191338
		 15.3163805 147.73854065 -12.26228142 2.2186454e-029 147.76815796 -12.73151112 -15.3163805 147.73854065 -12.26228142
		 -27.44370651 147.098312378 -10.43191338 -38.97619247 146.17985535 -6.56254482 -36.55849457 144.2772522 13.4166832
		 -24.39028931 144.19093323 15.85498905 -13.88276291 144.92405701 16.85565186 -1.4210855e-014 144.75941467 17.5109787
		 13.88276291 144.92405701 16.85565186 24.39028931 144.19093323 15.85498905 36.55849457 144.2772522 13.4166832
		 61.47838593 118.55475616 -9.87057877 61.47838593 125.54974365 -15.97093105 61.47838593 134.19604492 -15.9709301
		 61.47838593 141.19104004 -9.87057686 61.47838593 143.86289978 1.0728836e-006 61.47838593 141.19104004 9.87057781
		 61.47838593 134.19604492 15.9709301 61.47838593 125.54974365 15.97092819 61.47838593 118.55475616 9.87057686
		 61.47838593 115.88289642 -3.5762787e-007 114.42337799 121.86528015 -6.70136642 117.63200378 127.38989258 -11.98327351
		 124.20110321 134.36776733 -12.37407684 123.76100922 141.34838867 -7.19137573 123.74884796 143.83520508 1.51439226
		 123.76100922 141.34837341 10.22016144 124.24156189 134.41294861 15.40286064 119.62088776 127.57559204 15.40285873
		 117.095405579 121.70623779 9.75053883 112.36116791 119.60079193 1.51439202 133.20056152 141.38876343 10.20401478
		 133.61268616 136.1502533 14.79747581 133.61268616 136.1502533 -11.76869011 133.20054626 141.38876343 -7.17523193
		 133.11299133 143.69555664 1.51439214 140.87487793 140.68632507 9.66470909 139.52639771 136.73085022 13.5648613
		 139.52639771 136.73085022 -10.53607941 140.87487793 140.68632507 -6.63592529 140.26911926 142.59524536 1.51439214
		 142.80328369 136.16600037 10.059054375 134.17359924 135.32659912 10.20401573 126.7190094 133.93478394 10.3153944
		 144.56477356 140.21746826 1.51439178 145.17601013 136.1353302 1.51438856 134.50639343 135.32659912 1.51439214
		 126.047515869 133.51126099 2.064457893 142.80329895 136.16600037 -7.030273438 134.17359924 135.32659912 -7.17523193
		 126.25380707 133.41506958 -7.19137144 96.11633301 120.36378479 -8.24088955 95.64378357 126.60688019 -14.28915596
		 95.11598206 134.60409546 -14.72006416 94.45096588 141.2658844 -9.31257725 94.18156433 143.85232544 0.21740946
		 94.24555206 141.22694397 9.92613888 94.6319046 134.4839325 15.87771225 95.24720001 126.44273376 15.82298374
		 95.96826935 120.27925873 10.070785522 96.16300201 117.94149017 0.93814194 116.14682007 121.67383575 1.42154539
		 120.10077667 127.23860931 0.95729178 120.075462341 127.33908081 -7.13251591 121.26043701 126.99989319 5.61413622
		 124.12482452 131.29077148 10.022278786 129.17376709 122.7724762 10.61689758 129.42922974 126.89276123 6.3271184
		 129.7837677 130.044830322 10.6169014 129.42922974 126.89276123 14.76487827 136.49842834 123.7774353 10.59080791
		 136.4984436 126.81689453 7.46016121 136.49845886 129.30006409 10.59081078 136.49842834 126.81687927 13.61949348
		 139.20640564 126.6275177 10.54850388 143.21585083 138.020874023 -6.53631163 139.66177368 138.17350769 -9.75234509
		 140.58189392 136.21691895 -9.75234795 140.0034179688 142.22476196 -2.50820827 143.63850403 140.18035889 -2.50820899
		 142.55079651 141.63415527 1.51439214 123.79750061 138.21859741 13.48178291 129.59477234 141.39179993 10.22016048
		 129.88668823 135.70214844 14.89434242 133.37199402 138.62120056 13.41720486 129.93534851 134.80545044 -7.19137335
		 133.89492798 135.32658386 -10.38842106 126.2538147 133.41505432 -10.45299625 129.88670349 135.7021637 -11.86555767
		 123.79750061 138.21859741 -10.45299911 129.5947876 141.39179993 -7.19137669 133.37200928 138.62120056 -10.3884201
		 123.74885559 143.21653748 -3.056744337 129.54611206 143.83520508 1.51439214 133.1260376 143.10229492 -3.056744337
		 123.74885559 143.21653748 6.085528851 133.1260376 143.10229492 6.085528851 136.95640564 141.20593262 10.15558147
		 137.14529419 136.2784729 14.50686932 139.66175842 138.17350769 12.78112888 139.14562988 135.50030518 -7.12680149
		 137.14529419 136.2784729 -11.47808743 136.95640564 141.20593262 -7.12679768 136.84947205 143.27651978 1.51439214
		 140.00340271 142.22476196 5.53699255 143.21585083 138.020874023 9.56509304 140.58189392 136.21691895 12.78112888
		 133.89492798 135.32658386 13.41720486 139.14562988 135.50030518 10.15558147 126.50667572 133.69755554 13.48178387
		 129.93534851 134.80543518 10.22016239 143.63850403 140.18035889 5.53699207 144.40342712 136.17247009 6.085526943
		 145.93345642 138.040359497 1.51438999 134.40356445 135.32658386 6.085529327 140.47680664 135.50030518 1.51438975
		 127.1962738 134.068664551 6.63406849 129.93534851 134.80543518 1.51439512 144.40342712 136.17247009 -3.05674839
		 134.40357971 135.32658386 -3.056744337 126.2538147 133.41503906 -3.056738853 94.36394501 120.17424774 -8.40245438
		 96.26493835 118.65981293 -3.81366825 94.40548706 117.73095703 0.84429687 97.83695984 120.54415894 -8.08533287
		 97.89442444 118.14450836 1.030988932 95.78152466 123.02570343 -11.92400551 97.40303802 126.75122833 -14.077148438
		 93.86004639 126.46037292 -14.50181866 95.42059326 130.58654785 -15.23045921 96.8578186 134.67382813 -14.54349995
		 93.35549164 134.53457642 -14.89582825 94.78153992 138.27885437 -12.672328;
	setAttr ".vt[332:497]" 96.16347504 141.28761292 -9.21358013 92.7280426 141.245224 -9.40937519
		 94.18156433 143.18635559 -4.87752962 95.95009613 143.85853577 0.29004639 92.42053223 143.84846497 0.15370589
		 94.18156433 143.16372681 5.31234884 95.99378967 141.24714661 9.94137573 92.49774933 141.21943665 9.91226006
		 94.46536255 138.21812439 13.55021477 96.40222168 134.54920959 15.85787487 92.86850739 134.43687439 15.89523315
		 94.8879776 130.41400146 16.62611198 96.96549225 126.5552597 15.80538559 93.50682831 126.32704926 15.84092808
		 95.64378357 122.98061371 13.52564335 97.70140076 120.46277618 10.091590881 94.20542908 120.088157654 10.049407005
		 96.11126709 118.54303741 5.73078537 114.67186737 124.5361557 -10.11398697 120.15524292 130.7414093 -12.57183838
		 120.40810394 131.023910522 15.60061932 117.74565887 124.17144775 13.48178101 112.63462067 120.1121521 5.53699255
		 111.79486847 120.1121521 -2.50820851 61.47838211 121.66012573 -13.56859779 61.47838211 129.87289429 -16.77170944
		 61.47838211 138.085662842 -13.56859589 61.47838211 143.16143799 -5.18274164 61.47838211 143.16143799 5.18274355
		 61.47838211 138.085662842 13.56859684 61.47838211 129.87289429 16.77170563 61.47838211 121.66012573 13.56859493
		 61.47838211 116.58435822 5.18274212 61.47838211 116.58435822 -5.18274355 138.30644226 126.66627502 12.074082375
		 136.15689087 128.51922607 12.63687801 138.30647278 128.027816772 10.55751991 116.777771 121.96723938 5.0021729469
		 114.98360443 120.37714386 1.51439357 115.93802643 121.96723938 -2.50820518 117.90775299 124.1598587 1.14299345
		 120.068336487 127.27664185 -3.056738138 117.7849884 124.51946259 -6.66029739 122.81575012 130.48144531 1.14299393
		 122.9519043 130.63357544 -7.19137096 120.37698364 127.68908691 -10.11398315 119.90755463 124.1598587 6.91405106
		 120.082145691 127.12452698 3.85710621 124.74136353 132.63285828 10.57663822 124.18118286 132.0069885254 6.099247456
		 123.37119293 129.96115112 13.48178387 123.86192322 122.66149139 10.62013435 124.88371277 126.93019104 6.19981289
		 129.25067139 124.22660065 7.76886177 122.98218536 129.52651978 6.91405296 126.30180359 130.29335022 10.62013817
		 129.65733337 129.074813843 7.76886368 124.88370514 126.93019104 14.89434052 129.65733337 129.074813843 13.39403629
		 129.25067139 124.22660065 13.39403439 133.3742218 123.10547638 10.60718918 133.37425232 126.8649292 6.70903397
		 136.15687561 124.82342529 8.49468708 133.3742981 129.80584717 10.60719204 136.15690613 128.51922607 8.49468899
		 133.37423706 126.8649292 14.37648964 136.15687561 124.82342529 12.63687611 138.30644226 125.27098083 10.55751801
		 138.30644226 126.6662674 9.03426075 141.83131409 137.4908905 -9.16687489 142.50515747 141.62945557 -1.53303242
		 129.74072266 138.39231873 13.48178291 129.93534851 134.80545044 -10.45299721 129.74073792 138.39231873 -10.45299911
		 129.54611206 143.21653748 -3.056744337 129.54611206 143.21653748 6.085528851 136.91236877 138.61296082 13.22346783
		 138.030960083 135.50030518 -10.19468594 136.91236877 138.61296082 -10.19468498 136.90158081 142.759552 -3.056744337
		 136.90158081 142.759552 6.085528851 141.83129883 137.4908905 12.19565773 138.030960083 135.50030518 13.22346783
		 129.93534851 134.80543518 13.48178387 142.50514221 141.62945557 4.56181669 144.89942932 138.18896484 6.08552742
		 140.065536499 135.50030518 6.08552742 129.93534851 134.80543518 6.085531235 144.89942932 138.18896484 -3.05674696
		 140.065551758 135.50030518 -3.05674696 129.93534851 134.80543518 -3.056741476 94.50930786 118.45063782 -3.94675803
		 97.98735046 118.85825348 -3.68566012 97.49930573 123.18503571 -11.75729275 94.037086487 122.87077332 -12.095298767
		 97.17293549 130.69268799 -15.02756691 93.6461792 130.47964478 -15.43340683 96.50999451 138.31970215 -12.53291321
		 93.038406372 138.23884583 -12.81011963 95.95009613 143.17294312 -4.77555752 92.45753479 143.18273926 -4.94888878
		 95.95009613 143.17396545 5.35565042 92.42053223 143.15625 5.27437258 96.23461151 138.26132202 13.54575348
		 92.69361115 138.18388367 13.55433846 96.65826416 130.49534607 16.59985352 93.13948822 130.33360291 16.64775658
		 97.37359619 123.13146973 13.52087116 93.89292145 122.82585144 13.5304184 97.84679413 118.74725342 5.78653383
		 94.34459686 118.3302536 5.67342997 138.26898193 127.99737549 12.031793594 115.4183197 120.40003204 4.56181812
		 114.61856079 120.40003204 -1.53303099 117.64183807 124.1598587 -3.056739569 122.9519043 130.63356018 -3.056738138
		 118.21987915 125.1587677 -9.51129341 122.9519043 130.63357544 -10.4529953 118.24165344 124.1598587 4.59991455
		 125.33785248 133.29927063 7.6092453 123.96333313 131.76359558 13.48178387 124.16950226 124.1598587 7.68542957
		 125.79608154 129.24775696 7.68543148 125.79608154 129.24775696 13.48178387 124.16949463 124.1598587 13.48178101
		 133.37423706 124.42683411 8.019156456 133.37426758 128.89375305 8.019158363 133.37426758 128.89375305 13.13079643
		 133.37423706 124.42683411 13.13079357 138.26895142 125.3208313 9.080509186 138.26898193 127.99737549 9.080510139
		 138.26895142 125.3208313 12.031791687 122.40729523 130.025100708 4.5999155 107.51751709 127.070556641 -13.030210495
		 108.66409302 130.71704102 -13.79970264 110.52946472 134.52079773 -13.45878792 110.15374756 138.26914978 -11.49295616
		 109.96224213 141.31799316 -8.20247841 109.84947205 143.19473267 -3.91615105 109.84947205 143.84686279 0.9022193
		 109.84947205 143.19525146 5.72058964 109.87739563 141.29776001 10.080768585 110.016052246 138.23995972 13.5137682
		 110.32189178 134.4810791 15.63036728 108.53318787 130.7596283 16.10023689 108.29319 127.065429688 15.60412216
		 107.55963135 123.65145874 13.50132561 107.39840698 121.084503174 9.92106438 105.2407074 119.42970276 5.66176319
		 105.12779236 118.87265015 1.27269053 104.89111328 119.48519897 -3.096934319 106.13017273 121.20471954 -7.39334965
		 106.085586548 123.8605957 -10.93564034 110.27677917 121.53500366 -7.047358036 108.34298706 119.79867554 -2.8025713
		 108.74447632 119.23672485 1.39354134 108.93766785 119.77092743 5.59937763 112.24690247 121.39537048 9.83580208
		 112.65264893 123.91145325 13.49155331 113.95703888 127.32051086 15.50349045 114.47064209 130.89176941 15.85042763
		 117.28172302 134.44702148 15.51661396 116.90677643 138.22927856 13.49777603 116.81919861 141.32305908 10.15046501
		 116.79916382 143.2059021 5.90305901 116.79916382 143.84103394 1.20830584;
	setAttr ".vt[498:663]" 116.79916382 143.20562744 -3.48644781 116.86162567 141.33319092 -7.69692707
		 116.97562408 138.24386597 -10.97297764 117.36528015 134.4442749 -12.91643238 114.40966797 130.72921753 -13.18577003
		 112.57476044 127.23022461 -12.50674248 110.37872314 124.19837952 -10.52481365 51.45673752 117.15072632 16.21060944
		 42.44633484 142.94265747 16.21060944 73.053581238 153.63528442 16.21060944 42.44633484 142.94265747 -16.21060944
		 73.053581238 153.63528442 -16.21060944 51.45673752 117.15072632 -16.21060944 82.32315826 151.67762756 10.38952732
		 65.30558014 158.16345215 10.38952732 45.68912888 151.31045532 10.38952732 65.30558014 158.16345215 -10.38952732
		 45.68912888 151.31045532 -10.38952732 36.41230392 135.63867188 -10.38952732 82.32315826 151.67762756 -10.38952732
		 69.17595673 147.084655762 -24.31591415 49.55950546 140.23164368 -24.31591415 55.3343544 123.70137024 -24.31591415
		 62.25515747 135.39300537 27.96330452 54.48368454 157.6385498 -1.1858248e-007 62.25515747 135.39300537 -27.96330452
		 70.026634216 113.14746857 1.1858248e-007 88.65390778 144.61540222 -1.1858248e-007
		 35.85641098 126.17061615 1.1858248e-007 65.35760498 126.51238251 26.084342957 51.71652985 131.71134949 26.084342957
		 72.7937851 139.074676514 26.084342957 59.15271378 144.27365112 26.084342957 77.58189392 149.33065796 19.065885544
		 66.034255981 153.73176575 19.065885544 41.58361053 136.75466919 19.065885544 47.87859726 147.38908386 19.065885544
		 38.95728302 144.27243042 9.61583996 55.0058784485 156.14379883 11.16321468 44.46725082 152.46212769 3.1554436e-030
		 74.95556641 156.84841919 9.61583996 65.54450989 159.82545471 3.1554436e-030 55.0058784485 156.14379883 -11.16321468
		 74.95556641 156.84841919 -9.61583996 66.034255981 153.73176575 -19.065885544 38.95728302 144.27243042 -9.61583996
		 47.87859726 147.38908386 -19.065885544 41.58361053 136.75466919 -19.065885544 59.15271378 144.27365112 -26.084342957
		 51.71652985 131.71134949 -26.084342957 77.58189392 149.33065796 -19.065885544 72.7937851 139.074676514 -26.084342957
		 65.35760498 126.51238251 -26.084342957 46.92841721 121.45536804 -19.065885544 58.47605896 117.054267883 -19.065885544
		 49.55474472 113.93760681 -9.61583996 69.50444031 114.6422348 -11.16321468 58.96580887 110.96056366 3.1554436e-030
		 69.50444031 114.6422348 11.16321468 49.55474472 113.93760681 9.61583996 86.88007355 143.99571228 11.16321468
		 86.88007355 143.99571228 -11.16321468 83.77762604 152.87635803 3.1554436e-030 40.7326889 117.9096756 3.1554436e-030
		 37.63024521 126.79029846 -11.16321468 37.63024521 126.79029846 11.16321468 34.5277977 135.67092896 3.1554436e-030
		 55.3343544 123.70137024 24.31591415 67.94553375 119.10452271 20.4751091 42.18715286 119.10839844 10.38952732
		 42.92564392 128.64024353 20.4751091 59.2047348 112.62256622 10.38952732 81.58467865 142.14576721 20.4751091
		 56.56478119 151.68148804 20.4751091 69.17595673 147.084655762 24.31591415 37.23526764 144.9287262 3.1554436e-030
		 75.89430237 158.43424988 3.1554436e-030 49.55950546 140.23164368 24.31591415 56.56478119 151.68148804 -20.4751091
		 36.41230392 135.63867188 10.38952732 42.18715286 119.10839844 -10.38952732 42.92564392 128.64024353 -20.4751091
		 81.58467865 142.14576721 -20.4751091 67.94553375 119.10452271 -20.4751091 59.2047348 112.62256622 -10.38952732
		 48.6160202 112.35176086 3.1554436e-030 58.47605896 117.054267883 19.065885544 46.92841721 121.45536804 19.065885544
		 -51.45674515 117.15072632 16.21060944 -42.44633484 142.94265747 16.21060944 -73.053581238 153.63528442 16.21060944
		 -42.44633484 142.94265747 -16.21060944 -73.053581238 153.63528442 -16.21060944 -51.45674515 117.15072632 -16.21060944
		 -82.32315826 151.67762756 10.38952732 -65.30558014 158.16345215 10.38952732 -45.68912888 151.31045532 10.38952732
		 -65.30558014 158.16345215 -10.38952732 -45.68912888 151.31045532 -10.38952732 -36.41230392 135.63867188 -10.38952732
		 -82.32315826 151.67762756 -10.38952732 -69.17595673 147.084655762 -24.31591415 -49.55950546 140.23164368 -24.31591415
		 -55.3343544 123.70137024 -24.31591415 -62.25514984 135.39300537 27.96330452 -54.48368454 157.6385498 -1.1858248e-007
		 -62.25514984 135.39300537 -27.96330452 -70.026634216 113.14746857 1.1858247e-007
		 -88.65390778 144.61540222 -1.1858248e-007 -35.85641098 126.17061615 1.1858247e-007
		 -65.35760498 126.51238251 26.084342957 -51.71652985 131.71134949 26.084342957 -72.7937851 139.074676514 26.084342957
		 -59.15271378 144.27365112 26.084342957 -77.58189392 149.33065796 19.065885544 -66.034255981 153.73176575 19.065885544
		 -41.58361053 136.75466919 19.065885544 -47.87859726 147.38908386 19.065885544 -38.95728302 144.27243042 9.61583996
		 -55.0058784485 156.14379883 11.16321468 -44.46725082 152.46212769 -5.7237557e-015
		 -74.95556641 156.84841919 9.61583996 -65.54450989 159.82545471 -5.7237557e-015 -55.0058784485 156.14379883 -11.16321468
		 -74.95556641 156.84841919 -9.61583996 -66.034255981 153.73176575 -19.065885544 -38.95728302 144.27243042 -9.61583996
		 -47.87859726 147.38908386 -19.065885544 -41.58361053 136.75466919 -19.065885544 -59.15271378 144.27365112 -26.084342957
		 -51.71652985 131.71134949 -26.084342957 -77.58189392 149.33065796 -19.065885544 -72.7937851 139.074676514 -26.084342957
		 -65.35760498 126.51238251 -26.084342957 -46.92841721 121.45536804 -19.065885544 -58.47605896 117.054267883 -19.065885544
		 -49.55474472 113.93760681 -9.61583996 -69.50444031 114.6422348 -11.16321468 -58.96580887 110.96056366 -5.7237557e-015
		 -69.50444031 114.6422348 11.16321468 -49.55474472 113.93760681 9.61583996 -86.88007355 143.99571228 11.16321468
		 -86.88007355 143.99571228 -11.16321468 -83.77762604 152.87635803 -5.7237557e-015
		 -40.7326889 117.9096756 -5.7237557e-015 -37.63024521 126.79029846 -11.16321468 -37.63024521 126.79029846 11.16321468
		 -34.5277977 135.67092896 -5.7237557e-015 -55.3343544 123.70137024 24.31591415 -67.94553375 119.10452271 20.4751091
		 -42.18715286 119.10839844 10.38952732 -42.92564392 128.64024353 20.4751091 -59.2047348 112.62256622 10.38952732
		 -81.58467865 142.14576721 20.4751091 -56.56478119 151.68148804 20.4751091 -69.17595673 147.084655762 24.31591415
		 -37.23526764 144.9287262 -5.7237557e-015 -75.89430237 158.43424988 -5.7237557e-015
		 -49.55950546 140.23164368 24.31591415 -56.56478119 151.68148804 -20.4751091 -36.41230392 135.63867188 10.38952732
		 -42.18715286 119.10839844 -10.38952732 -42.92564392 128.64024353 -20.4751091 -81.58467865 142.14576721 -20.4751091
		 -67.94553375 119.10452271 -20.4751091 -59.2047348 112.62256622 -10.38952732;
	setAttr ".vt[664:829]" -48.6160202 112.35176086 -5.7237557e-015 -58.47605896 117.054267883 19.065885544
		 -46.92841721 121.45536804 19.065885544 -61.47838593 118.55475616 -9.87057877 -61.47838593 125.54974365 -15.97093105
		 -61.47838593 134.19604492 -15.9709301 -61.47838593 141.19104004 -9.87057686 -61.47838593 143.86289978 1.0728836e-006
		 -61.47838593 141.19104004 9.87057781 -61.47838593 134.19604492 15.9709301 -61.47838593 125.54974365 15.97092819
		 -61.47838593 118.55475616 9.87057686 -61.47838593 115.88289642 -3.5762787e-007 -114.42337799 121.86528015 -6.70136642
		 -117.63200378 127.38989258 -11.98327351 -124.20110321 134.36776733 -12.37407684 -123.76100922 141.34838867 -7.19137573
		 -123.74884796 143.83520508 1.51439226 -123.76100922 141.34837341 10.22016144 -124.24156189 134.41294861 15.40286064
		 -119.62088776 127.57559204 15.40285873 -117.095405579 121.70623779 9.75053883 -112.36116791 119.60079193 1.51439202
		 -133.20056152 141.38876343 10.20401478 -133.61268616 136.1502533 14.79747581 -133.61268616 136.1502533 -11.76869011
		 -133.20054626 141.38876343 -7.17523193 -133.11299133 143.69555664 1.51439214 -140.87487793 140.68632507 9.66470909
		 -139.52639771 136.73085022 13.5648613 -139.52639771 136.73085022 -10.53607941 -140.87487793 140.68632507 -6.63592529
		 -140.26911926 142.59524536 1.51439214 -142.80328369 136.16600037 10.059054375 -134.17359924 135.32659912 10.20401573
		 -126.7190094 133.93478394 10.3153944 -144.56477356 140.21746826 1.51439178 -145.17601013 136.1353302 1.51438856
		 -134.50639343 135.32659912 1.51439214 -126.047515869 133.51126099 2.064457893 -142.80329895 136.16600037 -7.030273438
		 -134.17359924 135.32659912 -7.17523193 -126.25380707 133.41506958 -7.19137144 -96.11633301 120.36378479 -8.24088955
		 -95.64378357 126.60688019 -14.28915596 -95.11598206 134.60409546 -14.72006416 -94.45096588 141.2658844 -9.31257725
		 -94.18156433 143.85232544 0.21740946 -94.24555206 141.22694397 9.92613888 -94.6319046 134.4839325 15.87771225
		 -95.24720001 126.44273376 15.82298374 -95.96826935 120.27925873 10.070785522 -96.16300201 117.94149017 0.93814194
		 -116.14682007 121.67383575 1.42154539 -120.10077667 127.23860931 0.95729178 -120.075462341 127.33908081 -7.13251591
		 -121.26043701 126.99989319 5.61413622 -124.12482452 131.29077148 10.022278786 -129.17376709 122.7724762 10.61689758
		 -129.42922974 126.89276123 6.3271184 -129.7837677 130.044830322 10.6169014 -129.42922974 126.89276123 14.76487827
		 -136.49842834 123.7774353 10.59080791 -136.4984436 126.81689453 7.46016121 -136.49845886 129.30006409 10.59081078
		 -136.49842834 126.81687927 13.61949348 -139.20640564 126.6275177 10.54850388 -143.21585083 138.020874023 -6.53631163
		 -139.66177368 138.17350769 -9.75234509 -140.58189392 136.21691895 -9.75234795 -140.0034179688 142.22476196 -2.50820827
		 -143.63850403 140.18035889 -2.50820899 -142.55079651 141.63415527 1.51439214 -123.79750061 138.21859741 13.48178291
		 -129.59477234 141.39179993 10.22016048 -129.88668823 135.70214844 14.89434242 -133.37199402 138.62120056 13.41720486
		 -129.93534851 134.80545044 -7.19137335 -133.89492798 135.32658386 -10.38842106 -126.2538147 133.41505432 -10.45299625
		 -129.88670349 135.7021637 -11.86555767 -123.79750061 138.21859741 -10.45299911 -129.5947876 141.39179993 -7.19137669
		 -133.37200928 138.62120056 -10.3884201 -123.74885559 143.21653748 -3.056744337 -129.54611206 143.83520508 1.51439214
		 -133.1260376 143.10229492 -3.056744337 -123.74885559 143.21653748 6.085528851 -133.1260376 143.10229492 6.085528851
		 -136.95640564 141.20593262 10.15558147 -137.14529419 136.2784729 14.50686932 -139.66175842 138.17350769 12.78112888
		 -139.14562988 135.50030518 -7.12680149 -137.14529419 136.2784729 -11.47808743 -136.95640564 141.20593262 -7.12679768
		 -136.84947205 143.27651978 1.51439214 -140.00340271 142.22476196 5.53699255 -143.21585083 138.020874023 9.56509304
		 -140.58189392 136.21691895 12.78112888 -133.89492798 135.32658386 13.41720486 -139.14562988 135.50030518 10.15558147
		 -126.50667572 133.69755554 13.48178387 -129.93534851 134.80543518 10.22016239 -143.63850403 140.18035889 5.53699207
		 -144.40342712 136.17247009 6.085526943 -145.93345642 138.040359497 1.51438999 -134.40356445 135.32658386 6.085529327
		 -140.47680664 135.50030518 1.51438975 -127.1962738 134.068664551 6.63406849 -129.93534851 134.80543518 1.51439512
		 -144.40342712 136.17247009 -3.05674839 -134.40357971 135.32658386 -3.056744337 -126.2538147 133.41503906 -3.056738853
		 -94.36394501 120.17424774 -8.40245438 -96.26493835 118.65981293 -3.81366825 -94.40548706 117.73095703 0.84429687
		 -97.83695984 120.54415894 -8.08533287 -97.89442444 118.14450836 1.030988932 -95.78152466 123.02570343 -11.92400551
		 -97.40303802 126.75122833 -14.077148438 -93.86004639 126.46037292 -14.50181866 -95.42059326 130.58654785 -15.23045921
		 -96.8578186 134.67382813 -14.54349995 -93.35549164 134.53457642 -14.89582825 -94.78153992 138.27885437 -12.672328
		 -96.16347504 141.28761292 -9.21358013 -92.7280426 141.245224 -9.40937519 -94.18156433 143.18635559 -4.87752962
		 -95.95009613 143.85853577 0.29004639 -92.42053223 143.84846497 0.15370589 -94.18156433 143.16372681 5.31234884
		 -95.99378967 141.24714661 9.94137573 -92.49774933 141.21943665 9.91226006 -94.46536255 138.21812439 13.55021477
		 -96.40222168 134.54920959 15.85787487 -92.86850739 134.43687439 15.89523315 -94.8879776 130.41400146 16.62611198
		 -96.96549225 126.5552597 15.80538559 -93.50682831 126.32704926 15.84092808 -95.64378357 122.98061371 13.52564335
		 -97.70140076 120.46277618 10.091590881 -94.20542908 120.088157654 10.049407005 -96.11126709 118.54303741 5.73078537
		 -114.67186737 124.5361557 -10.11398697 -120.15524292 130.7414093 -12.57183838 -120.40810394 131.023910522 15.60061932
		 -117.74565887 124.17144775 13.48178101 -112.63462067 120.1121521 5.53699255 -111.79486847 120.1121521 -2.50820851
		 -61.47838211 121.66012573 -13.56859779 -61.47838211 129.87289429 -16.77170944 -61.47838211 138.085662842 -13.56859589
		 -61.47838211 143.16143799 -5.18274164 -61.47838211 143.16143799 5.18274355 -61.47838211 138.085662842 13.56859684
		 -61.47838211 129.87289429 16.77170563 -61.47838211 121.66012573 13.56859493 -61.47838211 116.58435822 5.18274212
		 -61.47838211 116.58435822 -5.18274355 -138.30644226 126.66627502 12.074082375 -136.15689087 128.51922607 12.63687801
		 -138.30647278 128.027816772 10.55751991 -116.777771 121.96723938 5.0021729469 -114.98360443 120.37714386 1.51439357
		 -115.93802643 121.96723938 -2.50820518 -117.90775299 124.1598587 1.14299345;
	setAttr ".vt[830:995]" -120.068336487 127.27664185 -3.056738138 -117.7849884 124.51946259 -6.66029739
		 -122.81575012 130.48144531 1.14299393 -122.9519043 130.63357544 -7.19137096 -120.37698364 127.68908691 -10.11398315
		 -119.90755463 124.1598587 6.91405106 -120.082145691 127.12452698 3.85710621 -124.74136353 132.63285828 10.57663822
		 -124.18118286 132.0069885254 6.099247456 -123.37119293 129.96115112 13.48178387 -123.86192322 122.66149139 10.62013435
		 -124.88371277 126.93019104 6.19981289 -129.25067139 124.22660065 7.76886177 -122.98218536 129.52651978 6.91405296
		 -126.30180359 130.29335022 10.62013817 -129.65733337 129.074813843 7.76886368 -124.88370514 126.93019104 14.89434052
		 -129.65733337 129.074813843 13.39403629 -129.25067139 124.22660065 13.39403439 -133.3742218 123.10547638 10.60718918
		 -133.37425232 126.8649292 6.70903397 -136.15687561 124.82342529 8.49468708 -133.3742981 129.80584717 10.60719204
		 -136.15690613 128.51922607 8.49468899 -133.37423706 126.8649292 14.37648964 -136.15687561 124.82342529 12.63687611
		 -138.30644226 125.27098083 10.55751801 -138.30644226 126.6662674 9.03426075 -141.83131409 137.4908905 -9.16687489
		 -142.50515747 141.62945557 -1.53303242 -129.74072266 138.39231873 13.48178291 -129.93534851 134.80545044 -10.45299721
		 -129.74073792 138.39231873 -10.45299911 -129.54611206 143.21653748 -3.056744337 -129.54611206 143.21653748 6.085528851
		 -136.91236877 138.61296082 13.22346783 -138.030960083 135.50030518 -10.19468594 -136.91236877 138.61296082 -10.19468498
		 -136.90158081 142.759552 -3.056744337 -136.90158081 142.759552 6.085528851 -141.83129883 137.4908905 12.19565773
		 -138.030960083 135.50030518 13.22346783 -129.93534851 134.80543518 13.48178387 -142.50514221 141.62945557 4.56181669
		 -144.89942932 138.18896484 6.08552742 -140.065536499 135.50030518 6.08552742 -129.93534851 134.80543518 6.085531235
		 -144.89942932 138.18896484 -3.05674696 -140.065551758 135.50030518 -3.05674696 -129.93534851 134.80543518 -3.056741476
		 -94.50930786 118.45063782 -3.94675803 -97.98735046 118.85825348 -3.68566012 -97.49930573 123.18503571 -11.75729275
		 -94.037086487 122.87077332 -12.095298767 -97.17293549 130.69268799 -15.02756691 -93.6461792 130.47964478 -15.43340683
		 -96.50999451 138.31970215 -12.53291321 -93.038406372 138.23884583 -12.81011963 -95.95009613 143.17294312 -4.77555752
		 -92.45753479 143.18273926 -4.94888878 -95.95009613 143.17396545 5.35565042 -92.42053223 143.15625 5.27437258
		 -96.23461151 138.26132202 13.54575348 -92.69361115 138.18388367 13.55433846 -96.65826416 130.49534607 16.59985352
		 -93.13948822 130.33360291 16.64775658 -97.37359619 123.13146973 13.52087116 -93.89292145 122.82585144 13.5304184
		 -97.84679413 118.74725342 5.78653383 -94.34459686 118.3302536 5.67342997 -138.26898193 127.99737549 12.031793594
		 -115.4183197 120.40003204 4.56181812 -114.61856079 120.40003204 -1.53303099 -117.64183807 124.1598587 -3.056739569
		 -122.9519043 130.63356018 -3.056738138 -118.21987915 125.1587677 -9.51129341 -122.9519043 130.63357544 -10.4529953
		 -118.24165344 124.1598587 4.59991455 -125.33785248 133.29927063 7.6092453 -123.96333313 131.76359558 13.48178387
		 -124.16950226 124.1598587 7.68542957 -125.79608154 129.24775696 7.68543148 -125.79608154 129.24775696 13.48178387
		 -124.16949463 124.1598587 13.48178101 -133.37423706 124.42683411 8.019156456 -133.37426758 128.89375305 8.019158363
		 -133.37426758 128.89375305 13.13079643 -133.37423706 124.42683411 13.13079357 -138.26895142 125.3208313 9.080509186
		 -138.26898193 127.99737549 9.080510139 -138.26895142 125.3208313 12.031791687 -122.40729523 130.025100708 4.5999155
		 -107.51751709 127.070556641 -13.030210495 -108.66409302 130.71704102 -13.79970264
		 -110.52946472 134.52079773 -13.45878792 -110.15374756 138.26914978 -11.49295616 -109.96224213 141.31799316 -8.20247841
		 -109.84947205 143.19473267 -3.91615105 -109.84947205 143.84686279 0.9022193 -109.84947205 143.19525146 5.72058964
		 -109.87739563 141.29776001 10.080768585 -110.016052246 138.23995972 13.5137682 -110.32189178 134.4810791 15.63036728
		 -108.53318787 130.7596283 16.10023689 -108.29319 127.065429688 15.60412216 -107.55963135 123.65145874 13.50132561
		 -107.39840698 121.084503174 9.92106438 -105.2407074 119.42970276 5.66176319 -105.12779236 118.87265015 1.27269053
		 -104.89111328 119.48519897 -3.096934319 -106.13017273 121.20471954 -7.39334965 -106.085586548 123.8605957 -10.93564034
		 -110.27677917 121.53500366 -7.047358036 -108.34298706 119.79867554 -2.8025713 -108.74447632 119.23672485 1.39354134
		 -108.93766785 119.77092743 5.59937763 -112.24690247 121.39537048 9.83580208 -112.65264893 123.91145325 13.49155331
		 -113.95703888 127.32051086 15.50349045 -114.47064209 130.89176941 15.85042763 -117.28172302 134.44702148 15.51661396
		 -116.90677643 138.22927856 13.49777603 -116.81919861 141.32305908 10.15046501 -116.79916382 143.2059021 5.90305901
		 -116.79916382 143.84103394 1.20830584 -116.79916382 143.20562744 -3.48644781 -116.86162567 141.33319092 -7.69692707
		 -116.97562408 138.24386597 -10.97297764 -117.36528015 134.4442749 -12.91643238 -114.40966797 130.72921753 -13.18577003
		 -112.57476044 127.23022461 -12.50674248 -110.37872314 124.19837952 -10.52481365 -13.61109543 154.24327087 36.081111908
		 1.8932662e-029 151.01159668 38.31228638 -12.79041004 215.53897095 26.87124825 1.8932623e-029 222.22123718 27.97231483
		 -14.89359474 145.8717041 45.82989502 1.8932662e-029 143.080886841 47.44663239 -19.93213081 134.43309021 39.86982727
		 1.8932662e-029 132.34277344 42.87324142 -19.26527023 129.23971558 25.38850594 1.8932662e-029 124.56208801 30.54976463
		 1.8932654e-029 225.44041443 35.46079636 -13.50061131 224.13877869 34.58814621 -16.74102592 240.29563904 19.17496872
		 1.8932367e-029 241.43809509 21.084573746 -15.36524773 234.33647156 30.50179672 1.8932654e-029 235.57318115 29.89086342
		 -17.70136642 244.27896118 3.84634542 1.8932662e-029 245.24485779 4.39113998 1.8932513e-029 245.49008179 -12.025146484
		 -18.20703888 244.010635376 -13.28958321 1.8932544e-029 238.94400024 -35.82848358
		 -17.52957153 236.81706238 -35.71252441 -15.060623169 221.56895447 -50.76822662 1.8932599e-029 222.6138916 -53.35166931
		 -12.98263645 191.058197021 -67.12706757 1.8932224e-029 191.25086975 -68.35227966
		 1.8930832e-029 169.91844177 -59.11010742 -12.77502918 168.49447632 -57.11785126 -11.84975243 153.26156616 -48.81207275
		 1.892633e-029 153.50656128 -50.14228821 1.893184e-029 135.58932495 -33.68332291 -12.77138996 136.12722778 -32.95394516
		 -13.82553577 133.33613586 -25.52758408 1.8930314e-029 134.18417358 -25.74646759;
	setAttr ".vt[996:1161]" -12.98151493 131.77722168 -11.78819942 1.8927028e-029 130.61851501 -11.35324383
		 -16.85260391 127.44037628 9.88267326 1.8930667e-029 121.93193817 10.99630356 -30.80732918 150.21589661 43.77361679
		 -29.24463844 157.78147888 33.010093689 -27.012348175 211.53311157 26.63373756 -28.95920181 219.88336182 33.8858757
		 -36.29343414 139.12014771 35.39352036 -33.61294937 133.079498291 21.64218903 -32.4693718 229.80644226 32.15439224
		 -35.90512848 236.59210205 19.50931931 -37.7399559 240.25584412 3.96842718 -38.7400856 238.5504303 -14.24826336
		 -37.21587372 230.17892456 -32.40751648 -34.2040329 216.87638855 -45.94340515 -30.90585518 188.67147827 -60.81333923
		 -29.34085655 168.51753235 -51.1854248 -27.91064453 153.095748901 -43.13555145 -28.45642471 139.44979858 -30.6833992
		 -30.24306297 135.22528076 -23.9624939 -32.93318176 135.93841553 -12.74128437 -34.44779968 132.68611145 5.66351891
		 1.8932484e-029 204.65591431 -64.24043274 -13.34085369 204.026489258 -63.007686615
		 -32.099842072 201.64149475 -53.39751434 -39.83720398 199.8989563 26.072160721 -42.20103073 186.14535522 26.78889465
		 -67.59254456 207.88948059 36.47400284 -64.0034255981 188.26905823 37.91069794 -74.72279358 190.88438416 28.15883446
		 -77.21671295 213.082977295 25.50244522 -45.20808411 184.54446411 -47.67073822 -60.42124557 201.1305542 -42.23201752
		 -60.46009827 182.58033752 -35.35804367 -76.13111877 206.5660553 -26.049564362 -72.48042297 185.22064209 -22.94266129
		 -83.55327606 213.21276855 -9.544837 -81.54808044 188.5423584 -6.77583361 -84.087768555 215.58320618 8.84910965
		 -82.6840744 191.12103271 12.47065639 -48.70339203 202.93780518 35.61941147 -50.91630173 188.66090393 35.34197617
		 -42.29219818 171.8793335 30.72409439 -48.088573456 173.86460876 38.93131638 -61.10252762 170.092849731 37.79982758
		 -57.72129822 165.61274719 -31.77156258 -42.94923782 168.50526428 -42.46157074 -67.89741516 164.30810547 -19.15103912
		 -75.58708954 164.38116455 -2.59105468 -76.10443878 166.12193298 14.69615078 -70.29182434 169.67034912 28.66272354
		 -37.21738815 209.19084167 26.52930832 -49.77936172 210.277771 -41.5880394 -53.98700333 220.94995117 -29.1346302
		 -58.0011672974 228.89033508 -12.69298649 -57.6813736 231.32943726 5.44085407 -53.59291458 228.11691284 21.65423965
		 -40.90893936 213.49273682 34.64144516 -46.82621002 221.57176208 34.043842316 -40.28995514 161.77505493 36.2966423
		 -42.63838196 160.090332031 40.088150024 1.8932662e-029 138.36965942 48.22386932 -17.61172485 140.59335327 48.24182892
		 -34.940979 144.86543274 43.37744522 -53.8867569 157.090927124 38.76996231 -59.55518723 152.072280884 29.3745079
		 -62.6456604 147.44308472 16.89671516 -61.93048096 145.24465942 1.21359658 -57.032249451 147.2870636 -15.50639057
		 -51.048873901 152.13014221 -27.99936867 -38.2739563 153.049743652 -37.22657776 -41.85359192 198.55166626 -52.8240509
		 -44.54848862 195.27154541 -52.53801727 13.61109543 154.24327087 36.081111908 12.79041004 215.53897095 26.87124825
		 14.89359474 145.8717041 45.82989502 19.93213081 134.43309021 39.86982727 19.26527023 129.23971558 25.38850594
		 13.50061131 224.13877869 34.58814621 16.74102592 240.29563904 19.17496872 15.36524773 234.33647156 30.50179672
		 17.70136642 244.27896118 3.84634542 18.20703888 244.010635376 -13.28958321 17.52957153 236.81706238 -35.71252441
		 15.060623169 221.56895447 -50.76822662 12.98263645 191.058197021 -67.12706757 12.77502918 168.49447632 -57.11785126
		 11.84975243 153.26156616 -48.81207275 12.77138996 136.12722778 -32.95394516 13.82553577 133.33613586 -25.52758408
		 12.98151493 131.77722168 -11.78819942 16.85260391 127.44037628 9.88267326 30.80732918 150.21589661 43.77361679
		 29.24463844 157.78147888 33.010093689 27.012348175 211.53311157 26.63373756 28.95920181 219.88336182 33.8858757
		 36.29343414 139.12014771 35.39352036 33.61294937 133.079498291 21.64218903 32.4693718 229.80644226 32.15439224
		 35.90512848 236.59210205 19.50931931 37.7399559 240.25584412 3.96842718 38.7400856 238.5504303 -14.24826336
		 37.21587372 230.17892456 -32.40751648 34.2040329 216.87638855 -45.94340515 30.90585518 188.67147827 -60.81333923
		 29.34085655 168.51753235 -51.1854248 27.91064453 153.095748901 -43.13555145 28.45642471 139.44979858 -30.6833992
		 30.24306297 135.22528076 -23.9624939 32.93318176 135.93841553 -12.74128437 34.44779968 132.68611145 5.66351891
		 13.34085369 204.026489258 -63.007686615 32.099842072 201.64149475 -53.39751434 39.83720398 199.8989563 26.072160721
		 42.20103073 186.14535522 26.78889465 67.59254456 207.88948059 36.47400284 64.0034255981 188.26905823 37.91069794
		 74.72279358 190.88438416 28.15883446 77.21671295 213.082977295 25.50244522 45.20808411 184.54446411 -47.67073822
		 60.42124557 201.1305542 -42.23201752 60.46009827 182.58033752 -35.35804367 76.13111877 206.5660553 -26.049564362
		 72.48042297 185.22064209 -22.94266129 83.55327606 213.21276855 -9.544837 81.54808044 188.5423584 -6.77583361
		 84.087768555 215.58320618 8.84910965 82.6840744 191.12103271 12.47065639 48.70339203 202.93780518 35.61941147
		 50.91630173 188.66090393 35.34197617 42.29219818 171.8793335 30.72409439 48.088573456 173.86460876 38.93131638
		 61.10252762 170.092849731 37.79982758 57.72129822 165.61274719 -31.77156258 42.94923782 168.50526428 -42.46157074
		 67.89741516 164.30810547 -19.15103912 75.58708954 164.38116455 -2.59105468 76.10443878 166.12193298 14.69615078
		 70.29182434 169.67034912 28.66272354 37.21738815 209.19084167 26.52930832 49.77936172 210.277771 -41.5880394
		 53.98700333 220.94995117 -29.1346302 58.0011672974 228.89033508 -12.69298649 57.6813736 231.32943726 5.44085407
		 53.59291458 228.11691284 21.65423965 40.90893936 213.49273682 34.64144516 46.82621002 221.57176208 34.043842316
		 40.28995514 161.77505493 36.2966423 42.63838196 160.090332031 40.088150024 17.61172485 140.59335327 48.24182892
		 34.940979 144.86543274 43.37744522 53.8867569 157.090927124 38.76996231 59.55518723 152.072280884 29.3745079
		 62.6456604 147.44308472 16.89671516 61.93048096 145.24465942 1.21359658 57.032249451 147.2870636 -15.50639057
		 51.048873901 152.13014221 -27.99936867 38.2739563 153.049743652 -37.22657776 41.85359192 198.55166626 -52.8240509
		 44.54848862 195.27154541 -52.53801727 -57.38256454 223.74641418 14.35066414 -68.28832245 219.077209473 -2.63737345
		 -69.93468475 246.6308136 5.67309141 -74.85485077 244.52407837 -1.99127769 -62.039344788 247.84866333 0.077276081;
	setAttr ".vt[1162:1327]" -66.62030029 245.88769531 -7.058459759 -42.10406494 231.15145874 2.25504565
		 -53.01002121 226.48265076 -14.73294926 -64.094337463 228.19464111 10.63930225 -69.905159 225.70684814 1.58781815
		 -73.44727325 241.34124756 0.92260641 -70.65288544 242.53684998 5.27496529 -73.73419189 248.94035339 1.28784359
		 -66.43891144 248.96939087 3.071193695 -71.7237854 246.70610046 -5.1613183 -65.37924957 249.63117981 -3.975986
		 -54.086891174 242.26911926 1.010629177 -61.6203804 239.044006348 -10.7241106 -45.010719299 230.051559448 -8.25489235
		 -62.46686935 222.0018463135 -11.51648808 -73.081703186 233.47616577 -3.82891297 -47.92565155 228.22720337 11.13416481
		 -63.67132187 237.50506592 10.82962799 -65.38182068 220.17720032 7.87248421 -63.37836838 227.23399353 12.48953438
		 -70.81403351 224.049102783 0.90625632 -66.1580658 224.45281982 6.61607647 -74.90169525 242.51141357 0.11940865
		 -72.39336395 233.21737671 0.13828039 -71.075462341 244.14904785 6.079307079 -72.89162445 244.43682861 2.59629035
		 -66.65663147 235.67353821 9.074249268 -62.86067963 228.41099548 9.60123539 -68.48683929 226.002243042 0.83757699
		 -72.074554443 241.68901062 0.17044266 -69.45825958 242.80944824 4.24574232 -66.52160645 235.17274475 2.52125931
		 -71.064804077 251.083053589 -1.16712356 -56.094631195 241.50895691 -6.24927807 -68.1526413 235.94839478 -8.50229359
		 -58.10824966 240.24928284 7.14399529 -66.11401367 222.69291687 7.29757977 -73.79646301 232.87838745 -0.94910252
		 -73.97055054 246.27815247 2.4996047 -66.28832245 236.092803955 10.74628544 -64.82511902 224.69985962 5.72134113
		 -70.96749878 233.55184937 -0.56583941 -71.61542511 244.75679016 1.70621717 -65.47290802 235.90440369 7.99339533
		 57.38257217 223.74641418 14.35066414 68.28832245 219.077209473 -2.63737345 69.93468475 246.6308136 5.67309141
		 74.85485077 244.52407837 -1.99127769 62.039344788 247.84866333 0.077276081 66.62030029 245.88769531 -7.058459759
		 42.10406494 231.15145874 2.25504565 53.01002121 226.48265076 -14.73294926 64.094337463 228.19464111 10.63930225
		 69.905159 225.70684814 1.58781815 73.44727325 241.34124756 0.92260641 70.65288544 242.53684998 5.27496529
		 73.73419189 248.94035339 1.28784359 66.43891144 248.96939087 3.071193695 71.7237854 246.70610046 -5.1613183
		 65.37924957 249.63117981 -3.975986 54.086891174 242.26911926 1.010629177 61.62037277 239.044006348 -10.7241106
		 45.010719299 230.051559448 -8.25489235 62.46686935 222.0018463135 -11.51648808 73.081703186 233.47616577 -3.82891297
		 47.92565155 228.22720337 11.13416481 63.67132187 237.50506592 10.82962799 65.38182068 220.17720032 7.87248421
		 63.37836838 227.23399353 12.48953438 70.81403351 224.049102783 0.90625632 66.1580658 224.45281982 6.61607647
		 74.90169525 242.51141357 0.11940865 72.39336395 233.21737671 0.13828039 71.075462341 244.14904785 6.079307079
		 72.89162445 244.43682861 2.59629035 66.65663147 235.67353821 9.074249268 62.86068726 228.41099548 9.60123539
		 68.48683929 226.002243042 0.83757699 72.074554443 241.68901062 0.17044266 69.45825958 242.80944824 4.24574232
		 66.52160645 235.17274475 2.52125931 71.064804077 251.083053589 -1.16712356 56.094631195 241.50895691 -6.24927807
		 68.1526413 235.94839478 -8.50229359 58.10825729 240.24928284 7.14399529 66.11401367 222.69291687 7.29757977
		 73.79646301 232.87838745 -0.94910252 73.97055054 246.27815247 2.4996047 66.28832245 236.092803955 10.74628544
		 64.82511902 224.69985962 5.72134113 70.96749878 233.55184937 -0.56583941 71.61542511 244.75679016 1.70621717
		 65.47290802 235.90440369 7.99339533 41.33653259 197.93756104 40.16810989 40.18120956 203.31530762 37.40382767
		 36.084140778 207.8878479 36.90795898 30.61026192 209.90863037 38.86991119 25.85041428 208.60577393 42.5402832
		 23.62269592 204.47694397 46.51712036 24.77801895 199.099212646 49.28140259 28.87509155 194.52667236 49.77726746
		 34.34896851 192.50588989 47.81531525 39.10881424 193.80873108 44.14494705 42.25496674 198.92778015 41.71064758
		 41.099643707 204.30551147 38.94636536 37.002571106 208.87805176 38.45050049 31.52869415 210.89883423 40.41244888
		 26.76884651 209.59599304 44.082820892 24.54112816 205.46716309 48.059658051 25.69645309 200.089416504 50.82394028
		 29.79352188 195.51687622 51.31980896 35.26739883 193.49609375 49.35785675 40.027244568 194.7989502 45.68748474
		 32.47961426 201.20726013 43.34261322 -41.33653259 197.93756104 40.16810989 -40.18120956 203.31530762 37.40382767
		 -36.084140778 207.8878479 36.90795898 -30.61026192 209.90863037 38.86991119 -25.85041428 208.60577393 42.5402832
		 -23.62269592 204.47694397 46.51712036 -24.77801895 199.099212646 49.28140259 -28.87509155 194.52667236 49.77726746
		 -34.34896851 192.50588989 47.81531525 -39.10881424 193.80873108 44.14494705 -42.25496674 198.92778015 41.71064758
		 -41.099643707 204.30551147 38.94636536 -37.002571106 208.87805176 38.45050049 -31.52869415 210.89883423 40.41244888
		 -26.76884651 209.59599304 44.082820892 -24.54112816 205.46716309 48.059658051 -25.69645309 200.089416504 50.82394028
		 -29.79352188 195.51687622 51.31980896 -35.26739883 193.49609375 49.35785675 -40.027244568 194.7989502 45.68748474
		 -32.47961426 201.20726013 43.34261322 40.75873947 199.47808838 42.24824142 39.79846573 203.94790649 39.95064926
		 36.3920517 207.74963379 39.53837585 31.8423233 209.429245 41.16909409 27.88804817 208.34690857 44.21827698
		 26.037355423 204.91685486 47.52206039 26.99762917 200.44702148 49.81965637 30.4040432 196.64529419 50.23193359
		 34.95376968 194.96568298 48.60121155 38.90804291 196.048034668 45.55202866 -40.75873947 199.47808838 42.24824142
		 -39.79846573 203.94790649 39.95064926 -36.3920517 207.74963379 39.53837585 -31.8423233 209.429245 41.16909409
		 -27.88804817 208.34690857 44.21827698 -26.037355423 204.91685486 47.52206039 -26.99762917 200.44702148 49.81965256
		 -30.40404129 196.64529419 50.23193359 -34.95376968 194.96568298 48.60121536 -38.90804291 196.048034668 45.55202866
		 40.4162941 199.10888672 41.67309189 39.45602036 203.57870483 39.37549973 33.055603027 201.82824707 44.31000519
		 36.049606323 207.38043213 38.96322632 31.49987602 209.060043335 40.59394455 27.54560089 207.97770691 43.64312744
		 25.69490814 204.5476532 46.94691086 26.65518188 200.077819824 49.24450684 30.061597824 196.27609253 49.65678406
		 34.61132431 194.59648132 48.026062012 38.56559753 195.67883301 44.97687912;
	setAttr ".vt[1328:1493]" -40.4162941 199.10888672 41.67309189 -33.055603027 201.82824707 44.31000519
		 -39.45602036 203.57870483 39.37549973 -36.049606323 207.38043213 38.96322632 -31.49987602 209.060043335 40.59394455
		 -27.54560089 207.97770691 43.64312744 -25.69490814 204.5476532 46.94691086 -26.65518188 200.077819824 49.24450302
		 -30.061595917 196.27609253 49.65678406 -34.61132431 194.59648132 48.026065826 -38.56559753 195.67883301 44.97687912
		 1.8932662e-029 202.12197876 52.49794388 4.90346909 201.81059265 53.076568604 8.84089279 200.77481079 54.18512726
		 9.62989426 198.66400146 58.026863098 3.44384384 188.11772156 64.32025909 1.8932662e-029 187.76231384 64.92559052
		 6.21198845 189.69836426 63.65991211 8.15154076 192.41873169 62.86519623 9.3657341 195.73278809 61.14107513
		 4.90398312 183.63699341 65.69372559 1.8932662e-029 182.56091309 65.74160004 13.76742268 199.91947937 53.2838707
		 13.77845573 197.28744507 57.34592438 19.64285278 195.67889404 57.010498047 21.17281723 198.57415771 51.98521042
		 25.9784584 192.54875183 56.15284348 29.45749283 195.074951172 48.79454422 30.20032883 187.86026001 55.15219116
		 33.51729584 189.2880249 48.62525177 33.014484406 180.34759521 53.047702789 35.76547241 179.59443665 48.092132568
		 32.88360214 176.18823242 52.86533737 35.21293259 174.76286316 48.43004608 29.30685806 168.55305481 54.40040588
		 30.52642441 166.3414917 50.64084244 25.17688751 166.25064087 56.89665222 23.63074875 163.23652649 54.62835693
		 22.61104965 166.237854 58.93187332 20.012378693 162.62272644 56.43110657 14.47321701 168.21203613 63.27178955
		 9.56199646 162.87037659 58.29060364 9.74310303 171.4944458 64.88237 1.8932662e-029 165.55969238 58.80841064
		 6.66299963 176.71514893 66.097091675 1.8932662e-029 170.55966187 63.089286804 8.56854439 186.55714417 65.18140411
		 11.35161018 190.28852844 63.80719376 13.18547058 194.10964966 61.19366455 18.083192825 191.96304321 61.49040985
		 15.4942379 187.30368042 64.92149353 11.63625908 182.18933105 66.33208466 15.22632408 177.75874329 65.98768616
		 19.59644508 183.48486328 64.65538788 23.13611984 188.59646606 61.37030792 27.25529289 184.53283691 60.28411865
		 23.45689774 179.76472473 63.24787903 19.27807045 174.28887939 64.40270233 30.61167717 178.25367737 56.83152771
		 28.36267853 174.72860718 59.090484619 25.58408737 170.46400452 59.8312912 27.61689758 169.55406189 57.51671219
		 29.81283569 173.30723572 56.88114929 31.13031387 176.10003662 55.72580719 31.51955032 172.16125488 53.61026764
		 33.46839905 170.2305603 49.37358093 27.077537537 166.38995361 54.98788071 27.039196014 164.22622681 52.55399323
		 4.86109781 205.83662415 48.25764084 1.893266e-029 206.1333313 48.21303558 5.56457615 214.64071655 43.2763443
		 1.893266e-029 214.71221924 43.42963791 6.75988197 222.59631348 34.91984177 1.8932635e-029 222.93685913 36.39577484
		 7.89643955 226.88827515 22.41773987 1.893263e-029 227.078948975 22.5952034 12.13745403 205.22206116 48.020755768
		 13.53285122 214.58981323 42.36726761 14.6382122 222.02166748 34.34797668 15.95137119 226.33624268 22.65525818
		 18.51463318 159.44744873 53.33840942 9.6065464 158.027496338 55.4329567 6.087392807 147.86427307 53.99034119
		 7.12952709 142.35949707 47.56757736 1.8932662e-029 146.37677002 54.50585175 1.8932662e-029 142.41714478 48.9766655
		 1.8932662e-029 151.3260498 56.65353394 5.60379505 152.14285278 55.76330948 5.35155439 156.37171936 56.23390961
		 1.8932662e-029 155.6578064 56.8269043 5.29460239 159.84829712 56.47169876 1.8932662e-029 159.94534302 56.52802277
		 35.22569656 184.46487427 48.28734589 31.93967819 184.11811829 54.17065811 29.41189003 181.047729492 58.50573349
		 26.38325691 176.84899902 61.23438263 22.83857727 171.93737793 62.11954498 19.16892242 166.69543457 61.19246292
		 15.68732452 162.42999268 57.90922546 13.98472118 158.87535095 54.30513382 6.5179944 144.80889893 51.075500488
		 1.893266e-029 144.017868042 51.70166016 1.8932656e-029 139.23516846 44.45479584 8.10835361 138.9839325 43.075447083
		 20.78419495 141.80209351 40.6060524 20.50900078 145.39463806 44.77661896 22.72144699 160.126297 51.867939
		 26.29700661 143.55584717 37.96548843 25.073562622 147.25254822 43.55674744 26.95727921 160.97117615 49.74185562
		 34.35400391 150.45343018 37.47570419 31.9040432 153.19851685 42.69031525 12.8357687 139.7052002 42.42048645
		 11.90427589 143.22192383 46.49040985 11.11842155 146.22413635 49.79130936 10.48633766 149.52622986 52.46543884
		 9.93114948 153.56082153 54.1662674 13.7513113 154.87539673 52.26386642 14.48641586 151.14692688 50.69238281
		 16.086902618 144.23458862 45.78096008 16.19844818 140.45162964 41.79003143 15.25827408 147.70828247 48.50293732
		 19.52201462 148.9669342 47.67897415 18.59806061 152.39476013 49.56899261 18.10570526 155.95910645 51.053253174
		 23.49141312 150.65870667 46.78376007 22.43139458 153.54873657 48.54125977 22.18181992 156.72462463 49.92194366
		 30.010465622 146.27323914 37.60599518 28.58873177 150.026885986 43.19527817 26.64369774 153.19519043 46.29391479
		 25.38458443 154.52929688 47.51938629 25.78194618 157.20220947 48.37158203 23.76694107 225.24957275 24.1808548
		 22.13651276 220.48182678 34.83689499 29.41411591 217.19555664 35.20216751 32.30519104 223.025360107 24.30039787
		 15.2128067 202.53486633 49.72200775 21.42366982 202.14709473 47.82538605 20.71011353 206.80387878 44.78091812
		 21.22281265 213.60919189 40.88819122 28.72136879 200.63061523 44.76489258 28.098064423 206.015014648 42.3062973
		 28.086357117 211.47924805 39.67745972 40.22797775 156.95240784 34.9773407 37.3719635 159.31533813 40.85237122
		 33.18820953 209.0027770996 38.70334625 36.12556839 212.13743591 35.37767792 34.82886887 205.092987061 39.62534714
		 41.10556793 205.72454834 35.58618927 36.35678864 199.59710693 40.69087982 43.90302277 198.85946655 35.63410568
		 45.21162415 192.044662476 35.7900238 37.42924881 193.67984009 41.77706909 38.88932037 187.96676636 41.96705246
		 45.43484116 185.88000488 35.7141304 39.18831635 178.080169678 42.1063118 44.57830811 176.80264282 36.40300751
		 38.4527626 173.010574341 43.11005783 43.3300705 171.35914612 37.4982605 41.012199402 165.33842468 39.073516846
		 36.32177734 167.73361206 44.48773956 32.38863754 162.28625488 46.19758606 30.86330032 157.029708862 45.26881027
		 44.72945404 164.030151367 31.54232788 47.071655273 170.65515137 29.49454498;
	setAttr ".vt[1494:1659]" 48.46952057 176.71070862 28.18975449 49.68404388 182.34207153 27.16644669
		 50.76407623 189.5645752 27.13677025 50.50911713 198.095916748 27.90125656 47.52830505 207.43899536 28.46199608
		 41.20181274 216.62480164 27.13529396 39.48361206 182.93144226 41.95142746 45.22577667 181.23193359 35.86087799
		 49.0782547 179.59461975 27.66267395 -4.90346909 201.81059265 53.076568604 -8.84089279 200.77481079 54.18512726
		 -9.62989426 198.66400146 58.026863098 -3.44384384 188.11772156 64.32025909 -6.21198845 189.69836426 63.65991211
		 -8.15154076 192.41873169 62.86519623 -9.3657341 195.73278809 61.14107513 -4.90398312 183.63699341 65.69372559
		 -13.76742268 199.91947937 53.2838707 -13.77845573 197.28744507 57.34592438 -19.64285278 195.67889404 57.010498047
		 -21.17281723 198.57415771 51.98521042 -25.9784584 192.54875183 56.15284348 -29.45749283 195.074951172 48.79454422
		 -30.20032883 187.86026001 55.15219116 -33.51729584 189.2880249 48.62525177 -33.014484406 180.34759521 53.047702789
		 -35.76547241 179.59443665 48.092132568 -32.88360214 176.18823242 52.86533737 -35.21293259 174.76286316 48.43004608
		 -29.30685806 168.55305481 54.40040588 -30.52642441 166.3414917 50.64084244 -25.17688751 166.25064087 56.89665222
		 -23.63074875 163.23652649 54.62835693 -22.61104965 166.237854 58.93187332 -20.012378693 162.62272644 56.43110657
		 -14.47321701 168.21203613 63.27178955 -9.56199646 162.87037659 58.29060364 -9.74310303 171.4944458 64.88237
		 -6.66299963 176.71514893 66.097091675 -8.56854439 186.55714417 65.18140411 -11.35161018 190.28852844 63.80719376
		 -13.18547058 194.10964966 61.19366455 -18.083192825 191.96304321 61.49040985 -15.4942379 187.30368042 64.92149353
		 -11.63625908 182.18933105 66.33208466 -15.22632408 177.75874329 65.98768616 -19.59644508 183.48486328 64.65538788
		 -23.13611984 188.59646606 61.37030792 -27.25529289 184.53283691 60.28411865 -23.45689774 179.76472473 63.24787903
		 -19.27807045 174.28887939 64.40270233 -30.61167717 178.25367737 56.83152771 -28.36267853 174.72860718 59.090484619
		 -25.58408737 170.46400452 59.8312912 -27.61689758 169.55406189 57.51671219 -29.81283569 173.30723572 56.88114929
		 -31.13031387 176.10003662 55.72580719 -31.51955032 172.16125488 53.61026764 -33.46839905 170.2305603 49.37358093
		 -27.077537537 166.38995361 54.98788071 -27.039196014 164.22622681 52.55399323 -4.86109781 205.83662415 48.25764084
		 -5.56457615 214.64071655 43.2763443 -6.75988197 222.59631348 34.91984177 -7.89643955 226.88827515 22.41773987
		 -12.13745403 205.22206116 48.020755768 -13.53285122 214.58981323 42.36726761 -14.6382122 222.02166748 34.34797668
		 -15.95137119 226.33624268 22.65525818 -18.51463318 159.44744873 53.33840942 -9.6065464 158.027496338 55.4329567
		 -6.087392807 147.86427307 53.99034119 -7.12952709 142.35949707 47.56757736 -5.60379505 152.14285278 55.76330948
		 -5.35155439 156.37171936 56.23390961 -5.29460239 159.84829712 56.47169876 -35.22569656 184.46487427 48.28734589
		 -31.93967819 184.11811829 54.17065811 -29.41189003 181.047729492 58.50573349 -26.38325691 176.84899902 61.23438263
		 -22.83857727 171.93737793 62.11954498 -19.16892242 166.69543457 61.19246292 -15.68732452 162.42999268 57.90922546
		 -13.98472118 158.87535095 54.30513382 -6.5179944 144.80889893 51.075500488 -8.10835361 138.9839325 43.075447083
		 -20.78419495 141.80209351 40.6060524 -20.50900078 145.39463806 44.77661896 -22.72144699 160.126297 51.867939
		 -26.29700661 143.55584717 37.96548843 -25.073562622 147.25254822 43.55674744 -26.95727921 160.97117615 49.74185562
		 -34.35400391 150.45343018 37.47570419 -31.9040432 153.19851685 42.69031525 -12.8357687 139.7052002 42.42048645
		 -11.90427589 143.22192383 46.49040985 -11.11842155 146.22413635 49.79130936 -10.48633766 149.52622986 52.46543884
		 -9.93114948 153.56082153 54.1662674 -13.7513113 154.87539673 52.26386642 -14.48641586 151.14692688 50.69238281
		 -16.086902618 144.23458862 45.78096008 -16.19844818 140.45162964 41.79003143 -15.25827408 147.70828247 48.50293732
		 -19.52201462 148.9669342 47.67897415 -18.59806061 152.39476013 49.56899261 -18.10570526 155.95910645 51.053253174
		 -23.49141312 150.65870667 46.78376007 -22.43139458 153.54873657 48.54125977 -22.18181992 156.72462463 49.92194366
		 -30.010465622 146.27323914 37.60599518 -28.58873177 150.026885986 43.19527817 -26.64369774 153.19519043 46.29391479
		 -25.38458443 154.52929688 47.51938629 -25.78194618 157.20220947 48.37158203 -23.76694107 225.24957275 24.1808548
		 -22.13651276 220.48182678 34.83689499 -29.41411591 217.19555664 35.20216751 -32.30519104 223.025360107 24.30039787
		 -15.2128067 202.53486633 49.72200775 -21.42366982 202.14709473 47.82538605 -20.71011353 206.80387878 44.78091812
		 -21.22281265 213.60919189 40.88819122 -28.72136879 200.63061523 44.76489258 -28.098064423 206.015014648 42.3062973
		 -28.086357117 211.47924805 39.67745972 -40.22797775 156.95240784 34.9773407 -37.3719635 159.31533813 40.85237122
		 -33.18820953 209.0027770996 38.70334625 -36.12556839 212.13743591 35.37767792 -34.82886887 205.092987061 39.62534714
		 -41.10556793 205.72454834 35.58618927 -36.35678864 199.59710693 40.69087982 -43.90302277 198.85946655 35.63410568
		 -45.21162415 192.044662476 35.7900238 -37.42924881 193.67984009 41.77706909 -38.88932037 187.96676636 41.96705246
		 -45.43484116 185.88000488 35.7141304 -39.18831635 178.080169678 42.1063118 -44.57830811 176.80264282 36.40300751
		 -38.4527626 173.010574341 43.11005783 -43.3300705 171.35914612 37.4982605 -41.012199402 165.33842468 39.073516846
		 -36.32177734 167.73361206 44.48773956 -32.38863754 162.28625488 46.19758606 -30.86330032 157.029708862 45.26881027
		 -44.72945404 164.030151367 31.54232788 -47.071655273 170.65515137 29.49454498 -48.46952057 176.71070862 28.18975449
		 -49.68404388 182.34207153 27.16644669 -50.76407623 189.5645752 27.13677025 -50.50911713 198.095916748 27.90125656
		 -47.52830505 207.43899536 28.46199608 -41.20181274 216.62480164 27.13529396 -39.48361206 182.93144226 41.95142746
		 -45.22577667 181.23193359 35.86087799 -49.0782547 179.59461975 27.66267395 1.8932662e-029 203.91717529 52.71904373
		 2.2416964e-015 203.51730347 56.51464462 3.52170038 203.13768005 56.81837082 5.14480782 203.57171631 53.3954277
		 3.0275249e-008 201.81802368 59.548069 3.058592796 201.47369385 59.99022675 10.19550705 200.054000854 59.01506424
		 9.30301476 202.40333557 54.7896843 6.64560461 202.33081055 57.19222641;
	setAttr ".vt[1660:1825]" 6.70489025 200.72021484 59.89945221 1.5916379e-007 199.89730835 62.26908112
		 2.80279255 198.98120117 62.68520737 1.5769329e-007 196.376297 64.59377289 2.60063791 195.83528137 64.89848328
		 8.5010022e-008 191.38693237 66.63502502 2.79970765 191.90794373 66.55554962 1.5646219e-007 187.68888855 66.72476959
		 3.76903844 187.98406982 66.09375 5.44493341 192.1375885 66.088615417 6.80138683 189.70068359 65.35571289
		 5.99773312 194.97242737 65.011497498 8.83042336 192.89299011 64.45197296 6.50813246 198.15779114 62.80189514
		 9.95938969 196.73278809 62.49790573 -5.14480734 203.57171631 53.39543152 -3.52170086 203.13769531 56.81837082
		 -3.058593273 201.47369385 59.99022675 -6.7048912 200.72021484 59.89945221 -10.19550705 200.054016113 59.01506424
		 -6.64560556 202.33081055 57.19222641 -9.30301476 202.40335083 54.78968811 -2.60063791 195.83528137 64.89848328
		 -2.80279255 198.98120117 62.68520737 -2.79970789 191.90794373 66.55554962 -3.76903844 187.98406982 66.09375
		 -6.80138731 189.70068359 65.35571289 -5.44493389 192.1375885 66.088615417 -8.83042431 192.89299011 64.45197296
		 -5.99773359 194.97242737 65.011497498 -9.95938969 196.73278809 62.49790573 -6.50813293 198.15779114 62.80189514
		 -4.52039146 149.1612854 59.49681091 4.52039146 149.1612854 59.49681091 -4.52039146 150.15194702 62.18996429
		 4.52039146 150.15194702 62.18996429 -6.10252857 172.72712708 54.36460876 6.10252857 172.72712708 54.36460876
		 -6.10252857 171.23730469 50.31454468 6.10252857 171.23730469 50.31454468 1.8932662e-029 148.24250793 63.14141464
		 -5.90604591 158.85173035 60.22347641 5.90604591 158.85173035 60.22347641 1.8932588e-029 172.9980011 55.10097504
		 1.3780482e-029 170.96644592 49.57816315 -5.90604591 157.51005554 56.57619095 5.90604591 157.51005554 56.57619095
		 8.32162952 171.98222351 52.33957672 -8.32162952 171.98222351 52.33957672 1.2621774e-029 147.0078430176 59.78490829
		 -5.70956278 147.62516785 61.46315002 5.70956326 147.62516785 61.46315002 3.3067185e-008 144.077545166 62.60423279
		 3.3067185e-008 158.91459656 60.95156479 1.2803257e-029 157.086151123 55.9809227 8.059652328 158.00036621094 58.46625137
		 -8.059652328 158.00036621094 58.46625137 3.1129055 144.95439148 62.28168488 2.68141413 148.86013794 62.79069138
		 -2.68141413 148.86013794 62.79069138 -5.31659651 153.44241333 61.63657761 1.8932662e-029 152.932724 62.47970963
		 -3.22077894 158.9440918 60.75317383 5.31659651 153.44241333 61.63657761 3.22077894 158.9440918 60.75317383
		 1.8932662e-029 165.74432373 58.30569458 6.10252857 165.48373413 57.59731293 3.32865214 172.93028259 54.91689301
		 -6.10252857 165.48373413 57.59731293 -3.32865214 172.93028259 54.91689301 -3.32865214 171.03414917 49.7622757
		 -6.10252857 164.050567627 53.70122147 1.3161613e-029 163.7900238 52.99284363 -3.22077894 157.2371521 56.11291122
		 3.32865214 171.03414917 49.7622757 6.10252857 164.050567627 53.70122147 3.22077894 157.2371521 56.11291122
		 1.2652448e-029 151.32748413 58.11582565 5.31659651 152.26203918 58.42770767 -5.31659651 152.26203918 58.42770767
		 7.27372074 152.13011169 60.29776382 8.32162952 164.76715088 55.6492691 -8.32162952 164.76715088 55.6492691
		 -7.27372074 152.13011169 60.29776382 -2.68141413 147.70552063 59.65180206 -3.1129055 144.95439148 62.28168488
		 2.68141413 147.70552063 59.65180206 -2.89716005 153.24102783 62.20347214 2.89716005 153.24102783 62.20347214
		 3.32865214 165.6791687 58.12860489 -3.32865214 165.6791687 58.12860489 -3.32865214 163.85516357 53.16992569
		 3.32865214 163.85516357 53.16992569 2.89716005 151.74130249 58.12643814 -2.89716005 151.74130249 58.12643814
		 2.2924974 62.35560989 -35.29824829 0 61.40602112 -35.29824829 -2.2924974 62.35560989 -35.29824829
		 -3.24208069 64.64810944 -35.29824829 -2.2924974 66.94062042 -35.29824829 0 67.89019775 -35.29824829
		 2.29249763 66.94062042 -35.29824829 3.24208117 64.64810944 -35.29824829 1.51701009 63.13109207 -73.20394897
		 6.5368702e-008 62.50273514 -73.20394897 -1.51701009 63.13109207 -73.20394897 -2.14537597 64.64810944 -73.20394897
		 -1.51701009 66.16513062 -73.20394897 6.5368702e-008 66.79349518 -73.20394897 1.51701021 66.16513062 -73.20394897
		 2.14537644 64.64810944 -73.20394897 1.90475368 62.74335098 -54.25110245 3.2684351e-008 61.95438766 -54.25110245
		 -1.90475368 62.74335098 -54.25110245 -2.69372845 64.64810944 -54.25109863 -1.90475368 66.55286407 -54.25109863
		 3.2684351e-008 67.34184265 -54.25110245 1.90475392 66.55287933 -54.25110245 2.69372845 64.64810944 -54.25109863
		 1.71088207 62.93723297 -63.72753143 4.9026518e-008 62.22856522 -63.72753143 -1.71088207 62.93723297 -63.72753143
		 -2.41955209 64.64810944 -63.72753143 -1.71088207 66.35899353 -63.72753143 4.9026518e-008 67.067672729 -63.72753143
		 1.71088207 66.35899353 -63.72753143 2.41955256 64.64810944 -63.72753143 2.09862566 62.54949188 -44.77466583
		 1.6342176e-008 61.68021011 -44.77466583 -2.09862566 62.54949188 -44.77466583 -2.96790481 64.64810944 -44.77466583
		 -2.09862566 66.74673462 -44.77466583 1.6342176e-008 67.6160202 -44.77466583 2.098625898 66.74673462 -44.77466583
		 2.96790504 64.64810944 -44.77466583 1.80781782 62.84030151 -58.98930359 4.0855436e-008 62.09147644 -58.98930359
		 -1.80781782 62.84030151 -58.98930359 -2.55664015 64.64810944 -58.98930359 -1.80781782 66.45593262 -58.98930359
		 4.0855436e-008 67.20475006 -58.98930359 1.80781794 66.45593262 -58.98930359 2.55664063 64.64810944 -58.98930359
		 2.0016896725 62.64642715 -49.51288605 2.83081698 64.64810944 -49.51288605 2.0016899109 66.64980316 -49.51288605
		 2.4513259e-008 67.47892761 -49.51288605 -2.0016896725 66.64980316 -49.51288605 -2.83081675 64.64810944 -49.51288605
		 -2.0016896725 62.64642715 -49.51288605 2.4513259e-008 61.81729889 -49.51288605 1.6139462 63.034164429 -68.46574402
		 5.7197617e-008 62.36564636 -68.46574402 -1.6139462 63.034164429 -68.46574402 -2.28246427 64.64810944 -68.46574402
		 -1.6139462 66.26206207 -68.46575165 5.7197617e-008 66.93057251 -68.46574402 1.6139462 66.26206207 -68.46575165
		 2.2824645 64.64810944 -68.46574402 2.19556141 62.4525528 -40.036457062 8.1710878e-009 61.54312515 -40.036453247
		 -2.19556141 62.4525528 -40.036457062 -3.10499287 64.64810944 -40.036453247 -2.19556141 66.84367371 -40.036453247
		 8.1710878e-009 67.75310516 -40.036457062 2.19556165 66.84367371 -40.036453247;
	setAttr ".vt[1826:1867]" 3.10499287 64.64810944 -40.036453247 3.42904234 61.21906662 -74.56079102
		 -9.5803593e-008 59.79870224 -74.56079102 -3.4290452 61.21906662 -74.56079102 -4.84939766 64.64810944 -74.56079102
		 -3.4290452 68.077163696 -74.56079102 -9.5803593e-008 69.49752808 -74.56079102 3.42904425 68.077163696 -74.56079102
		 4.84939766 64.64810944 -74.56079102 4.65320683 59.99490356 -77.67552948 -1.3000538e-007 58.067470551 -77.67552948
		 -4.65320921 59.99490356 -77.67552948 -6.58062649 64.64810944 -77.67552185 -4.65320921 69.30132294 -77.67552185
		 -1.3000538e-007 71.22874451 -77.67552948 4.65320873 69.30132294 -77.67552185 6.58062649 64.64810944 -77.67552185
		 3.58459377 61.063499451 -82.21142578 -1.0014953e-007 59.57871628 -82.21142578 -3.58459616 61.063499451 -82.21142578
		 -5.069379807 64.64810181 -82.21142578 -3.58459616 68.23269653 -82.21142578 -1.0014953e-007 69.71748352 -82.21143341
		 3.58459568 68.23269653 -82.21142578 5.069379807 64.64810181 -82.21142578 1.89702821 62.75107574 -87.98425293
		 -5.3000846e-008 61.9652977 -87.98426056 -1.89702928 62.75107574 -87.98425293 -2.68280268 64.64810181 -87.98425293
		 -1.89702928 66.54512787 -87.98426056 -5.3000846e-008 67.33090973 -87.98426056 1.89702916 66.54512787 -87.98426056
		 2.68280268 64.64810181 -87.98425293 0.71420801 63.93388748 -93.32118988 -1.9954172e-008 63.63805008 -93.32118988
		 -0.71420836 63.93388748 -93.32118988 -1.010042191 64.64810181 -93.32119751 -0.71420836 65.36230469 -93.32119751
		 -1.9954172e-008 65.65814209 -93.32118988 0.71420825 65.36230469 -93.32119751 1.010042191 64.64810181 -93.32119751
		 -3.0946115e-008 64.64810181 -95.20756531;
	setAttr -s 3672 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 0 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 10 1
		 0 10 1 1 11 1 2 12 1 3 13 1 4 14 1 5 15 1 6 16 1 7 17 1 8 18 1 9 19 1 20 0 1 20 1 1
		 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 10 65 1 11 66 1 21 22 1 12 67 1
		 22 23 1 13 68 1 23 24 1 14 69 1 24 25 1 15 70 1 25 26 1 16 71 1 26 27 1 17 72 1 27 28 1
		 18 73 1 28 29 1 19 74 1 29 30 1 30 21 1 21 31 1 22 32 1 31 32 1 23 33 1 32 33 1 24 34 1
		 33 34 1 25 35 1 34 35 1 26 36 1 35 36 1 27 37 1 36 37 1 28 38 1 37 38 1 29 39 1 38 39 1
		 30 40 1 39 40 1 40 31 1 31 61 1 32 62 1 41 42 1 33 63 1 42 43 1 36 56 1 37 57 1 44 45 1
		 38 58 1 45 46 1 39 59 1 46 47 1 40 60 1 47 48 1 48 41 1 33 49 1 34 50 1 49 50 1 35 51 1
		 50 51 1 36 52 1 51 52 1 43 53 1 49 64 1 44 54 1 52 55 1 55 54 1 56 44 1 57 45 1 58 46 1
		 59 47 1 60 48 1 61 41 1 62 42 1 63 43 1 64 53 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1
		 60 61 1 61 62 1 62 63 1 63 64 1 65 21 1 66 22 1 67 23 1 68 24 1 69 25 1 70 26 1 71 27 1
		 72 28 1 73 29 1 74 30 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1
		 73 74 1 74 65 1 41 75 1 42 76 1 75 76 1 43 77 1 76 77 1 44 78 1 45 79 1 78 79 1 46 80 1
		 79 80 1 47 81 1 80 81 1 48 82 1 81 82 1 82 75 1 53 83 1 77 83 1 54 84 1 78 84 1 75 85 1
		 76 86 1;
	setAttr ".ed[166:331]" 85 86 1 77 87 1 86 87 1 78 88 1 79 89 1 88 89 1 80 90 1
		 89 90 1 81 91 1 90 91 1 82 92 1 91 92 1 92 85 1 83 93 1 87 93 1 84 94 1 88 94 1 85 95 1
		 86 96 1 95 96 1 87 97 1 96 97 1 88 98 1 89 99 1 98 99 1 90 100 1 99 100 1 91 101 1
		 100 101 1 92 102 1 101 102 1 102 95 1 93 103 1 97 103 1 94 104 1 98 104 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 105 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 115 1 105 115 1 106 116 1 107 117 1 108 118 1 109 119 1 110 120 1 111 121 1 112 122 1
		 113 123 1 114 124 1 125 105 1 125 106 1 125 107 1 125 108 1 125 109 1 125 110 1 125 111 1
		 125 112 1 125 113 1 125 114 1 115 162 1 116 163 1 126 127 1 117 164 1 127 128 1 118 165 1
		 128 129 1 119 166 1 129 130 1 120 167 1 130 131 1 121 168 1 131 132 1 122 169 1 132 133 1
		 123 170 1 133 134 1 124 171 1 134 135 1 135 126 1 126 136 1 127 137 1 136 137 1 128 138 1
		 137 138 1 129 139 1 138 139 1 130 140 1 139 140 1 131 141 1 140 141 1 132 142 1 141 142 1
		 133 143 1 142 143 1 134 144 1 143 144 1 135 145 1 144 145 1 145 136 1 136 159 1 137 160 1
		 146 147 1 138 161 1 147 148 1 141 154 1 142 155 1 149 150 1 143 156 1 150 151 1 144 157 1
		 151 152 1 145 158 1 152 153 1 153 146 1 138 49 1 139 50 1 140 51 1 141 52 1 148 53 1
		 149 54 1 154 149 1 155 150 1 156 151 1 157 152 1 158 153 1 159 146 1 160 147 1 161 148 1
		 55 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 160 1 160 161 1 161 64 1
		 162 126 1 163 127 1 164 128 1 165 129 1 166 130 1 167 131 1 168 132 1 169 133 1 170 134 1
		 171 135 1 162 163 1 163 164 1;
	setAttr ".ed[332:497]" 164 165 1 165 166 1 166 167 1 167 168 1 168 169 1 169 170 1
		 170 171 1 171 162 1 146 172 1 147 173 1 172 173 1 148 174 1 173 174 1 149 175 1 150 176 1
		 175 176 1 151 177 1 176 177 1 152 178 1 177 178 1 153 179 1 178 179 1 179 172 1 174 83 1
		 175 84 1 172 180 1 173 181 1 180 181 1 174 182 1 181 182 1 175 183 1 176 184 1 183 184 1
		 177 185 1 184 185 1 178 186 1 185 186 1 179 187 1 186 187 1 187 180 1 182 93 1 183 94 1
		 180 188 1 181 189 1 188 189 1 182 190 1 189 190 1 183 191 1 184 192 1 191 192 1 185 193 1
		 192 193 1 186 194 1 193 194 1 187 195 1 194 195 1 195 188 1 190 103 1 191 104 1 103 199 1
		 190 198 1 97 200 1 189 197 1 96 201 1 95 202 1 188 196 1 196 209 1 197 208 1 198 207 1
		 199 206 1 200 205 1 201 204 1 202 203 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1
		 200 201 1 201 202 1 202 102 1 203 100 1 204 99 1 205 98 1 206 104 1 207 191 1 208 192 1
		 209 193 1 101 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1 208 209 1 209 194 1
		 210 356 0 356 211 0 211 357 0 357 212 0 212 358 0 358 213 0 213 359 0 359 214 0 214 360 0
		 360 215 0 215 361 0 361 216 0 216 362 0 362 217 0 217 363 0 363 218 0 218 364 0 364 219 0
		 219 365 0 365 210 0 220 350 1 350 221 1 221 351 1 351 222 1 222 288 1 288 223 1 223 291 1
		 291 224 1 224 294 1 294 225 1 225 280 1 280 226 1 226 352 1 352 227 1 227 353 1 353 228 1
		 228 354 1 354 229 1 229 355 1 355 220 1 226 308 1 308 242 1 225 281 1 281 230 1 226 282 1
		 282 231 1 230 283 1 283 231 1 222 287 1 287 232 1 231 306 1 306 241 1 223 289 1 289 233 1
		 232 290 1 290 233 1 224 292 1 292 234 1 233 293 1 293 234 1 234 295 1 295 230 1 230 296 1
		 296 235 1 231 297 1 297 236 1 235 298 1 298 236 1 232 300 1 300 237 1;
	setAttr ".ed[498:663]" 236 305 1 305 240 1 233 301 1 301 238 1 237 275 1 275 238 1
		 238 278 1 278 243 1 234 302 1 302 239 1 238 277 1 277 239 1 239 303 1 303 235 1 240 311 1
		 311 244 1 241 313 1 313 245 1 242 315 1 315 246 1 235 304 1 304 240 1 240 307 1 307 241 1
		 241 309 1 309 242 1 243 310 1 310 235 1 244 317 1 317 247 1 245 318 1 318 248 1 246 319 1
		 319 249 1 239 279 1 279 243 1 243 312 1 312 244 1 244 314 1 314 245 1 245 316 1 316 246 1
		 247 276 1 276 237 1 248 285 1 285 232 1 249 286 1 286 222 1 238 274 1 274 247 1 247 299 1
		 299 248 1 248 284 1 284 249 1 320 250 1 250 321 1 321 259 1 259 322 1 250 323 1 324 259 1
		 250 325 1 325 251 1 251 326 1 327 251 1 251 328 1 328 252 1 252 329 1 330 252 1 252 331 1
		 331 253 1 253 332 1 333 253 1 253 334 1 334 254 1 254 335 1 336 254 1 254 337 1 337 255 1
		 255 338 1 339 255 1 255 340 1 340 256 1 256 341 1 342 256 1 256 343 1 343 257 1 257 344 1
		 345 257 1 257 346 1 346 258 1 258 347 1 348 258 1 258 349 1 349 259 1 326 465 1 220 485 1
		 329 467 1 332 469 1 335 471 1 338 473 1 341 475 1 344 477 1 347 479 1 324 481 1 211 327 1
		 320 210 1 212 330 1 213 333 1 214 336 1 215 339 1 216 342 1 217 345 1 218 348 1 219 322 1
		 228 369 1 369 260 1 260 371 1 371 220 1 261 373 1 373 262 1 229 370 1 370 260 1 260 372 1
		 372 261 1 261 375 1 375 246 1 262 377 1 377 221 1 220 374 1 374 262 1 262 376 1 376 249 1
		 263 379 1 379 261 1 264 380 1 380 242 1 228 378 1 378 263 1 263 386 1 386 264 1 264 382 1
		 382 227 1 228 383 1 383 265 1 263 384 1 384 266 1 265 385 1 385 266 1 264 387 1 387 267 1
		 266 388 1 388 267 1 227 389 1 389 268 1 267 390 1 390 268 1 268 391 1 391 265 1 265 392 1
		 392 269 1 266 393 1 393 270 1 269 394 1 394 270 1 267 395 1 395 271 1;
	setAttr ".ed[664:829]" 270 396 1 396 271 1 268 397 1 397 272 1 271 367 1 367 272 1
		 272 398 1 398 269 1 269 399 1 399 273 1 273 368 1 368 271 1 270 400 1 400 273 1 272 366 1
		 366 273 1 264 381 1 381 246 1 274 401 1 401 275 1 276 401 1 277 402 1 402 278 1 279 402 1
		 280 403 1 403 281 1 282 403 1 283 403 1 284 404 1 404 285 1 286 404 1 287 404 1 288 405 1
		 405 287 1 289 405 1 290 405 1 291 406 1 406 289 1 292 406 1 293 406 1 294 407 1 407 292 1
		 281 407 1 295 407 1 283 408 1 408 296 1 297 408 1 298 408 1 299 409 1 409 276 1 285 409 1
		 300 409 1 290 410 1 410 300 1 301 410 1 275 410 1 293 411 1 411 301 1 302 411 1 277 411 1
		 295 412 1 412 302 1 296 412 1 303 412 1 298 413 1 413 304 1 305 413 1 306 414 1 414 297 1
		 307 414 1 305 414 1 308 415 1 415 282 1 309 415 1 306 415 1 279 416 1 416 310 1 303 416 1
		 304 417 1 417 310 1 311 417 1 312 417 1 307 418 1 418 311 1 313 418 1 314 418 1 309 419 1
		 419 313 1 315 419 1 316 419 1 312 420 1 420 278 1 317 420 1 274 420 1 314 421 1 421 317 1
		 318 421 1 299 421 1 316 422 1 422 318 1 319 422 1 284 422 1 320 423 1 321 423 1 322 423 1
		 323 424 1 424 321 1 324 424 1 323 425 1 325 425 1 326 425 1 320 426 1 426 325 1 327 426 1
		 326 427 1 328 427 1 329 427 1 327 428 1 428 328 1 330 428 1 329 429 1 331 429 1 332 429 1
		 330 430 1 430 331 1 333 430 1 332 431 1 334 431 1 335 431 1 333 432 1 432 334 1 336 432 1
		 335 433 1 337 433 1 338 433 1 336 434 1 434 337 1 339 434 1 338 435 1 340 435 1 341 435 1
		 339 436 1 436 340 1 342 436 1 341 437 1 343 437 1 344 437 1 342 438 1 438 343 1 345 438 1
		 344 439 1 346 439 1 347 439 1 345 440 1 440 346 1 348 440 1 347 441 1 349 441 1 324 441 1
		 348 442 1 442 349 1 322 442 1 350 504 1 351 502 1 288 500 1 291 498 1;
	setAttr ".ed[830:995]" 294 496 1 280 494 1 352 492 1 353 490 1 354 488 1 355 486 1
		 426 356 1 428 357 1 430 358 1 432 359 1 434 360 1 436 361 1 438 362 1 440 363 1 442 364 1
		 423 365 1 366 443 1 443 367 1 368 443 1 354 444 1 444 369 1 370 444 1 370 445 1 445 371 1
		 355 445 1 372 446 1 446 373 1 371 446 1 374 446 1 375 447 1 447 319 1 373 447 1 376 447 1
		 374 448 1 448 377 1 350 448 1 376 449 1 449 286 1 377 449 1 351 449 1 378 450 1 450 379 1
		 369 450 1 372 450 1 380 451 1 451 315 1 381 451 1 352 452 1 452 308 1 382 452 1 380 452 1
		 378 453 1 453 383 1 384 453 1 385 453 1 386 454 1 454 384 1 387 454 1 388 454 1 382 455 1
		 455 387 1 389 455 1 390 455 1 353 456 1 456 389 1 383 456 1 391 456 1 385 457 1 457 392 1
		 393 457 1 394 457 1 388 458 1 458 393 1 395 458 1 396 458 1 390 459 1 459 395 1 397 459 1
		 367 459 1 391 460 1 460 397 1 392 460 1 398 460 1 394 461 1 461 399 1 400 461 1 400 462 1
		 462 368 1 396 462 1 399 463 1 463 398 1 366 463 1 381 464 1 464 375 1 386 464 1 379 464 1
		 465 503 1 466 427 1 467 501 1 468 429 1 469 499 1 470 431 1 471 497 1 472 433 1 473 495 1
		 474 435 1 475 493 1 476 437 1 477 491 1 478 439 1 479 489 1 480 441 1 481 487 1 482 424 1
		 483 323 1 484 425 1 465 466 1 466 467 1 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1
		 472 473 1 473 474 1 474 475 1 475 476 1 476 477 1 477 478 1 478 479 1 479 480 1 480 481 1
		 481 482 1 482 483 1 483 484 1 484 465 1 485 483 1 486 482 1 487 229 1 488 480 1 489 228 1
		 490 478 1 491 227 1 492 476 1 493 226 1 494 474 1 495 225 1 496 472 1 497 224 1 498 470 1
		 499 223 1 500 468 1 501 222 1 502 466 1 503 221 1 504 484 1 485 486 1 486 487 1 487 488 1
		 488 489 1 489 490 1 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1;
	setAttr ".ed[996:1161]" 495 496 1 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1
		 501 502 1 502 503 1 503 504 1 504 485 1 505 584 1 584 566 1 506 534 1 534 571 1 571 532 1
		 532 507 1 508 544 1 544 576 1 576 542 1 542 509 1 510 552 1 552 581 1 505 585 1 585 568 1
		 568 533 1 533 506 1 570 531 1 531 507 1 506 535 1 535 573 1 573 543 1 543 508 1 507 538 1
		 538 574 1 574 541 1 541 509 1 508 545 1 545 579 1 579 551 1 551 510 1 509 548 1 548 580 1
		 510 553 1 553 583 1 583 557 1 557 505 1 584 565 1 565 585 1 566 527 0 527 565 1 527 521 0
		 521 528 1 528 565 1 528 568 1 570 529 0 529 521 0 529 572 1 572 530 1 530 521 1 531 572 1
		 532 572 1 571 530 1 528 575 1 575 533 1 530 575 1 534 575 1 534 513 1 513 535 1 571 536 1
		 536 513 1 536 522 1 522 537 1 537 513 1 537 573 1 532 512 1 512 536 1 538 512 1 574 539 1
		 539 512 1 539 522 1 539 514 1 514 540 1 540 522 1 541 514 1 542 514 1 576 540 1 537 515 1
		 515 543 1 540 515 1 544 515 1 544 519 1 519 545 1 576 546 1 546 519 1 546 523 1 523 547 1
		 547 519 1 547 579 1 542 518 1 518 546 1 548 518 1 580 549 0 549 518 1 549 523 0 550 523 0
		 581 550 0 547 520 1 520 551 1 550 520 1 552 520 1 552 582 1 582 553 1 581 554 0 554 582 1
		 554 524 0 524 555 1 555 582 1 555 583 1 556 524 0 566 556 0 555 569 1 569 557 1 556 569 1
		 584 569 1 525 558 0 558 570 0 580 559 0 559 525 0 559 517 1 517 560 1 560 525 1 548 517 1
		 541 517 1 574 560 1 558 511 1 511 531 1 560 511 1 538 511 1 553 578 1 578 551 1 583 561 1
		 561 578 1 561 526 1 526 562 1 562 578 1 562 579 1 557 567 1 567 561 1 585 567 1 568 563 1
		 563 567 1 563 526 1 563 577 1 577 564 1 564 526 1 533 577 1 535 577 1 573 564 1 562 516 1
		 516 545 1 564 516 1 543 516 1 527 550 1 523 521 0 566 581 1 556 554 1;
	setAttr ".ed[1162:1327]" 549 529 1 580 570 1 559 558 1 586 665 1 665 647 1 587 615 1
		 615 652 1 652 613 1 613 588 1 589 625 1 625 657 1 657 623 1 623 590 1 591 633 1 633 662 1
		 586 666 1 666 649 1 649 614 1 614 587 1 651 612 1 612 588 1 587 616 1 616 654 1 654 624 1
		 624 589 1 588 619 1 619 655 1 655 622 1 622 590 1 589 626 1 626 660 1 660 632 1 632 591 1
		 590 629 1 629 661 1 591 634 1 634 664 1 664 638 1 638 586 1 665 646 1 646 666 1 647 608 0
		 608 646 1 608 602 0 602 609 1 609 646 1 609 649 1 651 610 0 610 602 0 610 653 1 653 611 1
		 611 602 1 612 653 1 613 653 1 652 611 1 609 656 1 656 614 1 611 656 1 615 656 1 615 594 1
		 594 616 1 652 617 1 617 594 1 617 603 1 603 618 1 618 594 1 618 654 1 613 593 1 593 617 1
		 619 593 1 655 620 1 620 593 1 620 603 1 620 595 1 595 621 1 621 603 1 622 595 1 623 595 1
		 657 621 1 618 596 1 596 624 1 621 596 1 625 596 1 625 600 1 600 626 1 657 627 1 627 600 1
		 627 604 1 604 628 1 628 600 1 628 660 1 623 599 1 599 627 1 629 599 1 661 630 0 630 599 1
		 630 604 0 631 604 0 662 631 0 628 601 1 601 632 1 631 601 1 633 601 1 633 663 1 663 634 1
		 662 635 0 635 663 1 635 605 0 605 636 1 636 663 1 636 664 1 637 605 0 647 637 0 636 650 1
		 650 638 1 637 650 1 665 650 1 606 639 0 639 651 0 661 640 0 640 606 0 640 598 1 598 641 1
		 641 606 1 629 598 1 622 598 1 655 641 1 639 592 1 592 612 1 641 592 1 619 592 1 634 659 1
		 659 632 1 664 642 1 642 659 1 642 607 1 607 643 1 643 659 1 643 660 1 638 648 1 648 642 1
		 666 648 1 649 644 1 644 648 1 644 607 1 644 658 1 658 645 1 645 607 1 614 658 1 616 658 1
		 654 645 1 643 597 1 597 626 1 645 597 1 624 597 1 608 631 1 604 602 0 647 662 1 637 635 1
		 630 610 1 661 651 1 640 639 1 667 813 0 813 668 0 668 814 0 814 669 0;
	setAttr ".ed[1328:1493]" 669 815 0 815 670 0 670 816 0 816 671 0 671 817 0 817 672 0
		 672 818 0 818 673 0 673 819 0 819 674 0 674 820 0 820 675 0 675 821 0 821 676 0 676 822 0
		 822 667 0 677 807 1 807 678 1 678 808 1 808 679 1 679 745 1 745 680 1 680 748 1 748 681 1
		 681 751 1 751 682 1 682 737 1 737 683 1 683 809 1 809 684 1 684 810 1 810 685 1 685 811 1
		 811 686 1 686 812 1 812 677 1 683 765 1 765 699 1 682 738 1 738 687 1 683 739 1 739 688 1
		 687 740 1 740 688 1 679 744 1 744 689 1 688 763 1 763 698 1 680 746 1 746 690 1 689 747 1
		 747 690 1 681 749 1 749 691 1 690 750 1 750 691 1 691 752 1 752 687 1 687 753 1 753 692 1
		 688 754 1 754 693 1 692 755 1 755 693 1 689 757 1 757 694 1 693 762 1 762 697 1 690 758 1
		 758 695 1 694 732 1 732 695 1 695 735 1 735 700 1 691 759 1 759 696 1 695 734 1 734 696 1
		 696 760 1 760 692 1 697 768 1 768 701 1 698 770 1 770 702 1 699 772 1 772 703 1 692 761 1
		 761 697 1 697 764 1 764 698 1 698 766 1 766 699 1 700 767 1 767 692 1 701 774 1 774 704 1
		 702 775 1 775 705 1 703 776 1 776 706 1 696 736 1 736 700 1 700 769 1 769 701 1 701 771 1
		 771 702 1 702 773 1 773 703 1 704 733 1 733 694 1 705 742 1 742 689 1 706 743 1 743 679 1
		 695 731 1 731 704 1 704 756 1 756 705 1 705 741 1 741 706 1 777 707 1 707 778 1 778 716 1
		 716 779 1 707 780 1 781 716 1 707 782 1 782 708 1 708 783 1 784 708 1 708 785 1 785 709 1
		 709 786 1 787 709 1 709 788 1 788 710 1 710 789 1 790 710 1 710 791 1 791 711 1 711 792 1
		 793 711 1 711 794 1 794 712 1 712 795 1 796 712 1 712 797 1 797 713 1 713 798 1 799 713 1
		 713 800 1 800 714 1 714 801 1 802 714 1 714 803 1 803 715 1 715 804 1 805 715 1 715 806 1
		 806 716 1 783 922 1 677 942 1 786 924 1 789 926 1 792 928 1 795 930 1;
	setAttr ".ed[1494:1659]" 798 932 1 801 934 1 804 936 1 781 938 1 668 784 1 777 667 1
		 669 787 1 670 790 1 671 793 1 672 796 1 673 799 1 674 802 1 675 805 1 676 779 1 685 826 1
		 826 717 1 717 828 1 828 677 1 718 830 1 830 719 1 686 827 1 827 717 1 717 829 1 829 718 1
		 718 832 1 832 703 1 719 834 1 834 678 1 677 831 1 831 719 1 719 833 1 833 706 1 720 836 1
		 836 718 1 721 837 1 837 699 1 685 835 1 835 720 1 720 843 1 843 721 1 721 839 1 839 684 1
		 685 840 1 840 722 1 720 841 1 841 723 1 722 842 1 842 723 1 721 844 1 844 724 1 723 845 1
		 845 724 1 684 846 1 846 725 1 724 847 1 847 725 1 725 848 1 848 722 1 722 849 1 849 726 1
		 723 850 1 850 727 1 726 851 1 851 727 1 724 852 1 852 728 1 727 853 1 853 728 1 725 854 1
		 854 729 1 728 824 1 824 729 1 729 855 1 855 726 1 726 856 1 856 730 1 730 825 1 825 728 1
		 727 857 1 857 730 1 729 823 1 823 730 1 721 838 1 838 703 1 731 858 1 858 732 1 733 858 1
		 734 859 1 859 735 1 736 859 1 737 860 1 860 738 1 739 860 1 740 860 1 741 861 1 861 742 1
		 743 861 1 744 861 1 745 862 1 862 744 1 746 862 1 747 862 1 748 863 1 863 746 1 749 863 1
		 750 863 1 751 864 1 864 749 1 738 864 1 752 864 1 740 865 1 865 753 1 754 865 1 755 865 1
		 756 866 1 866 733 1 742 866 1 757 866 1 747 867 1 867 757 1 758 867 1 732 867 1 750 868 1
		 868 758 1 759 868 1 734 868 1 752 869 1 869 759 1 753 869 1 760 869 1 755 870 1 870 761 1
		 762 870 1 763 871 1 871 754 1 764 871 1 762 871 1 765 872 1 872 739 1 766 872 1 763 872 1
		 736 873 1 873 767 1 760 873 1 761 874 1 874 767 1 768 874 1 769 874 1 764 875 1 875 768 1
		 770 875 1 771 875 1 766 876 1 876 770 1 772 876 1 773 876 1 769 877 1 877 735 1 774 877 1
		 731 877 1 771 878 1 878 774 1 775 878 1 756 878 1 773 879 1 879 775 1;
	setAttr ".ed[1660:1825]" 776 879 1 741 879 1 777 880 1 778 880 1 779 880 1 780 881 1
		 881 778 1 781 881 1 780 882 1 782 882 1 783 882 1 777 883 1 883 782 1 784 883 1 783 884 1
		 785 884 1 786 884 1 784 885 1 885 785 1 787 885 1 786 886 1 788 886 1 789 886 1 787 887 1
		 887 788 1 790 887 1 789 888 1 791 888 1 792 888 1 790 889 1 889 791 1 793 889 1 792 890 1
		 794 890 1 795 890 1 793 891 1 891 794 1 796 891 1 795 892 1 797 892 1 798 892 1 796 893 1
		 893 797 1 799 893 1 798 894 1 800 894 1 801 894 1 799 895 1 895 800 1 802 895 1 801 896 1
		 803 896 1 804 896 1 802 897 1 897 803 1 805 897 1 804 898 1 806 898 1 781 898 1 805 899 1
		 899 806 1 779 899 1 807 961 1 808 959 1 745 957 1 748 955 1 751 953 1 737 951 1 809 949 1
		 810 947 1 811 945 1 812 943 1 883 813 1 885 814 1 887 815 1 889 816 1 891 817 1 893 818 1
		 895 819 1 897 820 1 899 821 1 880 822 1 823 900 1 900 824 1 825 900 1 811 901 1 901 826 1
		 827 901 1 827 902 1 902 828 1 812 902 1 829 903 1 903 830 1 828 903 1 831 903 1 832 904 1
		 904 776 1 830 904 1 833 904 1 831 905 1 905 834 1 807 905 1 833 906 1 906 743 1 834 906 1
		 808 906 1 835 907 1 907 836 1 826 907 1 829 907 1 837 908 1 908 772 1 838 908 1 809 909 1
		 909 765 1 839 909 1 837 909 1 835 910 1 910 840 1 841 910 1 842 910 1 843 911 1 911 841 1
		 844 911 1 845 911 1 839 912 1 912 844 1 846 912 1 847 912 1 810 913 1 913 846 1 840 913 1
		 848 913 1 842 914 1 914 849 1 850 914 1 851 914 1 845 915 1 915 850 1 852 915 1 853 915 1
		 847 916 1 916 852 1 854 916 1 824 916 1 848 917 1 917 854 1 849 917 1 855 917 1 851 918 1
		 918 856 1 857 918 1 857 919 1 919 825 1 853 919 1 856 920 1 920 855 1 823 920 1 838 921 1
		 921 832 1 843 921 1 836 921 1 922 960 1 923 884 1 924 958 1 925 886 1;
	setAttr ".ed[1826:1991]" 926 956 1 927 888 1 928 954 1 929 890 1 930 952 1 931 892 1
		 932 950 1 933 894 1 934 948 1 935 896 1 936 946 1 937 898 1 938 944 1 939 881 1 940 780 1
		 941 882 1 922 923 1 923 924 1 924 925 1 925 926 1 926 927 1 927 928 1 928 929 1 929 930 1
		 930 931 1 931 932 1 932 933 1 933 934 1 934 935 1 935 936 1 936 937 1 937 938 1 938 939 1
		 939 940 1 940 941 1 941 922 1 942 940 1 943 939 1 944 686 1 945 937 1 946 685 1 947 935 1
		 948 684 1 949 933 1 950 683 1 951 931 1 952 682 1 953 929 1 954 681 1 955 927 1 956 680 1
		 957 925 1 958 679 1 959 923 1 960 678 1 961 941 1 942 943 1 943 944 1 944 945 1 945 946 1
		 946 947 1 947 948 1 948 949 1 949 950 1 950 951 1 951 952 1 952 953 1 953 954 1 954 955 1
		 955 956 1 956 957 1 957 958 1 958 959 1 959 960 1 960 961 1 961 942 1 963 962 0 964 965 0
		 967 966 1 966 962 1 963 967 1 969 968 1 968 1059 1 967 1058 1 971 970 1 970 968 1
		 969 971 1 973 972 1 972 965 1 964 973 1 973 976 1 974 975 1 975 977 1 976 974 1 977 972 1
		 976 977 1 974 978 1 978 979 1 979 975 1 981 980 1 980 979 1 978 981 1 983 982 1 982 980 1
		 981 983 1 983 984 1 984 985 1 985 982 1 987 1019 1 984 1020 1 986 987 1 989 988 1
		 988 987 1 986 989 1 989 990 1 990 991 1 991 988 1 993 992 1 992 991 1 990 993 1 993 994 1
		 994 995 1 995 992 1 994 996 1 996 997 1 997 995 1 996 998 1 998 999 1 999 997 1 998 970 1
		 966 1000 1 1000 1001 1 1001 962 0 1002 964 0 1003 973 1 1002 1003 1 1004 1060 1 968 1004 1
		 1005 1004 1 970 1005 1 1006 976 1 1003 1006 1 1006 1007 1 1007 974 1 1007 1008 1
		 1008 978 1 1008 1009 1 1009 981 1 1009 1010 1 1010 983 1 1010 1011 1 1011 984 1 1011 1021 1
		 1012 986 1 1012 1013 1 1013 989 1 1013 1014 1 1014 990 1 1014 1015 1 1015 993 1 1015 1016 1
		 1016 994 1 1016 1017 1 1017 996 1 1017 1018 1 1018 998 1;
	setAttr ".ed[1992:2157]" 971 999 1 1018 1005 1 1019 985 1 1020 986 1 1021 1012 1
		 1019 1020 1 1020 1021 1 1023 1022 0 1025 1024 1 1024 1037 1 1023 1038 1 1025 1026 1
		 1026 1027 1 1027 1024 1 1021 1068 1 1028 1012 1 1029 1030 1 1030 1028 1 1029 1031 1
		 1031 1032 1 1032 1030 1 1034 1032 1 1031 1033 1 1033 1034 1 1033 1035 1 1035 1036 1
		 1036 1034 1 1035 1027 1 1026 1036 1 1037 1022 1 1038 1025 1 1037 1038 1 1039 1023 0
		 1040 1038 1 1039 1040 1 1041 1025 1 1040 1041 1 1030 1042 1 1042 1043 1 1043 1028 1
		 1043 1013 1 1044 1042 1 1032 1044 1 1045 1044 1 1034 1045 1 1046 1045 1 1036 1046 1
		 1026 1047 1 1047 1046 1 1041 1047 1 1022 1048 0 1048 1002 0 1049 1068 1 1011 1049 1
		 1050 1049 1 1010 1050 1 1051 1050 1 1009 1051 1 1008 1052 1 1052 1051 1 1007 1053 1
		 1053 1052 1 1048 1054 1 1054 1003 1 1006 1055 1 1055 1053 1 1054 1055 1 1037 1054 1
		 1024 1055 1 1027 1053 1 1035 1052 1 1033 1051 1 1031 1050 1 1029 1049 1 1056 1039 0
		 1001 1056 0 1056 1057 1 1057 1040 1 1000 1057 1 1058 969 1 1059 966 1 1060 1000 1
		 1058 1059 1 1059 1060 1 1060 1061 1 1061 1057 1 1061 1041 1 1061 1062 1 1062 1047 1
		 1004 1062 1 1062 1063 1 1063 1046 1 1005 1063 1 1018 1064 1 1064 1063 1 1064 1045 1
		 1065 1044 1 1064 1065 1 1017 1065 1 1066 1042 1 1065 1066 1 1016 1066 1 1015 1067 1
		 1067 1066 1 1067 1043 1 1067 1014 1 1069 1028 1 1069 1029 1 1068 1069 1 1069 1012 1
		 1068 1012 1 963 1070 0 1071 965 0 967 1072 1 1072 1070 1 969 1073 1 1073 1146 1 971 1074 1
		 1074 1073 1 1075 972 1 1071 1075 1 1075 1077 1 1076 975 1 1077 1076 1 1077 977 1
		 1076 1078 1 1078 979 1 1079 980 1 1078 1079 1 1080 982 1 1079 1080 1 1080 1081 1
		 1081 985 1 1081 1108 1 1082 987 1 1083 988 1 1082 1083 1 1083 1084 1 1084 991 1 1085 992 1
		 1084 1085 1 1085 1086 1 1086 995 1 1086 1087 1 1087 997 1 1087 1088 1 1088 999 1
		 1088 1074 1 1072 1089 1 1089 1090 1 1090 1070 0 1091 1071 0 1092 1075 1 1091 1092 1
		 1093 1147 1 1073 1093 1 1094 1093 1 1074 1094 1 1095 1077 1 1092 1095 1 1095 1096 1
		 1096 1076 1 1096 1097 1 1097 1078 1 1097 1098 1 1098 1079 1;
	setAttr ".ed[2158:2323]" 1098 1099 1 1099 1080 1 1099 1100 1 1100 1081 1 1100 1109 1
		 1101 1082 1 1101 1102 1 1102 1083 1 1102 1103 1 1103 1084 1 1103 1104 1 1104 1085 1
		 1104 1105 1 1105 1086 1 1105 1106 1 1106 1087 1 1106 1107 1 1107 1088 1 1107 1094 1
		 1108 1082 1 1109 1101 1 1019 1108 1 1108 1109 1 1111 1110 0 1113 1112 1 1112 1125 1
		 1111 1126 1 1113 1114 1 1114 1115 1 1115 1112 1 1109 1155 1 1116 1101 1 1117 1118 1
		 1118 1116 1 1117 1119 1 1119 1120 1 1120 1118 1 1122 1120 1 1119 1121 1 1121 1122 1
		 1121 1123 1 1123 1124 1 1124 1122 1 1123 1115 1 1114 1124 1 1125 1110 1 1126 1113 1
		 1125 1126 1 1127 1111 0 1128 1126 1 1127 1128 1 1129 1113 1 1128 1129 1 1118 1130 1
		 1130 1131 1 1131 1116 1 1131 1102 1 1132 1130 1 1120 1132 1 1133 1132 1 1122 1133 1
		 1134 1133 1 1124 1134 1 1114 1135 1 1135 1134 1 1129 1135 1 1110 1136 0 1136 1091 0
		 1137 1155 1 1100 1137 1 1138 1137 1 1099 1138 1 1139 1138 1 1098 1139 1 1097 1140 1
		 1140 1139 1 1096 1141 1 1141 1140 1 1136 1142 1 1142 1092 1 1095 1143 1 1143 1141 1
		 1142 1143 1 1125 1142 1 1112 1143 1 1115 1141 1 1123 1140 1 1121 1139 1 1119 1138 1
		 1117 1137 1 1144 1127 0 1090 1144 0 1144 1145 1 1145 1128 1 1089 1145 1 1146 1072 1
		 1147 1089 1 1058 1146 1 1146 1147 1 1147 1148 1 1148 1145 1 1148 1129 1 1148 1149 1
		 1149 1135 1 1093 1149 1 1149 1150 1 1150 1134 1 1094 1150 1 1107 1151 1 1151 1150 1
		 1151 1133 1 1152 1132 1 1151 1152 1 1106 1152 1 1153 1130 1 1152 1153 1 1105 1153 1
		 1104 1154 1 1154 1153 1 1154 1131 1 1154 1103 1 1156 1116 1 1156 1117 1 1155 1156 1
		 1156 1101 1 1155 1101 1 1157 1180 0 1180 1158 0 1159 1169 1 1169 1160 1 1161 1172 1
		 1172 1162 1 1163 1175 0 1175 1164 0 1157 1179 1 1179 1159 1 1158 1177 1 1177 1160 1
		 1159 1170 1 1170 1161 1 1160 1171 1 1171 1162 1 1161 1173 1 1173 1163 1 1162 1174 1
		 1174 1164 1 1163 1178 0 1178 1157 0 1164 1176 0 1176 1158 0 1157 1181 1 1181 1165 1
		 1158 1182 1 1182 1166 1 1165 1183 1 1183 1166 1 1160 1184 1 1184 1167 1 1166 1185 1
		 1185 1167 1 1159 1186 1 1186 1168 1 1168 1187 1 1187 1167 1 1165 1188 1 1188 1168 1;
	setAttr ".ed[2324:2489]" 1165 1189 1 1166 1190 1 1167 1191 1 1168 1192 1 1169 1194 1
		 1194 1170 1 1171 1194 1 1172 1194 1 1172 1195 1 1195 1173 1 1174 1195 1 1175 1195 1
		 1176 1196 1 1196 1177 1 1174 1196 1 1171 1196 1 1178 1197 1 1197 1173 1 1179 1197 1
		 1170 1197 1 1180 1198 1 1198 1181 1 1182 1198 1 1183 1198 1 1177 1199 1 1199 1182 1
		 1184 1199 1 1185 1199 1 1169 1200 1 1200 1184 1 1186 1200 1 1187 1200 1 1179 1201 1
		 1201 1186 1 1181 1201 1 1188 1201 1 1183 1202 1 1202 1189 1 1190 1202 1 1193 1202 1
		 1185 1203 1 1203 1190 1 1191 1203 1 1193 1203 1 1187 1204 1 1204 1191 1 1192 1204 1
		 1193 1204 1 1188 1205 1 1205 1192 1 1189 1205 1 1193 1205 1 1206 1229 0 1229 1207 0
		 1208 1218 1 1218 1209 1 1210 1221 1 1221 1211 1 1212 1224 0 1224 1213 0 1206 1228 1
		 1228 1208 1 1207 1226 1 1226 1209 1 1208 1219 1 1219 1210 1 1209 1220 1 1220 1211 1
		 1210 1222 1 1222 1212 1 1211 1223 1 1223 1213 1 1212 1227 0 1227 1206 0 1213 1225 0
		 1225 1207 0 1206 1230 1 1230 1214 1 1207 1231 1 1231 1215 1 1214 1232 1 1232 1215 1
		 1209 1233 1 1233 1216 1 1215 1234 1 1234 1216 1 1208 1235 1 1235 1217 1 1217 1236 1
		 1236 1216 1 1214 1237 1 1237 1217 1 1214 1238 1 1215 1239 1 1216 1240 1 1217 1241 1
		 1218 1243 1 1243 1219 1 1220 1243 1 1221 1243 1 1221 1244 1 1244 1222 1 1223 1244 1
		 1224 1244 1 1225 1245 1 1245 1226 1 1223 1245 1 1220 1245 1 1227 1246 1 1246 1222 1
		 1228 1246 1 1219 1246 1 1229 1247 1 1247 1230 1 1231 1247 1 1232 1247 1 1226 1248 1
		 1248 1231 1 1233 1248 1 1234 1248 1 1218 1249 1 1249 1233 1 1235 1249 1 1236 1249 1
		 1228 1250 1 1250 1235 1 1230 1250 1 1237 1250 1 1232 1251 1 1251 1238 1 1239 1251 1
		 1242 1251 1 1234 1252 1 1252 1239 1 1240 1252 1 1242 1252 1 1236 1253 1 1253 1240 1
		 1241 1253 1 1242 1253 1 1237 1254 1 1254 1241 1 1238 1254 1 1242 1254 1 1255 1256 0
		 1256 1257 0 1257 1258 0 1258 1259 0 1259 1260 0 1260 1261 0 1261 1262 0 1262 1263 0
		 1263 1264 0 1264 1255 0 1265 1266 0 1266 1267 0 1267 1268 0 1268 1269 0 1269 1270 0
		 1270 1271 0 1271 1272 0 1272 1273 0 1273 1274 0 1274 1265 0 1255 1265 0 1256 1266 0;
	setAttr ".ed[2490:2655]" 1257 1267 0 1258 1268 0 1259 1269 0 1260 1270 0 1261 1271 0
		 1262 1272 0 1263 1273 0 1264 1274 0 1275 1255 1 1275 1256 1 1275 1257 1 1275 1258 1
		 1275 1259 1 1275 1260 1 1275 1261 1 1275 1262 1 1275 1263 1 1275 1264 1 1276 1277 0
		 1277 1278 0 1278 1279 0 1279 1280 0 1280 1281 0 1281 1282 0 1282 1283 0 1283 1284 0
		 1284 1285 0 1285 1276 0 1286 1287 0 1287 1288 0 1288 1289 0 1289 1290 0 1290 1291 0
		 1291 1292 0 1292 1293 0 1293 1294 0 1294 1295 0 1295 1286 0 1276 1286 0 1277 1287 0
		 1278 1288 0 1279 1289 0 1280 1290 0 1281 1291 0 1282 1292 0 1283 1293 0 1284 1294 0
		 1285 1295 0 1296 1276 1 1296 1277 1 1296 1278 1 1296 1279 1 1296 1280 1 1296 1281 1
		 1296 1282 1 1296 1283 1 1296 1284 1 1296 1285 1 1265 1297 1 1266 1298 1 1297 1298 0
		 1267 1299 1 1298 1299 0 1268 1300 1 1299 1300 0 1269 1301 1 1300 1301 0 1270 1302 1
		 1301 1302 0 1271 1303 1 1302 1303 0 1272 1304 1 1303 1304 0 1273 1305 1 1304 1305 0
		 1274 1306 1 1305 1306 0 1306 1297 0 1286 1307 1 1287 1308 1 1307 1308 0 1288 1309 1
		 1308 1309 0 1289 1310 1 1309 1310 0 1290 1311 1 1310 1311 0 1291 1312 1 1311 1312 0
		 1292 1313 1 1312 1313 0 1293 1314 1 1313 1314 0 1294 1315 1 1314 1315 0 1295 1316 1
		 1315 1316 0 1316 1307 0 1297 1317 0 1298 1318 0 1317 1318 0 1318 1319 1 1317 1319 1
		 1299 1320 0 1318 1320 0 1320 1319 1 1300 1321 0 1320 1321 0 1321 1319 1 1301 1322 0
		 1321 1322 0 1322 1319 1 1302 1323 0 1322 1323 0 1323 1319 1 1303 1324 0 1323 1324 0
		 1324 1319 1 1304 1325 0 1324 1325 0 1325 1319 1 1305 1326 0 1325 1326 0 1326 1319 1
		 1306 1327 0 1326 1327 0 1327 1319 1 1327 1317 0 1307 1328 0 1328 1329 1 1308 1330 0
		 1330 1329 1 1328 1330 0 1309 1331 0 1331 1329 1 1330 1331 0 1310 1332 0 1332 1329 1
		 1331 1332 0 1311 1333 0 1333 1329 1 1332 1333 0 1312 1334 0 1334 1329 1 1333 1334 0
		 1313 1335 0 1335 1329 1 1334 1335 0 1314 1336 0 1336 1329 1 1335 1336 0 1315 1337 0
		 1337 1329 1 1336 1337 0 1316 1338 0 1338 1329 1 1337 1338 0 1338 1328 0 1340 1339 0
		 1342 1341 0 1341 1340 0 1344 1343 0 1343 1345 0 1345 1346 0 1347 1342 0 1346 1347 0;
	setAttr ".ed[2656:2821]" 1349 1348 1 1348 1343 1 1344 1349 1 1351 1350 1 1350 1341 1
		 1342 1351 1 1351 1352 1 1352 1353 1 1353 1350 1 1352 1354 1 1354 1355 1 1355 1353 1
		 1354 1356 1 1356 1357 1 1357 1355 1 1359 1420 1 1356 1421 1 1358 1359 1 1358 1360 1
		 1360 1361 1 1361 1359 1 1360 1392 1 1362 1363 1 1363 1393 1 1362 1394 1 1364 1365 1
		 1365 1395 1 1364 1366 1 1366 1367 1 1367 1365 1 1366 1425 1 1368 1369 1 1369 1426 1
		 1368 1370 1 1370 1371 1 1371 1369 1 1370 1372 1 1372 1373 1 1373 1371 1 1372 1348 1
		 1349 1373 1 1348 1374 1 1374 1345 1 1374 1375 1 1375 1346 1 1375 1376 1 1376 1347 1
		 1376 1351 1 1376 1377 1 1377 1352 1 1375 1378 1 1378 1377 1 1379 1378 1 1374 1379 1
		 1372 1379 1 1370 1380 1 1380 1379 1 1380 1381 1 1381 1378 1 1381 1382 1 1382 1377 1
		 1382 1354 1 1382 1383 1 1383 1356 1 1381 1384 1 1384 1383 1 1380 1385 1 1385 1384 1
		 1368 1385 1 1383 1422 1 1386 1358 1 1384 1423 1 1387 1386 1 1388 1387 1 1385 1424 1
		 1366 1388 1 1364 1389 1 1389 1388 1 1389 1390 1 1390 1387 1 1391 1386 1 1390 1391 1
		 1391 1360 1 1392 1362 1 1393 1361 1 1392 1393 1 1390 1392 1 1389 1362 1 1394 1364 1
		 1395 1363 1 1394 1395 1 1340 1396 1 1396 1397 1 1397 1339 1 1396 1398 1 1398 1399 1
		 1399 1397 1 1398 1400 1 1400 1401 1 1401 1399 1 1400 1402 1 1402 1403 0 1403 1401 1
		 1341 1404 1 1404 1396 1 1404 1405 1 1405 1398 1 1405 1406 1 1406 1400 1 1406 1407 1
		 1407 1402 0 1408 1427 1 1369 1409 1 1408 1367 1 1410 1428 1 1413 1411 1 1410 1412 1
		 1412 1429 1 1415 1414 1 1414 1412 1 1410 1415 1 1415 1416 1 1416 1417 1 1417 1414 1
		 1416 1418 1 1418 1419 1 1419 1417 1 1416 1409 1 1369 1418 1 1420 1357 1 1421 1358 1
		 1422 1386 1 1423 1387 1 1424 1388 1 1425 1368 1 1426 1367 1 1427 1409 1 1428 1411 1
		 1429 1413 1 1420 1421 1 1421 1422 1 1422 1423 1 1423 1424 1 1424 1425 1 1425 1426 1
		 1426 1427 1 1428 1429 1 1371 1419 1 1413 1430 1 1430 1431 0 1431 1411 1 1431 1440 0
		 1432 1433 1 1433 1447 1 1408 1434 1 1434 1365 1 1432 1435 0 1435 1436 1 1436 1433 1
		 1437 1434 1 1437 1395 1 1435 1456 0 1438 1439 1 1439 1457 1 1440 1448 0 1441 1411 1;
	setAttr ".ed[2822:2987]" 1440 1441 1 1441 1442 1 1442 1428 1 1443 1410 1 1442 1443 1
		 1444 1415 1 1443 1444 1 1444 1409 1 1445 1427 1 1444 1445 1 1443 1446 1 1446 1445 1
		 1447 1441 1 1448 1432 0 1447 1448 1 1442 1449 1 1449 1446 1 1447 1449 1 1433 1450 1
		 1450 1449 1 1450 1451 1 1451 1446 1 1451 1452 1 1452 1445 1 1452 1408 1 1436 1453 1
		 1453 1450 1 1454 1451 1 1453 1454 1 1455 1452 1 1454 1455 1 1455 1434 1 1456 1438 0
		 1457 1436 1 1456 1457 1 1457 1458 1 1458 1453 1 1459 1454 1 1458 1459 1 1459 1460 1
		 1460 1455 1 1460 1437 1 1462 1461 1 1461 1407 0 1406 1462 1 1462 1463 1 1463 1464 1
		 1464 1461 0 1350 1465 1 1465 1404 1 1353 1466 1 1466 1465 1 1467 1404 1 1466 1467 1
		 1467 1468 1 1468 1405 1 1468 1462 1 1355 1469 1 1469 1466 1 1469 1470 1 1470 1467 1
		 1471 1468 1 1470 1471 1 1471 1463 1 1473 1439 1 1438 1472 0 1472 1473 1 1471 1474 1
		 1474 1475 1 1475 1463 1 1474 1476 1 1476 1477 1 1477 1475 1 1476 1478 1 1478 1479 1
		 1479 1477 1 1481 1480 1 1480 1479 1 1478 1481 1 1481 1482 1 1482 1483 1 1483 1480 1
		 1482 1500 1 1484 1485 1 1485 1501 1 1484 1486 1 1486 1487 1 1487 1485 1 1489 1488 1
		 1488 1487 1 1486 1489 1 1490 1473 1 1473 1488 1 1489 1490 1 1490 1491 1 1491 1439 1
		 1491 1458 1 1472 1492 0 1492 1488 1 1492 1493 0 1493 1487 1 1494 1485 1 1493 1494 0
		 1494 1502 0 1495 1483 1 1495 1496 0 1496 1480 1 1496 1497 0 1497 1479 1 1497 1498 0
		 1498 1477 1 1498 1499 0 1499 1475 1 1499 1464 0 1470 1476 1 1469 1478 1 1355 1481 1
		 1357 1482 1 1500 1484 1 1501 1483 1 1502 1495 0 1500 1501 1 1501 1502 1 1420 1500 1
		 1359 1484 1 1361 1486 1 1393 1489 1 1363 1490 1 1437 1490 1 1460 1491 1 1503 1339 0
		 1505 1504 0 1504 1503 0 1344 1506 0 1506 1507 0 1507 1508 0 1509 1505 0 1508 1509 0
		 1349 1510 1 1510 1506 1 1512 1511 1 1511 1504 1 1505 1512 1 1512 1513 1 1513 1514 1
		 1514 1511 1 1513 1515 1 1515 1516 1 1516 1514 1 1515 1517 1 1517 1518 1 1518 1516 1
		 1520 1570 1 1517 1571 1 1519 1520 1 1519 1521 1 1521 1522 1 1522 1520 1 1521 1551 1
		 1523 1524 1 1524 1552 1 1523 1553 1 1525 1526 1 1526 1554 1 1525 1527 1 1527 1528 1;
	setAttr ".ed[2988:3153]" 1528 1526 1 1527 1575 1 1529 1530 1 1530 1576 1 1529 1531 1
		 1531 1371 1 1371 1530 1 1531 1532 1 1532 1373 1 1532 1510 1 1510 1533 1 1533 1507 1
		 1533 1534 1 1534 1508 1 1534 1535 1 1535 1509 1 1535 1512 1 1535 1536 1 1536 1513 1
		 1534 1537 1 1537 1536 1 1538 1537 1 1533 1538 1 1532 1538 1 1531 1539 1 1539 1538 1
		 1539 1540 1 1540 1537 1 1540 1541 1 1541 1536 1 1541 1515 1 1541 1542 1 1542 1517 1
		 1540 1543 1 1543 1542 1 1539 1544 1 1544 1543 1 1529 1544 1 1542 1572 1 1545 1519 1
		 1543 1573 1 1546 1545 1 1547 1546 1 1544 1574 1 1527 1547 1 1525 1548 1 1548 1547 1
		 1548 1549 1 1549 1546 1 1550 1545 1 1549 1550 1 1550 1521 1 1551 1523 1 1552 1522 1
		 1551 1552 1 1549 1551 1 1548 1523 1 1553 1525 1 1554 1524 1 1553 1554 1 1503 1555 1
		 1555 1397 1 1555 1556 1 1556 1399 1 1556 1557 1 1557 1401 1 1557 1558 1 1558 1403 0
		 1504 1559 1 1559 1555 1 1559 1560 1 1560 1556 1 1560 1561 1 1561 1557 1 1561 1562 1
		 1562 1558 0 1563 1577 1 1530 1564 1 1563 1528 1 1565 1578 1 1413 1566 1 1565 1412 1
		 1567 1414 1 1565 1567 1 1567 1568 1 1568 1417 1 1568 1569 1 1569 1419 1 1568 1564 1
		 1530 1569 1 1570 1518 1 1571 1519 1 1572 1545 1 1573 1546 1 1574 1547 1 1575 1529 1
		 1576 1528 1 1577 1564 1 1578 1566 1 1570 1571 1 1571 1572 1 1572 1573 1 1573 1574 1
		 1574 1575 1 1575 1576 1 1576 1577 1 1578 1429 1 1430 1579 0 1579 1566 1 1579 1588 0
		 1580 1581 1 1581 1595 1 1563 1582 1 1582 1526 1 1580 1583 0 1583 1584 1 1584 1581 1
		 1585 1582 1 1585 1554 1 1583 1604 0 1586 1587 1 1587 1605 1 1588 1596 0 1589 1566 1
		 1588 1589 1 1589 1590 1 1590 1578 1 1591 1565 1 1590 1591 1 1592 1567 1 1591 1592 1
		 1592 1564 1 1593 1577 1 1592 1593 1 1591 1594 1 1594 1593 1 1595 1589 1 1596 1580 0
		 1595 1596 1 1590 1597 1 1597 1594 1 1595 1597 1 1581 1598 1 1598 1597 1 1598 1599 1
		 1599 1594 1 1599 1600 1 1600 1593 1 1600 1563 1 1584 1601 1 1601 1598 1 1602 1599 1
		 1601 1602 1 1603 1600 1 1602 1603 1 1603 1582 1 1604 1586 0 1605 1584 1 1604 1605 1
		 1605 1606 1 1606 1601 1 1607 1602 1 1606 1607 1 1607 1608 1 1608 1603 1 1608 1585 1;
	setAttr ".ed[3154:3319]" 1610 1609 1 1609 1562 0 1561 1610 1 1610 1611 1 1611 1612 1
		 1612 1609 0 1511 1613 1 1613 1559 1 1514 1614 1 1614 1613 1 1615 1559 1 1614 1615 1
		 1615 1616 1 1616 1560 1 1616 1610 1 1516 1617 1 1617 1614 1 1617 1618 1 1618 1615 1
		 1619 1616 1 1618 1619 1 1619 1611 1 1621 1587 1 1586 1620 0 1620 1621 1 1619 1622 1
		 1622 1623 1 1623 1611 1 1622 1624 1 1624 1625 1 1625 1623 1 1624 1626 1 1626 1627 1
		 1627 1625 1 1629 1628 1 1628 1627 1 1626 1629 1 1629 1630 1 1630 1631 1 1631 1628 1
		 1630 1648 1 1632 1633 1 1633 1649 1 1632 1634 1 1634 1635 1 1635 1633 1 1637 1636 1
		 1636 1635 1 1634 1637 1 1638 1621 1 1621 1636 1 1637 1638 1 1638 1639 1 1639 1587 1
		 1639 1606 1 1620 1640 0 1640 1636 1 1640 1641 0 1641 1635 1 1642 1633 1 1641 1642 0
		 1642 1650 0 1643 1631 1 1643 1644 0 1644 1628 1 1644 1645 0 1645 1627 1 1645 1646 0
		 1646 1625 1 1646 1647 0 1647 1623 1 1647 1612 0 1618 1624 1 1617 1626 1 1516 1629 1
		 1518 1630 1 1648 1632 1 1649 1631 1 1650 1643 0 1648 1649 1 1649 1650 1 1570 1648 1
		 1520 1632 1 1522 1634 1 1552 1637 1 1524 1638 1 1585 1638 1 1608 1639 1 1339 1651 1
		 1651 1652 1 1652 1653 1 1340 1654 1 1653 1654 1 1654 1651 0 1652 1655 1 1655 1656 1
		 1656 1653 1 1342 1657 1 1341 1658 0 1657 1658 0 1658 1659 1 1659 1660 1 1660 1657 1
		 1653 1659 1 1658 1654 0 1661 1662 1 1661 1663 1 1663 1664 1 1664 1662 1 1663 1665 1
		 1665 1666 1 1666 1664 1 1344 1667 1 1343 1668 1 1667 1668 0 1668 1666 1 1665 1667 1
		 1669 1666 1 1345 1670 1 1668 1670 0 1670 1669 1 1671 1669 1 1346 1672 1 1670 1672 0
		 1672 1671 1 1660 1673 1 1347 1674 1 1673 1674 1 1674 1657 0 1673 1671 1 1672 1674 0
		 1671 1664 1 1673 1662 1 1655 1661 1 1662 1656 1 1660 1656 1 1503 1675 1 1675 1651 0
		 1676 1675 1 1652 1676 1 1677 1676 1 1655 1677 1 1505 1679 1 1678 1679 1 1680 1678 1
		 1504 1681 0 1681 1680 1 1679 1681 0 1681 1675 0 1676 1680 1 1682 1683 1 1663 1682 1
		 1661 1683 1 1684 1682 1 1665 1684 1 1506 1685 1 1685 1684 1 1667 1685 0 1507 1686 1
		 1686 1687 1 1685 1686 0 1687 1684 1 1508 1688 1 1688 1689 1 1686 1688 0 1689 1687 1;
	setAttr ".ed[3320:3485]" 1509 1690 1 1690 1679 0 1691 1690 1 1678 1691 1 1688 1690 0
		 1691 1689 1 1689 1682 1 1691 1683 1 1683 1677 1 1678 1677 1 1692 1744 1 1744 1709 1
		 1709 1746 1 1746 1693 1 1694 1719 1 1719 1700 1 1700 1718 1 1718 1695 1 1696 1729 0
		 1729 1703 0 1703 1727 0 1727 1697 0 1698 1730 0 1730 1704 0 1704 1734 0 1734 1699 0
		 1692 1710 1 1710 1694 1 1693 1711 1 1711 1695 1 1694 1720 1 1720 1701 1 1701 1728 1
		 1728 1696 1 1695 1723 1 1723 1702 1 1702 1726 1 1726 1697 1 1696 1708 0 1708 1698 0
		 1697 1707 0 1707 1699 0 1698 1731 1 1731 1705 1 1705 1739 1 1739 1692 1 1699 1735 1
		 1735 1706 1 1706 1738 1 1738 1693 1 1709 1712 1 1712 1745 1 1745 1710 1 1711 1717 1
		 1717 1712 1 1700 1712 1 1700 1721 1 1721 1713 1 1713 1722 1 1722 1701 1 1702 1724 1
		 1724 1713 1 1703 1725 1 1725 1713 1 1704 1732 1 1732 1714 1 1714 1733 1 1733 1705 1
		 1706 1736 1 1736 1714 1 1709 1737 1 1737 1714 1 1706 1715 1 1715 1740 1 1740 1711 1
		 1707 1741 1 1741 1715 1 1702 1715 1 1705 1716 1 1716 1742 1 1742 1708 1 1710 1743 1
		 1743 1716 1 1701 1716 1 1745 1744 1 1717 1746 1 1718 1717 1 1719 1745 1 1719 1747 1
		 1747 1720 1 1721 1747 1 1722 1747 1 1718 1748 1 1748 1721 1 1723 1748 1 1724 1748 1
		 1724 1749 1 1749 1725 1 1726 1749 1 1727 1749 1 1722 1750 1 1750 1728 1 1725 1750 1
		 1729 1750 1 1730 1751 1 1751 1731 1 1732 1751 1 1733 1751 1 1734 1752 1 1752 1732 1
		 1735 1752 1 1736 1752 1 1736 1753 1 1753 1737 1 1738 1753 1 1746 1753 1 1733 1754 1
		 1754 1739 1 1737 1754 1 1744 1754 1 1740 1738 1 1741 1735 1 1726 1741 1 1723 1740 1
		 1742 1731 1 1743 1739 1 1720 1743 1 1728 1742 1 1755 1756 0 1756 1757 0 1757 1758 0
		 1758 1759 0 1759 1760 0 1760 1761 0 1761 1762 0 1762 1755 0 1763 1764 1 1764 1765 1
		 1765 1766 1 1766 1767 1 1767 1768 1 1768 1769 1 1769 1770 1 1770 1763 1 1756 1820 1
		 1757 1821 1 1758 1822 1 1759 1823 1 1760 1824 1 1761 1825 1 1762 1826 1 1772 1796 1
		 1773 1797 1 1774 1798 1 1775 1799 1 1776 1800 1 1777 1801 1 1778 1802 1 1771 1772 1
		 1772 1773 1 1773 1774 1 1774 1775 1 1775 1776 1 1776 1777 1 1777 1778 1 1778 1771 1;
	setAttr ".ed[3486:3651]" 1780 1812 1 1781 1813 1 1782 1814 1 1783 1815 1 1784 1816 1
		 1785 1817 1 1786 1818 1 1779 1780 1 1780 1781 1 1781 1782 1 1782 1783 1 1783 1784 1
		 1784 1785 1 1785 1786 1 1786 1779 1 1788 1810 1 1789 1809 1 1790 1808 1 1791 1807 1
		 1792 1806 1 1793 1805 1 1794 1804 1 1787 1788 1 1788 1789 1 1789 1790 1 1790 1791 1
		 1791 1792 1 1792 1793 1 1793 1794 1 1794 1787 1 1795 1779 1 1795 1796 1 1796 1797 1
		 1797 1798 1 1798 1799 1 1799 1800 1 1800 1801 1 1801 1802 1 1802 1795 1 1803 1771 1
		 1803 1804 1 1804 1805 1 1805 1806 1 1806 1807 1 1807 1808 1 1808 1809 1 1809 1810 1
		 1810 1803 1 1812 1764 1 1813 1765 1 1814 1766 1 1815 1767 1 1816 1768 1 1817 1769 1
		 1818 1770 1 1811 1812 1 1812 1813 1 1813 1814 1 1814 1815 1 1815 1816 1 1816 1817 1
		 1817 1818 1 1818 1811 1 1819 1787 1 1819 1820 1 1820 1821 1 1821 1822 1 1822 1823 1
		 1823 1824 1 1824 1825 1 1825 1826 1 1826 1819 1 1755 1819 1 1826 1794 1 1825 1793 1
		 1824 1792 1 1823 1791 1 1822 1790 1 1821 1789 1 1820 1788 1 1787 1803 1 1804 1778 1
		 1805 1777 1 1806 1776 1 1807 1775 1 1808 1774 1 1809 1773 1 1810 1772 1 1771 1795 1
		 1802 1786 1 1801 1785 1 1800 1784 1 1799 1783 1 1798 1782 1 1797 1781 1 1796 1780 1
		 1779 1811 1 1811 1763 1 1763 1827 1 1764 1828 1 1827 1828 1 1765 1829 1 1828 1829 1
		 1766 1830 1 1829 1830 1 1767 1831 1 1830 1831 1 1768 1832 1 1831 1832 1 1769 1833 1
		 1832 1833 1 1770 1834 1 1833 1834 1 1834 1827 1 1827 1835 1 1828 1836 1 1835 1836 1
		 1829 1837 1 1836 1837 1 1830 1838 1 1837 1838 1 1831 1839 1 1838 1839 1 1832 1840 1
		 1839 1840 1 1833 1841 1 1840 1841 1 1834 1842 1 1841 1842 1 1842 1835 1 1835 1843 1
		 1836 1844 1 1843 1844 1 1837 1845 1 1844 1845 1 1838 1846 1 1845 1846 1 1839 1847 1
		 1846 1847 1 1840 1848 1 1847 1848 1 1841 1849 1 1848 1849 1 1842 1850 1 1849 1850 1
		 1850 1843 1 1843 1851 1 1844 1852 1 1851 1852 1 1845 1853 1 1852 1853 1 1846 1854 1
		 1853 1854 1 1847 1855 1 1854 1855 1 1848 1856 1 1855 1856 1 1849 1857 1 1856 1857 1
		 1850 1858 1 1857 1858 1 1858 1851 1 1851 1859 1 1852 1860 1 1859 1860 1 1853 1861 1;
	setAttr ".ed[3652:3671]" 1860 1861 1 1854 1862 1 1861 1862 1 1855 1863 1 1862 1863 1
		 1856 1864 1 1863 1864 1 1857 1865 1 1864 1865 1 1858 1866 1 1865 1866 1 1866 1859 1
		 1859 1867 1 1860 1867 1 1861 1867 1 1862 1867 1 1863 1867 1 1864 1867 1 1865 1867 1
		 1866 1867 1;
	setAttr -s 1822 -ch 7204 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 20 10 -22 -1
		mu 0 4 226 1 2 231
		f 4 21 11 -23 -2
		mu 0 4 231 2 4 230
		f 4 22 12 -24 -3
		mu 0 4 230 4 6 229
		f 4 23 13 -25 -4
		mu 0 4 229 6 8 225
		f 4 24 14 -26 -5
		mu 0 4 224 221 10 228
		f 4 25 15 -27 -6
		mu 0 4 228 10 12 13
		f 4 26 16 -28 -7
		mu 0 4 13 12 14 15
		f 4 27 17 -29 -8
		mu 0 4 15 14 16 227
		f 4 28 18 -30 -9
		mu 0 4 227 16 18 223
		f 4 29 19 -21 -10
		mu 0 4 222 220 1 226
		f 3 -32 30 0
		mu 0 3 3 20 0
		f 3 -33 31 1
		mu 0 3 5 20 3
		f 3 -34 32 2
		mu 0 3 7 20 5
		f 3 -35 33 3
		mu 0 3 9 20 7
		f 3 -36 34 4
		mu 0 3 11 20 9
		f 3 -37 35 5
		mu 0 3 13 20 11
		f 3 -38 36 6
		mu 0 3 15 20 13
		f 3 -39 37 7
		mu 0 3 17 20 15
		f 3 -40 38 8
		mu 0 3 19 20 17
		f 3 -31 39 9
		mu 0 3 0 20 19
		f 4 125 42 -127 -136
		mu 0 4 21 22 23 24
		f 4 126 44 -128 -137
		mu 0 4 24 23 25 26
		f 4 127 46 -129 -138
		mu 0 4 26 25 27 28
		f 4 128 48 -130 -139
		mu 0 4 28 27 216 215
		f 4 129 50 -131 -140
		mu 0 4 30 29 31 32
		f 4 130 52 -132 -141
		mu 0 4 32 31 33 34
		f 4 131 54 -133 -142
		mu 0 4 34 33 35 36
		f 4 132 56 -134 -143
		mu 0 4 36 35 37 38
		f 4 133 58 -135 -144
		mu 0 4 38 37 214 213
		f 4 134 59 -126 -145
		mu 0 4 40 39 22 21
		f 4 60 62 -62 -43
		mu 0 4 22 41 42 23
		f 4 61 64 -64 -45
		mu 0 4 23 42 43 25
		f 4 63 66 -66 -47
		mu 0 4 25 43 44 27
		f 4 65 68 -68 -49
		mu 0 4 27 44 45 216
		f 4 67 70 -70 -51
		mu 0 4 29 218 46 31
		f 4 69 72 -72 -53
		mu 0 4 31 46 47 33
		f 4 71 74 -74 -55
		mu 0 4 33 47 48 35
		f 4 73 76 -76 -57
		mu 0 4 35 48 49 37
		f 4 75 78 -78 -59
		mu 0 4 37 49 50 214
		f 4 77 79 -61 -60
		mu 0 4 39 219 41 22
		f 4 112 82 -114 -123
		mu 0 4 51 52 53 54
		f 4 113 84 -115 -124
		mu 0 4 54 53 55 56
		f 4 107 87 -109 -118
		mu 0 4 57 58 59 60
		f 4 108 89 -110 -119
		mu 0 4 60 59 61 62
		f 4 109 91 -111 -120
		mu 0 4 62 61 63 64
		f 4 110 93 -112 -121
		mu 0 4 64 63 65 217
		f 4 111 94 -113 -122
		mu 0 4 66 212 52 51
		f 4 95 97 -97 -67
		mu 0 4 43 67 68 44
		f 4 96 99 -99 -69
		mu 0 4 44 68 69 45
		f 4 98 101 -101 -71
		mu 0 4 218 199 70 46
		f 4 102 -116 -125 114
		mu 0 4 55 71 72 56
		f 4 106 -105 -108 -117
		mu 0 4 73 74 58 57
		f 4 100 105 116 -86
		mu 0 4 46 70 73 57
		f 4 85 117 -87 -73
		mu 0 4 46 57 60 47
		f 4 86 118 -89 -75
		mu 0 4 47 60 62 48
		f 4 88 119 -91 -77
		mu 0 4 48 62 64 49
		f 4 90 120 -93 -79
		mu 0 4 49 64 217 50
		f 4 92 121 -81 -80
		mu 0 4 219 66 51 41
		f 4 80 122 -82 -63
		mu 0 4 41 51 54 42
		f 4 81 123 -84 -65
		mu 0 4 42 54 56 43
		f 4 -104 -96 83 124
		mu 0 4 72 67 43 56
		f 4 40 135 -42 -11
		mu 0 4 1 21 24 2
		f 4 41 136 -44 -12
		mu 0 4 2 24 26 4
		f 4 43 137 -46 -13
		mu 0 4 4 26 28 6
		f 4 45 138 -48 -14
		mu 0 4 6 28 215 8
		f 4 47 139 -50 -15
		mu 0 4 221 30 32 10
		f 4 49 140 -52 -16
		mu 0 4 10 32 34 12
		f 4 51 141 -54 -17
		mu 0 4 12 34 36 14
		f 4 53 142 -56 -18
		mu 0 4 14 36 38 16
		f 4 55 143 -58 -19
		mu 0 4 16 38 213 18
		f 4 57 144 -41 -20
		mu 0 4 220 40 21 1
		f 4 145 147 -147 -83
		mu 0 4 52 75 76 53
		f 4 146 149 -149 -85
		mu 0 4 53 76 77 55
		f 4 150 152 -152 -88
		mu 0 4 58 78 79 59
		f 4 151 154 -154 -90
		mu 0 4 59 79 80 61
		f 4 153 156 -156 -92
		mu 0 4 61 80 81 63
		f 4 155 158 -158 -94
		mu 0 4 63 81 82 65
		f 4 157 159 -146 -95
		mu 0 4 212 211 75 52
		f 4 148 161 -161 -103
		mu 0 4 55 77 83 71
		f 4 162 -164 -151 104
		mu 0 4 74 84 78 58
		f 4 164 166 -166 -148
		mu 0 4 75 85 86 76
		f 4 165 168 -168 -150
		mu 0 4 76 86 87 77
		f 4 169 171 -171 -153
		mu 0 4 78 88 89 79
		f 4 170 173 -173 -155
		mu 0 4 79 89 90 80
		f 4 172 175 -175 -157
		mu 0 4 80 90 91 81
		f 4 174 177 -177 -159
		mu 0 4 81 91 92 82
		f 4 176 178 -165 -160
		mu 0 4 211 210 85 75
		f 4 167 180 -180 -162
		mu 0 4 77 87 93 83
		f 4 181 -183 -170 163
		mu 0 4 84 94 88 78
		f 4 183 185 -185 -167
		mu 0 4 85 95 96 86
		f 4 184 187 -187 -169
		mu 0 4 86 96 97 87
		f 4 188 190 -190 -172
		mu 0 4 88 98 99 89
		f 4 189 192 -192 -174
		mu 0 4 89 99 100 90
		f 4 191 194 -194 -176
		mu 0 4 90 100 101 91
		f 4 193 196 -196 -178
		mu 0 4 91 101 102 92
		f 4 195 197 -184 -179
		mu 0 4 210 102 95 85
		f 4 186 199 -199 -181
		mu 0 4 87 97 103 93
		f 4 200 -202 -189 182
		mu 0 4 94 104 98 88
		f 4 202 223 -213 -223
		mu 0 4 204 209 107 108
		f 4 203 224 -214 -224
		mu 0 4 209 208 110 107
		f 4 204 225 -215 -225
		mu 0 4 208 207 112 110
		f 4 205 226 -216 -226
		mu 0 4 207 201 200 112
		f 4 206 227 -217 -227
		mu 0 4 202 206 116 114
		f 4 207 228 -218 -228
		mu 0 4 206 117 118 116
		f 4 208 229 -219 -229
		mu 0 4 117 119 120 118
		f 4 209 230 -220 -230
		mu 0 4 119 205 122 120
		f 4 210 231 -221 -231
		mu 0 4 205 203 124 122
		f 4 211 222 -222 -232
		mu 0 4 203 204 108 124
		f 3 -203 -233 233
		mu 0 3 106 105 125
		f 3 -204 -234 234
		mu 0 3 109 106 125
		f 3 -205 -235 235
		mu 0 3 111 109 125
		f 3 -206 -236 236
		mu 0 3 113 111 125
		f 3 -207 -237 237
		mu 0 3 115 113 125
		f 3 -208 -238 238
		mu 0 3 117 115 125
		f 3 -209 -239 239
		mu 0 3 119 117 125
		f 3 -210 -240 240
		mu 0 3 121 119 125
		f 3 -211 -241 241
		mu 0 3 123 121 125
		f 3 -212 -242 232
		mu 0 3 105 123 125
		f 4 330 321 -245 -321
		mu 0 4 126 127 128 129
		f 4 331 322 -247 -322
		mu 0 4 127 130 131 128
		f 4 332 323 -249 -323
		mu 0 4 130 132 133 131
		f 4 333 324 -251 -324
		mu 0 4 132 196 135 133
		f 4 334 325 -253 -325
		mu 0 4 134 136 137 197
		f 4 335 326 -255 -326
		mu 0 4 136 138 139 137
		f 4 336 327 -257 -327
		mu 0 4 138 140 141 139
		f 4 337 328 -259 -328
		mu 0 4 140 142 143 141
		f 4 338 329 -261 -329
		mu 0 4 142 144 145 143
		f 4 339 320 -262 -330
		mu 0 4 144 126 129 145
		f 4 244 263 -265 -263
		mu 0 4 129 128 146 147
		f 4 246 265 -267 -264
		mu 0 4 128 131 148 146
		f 4 248 267 -269 -266
		mu 0 4 131 133 149 148
		f 4 250 269 -271 -268
		mu 0 4 133 135 198 149
		f 4 252 271 -273 -270
		mu 0 4 197 137 151 150
		f 4 254 273 -275 -272
		mu 0 4 137 139 152 151
		f 4 256 275 -277 -274
		mu 0 4 139 141 153 152
		f 4 258 277 -279 -276
		mu 0 4 141 143 154 153
		f 4 260 279 -281 -278
		mu 0 4 143 145 155 154
		f 4 261 262 -282 -280
		mu 0 4 145 129 147 155
		f 4 317 309 -285 -309
		mu 0 4 156 157 158 159
		f 4 318 310 -287 -310
		mu 0 4 157 160 161 158
		f 4 312 304 -290 -304
		mu 0 4 162 163 164 165
		f 4 313 305 -292 -305
		mu 0 4 163 166 167 164
		f 4 314 306 -294 -306
		mu 0 4 166 168 169 167
		f 4 315 307 -296 -307
		mu 0 4 168 170 171 169
		f 4 316 308 -297 -308
		mu 0 4 170 156 159 171
		f 4 268 298 -98 -298
		mu 0 4 148 149 68 67
		f 4 270 299 -100 -299
		mu 0 4 149 198 69 68
		f 4 272 300 -102 -300
		mu 0 4 150 151 70 199
		f 4 -311 319 115 -302
		mu 0 4 161 160 72 71
		f 4 311 303 302 -107
		mu 0 4 73 162 165 74
		f 4 287 -312 -106 -301
		mu 0 4 151 162 73 70
		f 4 274 288 -313 -288
		mu 0 4 151 152 163 162
		f 4 276 290 -314 -289
		mu 0 4 152 153 166 163
		f 4 278 292 -315 -291
		mu 0 4 153 154 168 166
		f 4 280 294 -316 -293
		mu 0 4 154 155 170 168
		f 4 281 282 -317 -295
		mu 0 4 155 147 156 170
		f 4 264 283 -318 -283
		mu 0 4 147 146 157 156
		f 4 266 285 -319 -284
		mu 0 4 146 148 160 157
		f 4 -320 -286 297 103
		mu 0 4 72 160 148 67
		f 4 212 243 -331 -243
		mu 0 4 108 107 127 126
		f 4 213 245 -332 -244
		mu 0 4 107 110 130 127
		f 4 214 247 -333 -246
		mu 0 4 110 112 132 130
		f 4 215 249 -334 -248
		mu 0 4 112 200 196 132
		f 4 216 251 -335 -250
		mu 0 4 114 116 136 134
		f 4 217 253 -336 -252
		mu 0 4 116 118 138 136
		f 4 218 255 -337 -254
		mu 0 4 118 120 140 138
		f 4 219 257 -338 -256
		mu 0 4 120 122 142 140
		f 4 220 259 -339 -258
		mu 0 4 122 124 144 142
		f 4 221 242 -340 -260
		mu 0 4 124 108 126 144
		f 4 284 341 -343 -341
		mu 0 4 159 158 172 173
		f 4 286 343 -345 -342
		mu 0 4 158 161 174 172
		f 4 289 346 -348 -346
		mu 0 4 165 164 175 176
		f 4 291 348 -350 -347
		mu 0 4 164 167 177 175
		f 4 293 350 -352 -349
		mu 0 4 167 169 178 177
		f 4 295 352 -354 -351
		mu 0 4 169 171 179 178
		f 4 296 340 -355 -353
		mu 0 4 171 159 173 179
		f 4 301 160 -356 -344
		mu 0 4 161 71 83 174
		f 4 -303 345 356 -163
		mu 0 4 74 165 176 84
		f 4 342 358 -360 -358
		mu 0 4 173 172 180 181
		f 4 344 360 -362 -359
		mu 0 4 172 174 182 180
		f 4 347 363 -365 -363
		mu 0 4 176 175 183 184
		f 4 349 365 -367 -364
		mu 0 4 175 177 185 183
		f 4 351 367 -369 -366
		mu 0 4 177 178 186 185
		f 4 353 369 -371 -368
		mu 0 4 178 179 187 186
		f 4 354 357 -372 -370
		mu 0 4 179 173 181 187
		f 4 355 179 -373 -361
		mu 0 4 174 83 93 182
		f 4 -357 362 373 -182
		mu 0 4 84 176 184 94
		f 4 359 375 -377 -375
		mu 0 4 181 180 188 189
		f 4 361 377 -379 -376
		mu 0 4 180 182 190 188
		f 4 364 380 -382 -380
		mu 0 4 184 183 191 192
		f 4 366 382 -384 -381
		mu 0 4 183 185 193 191
		f 4 368 384 -386 -383
		mu 0 4 185 186 194 193
		f 4 370 386 -388 -385
		mu 0 4 186 187 195 194
		f 4 371 374 -389 -387
		mu 0 4 187 181 189 195
		f 4 372 198 -390 -378
		mu 0 4 182 93 103 190
		f 4 -374 379 390 -201
		mu 0 4 94 184 192 104
		f 4 408 401 424 -401
		mu 0 4 234 235 242 243
		f 4 409 402 423 -402
		mu 0 4 235 236 241 242
		f 4 407 400 425 -400
		mu 0 4 233 234 243 244
		f 4 410 403 422 -403
		mu 0 4 236 237 240 241
		f 4 411 404 421 -404
		mu 0 4 237 238 239 240
		f 4 406 399 426 -399
		mu 0 4 232 233 244 245
		f 4 387 405 398 427
		mu 0 4 194 195 232 245
		f 4 -197 420 -405 412
		mu 0 4 102 101 239 238
		f 3 -406 388 397
		mu 0 3 232 195 189
		f 4 376 394 -407 -398
		mu 0 4 189 188 233 232
		f 4 378 392 -408 -395
		mu 0 4 188 190 234 233
		f 4 389 391 -409 -393
		mu 0 4 190 103 235 234
		f 4 -200 393 -410 -392
		mu 0 4 103 97 236 235
		f 4 -188 395 -411 -394
		mu 0 4 97 96 237 236
		f 4 -186 396 -412 -396
		mu 0 4 96 95 238 237
		f 3 -413 -397 -198
		mu 0 3 102 238 95
		f 3 -421 -195 -414
		mu 0 3 239 101 100
		f 4 -422 413 -193 -415
		mu 0 4 240 239 100 99
		f 4 -423 414 -191 -416
		mu 0 4 241 240 99 98
		f 4 -424 415 201 -417
		mu 0 4 242 241 98 104
		f 4 -425 416 -391 -418
		mu 0 4 243 242 104 192
		f 4 -426 417 381 -419
		mu 0 4 244 243 192 191
		f 4 -427 418 383 -420
		mu 0 4 245 244 191 193
		f 3 -428 419 385
		mu 0 3 194 245 193
		f 4 546 682 683 503
		mu 0 4 246 247 248 249
		f 4 540 684 -683 547
		mu 0 4 250 251 248 247
		f 4 502 -684 -685 541
		mu 0 4 252 249 248 251
		f 4 508 685 686 -505
		mu 0 4 246 253 254 255
		f 4 532 687 -686 509
		mu 0 4 256 257 254 253
		f 4 -506 -687 -688 533
		mu 0 4 258 255 254 257
		f 4 458 688 689 -471
		mu 0 4 259 260 261 262
		f 4 459 472 690 -689
		mu 0 4 260 263 264 261
		f 4 -691 473 -476 691
		mu 0 4 261 264 265 266
		f 4 -690 -692 -475 -472
		mu 0 4 262 261 266 267
		f 4 550 692 693 -543
		mu 0 4 268 269 270 271
		f 4 551 544 694 -693
		mu 0 4 269 272 273 270
		f 4 -695 545 476 695
		mu 0 4 270 273 274 275
		f 4 -694 -696 477 -544
		mu 0 4 271 270 275 276
		f 4 452 696 697 -477
		mu 0 4 277 278 279 280
		f 4 453 480 698 -697
		mu 0 4 278 281 282 279
		f 4 -699 481 -484 699
		mu 0 4 279 282 283 284
		f 4 -698 -700 -483 -478
		mu 0 4 280 279 284 285
		f 4 454 700 701 -481
		mu 0 4 281 286 287 282
		f 4 455 484 702 -701
		mu 0 4 286 288 289 287
		f 4 -703 485 -488 703
		mu 0 4 287 289 290 291
		f 4 -702 -704 -487 -482
		mu 0 4 282 287 291 283
		f 4 456 704 705 -485
		mu 0 4 288 292 293 289
		f 4 457 470 706 -705
		mu 0 4 292 259 262 293
		f 4 -707 471 -490 707
		mu 0 4 293 262 267 294
		f 4 -706 -708 -489 -486
		mu 0 4 289 293 294 290
		f 4 474 708 709 -491
		mu 0 4 267 266 295 296
		f 4 475 492 710 -709
		mu 0 4 266 265 297 295
		f 4 -711 493 -496 711
		mu 0 4 295 297 298 299
		f 4 -710 -712 -495 -492
		mu 0 4 296 295 299 300
		f 4 548 712 713 -541
		mu 0 4 301 302 303 304
		f 4 549 542 714 -713
		mu 0 4 302 268 271 303
		f 4 -715 543 496 715
		mu 0 4 303 271 276 305
		f 4 -714 -716 497 -542
		mu 0 4 304 303 305 306
		f 4 482 716 717 -497
		mu 0 4 285 284 307 308
		f 4 483 500 718 -717
		mu 0 4 284 283 309 307
		f 4 -719 501 -504 719
		mu 0 4 307 309 246 249
		f 4 -718 -720 -503 -498
		mu 0 4 308 307 249 252
		f 4 486 720 721 -501
		mu 0 4 283 291 310 309
		f 4 487 506 722 -721
		mu 0 4 291 290 311 310
		f 4 -723 507 -510 723
		mu 0 4 310 311 256 253
		f 4 -722 -724 -509 -502
		mu 0 4 309 310 253 246
		f 4 488 724 725 -507
		mu 0 4 290 294 312 311
		f 4 489 490 726 -725
		mu 0 4 294 267 296 312
		f 4 -727 491 -512 727
		mu 0 4 312 296 300 313
		f 4 -726 -728 -511 -508
		mu 0 4 311 312 313 256
		f 4 494 728 729 -519
		mu 0 4 300 299 314 315
		f 4 498 730 -729 495
		mu 0 4 298 316 314 299
		f 4 -520 -730 -731 499
		mu 0 4 317 315 314 316
		f 4 478 731 732 -493
		mu 0 4 318 319 320 321
		f 4 479 -522 733 -732
		mu 0 4 319 322 323 320
		f 4 -734 -521 -500 734
		mu 0 4 320 323 324 325
		f 4 -733 -735 -499 -494
		mu 0 4 321 320 325 326
		f 4 468 735 736 -473
		mu 0 4 327 328 329 330
		f 4 469 -524 737 -736
		mu 0 4 328 331 332 329
		f 4 -738 -523 -480 738
		mu 0 4 329 332 322 319
		f 4 -737 -739 -479 -474
		mu 0 4 330 329 319 318
		f 4 -534 739 740 -525
		mu 0 4 258 257 333 334
		f 4 510 741 -740 -533
		mu 0 4 256 313 333 257
		f 4 -526 -741 -742 511
		mu 0 4 300 334 333 313
		f 4 518 742 743 525
		mu 0 4 300 315 335 334
		f 4 519 512 744 -743
		mu 0 4 315 317 336 335
		f 4 -745 513 -536 745
		mu 0 4 335 336 337 338
		f 4 -744 -746 -535 524
		mu 0 4 334 335 338 258
		f 4 520 746 747 -513
		mu 0 4 324 323 339 340
		f 4 521 514 748 -747
		mu 0 4 323 322 341 339
		f 4 -749 515 -538 749
		mu 0 4 339 341 342 343
		f 4 -748 -750 -537 -514
		mu 0 4 340 339 343 344
		f 4 522 750 751 -515
		mu 0 4 322 332 345 341
		f 4 523 516 752 -751
		mu 0 4 332 331 346 345
		f 4 -753 517 -540 753
		mu 0 4 345 346 347 348
		f 4 -752 -754 -539 -516
		mu 0 4 341 345 348 342
		f 4 534 754 755 505
		mu 0 4 258 338 349 255
		f 4 535 526 756 -755
		mu 0 4 338 337 350 349
		f 4 -757 527 -548 757
		mu 0 4 349 350 250 247
		f 4 -756 -758 -547 504
		mu 0 4 255 349 247 246
		f 4 536 758 759 -527
		mu 0 4 344 343 351 352
		f 4 537 528 760 -759
		mu 0 4 343 342 353 351
		f 4 -761 529 -550 761
		mu 0 4 351 353 268 302
		f 4 -760 -762 -549 -528
		mu 0 4 352 351 302 301
		f 4 538 762 763 -529
		mu 0 4 342 348 354 353
		f 4 539 530 764 -763
		mu 0 4 348 347 355 354
		f 4 -765 531 -552 765
		mu 0 4 354 355 272 269
		f 4 -764 -766 -551 -530
		mu 0 4 353 354 269 268
		f 4 552 553 767 -767
		mu 0 4 356 357 358 359
		f 4 -768 554 555 768
		mu 0 4 359 358 360 361
		f 4 556 769 770 -554
		mu 0 4 357 362 363 358
		f 4 963 -967 986 967
		mu 0 4 364 365 366 367
		f 4 987 -943 962 -968
		mu 0 4 367 368 369 364
		f 4 -771 -772 557 -555
		mu 0 4 358 363 370 360
		f 4 964 -986 1005 966
		mu 0 4 365 371 372 366
		f 4 -557 558 773 -773
		mu 0 4 362 357 373 374
		f 4 -774 559 560 774
		mu 0 4 374 373 375 376
		f 4 965 926 1004 985
		mu 0 4 371 377 378 372
		f 4 -553 775 776 -559
		mu 0 4 357 356 379 373
		f 4 -777 -778 561 -560
		mu 0 4 373 379 380 375
		f 4 1003 -927 946 -984
		mu 0 4 381 378 377 382
		f 4 -561 562 779 -779
		mu 0 4 376 375 383 384
		f 4 -780 563 564 780
		mu 0 4 384 383 385 386
		f 4 947 928 1002 983
		mu 0 4 382 387 388 381
		f 4 -562 781 782 -563
		mu 0 4 375 380 389 383
		f 4 -783 -784 565 -564
		mu 0 4 383 389 390 385
		f 4 1001 -929 948 -982
		mu 0 4 391 388 387 392
		f 4 -565 566 785 -785
		mu 0 4 386 385 393 394
		f 4 -786 567 568 786
		mu 0 4 394 393 395 396
		f 4 949 930 1000 981
		mu 0 4 392 397 398 391
		f 4 -566 787 788 -567
		mu 0 4 385 390 399 393
		f 4 -789 -790 569 -568
		mu 0 4 393 399 400 395
		f 4 999 -931 950 -980
		mu 0 4 401 398 397 402
		f 4 -569 570 791 -791
		mu 0 4 396 395 403 404
		f 4 -792 571 572 792
		mu 0 4 404 403 405 406
		f 4 951 932 998 979
		mu 0 4 402 407 408 401
		f 4 -570 793 794 -571
		mu 0 4 395 400 409 403
		f 4 -795 -796 573 -572
		mu 0 4 403 409 410 405
		f 4 997 -933 952 -978
		mu 0 4 411 408 407 412
		f 4 -573 574 797 -797
		mu 0 4 406 405 413 414
		f 4 -798 575 576 798
		mu 0 4 414 413 415 416
		f 4 953 934 996 977
		mu 0 4 412 417 418 411
		f 4 -574 799 800 -575
		mu 0 4 405 410 419 413
		f 4 -801 -802 577 -576
		mu 0 4 413 419 420 415
		f 4 995 -935 954 -976
		mu 0 4 421 418 417 422
		f 4 -577 578 803 -803
		mu 0 4 416 415 423 424
		f 4 -804 579 580 804
		mu 0 4 424 423 425 426
		f 4 955 936 994 975
		mu 0 4 422 427 428 421
		f 4 -578 805 806 -579
		mu 0 4 415 420 429 423
		f 4 -807 -808 581 -580
		mu 0 4 423 429 430 425
		f 4 993 -937 956 -974
		mu 0 4 431 428 427 432
		f 4 -581 582 809 -809
		mu 0 4 426 425 433 434
		f 4 -810 583 584 810
		mu 0 4 434 433 435 436
		f 4 957 938 992 973
		mu 0 4 432 437 438 431
		f 4 -582 811 812 -583
		mu 0 4 425 430 439 433
		f 4 -813 -814 585 -584
		mu 0 4 433 439 440 435
		f 4 991 -939 958 -972
		mu 0 4 441 438 437 442
		f 4 -585 586 815 -815
		mu 0 4 436 435 443 444
		f 4 -816 587 588 816
		mu 0 4 444 443 445 446
		f 4 959 940 990 971
		mu 0 4 442 447 448 441
		f 4 -586 817 818 -587
		mu 0 4 435 440 449 443
		f 4 -819 -820 589 -588
		mu 0 4 443 449 450 445
		f 4 989 -941 960 -970
		mu 0 4 451 448 447 452
		f 4 -589 590 821 -821
		mu 0 4 446 445 453 454
		f 4 -822 591 -558 822
		mu 0 4 454 453 455 456
		f 4 961 942 988 969
		mu 0 4 452 457 458 451
		f 4 -590 823 824 -591
		mu 0 4 445 450 459 453
		f 4 -825 -826 -556 -592
		mu 0 4 453 459 460 455
		f 4 428 -837 -776 603
		mu 0 4 461 462 379 356
		f 4 429 602 777 836
		mu 0 4 462 463 380 379
		f 4 -603 430 -838 -782
		mu 0 4 380 463 464 389
		f 4 431 604 783 837
		mu 0 4 464 465 390 389
		f 4 -605 432 -839 -788
		mu 0 4 390 465 466 399
		f 4 433 605 789 838
		mu 0 4 466 467 400 399
		f 4 -606 434 -840 -794
		mu 0 4 400 467 468 409
		f 4 435 606 795 839
		mu 0 4 468 469 410 409
		f 4 -607 436 -841 -800
		mu 0 4 410 469 470 419
		f 4 437 607 801 840
		mu 0 4 470 471 420 419
		f 4 -608 438 -842 -806
		mu 0 4 420 471 472 429
		f 4 439 608 807 841
		mu 0 4 472 473 430 429
		f 4 -609 440 -843 -812
		mu 0 4 430 473 474 439
		f 4 441 609 813 842
		mu 0 4 474 475 440 439
		f 4 -610 442 -844 -818
		mu 0 4 440 475 476 449
		f 4 443 610 819 843
		mu 0 4 476 477 450 449
		f 4 -611 444 -845 -824
		mu 0 4 450 477 478 459
		f 4 445 611 825 844
		mu 0 4 478 479 460 459
		f 4 -612 446 -846 -769
		mu 0 4 361 480 481 359
		f 4 447 -604 766 845
		mu 0 4 481 461 356 359
		f 4 678 846 847 669
		mu 0 4 482 483 484 485
		f 4 674 848 -847 679
		mu 0 4 486 487 484 483
		f 4 668 -848 -849 675
		mu 0 4 488 485 484 487
		f 4 464 849 850 -613
		mu 0 4 489 490 491 492
		f 4 618 851 -850 465
		mu 0 4 493 494 491 490
		f 4 -614 -851 -852 619
		mu 0 4 495 492 491 494
		f 4 -620 852 853 -615
		mu 0 4 495 494 496 497
		f 4 466 854 -853 -619
		mu 0 4 493 498 496 494
		f 4 -616 -854 -855 467
		mu 0 4 499 497 496 498
		f 4 -622 855 856 -617
		mu 0 4 500 501 502 503
		f 4 -621 614 857 -856
		mu 0 4 501 495 497 502
		f 4 -858 615 626 858
		mu 0 4 502 497 499 504
		f 4 -857 -859 627 -618
		mu 0 4 503 502 504 505
		f 4 -624 859 860 -531
		mu 0 4 347 506 507 355
		f 4 -623 616 861 -860
		mu 0 4 506 500 503 507
		f 4 -862 617 628 862
		mu 0 4 507 503 505 508
		f 4 -861 -863 629 -532
		mu 0 4 355 507 508 272
		f 4 -628 863 864 -625
		mu 0 4 505 504 509 510
		f 4 448 865 -864 -627
		mu 0 4 499 511 509 504
		f 4 -626 -865 -866 449
		mu 0 4 512 510 509 511
		f 4 -630 866 867 -545
		mu 0 4 272 508 513 273
		f 4 -629 624 868 -867
		mu 0 4 508 505 510 513
		f 4 -869 625 450 869
		mu 0 4 513 510 512 514
		f 4 -868 -870 451 -546
		mu 0 4 273 513 514 274
		f 4 -636 870 871 -631
		mu 0 4 515 516 517 518
		f 4 -635 612 872 -871
		mu 0 4 516 489 492 517
		f 4 -873 613 620 873
		mu 0 4 517 492 495 501
		f 4 -872 -874 621 -632
		mu 0 4 518 517 501 500
		f 4 -634 874 875 -517
		mu 0 4 331 519 520 346
		f 4 680 876 -875 -633
		mu 0 4 521 522 520 519
		f 4 -518 -876 -877 681
		mu 0 4 347 346 520 522
		f 4 460 877 878 -469
		mu 0 4 327 523 524 328
		f 4 461 -640 879 -878
		mu 0 4 523 525 526 524
		f 4 -880 -639 632 880
		mu 0 4 524 526 521 519
		f 4 -879 -881 633 -470
		mu 0 4 328 524 519 331
		f 4 634 881 882 -641
		mu 0 4 527 528 529 530
		f 4 635 642 883 -882
		mu 0 4 528 531 532 529
		f 4 -884 643 -646 884
		mu 0 4 529 532 533 534
		f 4 -883 -885 -645 -642
		mu 0 4 530 529 534 535
		f 4 636 885 886 -643
		mu 0 4 536 537 538 539
		f 4 637 646 887 -886
		mu 0 4 537 540 541 538
		f 4 -888 647 -650 888
		mu 0 4 538 541 542 543
		f 4 -887 -889 -649 -644
		mu 0 4 539 538 543 544
		f 4 638 889 890 -647
		mu 0 4 540 545 546 541
		f 4 639 650 891 -890
		mu 0 4 545 547 548 546
		f 4 -892 651 -654 892
		mu 0 4 546 548 549 550
		f 4 -891 -893 -653 -648
		mu 0 4 541 546 550 542
		f 4 462 893 894 -651
		mu 0 4 547 551 552 548
		f 4 463 640 895 -894
		mu 0 4 551 527 530 552
		f 4 -896 641 -656 896
		mu 0 4 552 530 535 553
		f 4 -895 -897 -655 -652
		mu 0 4 548 552 553 549
		f 4 644 897 898 -657
		mu 0 4 535 534 554 555
		f 4 645 658 899 -898
		mu 0 4 534 533 556 554
		f 4 -900 659 -662 900
		mu 0 4 554 556 557 558
		f 4 -899 -901 -661 -658
		mu 0 4 555 554 558 559
		f 4 648 901 902 -659
		mu 0 4 544 543 560 561
		f 4 649 662 903 -902
		mu 0 4 543 542 562 560
		f 4 -904 663 -666 904
		mu 0 4 560 562 488 563
		f 4 -903 -905 -665 -660
		mu 0 4 561 560 563 564
		f 4 652 905 906 -663
		mu 0 4 542 550 565 562
		f 4 653 666 907 -906
		mu 0 4 550 549 566 565
		f 4 -908 667 -670 908
		mu 0 4 565 566 482 485
		f 4 -907 -909 -669 -664
		mu 0 4 562 565 485 488
		f 4 654 909 910 -667
		mu 0 4 549 553 567 566
		f 4 655 656 911 -910
		mu 0 4 553 535 555 567
		f 4 -912 657 -672 912
		mu 0 4 567 555 559 568
		f 4 -911 -913 -671 -668
		mu 0 4 566 567 568 482
		f 4 660 913 914 -673
		mu 0 4 559 558 569 570
		f 4 676 915 -914 661
		mu 0 4 557 571 569 558
		f 4 -674 -915 -916 677
		mu 0 4 572 570 569 571
		f 4 -678 916 917 -675
		mu 0 4 486 573 574 487
		f 4 664 918 -917 -677
		mu 0 4 564 563 574 573
		f 4 -676 -918 -919 665
		mu 0 4 488 487 574 563
		f 4 672 919 920 671
		mu 0 4 559 570 575 568
		f 4 -680 921 -920 673
		mu 0 4 572 576 575 570
		f 4 670 -921 -922 -679
		mu 0 4 482 568 575 576
		f 4 -682 922 923 623
		mu 0 4 347 522 577 506
		f 4 -681 -638 924 -923
		mu 0 4 522 521 578 577
		f 4 -925 -637 630 925
		mu 0 4 577 578 515 518
		f 4 -924 -926 631 622
		mu 0 4 506 577 518 500
		f 4 -947 -593 778 -928
		mu 0 4 382 377 376 384
		f 4 -781 594 -948 927
		mu 0 4 384 386 387 382
		f 4 -949 -595 784 -930
		mu 0 4 392 387 386 394
		f 4 -787 595 -950 929
		mu 0 4 394 396 397 392
		f 4 -951 -596 790 -932
		mu 0 4 402 397 396 404
		f 4 -793 596 -952 931
		mu 0 4 404 406 407 402
		f 4 -953 -597 796 -934
		mu 0 4 412 407 406 414
		f 4 -799 597 -954 933
		mu 0 4 414 416 417 412
		f 4 -955 -598 802 -936
		mu 0 4 422 417 416 424
		f 4 -805 598 -956 935
		mu 0 4 424 426 427 422
		f 4 -957 -599 808 -938
		mu 0 4 432 427 426 434
		f 4 -811 599 -958 937
		mu 0 4 434 436 437 432
		f 4 -959 -600 814 -940
		mu 0 4 442 437 436 444
		f 4 -817 600 -960 939
		mu 0 4 444 446 447 442
		f 4 -961 -601 820 -942
		mu 0 4 452 447 446 454
		f 4 -823 601 -962 941
		mu 0 4 454 456 457 452
		f 4 -963 -602 771 -944
		mu 0 4 364 369 370 363
		f 4 -770 -945 -964 943
		mu 0 4 363 362 365 364
		f 4 772 -946 -965 944
		mu 0 4 362 374 371 365
		f 4 -775 592 -966 945
		mu 0 4 374 376 377 371
		f 4 -987 -594 -468 835
		mu 0 4 367 366 579 580
		f 4 -969 -988 -836 -467
		mu 0 4 581 368 367 580
		f 4 -989 968 -466 834
		mu 0 4 451 458 582 583
		f 4 -971 -990 -835 -465
		mu 0 4 584 448 451 583
		f 4 -991 970 -464 833
		mu 0 4 441 448 584 585
		f 4 -973 -992 -834 -463
		mu 0 4 586 438 441 585
		f 4 -993 972 -462 832
		mu 0 4 431 438 586 587
		f 4 -975 -994 -833 -461
		mu 0 4 263 428 431 587
		f 4 -995 974 -460 831
		mu 0 4 421 428 263 260
		f 4 -977 -996 -832 -459
		mu 0 4 259 418 421 260
		f 4 -997 976 -458 830
		mu 0 4 411 418 259 292
		f 4 -979 -998 -831 -457
		mu 0 4 288 408 411 292
		f 4 -999 978 -456 829
		mu 0 4 401 408 288 286
		f 4 -981 -1000 -830 -455
		mu 0 4 281 398 401 286
		f 4 -1001 980 -454 828
		mu 0 4 391 398 281 278
		f 4 -983 -1002 -829 -453
		mu 0 4 277 388 391 278;
	setAttr ".fc[500:999]"
		f 4 -1003 982 -452 827
		mu 0 4 381 388 277 588
		f 4 -985 -1004 -828 -451
		mu 0 4 589 378 381 588
		f 4 -1005 984 -450 826
		mu 0 4 372 378 589 590
		f 4 -1006 -827 -449 593
		mu 0 4 366 372 590 579
		f 4 1006 1042 1043 -1019
		mu 0 4 591 592 593 594
		f 4 1007 1044 1045 -1043
		mu 0 4 592 595 596 593
		f 4 -1046 1046 1047 1048
		mu 0 4 593 596 597 598
		f 4 -1044 -1049 1049 -1020
		mu 0 4 594 593 598 599
		f 4 -1052 1052 1053 1054
		mu 0 4 597 600 601 602
		f 4 -1051 1022 1055 -1053
		mu 0 4 600 603 604 601
		f 4 -1056 1023 -1012 1056
		mu 0 4 601 604 605 606
		f 4 -1054 -1057 -1011 1057
		mu 0 4 602 601 606 607
		f 4 -1050 1058 1059 -1021
		mu 0 4 599 598 608 609
		f 4 -1048 -1055 1060 -1059
		mu 0 4 598 597 602 608
		f 4 -1061 -1058 -1010 1061
		mu 0 4 608 602 607 610
		f 4 -1060 -1062 -1009 -1022
		mu 0 4 609 608 610 611
		f 4 1008 1062 1063 -1025
		mu 0 4 611 610 612 613
		f 4 1009 1064 1065 -1063
		mu 0 4 610 607 614 612
		f 4 -1066 1066 1067 1068
		mu 0 4 612 614 615 616
		f 4 -1064 -1069 1069 -1026
		mu 0 4 613 612 616 617
		f 4 1010 1070 1071 -1065
		mu 0 4 607 606 618 614
		f 4 1011 1028 1072 -1071
		mu 0 4 606 605 619 618
		f 4 -1073 1029 1073 1074
		mu 0 4 618 619 620 621
		f 4 -1072 -1075 1075 -1067
		mu 0 4 614 618 621 615
		f 4 -1076 1076 1077 1078
		mu 0 4 615 621 622 623
		f 4 -1074 1030 1079 -1077
		mu 0 4 621 620 624 622
		f 4 -1080 1031 -1016 1080
		mu 0 4 622 624 625 626
		f 4 -1078 -1081 -1015 1081
		mu 0 4 623 622 626 627
		f 4 -1070 1082 1083 -1027
		mu 0 4 617 616 628 629
		f 4 -1068 -1079 1084 -1083
		mu 0 4 616 615 623 628
		f 4 -1085 -1082 -1014 1085
		mu 0 4 628 623 627 630
		f 4 -1084 -1086 -1013 -1028
		mu 0 4 629 628 630 631
		f 4 1012 1086 1087 -1033
		mu 0 4 631 630 632 633
		f 4 1013 1088 1089 -1087
		mu 0 4 630 627 634 632
		f 4 -1090 1090 1091 1092
		mu 0 4 632 634 635 636
		f 4 -1088 -1093 1093 -1034
		mu 0 4 633 632 636 637
		f 4 1014 1094 1095 -1089
		mu 0 4 627 626 638 634
		f 4 1015 1036 1096 -1095
		mu 0 4 626 625 639 638
		f 4 -1097 1037 1097 1098
		mu 0 4 638 639 640 641
		f 4 -1096 -1099 1099 -1091
		mu 0 4 634 638 641 635
		f 4 -1094 1102 1103 -1035
		mu 0 4 637 636 642 643
		f 4 -1092 -1101 1104 -1103
		mu 0 4 636 635 644 642
		f 4 -1105 -1102 -1018 1105
		mu 0 4 642 644 645 646
		f 4 -1104 -1106 -1017 -1036
		mu 0 4 643 642 646 647
		f 4 1016 1106 1107 -1039
		mu 0 4 647 646 648 649
		f 4 1017 1108 1109 -1107
		mu 0 4 646 645 650 648
		f 4 -1110 1110 1111 1112
		mu 0 4 648 650 651 652
		f 4 -1108 -1113 1113 -1040
		mu 0 4 649 648 652 653
		f 4 -1114 1116 1117 -1041
		mu 0 4 653 652 654 655
		f 4 -1112 -1115 1118 -1117
		mu 0 4 652 651 656 654
		f 4 -1119 -1116 -1008 1119
		mu 0 4 654 656 595 592
		f 4 -1118 -1120 -1007 -1042
		mu 0 4 655 654 592 591
		f 4 -1124 1124 1125 1126
		mu 0 4 657 658 659 660
		f 4 -1123 -1038 1127 -1125
		mu 0 4 658 640 639 659
		f 4 -1128 -1037 -1032 1128
		mu 0 4 659 639 625 624
		f 4 -1126 -1129 -1031 1129
		mu 0 4 660 659 624 620
		f 4 -1122 1130 1131 -1023
		mu 0 4 603 661 662 604
		f 4 -1121 -1127 1132 -1131
		mu 0 4 661 657 660 662
		f 4 -1133 -1130 -1030 1133
		mu 0 4 662 660 620 619
		f 4 -1132 -1134 -1029 -1024
		mu 0 4 604 662 619 605
		f 4 1038 1134 1135 1035
		mu 0 4 647 649 663 643
		f 4 1039 1136 1137 -1135
		mu 0 4 649 653 664 663
		f 4 -1138 1138 1139 1140
		mu 0 4 663 664 665 666
		f 4 -1136 -1141 1141 1034
		mu 0 4 643 663 666 637
		f 4 1040 1142 1143 -1137
		mu 0 4 653 655 667 664
		f 4 1041 1018 1144 -1143
		mu 0 4 655 591 594 667
		f 4 -1145 1019 1145 1146
		mu 0 4 667 594 599 668
		f 4 -1144 -1147 1147 -1139
		mu 0 4 664 667 668 665
		f 4 -1148 1148 1149 1150
		mu 0 4 665 668 669 670
		f 4 -1146 1020 1151 -1149
		mu 0 4 668 599 609 669
		f 4 -1152 1021 1024 1152
		mu 0 4 669 609 611 613
		f 4 -1150 -1153 1025 1153
		mu 0 4 670 669 613 617
		f 4 -1142 1154 1155 1033
		mu 0 4 637 666 671 633
		f 4 -1140 -1151 1156 -1155
		mu 0 4 666 665 670 671
		f 4 -1157 -1154 1026 1157
		mu 0 4 671 670 617 629
		f 4 -1156 -1158 1027 1032
		mu 0 4 633 671 629 631
		f 4 -1047 1158 1100 1159
		mu 0 4 672 673 674 675
		f 4 -1045 1160 1101 -1159
		mu 0 4 673 676 677 674
		f 4 1115 1161 -1109 -1161
		mu 0 4 676 678 679 677
		f 4 1051 -1160 -1100 1162
		mu 0 4 680 672 675 681
		f 4 1050 -1163 -1098 1163
		mu 0 4 682 680 681 683
		f 4 1122 1164 1121 -1164
		mu 0 4 683 684 685 682
		f 3 1120 -1165 1123
		mu 0 3 686 685 684
		f 3 -1162 1114 -1111
		mu 0 3 679 678 687
		f 4 1177 -1203 -1202 -1166
		mu 0 4 688 689 690 691
		f 4 1201 -1205 -1204 -1167
		mu 0 4 691 690 692 693
		f 4 -1208 -1207 -1206 1204
		mu 0 4 690 694 695 692
		f 4 1178 -1209 1207 1202
		mu 0 4 689 696 694 690
		f 4 -1214 -1213 -1212 1210
		mu 0 4 695 697 698 699
		f 4 1211 -1215 -1182 1209
		mu 0 4 699 698 700 701
		f 4 -1216 1170 -1183 1214
		mu 0 4 698 702 703 700
		f 4 -1217 1169 1215 1212
		mu 0 4 697 704 702 698
		f 4 1179 -1219 -1218 1208
		mu 0 4 696 705 706 694
		f 4 1217 -1220 1213 1206
		mu 0 4 694 706 697 695
		f 4 -1221 1168 1216 1219
		mu 0 4 706 707 704 697
		f 4 1180 1167 1220 1218
		mu 0 4 705 708 707 706
		f 4 1183 -1223 -1222 -1168
		mu 0 4 708 709 710 707
		f 4 1221 -1225 -1224 -1169
		mu 0 4 707 710 711 704
		f 4 -1228 -1227 -1226 1224
		mu 0 4 710 712 713 711
		f 4 1184 -1229 1227 1222
		mu 0 4 709 714 712 710
		f 4 1223 -1231 -1230 -1170
		mu 0 4 704 711 715 702
		f 4 1229 -1232 -1188 -1171
		mu 0 4 702 715 716 703
		f 4 -1234 -1233 -1189 1231
		mu 0 4 715 717 718 716
		f 4 1225 -1235 1233 1230
		mu 0 4 711 713 717 715
		f 4 -1238 -1237 -1236 1234
		mu 0 4 713 719 720 717
		f 4 1235 -1239 -1190 1232
		mu 0 4 717 720 721 718
		f 4 -1240 1174 -1191 1238
		mu 0 4 720 722 723 721
		f 4 -1241 1173 1239 1236
		mu 0 4 719 724 722 720
		f 4 1185 -1243 -1242 1228
		mu 0 4 714 725 726 712
		f 4 1241 -1244 1237 1226
		mu 0 4 712 726 719 713
		f 4 -1245 1172 1240 1243
		mu 0 4 726 727 724 719
		f 4 1186 1171 1244 1242
		mu 0 4 725 728 727 726
		f 4 1191 -1247 -1246 -1172
		mu 0 4 728 729 730 727
		f 4 1245 -1249 -1248 -1173
		mu 0 4 727 730 731 724
		f 4 -1252 -1251 -1250 1248
		mu 0 4 730 732 733 731
		f 4 1192 -1253 1251 1246
		mu 0 4 729 734 732 730
		f 4 1247 -1255 -1254 -1174
		mu 0 4 724 731 735 722
		f 4 1253 -1256 -1196 -1175
		mu 0 4 722 735 736 723
		f 4 -1258 -1257 -1197 1255
		mu 0 4 735 737 738 736
		f 4 1249 -1259 1257 1254
		mu 0 4 731 733 737 735
		f 4 1193 -1263 -1262 1252
		mu 0 4 734 739 740 732
		f 4 1261 -1264 1259 1250
		mu 0 4 732 740 741 733
		f 4 -1265 1176 1260 1263
		mu 0 4 740 742 743 741
		f 4 1194 1175 1264 1262
		mu 0 4 739 744 742 740
		f 4 1197 -1267 -1266 -1176
		mu 0 4 744 745 746 742
		f 4 1265 -1269 -1268 -1177
		mu 0 4 742 746 747 743
		f 4 -1272 -1271 -1270 1268
		mu 0 4 746 748 749 747
		f 4 1198 -1273 1271 1266
		mu 0 4 745 750 748 746
		f 4 1199 -1277 -1276 1272
		mu 0 4 750 751 752 748
		f 4 1275 -1278 1273 1270
		mu 0 4 748 752 753 749
		f 4 -1279 1166 1274 1277
		mu 0 4 752 691 693 753
		f 4 1200 1165 1278 1276
		mu 0 4 751 688 691 752
		f 4 -1286 -1285 -1284 1282
		mu 0 4 754 755 756 757
		f 4 1283 -1287 1196 1281
		mu 0 4 757 756 736 738
		f 4 -1288 1190 1195 1286
		mu 0 4 756 721 723 736
		f 4 -1289 1189 1287 1284
		mu 0 4 755 718 721 756
		f 4 1181 -1291 -1290 1280
		mu 0 4 701 700 758 759
		f 4 1289 -1292 1285 1279
		mu 0 4 759 758 755 754
		f 4 -1293 1188 1288 1291
		mu 0 4 758 716 718 755
		f 4 1182 1187 1292 1290
		mu 0 4 700 703 716 758
		f 4 -1195 -1295 -1294 -1198
		mu 0 4 744 739 760 745
		f 4 1293 -1297 -1296 -1199
		mu 0 4 745 760 761 750
		f 4 -1300 -1299 -1298 1296
		mu 0 4 760 762 763 761
		f 4 -1194 -1301 1299 1294
		mu 0 4 739 734 762 760
		f 4 1295 -1303 -1302 -1200
		mu 0 4 750 761 764 751
		f 4 1301 -1304 -1178 -1201
		mu 0 4 751 764 689 688
		f 4 -1306 -1305 -1179 1303
		mu 0 4 764 765 696 689
		f 4 1297 -1307 1305 1302
		mu 0 4 761 763 765 764
		f 4 -1310 -1309 -1308 1306
		mu 0 4 763 766 767 765
		f 4 1307 -1311 -1180 1304
		mu 0 4 765 767 705 696
		f 4 -1312 -1184 -1181 1310
		mu 0 4 767 709 708 705
		f 4 -1313 -1185 1311 1308
		mu 0 4 766 714 709 767
		f 4 -1193 -1315 -1314 1300
		mu 0 4 734 729 768 762
		f 4 1313 -1316 1309 1298
		mu 0 4 762 768 766 763
		f 4 -1317 -1186 1312 1315
		mu 0 4 768 725 714 766
		f 4 -1192 -1187 1316 1314
		mu 0 4 729 728 725 768
		f 4 -1319 -1260 -1318 1205
		mu 0 4 769 770 771 772
		f 4 1317 -1261 -1320 1203
		mu 0 4 772 771 773 774
		f 4 1319 1267 -1321 -1275
		mu 0 4 774 773 775 776
		f 4 -1322 1258 1318 -1211
		mu 0 4 777 778 770 769
		f 4 -1323 1256 1321 -1210
		mu 0 4 779 780 778 777
		f 4 1322 -1281 -1324 -1282
		mu 0 4 780 779 781 782
		f 3 -1283 1323 -1280
		mu 0 3 783 782 781
		f 3 1269 -1274 1320
		mu 0 3 775 784 776
		f 4 -1400 -1580 -1579 -1443
		mu 0 4 785 788 787 786
		f 4 -1444 1578 -1581 -1437
		mu 0 4 789 786 787 790
		f 4 -1438 1580 1579 -1399
		mu 0 4 791 790 787 788
		f 4 1400 -1583 -1582 -1405
		mu 0 4 785 794 793 792
		f 4 -1406 1581 -1584 -1429
		mu 0 4 795 792 793 796
		f 4 -1430 1583 1582 1401
		mu 0 4 797 796 793 794
		f 4 1366 -1586 -1585 -1355
		mu 0 4 798 801 800 799
		f 4 1584 -1587 -1369 -1356
		mu 0 4 799 800 803 802
		f 4 -1588 1371 -1370 1586
		mu 0 4 800 805 804 803
		f 4 1367 1370 1587 1585
		mu 0 4 801 806 805 800
		f 4 1438 -1590 -1589 -1447
		mu 0 4 807 810 809 808
		f 4 1588 -1591 -1441 -1448
		mu 0 4 808 809 812 811
		f 4 -1592 -1373 -1442 1590
		mu 0 4 809 814 813 812
		f 4 1439 -1374 1591 1589
		mu 0 4 810 815 814 809
		f 4 1372 -1594 -1593 -1349
		mu 0 4 816 819 818 817
		f 4 1592 -1595 -1377 -1350
		mu 0 4 817 818 821 820
		f 4 -1596 1379 -1378 1594
		mu 0 4 818 823 822 821
		f 4 1373 1378 1595 1593
		mu 0 4 819 824 823 818
		f 4 1376 -1598 -1597 -1351
		mu 0 4 820 821 826 825
		f 4 1596 -1599 -1381 -1352
		mu 0 4 825 826 828 827
		f 4 -1600 1383 -1382 1598
		mu 0 4 826 830 829 828
		f 4 1377 1382 1599 1597
		mu 0 4 821 822 830 826
		f 4 1380 -1602 -1601 -1353
		mu 0 4 827 828 832 831
		f 4 1600 -1603 -1367 -1354
		mu 0 4 831 832 801 798
		f 4 -1604 1385 -1368 1602
		mu 0 4 832 833 806 801
		f 4 1381 1384 1603 1601
		mu 0 4 828 829 833 832
		f 4 1386 -1606 -1605 -1371
		mu 0 4 806 835 834 805
		f 4 1604 -1607 -1389 -1372
		mu 0 4 805 834 836 804
		f 4 -1608 1391 -1390 1606
		mu 0 4 834 838 837 836
		f 4 1387 1390 1607 1605
		mu 0 4 835 839 838 834
		f 4 1436 -1610 -1609 -1445
		mu 0 4 840 843 842 841
		f 4 1608 -1611 -1439 -1446
		mu 0 4 841 842 810 807
		f 4 -1612 -1393 -1440 1610
		mu 0 4 842 844 815 810
		f 4 1437 -1394 1611 1609
		mu 0 4 843 845 844 842
		f 4 1392 -1614 -1613 -1379
		mu 0 4 824 847 846 823
		f 4 1612 -1615 -1397 -1380
		mu 0 4 823 846 848 822
		f 4 -1616 1399 -1398 1614
		mu 0 4 846 788 785 848
		f 4 1393 1398 1615 1613
		mu 0 4 847 791 788 846
		f 4 1396 -1618 -1617 -1383
		mu 0 4 822 848 849 830
		f 4 1616 -1619 -1403 -1384
		mu 0 4 830 849 850 829
		f 4 -1620 1405 -1404 1618
		mu 0 4 849 792 795 850
		f 4 1397 1404 1619 1617
		mu 0 4 848 785 792 849
		f 4 1402 -1622 -1621 -1385
		mu 0 4 829 850 851 833
		f 4 1620 -1623 -1387 -1386
		mu 0 4 833 851 835 806
		f 4 -1624 1407 -1388 1622
		mu 0 4 851 852 839 835
		f 4 1403 1406 1623 1621
		mu 0 4 850 795 852 851
		f 4 1414 -1626 -1625 -1391
		mu 0 4 839 854 853 838
		f 4 -1392 1624 -1627 -1395
		mu 0 4 837 838 853 855
		f 4 -1396 1626 1625 1415
		mu 0 4 856 855 853 854
		f 4 1388 -1629 -1628 -1375
		mu 0 4 857 860 859 858
		f 4 1627 -1630 1417 -1376
		mu 0 4 858 859 862 861
		f 4 -1631 1395 1416 1629
		mu 0 4 859 864 863 862
		f 4 1389 1394 1630 1628
		mu 0 4 860 865 864 859
		f 4 1368 -1633 -1632 -1365
		mu 0 4 866 869 868 867
		f 4 1631 -1634 1419 -1366
		mu 0 4 867 868 871 870
		f 4 -1635 1375 1418 1633
		mu 0 4 868 858 861 871
		f 4 1369 1374 1634 1632
		mu 0 4 869 857 858 868
		f 4 1420 -1637 -1636 1429
		mu 0 4 797 873 872 796
		f 4 1428 1635 -1638 -1407
		mu 0 4 795 796 872 852
		f 4 -1408 1637 1636 1421
		mu 0 4 839 852 872 873
		f 4 -1422 -1640 -1639 -1415
		mu 0 4 839 873 874 854
		f 4 1638 -1641 -1409 -1416
		mu 0 4 854 874 875 856
		f 4 -1642 1431 -1410 1640
		mu 0 4 874 877 876 875
		f 4 -1421 1430 1641 1639
		mu 0 4 873 797 877 874
		f 4 1408 -1644 -1643 -1417
		mu 0 4 863 879 878 862
		f 4 1642 -1645 -1411 -1418
		mu 0 4 862 878 880 861
		f 4 -1646 1433 -1412 1644
		mu 0 4 878 882 881 880
		f 4 1409 1432 1645 1643
		mu 0 4 879 883 882 878
		f 4 1410 -1648 -1647 -1419
		mu 0 4 861 880 884 871
		f 4 1646 -1649 -1413 -1420
		mu 0 4 871 884 885 870
		f 4 -1650 1435 -1414 1648
		mu 0 4 884 887 886 885
		f 4 1411 1434 1649 1647
		mu 0 4 880 881 887 884
		f 4 -1402 -1652 -1651 -1431
		mu 0 4 797 794 888 877
		f 4 1650 -1653 -1423 -1432
		mu 0 4 877 888 889 876
		f 4 -1654 1443 -1424 1652
		mu 0 4 888 786 789 889
		f 4 -1401 1442 1653 1651
		mu 0 4 794 785 786 888
		f 4 1422 -1656 -1655 -1433
		mu 0 4 883 891 890 882
		f 4 1654 -1657 -1425 -1434
		mu 0 4 882 890 892 881
		f 4 -1658 1445 -1426 1656
		mu 0 4 890 841 807 892
		f 4 1423 1444 1657 1655
		mu 0 4 891 840 841 890
		f 4 1424 -1660 -1659 -1435
		mu 0 4 881 892 893 887
		f 4 1658 -1661 -1427 -1436
		mu 0 4 887 893 894 886
		f 4 -1662 1447 -1428 1660
		mu 0 4 893 808 811 894
		f 4 1425 1446 1661 1659
		mu 0 4 892 807 808 893
		f 4 1662 -1664 -1450 -1449
		mu 0 4 895 898 897 896
		f 4 -1665 -1452 -1451 1663
		mu 0 4 898 900 899 897
		f 4 1449 -1667 -1666 -1453
		mu 0 4 896 897 902 901
		f 4 -1864 -1883 1862 -1860
		mu 0 4 903 906 905 904
		f 4 1863 -1859 1838 -1884
		mu 0 4 906 903 908 907
		f 4 1450 -1454 1667 1666
		mu 0 4 897 899 909 902
		f 4 -1863 -1902 1881 -1861
		mu 0 4 904 905 911 910
		f 4 1668 -1670 -1455 1452
		mu 0 4 901 913 912 896
		f 4 -1671 -1457 -1456 1669
		mu 0 4 913 915 914 912
		f 4 -1882 -1901 -1823 -1862
		mu 0 4 910 911 917 916
		f 4 1454 -1673 -1672 1448
		mu 0 4 896 912 918 895
		f 4 1455 -1458 1673 1672
		mu 0 4 912 914 919 918
		f 4 1879 -1843 1822 -1900
		mu 0 4 920 921 916 917
		f 4 1674 -1676 -1459 1456
		mu 0 4 915 923 922 914
		f 4 -1677 -1461 -1460 1675
		mu 0 4 923 925 924 922
		f 4 -1880 -1899 -1825 -1844
		mu 0 4 921 920 927 926
		f 4 1458 -1679 -1678 1457
		mu 0 4 914 922 928 919
		f 4 1459 -1462 1679 1678
		mu 0 4 922 924 929 928
		f 4 1877 -1845 1824 -1898
		mu 0 4 930 931 926 927
		f 4 1680 -1682 -1463 1460
		mu 0 4 925 933 932 924
		f 4 -1683 -1465 -1464 1681
		mu 0 4 933 935 934 932
		f 4 -1878 -1897 -1827 -1846
		mu 0 4 931 930 937 936
		f 4 1462 -1685 -1684 1461
		mu 0 4 924 932 938 929
		f 4 1463 -1466 1685 1684
		mu 0 4 932 934 939 938
		f 4 1875 -1847 1826 -1896
		mu 0 4 940 941 936 937
		f 4 1686 -1688 -1467 1464
		mu 0 4 935 943 942 934
		f 4 -1689 -1469 -1468 1687
		mu 0 4 943 945 944 942
		f 4 -1876 -1895 -1829 -1848
		mu 0 4 941 940 947 946
		f 4 1466 -1691 -1690 1465
		mu 0 4 934 942 948 939
		f 4 1467 -1470 1691 1690
		mu 0 4 942 944 949 948
		f 4 1873 -1849 1828 -1894
		mu 0 4 950 951 946 947
		f 4 1692 -1694 -1471 1468
		mu 0 4 945 953 952 944
		f 4 -1695 -1473 -1472 1693
		mu 0 4 953 955 954 952
		f 4 -1874 -1893 -1831 -1850
		mu 0 4 951 950 957 956
		f 4 1470 -1697 -1696 1469
		mu 0 4 944 952 958 949
		f 4 1471 -1474 1697 1696
		mu 0 4 952 954 959 958
		f 4 1871 -1851 1830 -1892
		mu 0 4 960 961 956 957
		f 4 1698 -1700 -1475 1472
		mu 0 4 955 963 962 954
		f 4 -1701 -1477 -1476 1699
		mu 0 4 963 965 964 962
		f 4 -1872 -1891 -1833 -1852
		mu 0 4 961 960 967 966
		f 4 1474 -1703 -1702 1473
		mu 0 4 954 962 968 959
		f 4 1475 -1478 1703 1702
		mu 0 4 962 964 969 968
		f 4 1869 -1853 1832 -1890
		mu 0 4 970 971 966 967
		f 4 1704 -1706 -1479 1476
		mu 0 4 965 973 972 964
		f 4 -1707 -1481 -1480 1705
		mu 0 4 973 975 974 972
		f 4 -1870 -1889 -1835 -1854
		mu 0 4 971 970 977 976
		f 4 1478 -1709 -1708 1477
		mu 0 4 964 972 978 969
		f 4 1479 -1482 1709 1708
		mu 0 4 972 974 979 978
		f 4 1867 -1855 1834 -1888
		mu 0 4 980 981 976 977
		f 4 1710 -1712 -1483 1480
		mu 0 4 975 983 982 974
		f 4 -1713 -1485 -1484 1711
		mu 0 4 983 985 984 982
		f 4 -1868 -1887 -1837 -1856
		mu 0 4 981 980 987 986
		f 4 1482 -1715 -1714 1481
		mu 0 4 974 982 988 979
		f 4 1483 -1486 1715 1714
		mu 0 4 982 984 989 988
		f 4 1865 -1857 1836 -1886
		mu 0 4 990 991 986 987
		f 4 1716 -1718 -1487 1484
		mu 0 4 985 993 992 984
		f 4 -1719 1453 -1488 1717
		mu 0 4 993 995 994 992
		f 4 -1866 -1885 -1839 -1858
		mu 0 4 991 990 997 996
		f 4 1486 -1721 -1720 1485
		mu 0 4 984 992 998 989
		f 4 1487 1451 1721 1720
		mu 0 4 992 994 999 998
		f 4 -1500 1671 1732 -1325
		mu 0 4 1000 895 918 1001
		f 4 -1733 -1674 -1499 -1326
		mu 0 4 1001 918 919 1002
		f 4 1677 1733 -1327 1498
		mu 0 4 919 928 1003 1002
		f 4 -1734 -1680 -1501 -1328
		mu 0 4 1003 928 929 1004
		f 4 1683 1734 -1329 1500
		mu 0 4 929 938 1005 1004
		f 4 -1735 -1686 -1502 -1330
		mu 0 4 1005 938 939 1006
		f 4 1689 1735 -1331 1501
		mu 0 4 939 948 1007 1006
		f 4 -1736 -1692 -1503 -1332
		mu 0 4 1007 948 949 1008
		f 4 1695 1736 -1333 1502
		mu 0 4 949 958 1009 1008
		f 4 -1737 -1698 -1504 -1334
		mu 0 4 1009 958 959 1010
		f 4 1701 1737 -1335 1503
		mu 0 4 959 968 1011 1010
		f 4 -1738 -1704 -1505 -1336
		mu 0 4 1011 968 969 1012
		f 4 1707 1738 -1337 1504
		mu 0 4 969 978 1013 1012
		f 4 -1739 -1710 -1506 -1338
		mu 0 4 1013 978 979 1014
		f 4 1713 1739 -1339 1505
		mu 0 4 979 988 1015 1014
		f 4 -1740 -1716 -1507 -1340
		mu 0 4 1015 988 989 1016
		f 4 1719 1740 -1341 1506
		mu 0 4 989 998 1017 1016
		f 4 -1741 -1722 -1508 -1342
		mu 0 4 1017 998 999 1018
		f 4 1664 1741 -1343 1507
		mu 0 4 900 898 1020 1019
		f 4 -1742 -1663 1499 -1344
		mu 0 4 1020 898 895 1000
		f 4 -1566 -1744 -1743 -1575
		mu 0 4 1021 1024 1023 1022
		f 4 -1576 1742 -1745 -1571
		mu 0 4 1025 1022 1023 1026
		f 4 -1572 1744 1743 -1565
		mu 0 4 1027 1026 1023 1024
		f 4 1508 -1747 -1746 -1361
		mu 0 4 1028 1031 1030 1029
		f 4 -1362 1745 -1748 -1515
		mu 0 4 1032 1029 1030 1033
		f 4 -1516 1747 1746 1509
		mu 0 4 1034 1033 1030 1031
		f 4 1510 -1750 -1749 1515
		mu 0 4 1034 1036 1035 1033
		f 4 1514 1748 -1751 -1363
		mu 0 4 1032 1033 1035 1037
		f 4 -1364 1750 1749 1511
		mu 0 4 1038 1037 1035 1036
		f 4 1512 -1753 -1752 1517
		mu 0 4 1039 1042 1041 1040
		f 4 1751 -1754 -1511 1516
		mu 0 4 1040 1041 1036 1034
		f 4 -1755 -1523 -1512 1753
		mu 0 4 1041 1043 1038 1036
		f 4 1513 -1524 1754 1752
		mu 0 4 1042 1044 1043 1041
		f 4 1426 -1757 -1756 1519
		mu 0 4 886 894 1046 1045
		f 4 1755 -1758 -1513 1518
		mu 0 4 1045 1046 1042 1039
		f 4 -1759 -1525 -1514 1757
		mu 0 4 1046 1047 1044 1042
		f 4 1427 -1526 1758 1756
		mu 0 4 894 811 1047 1046
		f 4 1520 -1761 -1760 1523
		mu 0 4 1044 1049 1048 1043
		f 4 1522 1759 -1762 -1345
		mu 0 4 1038 1043 1048 1050
		f 4 -1346 1761 1760 1521
		mu 0 4 1051 1050 1048 1049
		f 4 1440 -1764 -1763 1525
		mu 0 4 811 812 1052 1047
		f 4 1762 -1765 -1521 1524
		mu 0 4 1047 1052 1049 1044
		f 4 -1766 -1347 -1522 1764
		mu 0 4 1052 1053 1051 1049
		f 4 1441 -1348 1765 1763
		mu 0 4 812 813 1053 1052
		f 4 1526 -1768 -1767 1531
		mu 0 4 1054 1057 1056 1055
		f 4 1766 -1769 -1509 1530
		mu 0 4 1055 1056 1031 1028
		f 4 -1770 -1517 -1510 1768
		mu 0 4 1056 1040 1034 1031
		f 4 1527 -1518 1769 1767
		mu 0 4 1057 1039 1040 1056
		f 4 1412 -1772 -1771 1529
		mu 0 4 870 885 1059 1058
		f 4 1528 1770 -1773 -1577
		mu 0 4 1060 1058 1059 1061
		f 4 -1578 1772 1771 1413
		mu 0 4 886 1061 1059 885
		f 4 1364 -1775 -1774 -1357
		mu 0 4 866 867 1063 1062
		f 4 1773 -1776 1535 -1358
		mu 0 4 1062 1063 1065 1064
		f 4 -1777 -1529 1534 1775
		mu 0 4 1063 1058 1060 1065
		f 4 1365 -1530 1776 1774
		mu 0 4 867 870 1058 1063
		f 4 1536 -1779 -1778 -1531
		mu 0 4 1066 1069 1068 1067
		f 4 1777 -1780 -1539 -1532
		mu 0 4 1067 1068 1071 1070
		f 4 -1781 1541 -1540 1779
		mu 0 4 1068 1073 1072 1071
		f 4 1537 1540 1780 1778
		mu 0 4 1069 1074 1073 1068
		f 4 1538 -1783 -1782 -1533
		mu 0 4 1075 1078 1077 1076
		f 4 1781 -1784 -1543 -1534
		mu 0 4 1076 1077 1080 1079
		f 4 -1785 1545 -1544 1783
		mu 0 4 1077 1082 1081 1080
		f 4 1539 1544 1784 1782
		mu 0 4 1078 1083 1082 1077
		f 4 1542 -1787 -1786 -1535
		mu 0 4 1079 1080 1085 1084
		f 4 1785 -1788 -1547 -1536
		mu 0 4 1084 1085 1087 1086
		f 4 -1789 1549 -1548 1787
		mu 0 4 1085 1089 1088 1087
		f 4 1543 1548 1788 1786
		mu 0 4 1080 1081 1089 1085
		f 4 1546 -1791 -1790 -1359
		mu 0 4 1086 1087 1091 1090
		f 4 1789 -1792 -1537 -1360
		mu 0 4 1090 1091 1069 1066
		f 4 -1793 1551 -1538 1791
		mu 0 4 1091 1092 1074 1069
		f 4 1547 1550 1792 1790
		mu 0 4 1087 1088 1092 1091
		f 4 1552 -1795 -1794 -1541
		mu 0 4 1074 1094 1093 1073
		f 4 1793 -1796 -1555 -1542
		mu 0 4 1073 1093 1095 1072
		f 4 -1797 1557 -1556 1795
		mu 0 4 1093 1097 1096 1095
		f 4 1553 1556 1796 1794
		mu 0 4 1094 1098 1097 1093
		f 4 1554 -1799 -1798 -1545
		mu 0 4 1083 1100 1099 1082
		f 4 1797 -1800 -1559 -1546
		mu 0 4 1082 1099 1101 1081
		f 4 -1801 1561 -1560 1799
		mu 0 4 1099 1102 1027 1101
		f 4 1555 1560 1800 1798
		mu 0 4 1100 1103 1102 1099
		f 4 1558 -1803 -1802 -1549
		mu 0 4 1081 1101 1104 1089
		f 4 1801 -1804 -1563 -1550
		mu 0 4 1089 1104 1105 1088
		f 4 -1805 1565 -1564 1803
		mu 0 4 1104 1024 1021 1105
		f 4 1559 1564 1804 1802
		mu 0 4 1101 1027 1024 1104
		f 4 1562 -1807 -1806 -1551
		mu 0 4 1088 1105 1106 1092
		f 4 1805 -1808 -1553 -1552
		mu 0 4 1092 1106 1094 1074
		f 4 -1809 1567 -1554 1807
		mu 0 4 1106 1107 1098 1094
		f 4 1563 1566 1808 1806
		mu 0 4 1105 1021 1107 1106
		f 4 1568 -1811 -1810 -1557
		mu 0 4 1098 1109 1108 1097
		f 4 -1558 1809 -1812 -1573
		mu 0 4 1096 1097 1108 1110
		f 4 -1574 1811 1810 1569
		mu 0 4 1111 1110 1108 1109
		f 4 1570 -1814 -1813 1573
		mu 0 4 1025 1026 1113 1112
		f 4 1572 1812 -1815 -1561
		mu 0 4 1103 1112 1113 1102
		f 4 -1562 1814 1813 1571
		mu 0 4 1027 1102 1113 1026
		f 4 -1568 -1817 -1816 -1569
		mu 0 4 1098 1107 1114 1109
		f 4 -1570 1815 -1818 1575
		mu 0 4 1111 1109 1114 1115
		f 4 1574 1817 1816 -1567
		mu 0 4 1021 1115 1114 1107
		f 4 -1520 -1820 -1819 1577
		mu 0 4 886 1045 1116 1061
		f 4 1818 -1821 1533 1576
		mu 0 4 1061 1116 1117 1060
		f 4 -1822 -1527 1532 1820
		mu 0 4 1116 1057 1054 1117
		f 4 -1519 -1528 1821 1819
		mu 0 4 1045 1039 1057 1116
		f 4 1823 -1675 1488 1842
		mu 0 4 921 923 915 916
		f 4 -1824 1843 -1491 1676
		mu 0 4 923 921 926 925
		f 4 1825 -1681 1490 1844
		mu 0 4 931 933 925 926
		f 4 -1826 1845 -1492 1682
		mu 0 4 933 931 936 935
		f 4 1827 -1687 1491 1846
		mu 0 4 941 943 935 936
		f 4 -1828 1847 -1493 1688
		mu 0 4 943 941 946 945
		f 4 1829 -1693 1492 1848
		mu 0 4 951 953 945 946
		f 4 -1830 1849 -1494 1694
		mu 0 4 953 951 956 955
		f 4 1831 -1699 1493 1850
		mu 0 4 961 963 955 956
		f 4 -1832 1851 -1495 1700
		mu 0 4 963 961 966 965
		f 4 1833 -1705 1494 1852
		mu 0 4 971 973 965 966
		f 4 -1834 1853 -1496 1706
		mu 0 4 973 971 976 975
		f 4 1835 -1711 1495 1854
		mu 0 4 981 983 975 976
		f 4 -1836 1855 -1497 1712
		mu 0 4 983 981 986 985
		f 4 1837 -1717 1496 1856
		mu 0 4 991 993 985 986
		f 4 -1838 1857 -1498 1718
		mu 0 4 993 991 996 995
		f 4 1839 -1668 1497 1858
		mu 0 4 903 902 909 908
		f 4 -1840 1859 1840 1665
		mu 0 4 902 903 904 901
		f 4 -1841 1860 1841 -1669
		mu 0 4 901 904 910 913
		f 4 -1842 1861 -1489 1670
		mu 0 4 913 910 916 915
		f 4 -1732 1363 1489 1882
		mu 0 4 906 1119 1118 905
		f 4 1362 1731 1883 1864
		mu 0 4 1120 1119 906 907
		f 4 -1731 1361 -1865 1884
		mu 0 4 990 1122 1121 997
		f 4 1360 1730 1885 1866
		mu 0 4 1123 1122 990 987
		f 4 -1730 1359 -1867 1886
		mu 0 4 980 1124 1123 987
		f 4 1358 1729 1887 1868
		mu 0 4 1125 1124 980 977
		f 4 -1729 1357 -1869 1888
		mu 0 4 970 1126 1125 977
		f 4 1356 1728 1889 1870
		mu 0 4 802 1126 970 967
		f 4 -1728 1355 -1871 1890
		mu 0 4 960 799 802 967
		f 4 1354 1727 1891 1872
		mu 0 4 798 799 960 957
		f 4 -1727 1353 -1873 1892
		mu 0 4 950 831 798 957
		f 4 1352 1726 1893 1874
		mu 0 4 827 831 950 947
		f 4 -1726 1351 -1875 1894
		mu 0 4 940 825 827 947
		f 4 1350 1725 1895 1876
		mu 0 4 820 825 940 937
		f 4 -1725 1349 -1877 1896
		mu 0 4 930 817 820 937
		f 4 1348 1724 1897 1878
		mu 0 4 816 817 930 927
		f 4 -1724 1347 -1879 1898
		mu 0 4 920 1127 816 927
		f 4 1346 1723 1899 1880
		mu 0 4 1128 1127 920 917
		f 4 -1723 1345 -1881 1900
		mu 0 4 911 1129 1128 917
		f 4 -1490 1344 1722 1901
		mu 0 4 905 1118 1129 911
		f 4 -1907 1902 -1906 -1905
		mu 0 4 1130 1131 1132 1133
		f 4 -1910 1904 -2073 -2075
		mu 0 4 1134 1130 1133 1135
		f 4 -1913 1907 -1912 -1911
		mu 0 4 1136 1137 1138 1139
		f 4 -1916 1903 -1915 -1914
		mu 0 4 1140 1141 1142 1143
		f 4 -1921 -1922 -1917 1913
		mu 0 4 1143 1144 1145 1140
		f 4 -1919 -1918 -1920 1921
		mu 0 4 1144 1146 1147 1145
		f 4 -1925 -1924 -1923 1917
		mu 0 4 1146 1148 1149 1147
		f 4 -1928 1923 -1927 -1926
		mu 0 4 1150 1149 1148 1151
		f 4 -1931 1925 -1930 -1929
		mu 0 4 1152 1150 1151 1153
		f 4 1928 -1934 -1933 -1932
		mu 0 4 1152 1153 1154 1155
		f 4 -1937 -1996 -1998 -1935
		mu 0 4 1156 1157 1158 1159
		f 4 -1940 1936 -1939 -1938
		mu 0 4 1160 1157 1156 1161
		f 4 1937 -1943 -1942 -1941
		mu 0 4 1160 1161 1162 1163
		f 4 -1946 1941 -1945 -1944
		mu 0 4 1164 1163 1162 1165
		f 4 1943 -1949 -1948 -1947
		mu 0 4 1164 1165 1166 1167
		f 4 -1952 -1951 -1950 1947
		mu 0 4 1166 1168 1169 1167
		f 4 1950 -1955 -1954 -1953
		mu 0 4 1169 1168 1170 1171
		f 4 1910 -1956 1953 -1993
		mu 0 4 1136 1139 1171 1170
		f 4 1905 -1959 -1958 -1957
		mu 0 4 1133 1132 1172 1173
		f 4 -1962 1959 1915 -1961
		mu 0 4 1174 1175 1141 1140
		f 4 2072 1956 -2074 -2076
		mu 0 4 1135 1133 1173 1176
		f 4 -1966 1911 1963 -1965
		mu 0 4 1177 1139 1138 1178
		f 4 -1968 1960 1916 -1967
		mu 0 4 1179 1174 1140 1145
		f 4 1919 -1970 -1969 1966
		mu 0 4 1145 1147 1180 1179
		f 4 1922 -1972 -1971 1969
		mu 0 4 1147 1149 1181 1180
		f 4 1927 -1974 -1973 1971
		mu 0 4 1149 1150 1182 1181
		f 4 -1976 -1975 1973 1930
		mu 0 4 1152 1183 1182 1150
		f 4 1975 1931 -1978 -1977
		mu 0 4 1183 1152 1155 1184
		f 4 1995 -1980 -1997 -1999
		mu 0 4 1158 1157 1185 1186
		f 4 1939 -1982 -1981 1979
		mu 0 4 1157 1160 1187 1185
		f 4 1940 -1984 -1983 1981
		mu 0 4 1160 1163 1188 1187
		f 4 1945 -1986 -1985 1983
		mu 0 4 1163 1164 1189 1188
		f 4 1946 -1988 -1987 1985
		mu 0 4 1164 1167 1190 1189
		f 4 -1990 -1989 1987 1949
		mu 0 4 1169 1191 1190 1167
		f 4 1989 1952 -1992 -1991
		mu 0 4 1191 1169 1171 1192
		f 4 1965 -1994 1991 1955
		mu 0 4 1139 1177 1192 1171
		f 4 -1936 1932 -1995 1997
		mu 0 4 1158 1155 1154 1159
		f 4 1977 1935 1998 -1979
		mu 0 4 1184 1155 1158 1186
		f 4 -2023 -2024 -2002 -2001
		mu 0 4 1193 1194 1195 1196
		f 4 2000 -2006 -2005 -2004
		mu 0 4 1193 1196 1197 1198
		f 4 2008 -2013 -2012 -2011
		mu 0 4 1199 1200 1201 1202
		f 4 -2016 -2015 2011 -2014
		mu 0 4 1203 1204 1202 1201
		f 4 2015 -2019 -2018 -2017
		mu 0 4 1204 1203 1205 1206
		f 4 -2021 2004 -2020 2017
		mu 0 4 1205 1198 1197 1206
		f 4 -2003 1999 -2022 2023
		mu 0 4 1194 1207 1208 1195
		f 4 -2027 2024 2002 -2026
		mu 0 4 1209 1210 1207 1194
		f 4 -2029 2025 2022 -2028
		mu 0 4 1211 1209 1194 1193
		f 4 -2032 -2031 -2030 2009
		mu 0 4 1212 1213 1214 1200
		f 4 2007 1980 -2033 2031
		mu 0 4 1212 1185 1187 1213
		f 4 -2035 2012 2029 -2034
		mu 0 4 1215 1201 1200 1214
		f 4 -2037 2013 2034 -2036
		mu 0 4 1216 1203 1201 1215
		f 4 -2039 2018 2036 -2038
		mu 0 4 1217 1205 1203 1216;
	setAttr ".fc[1000:1499]"
		f 4 -2041 -2040 2020 2038
		mu 0 4 1217 1218 1198 1205
		f 4 2039 -2042 2027 2003
		mu 0 4 1198 1218 1211 1193
		f 4 -2048 1976 2045 -2047
		mu 0 4 1219 1183 1184 1220
		f 4 -2050 1974 2047 -2049
		mu 0 4 1221 1182 1183 1219
		f 4 -2052 -2051 1972 2049
		mu 0 4 1221 1222 1181 1182
		f 4 -2054 -2053 1970 2050
		mu 0 4 1222 1223 1180 1181
		f 4 1961 -2056 -2055 2043
		mu 0 4 1175 1174 1224 1225
		f 4 -2058 -2057 1968 2052
		mu 0 4 1223 1226 1179 1180
		f 4 1967 2056 -2059 2055
		mu 0 4 1174 1179 1226 1224
		f 4 2054 -2060 2021 2042
		mu 0 4 1225 1224 1195 1208
		f 4 2058 -2061 2001 2059
		mu 0 4 1224 1226 1196 1195
		f 4 2057 -2062 2005 2060
		mu 0 4 1226 1223 1197 1196
		f 4 2053 -2063 2019 2061
		mu 0 4 1223 1222 1206 1197
		f 4 2016 2062 2051 -2064
		mu 0 4 1204 1206 1222 1221
		f 4 2014 2063 2048 -2065
		mu 0 4 1202 1204 1221 1219
		f 4 2010 2064 2046 -2066
		mu 0 4 1199 1202 1219 1220
		f 4 2026 -2070 -2069 2066
		mu 0 4 1210 1209 1227 1228
		f 4 2068 -2071 1957 2067
		mu 0 4 1228 1227 1173 1172
		f 4 -2072 2074 -1909 -1908
		mu 0 4 1137 1134 1135 1138
		f 4 -1964 1908 2075 -1963
		mu 0 4 1178 1138 1135 1176
		f 4 -2078 -2077 2073 2070
		mu 0 4 1227 1229 1176 1173
		f 4 2028 -2079 2077 2069
		mu 0 4 1209 1211 1229 1227
		f 4 2041 -2081 -2080 2078
		mu 0 4 1211 1218 1230 1229
		f 4 2079 -2082 1962 2076
		mu 0 4 1229 1230 1178 1176
		f 4 2040 -2084 -2083 2080
		mu 0 4 1218 1217 1231 1230
		f 4 2082 -2085 1964 2081
		mu 0 4 1230 1231 1177 1178
		f 4 -2087 -2086 1993 2084
		mu 0 4 1231 1232 1192 1177
		f 4 2037 -2088 2086 2083
		mu 0 4 1217 1216 1232 1231
		f 4 -2090 2087 2035 -2089
		mu 0 4 1233 1232 1216 1215
		f 4 1990 2085 2089 -2091
		mu 0 4 1191 1192 1232 1233
		f 4 -2093 2088 2033 -2092
		mu 0 4 1234 1233 1215 1214
		f 4 1988 2090 2092 -2094
		mu 0 4 1190 1191 1233 1234
		f 4 1986 2093 -2096 -2095
		mu 0 4 1189 1190 1234 1235
		f 4 2095 2091 2030 -2097
		mu 0 4 1235 1234 1214 1213
		f 4 2032 1982 -2098 2096
		mu 0 4 1213 1187 1188 1235
		f 3 2094 2097 1984
		mu 0 3 1189 1235 1188
		f 4 2065 2044 2100 2099
		mu 0 4 1199 1220 1236 1237
		f 4 2098 -2010 -2009 -2100
		mu 0 4 1237 1212 1200 1199
		f 4 -2046 1978 2006 -2045
		mu 0 4 1220 1184 1186 1236
		f 3 1996 -2103 -2007
		mu 0 3 1186 1185 1236
		f 3 -2008 -2099 2101
		mu 0 3 1185 1212 1237
		f 3 -2102 -2101 2102
		mu 0 3 1185 1237 1236
		f 4 2105 2106 -2104 1906
		mu 0 4 1130 1238 1239 1131
		f 4 2255 2253 -2106 1909
		mu 0 4 1134 1240 1238 1130
		f 4 2109 2110 -2108 1912
		mu 0 4 1136 1241 1242 1137
		f 4 2111 1914 -2105 2112
		mu 0 4 1243 1143 1142 1244
		f 4 -2112 2113 2116 1920
		mu 0 4 1143 1243 1245 1144
		f 4 -2117 2115 2114 1918
		mu 0 4 1144 1245 1246 1146
		f 4 -2115 2117 2118 1924
		mu 0 4 1146 1246 1247 1148
		f 4 2119 1926 -2119 2120
		mu 0 4 1248 1151 1148 1247
		f 4 2121 1929 -2120 2122
		mu 0 4 1249 1153 1151 1248
		f 4 2123 2124 1933 -2122
		mu 0 4 1249 1250 1154 1153
		f 4 1934 2179 2177 2126
		mu 0 4 1156 1159 1251 1252
		f 4 2127 1938 -2127 2128
		mu 0 4 1253 1161 1156 1252
		f 4 2129 2130 1942 -2128
		mu 0 4 1253 1254 1162 1161
		f 4 2131 1944 -2131 2132
		mu 0 4 1255 1165 1162 1254
		f 4 2133 2134 1948 -2132
		mu 0 4 1255 1256 1166 1165
		f 4 -2135 2135 2136 1951
		mu 0 4 1166 1256 1257 1168
		f 4 2137 2138 1954 -2137
		mu 0 4 1257 1258 1170 1168
		f 4 1992 -2139 2139 -2110
		mu 0 4 1136 1170 1258 1241
		f 4 2140 2141 2142 -2107
		mu 0 4 1238 1259 1260 1239
		f 4 2144 -2113 -2144 2145
		mu 0 4 1261 1243 1244 1262
		f 4 2256 2254 -2141 -2254
		mu 0 4 1240 1263 1259 1238
		f 4 2148 -2148 -2111 2149
		mu 0 4 1264 1265 1242 1241
		f 4 2150 -2114 -2145 2151
		mu 0 4 1266 1245 1243 1261
		f 4 -2151 2152 2153 -2116
		mu 0 4 1245 1266 1267 1246
		f 4 -2154 2154 2155 -2118
		mu 0 4 1246 1267 1268 1247
		f 4 -2156 2156 2157 -2121
		mu 0 4 1247 1268 1269 1248
		f 4 -2123 -2158 2158 2159
		mu 0 4 1249 1248 1269 1270
		f 4 2160 2161 -2124 -2160
		mu 0 4 1270 1271 1250 1249
		f 4 2180 2178 2163 -2178
		mu 0 4 1251 1272 1273 1252
		f 4 -2164 2164 2165 -2129
		mu 0 4 1252 1273 1274 1253
		f 4 -2166 2166 2167 -2130
		mu 0 4 1253 1274 1275 1254
		f 4 -2168 2168 2169 -2133
		mu 0 4 1254 1275 1276 1255
		f 4 -2170 2170 2171 -2134
		mu 0 4 1255 1276 1277 1256
		f 4 -2136 -2172 2172 2173
		mu 0 4 1257 1256 1277 1278
		f 4 2174 2175 -2138 -2174
		mu 0 4 1278 1279 1258 1257
		f 4 -2140 -2176 2176 -2150
		mu 0 4 1241 1258 1279 1264
		f 4 -2180 1994 -2125 2125
		mu 0 4 1251 1159 1154 1250
		f 4 2162 -2181 -2126 -2162
		mu 0 4 1271 1272 1251 1250
		f 4 2182 2183 2205 2204
		mu 0 4 1280 1281 1282 1283
		f 4 2185 2186 2187 -2183
		mu 0 4 1280 1284 1285 1281
		f 4 2192 2193 2194 -2191
		mu 0 4 1286 1287 1288 1289
		f 4 2195 -2194 2196 2197
		mu 0 4 1290 1288 1287 1291
		f 4 2198 2199 2200 -2198
		mu 0 4 1291 1292 1293 1290
		f 4 -2200 2201 -2187 2202
		mu 0 4 1293 1292 1285 1284
		f 4 -2206 2203 -2182 2184
		mu 0 4 1283 1282 1294 1295
		f 4 2207 -2185 -2207 2208
		mu 0 4 1296 1283 1295 1297
		f 4 2209 -2205 -2208 2210
		mu 0 4 1298 1280 1283 1296
		f 4 -2192 2211 2212 2213
		mu 0 4 1299 1289 1300 1301
		f 4 -2214 2214 -2165 -2190
		mu 0 4 1299 1301 1274 1273
		f 4 2215 -2212 -2195 2216
		mu 0 4 1302 1300 1289 1288
		f 4 2217 -2217 -2196 2218
		mu 0 4 1303 1302 1288 1290
		f 4 2219 -2219 -2201 2220
		mu 0 4 1304 1303 1290 1293
		f 4 -2221 -2203 2221 2222
		mu 0 4 1304 1293 1284 1305
		f 4 -2186 -2210 2223 -2222
		mu 0 4 1284 1280 1298 1305
		f 4 2228 -2228 -2161 2229
		mu 0 4 1306 1307 1271 1270
		f 4 2230 -2230 -2159 2231
		mu 0 4 1308 1306 1270 1269
		f 4 -2232 -2157 2232 2233
		mu 0 4 1308 1269 1268 1309
		f 4 -2233 -2155 2234 2235
		mu 0 4 1309 1268 1267 1310
		f 4 -2226 2236 2237 -2146
		mu 0 4 1262 1311 1312 1261
		f 4 -2235 -2153 2238 2239
		mu 0 4 1310 1267 1266 1313
		f 4 -2238 2240 -2239 -2152
		mu 0 4 1261 1312 1313 1266
		f 4 -2225 -2204 2241 -2237
		mu 0 4 1311 1294 1282 1312
		f 4 -2242 -2184 2242 -2241
		mu 0 4 1312 1282 1281 1313
		f 4 -2243 -2188 2243 -2240
		mu 0 4 1313 1281 1285 1310
		f 4 -2244 -2202 2244 -2236
		mu 0 4 1310 1285 1292 1309
		f 4 2245 -2234 -2245 -2199
		mu 0 4 1291 1308 1309 1292
		f 4 2246 -2231 -2246 -2197
		mu 0 4 1287 1306 1308 1291
		f 4 2247 -2229 -2247 -2193
		mu 0 4 1286 1307 1306 1287
		f 4 -2249 2250 2251 -2209
		mu 0 4 1297 1314 1315 1296
		f 4 -2250 -2142 2252 -2251
		mu 0 4 1314 1260 1259 1315
		f 4 2107 2108 -2256 2071
		mu 0 4 1137 1242 1240 1134
		f 4 2146 -2257 -2109 2147
		mu 0 4 1265 1263 1240 1242
		f 4 -2253 -2255 2257 2258
		mu 0 4 1315 1259 1263 1316
		f 4 -2252 -2259 2259 -2211
		mu 0 4 1296 1315 1316 1298
		f 4 -2260 2260 2261 -2224
		mu 0 4 1298 1316 1317 1305
		f 4 -2258 -2147 2262 -2261
		mu 0 4 1316 1263 1265 1317
		f 4 -2262 2263 2264 -2223
		mu 0 4 1305 1317 1318 1304
		f 4 -2263 -2149 2265 -2264
		mu 0 4 1317 1265 1264 1318
		f 4 -2266 -2177 2266 2267
		mu 0 4 1318 1264 1279 1319
		f 4 -2265 -2268 2268 -2220
		mu 0 4 1304 1318 1319 1303
		f 4 2269 -2218 -2269 2270
		mu 0 4 1320 1302 1303 1319
		f 4 2271 -2271 -2267 -2175
		mu 0 4 1278 1320 1319 1279
		f 4 2272 -2216 -2270 2273
		mu 0 4 1321 1300 1302 1320
		f 4 2274 -2274 -2272 -2173
		mu 0 4 1277 1321 1320 1278
		f 4 2275 2276 -2275 -2171
		mu 0 4 1276 1322 1321 1277
		f 4 2277 -2213 -2273 -2277
		mu 0 4 1322 1301 1300 1321
		f 4 -2278 2278 -2167 -2215
		mu 0 4 1301 1322 1275 1274
		f 3 -2169 -2279 -2276
		mu 0 3 1276 1275 1322
		f 4 -2281 -2282 -2227 -2248
		mu 0 4 1286 1323 1324 1307
		f 4 2280 2190 2191 -2280
		mu 0 4 1323 1286 1289 1299
		f 4 2226 -2189 -2163 2227
		mu 0 4 1307 1324 1272 1271
		f 3 2188 2283 -2179
		mu 0 3 1272 1324 1273
		f 3 -2283 2279 2189
		mu 0 3 1273 1323 1299
		f 3 -2284 2281 2282
		mu 0 3 1273 1324 1323
		f 4 2367 2365 2362 -2364
		mu 0 4 1325 1326 1327 1328
		f 4 2296 -2330 -2329 -2287
		mu 0 4 1329 1330 1331 1332
		f 4 2328 -2331 -2299 -2288
		mu 0 4 1332 1331 1333 1334
		f 4 -2332 2289 -2300 2330
		mu 0 4 1335 1336 1337 1338
		f 4 2297 2288 2331 2329
		mu 0 4 1339 1340 1336 1335
		f 4 2300 -2334 -2333 -2289
		mu 0 4 1340 1341 1342 1336
		f 4 2332 -2335 -2303 -2290
		mu 0 4 1336 1342 1343 1337
		f 4 -2336 2291 -2304 2334
		mu 0 4 1342 1344 1345 1343
		f 4 2301 2290 2335 2333
		mu 0 4 1341 1346 1344 1342
		f 4 2294 -2338 -2337 2307
		mu 0 4 1347 1348 1349 1350
		f 4 2336 -2339 2303 2306
		mu 0 4 1350 1349 1343 1345
		f 4 -2340 2299 2302 2338
		mu 0 4 1349 1338 1337 1343
		f 4 2295 2298 2339 2337
		mu 0 4 1348 1334 1333 1349
		f 4 -2302 -2342 -2341 -2305
		mu 0 4 1346 1341 1351 1352
		f 4 2340 -2343 -2293 -2306
		mu 0 4 1353 1354 1355 1356
		f 4 -2344 -2297 -2294 2342
		mu 0 4 1354 1330 1329 1355
		f 4 -2301 -2298 2343 2341
		mu 0 4 1341 1340 1339 1351
		f 4 2308 -2346 -2345 -2285
		mu 0 4 1356 1357 1358 1359
		f 4 2344 -2347 -2311 -2286
		mu 0 4 1359 1358 1360 1347
		f 4 -2348 2313 -2312 2346
		mu 0 4 1358 1361 1362 1360
		f 4 2309 2312 2347 2345
		mu 0 4 1357 1363 1361 1358
		f 4 2310 -2350 -2349 -2295
		mu 0 4 1347 1360 1364 1348
		f 4 2348 -2351 -2315 -2296
		mu 0 4 1348 1364 1365 1334
		f 4 -2352 2317 -2316 2350
		mu 0 4 1364 1366 1367 1365
		f 4 2311 2316 2351 2349
		mu 0 4 1360 1362 1366 1364
		f 4 2314 -2354 -2353 2287
		mu 0 4 1334 1365 1368 1332
		f 4 2352 -2355 -2319 2286
		mu 0 4 1332 1368 1369 1329
		f 4 -2356 -2321 -2320 2354
		mu 0 4 1368 1370 1371 1369
		f 4 2315 -2322 2355 2353
		mu 0 4 1365 1367 1370 1368
		f 4 2318 -2358 -2357 2293
		mu 0 4 1329 1369 1372 1355
		f 4 2356 -2359 -2309 2292
		mu 0 4 1355 1372 1357 1356
		f 4 -2360 -2323 -2310 2358
		mu 0 4 1372 1373 1363 1357
		f 4 2319 -2324 2359 2357
		mu 0 4 1369 1371 1373 1372
		f 4 2324 -2362 -2361 -2313
		mu 0 4 1363 1374 1328 1361
		f 4 2360 -2363 -2326 -2314
		mu 0 4 1361 1328 1327 1362
		f 4 2325 -2366 -2365 -2317
		mu 0 4 1362 1327 1326 1366
		f 4 2364 -2367 -2327 -2318
		mu 0 4 1366 1326 1375 1367
		f 4 2326 -2370 -2369 2321
		mu 0 4 1367 1375 1376 1370
		f 4 2368 -2371 -2328 2320
		mu 0 4 1370 1376 1377 1371
		f 4 2366 -2368 2371 2369
		mu 0 4 1375 1326 1325 1376
		f 4 2327 -2374 -2373 2323
		mu 0 4 1371 1377 1378 1373
		f 4 2372 -2375 -2325 2322
		mu 0 4 1373 1378 1374 1363
		f 4 2363 2361 2374 -2376
		mu 0 4 1325 1328 1374 1378
		f 4 2370 -2372 2375 2373
		mu 0 4 1377 1376 1325 1378
		f 4 2455 -2455 -2458 -2460
		mu 0 4 1379 1380 1381 1382
		f 4 2378 2420 2421 -2389
		mu 0 4 1383 1384 1385 1386
		f 4 2379 2390 2422 -2421
		mu 0 4 1384 1387 1388 1385
		f 4 -2423 2391 -2382 2423
		mu 0 4 1389 1390 1391 1392
		f 4 -2422 -2424 -2381 -2390
		mu 0 4 1393 1389 1392 1394
		f 4 2380 2424 2425 -2393
		mu 0 4 1394 1392 1395 1396
		f 4 2381 2394 2426 -2425
		mu 0 4 1392 1391 1397 1395
		f 4 -2427 2395 -2384 2427
		mu 0 4 1395 1397 1398 1399
		f 4 -2426 -2428 -2383 -2394
		mu 0 4 1396 1395 1399 1400
		f 4 -2400 2428 2429 -2387
		mu 0 4 1401 1402 1403 1404
		f 4 -2399 -2396 2430 -2429
		mu 0 4 1402 1398 1397 1403
		f 4 -2431 -2395 -2392 2431
		mu 0 4 1403 1397 1391 1390
		f 4 -2430 -2432 -2391 -2388
		mu 0 4 1404 1403 1388 1387
		f 4 2396 2432 2433 2393
		mu 0 4 1400 1405 1406 1396
		f 4 2397 2384 2434 -2433
		mu 0 4 1407 1408 1409 1410
		f 4 -2435 2385 2388 2435
		mu 0 4 1410 1409 1383 1386
		f 4 -2434 -2436 2389 2392
		mu 0 4 1396 1406 1393 1394
		f 4 2376 2436 2437 -2401
		mu 0 4 1408 1411 1412 1413
		f 4 2377 2402 2438 -2437
		mu 0 4 1411 1401 1414 1412
		f 4 -2439 2403 -2406 2439
		mu 0 4 1412 1414 1415 1416
		f 4 -2438 -2440 -2405 -2402
		mu 0 4 1413 1412 1416 1417
		f 4 2386 2440 2441 -2403
		mu 0 4 1401 1404 1418 1414
		f 4 2387 2406 2442 -2441
		mu 0 4 1404 1387 1419 1418
		f 4 -2443 2407 -2410 2443
		mu 0 4 1418 1419 1420 1421
		f 4 -2442 -2444 -2409 -2404
		mu 0 4 1414 1418 1421 1415
		f 4 -2380 2444 2445 -2407
		mu 0 4 1387 1384 1422 1419
		f 4 -2379 2410 2446 -2445
		mu 0 4 1384 1383 1423 1422
		f 4 -2447 2411 2412 2447
		mu 0 4 1422 1423 1424 1425
		f 4 -2446 -2448 2413 -2408
		mu 0 4 1419 1422 1425 1420
		f 4 -2386 2448 2449 -2411
		mu 0 4 1383 1409 1426 1423
		f 4 -2385 2400 2450 -2449
		mu 0 4 1409 1408 1413 1426
		f 4 -2451 2401 2414 2451
		mu 0 4 1426 1413 1417 1427
		f 4 -2450 -2452 2415 -2412
		mu 0 4 1423 1426 1427 1424
		f 4 2404 2452 2453 -2417
		mu 0 4 1417 1416 1380 1428
		f 4 2405 2417 2454 -2453
		mu 0 4 1416 1415 1381 1380
		f 4 2408 2456 2457 -2418
		mu 0 4 1415 1421 1382 1381
		f 4 2409 2418 2458 -2457
		mu 0 4 1421 1420 1429 1382
		f 4 -2414 2460 2461 -2419
		mu 0 4 1420 1425 1430 1429
		f 4 -2413 2419 2462 -2461
		mu 0 4 1425 1424 1431 1430
		f 4 -2462 -2464 2459 -2459
		mu 0 4 1429 1430 1379 1382
		f 4 -2416 2464 2465 -2420
		mu 0 4 1424 1427 1432 1431
		f 4 -2415 2416 2466 -2465
		mu 0 4 1427 1417 1428 1432
		f 4 2467 -2467 -2454 -2456
		mu 0 4 1379 1432 1428 1380
		f 4 -2466 -2468 2463 -2463
		mu 0 4 1431 1432 1379 1430
		f 4 2468 2489 -2479 -2489
		mu 0 4 1433 1434 1435 1436
		f 4 2469 2490 -2480 -2490
		mu 0 4 1434 1437 1438 1435
		f 4 2470 2491 -2481 -2491
		mu 0 4 1437 1439 1440 1438
		f 4 2471 2492 -2482 -2492
		mu 0 4 1439 1441 1442 1440
		f 4 2472 2493 -2483 -2493
		mu 0 4 1441 1443 1444 1442
		f 4 2473 2494 -2484 -2494
		mu 0 4 1443 1445 1446 1444
		f 4 2474 2495 -2485 -2495
		mu 0 4 1445 1447 1448 1446
		f 4 2475 2496 -2486 -2496
		mu 0 4 1447 1449 1450 1448
		f 4 2476 2497 -2487 -2497
		mu 0 4 1449 1451 1452 1450
		f 4 2477 2488 -2488 -2498
		mu 0 4 1451 1433 1436 1452
		f 3 -2469 -2499 2499
		mu 0 3 1453 1454 1455
		f 3 -2470 -2500 2500
		mu 0 3 1456 1453 1455
		f 3 -2471 -2501 2501
		mu 0 3 1457 1456 1455
		f 3 -2472 -2502 2502
		mu 0 3 1441 1457 1455
		f 3 -2473 -2503 2503
		mu 0 3 1443 1441 1455
		f 3 -2474 -2504 2504
		mu 0 3 1458 1443 1455
		f 3 -2475 -2505 2505
		mu 0 3 1459 1458 1455
		f 3 -2476 -2506 2506
		mu 0 3 1460 1459 1455
		f 3 -2477 -2507 2507
		mu 0 3 1461 1460 1455
		f 3 -2478 -2508 2498
		mu 0 3 1454 1461 1455
		f 3 2590 2591 -2593
		mu 0 3 1462 1463 1464
		f 3 2594 2595 -2592
		mu 0 3 1463 1465 1464
		f 3 2597 2598 -2596
		mu 0 3 1465 1466 1464
		f 3 2600 2601 -2599
		mu 0 3 1466 1467 1464
		f 3 2603 2604 -2602
		mu 0 3 1467 1468 1464
		f 3 2606 2607 -2605
		mu 0 3 1468 1469 1464
		f 3 2609 2610 -2608
		mu 0 3 1469 1470 1464
		f 3 2612 2613 -2611
		mu 0 3 1470 1471 1464
		f 3 2615 2616 -2614
		mu 0 3 1471 1472 1464
		f 3 2617 2592 -2617
		mu 0 3 1472 1462 1464
		f 4 2528 2518 -2530 -2509
		mu 0 4 1473 1474 1475 1476
		f 4 2529 2519 -2531 -2510
		mu 0 4 1476 1475 1477 1478
		f 4 2530 2520 -2532 -2511
		mu 0 4 1478 1477 1479 1480
		f 4 2531 2521 -2533 -2512
		mu 0 4 1480 1479 1481 1482
		f 4 2532 2522 -2534 -2513
		mu 0 4 1482 1481 1483 1484
		f 4 2533 2523 -2535 -2514
		mu 0 4 1484 1483 1485 1486
		f 4 2534 2524 -2536 -2515
		mu 0 4 1486 1485 1487 1488
		f 4 2535 2525 -2537 -2516
		mu 0 4 1488 1487 1489 1490
		f 4 2536 2526 -2538 -2517
		mu 0 4 1490 1489 1491 1492
		f 4 2537 2527 -2529 -2518
		mu 0 4 1492 1491 1474 1473
		f 3 -2540 2538 2508
		mu 0 3 1493 1494 1495
		f 3 -2541 2539 2509
		mu 0 3 1496 1494 1493
		f 3 -2542 2540 2510
		mu 0 3 1497 1494 1496
		f 3 -2543 2541 2511
		mu 0 3 1482 1494 1497
		f 3 -2544 2542 2512
		mu 0 3 1484 1494 1482
		f 3 -2545 2543 2513
		mu 0 3 1498 1494 1484
		f 3 -2546 2544 2514
		mu 0 3 1499 1494 1498
		f 3 -2547 2545 2515
		mu 0 3 1500 1494 1499
		f 3 -2548 2546 2516
		mu 0 3 1501 1494 1500
		f 3 -2539 2547 2517
		mu 0 3 1495 1494 1501
		f 3 2619 -2622 -2623
		mu 0 3 1502 1503 1504
		f 3 2621 -2625 -2626
		mu 0 3 1504 1503 1505
		f 3 2624 -2628 -2629
		mu 0 3 1505 1503 1506
		f 3 2627 -2631 -2632
		mu 0 3 1506 1503 1507
		f 3 2630 -2634 -2635
		mu 0 3 1507 1503 1508
		f 3 2633 -2637 -2638
		mu 0 3 1508 1503 1509
		f 3 2636 -2640 -2641
		mu 0 3 1509 1503 1510
		f 3 2639 -2643 -2644
		mu 0 3 1510 1503 1511
		f 3 2642 -2646 -2647
		mu 0 3 1511 1503 1512
		f 3 2645 -2620 -2648
		mu 0 3 1512 1503 1502
		f 4 2478 2549 -2551 -2549
		mu 0 4 1436 1435 1513 1514
		f 4 2479 2551 -2553 -2550
		mu 0 4 1435 1438 1515 1513
		f 4 2480 2553 -2555 -2552
		mu 0 4 1438 1440 1516 1515
		f 4 2481 2555 -2557 -2554
		mu 0 4 1440 1442 1517 1516
		f 4 2482 2557 -2559 -2556
		mu 0 4 1442 1444 1518 1517
		f 4 2483 2559 -2561 -2558
		mu 0 4 1444 1446 1519 1518
		f 4 2484 2561 -2563 -2560
		mu 0 4 1446 1448 1520 1519
		f 4 2485 2563 -2565 -2562
		mu 0 4 1448 1450 1521 1520
		f 4 2486 2565 -2567 -2564
		mu 0 4 1450 1452 1522 1521
		f 4 2487 2548 -2568 -2566
		mu 0 4 1452 1436 1514 1522
		f 4 -2519 2568 2570 -2570
		mu 0 4 1475 1474 1523 1524
		f 4 -2520 2569 2572 -2572
		mu 0 4 1477 1475 1524 1525
		f 4 -2521 2571 2574 -2574
		mu 0 4 1479 1477 1525 1526
		f 4 -2522 2573 2576 -2576
		mu 0 4 1481 1479 1526 1527
		f 4 -2523 2575 2578 -2578
		mu 0 4 1483 1481 1527 1528
		f 4 -2524 2577 2580 -2580
		mu 0 4 1485 1483 1528 1529
		f 4 -2525 2579 2582 -2582
		mu 0 4 1487 1485 1529 1530
		f 4 -2526 2581 2584 -2584
		mu 0 4 1489 1487 1530 1531
		f 4 -2527 2583 2586 -2586
		mu 0 4 1491 1489 1531 1532
		f 4 -2528 2585 2587 -2569
		mu 0 4 1474 1491 1532 1523
		f 4 2550 2589 -2591 -2589
		mu 0 4 1514 1513 1463 1462
		f 4 2552 2593 -2595 -2590
		mu 0 4 1513 1515 1465 1463
		f 4 2554 2596 -2598 -2594
		mu 0 4 1515 1516 1466 1465
		f 4 2556 2599 -2601 -2597
		mu 0 4 1516 1517 1467 1466
		f 4 2558 2602 -2604 -2600
		mu 0 4 1517 1518 1468 1467
		f 4 2560 2605 -2607 -2603
		mu 0 4 1518 1519 1469 1468
		f 4 2562 2608 -2610 -2606
		mu 0 4 1519 1520 1470 1469
		f 4 2564 2611 -2613 -2609
		mu 0 4 1520 1521 1471 1470
		f 4 2566 2614 -2616 -2612
		mu 0 4 1521 1522 1472 1471
		f 4 2567 2588 -2618 -2615
		mu 0 4 1522 1514 1462 1472
		f 4 -2571 2618 2622 -2621
		mu 0 4 1524 1523 1502 1504
		f 4 -2573 2620 2625 -2624
		mu 0 4 1525 1524 1504 1505
		f 4 -2575 2623 2628 -2627
		mu 0 4 1526 1525 1505 1506
		f 4 -2577 2626 2631 -2630
		mu 0 4 1527 1526 1506 1507
		f 4 -2579 2629 2634 -2633
		mu 0 4 1528 1527 1507 1508
		f 4 -2581 2632 2637 -2636
		mu 0 4 1529 1528 1508 1509
		f 4 -2583 2635 2640 -2639
		mu 0 4 1530 1529 1509 1510
		f 4 -2585 2638 2643 -2642
		mu 0 4 1531 1530 1510 1511
		f 4 -2587 2641 2646 -2645
		mu 0 4 1532 1531 1511 1512
		f 4 -2588 2644 2647 -2619
		mu 0 4 1523 1532 1512 1502
		f 4 3243 3244 3246 3247
		mu 0 4 1533 1534 1535 1536
		f 4 -3245 3248 3249 3250
		mu 0 4 1535 1534 1537 1538
		f 4 3253 3254 3255 3256
		mu 0 4 1539 1540 1541 1542
		f 4 -3247 3257 -3255 3258
		mu 0 4 1536 1535 1541 1540
		f 4 -3260 3260 3261 3262
		mu 0 4 1543 1544 1545 1546
		f 4 -3262 3263 3264 3265
		mu 0 4 1546 1545 1547 1548
		f 4 3268 3269 -3265 3270
		mu 0 4 1549 1550 1548 1547
		f 4 3271 -3270 3273 3274
		mu 0 4 1551 1548 1550 1552
		f 4 3275 -3275 3277 3278
		mu 0 4 1553 1551 1552 1554
		f 4 -3257 3279 3281 3282
		mu 0 4 1539 1542 1555 1556
		f 4 -3282 3283 -3279 3284
		mu 0 4 1556 1555 1553 1554
		f 4 -3276 3285 -3266 -3272
		mu 0 4 1551 1553 1546 1548
		f 4 -3286 -3284 3286 -3263
		mu 0 4 1546 1553 1555 1543
		f 4 -3250 3287 3259 3288
		mu 0 4 1538 1537 1544 1543
		f 4 -3287 -3280 3289 -3289
		mu 0 4 1543 1555 1542 1538
		f 4 -3256 -3258 -3251 -3290
		mu 0 4 1542 1541 1535 1538
		f 4 2656 2657 -2652 2658
		mu 0 4 1557 1558 1559 1560
		f 4 2659 2660 -2650 2661
		mu 0 4 1561 1562 1563 1564
		f 4 2662 2663 2664 -2660
		mu 0 4 1561 1565 1566 1562
		f 4 2665 2666 2667 -2664
		mu 0 4 1565 1567 1568 1566
		f 4 2668 2669 2670 -2667
		mu 0 4 1567 1569 1570 1568
		f 4 2671 2795 2786 2673
		mu 0 4 1571 1572 1573 1574
		f 4 2674 2675 2676 -2674
		mu 0 4 1574 1575 1576 1571
		f 4 2677 2741 2740 -2676
		mu 0 4 1575 1577 1578 1576
		f 4 2680 2746 2745 -2679
		mu 0 4 1579 1580 1581 1582
		f 4 2683 2684 2685 -2682
		mu 0 4 1583 1584 1585 1586
		f 4 -2685 2686 2800 2791
		mu 0 4 1585 1584 1587 1588
		f 4 2689 2690 2691 -2688
		mu 0 4 1589 1590 1591 1592
		f 4 2692 2693 2694 -2691
		mu 0 4 1590 1593 1594 1591
		f 4 2695 -2657 2696 -2694
		mu 0 4 1593 1558 1557 1594
		f 4 -2653 -2658 2697 2698
		mu 0 4 1595 1559 1558 1596
		f 4 2699 2700 -2654 -2699
		mu 0 4 1596 1597 1598 1595
		f 4 2701 2702 -2656 -2701
		mu 0 4 1597 1599 1600 1598
		f 4 -2655 -2703 2703 -2662
		mu 0 4 1564 1600 1599 1561
		f 4 -2663 -2704 2704 2705
		mu 0 4 1565 1561 1599 1601
		f 4 -2705 -2702 2706 2707
		mu 0 4 1601 1599 1597 1602
		f 4 2708 -2707 -2700 2709
		mu 0 4 1603 1602 1597 1596
		f 4 2710 -2710 -2698 -2696
		mu 0 4 1593 1603 1596 1558
		f 4 -2711 -2693 2711 2712
		mu 0 4 1603 1593 1590 1604
		f 4 -2709 -2713 2713 2714
		mu 0 4 1602 1603 1604 1605
		f 4 -2715 2715 2716 -2708
		mu 0 4 1602 1605 1606 1601
		f 4 -2666 -2706 -2717 2717
		mu 0 4 1567 1565 1601 1606
		f 4 2718 2719 -2669 -2718
		mu 0 4 1606 1607 1569 1567
		f 4 -2719 -2716 2720 2721
		mu 0 4 1607 1606 1605 1608
		f 4 -2714 2722 2723 -2721
		mu 0 4 1605 1604 1609 1608
		f 4 2724 -2723 -2712 -2690
		mu 0 4 1589 1609 1604 1590
		f 4 -2787 2796 2787 2726
		mu 0 4 1574 1573 1610 1611
		f 4 2797 2788 2728 -2788
		mu 0 4 1610 1612 1613 1611
		f 4 2729 -2789 2798 2789
		mu 0 4 1614 1613 1612 1615
		f 4 2731 -2790 2799 -2687
		mu 0 4 1584 1614 1615 1587
		f 4 2732 2733 -2732 -2684
		mu 0 4 1583 1616 1614 1584
		f 4 2734 2735 -2730 -2734
		mu 0 4 1616 1617 1613 1614
		f 4 2736 -2729 -2736 2737
		mu 0 4 1618 1611 1613 1617
		f 4 2738 -2675 -2727 -2737
		mu 0 4 1618 1575 1574 1611
		f 4 -2742 2739 2678 2679
		mu 0 4 1578 1577 1579 1582
		f 4 -2739 -2738 2742 -2678
		mu 0 4 1575 1618 1617 1577
		f 4 -2735 2743 -2740 -2743
		mu 0 4 1617 1616 1579 1577
		f 4 -2747 2744 2681 2682
		mu 0 4 1581 1580 1583 1586
		f 4 -2681 -2744 -2733 -2745
		mu 0 4 1580 1579 1616 1583
		f 4 2747 2748 2749 -2649
		mu 0 4 1619 1620 1621 1622
		f 4 2750 2751 2752 -2749
		mu 0 4 1620 1623 1624 1621
		f 4 2753 2754 2755 -2752
		mu 0 4 1623 1625 1626 1624
		f 4 2756 2757 2758 -2755
		mu 0 4 1625 1627 1628 1626
		f 4 -2748 -2651 2759 2760
		mu 0 4 1620 1619 1563 1629
		f 4 -2751 -2761 2761 2762
		mu 0 4 1623 1620 1629 1630
		f 4 -2754 -2763 2763 2764
		mu 0 4 1625 1623 1630 1631
		f 4 -2757 -2765 2765 2766
		mu 0 4 1627 1625 1631 1632
		f 4 -2792 2801 -2768 2769
		mu 0 4 1585 1588 1633 1634
		f 4 2771 -2794 2802 2794
		mu 0 4 1635 1636 1637 1638
		f 4 2774 2775 -2773 2776
		mu 0 4 1639 1640 1641 1642
		f 4 -2775 2777 2778 2779
		mu 0 4 1640 1639 1643 1644
		f 4 -2779 2780 2781 2782
		mu 0 4 1644 1643 1645 1646
		f 4 -2781 2783 -2769 2784
		mu 0 4 1645 1643 1647 1592
		f 4 -2796 2785 -2670 2672
		mu 0 4 1573 1572 1570 1569
		f 4 -2797 -2673 -2720 2725
		mu 0 4 1610 1573 1569 1607
		f 4 2727 -2798 -2726 -2722
		mu 0 4 1608 1612 1610 1607
		f 4 -2799 -2728 -2724 2730
		mu 0 4 1615 1612 1608 1609
		f 4 -2800 -2731 -2725 -2791
		mu 0 4 1587 1615 1609 1589
		f 4 -2801 2790 2687 2688
		mu 0 4 1588 1587 1589 1592
		f 4 -2802 -2689 2768 -2793
		mu 0 4 1633 1588 1592 1647
		f 4 -2803 -2771 2772 2773
		mu 0 4 1638 1637 1642 1641
		f 4 -2782 -2785 -2692 2803
		mu 0 4 1646 1645 1592 1591
		f 4 -2772 2804 2805 2806
		mu 0 4 1636 1635 1648 1649
		f 4 2807 2822 2821 -2807
		mu 0 4 1649 1650 1651 1636
		f 4 2810 2811 -2686 -2770
		mu 0 4 1634 1652 1586 1585
		f 4 2812 2813 2814 -2809
		mu 0 4 1653 1654 1655 1656
		f 4 -2683 -2812 -2816 2816
		mu 0 4 1581 1586 1652 1657
		f 4 2817 2856 2855 -2814
		mu 0 4 1654 1658 1659 1655
		f 4 2836 2835 2808 2809
		mu 0 4 1660 1661 1653 1656
		f 4 2823 2824 2793 -2822
		mu 0 4 1651 1662 1637 1636
		f 4 2825 2770 -2825 2826
		mu 0 4 1663 1642 1637 1662
		f 4 2827 -2777 -2826 2828
		mu 0 4 1664 1639 1642 1663
		f 4 -2778 -2828 2829 -2784
		mu 0 4 1643 1639 1664 1647
		f 4 2830 2792 -2830 2831
		mu 0 4 1665 1633 1647 1664
		f 4 2832 2833 -2832 -2829
		mu 0 4 1663 1666 1665 1664
		f 4 -2823 2820 -2837 2834
		mu 0 4 1651 1650 1661 1660
		f 4 2837 2838 -2833 -2827
		mu 0 4 1662 1667 1666 1663
		f 4 2839 -2838 -2824 -2835
		mu 0 4 1660 1667 1662 1651
		f 4 -2810 2840 2841 -2840
		mu 0 4 1660 1656 1668 1667
		f 4 -2842 2842 2843 -2839
		mu 0 4 1667 1668 1669 1666
		f 4 -2844 2844 2845 -2834
		mu 0 4 1666 1669 1670 1665
		f 4 -2831 -2846 2846 2767
		mu 0 4 1633 1665 1670 1634
		f 4 -2815 2847 2848 -2841
		mu 0 4 1656 1655 1671 1668
		f 4 2849 -2843 -2849 2850
		mu 0 4 1672 1669 1668 1671
		f 4 2851 -2845 -2850 2852
		mu 0 4 1673 1670 1669 1672
		f 4 -2852 2853 -2811 -2847
		mu 0 4 1670 1673 1652 1634
		f 4 -2857 2854 2818 2819
		mu 0 4 1659 1658 1674 1675
		f 4 -2848 -2856 2857 2858
		mu 0 4 1671 1655 1659 1676
		f 4 2859 -2851 -2859 2860
		mu 0 4 1677 1672 1671 1676
		f 4 -2860 2861 2862 -2853
		mu 0 4 1672 1677 1678 1673
		f 4 -2863 2863 2815 -2854
		mu 0 4 1673 1678 1657 1652
		f 4 2864 2865 -2766 2866
		mu 0 4 1679 1680 1632 1631
		f 4 -2865 2867 2868 2869
		mu 0 4 1680 1679 1681 1682
		f 4 2870 2871 -2760 -2661
		mu 0 4 1562 1683 1629 1563
		f 4 -2665 2872 2873 -2871
		mu 0 4 1562 1566 1684 1683
		f 4 2874 -2872 -2874 2875
		mu 0 4 1685 1629 1683 1684
		f 4 -2762 -2875 2876 2877
		mu 0 4 1630 1629 1685 1686
		f 4 2878 -2867 -2764 -2878
		mu 0 4 1686 1679 1631 1630
		f 4 -2668 2879 2880 -2873
		mu 0 4 1566 1568 1687 1684
		f 4 -2881 2881 2882 -2876
		mu 0 4 1684 1687 1688 1685
		f 4 2883 -2877 -2883 2884
		mu 0 4 1689 1686 1685 1688
		f 4 -2868 -2879 -2884 2885
		mu 0 4 1681 1679 1686 1689
		f 4 2886 -2819 2887 2888
		mu 0 4 1690 1675 1674 1691
		f 4 2889 2890 2891 -2886
		mu 0 4 1689 1692 1693 1681
		f 4 2892 2893 2894 -2891
		mu 0 4 1692 1694 1695 1693
		f 4 -2894 2895 2896 2897
		mu 0 4 1695 1694 1696 1697
		f 4 2898 2899 -2897 2900
		mu 0 4 1698 1699 1697 1696
		f 4 -2899 2901 2902 2903
		mu 0 4 1699 1698 1700 1701
		f 4 -2903 2904 2943 2941
		mu 0 4 1701 1700 1702 1703
		f 4 -2906 2907 2908 2909
		mu 0 4 1704 1705 1706 1707
		f 4 2910 2911 -2909 2912
		mu 0 4 1708 1709 1707 1706
		f 4 2913 2914 -2911 2915
		mu 0 4 1710 1690 1709 1708
		f 4 -2887 -2914 2916 2917
		mu 0 4 1675 1690 1710 1711
		f 4 -2820 -2918 2918 -2858
		mu 0 4 1659 1675 1711 1676
		f 4 2919 2920 -2915 -2889
		mu 0 4 1691 1712 1709 1690
		f 4 -2921 2921 2922 -2912
		mu 0 4 1709 1712 1713 1707
		f 4 2923 -2910 -2923 2924
		mu 0 4 1714 1704 1707 1713
		f 4 2944 2942 2926 -2942
		mu 0 4 1703 1715 1716 1701
		f 4 -2927 2927 2928 -2904
		mu 0 4 1701 1716 1717 1699
		f 4 -2929 2929 2930 -2900
		mu 0 4 1699 1717 1718 1697
		f 4 -2931 2931 2932 -2898
		mu 0 4 1697 1718 1719 1695
		f 4 2933 2934 -2895 -2933
		mu 0 4 1719 1720 1693 1695
		f 4 -2935 2935 -2869 -2892
		mu 0 4 1693 1720 1682 1681
		f 4 -2890 -2885 2936 -2893
		mu 0 4 1692 1689 1688 1694
		f 4 -2937 -2882 2937 -2896
		mu 0 4 1694 1688 1687 1696
		f 4 -2938 -2880 2938 -2901
		mu 0 4 1696 1687 1568 1698
		f 4 -2939 -2671 2939 -2902
		mu 0 4 1698 1568 1570 1700
		f 4 -2944 2940 2905 2906
		mu 0 4 1703 1702 1705 1704
		f 4 -2924 2925 -2945 -2907
		mu 0 4 1704 1714 1715 1703
		f 4 -2940 -2786 2945 -2905
		mu 0 4 1700 1570 1572 1702
		f 4 2946 -2941 -2946 -2672
		mu 0 4 1571 1705 1702 1572
		f 4 -2677 2947 -2908 -2947
		mu 0 4 1571 1576 1706 1705
		f 4 2948 -2913 -2948 -2741
		mu 0 4 1578 1708 1706 1576
		f 4 -2949 -2680 2949 -2916
		mu 0 4 1708 1578 1582 1710
		f 4 -2950 -2746 -2817 2950
		mu 0 4 1710 1582 1581 1657
		f 4 2951 -2917 -2951 -2864
		mu 0 4 1678 1711 1710 1657
		f 4 -2862 -2861 -2919 -2952
		mu 0 4 1678 1677 1676 1711
		f 4 -3292 -3293 -3294 -3244
		mu 0 4 1533 1721 1722 1534
		f 4 -3295 -3296 -3249 3293
		mu 0 4 1722 1723 1537 1534
		f 4 -3298 -3299 -3301 -3302
		mu 0 4 1724 1725 1726 1727
		f 4 -3303 3300 -3304 3292
		mu 0 4 1721 1727 1726 1722
		f 4 -3305 -3306 -3261 3306
		mu 0 4 1728 1729 1545 1544
		f 4 -3308 -3309 -3264 3305
		mu 0 4 1729 1730 1547 1545
		f 4 -3271 3308 -3311 -3312
		mu 0 4 1549 1547 1730 1731
		f 4 -3314 -3315 3310 -3316
		mu 0 4 1732 1733 1731 1730
		f 4 -3318 -3319 3313 -3320
		mu 0 4 1734 1735 1733 1732
		f 4 -3322 -3323 -3324 3297
		mu 0 4 1724 1736 1737 1725
		f 4 -3325 3317 -3326 3322
		mu 0 4 1736 1735 1734 1737
		f 4 3315 3307 -3327 3319
		mu 0 4 1732 1730 1729 1734
		f 4 3304 -3328 3325 3326
		mu 0 4 1729 1728 1737 1734
		f 4 -3329 -3307 -3288 3295
		mu 0 4 1723 1728 1544 1537
		f 4 3328 -3330 3323 3327
		mu 0 4 1728 1723 1725 1737
		f 4 3329 3294 3303 3298
		mu 0 4 1725 1723 1722 1726
		f 4 -2659 2955 -2962 -2961
		mu 0 4 1557 1560 1738 1739
		f 4 -2965 2953 -2964 -2963
		mu 0 4 1740 1741 1742 1743
		f 4 2962 -2968 -2967 -2966
		mu 0 4 1740 1743 1744 1745;
	setAttr ".fc[1500:1821]"
		f 4 2966 -2971 -2970 -2969
		mu 0 4 1745 1744 1746 1747
		f 4 2969 -2974 -2973 -2972
		mu 0 4 1747 1746 1748 1749
		f 4 -2977 -3080 -3088 -2975
		mu 0 4 1750 1751 1752 1753
		f 4 2976 -2980 -2979 -2978
		mu 0 4 1751 1750 1754 1755
		f 4 2978 -3042 -3043 -2981
		mu 0 4 1755 1754 1756 1757
		f 4 2981 -3047 -3048 -2984
		mu 0 4 1758 1759 1760 1761
		f 4 2984 -2989 -2988 -2987
		mu 0 4 1762 1763 1764 1765
		f 4 -3085 -3093 -2990 2987
		mu 0 4 1764 1766 1767 1765
		f 4 2990 -2995 -2994 -2993
		mu 0 4 1768 1769 1591 1770
		f 4 2993 -2695 -2997 -2996
		mu 0 4 1770 1591 1594 1771
		f 4 2996 -2697 2960 -2998
		mu 0 4 1771 1594 1557 1739
		f 4 -3000 -2999 2961 2956
		mu 0 4 1772 1773 1739 1738
		f 4 2999 2957 -3002 -3001
		mu 0 4 1773 1772 1774 1775
		f 4 3001 2959 -3004 -3003
		mu 0 4 1775 1774 1776 1777
		f 4 2964 -3005 3003 2958
		mu 0 4 1741 1740 1777 1776
		f 4 -3007 -3006 3004 2965
		mu 0 4 1745 1778 1777 1740
		f 4 -3009 -3008 3002 3005
		mu 0 4 1778 1779 1775 1777
		f 4 -3011 3000 3007 -3010
		mu 0 4 1780 1773 1775 1779
		f 4 2997 2998 3010 -3012
		mu 0 4 1771 1739 1773 1780
		f 4 -3014 -3013 2995 3011
		mu 0 4 1780 1781 1770 1771
		f 4 -3016 -3015 3013 3009
		mu 0 4 1779 1782 1781 1780
		f 4 3008 -3018 -3017 3015
		mu 0 4 1779 1778 1783 1782
		f 4 -3019 3017 3006 2968
		mu 0 4 1747 1783 1778 1745
		f 4 3018 2971 -3021 -3020
		mu 0 4 1783 1747 1749 1784
		f 4 -3023 -3022 3016 3019
		mu 0 4 1784 1785 1782 1783
		f 4 3021 -3025 -3024 3014
		mu 0 4 1782 1785 1786 1781
		f 4 2992 3012 3023 -3026
		mu 0 4 1768 1770 1781 1786
		f 4 -3028 -3081 -3089 3079
		mu 0 4 1751 1787 1788 1752
		f 4 3080 -3030 -3082 -3090
		mu 0 4 1788 1787 1789 1790
		f 4 -3083 -3091 3081 -3031
		mu 0 4 1791 1792 1790 1789
		f 4 2989 -3092 3082 -3033
		mu 0 4 1765 1767 1792 1791
		f 4 2986 3032 -3035 -3034
		mu 0 4 1762 1765 1791 1793
		f 4 3034 3030 -3037 -3036
		mu 0 4 1793 1791 1789 1794
		f 4 -3039 3036 3029 -3038
		mu 0 4 1795 1794 1789 1787
		f 4 3037 3027 2977 -3040
		mu 0 4 1795 1787 1751 1755
		f 4 -2983 -2982 -3041 3042
		mu 0 4 1756 1759 1758 1757
		f 4 2980 -3044 3038 3039
		mu 0 4 1755 1757 1794 1795
		f 4 3043 3040 -3045 3035
		mu 0 4 1794 1757 1758 1793
		f 4 -2986 -2985 -3046 3047
		mu 0 4 1760 1763 1762 1761
		f 4 3045 3033 3044 2983
		mu 0 4 1761 1762 1793 1758
		f 4 2952 -2750 -3050 -3049
		mu 0 4 1796 1622 1621 1797
		f 4 3049 -2753 -3052 -3051
		mu 0 4 1797 1621 1624 1798
		f 4 3051 -2756 -3054 -3053
		mu 0 4 1798 1624 1626 1799
		f 4 3053 -2759 -3056 -3055
		mu 0 4 1799 1626 1628 1800
		f 4 -3058 -3057 2954 3048
		mu 0 4 1797 1801 1742 1796
		f 4 -3060 -3059 3057 3050
		mu 0 4 1798 1802 1801 1797
		f 4 -3062 -3061 3059 3052
		mu 0 4 1799 1803 1802 1798
		f 4 -3064 -3063 3061 3054
		mu 0 4 1800 1804 1803 1799
		f 4 -3067 3064 -3094 3084
		mu 0 4 1764 1805 1806 1766
		f 4 -2795 -3095 3086 -3069
		mu 0 4 1635 1638 1807 1808
		f 4 -3072 3069 -2776 -3071
		mu 0 4 1809 1810 1641 1640
		f 4 -2780 -3074 -3073 3070
		mu 0 4 1640 1644 1811 1809
		f 4 -2783 -3076 -3075 3073
		mu 0 4 1644 1646 1812 1811
		f 4 -3078 3065 -3077 3074
		mu 0 4 1812 1769 1813 1811
		f 4 -2976 2972 -3079 3087
		mu 0 4 1752 1749 1748 1753
		f 4 -3027 3020 2975 3088
		mu 0 4 1788 1784 1749 1752
		f 4 3022 3026 3089 -3029
		mu 0 4 1785 1784 1788 1790
		f 4 -3032 3024 3028 3090
		mu 0 4 1792 1786 1785 1790
		f 4 3083 3025 3031 3091
		mu 0 4 1767 1768 1786 1792
		f 4 -2992 -2991 -3084 3092
		mu 0 4 1766 1769 1768 1767
		f 4 3085 -3066 2991 3093
		mu 0 4 1806 1813 1769 1766
		f 4 -2774 -3070 3067 3094
		mu 0 4 1638 1641 1810 1807
		f 4 -2804 2994 3077 3075
		mu 0 4 1646 1591 1769 1812
		f 4 -3097 -3096 -2805 3068
		mu 0 4 1808 1814 1648 1635
		f 4 3096 -3112 -3113 -3098
		mu 0 4 1814 1808 1815 1816
		f 4 3066 2988 -3102 -3101
		mu 0 4 1805 1764 1763 1817
		f 4 3098 -3105 -3104 -3103
		mu 0 4 1818 1819 1820 1821
		f 4 -3107 3105 3101 2985
		mu 0 4 1760 1822 1817 1763
		f 4 3103 -3146 -3147 -3108
		mu 0 4 1821 1820 1823 1824
		f 4 -3100 -3099 -3126 -3127
		mu 0 4 1825 1819 1818 1826
		f 4 3111 -3087 -3115 -3114
		mu 0 4 1815 1808 1807 1827
		f 4 -3117 3114 -3068 -3116
		mu 0 4 1828 1827 1807 1810
		f 4 -3119 3115 3071 -3118
		mu 0 4 1829 1828 1810 1809
		f 4 3076 -3120 3117 3072
		mu 0 4 1811 1813 1829 1809
		f 4 -3122 3119 -3086 -3121
		mu 0 4 1830 1829 1813 1806
		f 4 3118 3121 -3124 -3123
		mu 0 4 1828 1829 1830 1831
		f 4 -3125 3126 -3111 3112
		mu 0 4 1815 1825 1826 1816
		f 4 3116 3122 -3129 -3128
		mu 0 4 1827 1828 1831 1832
		f 4 3124 3113 3127 -3130
		mu 0 4 1825 1815 1827 1832
		f 4 3129 -3132 -3131 3099
		mu 0 4 1825 1832 1833 1819
		f 4 3128 -3134 -3133 3131
		mu 0 4 1832 1831 1834 1833
		f 4 3123 -3136 -3135 3133
		mu 0 4 1831 1830 1835 1834
		f 4 -3065 -3137 3135 3120
		mu 0 4 1806 1805 1835 1830
		f 4 3130 -3139 -3138 3104
		mu 0 4 1819 1833 1836 1820
		f 4 -3141 3138 3132 -3140
		mu 0 4 1837 1836 1833 1834
		f 4 -3143 3139 3134 -3142
		mu 0 4 1838 1837 1834 1835
		f 4 3136 3100 -3144 3141
		mu 0 4 1835 1805 1817 1838
		f 4 -3110 -3109 -3145 3146
		mu 0 4 1823 1839 1840 1824
		f 4 -3149 -3148 3145 3137
		mu 0 4 1836 1841 1823 1820
		f 4 -3151 3148 3140 -3150
		mu 0 4 1842 1841 1836 1837
		f 4 3142 -3153 -3152 3149
		mu 0 4 1837 1838 1843 1842
		f 4 3143 -3106 -3154 3152
		mu 0 4 1838 1817 1822 1843
		f 4 -3157 3062 -3156 -3155
		mu 0 4 1844 1803 1804 1845
		f 4 -3160 -3159 -3158 3154
		mu 0 4 1845 1846 1847 1844
		f 4 2963 3056 -3162 -3161
		mu 0 4 1743 1742 1801 1848
		f 4 3160 -3164 -3163 2967
		mu 0 4 1743 1848 1849 1744
		f 4 -3166 3163 3161 -3165
		mu 0 4 1850 1849 1848 1801
		f 4 -3168 -3167 3164 3058
		mu 0 4 1802 1851 1850 1801
		f 4 3167 3060 3156 -3169
		mu 0 4 1851 1802 1803 1844
		f 4 3162 -3171 -3170 2970
		mu 0 4 1744 1849 1852 1746
		f 4 3165 -3173 -3172 3170
		mu 0 4 1849 1850 1853 1852
		f 4 -3175 3172 3166 -3174
		mu 0 4 1854 1853 1850 1851
		f 4 -3176 3173 3168 3157
		mu 0 4 1847 1854 1851 1844
		f 4 -3179 -3178 3108 -3177
		mu 0 4 1855 1856 1840 1839
		f 4 3175 -3182 -3181 -3180
		mu 0 4 1854 1847 1857 1858
		f 4 3180 -3185 -3184 -3183
		mu 0 4 1858 1857 1859 1860
		f 4 -3188 -3187 -3186 3183
		mu 0 4 1859 1861 1862 1860
		f 4 -3191 3186 -3190 -3189
		mu 0 4 1863 1862 1861 1864
		f 4 -3194 -3193 -3192 3188
		mu 0 4 1864 1865 1866 1863
		f 4 -3232 -3234 -3195 3192
		mu 0 4 1865 1867 1868 1866
		f 4 -3200 -3199 -3198 3195
		mu 0 4 1869 1870 1871 1872
		f 4 -3203 3198 -3202 -3201
		mu 0 4 1873 1871 1870 1874
		f 4 -3206 3200 -3205 -3204
		mu 0 4 1875 1873 1874 1855
		f 4 -3208 -3207 3203 3176
		mu 0 4 1839 1876 1875 1855
		f 4 3147 -3209 3207 3109
		mu 0 4 1823 1841 1876 1839
		f 4 3178 3204 -3211 -3210
		mu 0 4 1856 1855 1874 1877
		f 4 3201 -3213 -3212 3210
		mu 0 4 1874 1870 1878 1877
		f 4 -3215 3212 3199 -3214
		mu 0 4 1879 1878 1870 1869
		f 4 3231 -3217 -3233 -3235
		mu 0 4 1867 1865 1880 1881
		f 4 3193 -3219 -3218 3216
		mu 0 4 1865 1864 1882 1880
		f 4 3189 -3221 -3220 3218
		mu 0 4 1864 1861 1883 1882
		f 4 3187 -3223 -3222 3220
		mu 0 4 1861 1859 1884 1883
		f 4 3222 3184 -3225 -3224
		mu 0 4 1884 1859 1857 1885
		f 4 3181 3158 -3226 3224
		mu 0 4 1857 1847 1846 1885
		f 4 3182 -3227 3174 3179
		mu 0 4 1858 1860 1853 1854
		f 4 3185 -3228 3171 3226
		mu 0 4 1860 1862 1852 1853
		f 4 3190 -3229 3169 3227
		mu 0 4 1862 1863 1746 1852
		f 4 3191 -3230 2973 3228
		mu 0 4 1863 1866 1748 1746
		f 4 -3197 -3196 -3231 3233
		mu 0 4 1867 1869 1872 1868
		f 4 3196 3234 -3216 3213
		mu 0 4 1869 1867 1881 1879
		f 4 3194 -3236 3078 3229
		mu 0 4 1866 1868 1753 1748
		f 4 2974 3235 3230 -3237
		mu 0 4 1750 1753 1868 1872
		f 4 3236 3197 -3238 2979
		mu 0 4 1750 1872 1871 1754
		f 4 3041 3237 3202 -3239
		mu 0 4 1756 1754 1871 1873
		f 4 3205 -3240 2982 3238
		mu 0 4 1873 1875 1759 1756
		f 4 -3241 3106 3046 3239
		mu 0 4 1875 1822 1760 1759
		f 4 3153 3240 3206 -3242
		mu 0 4 1843 1822 1875 1876
		f 4 3241 3208 3150 3151
		mu 0 4 1843 1876 1841 1842
		f 4 2648 3242 -3248 -3246
		mu 0 4 1619 1622 1533 1536
		f 4 2649 3252 -3254 -3252
		mu 0 4 1564 1563 1540 1539
		f 4 2650 3245 -3259 -3253
		mu 0 4 1563 1619 1536 1540
		f 4 2651 3267 -3269 -3267
		mu 0 4 1560 1559 1550 1549
		f 4 2652 3272 -3274 -3268
		mu 0 4 1559 1595 1552 1550
		f 4 2653 3276 -3278 -3273
		mu 0 4 1595 1598 1554 1552
		f 4 2654 3251 -3283 -3281
		mu 0 4 1600 1564 1539 1556
		f 4 2655 3280 -3285 -3277
		mu 0 4 1598 1600 1556 1554
		f 4 -2953 3290 3291 -3243
		mu 0 4 1622 1796 1721 1533
		f 4 -2954 3296 3301 -3300
		mu 0 4 1742 1741 1724 1727
		f 4 -2955 3299 3302 -3291
		mu 0 4 1796 1742 1727 1721
		f 4 -2956 3266 3311 -3310
		mu 0 4 1738 1560 1549 1731
		f 4 -2957 3309 3314 -3313
		mu 0 4 1772 1738 1731 1733
		f 4 -2958 3312 3318 -3317
		mu 0 4 1774 1772 1733 1735
		f 4 -2959 3320 3321 -3297
		mu 0 4 1741 1776 1736 1724
		f 4 -2960 3316 3324 -3321
		mu 0 4 1776 1774 1735 1736
		f 4 3330 -3405 3372 -3347
		mu 0 4 1886 1887 1888 1889
		f 4 3331 3370 3371 3404
		mu 0 4 1887 1890 1891 1888
		f 4 -3371 3332 -3406 3374
		mu 0 4 1891 1890 1892 1893
		f 4 3333 3348 3373 3405
		mu 0 4 1892 1894 1895 1893
		f 4 -3375 -3407 -3337 3375
		mu 0 4 1896 1897 1898 1899
		f 4 -3374 3349 -3338 3406
		mu 0 4 1897 1900 1901 1898
		f 4 -3373 -3408 -3335 -3348
		mu 0 4 1902 1903 1904 1905
		f 4 -3372 -3376 -3336 3407
		mu 0 4 1903 1896 1899 1904
		f 4 3334 3408 3409 -3351
		mu 0 4 1905 1904 1906 1907
		f 4 3335 3376 3410 -3409
		mu 0 4 1904 1899 1908 1906
		f 4 -3411 3377 3378 3411
		mu 0 4 1906 1908 1909 1910
		f 4 -3410 -3412 3379 -3352
		mu 0 4 1907 1906 1910 1911
		f 4 3336 3412 3413 -3377
		mu 0 4 1899 1898 1912 1908
		f 4 3337 3354 3414 -3413
		mu 0 4 1898 1901 1913 1912
		f 4 -3415 3355 3380 3415
		mu 0 4 1912 1913 1914 1915
		f 4 -3414 -3416 3381 -3378
		mu 0 4 1908 1912 1915 1909
		f 4 -3382 3416 3417 3383
		mu 0 4 1909 1915 1916 1917
		f 4 -3381 3356 3418 -3417
		mu 0 4 1915 1914 1918 1916
		f 4 -3419 3357 -3342 3419
		mu 0 4 1916 1918 1919 1920
		f 4 -3418 -3420 -3341 3382
		mu 0 4 1917 1916 1920 1921
		f 4 -3380 3420 3421 -3353
		mu 0 4 1911 1910 1922 1923
		f 4 -3379 -3384 3422 -3421
		mu 0 4 1910 1909 1917 1922
		f 4 -3423 -3383 -3340 3423
		mu 0 4 1922 1917 1921 1924
		f 4 -3422 -3424 -3339 -3354
		mu 0 4 1923 1922 1924 1925
		f 4 3342 3424 3425 -3363
		mu 0 4 1926 1927 1928 1929
		f 4 3343 3384 3426 -3425
		mu 0 4 1927 1930 1931 1928
		f 4 -3427 3385 3386 3427
		mu 0 4 1928 1931 1932 1933
		f 4 -3426 -3428 3387 -3364
		mu 0 4 1929 1928 1933 1934
		f 4 3344 3428 3429 -3385
		mu 0 4 1930 1935 1936 1931
		f 4 3345 3366 3430 -3429
		mu 0 4 1935 1937 1938 1936
		f 4 -3431 3367 3388 3431
		mu 0 4 1936 1938 1939 1940
		f 4 -3430 -3432 3389 -3386
		mu 0 4 1931 1936 1940 1932
		f 4 -3390 3432 3433 3391
		mu 0 4 1932 1940 1941 1942
		f 4 -3389 3368 3434 -3433
		mu 0 4 1940 1939 1943 1941
		f 4 -3435 3369 -3334 3435
		mu 0 4 1941 1943 1894 1892
		f 4 -3434 -3436 -3333 3390
		mu 0 4 1942 1941 1892 1890
		f 4 -3388 3436 3437 -3365
		mu 0 4 1934 1933 1944 1945
		f 4 -3387 -3392 3438 -3437
		mu 0 4 1933 1932 1942 1944
		f 4 -3439 -3391 -3332 3439
		mu 0 4 1944 1942 1890 1887
		f 4 -3438 -3440 -3331 -3366
		mu 0 4 1945 1944 1887 1886
		f 4 -3349 -3370 -3441 3394
		mu 0 4 1895 1894 1943 1946
		f 4 -3369 3392 3393 3440
		mu 0 4 1943 1939 1947 1946
		f 4 -3393 -3368 -3442 3396
		mu 0 4 1947 1939 1938 1948
		f 4 -3367 -3362 3395 3441
		mu 0 4 1938 1937 1949 1948
		f 4 -3397 -3443 -3357 3397
		mu 0 4 1947 1948 1918 1914
		f 4 -3396 -3361 -3358 3442
		mu 0 4 1948 1950 1919 1918
		f 4 -3350 -3395 -3444 -3355
		mu 0 4 1901 1900 1951 1913
		f 4 -3394 -3398 -3356 3443
		mu 0 4 1951 1947 1914 1913
		f 4 3359 3362 -3445 3400
		mu 0 4 1952 1926 1929 1953
		f 4 3363 3398 3399 3444
		mu 0 4 1929 1934 1954 1953
		f 4 -3399 3364 -3446 3402
		mu 0 4 1954 1934 1945 1955
		f 4 3365 3346 3401 3445
		mu 0 4 1945 1886 1889 1955
		f 4 -3403 -3447 3351 3403
		mu 0 4 1956 1957 1907 1911
		f 4 -3402 3347 3350 3446
		mu 0 4 1957 1902 1905 1907
		f 4 3358 -3401 -3448 3353
		mu 0 4 1925 1958 1959 1923
		f 4 -3400 -3404 3352 3447
		mu 0 4 1959 1956 1911 1923
		f 4 -3457 -3584 3541 3534
		mu 0 4 1960 1961 1962 1963
		f 4 -3458 -3535 3542 3535
		mu 0 4 1964 1960 1963 1965
		f 4 -3459 -3536 3543 3536
		mu 0 4 1966 1964 1965 1967
		f 4 -3460 -3537 3544 3537
		mu 0 4 1968 1966 1967 1969
		f 4 -3461 -3538 3545 3538
		mu 0 4 1970 1968 1969 1971
		f 4 -3462 -3539 3546 3539
		mu 0 4 1972 1973 1974 1975
		f 4 -3463 -3540 3547 3540
		mu 0 4 1976 1972 1975 1977
		f 4 3583 -3464 -3541 3548
		mu 0 4 1962 1961 1976 1977
		f 4 3533 -3567 3508 3501
		mu 0 4 1978 1979 1980 1981
		f 4 3532 -3502 3509 3502
		mu 0 4 1982 1978 1981 1983
		f 4 3531 -3503 3510 3503
		mu 0 4 1984 1982 1983 1985
		f 4 3530 -3504 3511 3504
		mu 0 4 1986 1984 1985 1987
		f 4 3529 -3505 3512 3505
		mu 0 4 1988 1986 1987 1989
		f 4 3528 -3506 3513 3506
		mu 0 4 1990 1991 1992 1993
		f 4 3527 -3507 3514 3507
		mu 0 4 1994 1990 1993 1995
		f 4 3566 3526 -3508 3515
		mu 0 4 1980 1979 1994 1995
		f 4 -3517 3517 3581 -3494
		mu 0 4 1996 1997 1998 1999
		f 4 3518 3580 -3495 -3582
		mu 0 4 1998 2000 2001 1999
		f 4 3519 3579 -3496 -3581
		mu 0 4 2000 2002 2003 2001
		f 4 3520 3578 -3497 -3580
		mu 0 4 2002 2004 2005 2003
		f 4 3521 3577 -3498 -3579
		mu 0 4 2004 2006 2007 2005
		f 4 3522 3576 -3499 -3578
		mu 0 4 2008 2009 2010 2011
		f 4 3523 3575 -3500 -3577
		mu 0 4 2009 2012 2013 2010
		f 4 3524 3516 -3501 -3576
		mu 0 4 2012 1997 1996 2013
		f 4 -3550 3550 3565 -3509
		mu 0 4 1980 2014 2015 1981
		f 4 3551 3564 -3510 -3566
		mu 0 4 2015 2016 1983 1981
		f 4 3552 3563 -3511 -3565
		mu 0 4 2016 2017 1985 1983
		f 4 3553 3562 -3512 -3564
		mu 0 4 2017 2018 1987 1985
		f 4 3554 3561 -3513 -3563
		mu 0 4 2018 2019 1989 1987
		f 4 3555 3560 -3514 -3562
		mu 0 4 2020 2021 1993 1992
		f 4 3556 3559 -3515 -3561
		mu 0 4 2021 2022 1995 1993
		f 4 3557 3549 -3516 -3560
		mu 0 4 2022 2014 1980 1995
		f 4 -3518 -3575 3478 3471
		mu 0 4 1998 1997 2023 2024
		f 4 -3519 -3472 3479 3472
		mu 0 4 2000 1998 2024 2025
		f 4 -3520 -3473 3480 3473
		mu 0 4 2002 2000 2025 2026
		f 4 -3521 -3474 3481 3474
		mu 0 4 2004 2002 2026 2027
		f 4 -3522 -3475 3482 3475
		mu 0 4 2006 2004 2027 2028
		f 4 -3523 -3476 3483 3476
		mu 0 4 2009 2008 2029 2030
		f 4 -3524 -3477 3484 3477
		mu 0 4 2012 2009 2030 2031
		f 4 3574 -3525 -3478 3485
		mu 0 4 2023 1997 2012 2031
		f 4 -3527 3525 -3486 -3568
		mu 0 4 1994 1979 2023 2031
		f 4 -3528 3567 -3485 -3569
		mu 0 4 1990 1994 2031 2030
		f 4 -3529 3568 -3484 -3570
		mu 0 4 1991 1990 2030 2029
		f 4 -3530 3569 -3483 -3571
		mu 0 4 1986 1988 2028 2027
		f 4 -3531 3570 -3482 -3572
		mu 0 4 1984 1986 2027 2026
		f 4 -3532 3571 -3481 -3573
		mu 0 4 1982 1984 2026 2025
		f 4 -3533 3572 -3480 -3574
		mu 0 4 1978 1982 2025 2024
		f 4 -3526 -3534 3573 -3479
		mu 0 4 2023 1979 1978 2024
		f 4 -3542 -3583 3493 3486
		mu 0 4 1963 1962 1996 1999
		f 4 -3543 -3487 3494 3487
		mu 0 4 1965 1963 1999 2001
		f 4 -3544 -3488 3495 3488
		mu 0 4 1967 1965 2001 2003
		f 4 -3545 -3489 3496 3489
		mu 0 4 1969 1967 2003 2005
		f 4 -3546 -3490 3497 3490
		mu 0 4 1971 1969 2005 2007
		f 4 -3547 -3491 3498 3491
		mu 0 4 1975 1974 2011 2010
		f 4 -3548 -3492 3499 3492
		mu 0 4 1977 1975 2010 2013
		f 4 3582 -3549 -3493 3500
		mu 0 4 1996 1962 1977 2013
		f 4 -3551 -3559 3448 3464
		mu 0 4 2015 2014 2032 2033
		f 4 -3552 -3465 3449 3465
		mu 0 4 2016 2015 2033 2034
		f 4 -3553 -3466 3450 3466
		mu 0 4 2017 2016 2034 2035
		f 4 -3554 -3467 3451 3467
		mu 0 4 2018 2017 2035 2036
		f 4 -3555 -3468 3452 3468
		mu 0 4 2019 2018 2036 2037
		f 4 -3556 -3469 3453 3469
		mu 0 4 2021 2020 2038 2039
		f 4 -3557 -3470 3454 3470
		mu 0 4 2022 2021 2039 2040
		f 4 3558 -3558 -3471 3455
		mu 0 4 2032 2014 2022 2040
		f 4 3585 -3587 -3585 3456
		mu 0 4 1960 2041 2042 1961
		f 4 3587 -3589 -3586 3457
		mu 0 4 1964 2043 2041 1960
		f 4 3589 -3591 -3588 3458
		mu 0 4 1966 2044 2043 1964
		f 4 3591 -3593 -3590 3459
		mu 0 4 1968 2045 2044 1966
		f 4 3593 -3595 -3592 3460
		mu 0 4 1970 2046 2045 1968
		f 4 3595 -3597 -3594 3461
		mu 0 4 1972 2047 2048 1973
		f 4 3597 -3599 -3596 3462
		mu 0 4 1976 2049 2047 1972
		f 4 3584 -3600 -3598 3463
		mu 0 4 1961 2042 2049 1976
		f 4 3601 -3603 -3601 3586
		mu 0 4 2041 2050 2051 2042
		f 4 3603 -3605 -3602 3588
		mu 0 4 2043 2052 2050 2041
		f 4 3605 -3607 -3604 3590
		mu 0 4 2044 2053 2052 2043
		f 4 3607 -3609 -3606 3592
		mu 0 4 2045 2054 2053 2044
		f 4 3609 -3611 -3608 3594
		mu 0 4 2046 2055 2054 2045
		f 4 3611 -3613 -3610 3596
		mu 0 4 2047 2056 2057 2048
		f 4 3613 -3615 -3612 3598
		mu 0 4 2049 2058 2056 2047
		f 4 3600 -3616 -3614 3599
		mu 0 4 2042 2051 2058 2049
		f 4 3617 -3619 -3617 3602
		mu 0 4 2050 2059 2060 2051
		f 4 3619 -3621 -3618 3604
		mu 0 4 2052 2061 2059 2050
		f 4 3621 -3623 -3620 3606
		mu 0 4 2053 2062 2061 2052
		f 4 3623 -3625 -3622 3608
		mu 0 4 2054 2063 2062 2053
		f 4 3625 -3627 -3624 3610
		mu 0 4 2055 2064 2063 2054
		f 4 3627 -3629 -3626 3612
		mu 0 4 2056 2065 2066 2057
		f 4 3629 -3631 -3628 3614
		mu 0 4 2058 2067 2065 2056
		f 4 3616 -3632 -3630 3615
		mu 0 4 2051 2060 2067 2058
		f 4 3633 -3635 -3633 3618
		mu 0 4 2059 2068 2069 2060
		f 4 3635 -3637 -3634 3620
		mu 0 4 2061 2070 2068 2059
		f 4 3637 -3639 -3636 3622
		mu 0 4 2062 2071 2070 2061
		f 4 3639 -3641 -3638 3624
		mu 0 4 2063 2072 2071 2062
		f 4 3641 -3643 -3640 3626
		mu 0 4 2064 2073 2072 2063
		f 4 3643 -3645 -3642 3628
		mu 0 4 2065 2074 2075 2066
		f 4 3645 -3647 -3644 3630
		mu 0 4 2067 2076 2074 2065
		f 4 3632 -3648 -3646 3631
		mu 0 4 2060 2069 2076 2067
		f 4 3649 -3651 -3649 3634
		mu 0 4 2068 2077 2078 2069
		f 4 3651 -3653 -3650 3636
		mu 0 4 2070 2079 2077 2068
		f 4 3653 -3655 -3652 3638
		mu 0 4 2071 2080 2079 2070
		f 4 3655 -3657 -3654 3640
		mu 0 4 2072 2081 2080 2071
		f 4 3657 -3659 -3656 3642
		mu 0 4 2073 2082 2081 2072
		f 4 3659 -3661 -3658 3644
		mu 0 4 2074 2083 2084 2075
		f 4 3661 -3663 -3660 3646
		mu 0 4 2076 2085 2083 2074
		f 4 3648 -3664 -3662 3647
		mu 0 4 2069 2078 2085 2076
		f 3 3650 3665 -3665
		mu 0 3 2078 2077 2086
		f 3 3652 3666 -3666
		mu 0 3 2077 2079 2086
		f 3 3654 3667 -3667
		mu 0 3 2079 2080 2086
		f 3 3656 3668 -3668
		mu 0 3 2080 2081 2086
		f 3 3658 3669 -3669
		mu 0 3 2081 2082 2086
		f 3 3660 3670 -3670
		mu 0 3 2084 2083 2086
		f 3 3662 3671 -3671
		mu 0 3 2083 2085 2086
		f 3 3663 3664 -3672
		mu 0 3 2085 2078 2086;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 4;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D56EE235-4C6A-03F6-7973-5788D68F6959";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "C845752D-4A42-F34E-DB13-ABA155AE177B";
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "303CD7A4-4B42-79E5-38CE-C9945564F3B1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "DD5D716C-46AE-ED35-3FF3-A98F224186AE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2D92AE71-4E11-9255-200D-5EA43AD3BD44";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "3971801A-4160-A5A1-701B-A2A95320562B";
	setAttr ".sw" 2;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	rename -uid "BD00C4BA-401D-5AD1-6C9F-7DB6F1C66645";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -0.015671408 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.015671408 ;
	setAttr ".tk[2]" -type "float3" -2.9802322e-008 -1.4901161e-008 -0.015671408 ;
	setAttr ".tk[3]" -type "float3" 0 -0.0344771 -0.028208535 ;
	setAttr ".tk[4]" -type "float3" 0 -0.0344771 -0.028208535 ;
	setAttr ".tk[5]" -type "float3" 0 -0.0344771 -0.028208535 ;
	setAttr ".tk[6]" -type "float3" 0 -0.062685624 -0.12223696 ;
	setAttr ".tk[7]" -type "float3" 0 -0.062685624 -0.12223696 ;
	setAttr ".tk[8]" -type "float3" 0 -0.062685624 -0.12223696 ;
	setAttr ".tk[9]" -type "float3" 0 -0.20372826 -0.22566822 ;
	setAttr ".tk[10]" -type "float3" 0 -0.20372826 -0.22566822 ;
	setAttr ".tk[11]" -type "float3" 0 -0.20372826 -0.22566822 ;
	setAttr ".tk[12]" -type "float3" 0 -0.028208537 -0.1276089 ;
	setAttr ".tk[13]" -type "float3" 0 -0.028208537 -0.1276089 ;
	setAttr ".tk[14]" -type "float3" 0 -0.028208537 -0.1276089 ;
	setAttr ".tk[15]" -type "float3" 0 -0.028208537 -0.029105112 ;
	setAttr ".tk[16]" -type "float3" 0 -0.028208537 -0.029105112 ;
	setAttr ".tk[17]" -type "float3" 0 -0.028208537 -0.029105112 ;
	setAttr ".tk[18]" -type "float3" 0 -0.15044549 0.13477407 ;
	setAttr ".tk[19]" -type "float3" 0 -0.15044549 0.13477407 ;
	setAttr ".tk[20]" -type "float3" 0 -0.15044549 0.13477407 ;
	setAttr ".tk[21]" -type "float3" 0 -0.043879941 0.040745653 ;
	setAttr ".tk[22]" -type "float3" 0 -0.043879941 0.040745653 ;
	setAttr ".tk[23]" -type "float3" 0 -0.043879941 0.040745653 ;
	setAttr ".tk[24]" -type "float3" 0 4.6566129e-010 -0.028208537 ;
	setAttr ".tk[25]" -type "float3" 0 4.6566129e-010 -0.028208537 ;
	setAttr ".tk[26]" -type "float3" 0 4.6566129e-010 -0.028208537 ;
	setAttr ".tk[27]" -type "float3" 0 0.0062685637 -0.040745661 ;
	setAttr ".tk[28]" -type "float3" 0 0.0062685637 -0.040745661 ;
	setAttr ".tk[29]" -type "float3" -2.9802322e-008 0.006268546 -0.040745661 ;
	setAttr ".tk[32]" -type "float3" -2.9802322e-008 -1.4901161e-008 0 ;
	setAttr ".tk[35]" -type "float3" -2.9802322e-008 -1.4901161e-008 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.043879941 -0.037611388 ;
	setAttr ".tk[39]" -type "float3" 0 -0.043879941 -0.037611388 ;
	setAttr ".tk[42]" -type "float3" 0 -0.043879941 -0.037611388 ;
	setAttr ".tk[43]" -type "float3" 0 -0.043879941 -0.037611388 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "3FBD9DD0-4BE1-040F-953D-84B09169134E";
	setAttr ".dc" -type "componentList" 13 "f[0]" "f[2]" "f[4]" "f[6]" "f[8]" "f[10]" "f[12]" "f[14]" "f[16]" "f[18]" "f[20]" "f[22]" "f[33:41]";
createNode polyTweak -n "polyTweak2";
	rename -uid "5AC36706-4AD0-6548-DAD6-79ACA245EC9F";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[1]" -type "float3" 0.0168279 0.11539046 0 ;
	setAttr ".tk[3]" -type "float3" 0.0048079956 0.021635721 0 ;
	setAttr ".tk[5]" -type "float3" -0.057695273 0.0072119068 0 ;
	setAttr ".tk[7]" -type "float3" -0.11298664 1.4901161e-008 0 ;
	setAttr ".tk[9]" -type "float3" -0.18842034 -0.0034824735 0 ;
	setAttr ".tk[11]" -type "float3" -0.18842034 -0.0034824735 0 ;
	setAttr ".tk[13]" -type "float3" -0.11298664 1.4901161e-008 0 ;
	setAttr ".tk[15]" -type "float3" -0.057695273 0.0072119068 0 ;
	setAttr ".tk[17]" -type "float3" 0.0048079956 0.021635721 0 ;
	setAttr ".tk[19]" -type "float3" 0.0168279 0.11539046 0 ;
	setAttr ".tk[21]" -type "float3" 0.1875097 0.11539046 0 ;
	setAttr ".tk[23]" -type "float3" 0.1875097 0.11539046 0 ;
	setAttr ".tk[24]" -type "float3" 0.17548978 0.021635721 0 ;
	setAttr ".tk[25]" -type "float3" 0.17548978 0.021635721 0 ;
	setAttr ".tk[26]" -type "float3" 0.1129865 0.0072119068 0 ;
	setAttr ".tk[27]" -type "float3" 0.1129865 0.0072119068 0 ;
createNode polySplit -n "polySplit1";
	rename -uid "9A7238B9-49B1-4E06-72CD-FCA92DDBFD4B";
	setAttr -s 4 ".e[0:3]"  1 0.57646102 0.63263601 1;
	setAttr -s 4 ".d[0:3]"  -2147483631 -2147483601 -2147483602 -2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "AF121056-4297-AE1B-9ED2-4B8DC2218717";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[1]" -type "float3" -0.071546189 -0.055922724 -0.050502032 ;
	setAttr ".tk[3]" -type "float3" -0.071546189 -4.4408921e-016 -0.050502032 ;
	setAttr ".tk[5]" -type "float3" -0.071546189 -4.4408921e-016 -0.050502032 ;
	setAttr ".tk[7]" -type "float3" -0.071546189 -4.4408921e-016 -0.050502032 ;
	setAttr ".tk[12]" -type "float3" 0 -0.032874759 -0.018100783 ;
	setAttr ".tk[13]" -type "float3" -0.05828115 -0.032874759 0.0097373771 ;
	setAttr ".tk[15]" -type "float3" -0.048749126 0 0.035794709 ;
	setAttr ".tk[17]" -type "float3" -0.040199906 0 0.044641625 ;
	setAttr ".tk[18]" -type "float3" 0 0.090332039 0 ;
	setAttr ".tk[19]" -type "float3" -0.038651284 0 0.046336636 ;
	setAttr ".tk[21]" -type "float3" 0.0058125975 2.220446e-016 -0.051499665 ;
	setAttr ".tk[24]" -type "float3" 0.0058125975 2.220446e-016 -0.051499665 ;
	setAttr ".tk[28]" -type "float3" 0.10103453 0.017494652 0.0082342438 ;
	setAttr ".tk[29]" -type "float3" 0.10103453 0.0045004846 0 ;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "FF6ADD0F-489F-8EE0-8829-9DBFC75E5007";
	setAttr ".dc" -type "componentList" 1 "f[9:11]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "E6B06053-4716-F66B-6619-1F9C21C1002F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[9]" "e[28:30]";
	setAttr ".ix" -type "matrix" 84.326583643226499 0 0 0 0 84.326583643226499 0 0 0 0 84.326583643226499 0
		 0 109.53303126564678 6.1209635119037964 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 29.232748 72.499283 3.7422338 ;
	setAttr ".rs" 59421;
	setAttr ".lt" -type "double3" 1.0269562977782698e-014 2.4161228573404969e-014 -2.9482336108293139 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0 67.369739444033542 -39.478271928241035 ;
	setAttr ".cbx" -type "double3" 58.465495973225387 77.628830694583655 46.96273952374645 ;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "4760DBAF-428F-DCC6-36D7-B2A86D8F618C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 84.326583643226499 0 0 0 0 84.326583643226499 0 0 0 0 84.326583643226499 0
		 0 109.53303126564678 6.1209635119037964 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak4";
	rename -uid "BC5B0685-4E7D-AE04-EA39-DBB40E4B99A5";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[7]" -type "float3" 0.021549415 0 0.0049058627 ;
	setAttr ".tk[13]" -type "float3" 0.022734296 0 -0.020693343 ;
	setAttr ".tk[15]" -type "float3" 0.018841522 6.6613381e-016 -0.028699456 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9C682E5D-4D5D-CA55-3BEB-9B95ADCB491A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 648\n                -height 341\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 648\n            -height 341\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 648\n                -height 341\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 648\n            -height 341\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 648\n                -height 341\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 648\n            -height 341\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1302\n                -height 727\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1302\n            -height 727\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 0\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 0\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 0\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1302\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1302\\n    -height 727\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8AC7D92B-4AD3-22C6-E512-3BB3A18A0BFF";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 121 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode blinn -n "blinn1";
	rename -uid "96066BD1-4CD3-75CA-8DA5-3FA61CA24802";
createNode shadingEngine -n "blinn1SG";
	rename -uid "A588E392-4157-9957-B933-6C855E2BE975";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "9614F250-43F9-8C4D-D00C-9CA6EA8C219A";
createNode file -n "file1";
	rename -uid "D9966742-4D3E-317D-F411-35B1FDE4255D";
	setAttr ".ftn" -type "string" "D:/Maya Projects/PartyCrashers/sourceimages/initialShadingGroup_Diffuse.png";
	setAttr ".ft" 0;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "BB385E55-4EEF-CF3A-B1B7-DE9567C55866";
createNode blinn -n "faceAndBodyMat";
	rename -uid "F971D41E-4712-CD08-5AAC-60AE873407F8";
	setAttr ".c" -type "float3" 0.24390021 0.24390021 0.24390021 ;
createNode shadingEngine -n "faceAndBodySG";
	rename -uid "A0316C36-462B-566A-FC08-BDB817E83AAE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "B1520842-4823-B6BC-7CD9-478A6C8063B8";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "1848558D-4008-5A1A-4932-719BC04146D3";
createNode skinCluster -n "skinCluster1";
	rename -uid "4BD0957A-4677-584C-2608-B1A9C21F3D64";
	setAttr ".skm" 1;
	setAttr -s 1868 ".wl";
	setAttr ".wl[0].w[34]"  1;
	setAttr ".wl[1].w[34]"  1;
	setAttr ".wl[2].w[34]"  1;
	setAttr ".wl[3].w[34]"  1;
	setAttr ".wl[4].w[34]"  1;
	setAttr -s 3 ".wl[5].w[32:34]"  1.4430064212684342e-006 7.6300863482719467e-006 
		0.99999092690723046;
	setAttr -s 3 ".wl[6].w[32:34]"  3.0861975727999052e-006 1.3764349098976197e-005 
		0.99998314945423772;
	setAttr -s 3 ".wl[7].w[32:34]"  3.1166032017503293e-006 1.3811115914460609e-005 
		0.99998307228088379;
	setAttr -s 3 ".wl[8].w[32:34]"  1.193383490278966e-006 6.2620537721434952e-006 
		0.99999254456273756;
	setAttr ".wl[9].w[34]"  1;
	setAttr -s 2 ".wl[10].w[32:33]"  0.1254574188446245 0.87454258115537542;
	setAttr -s 3 ".wl[11].w[32:34]"  0.097143202896352157 0.90285041940658273 
		6.3776970652477662e-006;
	setAttr -s 3 ".wl[12].w[32:34]"  0.00042370604209917786 0.99952211333579999 
		5.4180622100830078e-005;
	setAttr -s 3 ".wl[13].w[32:34]"  0.090289867227926923 0.90970166120734108 
		8.471564731943457e-006;
	setAttr -s 3 ".wl[14].w[32:34]"  0.12101909172603738 0.87897760550087745 
		3.3027730850931169e-006;
	setAttr -s 3 ".wl[15].w[32:34]"  0.15904035737129521 0.84095760570074496 
		2.0369279598298338e-006;
	setAttr -s 3 ".wl[16].w[32:34]"  0.18314692106097635 0.81682980495687241 
		2.3273982151295058e-005;
	setAttr -s 3 ".wl[17].w[32:34]"  0.1906527389974087 0.8093304524923346 
		1.6808510256721101e-005;
	setAttr -s 3 ".wl[18].w[32:34]"  0.18410467619390128 0.81589329724822668 
		2.0265578720970677e-006;
	setAttr -s 2 ".wl[19].w[32:33]"  0.16006920150640455 0.83993079849359564;
	setAttr -s 2 ".wl[20].w[33:34]"  0.49999882914663962 0.50000117085336049;
	setAttr -s 3 ".wl[21].w";
	setAttr ".wl[21].w[0]" 8.7091222817673763e-006;
	setAttr ".wl[21].w[32]" 0.66097841807158975;
	setAttr ".wl[21].w[33]" 0.33901287280612852;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[0]" 4.3146367145140499e-005;
	setAttr ".wl[22].w[32]" 0.63081259231338305;
	setAttr ".wl[22].w[33]" 0.36914426131947192;
	setAttr -s 3 ".wl[23].w";
	setAttr ".wl[23].w[0]" 4.7087669372558594e-005;
	setAttr ".wl[23].w[32]" 0.61691322043466268;
	setAttr ".wl[23].w[33]" 0.38303969189596482;
	setAttr -s 3 ".wl[24].w";
	setAttr ".wl[24].w[0]" 4.9549679452109751e-005;
	setAttr ".wl[24].w[32]" 0.65214966052645906;
	setAttr ".wl[24].w[33]" 0.34780078979408868;
	setAttr -s 2 ".wl[25].w[32:33]"  0.78837012950159013 0.21162987049840981;
	setAttr -s 2 ".wl[26].w[32:33]"  0.77758332731899049 0.22241667268100945;
	setAttr -s 2 ".wl[27].w[32:33]"  0.77468667943702119 0.2253133205629789;
	setAttr -s 2 ".wl[28].w[32:33]"  0.78470526313421041 0.21529473686578951;
	setAttr -s 2 ".wl[29].w[32:33]"  0.81428071420745596 0.18571928579254407;
	setAttr -s 3 ".wl[30].w";
	setAttr ".wl[30].w[0]" 1.302902091993019e-006;
	setAttr ".wl[30].w[32]" 0.85267922857152734;
	setAttr ".wl[30].w[33]" 0.14731946852638073;
	setAttr -s 2 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.49934554183849467;
	setAttr ".wl[31].w[32]" 0.50065445816105059;
	setAttr -s 2 ".wl[32].w";
	setAttr ".wl[32].w[0]" 0.99953813658458623;
	setAttr ".wl[32].w[32]" 0.00046186341541372135;
	setAttr ".wl[33].w[0]"  1;
	setAttr -s 3 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.999778704165181;
	setAttr ".wl[34].w[28]" 3.310761060464839e-013;
	setAttr ".wl[34].w[32]" 0.00022129583448780385;
	setAttr -s 3 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.52166630879987308;
	setAttr ".wl[35].w[32]" 0.47833146645179653;
	setAttr ".wl[35].w[33]" 2.224748330274397e-006;
	setAttr -s 3 ".wl[36].w";
	setAttr ".wl[36].w[0]" 0.47229016853954287;
	setAttr ".wl[36].w[32]" 0.52769531409884296;
	setAttr ".wl[36].w[33]" 1.4517361614112115e-005;
	setAttr -s 3 ".wl[37].w";
	setAttr ".wl[37].w[0]" 0.45401121730107613;
	setAttr ".wl[37].w[32]" 0.54597180068956663;
	setAttr ".wl[37].w[33]" 1.6982009357288735e-005;
	setAttr -s 3 ".wl[38].w";
	setAttr ".wl[38].w[0]" 0.48356623077713295;
	setAttr ".wl[38].w[32]" 0.51642346337427214;
	setAttr ".wl[38].w[33]" 1.0305848594931692e-005;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[0]" 0.4977589754500033;
	setAttr ".wl[39].w[32]" 0.50223667183137255;
	setAttr ".wl[39].w[33]" 4.3527654632254639e-006;
	setAttr -s 2 ".wl[40].w";
	setAttr ".wl[40].w[0]" 0.49999999549103502;
	setAttr ".wl[40].w[32]" 0.50000000450896509;
	setAttr -s 2 ".wl[41].w";
	setAttr ".wl[41].w[0]" 0.8;
	setAttr ".wl[41].w[6]" 0.2;
	setAttr -s 2 ".wl[42].w";
	setAttr ".wl[42].w[0]" 0.8;
	setAttr ".wl[42].w[6]" 0.2;
	setAttr -s 2 ".wl[43].w";
	setAttr ".wl[43].w[0]" 0.8;
	setAttr ".wl[43].w[6]" 0.2;
	setAttr -s 2 ".wl[44].w";
	setAttr ".wl[44].w[0]" 0.8;
	setAttr ".wl[44].w[6]" 0.2;
	setAttr -s 2 ".wl[45].w";
	setAttr ".wl[45].w[0]" 0.8;
	setAttr ".wl[45].w[6]" 0.2;
	setAttr -s 2 ".wl[46].w";
	setAttr ".wl[46].w[0]" 0.8;
	setAttr ".wl[46].w[6]" 0.2;
	setAttr -s 2 ".wl[47].w";
	setAttr ".wl[47].w[0]" 0.8;
	setAttr ".wl[47].w[6]" 0.2;
	setAttr -s 2 ".wl[48].w";
	setAttr ".wl[48].w[0]" 0.8;
	setAttr ".wl[48].w[6]" 0.2;
	setAttr -s 2 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.99999997855391776;
	setAttr ".wl[49].w[28]" 2.1446082243414821e-008;
	setAttr -s 2 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.99999996242824452;
	setAttr ".wl[50].w[28]" 3.7571755484577807e-008;
	setAttr -s 3 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.65437667630233709;
	setAttr ".wl[51].w[1]" 2.3409890607769467e-006;
	setAttr ".wl[51].w[32]" 0.34562098270860203;
	setAttr -s 3 ".wl[52].w";
	setAttr ".wl[52].w[0]" 0.64350461239115586;
	setAttr ".wl[52].w[1]" 1.026661271299584e-005;
	setAttr ".wl[52].w[32]" 0.35648512099613117;
	setAttr -s 2 ".wl[53].w";
	setAttr ".wl[53].w[0]" 0.8;
	setAttr ".wl[53].w[6]" 0.2;
	setAttr -s 2 ".wl[54].w[5:6]"  0.8 0.2;
	setAttr -s 4 ".wl[55].w";
	setAttr ".wl[55].w[0]" 0.99956359512595661;
	setAttr ".wl[55].w[1]" 1.0434813318151656e-006;
	setAttr ".wl[55].w[7]" 1.8702427920267622e-007;
	setAttr ".wl[55].w[32]" 0.00043517436843237823;
	setAttr -s 2 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.91374776026299431;
	setAttr ".wl[56].w[32]" 0.086252239737005604;
	setAttr -s 2 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.88135824088807269;
	setAttr ".wl[57].w[32]" 0.1186417591119273;
	setAttr -s 2 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.88135770502412181;
	setAttr ".wl[58].w[32]" 0.11864229497587817;
	setAttr -s 2 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.88136233123652019;
	setAttr ".wl[59].w[32]" 0.11863766876347986;
	setAttr -s 2 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.88137296999999992;
	setAttr ".wl[60].w[32]" 0.11862703000000008;
	setAttr -s 2 ".wl[61].w";
	setAttr ".wl[61].w[0]" 0.88137394563328597;
	setAttr ".wl[61].w[32]" 0.11862605436671397;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr -s 2 ".wl[65].w[32:33]"  0.50248657520146167 0.49751342479853827;
	setAttr -s 2 ".wl[66].w[32:33]"  0.49202744135038989 0.50797255864961;
	setAttr -s 2 ".wl[67].w[32:33]"  0.48469009652570999 0.51530990347428995;
	setAttr -s 2 ".wl[68].w[32:33]"  0.48699836804267527 0.51300163195732484;
	setAttr -s 2 ".wl[69].w[32:33]"  0.4971607028966496 0.5028392971033504;
	setAttr -s 2 ".wl[70].w[32:33]"  0.49999808103386112 0.50000191896613899;
	setAttr -s 2 ".wl[71].w[32:33]"  0.4999853099442409 0.50001469005575916;
	setAttr -s 2 ".wl[72].w[32:33]"  0.49999313026379688 0.50000686973620312;
	setAttr -s 2 ".wl[73].w[32:33]"  0.50132575457078987 0.49867424542921007;
	setAttr -s 2 ".wl[74].w[32:33]"  0.50402955802417537 0.49597044197582463;
	setAttr -s 2 ".wl[75].w[6:7]"  0.49980758399999997 0.50019241599999997;
	setAttr -s 2 ".wl[76].w[5:6]"  0.50019241599999997 0.49980758399999997;
	setAttr -s 2 ".wl[77].w[5:6]"  0.50019241599999997 0.49980758399999997;
	setAttr -s 2 ".wl[78].w";
	setAttr ".wl[78].w[0]" 0.50019241599999997;
	setAttr ".wl[78].w[6]" 0.49980758399999997;
	setAttr -s 2 ".wl[79].w";
	setAttr ".wl[79].w[0]" 0.50019241599999997;
	setAttr ".wl[79].w[6]" 0.49980758399999997;
	setAttr -s 2 ".wl[80].w";
	setAttr ".wl[80].w[0]" 0.50019241599999997;
	setAttr ".wl[80].w[6]" 0.49980758399999997;
	setAttr -s 2 ".wl[81].w";
	setAttr ".wl[81].w[0]" 0.50019241599999997;
	setAttr ".wl[81].w[6]" 0.49980758399999997;
	setAttr -s 2 ".wl[82].w[6:7]"  0.49980758399999997 0.50019241599999997;
	setAttr -s 2 ".wl[83].w[5:6]"  0.50019241599999997 0.49980758399999997;
	setAttr -s 2 ".wl[84].w";
	setAttr ".wl[84].w[0]" 0.50019241599999997;
	setAttr ".wl[84].w[6]" 0.49980758399999997;
	setAttr -s 2 ".wl[85].w[19:20]"  0.99997858439382981 2.1415606170194224e-005;
	setAttr -s 2 ".wl[86].w[19:20]"  0.99999971567180523 2.8432819476620352e-007;
	setAttr -s 2 ".wl[87].w[5:6]"  0.465732765989327 0.534267234010673;
	setAttr -s 2 ".wl[88].w";
	setAttr ".wl[88].w[7]" 0.5;
	setAttr ".wl[88].w[19]" 0.5;
	setAttr -s 2 ".wl[89].w";
	setAttr ".wl[89].w[7]" 0.49525103875028181;
	setAttr ".wl[89].w[19]" 0.50474896124971813;
	setAttr -s 2 ".wl[90].w";
	setAttr ".wl[90].w[7]" 0.37804736530867206;
	setAttr ".wl[90].w[19]" 0.62195263469132789;
	setAttr -s 2 ".wl[91].w[19:20]"  0.99867757479660213 0.0013224252033978701;
	setAttr -s 2 ".wl[92].w[19:20]"  0.99999718629851486 2.8137014851381537e-006;
	setAttr -s 2 ".wl[93].w[5:6]"  0.44017441144746888 0.55982558855253106;
	setAttr -s 2 ".wl[94].w";
	setAttr ".wl[94].w[7]" 0.50424920874562507;
	setAttr ".wl[94].w[10]" 0.49575079125437499;
	setAttr -s 2 ".wl[95].w[19:20]"  0.99978987583017442 0.00021012416982557625;
	setAttr -s 2 ".wl[96].w";
	setAttr ".wl[96].w[7]" 0.32110306199882555;
	setAttr ".wl[96].w[19]" 0.67889693800117445;
	setAttr -s 2 ".wl[97].w";
	setAttr ".wl[97].w[7]" 0.56147276057188578;
	setAttr ".wl[97].w[19]" 0.43852723942811417;
	setAttr -s 2 ".wl[98].w";
	setAttr ".wl[98].w[7]" 0.5;
	setAttr ".wl[98].w[19]" 0.5;
	setAttr -s 2 ".wl[99].w";
	setAttr ".wl[99].w[7]" 0.49791863144656517;
	setAttr ".wl[99].w[19]" 0.50208136855343488;
	setAttr -s 2 ".wl[100].w";
	setAttr ".wl[100].w[7]" 0.36167671060617268;
	setAttr ".wl[100].w[19]" 0.63832328939382732;
	setAttr -s 2 ".wl[101].w[19:20]"  0.99442917108535767 0.005570828914642334;
	setAttr -s 2 ".wl[102].w[19:20]"  0.99993931527933455 6.0684720665449277e-005;
	setAttr -s 2 ".wl[103].w[7:8]"  0.58123605371237097 0.41876394628762903;
	setAttr -s 2 ".wl[104].w[7:8]"  0.99999655176634406 3.4482336559449323e-006;
	setAttr ".wl[105].w[3]"  1;
	setAttr ".wl[106].w[3]"  1;
	setAttr ".wl[107].w[3]"  1;
	setAttr ".wl[108].w[3]"  1;
	setAttr ".wl[109].w[3]"  1;
	setAttr ".wl[110].w[3]"  1;
	setAttr ".wl[111].w[3]"  1;
	setAttr ".wl[112].w[3]"  1;
	setAttr ".wl[113].w[3]"  1;
	setAttr ".wl[114].w[3]"  1;
	setAttr -s 2 ".wl[115].w[1:2]"  0.12545648155153527 0.87454351844846467;
	setAttr -s 2 ".wl[116].w[1:2]"  0.097145279891602529 0.90285472010839751;
	setAttr -s 2 ".wl[117].w[1:2]"  0.00042372900000000002 0.99957627100000002;
	setAttr -s 2 ".wl[118].w[1:2]"  0.090292067703880721 0.90970793229611924;
	setAttr -s 2 ".wl[119].w[1:2]"  0.12102083031311782 0.87897916968688217;
	setAttr -s 2 ".wl[120].w[1:2]"  0.1590423968894934 0.8409576031105066;
	setAttr -s 2 ".wl[121].w[1:2]"  0.18315118392978583 0.8168488160702142;
	setAttr -s 2 ".wl[122].w[1:2]"  0.19065627998174514 0.80934372001825483;
	setAttr -s 2 ".wl[123].w[1:2]"  0.18410686235420207 0.81589313764579796;
	setAttr -s 2 ".wl[124].w[1:2]"  0.16006887970125649 0.83993112029874351;
	setAttr -s 2 ".wl[125].w[2:3]"  0.5 0.5;
	setAttr -s 2 ".wl[126].w[1:2]"  0.66098278880000005 0.33901721119999995;
	setAttr -s 2 ".wl[127].w[1:2]"  0.63083980802916217 0.36916019197083783;
	setAttr -s 2 ".wl[128].w[1:2]"  0.61694227080833242 0.38305772919166758;
	setAttr -s 2 ".wl[129].w[1:2]"  0.65218264118011593 0.34781735881988401;
	setAttr -s 2 ".wl[130].w[1:2]"  0.78837583190413518 0.21162416809586485;
	setAttr -s 2 ".wl[131].w[1:2]"  0.77758548901379843 0.22241451098620155;
	setAttr -s 2 ".wl[132].w[1:2]"  0.77469899553290922 0.22530100446709081;
	setAttr -s 2 ".wl[133].w[1:2]"  0.78471146422335802 0.215288535776642;
	setAttr -s 2 ".wl[134].w[1:2]"  0.81428124256944401 0.18571875743055596;
	setAttr -s 2 ".wl[135].w[1:2]"  0.85269099477377286 0.14730900522622714;
	setAttr -s 2 ".wl[136].w[0:1]"  0.49933458165622469 0.50066541834377531;
	setAttr -s 2 ".wl[137].w[0:1]"  0.99954112509712356 0.00045887490287643828;
	setAttr ".wl[138].w[0]"  1;
	setAttr -s 2 ".wl[139].w[0:1]"  0.99977869820504894 0.00022130179495105651;
	setAttr -s 2 ".wl[140].w[0:1]"  0.52166887612247126 0.47833112387752874;
	setAttr -s 2 ".wl[141].w[0:1]"  0.47232089596269189 0.52767910403730811;
	setAttr -s 2 ".wl[142].w[0:1]"  0.45404571725793036 0.5459542827420697;
	setAttr -s 2 ".wl[143].w[0:1]"  0.48359006917376163 0.51640993082623843;
	setAttr -s 2 ".wl[144].w[0:1]"  0.49777116960371193 0.50222883039628807;
	setAttr -s 2 ".wl[145].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[146].w";
	setAttr ".wl[146].w[0]" 0.8;
	setAttr ".wl[146].w[6]" 0.2;
	setAttr -s 2 ".wl[147].w";
	setAttr ".wl[147].w[0]" 0.8;
	setAttr ".wl[147].w[6]" 0.2;
	setAttr -s 2 ".wl[148].w";
	setAttr ".wl[148].w[0]" 0.8;
	setAttr ".wl[148].w[6]" 0.2;
	setAttr -s 2 ".wl[149].w";
	setAttr ".wl[149].w[0]" 0.8;
	setAttr ".wl[149].w[6]" 0.2;
	setAttr -s 2 ".wl[150].w";
	setAttr ".wl[150].w[0]" 0.8;
	setAttr ".wl[150].w[6]" 0.2;
	setAttr -s 2 ".wl[151].w";
	setAttr ".wl[151].w[0]" 0.8;
	setAttr ".wl[151].w[6]" 0.2;
	setAttr -s 2 ".wl[152].w";
	setAttr ".wl[152].w[0]" 0.8;
	setAttr ".wl[152].w[6]" 0.2;
	setAttr -s 2 ".wl[153].w";
	setAttr ".wl[153].w[0]" 0.8;
	setAttr ".wl[153].w[6]" 0.2;
	setAttr -s 2 ".wl[154].w[0:1]"  0.91375836739149097 0.086241632608509033;
	setAttr -s 2 ".wl[155].w[0:1]"  0.88137296999999992 0.11862703000000008;
	setAttr -s 2 ".wl[156].w[0:1]"  0.88137296999999992 0.11862703000000008;
	setAttr -s 2 ".wl[157].w[0:1]"  0.88137296999999992 0.11862703000000008;
	setAttr -s 2 ".wl[158].w[0:1]"  0.88137296999999992 0.11862703000000008;
	setAttr -s 2 ".wl[159].w[0:1]"  0.88137296999999992 0.11862703000000008;
	setAttr ".wl[160].w[0]"  1;
	setAttr ".wl[161].w[0]"  1;
	setAttr -s 2 ".wl[162].w[1:2]"  0.50248478038791244 0.49751521961208761;
	setAttr -s 2 ".wl[163].w[1:2]"  0.4920243234772691 0.5079756765227309;
	setAttr -s 2 ".wl[164].w[1:2]"  0.48468794447431546 0.51531205552568449;
	setAttr -s 2 ".wl[165].w[1:2]"  0.48699843084104322 0.51300156915895689;
	setAttr -s 2 ".wl[166].w[1:2]"  0.49716255543087862 0.50283744456912138;
	setAttr -s 2 ".wl[167].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[168].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[169].w[1:2]"  0.50000168766274078 0.49999831233725917;
	setAttr -s 2 ".wl[170].w[1:2]"  0.50132623083113226 0.4986737691688678;
	setAttr -s 2 ".wl[171].w[1:2]"  0.50402858998326339 0.49597141001673667;
	setAttr -s 2 ".wl[172].w[6:7]"  0.49980758399999997 0.50019241599999997;
	setAttr -s 2 ".wl[173].w[5:6]"  0.50019241599999997 0.49980758399999997;
	setAttr -s 2 ".wl[174].w[5:6]"  0.50019241599999997 0.49980758399999997;
	setAttr -s 2 ".wl[175].w";
	setAttr ".wl[175].w[0]" 0.50019241599999997;
	setAttr ".wl[175].w[6]" 0.49980758399999997;
	setAttr -s 2 ".wl[176].w";
	setAttr ".wl[176].w[0]" 0.50019241599999997;
	setAttr ".wl[176].w[6]" 0.49980758399999997;
	setAttr -s 2 ".wl[177].w";
	setAttr ".wl[177].w[0]" 0.50019241599999997;
	setAttr ".wl[177].w[6]" 0.49980758399999997;
	setAttr -s 2 ".wl[178].w";
	setAttr ".wl[178].w[0]" 0.50019241599999997;
	setAttr ".wl[178].w[6]" 0.49980758399999997;
	setAttr -s 2 ".wl[179].w[6:7]"  0.49980758399999997 0.50019241599999997;
	setAttr -s 2 ".wl[180].w[10:11]"  0.99997858439382981 2.1415606170194224e-005;
	setAttr -s 2 ".wl[181].w[10:11]"  0.99999971567180523 2.8432819476620352e-007;
	setAttr -s 2 ".wl[182].w[5:6]"  0.465732765989327 0.534267234010673;
	setAttr -s 2 ".wl[183].w";
	setAttr ".wl[183].w[7]" 0.5;
	setAttr ".wl[183].w[10]" 0.5;
	setAttr -s 2 ".wl[184].w";
	setAttr ".wl[184].w[7]" 0.49525103875028181;
	setAttr ".wl[184].w[10]" 0.50474896124971813;
	setAttr -s 2 ".wl[185].w";
	setAttr ".wl[185].w[7]" 0.37804736530867206;
	setAttr ".wl[185].w[10]" 0.62195263469132789;
	setAttr -s 2 ".wl[186].w[10:11]"  0.99867757479660213 0.0013224252033978701;
	setAttr -s 2 ".wl[187].w[10:11]"  0.99999718629851486 2.8137014851381537e-006;
	setAttr -s 2 ".wl[188].w[10:11]"  0.99978987583017442 0.00021012416982557625;
	setAttr -s 2 ".wl[189].w";
	setAttr ".wl[189].w[7]" 0.32110306199882555;
	setAttr ".wl[189].w[10]" 0.67889693800117445;
	setAttr -s 2 ".wl[190].w";
	setAttr ".wl[190].w[7]" 0.56147276057188578;
	setAttr ".wl[190].w[10]" 0.43852723942811417;
	setAttr -s 2 ".wl[191].w";
	setAttr ".wl[191].w[7]" 0.5;
	setAttr ".wl[191].w[10]" 0.5;
	setAttr -s 2 ".wl[192].w";
	setAttr ".wl[192].w[7]" 0.49791863144656517;
	setAttr ".wl[192].w[10]" 0.50208136855343488;
	setAttr -s 2 ".wl[193].w";
	setAttr ".wl[193].w[7]" 0.36167671060617268;
	setAttr ".wl[193].w[10]" 0.63832328939382732;
	setAttr -s 2 ".wl[194].w[10:11]"  0.99442917108535767 0.005570828914642334;
	setAttr -s 2 ".wl[195].w[10:11]"  0.99993931527933455 6.0684720665449277e-005;
	setAttr -s 2 ".wl[196].w[10:11]"  0.99998673678146588 1.3263218534120824e-005;
	setAttr -s 2 ".wl[197].w";
	setAttr ".wl[197].w[7]" 0.40332178828459808;
	setAttr ".wl[197].w[10]" 0.59667821171540192;
	setAttr -s 2 ".wl[198].w[7:8]"  0.97087466157972813 0.029125338420271873;
	setAttr -s 2 ".wl[199].w[7:8]"  0.96738529950380325 0.032614700496196747;
	setAttr -s 2 ".wl[200].w[7:8]"  0.97087466157972813 0.029125338420271873;
	setAttr -s 2 ".wl[201].w";
	setAttr ".wl[201].w[7]" 0.40332178828459808;
	setAttr ".wl[201].w[19]" 0.59667821171540192;
	setAttr -s 2 ".wl[202].w[19:20]"  0.99998673678146588 1.3263218534120824e-005;
	setAttr -s 2 ".wl[203].w";
	setAttr ".wl[203].w[7]" 0.20249233517984058;
	setAttr ".wl[203].w[19]" 0.79750766482015945;
	setAttr -s 2 ".wl[204].w";
	setAttr ".wl[204].w[7]" 0.46752334185429772;
	setAttr ".wl[204].w[19]" 0.53247665814570222;
	setAttr -s 2 ".wl[205].w";
	setAttr ".wl[205].w[7]" 0.5;
	setAttr ".wl[205].w[19]" 0.5;
	setAttr -s 2 ".wl[206].w[7:8]"  0.99982487996749114 0.00017512003250885755;
	setAttr -s 2 ".wl[207].w";
	setAttr ".wl[207].w[7]" 0.5;
	setAttr ".wl[207].w[10]" 0.5;
	setAttr -s 2 ".wl[208].w";
	setAttr ".wl[208].w[7]" 0.46752334185429772;
	setAttr ".wl[208].w[10]" 0.53247665814570222;
	setAttr -s 2 ".wl[209].w";
	setAttr ".wl[209].w[7]" 0.20249233517984058;
	setAttr ".wl[209].w[10]" 0.79750766482015945;
	setAttr -s 2 ".wl[210].w[10:11]"  0.42033155984987608 0.57966844015012386;
	setAttr -s 2 ".wl[211].w[10:11]"  0.41949691743905454 0.58050308256094552;
	setAttr -s 2 ".wl[212].w[10:11]"  0.40170474785682231 0.59829525214317769;
	setAttr -s 2 ".wl[213].w[10:11]"  0.35394475929545716 0.64605524070454279;
	setAttr -s 2 ".wl[214].w[10:11]"  0.31019903963243872 0.68980096036756133;
	setAttr -s 2 ".wl[215].w[10:11]"  0.35394477277224051 0.64605522722775954;
	setAttr -s 2 ".wl[216].w[10:11]"  0.40170474785682203 0.59829525214317802;
	setAttr -s 2 ".wl[217].w[10:11]"  0.4194968958603445 0.58050310413965545;
	setAttr -s 2 ".wl[218].w[10:11]"  0.42033155087241336 0.57966844912758664;
	setAttr -s 2 ".wl[219].w[10:11]"  0.41782757965209893 0.58217242034790107;
	setAttr -s 2 ".wl[220].w[12:13]"  0.57346382737159729 0.42653617262840271;
	setAttr -s 2 ".wl[221].w[12:13]"  0.53275787830352783 0.46724212169647217;
	setAttr -s 2 ".wl[222].w[12:13]"  0.47596581962448903 0.52403418037551097;
	setAttr -s 2 ".wl[223].w[12:13]"  0.40118173394617179 0.59881826605382826;
	setAttr -s 2 ".wl[224].w[13:14]"  0.99136893544346094 0.0086310645565390587;
	setAttr -s 2 ".wl[225].w[13:14]"  0.98936980497092009 0.010630195029079914;
	setAttr -s 2 ".wl[226].w";
	setAttr ".wl[226].w[13]" 0.99999969600702343;
	setAttr ".wl[226].w[16]" 3.0399297656913404e-007;
	setAttr -s 2 ".wl[227].w";
	setAttr ".wl[227].w[13]" 0.86109386384487152;
	setAttr ".wl[227].w[16]" 0.13890613615512848;
	setAttr -s 2 ".wl[228].w";
	setAttr ".wl[228].w[13]" 0.72525078058242798;
	setAttr ".wl[228].w[16]" 0.27474921941757202;
	setAttr -s 2 ".wl[229].w";
	setAttr ".wl[229].w[13]" 0.99999984500698247;
	setAttr ".wl[229].w[16]" 1.5499301753152395e-007;
	setAttr -s 2 ".wl[230].w[13:14]"  0.043598651885986328 0.95640134811401367;
	setAttr -s 2 ".wl[231].w";
	setAttr ".wl[231].w[0]" 0.0073746442794799805;
	setAttr ".wl[231].w[14]" 0.99262535572052002;
	setAttr -s 2 ".wl[232].w[13:14]"  0.077473223209381104 0.9225267767906189;
	setAttr -s 2 ".wl[233].w[13:14]"  0.0012995004653930664 0.99870049953460693;
	setAttr -s 2 ".wl[234].w[13:14]"  0.10392153263092041 0.89607846736907959;
	setAttr -s 2 ".wl[235].w[14:15]"  0.99915307760238647 0.00084692239761352539;
	setAttr ".wl[236].w[14]"  1;
	setAttr -s 2 ".wl[237].w[14:15]"  0.99663591384887695 0.0033640861511230469;
	setAttr -s 2 ".wl[238].w[14:15]"  0.99988371133804321 0.00011628866195678711;
	setAttr -s 2 ".wl[239].w[14:15]"  0.99027156829833984 0.0097284317016601563;
	setAttr -s 2 ".wl[240].w[14:15]"  0.99995750188827515 4.2498111724853516e-005;
	setAttr -s 2 ".wl[241].w";
	setAttr ".wl[241].w[14]" 0.99991452563699568;
	setAttr ".wl[241].w[16]" 8.5474363004323095e-005;
	setAttr -s 2 ".wl[242].w";
	setAttr ".wl[242].w[13]" 0.79820072650909424;
	setAttr ".wl[242].w[17]" 0.20179927349090576;
	setAttr -s 2 ".wl[243].w[14:15]"  0.99962705373764038 0.00037294626235961914;
	setAttr -s 2 ".wl[244].w[14:15]"  0.99957156181335449 0.00042843818664550781;
	setAttr -s 2 ".wl[245].w[13:14]"  2.5033950805664063e-006 0.99999749660491943;
	setAttr -s 2 ".wl[246].w[12:13]"  0.13560564719588572 0.86439435280411425;
	setAttr ".wl[247].w[14]"  1;
	setAttr -s 2 ".wl[248].w[13:14]"  0.060384809970855713 0.93961519002914429;
	setAttr -s 2 ".wl[249].w[12:13]"  0.36017282810062473 0.63982717189937521;
	setAttr -s 2 ".wl[250].w[11:12]"  0.49995501613123322 0.50004498386876683;
	setAttr -s 2 ".wl[251].w[11:12]"  0.4999917392044354 0.5000082607955646;
	setAttr -s 2 ".wl[252].w[11:12]"  0.49999773365810263 0.50000226634189737;
	setAttr -s 2 ".wl[253].w[11:12]"  0.50112163621969641 0.49887836378030359;
	setAttr -s 2 ".wl[254].w[11:12]"  0.50297187836784485 0.49702812163215515;
	setAttr -s 2 ".wl[255].w[11:12]"  0.5019188491638864 0.49808115083611371;
	setAttr -s 2 ".wl[256].w[11:12]"  0.50050070693061333 0.49949929306938667;
	setAttr -s 2 ".wl[257].w[11:12]"  0.50000045352465161 0.49999954647534833;
	setAttr -s 2 ".wl[258].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[259].w[11:12]"  0.49999626662681601 0.50000373337318393;
	setAttr -s 2 ".wl[260].w";
	setAttr ".wl[260].w[13]" 0.99997211411209719;
	setAttr ".wl[260].w[16]" 2.7885887902812101e-005;
	setAttr -s 2 ".wl[261].w[12:13]"  0.24393084324369849 0.7560691567563016;
	setAttr -s 2 ".wl[262].w[12:13]"  0.51068823861348622 0.48931176138651383;
	setAttr -s 2 ".wl[263].w";
	setAttr ".wl[263].w[13]" 0.81494982269154759;
	setAttr ".wl[263].w[16]" 0.18505017730845236;
	setAttr -s 2 ".wl[264].w[16:17]"  0.14811559021472931 0.85188440978527069;
	setAttr -s 2 ".wl[265].w[16:17]"  0.30952213552192881 0.69047786447807113;
	setAttr -s 2 ".wl[266].w[16:17]"  0.32817502573156532 0.67182497426843468;
	setAttr -s 2 ".wl[267].w[16:17]"  0.14768427610397339 0.85231572389602661;
	setAttr -s 2 ".wl[268].w[16:17]"  0.26548450663168999 0.73451549336831001;
	setAttr -s 2 ".wl[269].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[270].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[271].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[272].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[273].w[17:18]"  0.5 0.5;
	setAttr ".wl[274].w[14]"  1;
	setAttr -s 2 ".wl[275].w[14:15]"  0.99598509073257446 0.0040149092674255371;
	setAttr -s 2 ".wl[276].w[14:15]"  0.98685920238494873 0.01314079761505127;
	setAttr -s 2 ".wl[277].w[14:15]"  0.99717152118682861 0.0028284788131713867;
	setAttr -s 2 ".wl[278].w[14:15]"  0.99989032745361328 0.00010967254638671875;
	setAttr -s 2 ".wl[279].w[14:15]"  0.99636435508728027 0.0036356449127197266;
	setAttr -s 2 ".wl[280].w";
	setAttr ".wl[280].w[13]" 0.99998103504913161;
	setAttr ".wl[280].w[16]" 1.8964950868394226e-005;
	setAttr -s 2 ".wl[281].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[282].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[283].w";
	setAttr ".wl[283].w[0]" 0.003460228443145752;
	setAttr ".wl[283].w[14]" 0.99653977155685425;
	setAttr -s 2 ".wl[284].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[285].w[13:14]"  0.13575607538223267 0.86424392461776733;
	setAttr -s 2 ".wl[286].w[12:13]"  0.42188242420718791 0.5781175757928122;
	setAttr -s 2 ".wl[287].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[288].w[12:13]"  0.45176562566475176 0.54823437433524824;
	setAttr -s 2 ".wl[289].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[290].w[13:14]"  0.009132683277130127 0.99086731672286987;
	setAttr -s 2 ".wl[291].w[12:13]"  0.34856731585415629 0.65143268414584365;
	setAttr -s 2 ".wl[292].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[293].w[13:14]"  0.055747747421264648 0.94425225257873535;
	setAttr -s 2 ".wl[294].w[13:14]"  0.98421002738177776 0.015789972618222237;
	setAttr -s 2 ".wl[295].w[13:14]"  0.056539773941040039 0.94346022605895996;
	setAttr -s 2 ".wl[296].w[13:14]"  0.016217887401580811 0.98378211259841919;
	setAttr -s 2 ".wl[297].w";
	setAttr ".wl[297].w[0]" 1.1920928955078125e-007;
	setAttr ".wl[297].w[14]" 0.99999988079071045;
	setAttr ".wl[298].w[14]"  1;
	setAttr -s 2 ".wl[299].w[14:15]"  0.9983135461807251 0.0016864538192749023;
	setAttr ".wl[300].w[14]"  1;
	setAttr -s 2 ".wl[301].w[13:14]"  0.00030940771102905273 0.99969059228897095;
	setAttr -s 2 ".wl[302].w[13:14]"  0.0012627840042114258 0.99873721599578857;
	setAttr -s 2 ".wl[303].w[14:15]"  0.9888569712638855 0.011143028736114502;
	setAttr -s 2 ".wl[304].w[14:15]"  0.99999052286148071 9.4771385192871094e-006;
	setAttr -s 2 ".wl[305].w";
	setAttr ".wl[305].w[14]" 0.99999964237213135;
	setAttr ".wl[305].w[17]" 3.5762786865234375e-007;
	setAttr -s 2 ".wl[306].w";
	setAttr ".wl[306].w[14]" 0.99588340520858765;
	setAttr ".wl[306].w[17]" 0.0041165947914123535;
	setAttr ".wl[307].w[14]"  1;
	setAttr -s 2 ".wl[308].w";
	setAttr ".wl[308].w[13]" 0.87843137979507446;
	setAttr ".wl[308].w[17]" 0.12156862020492554;
	setAttr -s 2 ".wl[309].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[310].w[14:15]"  0.99993604421615601 6.3955783843994141e-005;
	setAttr ".wl[311].w[14]"  1;
	setAttr -s 2 ".wl[312].w[14:15]"  0.99969172477722168 0.00030827522277832031;
	setAttr -s 2 ".wl[313].w[13:14]"  1.0728836059570313e-006 0.99999892711639404;
	setAttr -s 2 ".wl[314].w[14:15]"  0.99997508525848389 2.4914741516113281e-005;
	setAttr -s 2 ".wl[315].w";
	setAttr ".wl[315].w[13]" 0.99871524644549936;
	setAttr ".wl[315].w[17]" 0.0012847535545006394;
	setAttr -s 2 ".wl[316].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[317].w[14:15]"  0.99998080730438232 1.9192695617675781e-005;
	setAttr -s 2 ".wl[318].w[13:14]"  0.00053513050079345703 0.99946486949920654;
	setAttr -s 2 ".wl[319].w[12:13]"  0.18345363780584203 0.81654636219415799;
	setAttr -s 2 ".wl[320].w[11:12]"  0.99997225419567703 2.7745804323013601e-005;
	setAttr -s 2 ".wl[321].w[11:12]"  0.49992376251806059 0.50007623748193941;
	setAttr -s 2 ".wl[322].w[11:12]"  0.99995452172062926 4.5478279370785024e-005;
	setAttr ".wl[323].w[12]"  1;
	setAttr -s 2 ".wl[324].w[11:12]"  0.00054146243860418025 0.9994585375613958;
	setAttr -s 2 ".wl[325].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[326].w[11:12]"  0.00034498547627629522 0.99965501452372374;
	setAttr ".wl[327].w[11]"  1;
	setAttr -s 2 ".wl[328].w[11:12]"  0.4999832484769316 0.50001675152306835;
	setAttr ".wl[329].w[12]"  1;
	setAttr ".wl[330].w[11]"  1;
	setAttr -s 2 ".wl[331].w[11:12]"  0.50023423569170244 0.4997657643082975;
	setAttr ".wl[332].w[12]"  1;
	setAttr ".wl[333].w[11]"  1;
	setAttr -s 2 ".wl[334].w[11:12]"  0.50278686258958916 0.49721313741041079;
	setAttr ".wl[335].w[12]"  1;
	setAttr ".wl[336].w[11]"  1;
	setAttr -s 2 ".wl[337].w[11:12]"  0.50269904383674313 0.49730095616325681;
	setAttr -s 2 ".wl[338].w[11:12]"  0.0016227605312494134 0.99837723946875057;
	setAttr ".wl[339].w[11]"  1;
	setAttr -s 2 ".wl[340].w[11:12]"  0.50090238985795232 0.49909761014204773;
	setAttr -s 2 ".wl[341].w[12:13]"  0.99158573336899281 0.0084142666310071945;
	setAttr ".wl[342].w[11]"  1;
	setAttr -s 2 ".wl[343].w[11:12]"  0.50017086514228426 0.49982913485771568;
	setAttr -s 2 ".wl[344].w[11:12]"  0.0039559825817722452 0.99604401741822779;
	setAttr ".wl[345].w[11]"  1;
	setAttr -s 2 ".wl[346].w[11:12]"  0.5 0.5;
	setAttr -s 2 ".wl[347].w[11:12]"  0.0016696360788629253 0.99833036392113705;
	setAttr ".wl[348].w[11]"  1;
	setAttr -s 2 ".wl[349].w[11:12]"  0.49999842469712186 0.50000157530287814;
	setAttr -s 2 ".wl[350].w[12:13]"  0.5258718729019165 0.4741281270980835;
	setAttr -s 2 ".wl[351].w[12:13]"  0.50438415003149895 0.49561584996850111;
	setAttr -s 2 ".wl[352].w";
	setAttr ".wl[352].w[13]" 0.99620927404612303;
	setAttr ".wl[352].w[16]" 0.0037907259538769722;
	setAttr -s 2 ".wl[353].w";
	setAttr ".wl[353].w[13]" 0.73916596174240112;
	setAttr ".wl[353].w[16]" 0.26083403825759888;
	setAttr -s 2 ".wl[354].w";
	setAttr ".wl[354].w[13]" 0.99925591971259564;
	setAttr ".wl[354].w[16]" 0.00074408028740435839;
	setAttr -s 2 ".wl[355].w[12:13]"  0.48631852865219116 0.51368147134780884;
	setAttr -s 2 ".wl[356].w[10:11]"  0.42104287384207556 0.5789571261579245;
	setAttr -s 2 ".wl[357].w[10:11]"  0.41338984595636102 0.58661015404363892;
	setAttr -s 2 ".wl[358].w[10:11]"  0.38169918840146733 0.61830081159853267;
	setAttr -s 2 ".wl[359].w[10:11]"  0.32374546792418346 0.67625453207581654;
	setAttr -s 2 ".wl[360].w[10:11]"  0.32374548813872828 0.67625451186127172;
	setAttr -s 2 ".wl[361].w[10:11]"  0.38169920081387992 0.61830079918612002;
	setAttr -s 2 ".wl[362].w[10:11]"  0.41338981166327232 0.58661018833672773;
	setAttr -s 2 ".wl[363].w[10:11]"  0.42104285590243401 0.57895714409756593;
	setAttr -s 2 ".wl[364].w[10:11]"  0.41848128764735987 0.58151871235264008;
	setAttr -s 2 ".wl[365].w[10:11]"  0.41848129137981921 0.58151870862018074;
	setAttr -s 2 ".wl[366].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[367].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[368].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[369].w";
	setAttr ".wl[369].w[13]" 0.96303354203701019;
	setAttr ".wl[369].w[16]" 0.036966457962989807;
	setAttr -s 2 ".wl[370].w";
	setAttr ".wl[370].w[13]" 0.999997489361931;
	setAttr ".wl[370].w[16]" 2.5106380689976504e-006;
	setAttr -s 2 ".wl[371].w[12:13]"  0.566048264503479 0.433951735496521;
	setAttr -s 2 ".wl[372].w";
	setAttr ".wl[372].w[13]" 0.99956160192959942;
	setAttr ".wl[372].w[16]" 0.00043839807040058076;
	setAttr -s 2 ".wl[373].w[12:13]"  0.48589893306380516 0.51410106693619495;
	setAttr -s 2 ".wl[374].w[12:13]"  0.54697679561072621 0.45302320438927379;
	setAttr -s 2 ".wl[375].w[12:13]"  0.24810665186819816 0.75189334813180186;
	setAttr -s 2 ".wl[376].w[12:13]"  0.49789293941736168 0.50210706058263832;
	setAttr -s 2 ".wl[377].w[12:13]"  0.50471063588016662 0.49528936411983343;
	setAttr -s 2 ".wl[378].w";
	setAttr ".wl[378].w[13]" 0.55583232641220093;
	setAttr ".wl[378].w[16]" 0.44416767358779907;
	setAttr -s 2 ".wl[379].w";
	setAttr ".wl[379].w[13]" 0.88743357360363007;
	setAttr ".wl[379].w[16]" 0.11256642639636993;
	setAttr -s 2 ".wl[380].w";
	setAttr ".wl[380].w[13]" 0.72156864404678345;
	setAttr ".wl[380].w[17]" 0.27843135595321655;
	setAttr -s 2 ".wl[381].w";
	setAttr ".wl[381].w[13]" 0.97436261735856533;
	setAttr ".wl[381].w[16]" 0.025637382641434669;
	setAttr -s 2 ".wl[382].w[16:17]"  0.90811437368392944 0.091885626316070557;
	setAttr -s 2 ".wl[383].w[16:17]"  0.6059529408890747 0.3940470591109253;
	setAttr -s 2 ".wl[384].w[16:17]"  0.54567215948207481 0.45432784051792524;
	setAttr -s 2 ".wl[385].w[16:17]"  0.30892790227214068 0.69107209772785927;
	setAttr -s 2 ".wl[386].w";
	setAttr ".wl[386].w[13]" 0.83429373195902401;
	setAttr ".wl[386].w[16]" 0.16570626804097602;
	setAttr -s 2 ".wl[387].w[16:17]"  0.4174359142780304 0.5825640857219696;
	setAttr -s 2 ".wl[388].w[16:17]"  0.25992976492040498 0.74007023507959502;
	setAttr -s 2 ".wl[389].w[16:17]"  0.56760820584956395 0.43239179415043599;
	setAttr -s 2 ".wl[390].w[16:17]"  0.15953384339809418 0.84046615660190582;
	setAttr -s 2 ".wl[391].w[16:17]"  0.259798123684501 0.74020187631549905;
	setAttr -s 2 ".wl[392].w[17:18]"  0.67369536723997336 0.32630463276002664;
	setAttr -s 2 ".wl[393].w[17:18]"  0.63534581763898001 0.36465418236101999;
	setAttr -s 2 ".wl[394].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[395].w[17:18]"  0.72511307994853524 0.2748869200514647;
	setAttr -s 2 ".wl[396].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[397].w[17:18]"  0.69696840204186183 0.30303159795813822;
	setAttr -s 2 ".wl[398].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[399].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[400].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[401].w[14:15]"  0.99530410766601563 0.004695892333984375;
	setAttr -s 2 ".wl[402].w[14:15]"  0.99987781047821045 0.00012218952178955078;
	setAttr -s 2 ".wl[403].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[404].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[405].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[406].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[407].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[408].w";
	setAttr ".wl[408].w[0]" 0.0012812614440917969;
	setAttr ".wl[408].w[14]" 0.9987187385559082;
	setAttr ".wl[409].w[14]"  1;
	setAttr ".wl[410].w[14]"  1;
	setAttr -s 2 ".wl[411].w[13:14]"  0.00062859058380126953 0.99937140941619873;
	setAttr -s 2 ".wl[412].w[13:14]"  0.015244543552398682 0.98475545644760132;
	setAttr -s 2 ".wl[413].w[14:15]"  0.99999600648880005 3.9935111999511719e-006;
	setAttr -s 2 ".wl[414].w";
	setAttr ".wl[414].w[14]" 0.99999755620956421;
	setAttr ".wl[414].w[17]" 2.4437904357910156e-006;
	setAttr -s 2 ".wl[415].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[416].w[14:15]"  0.9975619912147522 0.0024380087852478027;
	setAttr -s 2 ".wl[417].w[14:15]"  0.99755871295928955 0.0024412870407104492;
	setAttr ".wl[418].w[14]"  1;
	setAttr -s 2 ".wl[419].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr ".wl[420].w[14]"  1;
	setAttr -s 2 ".wl[421].w[14:15]"  0.99952882528305054 0.00047117471694946289;
	setAttr -s 2 ".wl[422].w[13:14]"  0.71483058700000002 0.28516941299999998;
	setAttr -s 2 ".wl[423].w[11:12]"  0.99956496711276399 0.00043503288723605732;
	setAttr ".wl[424].w[12]"  1;
	setAttr -s 2 ".wl[425].w[11:12]"  0.0012779627554519793 0.998722037244548;
	setAttr ".wl[426].w[11]"  1;
	setAttr ".wl[427].w[12]"  1;
	setAttr ".wl[428].w[11]"  1;
	setAttr ".wl[429].w[12]"  1;
	setAttr ".wl[430].w[11]"  1;
	setAttr ".wl[431].w[12]"  1;
	setAttr ".wl[432].w[11]"  1;
	setAttr ".wl[433].w[12]"  1;
	setAttr ".wl[434].w[11]"  1;
	setAttr -s 2 ".wl[435].w[11:12]"  0.0025300787563567254 0.99746992124364331;
	setAttr ".wl[436].w[11]"  1;
	setAttr -s 2 ".wl[437].w[11:12]"  0.0040890420167833189 0.99591095798321672;
	setAttr ".wl[438].w[11]"  1;
	setAttr -s 2 ".wl[439].w[11:12]"  0.0029048575437177551 0.99709514245628228;
	setAttr ".wl[440].w[11]"  1;
	setAttr -s 2 ".wl[441].w[11:12]"  0.0009751571905372361 0.9990248428094628;
	setAttr ".wl[442].w[11]"  1;
	setAttr -s 2 ".wl[443].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[444].w";
	setAttr ".wl[444].w[13]" 0.99306929111480713;
	setAttr ".wl[444].w[16]" 0.0069307088851928711;
	setAttr -s 2 ".wl[445].w[12:13]"  0.49375951290130615 0.50624048709869385;
	setAttr -s 2 ".wl[446].w[12:13]"  0.53375339508056641 0.46624660491943359;
	setAttr -s 2 ".wl[447].w[12:13]"  0.49511681727903739 0.50488318272096255;
	setAttr -s 2 ".wl[448].w[12:13]"  0.53250875258192609 0.46749124741807391;
	setAttr -s 2 ".wl[449].w[12:13]"  0.4988110179363428 0.50118898206365725;
	setAttr -s 2 ".wl[450].w";
	setAttr ".wl[450].w[13]" 0.82834887504577637;
	setAttr ".wl[450].w[16]" 0.17165112495422363;
	setAttr -s 2 ".wl[451].w";
	setAttr ".wl[451].w[13]" 0.96930554509162903;
	setAttr ".wl[451].w[16]" 0.030694454908370972;
	setAttr -s 2 ".wl[452].w";
	setAttr ".wl[452].w[13]" 0.66274511814117432;
	setAttr ".wl[452].w[17]" 0.33725488185882568;
	setAttr -s 2 ".wl[453].w[16:17]"  0.59107352178774542 0.40892647821225453;
	setAttr -s 2 ".wl[454].w[16:17]"  0.41458418965339661 0.58541581034660339;
	setAttr -s 2 ".wl[455].w[16:17]"  0.65895724296569824 0.34104275703430176;
	setAttr -s 2 ".wl[456].w[16:17]"  0.61817631925354233 0.38182368074645773;
	setAttr -s 2 ".wl[457].w[17:18]"  0.66587666819894431 0.33412333180105563;
	setAttr -s 2 ".wl[458].w[17:18]"  0.67415176682659805 0.32584823317340189;
	setAttr -s 2 ".wl[459].w[17:18]"  0.73079864754268842 0.26920135245731164;
	setAttr -s 2 ".wl[460].w[17:18]"  0.71683293382389135 0.28316706617610865;
	setAttr -s 2 ".wl[461].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[462].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[463].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[464].w[12:13]"  0.022308318542349253 0.97769168145765084;
	setAttr -s 2 ".wl[465].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[466].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[467].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[468].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[469].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[470].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[471].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[472].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[473].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[474].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[475].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[476].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[477].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[478].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[479].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[480].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[481].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[482].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[483].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[484].w[12:13]"  0.7 0.3;
	setAttr -s 2 ".wl[485].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[486].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[487].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[488].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[489].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[490].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[491].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[492].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[493].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[494].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[495].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[496].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[497].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[498].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[499].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[500].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[501].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[502].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[503].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[504].w[12:13]"  0.5 0.5;
	setAttr -s 2 ".wl[505].w[10:11]"  1.9073486328125e-006 0.99999809265136719;
	setAttr -s 2 ".wl[506].w[10:11]"  3.3318996429443359e-005 0.99996668100357056;
	setAttr ".wl[507].w[11]"  1;
	setAttr -s 2 ".wl[508].w[10:11]"  7.2121620178222656e-006 0.99999278783798218;
	setAttr -s 2 ".wl[509].w[10:11]"  8.3446502685546875e-007 0.99999916553497314;
	setAttr -s 2 ".wl[510].w[10:11]"  1.6689300537109375e-006 0.99999833106994629;
	setAttr -s 2 ".wl[511].w[11:12]"  0.99998623132705688 1.3768672943115234e-005;
	setAttr -s 2 ".wl[512].w[10:11]"  1.6272068023681641e-005 0.99998372793197632;
	setAttr -s 2 ".wl[513].w[10:11]"  0.00099200010299682617 0.99900799989700317;
	setAttr -s 2 ".wl[514].w[10:11]"  2.1457672119140625e-006 0.99999785423278809;
	setAttr -s 2 ".wl[515].w[10:11]"  1.1920928955078125e-006 0.99999880790710449;
	setAttr -s 2 ".wl[516].w[10:11]"  6.7532062530517578e-005 0.99993246793746948;
	setAttr -s 2 ".wl[517].w[11:12]"  0.99999558925628662 4.4107437133789063e-006;
	setAttr ".wl[518].w[11]"  1;
	setAttr ".wl[519].w[11]"  1;
	setAttr -s 2 ".wl[520].w[10:11]"  5.9604644775390625e-008 0.99999994039535522;
	setAttr ".wl[521].w[11]"  1;
	setAttr -s 2 ".wl[522].w[10:11]"  2.86102294921875e-006 0.99999713897705078;
	setAttr ".wl[523].w[11]"  1;
	setAttr -s 2 ".wl[524].w[10:11]"  1.0073184967041016e-005 0.99998992681503296;
	setAttr -s 2 ".wl[525].w[11:12]"  0.99992477893829346 7.5221061706542969e-005;
	setAttr -s 2 ".wl[526].w[10:11]"  5.9604644775390625e-008 0.99999994039535522;
	setAttr ".wl[527].w[11]"  1;
	setAttr ".wl[528].w[11]"  1;
	setAttr -s 2 ".wl[529].w[10:11]"  5.7816505432128906e-006 0.99999421834945679;
	setAttr -s 2 ".wl[530].w[10:11]"  2.0265579223632813e-006 0.99999797344207764;
	setAttr -s 2 ".wl[531].w[11:12]"  0.99999582767486572 4.1723251342773438e-006;
	setAttr -s 2 ".wl[532].w[10:11]"  1.5497207641601563e-005 0.9999845027923584;
	setAttr -s 2 ".wl[533].w[10:11]"  1.811981201171875e-005 0.99998188018798828;
	setAttr -s 2 ".wl[534].w[10:11]"  2.4974346160888672e-005 0.99997502565383911;
	setAttr -s 2 ".wl[535].w[10:11]"  0.0011388063430786133 0.99886119365692139;
	setAttr -s 2 ".wl[536].w[10:11]"  0.00089704990386962891 0.99910295009613037;
	setAttr -s 2 ".wl[537].w[10:11]"  4.8279762268066406e-006 0.99999517202377319;
	setAttr ".wl[538].w[11]"  1;
	setAttr -s 2 ".wl[539].w[10:11]"  2.4437904357910156e-006 0.99999755620956421;
	setAttr -s 2 ".wl[540].w[10:11]"  1.3709068298339844e-006 0.99999862909317017;
	setAttr -s 2 ".wl[541].w[11:12]"  0.99999743700027466 2.5629997253417969e-006;
	setAttr -s 2 ".wl[542].w[10:11]"  5.3644180297851563e-007 0.99999946355819702;
	setAttr -s 2 ".wl[543].w[10:11]"  4.6908855438232422e-005 0.99995309114456177;
	setAttr -s 2 ".wl[544].w[10:11]"  1.7285346984863281e-006 0.99999827146530151;
	setAttr -s 2 ".wl[545].w[10:11]"  3.8743019104003906e-006 0.9999961256980896;
	setAttr -s 2 ".wl[546].w[10:11]"  2.384185791015625e-007 0.9999997615814209;
	setAttr ".wl[547].w[11]"  1;
	setAttr -s 2 ".wl[548].w[11:12]"  0.99999904632568359 9.5367431640625e-007;
	setAttr -s 2 ".wl[549].w[10:11]"  1.7881393432617188e-007 0.99999982118606567;
	setAttr -s 2 ".wl[550].w[10:11]"  2.9802322387695313e-007 0.99999970197677612;
	setAttr -s 2 ".wl[551].w[10:11]"  1.3113021850585938e-006 0.99999868869781494;
	setAttr -s 2 ".wl[552].w[10:11]"  1.1324882507324219e-006 0.99999886751174927;
	setAttr -s 2 ".wl[553].w[10:11]"  2.86102294921875e-006 0.99999713897705078;
	setAttr -s 2 ".wl[554].w[10:11]"  0.00059539079666137695 0.99940460920333862;
	setAttr -s 2 ".wl[555].w[10:11]"  1.5735626220703125e-005 0.9999842643737793;
	setAttr ".wl[556].w[11]"  1;
	setAttr -s 2 ".wl[557].w[10:11]"  1.3411045074462891e-005 0.99998658895492554;
	setAttr -s 2 ".wl[558].w[11:12]"  0.99999457597732544 5.4240226745605469e-006;
	setAttr -s 2 ".wl[559].w[11:12]"  0.99999964237213135 3.5762786865234375e-007;
	setAttr -s 2 ".wl[560].w[11:12]"  0.99946075677871704 0.00053924322128295898;
	setAttr ".wl[561].w[11]"  1;
	setAttr -s 2 ".wl[562].w[10:11]"  8.4638595581054688e-006 0.99999153614044189;
	setAttr -s 2 ".wl[563].w[10:11]"  4.9591064453125e-005 0.99995040893554688;
	setAttr -s 2 ".wl[564].w[10:11]"  4.76837158203125e-007 0.9999995231628418;
	setAttr ".wl[565].w[11]"  1;
	setAttr ".wl[566].w[11]"  1;
	setAttr -s 2 ".wl[567].w[10:11]"  2.6881694793701172e-005 0.9999731183052063;
	setAttr -s 2 ".wl[568].w[10:11]"  6.67572021484375e-006 0.99999332427978516;
	setAttr ".wl[569].w[11]"  1;
	setAttr -s 2 ".wl[570].w[11:12]"  0.99997884035110474 2.1159648895263672e-005;
	setAttr -s 2 ".wl[571].w[10:11]"  2.5033950805664063e-005 0.99997496604919434;
	setAttr -s 2 ".wl[572].w[10:11]"  1.3411045074462891e-005 0.99998658895492554;
	setAttr -s 2 ".wl[573].w[10:11]"  1.6450881958007813e-005 0.99998354911804199;
	setAttr -s 2 ".wl[574].w[11:12]"  0.99999785423278809 2.1457672119140625e-006;
	setAttr -s 2 ".wl[575].w[10:11]"  4.8875808715820313e-006 0.99999511241912842;
	setAttr -s 2 ".wl[576].w[10:11]"  2.384185791015625e-007 0.9999997615814209;
	setAttr -s 2 ".wl[577].w[10:11]"  8.8751316070556641e-005 0.99991124868392944;
	setAttr -s 2 ".wl[578].w[10:11]"  5.9008598327636719e-006 0.99999409914016724;
	setAttr -s 2 ".wl[579].w[10:11]"  5.9604644775390625e-006 0.99999403953552246;
	setAttr -s 2 ".wl[580].w[11:12]"  0.99999755620956421 2.4437904357910156e-006;
	setAttr -s 2 ".wl[581].w[10:11]"  1.8477439880371094e-006 0.99999815225601196;
	setAttr -s 2 ".wl[582].w[10:11]"  1.7285346984863281e-006 0.99999827146530151;
	setAttr -s 2 ".wl[583].w[10:11]"  4.7922134399414063e-005 0.99995207786560059;
	setAttr -s 2 ".wl[584].w[10:11]"  7.152557373046875e-007 0.9999992847442627;
	setAttr -s 2 ".wl[585].w[10:11]"  1.3113021850585938e-006 0.99999868869781494;
	setAttr -s 2 ".wl[586].w[19:20]"  1.9073486328125e-006 0.99999809265136719;
	setAttr -s 2 ".wl[587].w[19:20]"  3.3318996429443359e-005 0.99996668100357056;
	setAttr ".wl[588].w[20]"  1;
	setAttr -s 2 ".wl[589].w[19:20]"  7.2121620178222656e-006 0.99999278783798218;
	setAttr -s 2 ".wl[590].w[19:20]"  8.3446502685546875e-007 0.99999916553497314;
	setAttr -s 2 ".wl[591].w[19:20]"  1.6689300537109375e-006 0.99999833106994629;
	setAttr -s 2 ".wl[592].w[20:21]"  0.99998623132705688 1.3768672943115234e-005;
	setAttr -s 2 ".wl[593].w[19:20]"  1.6272068023681641e-005 0.99998372793197632;
	setAttr -s 2 ".wl[594].w[19:20]"  0.00099200010299682617 0.99900799989700317;
	setAttr -s 2 ".wl[595].w[19:20]"  2.1457672119140625e-006 0.99999785423278809;
	setAttr -s 2 ".wl[596].w[19:20]"  1.1920928955078125e-006 0.99999880790710449;
	setAttr -s 2 ".wl[597].w[19:20]"  6.7532062530517578e-005 0.99993246793746948;
	setAttr -s 2 ".wl[598].w[20:21]"  0.99999558925628662 4.4107437133789063e-006;
	setAttr ".wl[599].w[20]"  1;
	setAttr ".wl[600].w[20]"  1;
	setAttr -s 2 ".wl[601].w[19:20]"  5.9604644775390625e-008 0.99999994039535522;
	setAttr ".wl[602].w[20]"  1;
	setAttr -s 2 ".wl[603].w[19:20]"  2.86102294921875e-006 0.99999713897705078;
	setAttr ".wl[604].w[20]"  1;
	setAttr -s 2 ".wl[605].w[19:20]"  1.0073184967041016e-005 0.99998992681503296;
	setAttr -s 2 ".wl[606].w[20:21]"  0.99992477893829346 7.5221061706542969e-005;
	setAttr -s 2 ".wl[607].w[19:20]"  5.9604644775390625e-008 0.99999994039535522;
	setAttr ".wl[608].w[20]"  1;
	setAttr ".wl[609].w[20]"  1;
	setAttr -s 2 ".wl[610].w[19:20]"  5.7816505432128906e-006 0.99999421834945679;
	setAttr -s 2 ".wl[611].w[19:20]"  2.0265579223632813e-006 0.99999797344207764;
	setAttr -s 2 ".wl[612].w[20:21]"  0.99999582767486572 4.1723251342773438e-006;
	setAttr -s 2 ".wl[613].w[19:20]"  1.5497207641601563e-005 0.9999845027923584;
	setAttr -s 2 ".wl[614].w[19:20]"  1.811981201171875e-005 0.99998188018798828;
	setAttr -s 2 ".wl[615].w[19:20]"  2.4974346160888672e-005 0.99997502565383911;
	setAttr -s 2 ".wl[616].w[19:20]"  0.0011388063430786133 0.99886119365692139;
	setAttr -s 2 ".wl[617].w[19:20]"  0.00089704990386962891 0.99910295009613037;
	setAttr -s 2 ".wl[618].w[19:20]"  4.8279762268066406e-006 0.99999517202377319;
	setAttr ".wl[619].w[20]"  1;
	setAttr -s 2 ".wl[620].w[19:20]"  2.4437904357910156e-006 0.99999755620956421;
	setAttr -s 2 ".wl[621].w[19:20]"  1.3709068298339844e-006 0.99999862909317017;
	setAttr -s 2 ".wl[622].w[20:21]"  0.99999743700027466 2.5629997253417969e-006;
	setAttr -s 2 ".wl[623].w[19:20]"  5.3644180297851563e-007 0.99999946355819702;
	setAttr -s 2 ".wl[624].w[19:20]"  4.6908855438232422e-005 0.99995309114456177;
	setAttr -s 2 ".wl[625].w[19:20]"  1.7285346984863281e-006 0.99999827146530151;
	setAttr -s 2 ".wl[626].w[19:20]"  3.8743019104003906e-006 0.9999961256980896;
	setAttr -s 2 ".wl[627].w[19:20]"  2.384185791015625e-007 0.9999997615814209;
	setAttr ".wl[628].w[20]"  1;
	setAttr -s 2 ".wl[629].w[20:21]"  0.99999904632568359 9.5367431640625e-007;
	setAttr -s 2 ".wl[630].w[19:20]"  1.7881393432617188e-007 0.99999982118606567;
	setAttr -s 2 ".wl[631].w[19:20]"  2.9802322387695313e-007 0.99999970197677612;
	setAttr -s 2 ".wl[632].w[19:20]"  1.3113021850585938e-006 0.99999868869781494;
	setAttr -s 2 ".wl[633].w[19:20]"  1.1324882507324219e-006 0.99999886751174927;
	setAttr -s 2 ".wl[634].w[19:20]"  2.86102294921875e-006 0.99999713897705078;
	setAttr -s 2 ".wl[635].w[19:20]"  0.00059539079666137695 0.99940460920333862;
	setAttr -s 2 ".wl[636].w[19:20]"  1.5735626220703125e-005 0.9999842643737793;
	setAttr ".wl[637].w[20]"  1;
	setAttr -s 2 ".wl[638].w[19:20]"  1.3411045074462891e-005 0.99998658895492554;
	setAttr -s 2 ".wl[639].w[20:21]"  0.99999457597732544 5.4240226745605469e-006;
	setAttr -s 2 ".wl[640].w[20:21]"  0.99999964237213135 3.5762786865234375e-007;
	setAttr -s 2 ".wl[641].w[20:21]"  0.99946075677871704 0.00053924322128295898;
	setAttr ".wl[642].w[20]"  1;
	setAttr -s 2 ".wl[643].w[19:20]"  8.4638595581054688e-006 0.99999153614044189;
	setAttr -s 2 ".wl[644].w[19:20]"  4.9591064453125e-005 0.99995040893554688;
	setAttr -s 2 ".wl[645].w[19:20]"  4.76837158203125e-007 0.9999995231628418;
	setAttr ".wl[646].w[20]"  1;
	setAttr ".wl[647].w[20]"  1;
	setAttr -s 2 ".wl[648].w[19:20]"  2.6881694793701172e-005 0.9999731183052063;
	setAttr -s 2 ".wl[649].w[19:20]"  6.67572021484375e-006 0.99999332427978516;
	setAttr ".wl[650].w[20]"  1;
	setAttr -s 2 ".wl[651].w[20:21]"  0.99997884035110474 2.1159648895263672e-005;
	setAttr -s 2 ".wl[652].w[19:20]"  2.5033950805664063e-005 0.99997496604919434;
	setAttr -s 2 ".wl[653].w[19:20]"  1.3411045074462891e-005 0.99998658895492554;
	setAttr -s 2 ".wl[654].w[19:20]"  1.6450881958007813e-005 0.99998354911804199;
	setAttr -s 2 ".wl[655].w[20:21]"  0.99999785423278809 2.1457672119140625e-006;
	setAttr -s 2 ".wl[656].w[19:20]"  4.8875808715820313e-006 0.99999511241912842;
	setAttr -s 2 ".wl[657].w[19:20]"  2.384185791015625e-007 0.9999997615814209;
	setAttr -s 2 ".wl[658].w[19:20]"  8.8751316070556641e-005 0.99991124868392944;
	setAttr -s 2 ".wl[659].w[19:20]"  5.9008598327636719e-006 0.99999409914016724;
	setAttr -s 2 ".wl[660].w[19:20]"  5.9604644775390625e-006 0.99999403953552246;
	setAttr -s 2 ".wl[661].w[20:21]"  0.99999755620956421 2.4437904357910156e-006;
	setAttr -s 2 ".wl[662].w[19:20]"  1.8477439880371094e-006 0.99999815225601196;
	setAttr -s 2 ".wl[663].w[19:20]"  1.7285346984863281e-006 0.99999827146530151;
	setAttr -s 2 ".wl[664].w[19:20]"  4.7922134399414063e-005 0.99995207786560059;
	setAttr -s 2 ".wl[665].w[19:20]"  7.152557373046875e-007 0.9999992847442627;
	setAttr -s 2 ".wl[666].w[19:20]"  1.3113021850585938e-006 0.99999868869781494;
	setAttr -s 2 ".wl[667].w[19:20]"  0.42033155984987608 0.57966844015012386;
	setAttr -s 2 ".wl[668].w[19:20]"  0.41949691743905454 0.58050308256094552;
	setAttr -s 2 ".wl[669].w[19:20]"  0.40170474785682231 0.59829525214317769;
	setAttr -s 2 ".wl[670].w[19:20]"  0.35394475929545716 0.64605524070454279;
	setAttr -s 2 ".wl[671].w[19:20]"  0.31019903963243872 0.68980096036756133;
	setAttr -s 2 ".wl[672].w[19:20]"  0.35394477277224051 0.64605522722775954;
	setAttr -s 2 ".wl[673].w[19:20]"  0.40170474785682203 0.59829525214317802;
	setAttr -s 2 ".wl[674].w[19:20]"  0.4194968958603445 0.58050310413965545;
	setAttr -s 2 ".wl[675].w[19:20]"  0.42033155087241336 0.57966844912758664;
	setAttr -s 2 ".wl[676].w[19:20]"  0.41782757965209893 0.58217242034790107;
	setAttr -s 2 ".wl[677].w[21:22]"  0.57346382737159729 0.42653617262840271;
	setAttr -s 2 ".wl[678].w[21:22]"  0.53275787830352783 0.46724212169647217;
	setAttr -s 2 ".wl[679].w[21:22]"  0.47596581962448903 0.52403418037551097;
	setAttr -s 2 ".wl[680].w[21:22]"  0.40118173394617179 0.59881826605382826;
	setAttr -s 3 ".wl[681].w[21:23]"  0.0001950019777260016 0.99117803223156442 
		0.0086269657907094791;
	setAttr -s 3 ".wl[682].w[21:23]"  0.00029242304871110773 0.98908359895028652 
		0.010623978001002319;
	setAttr -s 2 ".wl[683].w";
	setAttr ".wl[683].w[22]" 0.99999969600702343;
	setAttr ".wl[683].w[25]" 3.0399297656913404e-007;
	setAttr -s 2 ".wl[684].w";
	setAttr ".wl[684].w[22]" 0.86109386384487152;
	setAttr ".wl[684].w[25]" 0.13890613615512848;
	setAttr -s 2 ".wl[685].w";
	setAttr ".wl[685].w[22]" 0.72525078058242798;
	setAttr ".wl[685].w[25]" 0.27474921941757202;
	setAttr -s 2 ".wl[686].w";
	setAttr ".wl[686].w[22]" 0.99999984500698247;
	setAttr ".wl[686].w[25]" 1.5499301753152395e-007;
	setAttr -s 4 ".wl[687].w";
	setAttr ".wl[687].w[0]" 0.00018035064500694309;
	setAttr ".wl[687].w[22]" 0.070984491826402402;
	setAttr ".wl[687].w[23]" 0.92883378260939686;
	setAttr ".wl[687].w[25]" 1.3749191938043137e-006;
	setAttr -s 4 ".wl[688].w";
	setAttr ".wl[688].w[0]" 0.0053625318756829665;
	setAttr ".wl[688].w[23]" 0.9940377342789497;
	setAttr ".wl[688].w[25]" 7.7886233518769072e-008;
	setAttr ".wl[688].w[26]" 0.00059965595913394527;
	setAttr -s 2 ".wl[689].w[22:23]"  0.063488960468372005 0.93651103953162795;
	setAttr -s 2 ".wl[690].w[22:23]"  0.0032807686496746855 0.99671923135032536;
	setAttr -s 2 ".wl[691].w[22:23]"  0.11948022229979452 0.88051977770020551;
	setAttr -s 4 ".wl[692].w";
	setAttr ".wl[692].w[0]" 6.6979670559415276e-006;
	setAttr ".wl[692].w[22]" 0.00099917951108762773;
	setAttr ".wl[692].w[23]" 0.99826550940405945;
	setAttr ".wl[692].w[24]" 0.00072861311779693347;
	setAttr -s 3 ".wl[693].w";
	setAttr ".wl[693].w[0]" 2.4926870112217566e-008;
	setAttr ".wl[693].w[23]" 0.99999981813002659;
	setAttr ".wl[693].w[26]" 1.5694310334308419e-007;
	setAttr -s 2 ".wl[694].w[23:24]"  0.9956761515886402 0.0043238484113597873;
	setAttr -s 2 ".wl[695].w[23:24]"  0.99969785778393905 0.00030214221606103336;
	setAttr -s 3 ".wl[696].w[22:24]"  9.7446574992063323e-005 0.99045428870019392 
		0.0094482647248139741;
	setAttr -s 3 ".wl[697].w";
	setAttr ".wl[697].w[23]" 0.99996188318974766;
	setAttr ".wl[697].w[24]" 3.8085168316312316e-005;
	setAttr ".wl[697].w[26]" 3.1641935994844176e-008;
	setAttr -s 3 ".wl[698].w";
	setAttr ".wl[698].w[22]" 0.00027319284316115782;
	setAttr ".wl[698].w[23]" 0.99964534590963394;
	setAttr ".wl[698].w[25]" 8.1461247204939852e-005;
	setAttr -s 2 ".wl[699].w";
	setAttr ".wl[699].w[22]" 0.79820072650909424;
	setAttr ".wl[699].w[26]" 0.20179927349090576;
	setAttr -s 2 ".wl[700].w[23:24]"  0.9994739508581979 0.0005260491418021037;
	setAttr -s 2 ".wl[701].w[23:24]"  0.99959526548640809 0.00040473451359187071;
	setAttr -s 3 ".wl[702].w[22:24]"  8.6312625614168062e-006 0.99999127046667857 
		9.8270759919393443e-008;
	setAttr -s 2 ".wl[703].w[21:22]"  0.13560564719588572 0.86439435280411425;
	setAttr -s 2 ".wl[704].w[23:24]"  0.99999937787036819 6.2212963189422577e-007;
	setAttr -s 3 ".wl[705].w[22:24]"  0.058267643126897445 0.94163969662284708 
		9.2660250255588588e-005;
	setAttr -s 2 ".wl[706].w[21:22]"  0.36017282810062473 0.63982717189937521;
	setAttr -s 2 ".wl[707].w[20:21]"  0.49995501613123322 0.50004498386876683;
	setAttr -s 2 ".wl[708].w[20:21]"  0.4999917392044354 0.5000082607955646;
	setAttr -s 2 ".wl[709].w[20:21]"  0.49999773365810263 0.50000226634189737;
	setAttr -s 2 ".wl[710].w[20:21]"  0.50112163621969641 0.49887836378030359;
	setAttr -s 2 ".wl[711].w[20:21]"  0.50297187836784485 0.49702812163215515;
	setAttr -s 2 ".wl[712].w[20:21]"  0.5019188491638864 0.49808115083611371;
	setAttr -s 2 ".wl[713].w[20:21]"  0.50050070693061333 0.49949929306938667;
	setAttr -s 2 ".wl[714].w[20:21]"  0.50000045352465161 0.49999954647534833;
	setAttr -s 2 ".wl[715].w[20:21]"  0.5 0.5;
	setAttr -s 2 ".wl[716].w[20:21]"  0.49999626662681601 0.50000373337318393;
	setAttr -s 2 ".wl[717].w";
	setAttr ".wl[717].w[22]" 0.99997211411209719;
	setAttr ".wl[717].w[25]" 2.7885887902812101e-005;
	setAttr -s 2 ".wl[718].w[21:22]"  0.24393084324369849 0.7560691567563016;
	setAttr -s 2 ".wl[719].w[21:22]"  0.51068823861348622 0.48931176138651383;
	setAttr -s 2 ".wl[720].w";
	setAttr ".wl[720].w[22]" 0.81494982269154759;
	setAttr ".wl[720].w[25]" 0.18505017730845236;
	setAttr -s 2 ".wl[721].w[25:26]"  0.14811559021472931 0.85188440978527069;
	setAttr -s 2 ".wl[722].w[25:26]"  0.30952213552192881 0.69047786447807113;
	setAttr -s 2 ".wl[723].w[25:26]"  0.32817502573156532 0.67182497426843468;
	setAttr -s 2 ".wl[724].w[25:26]"  0.14768427610397339 0.85231572389602661;
	setAttr -s 2 ".wl[725].w[25:26]"  0.26548450663168999 0.73451549336831001;
	setAttr -s 2 ".wl[726].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[727].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[728].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[729].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[730].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[731].w[23:24]"  0.99999013118641977 9.8688135802467847e-006;
	setAttr -s 2 ".wl[732].w[23:24]"  0.9964179175140665 0.0035820824859335151;
	setAttr -s 2 ".wl[733].w[23:24]"  0.9899744971126927 0.010025502887307174;
	setAttr -s 3 ".wl[734].w[22:24]"  1.4381759182785495e-005 0.99662141627410794 
		0.003364201966709255;
	setAttr -s 2 ".wl[735].w[23:24]"  0.999838550899106 0.00016144910089403548;
	setAttr -s 2 ".wl[736].w[23:24]"  0.99609759149045152 0.0039024085095484959;
	setAttr -s 2 ".wl[737].w";
	setAttr ".wl[737].w[22]" 0.99998103504913161;
	setAttr ".wl[737].w[25]" 1.8964950868394226e-005;
	setAttr -s 3 ".wl[738].w";
	setAttr ".wl[738].w[22]" 0.37797840018547113;
	setAttr ".wl[738].w[23]" 0.62201416537530707;
	setAttr ".wl[738].w[25]" 7.4344392217874715e-006;
	setAttr -s 4 ".wl[739].w";
	setAttr ".wl[739].w[22]" 0.082343860698475158;
	setAttr ".wl[739].w[23]" 0.91520030749951919;
	setAttr ".wl[739].w[25]" 5.4881977819691748e-007;
	setAttr ".wl[739].w[26]" 0.0024552829822273585;
	setAttr -s 3 ".wl[740].w";
	setAttr ".wl[740].w[0]" 0.0034339739274370637;
	setAttr ".wl[740].w[23]" 0.99654051314956149;
	setAttr ".wl[740].w[25]" 2.5512923001441342e-005;
	setAttr -s 2 ".wl[741].w[22:23]"  0.41497418037422196 0.58502581962577815;
	setAttr -s 2 ".wl[742].w[22:23]"  0.11612129676885956 0.88387870323114037;
	setAttr -s 2 ".wl[743].w[21:22]"  0.42188242420718791 0.5781175757928122;
	setAttr -s 2 ".wl[744].w[22:23]"  0.518127399136319 0.48187260086368089;
	setAttr -s 2 ".wl[745].w[21:22]"  0.45176562566475176 0.54823437433524824;
	setAttr -s 2 ".wl[746].w[22:23]"  0.14502795421376191 0.85497204578623809;
	setAttr -s 2 ".wl[747].w[22:23]"  0.0079902544302024158 0.9920097455697976;
	setAttr -s 2 ".wl[748].w[21:22]"  0.34856731585415629 0.65143268414584365;
	setAttr -s 2 ".wl[749].w[22:23]"  0.54944014009401176 0.45055985990598824;
	setAttr -s 2 ".wl[750].w[22:23]"  0.058248244490013486 0.94175175550998647;
	setAttr -s 3 ".wl[751].w[21:23]"  0.00032621232348683122 0.9838961940215275 
		0.01577759365498559;
	setAttr -s 2 ".wl[752].w[22:23]"  0.087177552175848341 0.91282244782415156;
	setAttr -s 3 ".wl[753].w";
	setAttr ".wl[753].w[0]" 0.00011045900979049473;
	setAttr ".wl[753].w[22]" 0.017426072472934203;
	setAttr ".wl[753].w[23]" 0.98246346851727528;
	setAttr -s 3 ".wl[754].w";
	setAttr ".wl[754].w[0]" 0.00094332568393091338;
	setAttr ".wl[754].w[23]" 0.9989883022772601;
	setAttr ".wl[754].w[26]" 6.8372038809017783e-005;
	setAttr -s 2 ".wl[755].w";
	setAttr ".wl[755].w[0]" 0.00013474866040244358;
	setAttr ".wl[755].w[23]" 0.99986525133959758;
	setAttr -s 2 ".wl[756].w[23:24]"  0.99847726570753226 0.0015227342924677141;
	setAttr -s 2 ".wl[757].w[23:24]"  0.99949248405685776 0.00050751594314224426;
	setAttr -s 3 ".wl[758].w[22:24]"  0.00032116541229647744 0.99967046299663909 
		8.3715910642928483e-006;
	setAttr -s 2 ".wl[759].w[22:23]"  0.0061696013304275606 0.99383039866957246;
	setAttr -s 3 ".wl[760].w[22:24]"  0.0015050582482726579 0.98903244235773102 
		0.0094624993939962099;
	setAttr -s 2 ".wl[761].w[23:24]"  0.9999790867639009 2.0913236099159017e-005;
	setAttr -s 2 ".wl[762].w";
	setAttr ".wl[762].w[23]" 0.99999931935993658;
	setAttr ".wl[762].w[26]" 6.8064006342183347e-007;
	setAttr -s 3 ".wl[763].w";
	setAttr ".wl[763].w[23]" 0.99639014585281482;
	setAttr ".wl[763].w[25]" 2.2558646291625844e-006;
	setAttr ".wl[763].w[26]" 0.0036075982825559999;
	setAttr -s 3 ".wl[764].w";
	setAttr ".wl[764].w[23]" 0.99999102334725021;
	setAttr ".wl[764].w[25]" 3.7893977304042606e-006;
	setAttr ".wl[764].w[26]" 5.1872550192906338e-006;
	setAttr -s 2 ".wl[765].w";
	setAttr ".wl[765].w[22]" 0.87843137979507446;
	setAttr ".wl[765].w[26]" 0.12156862020492554;
	setAttr -s 4 ".wl[766].w";
	setAttr ".wl[766].w[22]" 0.086515498892931836;
	setAttr ".wl[766].w[23]" 0.89506938783618006;
	setAttr ".wl[766].w[25]" 4.1039758046354079e-005;
	setAttr ".wl[766].w[26]" 0.018374073512841815;
	setAttr -s 2 ".wl[767].w[23:24]"  0.99985200980746702 0.00014799019253304116;
	setAttr -s 2 ".wl[768].w[23:24]"  0.99995257903205714 4.7420967942756305e-005;
	setAttr -s 2 ".wl[769].w[23:24]"  0.99953133659657056 0.00046866340342944813;
	setAttr -s 2 ".wl[770].w[22:23]"  0.0070310653291174533 0.99296893467088254;
	setAttr -s 2 ".wl[771].w[23:24]"  0.99997260303015734 2.7396969842692239e-005;
	setAttr -s 2 ".wl[772].w";
	setAttr ".wl[772].w[22]" 0.99871524644549936;
	setAttr ".wl[772].w[26]" 0.0012847535545006394;
	setAttr -s 2 ".wl[773].w[22:23]"  0.27275995592297092 0.72724004407702902;
	setAttr -s 2 ".wl[774].w[23:24]"  0.99995961256378574 4.0387436214343745e-005;
	setAttr -s 3 ".wl[775].w[22:24]"  0.0012612459952963651 0.9987246879507049 
		1.4066053998708071e-005;
	setAttr -s 2 ".wl[776].w[21:22]"  0.18345363780584203 0.81654636219415799;
	setAttr -s 2 ".wl[777].w[20:21]"  0.99997225419567703 2.7745804323013601e-005;
	setAttr -s 2 ".wl[778].w[20:21]"  0.49992376251806059 0.50007623748193941;
	setAttr -s 2 ".wl[779].w[20:21]"  0.99995452172062926 4.5478279370785024e-005;
	setAttr ".wl[780].w[21]"  1;
	setAttr -s 2 ".wl[781].w[20:21]"  0.00054146243860418025 0.9994585375613958;
	setAttr -s 2 ".wl[782].w[20:21]"  0.5 0.5;
	setAttr -s 2 ".wl[783].w[20:21]"  0.00034498547627629522 0.99965501452372374;
	setAttr ".wl[784].w[20]"  1;
	setAttr -s 2 ".wl[785].w[20:21]"  0.4999832484769316 0.50001675152306835;
	setAttr ".wl[786].w[21]"  1;
	setAttr ".wl[787].w[20]"  1;
	setAttr -s 2 ".wl[788].w[20:21]"  0.50023423569170244 0.4997657643082975;
	setAttr ".wl[789].w[21]"  1;
	setAttr ".wl[790].w[20]"  1;
	setAttr -s 2 ".wl[791].w[20:21]"  0.50278686258958916 0.49721313741041079;
	setAttr ".wl[792].w[21]"  1;
	setAttr ".wl[793].w[20]"  1;
	setAttr -s 2 ".wl[794].w[20:21]"  0.50269904383674313 0.49730095616325681;
	setAttr -s 2 ".wl[795].w[20:21]"  0.0016227605312494134 0.99837723946875057;
	setAttr ".wl[796].w[20]"  1;
	setAttr -s 2 ".wl[797].w[20:21]"  0.50090238985795232 0.49909761014204773;
	setAttr -s 2 ".wl[798].w[21:22]"  0.99158573336899281 0.0084142666310071945;
	setAttr ".wl[799].w[20]"  1;
	setAttr -s 2 ".wl[800].w[20:21]"  0.50017086514228426 0.49982913485771568;
	setAttr -s 2 ".wl[801].w[20:21]"  0.0039559825817722452 0.99604401741822779;
	setAttr ".wl[802].w[20]"  1;
	setAttr -s 2 ".wl[803].w[20:21]"  0.5 0.5;
	setAttr -s 2 ".wl[804].w[20:21]"  0.0016696360788629253 0.99833036392113705;
	setAttr ".wl[805].w[20]"  1;
	setAttr -s 2 ".wl[806].w[20:21]"  0.49999842469712186 0.50000157530287814;
	setAttr -s 2 ".wl[807].w[21:22]"  0.5258718729019165 0.4741281270980835;
	setAttr -s 2 ".wl[808].w[21:22]"  0.50438415003149895 0.49561584996850111;
	setAttr -s 2 ".wl[809].w";
	setAttr ".wl[809].w[22]" 0.99620927404612303;
	setAttr ".wl[809].w[25]" 0.0037907259538769722;
	setAttr -s 2 ".wl[810].w";
	setAttr ".wl[810].w[22]" 0.73916596174240112;
	setAttr ".wl[810].w[25]" 0.26083403825759888;
	setAttr -s 2 ".wl[811].w";
	setAttr ".wl[811].w[22]" 0.99925591971259564;
	setAttr ".wl[811].w[25]" 0.00074408028740435839;
	setAttr -s 2 ".wl[812].w[21:22]"  0.48631852865219116 0.51368147134780884;
	setAttr -s 2 ".wl[813].w[19:20]"  0.42104287384207556 0.5789571261579245;
	setAttr -s 2 ".wl[814].w[19:20]"  0.41338984595636102 0.58661015404363892;
	setAttr -s 2 ".wl[815].w[19:20]"  0.38169918840146733 0.61830081159853267;
	setAttr -s 2 ".wl[816].w[19:20]"  0.32374546792418346 0.67625453207581654;
	setAttr -s 2 ".wl[817].w[19:20]"  0.32374548813872828 0.67625451186127172;
	setAttr -s 2 ".wl[818].w[19:20]"  0.38169920081387992 0.61830079918612002;
	setAttr -s 2 ".wl[819].w[19:20]"  0.41338981166327232 0.58661018833672773;
	setAttr -s 2 ".wl[820].w[19:20]"  0.42104285590243401 0.57895714409756593;
	setAttr -s 2 ".wl[821].w[19:20]"  0.41848128764735987 0.58151871235264008;
	setAttr -s 2 ".wl[822].w[19:20]"  0.41848129137981921 0.58151870862018074;
	setAttr -s 2 ".wl[823].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[824].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[825].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[826].w";
	setAttr ".wl[826].w[22]" 0.96303354203701019;
	setAttr ".wl[826].w[25]" 0.036966457962989807;
	setAttr -s 2 ".wl[827].w";
	setAttr ".wl[827].w[22]" 0.999997489361931;
	setAttr ".wl[827].w[25]" 2.5106380689976504e-006;
	setAttr -s 2 ".wl[828].w[21:22]"  0.566048264503479 0.433951735496521;
	setAttr -s 2 ".wl[829].w";
	setAttr ".wl[829].w[22]" 0.99956160192959942;
	setAttr ".wl[829].w[25]" 0.00043839807040058076;
	setAttr -s 2 ".wl[830].w[21:22]"  0.48589893306380516 0.51410106693619495;
	setAttr -s 2 ".wl[831].w[21:22]"  0.54697679561072621 0.45302320438927379;
	setAttr -s 2 ".wl[832].w[21:22]"  0.24810665186819816 0.75189334813180186;
	setAttr -s 2 ".wl[833].w[21:22]"  0.49789293941736168 0.50210706058263832;
	setAttr -s 2 ".wl[834].w[21:22]"  0.50471063588016662 0.49528936411983343;
	setAttr -s 2 ".wl[835].w";
	setAttr ".wl[835].w[22]" 0.55583232641220093;
	setAttr ".wl[835].w[25]" 0.44416767358779907;
	setAttr -s 2 ".wl[836].w";
	setAttr ".wl[836].w[22]" 0.88743357360363007;
	setAttr ".wl[836].w[25]" 0.11256642639636993;
	setAttr -s 2 ".wl[837].w";
	setAttr ".wl[837].w[22]" 0.72156864404678345;
	setAttr ".wl[837].w[26]" 0.27843135595321655;
	setAttr -s 2 ".wl[838].w";
	setAttr ".wl[838].w[22]" 0.97436261735856533;
	setAttr ".wl[838].w[25]" 0.025637382641434669;
	setAttr -s 2 ".wl[839].w[25:26]"  0.90811437368392944 0.091885626316070557;
	setAttr -s 2 ".wl[840].w[25:26]"  0.6059529408890747 0.3940470591109253;
	setAttr -s 2 ".wl[841].w[25:26]"  0.54567215948207481 0.45432784051792524;
	setAttr -s 2 ".wl[842].w[25:26]"  0.30892790227214068 0.69107209772785927;
	setAttr -s 2 ".wl[843].w";
	setAttr ".wl[843].w[22]" 0.83429373195902401;
	setAttr ".wl[843].w[25]" 0.16570626804097602;
	setAttr -s 2 ".wl[844].w[25:26]"  0.4174359142780304 0.5825640857219696;
	setAttr -s 2 ".wl[845].w[25:26]"  0.25992976492040498 0.74007023507959502;
	setAttr -s 2 ".wl[846].w[25:26]"  0.56760820584956395 0.43239179415043599;
	setAttr -s 2 ".wl[847].w[25:26]"  0.15953384339809418 0.84046615660190582;
	setAttr -s 2 ".wl[848].w[25:26]"  0.259798123684501 0.74020187631549905;
	setAttr -s 2 ".wl[849].w[26:27]"  0.67369536723997336 0.32630463276002664;
	setAttr -s 2 ".wl[850].w[26:27]"  0.63534581763898001 0.36465418236101999;
	setAttr -s 2 ".wl[851].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[852].w[26:27]"  0.72511307994853524 0.2748869200514647;
	setAttr -s 2 ".wl[853].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[854].w[26:27]"  0.69696840204186183 0.30303159795813822;
	setAttr -s 2 ".wl[855].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[856].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[857].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[858].w[23:24]"  0.99625737179218665 0.0037426282078133876;
	setAttr -s 2 ".wl[859].w[23:24]"  0.99923415969311469 0.00076584030688526595;
	setAttr -s 3 ".wl[860].w";
	setAttr ".wl[860].w[22]" 0.07110058243622977;
	setAttr ".wl[860].w[23]" 0.92869998934380704;
	setAttr ".wl[860].w[25]" 0.00019942821996312682;
	setAttr -s 2 ".wl[861].w[22:23]"  0.54541756149116161 0.45458243850883839;
	setAttr -s 2 ".wl[862].w[22:23]"  0.2210901466514599 0.77890985334854024;
	setAttr -s 2 ".wl[863].w[22:23]"  0.55316109339497177 0.44683890663413206;
	setAttr -s 2 ".wl[864].w[22:23]"  0.49945385436473322 0.50054614563526678;
	setAttr -s 2 ".wl[865].w";
	setAttr ".wl[865].w[0]" 0.0014670427541350814;
	setAttr ".wl[865].w[23]" 0.99853295724586499;
	setAttr -s 2 ".wl[866].w[23:24]"  0.99733107930803677 0.0026689206919632796;
	setAttr -s 3 ".wl[867].w[22:24]"  2.4311280546105096e-005 0.99966734202825092 
		0.00030834669120292208;
	setAttr -s 2 ".wl[868].w[22:23]"  0.00083365990604158328 0.99916634009395844;
	setAttr -s 2 ".wl[869].w[22:23]"  0.018230865706109309 0.98176913429389068;
	setAttr -s 3 ".wl[870].w";
	setAttr ".wl[870].w[23]" 0.99999694398397099;
	setAttr ".wl[870].w[24]" 2.9902978231563604e-006;
	setAttr ".wl[870].w[26]" 6.5718205914771134e-008;
	setAttr -s 2 ".wl[871].w";
	setAttr ".wl[871].w[23]" 0.99964425801033485;
	setAttr ".wl[871].w[26]" 0.00035574198966514814;
	setAttr -s 4 ".wl[872].w";
	setAttr ".wl[872].w[22]" 0.10607776019856552;
	setAttr ".wl[872].w[23]" 0.87863698632956355;
	setAttr ".wl[872].w[25]" 2.2780841349471388e-006;
	setAttr ".wl[872].w[26]" 0.015282975387735992;
	setAttr -s 2 ".wl[873].w[23:24]"  0.99656090980788348 0.0034390901921164787;
	setAttr -s 2 ".wl[874].w[23:24]"  0.99785924098818857 0.0021407590118113344;
	setAttr -s 3 ".wl[875].w";
	setAttr ".wl[875].w[22]" 1.8674164178318556e-008;
	setAttr ".wl[875].w[23]" 0.99999993624955286;
	setAttr ".wl[875].w[25]" 4.5076283004073415e-008;
	setAttr -s 4 ".wl[876].w";
	setAttr ".wl[876].w[21]" 0.00024430185403126605;
	setAttr ".wl[876].w[22]" 0.26456674734859725;
	setAttr ".wl[876].w[23]" 0.73513141373648183;
	setAttr ".wl[876].w[26]" 5.7537060889665273e-005;
	setAttr -s 2 ".wl[877].w[23:24]"  0.99996507004701229 3.4929952987735902e-005;
	setAttr -s 2 ".wl[878].w[23:24]"  0.99955788334711793 0.00044211665288217833;
	setAttr -s 2 ".wl[879].w[22:23]"  0.1550616810416669 0.84493831895833316;
	setAttr -s 2 ".wl[880].w[20:21]"  0.99956496711276399 0.00043503288723605732;
	setAttr ".wl[881].w[21]"  1;
	setAttr -s 2 ".wl[882].w[20:21]"  0.0012779627554519793 0.998722037244548;
	setAttr ".wl[883].w[20]"  1;
	setAttr ".wl[884].w[21]"  1;
	setAttr ".wl[885].w[20]"  1;
	setAttr ".wl[886].w[21]"  1;
	setAttr ".wl[887].w[20]"  1;
	setAttr ".wl[888].w[21]"  1;
	setAttr ".wl[889].w[20]"  1;
	setAttr ".wl[890].w[21]"  1;
	setAttr ".wl[891].w[20]"  1;
	setAttr -s 2 ".wl[892].w[20:21]"  0.0025300787563567254 0.99746992124364331;
	setAttr ".wl[893].w[20]"  1;
	setAttr -s 2 ".wl[894].w[20:21]"  0.0040890420167833189 0.99591095798321672;
	setAttr ".wl[895].w[20]"  1;
	setAttr -s 2 ".wl[896].w[20:21]"  0.0029048575437177551 0.99709514245628228;
	setAttr ".wl[897].w[20]"  1;
	setAttr -s 2 ".wl[898].w[20:21]"  0.0009751571905372361 0.9990248428094628;
	setAttr ".wl[899].w[20]"  1;
	setAttr -s 2 ".wl[900].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[901].w";
	setAttr ".wl[901].w[22]" 0.99306929111480713;
	setAttr ".wl[901].w[25]" 0.0069307088851928711;
	setAttr -s 2 ".wl[902].w[21:22]"  0.49375951290130615 0.50624048709869385;
	setAttr -s 2 ".wl[903].w[21:22]"  0.53375339508056641 0.46624660491943359;
	setAttr -s 2 ".wl[904].w[21:22]"  0.49511681727903739 0.50488318272096255;
	setAttr -s 2 ".wl[905].w[21:22]"  0.53250875258192609 0.46749124741807391;
	setAttr -s 2 ".wl[906].w[21:22]"  0.4988110179363428 0.50118898206365725;
	setAttr -s 2 ".wl[907].w";
	setAttr ".wl[907].w[22]" 0.82834887504577637;
	setAttr ".wl[907].w[25]" 0.17165112495422363;
	setAttr -s 2 ".wl[908].w";
	setAttr ".wl[908].w[22]" 0.96930554509162903;
	setAttr ".wl[908].w[25]" 0.030694454908370972;
	setAttr -s 2 ".wl[909].w";
	setAttr ".wl[909].w[22]" 0.66274511814117432;
	setAttr ".wl[909].w[26]" 0.33725488185882568;
	setAttr -s 2 ".wl[910].w[25:26]"  0.59107352178774542 0.40892647821225453;
	setAttr -s 2 ".wl[911].w[25:26]"  0.41458418965339661 0.58541581034660339;
	setAttr -s 2 ".wl[912].w[25:26]"  0.65895724296569824 0.34104275703430176;
	setAttr -s 2 ".wl[913].w[25:26]"  0.61817631925354233 0.38182368074645773;
	setAttr -s 2 ".wl[914].w[26:27]"  0.66587666819894431 0.33412333180105563;
	setAttr -s 2 ".wl[915].w[26:27]"  0.67415176682659805 0.32584823317340189;
	setAttr -s 2 ".wl[916].w[26:27]"  0.73079864754268842 0.26920135245731164;
	setAttr -s 2 ".wl[917].w[26:27]"  0.71683293382389135 0.28316706617610865;
	setAttr -s 2 ".wl[918].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[919].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[920].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[921].w[21:22]"  0.022308318542349253 0.97769168145765084;
	setAttr -s 2 ".wl[922].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[923].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[924].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[925].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[926].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[927].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[928].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[929].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[930].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[931].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[932].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[933].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[934].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[935].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[936].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[937].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[938].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[939].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[940].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[941].w[21:22]"  0.7 0.3;
	setAttr -s 2 ".wl[942].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[943].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[944].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[945].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[946].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[947].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[948].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[949].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[950].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[951].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[952].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[953].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[954].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[955].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[956].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[957].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[958].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[959].w[21:22]"  0.5 0.5;
	setAttr -s 2 ".wl[960].w[21:22]"  0.50000003084167588 0.49999996915832412;
	setAttr -s 2 ".wl[961].w[21:22]"  0.50000003940906801 0.49999996059093199;
	setAttr -s 2 ".wl[962].w[7:8]"  2.6226043701171875e-006 0.99999737739562988;
	setAttr -s 2 ".wl[963].w[7:8]"  6.4253807067871094e-005 0.99993574619293213;
	setAttr ".wl[964].w[8]"  1;
	setAttr -s 2 ".wl[965].w[8:9]"  0.99999833106994629 1.6689300537109375e-006;
	setAttr ".wl[966].w[8]"  1;
	setAttr ".wl[967].w[8]"  1;
	setAttr -s 2 ".wl[968].w[7:8]"  7.7486038208007813e-007 0.99999922513961792;
	setAttr -s 2 ".wl[969].w[7:8]"  3.3974647521972656e-006 0.9999966025352478;
	setAttr -s 2 ".wl[970].w[7:8]"  1.2934207916259766e-005 0.99998706579208374;
	setAttr -s 2 ".wl[971].w[7:8]"  0.00043708086013793945 0.99956291913986206;
	setAttr ".wl[972].w[8]"  1;
	setAttr ".wl[973].w[8]"  1;
	setAttr ".wl[974].w[8]"  1;
	setAttr ".wl[975].w[8]"  1;
	setAttr ".wl[976].w[8]"  1;
	setAttr ".wl[977].w[8]"  1;
	setAttr ".wl[978].w[8]"  1;
	setAttr ".wl[979].w[8]"  1;
	setAttr -s 2 ".wl[980].w[8:9]"  0.99999934434890747 6.5565109252929688e-007;
	setAttr -s 2 ".wl[981].w[8:9]"  0.99999511241912842 4.8875808715820313e-006;
	setAttr -s 2 ".wl[982].w[8:9]"  0.99998953057183826 1.0469428161741234e-005;
	setAttr -s 2 ".wl[983].w[8:9]"  0.99995415483863326 4.5845161366742104e-005;
	setAttr -s 2 ".wl[984].w[8:9]"  0.99993797214847291 6.2027851527091116e-005;
	setAttr -s 2 ".wl[985].w[8:9]"  0.99999383695831057 6.1630416894331574e-006;
	setAttr -s 2 ".wl[986].w[8:9]"  0.99979549588169903 0.00020450411830097437;
	setAttr -s 2 ".wl[987].w[8:9]"  0.99990341904776869 9.6580952231306583e-005;
	setAttr -s 2 ".wl[988].w[7:8]"  8.0287456512451172e-005 0.99991971254348755;
	setAttr -s 2 ".wl[989].w[7:8]"  4.1961669921875e-005 0.99995803833007813;
	setAttr -s 2 ".wl[990].w[7:8]"  4.6014785766601563e-005 0.9999539852142334;
	setAttr -s 2 ".wl[991].w[7:8]"  0.00011283159255981445 0.99988716840744019;
	setAttr -s 2 ".wl[992].w[7:8]"  0.0028685331344604492 0.99713146686553955;
	setAttr -s 2 ".wl[993].w[7:8]"  0.0039184689521789551 0.99608153104782104;
	setAttr -s 2 ".wl[994].w[7:8]"  0.0025820732116699219 0.99741792678833008;
	setAttr -s 2 ".wl[995].w[7:8]"  0.0013118386268615723 0.99868816137313843;
	setAttr -s 2 ".wl[996].w[7:8]"  0.0021024942398071289 0.99789750576019287;
	setAttr -s 2 ".wl[997].w[7:8]"  0.0017631649971008301 0.99823683500289917;
	setAttr -s 2 ".wl[998].w[7:8]"  0.0033450126647949219 0.99665498733520508;
	setAttr -s 2 ".wl[999].w[7:8]"  0.0034552216529846191 0.99654477834701538;
	setAttr -s 2 ".wl[1000].w[7:8]"  2.384185791015625e-007 0.9999997615814209;
	setAttr -s 2 ".wl[1001].w[7:8]"  5.3644180297851563e-007 0.99999946355819702;
	setAttr ".wl[1002].w[8]"  1;
	setAttr ".wl[1003].w[8]"  1;
	setAttr -s 2 ".wl[1004].w[7:8]"  3.9339065551757813e-006 0.99999606609344482;
	setAttr -s 2 ".wl[1005].w[7:8]"  2.2530555725097656e-005 0.9999774694442749;
	setAttr ".wl[1006].w[8]"  1;
	setAttr ".wl[1007].w[8]"  1;
	setAttr ".wl[1008].w[8]"  1;
	setAttr -s 2 ".wl[1009].w[8:9]"  0.99999737739562988 2.6226043701171875e-006;
	setAttr -s 2 ".wl[1010].w[8:9]"  0.99990999691362958 9.0003086370415986e-005;
	setAttr -s 2 ".wl[1011].w[8:9]"  0.9997737281373702 0.00022627186262980103;
	setAttr -s 2 ".wl[1012].w[8:9]"  0.99951845407485962 0.00048154592514038086;
	setAttr ".wl[1013].w[8]"  1;
	setAttr -s 2 ".wl[1014].w";
	setAttr ".wl[1014].w[8]" 0.99934720993041992;
	setAttr ".wl[1014].w[19]" 0.00065279006958007813;
	setAttr -s 2 ".wl[1015].w";
	setAttr ".wl[1015].w[8]" 0.99205660820007324;
	setAttr ".wl[1015].w[19]" 0.0079433917999267578;
	setAttr -s 2 ".wl[1016].w";
	setAttr ".wl[1016].w[8]" 0.99374568462371826;
	setAttr ".wl[1016].w[19]" 0.0062543153762817383;
	setAttr -s 2 ".wl[1017].w";
	setAttr ".wl[1017].w[8]" 0.98711144924163818;
	setAttr ".wl[1017].w[19]" 0.012888550758361816;
	setAttr -s 2 ".wl[1018].w";
	setAttr ".wl[1018].w[8]" 0.99990618228912354;
	setAttr ".wl[1018].w[19]" 9.3817710876464844e-005;
	setAttr -s 2 ".wl[1019].w[8:9]"  0.99994687151411199 5.3128485888009891e-005;
	setAttr -s 2 ".wl[1020].w[8:9]"  0.99986982217524201 0.00013017782475799322;
	setAttr -s 2 ".wl[1021].w[8:9]"  0.99961038853507489 0.00038961146492511034;
	setAttr ".wl[1022].w[8]"  1;
	setAttr ".wl[1023].w[8]"  1;
	setAttr ".wl[1024].w[8]"  1;
	setAttr ".wl[1025].w[8]"  1;
	setAttr ".wl[1026].w[8]"  1;
	setAttr ".wl[1027].w[8]"  1;
	setAttr -s 2 ".wl[1028].w";
	setAttr ".wl[1028].w[8]" 0.99925994873046875;
	setAttr ".wl[1028].w[19]" 0.00074005126953125;
	setAttr -s 2 ".wl[1029].w[8:9]"  0.99966853857040405 0.00033146142959594727;
	setAttr -s 2 ".wl[1030].w";
	setAttr ".wl[1030].w[8]" 0.99783176183700562;
	setAttr ".wl[1030].w[19]" 0.0021682381629943848;
	setAttr ".wl[1031].w[8]"  0.99999999997757971;
	setAttr -s 2 ".wl[1032].w";
	setAttr ".wl[1032].w[8]" 0.99998074769973755;
	setAttr ".wl[1032].w[19]" 1.9252300262451172e-005;
	setAttr ".wl[1033].w[8]"  1;
	setAttr ".wl[1034].w[8]"  1;
	setAttr ".wl[1035].w[8]"  1;
	setAttr ".wl[1036].w[8]"  0.99999999999399425;
	setAttr ".wl[1037].w[8]"  1;
	setAttr ".wl[1038].w[8]"  1;
	setAttr ".wl[1039].w[8]"  1;
	setAttr ".wl[1040].w[8]"  1;
	setAttr ".wl[1041].w[8]"  1;
	setAttr -s 2 ".wl[1042].w";
	setAttr ".wl[1042].w[8]" 0.997780442237854;
	setAttr ".wl[1042].w[19]" 0.0022195577621459961;
	setAttr -s 2 ".wl[1043].w";
	setAttr ".wl[1043].w[8]" 0.99888098239898682;
	setAttr ".wl[1043].w[19]" 0.0011190176010131836;
	setAttr -s 2 ".wl[1044].w";
	setAttr ".wl[1044].w[8]" 0.99992525577545166;
	setAttr ".wl[1044].w[19]" 7.4744224548339844e-005;
	setAttr -s 2 ".wl[1045].w";
	setAttr ".wl[1045].w[8]" 0.99997717142105103;
	setAttr ".wl[1045].w[19]" 2.2828578948974609e-005;
	setAttr -s 2 ".wl[1046].w";
	setAttr ".wl[1046].w[8]" 0.99999833106994629;
	setAttr ".wl[1046].w[20]" 1.6689300537109375e-006;
	setAttr ".wl[1047].w[8]"  1;
	setAttr ".wl[1048].w[8]"  1;
	setAttr -s 2 ".wl[1049].w[8:9]"  0.99936962127685547 0.00063037872314453125;
	setAttr -s 2 ".wl[1050].w[8:9]"  0.99998366832733154 1.6331672668457031e-005;
	setAttr -s 2 ".wl[1051].w[8:9]"  0.99999892711639404 1.0728836059570313e-006;
	setAttr ".wl[1052].w[8]"  1;
	setAttr ".wl[1053].w[8]"  1;
	setAttr ".wl[1054].w[8]"  1;
	setAttr ".wl[1055].w[8]"  1;
	setAttr -s 2 ".wl[1056].w";
	setAttr ".wl[1056].w[8]" 0.99994432926177979;
	setAttr ".wl[1056].w[19]" 5.5670738220214844e-005;
	setAttr -s 2 ".wl[1057].w";
	setAttr ".wl[1057].w[8]" 0.99999994039535522;
	setAttr ".wl[1057].w[19]" 5.9604644775390625e-008;
	setAttr ".wl[1058].w[8]"  1;
	setAttr -s 2 ".wl[1059].w[7:8]"  5.3644180297851563e-007 0.99999946355819702;
	setAttr -s 2 ".wl[1060].w[7:8]"  1.1324882507324219e-006 0.99999886751174927;
	setAttr -s 2 ".wl[1061].w";
	setAttr ".wl[1061].w[8]" 0.9999997615814209;
	setAttr ".wl[1061].w[19]" 2.384185791015625e-007;
	setAttr -s 2 ".wl[1062].w";
	setAttr ".wl[1062].w[8]" 0.99999898672103882;
	setAttr ".wl[1062].w[19]" 1.0132789611816406e-006;
	setAttr -s 2 ".wl[1063].w";
	setAttr ".wl[1063].w[8]" 0.99999439716339111;
	setAttr ".wl[1063].w[19]" 5.6028366088867188e-006;
	setAttr -s 2 ".wl[1064].w";
	setAttr ".wl[1064].w[8]" 0.99973535537719727;
	setAttr ".wl[1064].w[19]" 0.00026464462280273438;
	setAttr -s 2 ".wl[1065].w";
	setAttr ".wl[1065].w[8]" 0.99986720085144043;
	setAttr ".wl[1065].w[19]" 0.00013279914855957031;
	setAttr -s 2 ".wl[1066].w";
	setAttr ".wl[1066].w[8]" 0.99120557308197021;
	setAttr ".wl[1066].w[19]" 0.0087944269180297852;
	setAttr -s 2 ".wl[1067].w";
	setAttr ".wl[1067].w[8]" 0.99337732791900635;
	setAttr ".wl[1067].w[19]" 0.0066226720809936523;
	setAttr -s 2 ".wl[1068].w[8:9]"  0.99866092205047607 0.0013390779495239258;
	setAttr -s 2 ".wl[1069].w[8:9]"  0.99877864122390747 0.0012213587760925293;
	setAttr -s 2 ".wl[1070].w[7:8]"  2.6226043701171875e-006 0.99999737739562988;
	setAttr ".wl[1071].w[8]"  1;
	setAttr ".wl[1072].w[8]"  1;
	setAttr -s 2 ".wl[1073].w[7:8]"  7.7486038208007813e-007 0.99999922513961792;
	setAttr -s 2 ".wl[1074].w[7:8]"  1.2934207916259766e-005 0.99998706579208374;
	setAttr ".wl[1075].w[8]"  1;
	setAttr ".wl[1076].w[8]"  1;
	setAttr ".wl[1077].w[8]"  1;
	setAttr ".wl[1078].w[8]"  1;
	setAttr -s 2 ".wl[1079].w[8:9]"  0.99999511241912842 4.8875808715820313e-006;
	setAttr -s 2 ".wl[1080].w[8:9]"  0.99995415483863326 4.5845161366742104e-005;
	setAttr -s 2 ".wl[1081].w[8:9]"  0.99993797214847291 6.2027851527091116e-005;
	setAttr -s 2 ".wl[1082].w[8:9]"  0.99979549588169903 0.00020450411830097437;
	setAttr -s 2 ".wl[1083].w[7:8]"  4.1961669921875e-005 0.99995803833007813;
	setAttr -s 2 ".wl[1084].w[7:8]"  4.6014785766601563e-005 0.9999539852142334;
	setAttr -s 2 ".wl[1085].w[7:8]"  0.0039184689521789551 0.99608153104782104;
	setAttr -s 2 ".wl[1086].w[7:8]"  0.0025820732116699219 0.99741792678833008;
	setAttr -s 2 ".wl[1087].w[7:8]"  0.0021024942398071289 0.99789750576019287;
	setAttr -s 2 ".wl[1088].w[7:8]"  0.0033450126647949219 0.99665498733520508;
	setAttr -s 2 ".wl[1089].w[7:8]"  2.384185791015625e-007 0.9999997615814209;
	setAttr -s 2 ".wl[1090].w[7:8]"  5.3644180297851563e-007 0.99999946355819702;
	setAttr ".wl[1091].w[8]"  1;
	setAttr ".wl[1092].w[8]"  1;
	setAttr -s 2 ".wl[1093].w[7:8]"  3.9339065551757813e-006 0.99999606609344482;
	setAttr -s 2 ".wl[1094].w[7:8]"  2.2530555725097656e-005 0.9999774694442749;
	setAttr ".wl[1095].w[8]"  1;
	setAttr ".wl[1096].w[8]"  1;
	setAttr ".wl[1097].w[8]"  1;
	setAttr -s 2 ".wl[1098].w[8:9]"  0.99999737739562988 2.6226043701171875e-006;
	setAttr -s 2 ".wl[1099].w[8:9]"  0.99990999691362958 9.0003086370415986e-005;
	setAttr -s 2 ".wl[1100].w[8:9]"  0.9997737281373702 0.00022627186262980103;
	setAttr -s 2 ".wl[1101].w[8:9]"  0.99951845407485962 0.00048154592514038086;
	setAttr ".wl[1102].w[8]"  1;
	setAttr -s 2 ".wl[1103].w";
	setAttr ".wl[1103].w[8]" 0.99934720993041992;
	setAttr ".wl[1103].w[10]" 0.00065279006958007813;
	setAttr -s 2 ".wl[1104].w";
	setAttr ".wl[1104].w[8]" 0.99205660820007324;
	setAttr ".wl[1104].w[10]" 0.0079433917999267578;
	setAttr -s 2 ".wl[1105].w";
	setAttr ".wl[1105].w[8]" 0.99374568462371826;
	setAttr ".wl[1105].w[10]" 0.0062543153762817383;
	setAttr -s 2 ".wl[1106].w";
	setAttr ".wl[1106].w[8]" 0.98711144924163818;
	setAttr ".wl[1106].w[10]" 0.012888550758361816;
	setAttr -s 2 ".wl[1107].w";
	setAttr ".wl[1107].w[8]" 0.99990618228912354;
	setAttr ".wl[1107].w[10]" 9.3817710876464844e-005;
	setAttr -s 2 ".wl[1108].w[8:9]"  0.99986982217524201 0.00013017782475799322;
	setAttr -s 2 ".wl[1109].w[8:9]"  0.99961038853507489 0.00038961146492511034;
	setAttr ".wl[1110].w[8]"  1;
	setAttr ".wl[1111].w[8]"  1;
	setAttr ".wl[1112].w[8]"  1;
	setAttr ".wl[1113].w[8]"  1;
	setAttr ".wl[1114].w[8]"  1;
	setAttr ".wl[1115].w[8]"  1;
	setAttr -s 2 ".wl[1116].w";
	setAttr ".wl[1116].w[8]" 0.99925994873046875;
	setAttr ".wl[1116].w[10]" 0.00074005126953125;
	setAttr -s 2 ".wl[1117].w[8:9]"  0.99966853857040405 0.00033146142959594727;
	setAttr -s 2 ".wl[1118].w";
	setAttr ".wl[1118].w[8]" 0.99783176183700562;
	setAttr ".wl[1118].w[10]" 0.0021682381629943848;
	setAttr -s 2 ".wl[1119].w";
	setAttr ".wl[1119].w[8]" 0.99999999997757971;
	setAttr ".wl[1119].w[11]" 2.242024101095641e-011;
	setAttr -s 2 ".wl[1120].w";
	setAttr ".wl[1120].w[8]" 0.99998074769973755;
	setAttr ".wl[1120].w[10]" 1.9252300262451172e-005;
	setAttr ".wl[1121].w[8]"  1;
	setAttr ".wl[1122].w[8]"  1;
	setAttr ".wl[1123].w[8]"  1;
	setAttr -s 2 ".wl[1124].w";
	setAttr ".wl[1124].w[8]" 0.99999999999399425;
	setAttr ".wl[1124].w[11]" 6.0057935187540767e-012;
	setAttr ".wl[1125].w[8]"  1;
	setAttr ".wl[1126].w[8]"  1;
	setAttr ".wl[1127].w[8]"  1;
	setAttr ".wl[1128].w[8]"  1;
	setAttr ".wl[1129].w[8]"  1;
	setAttr -s 2 ".wl[1130].w";
	setAttr ".wl[1130].w[8]" 0.997780442237854;
	setAttr ".wl[1130].w[10]" 0.0022195577621459961;
	setAttr -s 2 ".wl[1131].w";
	setAttr ".wl[1131].w[8]" 0.99888098239898682;
	setAttr ".wl[1131].w[10]" 0.0011190176010131836;
	setAttr -s 2 ".wl[1132].w";
	setAttr ".wl[1132].w[8]" 0.99992525577545166;
	setAttr ".wl[1132].w[10]" 7.4744224548339844e-005;
	setAttr -s 2 ".wl[1133].w";
	setAttr ".wl[1133].w[8]" 0.99997717142105103;
	setAttr ".wl[1133].w[10]" 2.2828578948974609e-005;
	setAttr -s 2 ".wl[1134].w";
	setAttr ".wl[1134].w[8]" 0.99999833106994629;
	setAttr ".wl[1134].w[11]" 1.6689300537109375e-006;
	setAttr ".wl[1135].w[8]"  1;
	setAttr ".wl[1136].w[8]"  1;
	setAttr -s 2 ".wl[1137].w[8:9]"  0.99936962127685547 0.00063037872314453125;
	setAttr -s 2 ".wl[1138].w[8:9]"  0.99998366832733154 1.6331672668457031e-005;
	setAttr -s 2 ".wl[1139].w[8:9]"  0.99999892711639404 1.0728836059570313e-006;
	setAttr ".wl[1140].w[8]"  1;
	setAttr ".wl[1141].w[8]"  1;
	setAttr ".wl[1142].w[8]"  1;
	setAttr ".wl[1143].w[8]"  1;
	setAttr -s 2 ".wl[1144].w";
	setAttr ".wl[1144].w[8]" 0.99994432926177979;
	setAttr ".wl[1144].w[10]" 5.5670738220214844e-005;
	setAttr -s 2 ".wl[1145].w";
	setAttr ".wl[1145].w[8]" 0.99999994039535522;
	setAttr ".wl[1145].w[10]" 5.9604644775390625e-008;
	setAttr -s 2 ".wl[1146].w[7:8]"  5.3644180297851563e-007 0.99999946355819702;
	setAttr -s 2 ".wl[1147].w[7:8]"  1.1324882507324219e-006 0.99999886751174927;
	setAttr -s 2 ".wl[1148].w";
	setAttr ".wl[1148].w[8]" 0.9999997615814209;
	setAttr ".wl[1148].w[10]" 2.384185791015625e-007;
	setAttr -s 2 ".wl[1149].w";
	setAttr ".wl[1149].w[8]" 0.99999898672103882;
	setAttr ".wl[1149].w[10]" 1.0132789611816406e-006;
	setAttr -s 2 ".wl[1150].w";
	setAttr ".wl[1150].w[8]" 0.99999439716339111;
	setAttr ".wl[1150].w[10]" 5.6028366088867188e-006;
	setAttr -s 2 ".wl[1151].w";
	setAttr ".wl[1151].w[8]" 0.99973535537719727;
	setAttr ".wl[1151].w[10]" 0.00026464462280273438;
	setAttr -s 2 ".wl[1152].w";
	setAttr ".wl[1152].w[8]" 0.99986720085144043;
	setAttr ".wl[1152].w[10]" 0.00013279914855957031;
	setAttr -s 2 ".wl[1153].w";
	setAttr ".wl[1153].w[8]" 0.99120557308197021;
	setAttr ".wl[1153].w[10]" 0.0087944269180297852;
	setAttr -s 2 ".wl[1154].w";
	setAttr ".wl[1154].w[8]" 0.99337732791900635;
	setAttr ".wl[1154].w[10]" 0.0066226720809936523;
	setAttr -s 2 ".wl[1155].w[8:9]"  0.99866092205047607 0.0013390779495239258;
	setAttr -s 2 ".wl[1156].w[8:9]"  0.99877864122390747 0.0012213587760925293;
	setAttr -s 2 ".wl[1157].w[8:9]"  0.99998557567596436 1.4424324035644531e-005;
	setAttr -s 2 ".wl[1158].w[8:9]"  0.99986213445663452 0.00013786554336547852;
	setAttr ".wl[1159].w[8]"  1;
	setAttr -s 2 ".wl[1160].w[8:9]"  0.99972319602966309 0.00027680397033691406;
	setAttr -s 2 ".wl[1161].w[8:9]"  0.99999725818634033 2.7418136596679688e-006;
	setAttr -s 2 ".wl[1162].w[8:9]"  0.99215686321258545 0.0078431367874145508;
	setAttr -s 2 ".wl[1163].w[8:9]"  0.99999547004699707 4.5299530029296875e-006;
	setAttr ".wl[1164].w[8]"  1;
	setAttr -s 2 ".wl[1165].w[8:9]"  0.99625861644744873 0.0037413835525512695;
	setAttr -s 2 ".wl[1166].w[8:9]"  0.99996358156204224 3.6418437957763672e-005;
	setAttr ".wl[1167].w[8]"  1;
	setAttr -s 2 ".wl[1168].w[8:9]"  0.9941176176071167 0.0058823823928833008;
	setAttr -s 2 ".wl[1169].w[8:9]"  0.99999988079071045 1.1920928955078125e-007;
	setAttr ".wl[1170].w[8]"  1;
	setAttr -s 2 ".wl[1171].w[8:9]"  0.98823529481887817 0.011764705181121826;
	setAttr -s 2 ".wl[1172].w[8:9]"  0.99999701976776123 2.9802322387695313e-006;
	setAttr ".wl[1173].w[8]"  1;
	setAttr -s 2 ".wl[1174].w[8:9]"  0.99804157006910466 0.0019584299308952921;
	setAttr -s 2 ".wl[1175].w[8:9]"  0.99999916553497314 8.3446502685546875e-007;
	setAttr -s 2 ".wl[1176].w[8:9]"  0.99821329116821289 0.0017867088317871094;
	setAttr -s 2 ".wl[1177].w[8:9]"  0.99998480081558228 1.5199184417724609e-005;
	setAttr -s 2 ".wl[1178].w[8:9]"  0.99999439716339111 5.6028366088867188e-006;
	setAttr -s 2 ".wl[1179].w[8:9]"  0.99999940395355225 5.9604644775390625e-007;
	setAttr -s 2 ".wl[1180].w[8:9]"  0.99964165687561035 0.00035834312438964844;
	setAttr -s 2 ".wl[1181].w[8:9]"  0.99978154897689819 0.00021845102310180664;
	setAttr -s 2 ".wl[1182].w[8:9]"  0.99991339445114136 8.6605548858642578e-005;
	setAttr -s 2 ".wl[1183].w[8:9]"  0.99993544816970825 6.4551830291748047e-005;
	setAttr ".wl[1184].w[8]"  1;
	setAttr ".wl[1185].w[8]"  1;
	setAttr ".wl[1186].w[8]"  1;
	setAttr -s 2 ".wl[1187].w[8:9]"  0.99215686321258545 0.0078431367874145508;
	setAttr -s 2 ".wl[1188].w[8:9]"  0.9980589747428894 0.0019410252571105957;
	setAttr -s 2 ".wl[1189].w[8:9]"  0.99625927209854126 0.0037407279014587402;
	setAttr -s 2 ".wl[1190].w[8:9]"  0.99997085332870483 2.9146671295166016e-005;
	setAttr ".wl[1191].w[8]"  1;
	setAttr -s 2 ".wl[1192].w[8:9]"  0.9941176176071167 0.0058823823928833008;
	setAttr ".wl[1193].w[8]"  1;
	setAttr -s 2 ".wl[1194].w[8:9]"  0.99999970197677612 2.9802322387695313e-007;
	setAttr -s 2 ".wl[1195].w[8:9]"  0.99999964237213135 3.5762786865234375e-007;
	setAttr ".wl[1196].w[8]"  1;
	setAttr ".wl[1197].w[8]"  1;
	setAttr -s 2 ".wl[1198].w[8:9]"  0.99985867738723755 0.00014132261276245117;
	setAttr ".wl[1199].w[8]"  1;
	setAttr -s 2 ".wl[1200].w[8:9]"  0.99996155500411987 3.8444995880126953e-005;
	setAttr -s 2 ".wl[1201].w[8:9]"  0.99999934434890747 6.5565109252929688e-007;
	setAttr -s 2 ".wl[1202].w[8:9]"  0.99994266033172607 5.7339668273925781e-005;
	setAttr ".wl[1203].w[8]"  1;
	setAttr -s 2 ".wl[1204].w[8:9]"  0.99215686321258545 0.0078431367874145508;
	setAttr -s 2 ".wl[1205].w[8:9]"  0.998058021068573 0.001941978931427002;
	setAttr -s 2 ".wl[1206].w[8:9]"  0.99998557567596436 1.4424324035644531e-005;
	setAttr -s 2 ".wl[1207].w[8:9]"  0.99986213445663452 0.00013786554336547852;
	setAttr ".wl[1208].w[8]"  1;
	setAttr -s 2 ".wl[1209].w[8:9]"  0.99972319602966309 0.00027680397033691406;
	setAttr -s 2 ".wl[1210].w[8:9]"  0.99999725818634033 2.7418136596679688e-006;
	setAttr -s 2 ".wl[1211].w[8:9]"  0.99215686321258545 0.0078431367874145508;
	setAttr -s 2 ".wl[1212].w[8:9]"  0.99999547004699707 4.5299530029296875e-006;
	setAttr ".wl[1213].w[8]"  1;
	setAttr -s 2 ".wl[1214].w[8:9]"  0.99625861644744873 0.0037413835525512695;
	setAttr -s 2 ".wl[1215].w[8:9]"  0.99996358156204224 3.6418437957763672e-005;
	setAttr ".wl[1216].w[8]"  1;
	setAttr -s 2 ".wl[1217].w[8:9]"  0.9941176176071167 0.0058823823928833008;
	setAttr -s 2 ".wl[1218].w[8:9]"  0.99999988079071045 1.1920928955078125e-007;
	setAttr ".wl[1219].w[8]"  1;
	setAttr -s 2 ".wl[1220].w[8:9]"  0.98823529481887817 0.011764705181121826;
	setAttr -s 2 ".wl[1221].w[8:9]"  0.99999701976776123 2.9802322387695313e-006;
	setAttr ".wl[1222].w[8]"  1;
	setAttr -s 2 ".wl[1223].w[8:9]"  0.99804157018661499 0.0019584298133850098;
	setAttr -s 2 ".wl[1224].w[8:9]"  0.99999916553497314 8.3446502685546875e-007;
	setAttr -s 2 ".wl[1225].w[8:9]"  0.99821329116821289 0.0017867088317871094;
	setAttr -s 2 ".wl[1226].w[8:9]"  0.99998480081558228 1.5199184417724609e-005;
	setAttr -s 2 ".wl[1227].w[8:9]"  0.99999439716339111 5.6028366088867188e-006;
	setAttr -s 2 ".wl[1228].w[8:9]"  0.99999940395355225 5.9604644775390625e-007;
	setAttr -s 2 ".wl[1229].w[8:9]"  0.99964165687561035 0.00035834312438964844;
	setAttr -s 2 ".wl[1230].w[8:9]"  0.99978154897689819 0.00021845102310180664;
	setAttr -s 2 ".wl[1231].w[8:9]"  0.99991339445114136 8.6605548858642578e-005;
	setAttr -s 2 ".wl[1232].w[8:9]"  0.99993544816970825 6.4551830291748047e-005;
	setAttr ".wl[1233].w[8]"  1;
	setAttr ".wl[1234].w[8]"  1;
	setAttr ".wl[1235].w[8]"  1;
	setAttr -s 2 ".wl[1236].w[8:9]"  0.99215686321258545 0.0078431367874145508;
	setAttr -s 2 ".wl[1237].w[8:9]"  0.9980589747428894 0.0019410252571105957;
	setAttr -s 2 ".wl[1238].w[8:9]"  0.99625927209854126 0.0037407279014587402;
	setAttr -s 2 ".wl[1239].w[8:9]"  0.99997085332870483 2.9146671295166016e-005;
	setAttr ".wl[1240].w[8]"  1;
	setAttr -s 2 ".wl[1241].w[8:9]"  0.9941176176071167 0.0058823823928833008;
	setAttr ".wl[1242].w[8]"  1;
	setAttr -s 2 ".wl[1243].w[8:9]"  0.99999970197677612 2.9802322387695313e-007;
	setAttr -s 2 ".wl[1244].w[8:9]"  0.99999964237213135 3.5762786865234375e-007;
	setAttr ".wl[1245].w[8]"  1;
	setAttr ".wl[1246].w[8]"  1;
	setAttr -s 2 ".wl[1247].w[8:9]"  0.99985867738723755 0.00014132261276245117;
	setAttr ".wl[1248].w[8]"  1;
	setAttr -s 2 ".wl[1249].w[8:9]"  0.99996155500411987 3.8444995880126953e-005;
	setAttr -s 2 ".wl[1250].w[8:9]"  0.99999934434890747 6.5565109252929688e-007;
	setAttr -s 2 ".wl[1251].w[8:9]"  0.99994266033172607 5.7339668273925781e-005;
	setAttr ".wl[1252].w[8]"  1;
	setAttr -s 2 ".wl[1253].w[8:9]"  0.99215686321258545 0.0078431367874145508;
	setAttr -s 2 ".wl[1254].w[8:9]"  0.998058021068573 0.001941978931427002;
	setAttr -s 2 ".wl[1255].w";
	setAttr ".wl[1255].w[8]" 0.97173845767974854;
	setAttr ".wl[1255].w[10]" 0.028261542320251465;
	setAttr -s 2 ".wl[1256].w[8:9]"  0.99995642900466919 4.3570995330810547e-005;
	setAttr ".wl[1257].w[8]"  1;
	setAttr ".wl[1258].w[8]"  1;
	setAttr ".wl[1259].w[8]"  1;
	setAttr -s 2 ".wl[1260].w[8:9]"  0.9999995231628418 4.76837158203125e-007;
	setAttr ".wl[1261].w[8]"  1;
	setAttr ".wl[1262].w[8]"  1;
	setAttr ".wl[1263].w[8]"  1;
	setAttr ".wl[1264].w[8]"  1;
	setAttr ".wl[1265].w[8]"  1;
	setAttr ".wl[1266].w[8]"  1;
	setAttr ".wl[1267].w[8]"  1;
	setAttr ".wl[1268].w[8]"  1;
	setAttr ".wl[1269].w[8]"  1;
	setAttr ".wl[1270].w[8]"  1;
	setAttr ".wl[1271].w[8]"  1;
	setAttr ".wl[1272].w[8]"  1;
	setAttr ".wl[1273].w[8]"  1;
	setAttr ".wl[1274].w[8]"  1;
	setAttr ".wl[1275].w[8]"  1;
	setAttr -s 2 ".wl[1276].w";
	setAttr ".wl[1276].w[8]" 0.97173845767974854;
	setAttr ".wl[1276].w[19]" 0.028261542320251465;
	setAttr -s 2 ".wl[1277].w[8:9]"  0.99995642900466919 4.3570995330810547e-005;
	setAttr ".wl[1278].w[8]"  1;
	setAttr ".wl[1279].w[8]"  1;
	setAttr ".wl[1280].w[8]"  1;
	setAttr -s 2 ".wl[1281].w[8:9]"  0.9999995231628418 4.76837158203125e-007;
	setAttr ".wl[1282].w[8]"  1;
	setAttr ".wl[1283].w[8]"  1;
	setAttr ".wl[1284].w[8]"  1;
	setAttr ".wl[1285].w[8]"  1;
	setAttr ".wl[1286].w[8]"  1;
	setAttr ".wl[1287].w[8]"  1;
	setAttr ".wl[1288].w[8]"  1;
	setAttr ".wl[1289].w[8]"  1;
	setAttr ".wl[1290].w[8]"  1;
	setAttr ".wl[1291].w[8]"  1;
	setAttr ".wl[1292].w[8]"  1;
	setAttr ".wl[1293].w[8]"  1;
	setAttr ".wl[1294].w[8]"  1;
	setAttr ".wl[1295].w[8]"  1;
	setAttr ".wl[1296].w[8]"  1;
	setAttr ".wl[1297].w[8]"  1;
	setAttr ".wl[1298].w[8]"  1;
	setAttr ".wl[1299].w[8]"  1;
	setAttr ".wl[1300].w[8]"  1;
	setAttr ".wl[1301].w[8]"  1;
	setAttr ".wl[1302].w[8]"  1;
	setAttr ".wl[1303].w[8]"  1;
	setAttr ".wl[1304].w[8]"  1;
	setAttr ".wl[1305].w[8]"  1;
	setAttr ".wl[1306].w[8]"  1;
	setAttr ".wl[1307].w[8]"  1;
	setAttr ".wl[1308].w[8]"  1;
	setAttr ".wl[1309].w[8]"  1;
	setAttr ".wl[1310].w[8]"  1;
	setAttr ".wl[1311].w[8]"  1;
	setAttr ".wl[1312].w[8]"  1;
	setAttr ".wl[1313].w[8]"  1;
	setAttr ".wl[1314].w[8]"  1;
	setAttr ".wl[1315].w[8]"  1;
	setAttr ".wl[1316].w[8]"  1;
	setAttr ".wl[1317].w[8]"  1;
	setAttr ".wl[1318].w[8]"  1;
	setAttr ".wl[1319].w[8]"  1;
	setAttr ".wl[1320].w[8]"  1;
	setAttr ".wl[1321].w[8]"  1;
	setAttr ".wl[1322].w[8]"  1;
	setAttr ".wl[1323].w[8]"  1;
	setAttr ".wl[1324].w[8]"  1;
	setAttr ".wl[1325].w[8]"  1;
	setAttr ".wl[1326].w[8]"  1;
	setAttr ".wl[1327].w[8]"  1;
	setAttr ".wl[1328].w[8]"  1;
	setAttr ".wl[1329].w[8]"  1;
	setAttr ".wl[1330].w[8]"  1;
	setAttr ".wl[1331].w[8]"  1;
	setAttr ".wl[1332].w[8]"  1;
	setAttr ".wl[1333].w[8]"  1;
	setAttr ".wl[1334].w[8]"  1;
	setAttr ".wl[1335].w[8]"  1;
	setAttr ".wl[1336].w[8]"  1;
	setAttr ".wl[1337].w[8]"  1;
	setAttr ".wl[1338].w[8]"  1;
	setAttr ".wl[1339].w[8]"  1;
	setAttr ".wl[1340].w[8]"  1;
	setAttr ".wl[1341].w[8]"  1;
	setAttr ".wl[1342].w[8]"  1;
	setAttr ".wl[1343].w[8]"  1;
	setAttr ".wl[1344].w[8]"  1;
	setAttr ".wl[1345].w[8]"  1;
	setAttr ".wl[1346].w[8]"  1;
	setAttr ".wl[1347].w[8]"  1;
	setAttr ".wl[1348].w[8]"  1;
	setAttr ".wl[1349].w[8]"  1;
	setAttr ".wl[1350].w[8]"  1;
	setAttr ".wl[1351].w[8]"  1;
	setAttr ".wl[1352].w[8]"  1;
	setAttr ".wl[1353].w[8]"  1;
	setAttr ".wl[1354].w[8]"  1;
	setAttr ".wl[1355].w[8]"  1;
	setAttr ".wl[1356].w[8]"  1;
	setAttr ".wl[1357].w[8]"  1;
	setAttr ".wl[1358].w[8]"  1;
	setAttr ".wl[1359].w[8]"  1;
	setAttr ".wl[1360].w[8]"  1;
	setAttr ".wl[1361].w[8]"  1;
	setAttr ".wl[1362].w[8]"  1;
	setAttr ".wl[1363].w[8]"  1;
	setAttr ".wl[1364].w[8]"  1;
	setAttr ".wl[1365].w[8]"  1;
	setAttr ".wl[1366].w[8]"  1;
	setAttr ".wl[1367].w[8]"  1;
	setAttr ".wl[1368].w[8]"  1;
	setAttr ".wl[1369].w[8]"  1;
	setAttr ".wl[1370].w[8]"  1;
	setAttr ".wl[1371].w[8]"  1;
	setAttr ".wl[1372].w[8]"  1;
	setAttr ".wl[1373].w[8]"  1;
	setAttr ".wl[1374].w[8]"  1;
	setAttr ".wl[1375].w[8]"  1;
	setAttr ".wl[1376].w[8]"  1;
	setAttr ".wl[1377].w[8]"  1;
	setAttr ".wl[1378].w[8]"  1;
	setAttr ".wl[1379].w[8]"  1;
	setAttr ".wl[1380].w[8]"  1;
	setAttr ".wl[1381].w[8]"  1;
	setAttr ".wl[1382].w[8]"  1;
	setAttr ".wl[1383].w[8]"  1;
	setAttr ".wl[1384].w[8]"  1;
	setAttr ".wl[1385].w[8]"  1;
	setAttr ".wl[1386].w[8]"  1;
	setAttr ".wl[1387].w[8]"  1;
	setAttr ".wl[1388].w[8]"  1;
	setAttr ".wl[1389].w[8]"  1;
	setAttr ".wl[1390].w[8]"  1;
	setAttr ".wl[1391].w[8]"  1;
	setAttr ".wl[1392].w[8]"  1;
	setAttr ".wl[1393].w[8]"  1;
	setAttr ".wl[1394].w[8]"  1;
	setAttr ".wl[1395].w[8]"  1;
	setAttr ".wl[1396].w[8]"  1;
	setAttr ".wl[1397].w[8]"  1;
	setAttr ".wl[1398].w[8]"  1;
	setAttr ".wl[1399].w[8]"  1;
	setAttr ".wl[1400].w[8]"  1;
	setAttr ".wl[1401].w[8]"  1;
	setAttr ".wl[1402].w[8]"  1;
	setAttr ".wl[1403].w[8]"  1;
	setAttr ".wl[1404].w[8]"  1;
	setAttr ".wl[1405].w[8]"  1;
	setAttr ".wl[1406].w[8]"  1;
	setAttr ".wl[1407].w[8]"  1;
	setAttr ".wl[1408].w[8]"  1;
	setAttr ".wl[1409].w[8]"  1;
	setAttr ".wl[1410].w[8]"  1;
	setAttr ".wl[1411].w[8]"  1;
	setAttr ".wl[1412].w[8]"  1;
	setAttr ".wl[1413].w[8]"  1;
	setAttr ".wl[1414].w[8]"  1;
	setAttr ".wl[1415].w[8]"  1;
	setAttr ".wl[1416].w[8]"  1;
	setAttr ".wl[1417].w[8]"  1;
	setAttr ".wl[1418].w[8]"  1;
	setAttr ".wl[1419].w[8]"  1;
	setAttr ".wl[1420].w[8]"  1;
	setAttr ".wl[1421].w[8]"  1;
	setAttr ".wl[1422].w[8]"  1;
	setAttr ".wl[1423].w[8]"  1;
	setAttr ".wl[1424].w[8]"  1;
	setAttr ".wl[1425].w[8]"  1;
	setAttr ".wl[1426].w[8]"  1;
	setAttr ".wl[1427].w[8]"  1;
	setAttr ".wl[1428].w[8]"  1;
	setAttr ".wl[1429].w[8]"  1;
	setAttr ".wl[1430].w[8]"  1;
	setAttr ".wl[1431].w[8]"  1;
	setAttr ".wl[1432].w[8]"  1;
	setAttr ".wl[1433].w[8]"  1;
	setAttr ".wl[1434].w[8]"  1;
	setAttr ".wl[1435].w[8]"  1;
	setAttr ".wl[1436].w[8]"  1;
	setAttr ".wl[1437].w[8]"  1;
	setAttr ".wl[1438].w[8]"  1;
	setAttr ".wl[1439].w[8]"  1;
	setAttr ".wl[1440].w[8]"  1;
	setAttr ".wl[1441].w[8]"  1;
	setAttr ".wl[1442].w[8]"  1;
	setAttr ".wl[1443].w[8]"  1;
	setAttr ".wl[1444].w[8]"  1;
	setAttr ".wl[1445].w[8]"  1;
	setAttr ".wl[1446].w[8]"  1;
	setAttr ".wl[1447].w[8]"  1;
	setAttr ".wl[1448].w[8]"  1;
	setAttr ".wl[1449].w[8]"  1;
	setAttr ".wl[1450].w[8]"  1;
	setAttr ".wl[1451].w[8]"  1;
	setAttr ".wl[1452].w[8]"  1;
	setAttr ".wl[1453].w[8]"  1;
	setAttr ".wl[1454].w[8]"  1;
	setAttr ".wl[1455].w[8]"  1;
	setAttr ".wl[1456].w[8]"  1;
	setAttr ".wl[1457].w[8]"  1;
	setAttr ".wl[1458].w[8]"  1;
	setAttr ".wl[1459].w[8]"  1;
	setAttr ".wl[1460].w[8]"  1;
	setAttr ".wl[1461].w[8]"  1;
	setAttr ".wl[1462].w[8]"  1;
	setAttr ".wl[1463].w[8]"  1;
	setAttr ".wl[1464].w[8]"  1;
	setAttr ".wl[1465].w[8]"  1;
	setAttr ".wl[1466].w[8]"  1;
	setAttr ".wl[1467].w[8]"  1;
	setAttr ".wl[1468].w[8]"  1;
	setAttr ".wl[1469].w[8]"  1;
	setAttr ".wl[1470].w[8]"  1;
	setAttr ".wl[1471].w[8]"  1;
	setAttr ".wl[1472].w[8]"  1;
	setAttr ".wl[1473].w[8]"  1;
	setAttr ".wl[1474].w[8]"  1;
	setAttr ".wl[1475].w[8]"  1;
	setAttr ".wl[1476].w[8]"  1;
	setAttr ".wl[1477].w[8]"  1;
	setAttr ".wl[1478].w[8]"  1;
	setAttr ".wl[1479].w[8]"  1;
	setAttr ".wl[1480].w[8]"  1;
	setAttr ".wl[1481].w[8]"  1;
	setAttr ".wl[1482].w[8]"  1;
	setAttr ".wl[1483].w[8]"  1;
	setAttr ".wl[1484].w[8]"  1;
	setAttr ".wl[1485].w[8]"  1;
	setAttr ".wl[1486].w[8]"  1;
	setAttr ".wl[1487].w[8]"  1;
	setAttr ".wl[1488].w[8]"  1;
	setAttr ".wl[1489].w[8]"  1;
	setAttr ".wl[1490].w[8]"  1;
	setAttr ".wl[1491].w[8]"  1;
	setAttr ".wl[1492].w[8]"  1;
	setAttr ".wl[1493].w[8]"  1;
	setAttr ".wl[1494].w[8]"  1;
	setAttr ".wl[1495].w[8]"  1;
	setAttr ".wl[1496].w[8]"  1;
	setAttr ".wl[1497].w[8]"  1;
	setAttr ".wl[1498].w[8]"  1;
	setAttr ".wl[1499].w[8]"  1;
	setAttr ".wl[1500].w[8]"  1;
	setAttr ".wl[1501].w[8]"  1;
	setAttr ".wl[1502].w[8]"  1;
	setAttr ".wl[1503].w[8]"  1;
	setAttr ".wl[1504].w[8]"  1;
	setAttr ".wl[1505].w[8]"  1;
	setAttr ".wl[1506].w[8]"  1;
	setAttr ".wl[1507].w[8]"  1;
	setAttr ".wl[1508].w[8]"  1;
	setAttr ".wl[1509].w[8]"  1;
	setAttr ".wl[1510].w[8]"  1;
	setAttr ".wl[1511].w[8]"  1;
	setAttr ".wl[1512].w[8]"  1;
	setAttr ".wl[1513].w[8]"  1;
	setAttr ".wl[1514].w[8]"  1;
	setAttr ".wl[1515].w[8]"  1;
	setAttr ".wl[1516].w[8]"  1;
	setAttr ".wl[1517].w[8]"  1;
	setAttr ".wl[1518].w[8]"  1;
	setAttr ".wl[1519].w[8]"  1;
	setAttr ".wl[1520].w[8]"  1;
	setAttr ".wl[1521].w[8]"  1;
	setAttr ".wl[1522].w[8]"  1;
	setAttr ".wl[1523].w[8]"  1;
	setAttr ".wl[1524].w[8]"  1;
	setAttr ".wl[1525].w[8]"  1;
	setAttr ".wl[1526].w[8]"  1;
	setAttr ".wl[1527].w[8]"  1;
	setAttr ".wl[1528].w[8]"  1;
	setAttr ".wl[1529].w[8]"  1;
	setAttr ".wl[1530].w[8]"  1;
	setAttr ".wl[1531].w[8]"  1;
	setAttr ".wl[1532].w[8]"  1;
	setAttr ".wl[1533].w[8]"  1;
	setAttr ".wl[1534].w[8]"  1;
	setAttr ".wl[1535].w[8]"  1;
	setAttr ".wl[1536].w[8]"  1;
	setAttr ".wl[1537].w[8]"  1;
	setAttr ".wl[1538].w[8]"  1;
	setAttr ".wl[1539].w[8]"  1;
	setAttr ".wl[1540].w[8]"  1;
	setAttr ".wl[1541].w[8]"  1;
	setAttr ".wl[1542].w[8]"  1;
	setAttr ".wl[1543].w[8]"  1;
	setAttr ".wl[1544].w[8]"  1;
	setAttr ".wl[1545].w[8]"  1;
	setAttr ".wl[1546].w[8]"  1;
	setAttr ".wl[1547].w[8]"  1;
	setAttr ".wl[1548].w[8]"  1;
	setAttr ".wl[1549].w[8]"  1;
	setAttr ".wl[1550].w[8]"  1;
	setAttr ".wl[1551].w[8]"  1;
	setAttr ".wl[1552].w[8]"  1;
	setAttr ".wl[1553].w[8]"  1;
	setAttr ".wl[1554].w[8]"  1;
	setAttr ".wl[1555].w[8]"  1;
	setAttr ".wl[1556].w[8]"  1;
	setAttr ".wl[1557].w[8]"  1;
	setAttr ".wl[1558].w[8]"  1;
	setAttr ".wl[1559].w[8]"  1;
	setAttr ".wl[1560].w[8]"  1;
	setAttr ".wl[1561].w[8]"  1;
	setAttr ".wl[1562].w[8]"  1;
	setAttr ".wl[1563].w[8]"  1;
	setAttr ".wl[1564].w[8]"  1;
	setAttr ".wl[1565].w[8]"  1;
	setAttr ".wl[1566].w[8]"  1;
	setAttr ".wl[1567].w[8]"  1;
	setAttr ".wl[1568].w[8]"  1;
	setAttr ".wl[1569].w[8]"  1;
	setAttr ".wl[1570].w[8]"  1;
	setAttr ".wl[1571].w[8]"  1;
	setAttr ".wl[1572].w[8]"  1;
	setAttr ".wl[1573].w[8]"  1;
	setAttr ".wl[1574].w[8]"  1;
	setAttr ".wl[1575].w[8]"  1;
	setAttr ".wl[1576].w[8]"  1;
	setAttr ".wl[1577].w[8]"  1;
	setAttr ".wl[1578].w[8]"  1;
	setAttr ".wl[1579].w[8]"  1;
	setAttr ".wl[1580].w[8]"  1;
	setAttr ".wl[1581].w[8]"  1;
	setAttr ".wl[1582].w[8]"  1;
	setAttr ".wl[1583].w[8]"  1;
	setAttr ".wl[1584].w[8]"  1;
	setAttr ".wl[1585].w[8]"  1;
	setAttr ".wl[1586].w[8]"  1;
	setAttr ".wl[1587].w[8]"  1;
	setAttr ".wl[1588].w[8]"  1;
	setAttr ".wl[1589].w[8]"  1;
	setAttr ".wl[1590].w[8]"  1;
	setAttr ".wl[1591].w[8]"  1;
	setAttr ".wl[1592].w[8]"  1;
	setAttr ".wl[1593].w[8]"  1;
	setAttr ".wl[1594].w[8]"  1;
	setAttr ".wl[1595].w[8]"  1;
	setAttr ".wl[1596].w[8]"  1;
	setAttr ".wl[1597].w[8]"  1;
	setAttr ".wl[1598].w[8]"  1;
	setAttr ".wl[1599].w[8]"  1;
	setAttr ".wl[1600].w[8]"  1;
	setAttr ".wl[1601].w[8]"  1;
	setAttr ".wl[1602].w[8]"  1;
	setAttr ".wl[1603].w[8]"  1;
	setAttr ".wl[1604].w[8]"  1;
	setAttr ".wl[1605].w[8]"  1;
	setAttr ".wl[1606].w[8]"  1;
	setAttr ".wl[1607].w[8]"  1;
	setAttr ".wl[1608].w[8]"  1;
	setAttr ".wl[1609].w[8]"  1;
	setAttr ".wl[1610].w[8]"  1;
	setAttr ".wl[1611].w[8]"  1;
	setAttr ".wl[1612].w[8]"  1;
	setAttr ".wl[1613].w[8]"  1;
	setAttr ".wl[1614].w[8]"  1;
	setAttr ".wl[1615].w[8]"  1;
	setAttr ".wl[1616].w[8]"  1;
	setAttr ".wl[1617].w[8]"  1;
	setAttr ".wl[1618].w[8]"  1;
	setAttr ".wl[1619].w[8]"  1;
	setAttr ".wl[1620].w[8]"  1;
	setAttr ".wl[1621].w[8]"  1;
	setAttr ".wl[1622].w[8]"  1;
	setAttr ".wl[1623].w[8]"  1;
	setAttr ".wl[1624].w[8]"  1;
	setAttr ".wl[1625].w[8]"  1;
	setAttr ".wl[1626].w[8]"  1;
	setAttr ".wl[1627].w[8]"  1;
	setAttr ".wl[1628].w[8]"  1;
	setAttr ".wl[1629].w[8]"  1;
	setAttr ".wl[1630].w[8]"  1;
	setAttr ".wl[1631].w[8]"  1;
	setAttr ".wl[1632].w[8]"  1;
	setAttr ".wl[1633].w[8]"  1;
	setAttr ".wl[1634].w[8]"  1;
	setAttr ".wl[1635].w[8]"  1;
	setAttr ".wl[1636].w[8]"  1;
	setAttr ".wl[1637].w[8]"  1;
	setAttr ".wl[1638].w[8]"  1;
	setAttr ".wl[1639].w[8]"  1;
	setAttr ".wl[1640].w[8]"  1;
	setAttr ".wl[1641].w[8]"  1;
	setAttr ".wl[1642].w[8]"  1;
	setAttr ".wl[1643].w[8]"  1;
	setAttr ".wl[1644].w[8]"  1;
	setAttr ".wl[1645].w[8]"  1;
	setAttr ".wl[1646].w[8]"  1;
	setAttr ".wl[1647].w[8]"  1;
	setAttr ".wl[1648].w[8]"  1;
	setAttr ".wl[1649].w[8]"  1;
	setAttr ".wl[1650].w[8]"  1;
	setAttr ".wl[1651].w[8]"  1;
	setAttr ".wl[1652].w[8]"  1;
	setAttr ".wl[1653].w[8]"  1;
	setAttr ".wl[1654].w[8]"  1;
	setAttr ".wl[1655].w[8]"  1;
	setAttr ".wl[1656].w[8]"  1;
	setAttr ".wl[1657].w[8]"  1;
	setAttr ".wl[1658].w[8]"  1;
	setAttr ".wl[1659].w[8]"  1;
	setAttr ".wl[1660].w[8]"  1;
	setAttr ".wl[1661].w[8]"  1;
	setAttr ".wl[1662].w[8]"  1;
	setAttr ".wl[1663].w[8]"  1;
	setAttr ".wl[1664].w[8]"  1;
	setAttr ".wl[1665].w[8]"  1;
	setAttr ".wl[1666].w[8]"  1;
	setAttr ".wl[1667].w[8]"  1;
	setAttr ".wl[1668].w[8]"  1;
	setAttr ".wl[1669].w[8]"  1;
	setAttr ".wl[1670].w[8]"  1;
	setAttr ".wl[1671].w[8]"  1;
	setAttr ".wl[1672].w[8]"  1;
	setAttr ".wl[1673].w[8]"  1;
	setAttr ".wl[1674].w[8]"  1;
	setAttr ".wl[1675].w[8]"  1;
	setAttr ".wl[1676].w[8]"  1;
	setAttr ".wl[1677].w[8]"  1;
	setAttr ".wl[1678].w[8]"  1;
	setAttr ".wl[1679].w[8]"  1;
	setAttr ".wl[1680].w[8]"  1;
	setAttr ".wl[1681].w[8]"  1;
	setAttr ".wl[1682].w[8]"  1;
	setAttr ".wl[1683].w[8]"  1;
	setAttr ".wl[1684].w[8]"  1;
	setAttr ".wl[1685].w[8]"  1;
	setAttr ".wl[1686].w[8]"  1;
	setAttr ".wl[1687].w[8]"  1;
	setAttr ".wl[1688].w[8]"  1;
	setAttr ".wl[1689].w[8]"  1;
	setAttr ".wl[1690].w[8]"  1;
	setAttr ".wl[1691].w[8]"  1;
	setAttr -s 2 ".wl[1692].w[7:8]"  1.5914440155029297e-005 0.99998408555984497;
	setAttr -s 2 ".wl[1693].w[7:8]"  1.5914440155029297e-005 0.99998408555984497;
	setAttr ".wl[1694].w[8]"  1;
	setAttr ".wl[1695].w[8]"  1;
	setAttr ".wl[1696].w[8]"  1;
	setAttr ".wl[1697].w[8]"  1;
	setAttr ".wl[1698].w[8]"  1;
	setAttr ".wl[1699].w[8]"  1;
	setAttr ".wl[1700].w[8]"  1;
	setAttr ".wl[1701].w[8]"  1;
	setAttr ".wl[1702].w[8]"  1;
	setAttr ".wl[1703].w[8]"  1;
	setAttr ".wl[1704].w[8]"  1;
	setAttr ".wl[1705].w[8]"  1;
	setAttr ".wl[1706].w[8]"  1;
	setAttr -s 2 ".wl[1707].w[7:8]"  4.7028064727783203e-005 0.99995297193527222;
	setAttr -s 2 ".wl[1708].w[7:8]"  4.7028064727783203e-005 0.99995297193527222;
	setAttr -s 2 ".wl[1709].w[7:8]"  5.3644180297851563e-007 0.99999946355819702;
	setAttr ".wl[1710].w[8]"  1;
	setAttr ".wl[1711].w[8]"  1;
	setAttr ".wl[1712].w[8]"  1;
	setAttr ".wl[1713].w[8]"  1;
	setAttr -s 2 ".wl[1714].w[7:8]"  1.1324882507324219e-006 0.99999886751174927;
	setAttr ".wl[1715].w[8]"  1;
	setAttr ".wl[1716].w[8]"  1;
	setAttr ".wl[1717].w[8]"  1;
	setAttr ".wl[1718].w[8]"  1;
	setAttr ".wl[1719].w[8]"  1;
	setAttr ".wl[1720].w[8]"  1;
	setAttr ".wl[1721].w[8]"  1;
	setAttr ".wl[1722].w[8]"  1;
	setAttr ".wl[1723].w[8]"  1;
	setAttr ".wl[1724].w[8]"  1;
	setAttr ".wl[1725].w[8]"  1;
	setAttr ".wl[1726].w[8]"  1;
	setAttr ".wl[1727].w[8]"  1;
	setAttr ".wl[1728].w[8]"  1;
	setAttr ".wl[1729].w[8]"  1;
	setAttr ".wl[1730].w[8]"  1;
	setAttr -s 2 ".wl[1731].w[7:8]"  0.00025343894958496094 0.99974656105041504;
	setAttr -s 2 ".wl[1732].w[7:8]"  8.7022781372070313e-006 0.99999129772186279;
	setAttr -s 2 ".wl[1733].w[7:8]"  1.1324882507324219e-006 0.99999886751174927;
	setAttr ".wl[1734].w[8]"  1;
	setAttr -s 2 ".wl[1735].w[7:8]"  0.00025343894958496094 0.99974656105041504;
	setAttr -s 2 ".wl[1736].w[7:8]"  1.1324882507324219e-006 0.99999886751174927;
	setAttr ".wl[1737].w[8]"  1;
	setAttr ".wl[1738].w[8]"  1;
	setAttr ".wl[1739].w[8]"  1;
	setAttr ".wl[1740].w[8]"  1;
	setAttr ".wl[1741].w[8]"  1;
	setAttr ".wl[1742].w[8]"  1;
	setAttr ".wl[1743].w[8]"  1;
	setAttr -s 2 ".wl[1744].w[7:8]"  8.3446502685546875e-007 0.99999916553497314;
	setAttr ".wl[1745].w[8]"  1;
	setAttr -s 2 ".wl[1746].w[7:8]"  8.3446502685546875e-007 0.99999916553497314;
	setAttr ".wl[1747].w[8]"  1;
	setAttr ".wl[1748].w[8]"  1;
	setAttr ".wl[1749].w[8]"  1;
	setAttr ".wl[1750].w[8]"  1;
	setAttr -s 2 ".wl[1751].w[7:8]"  7.9274177551269531e-006 0.99999207258224487;
	setAttr -s 2 ".wl[1752].w[7:8]"  7.9274177551269531e-006 0.99999207258224487;
	setAttr -s 2 ".wl[1753].w[7:8]"  7.7486038208007813e-007 0.99999922513961792;
	setAttr -s 2 ".wl[1754].w[7:8]"  7.7486038208007813e-007 0.99999922513961792;
	setAttr -s 2 ".wl[1755].w";
	setAttr ".wl[1755].w[0]" 0.49994805235360495;
	setAttr ".wl[1755].w[28]" 0.50005194764639516;
	setAttr -s 2 ".wl[1756].w";
	setAttr ".wl[1756].w[0]" 0.49996938864572543;
	setAttr ".wl[1756].w[28]" 0.50003061135427462;
	setAttr -s 2 ".wl[1757].w";
	setAttr ".wl[1757].w[0]" 0.49994805235360495;
	setAttr ".wl[1757].w[28]" 0.50005194764639516;
	setAttr -s 2 ".wl[1758].w";
	setAttr ".wl[1758].w[0]" 0.49987922949734015;
	setAttr ".wl[1758].w[28]" 0.50012077050265991;
	setAttr -s 2 ".wl[1759].w";
	setAttr ".wl[1759].w[0]" 0.50518873813941445;
	setAttr ".wl[1759].w[28]" 0.49481126186058561;
	setAttr -s 2 ".wl[1760].w";
	setAttr ".wl[1760].w[0]" 0.51048232226933754;
	setAttr ".wl[1760].w[28]" 0.48951767773066246;
	setAttr -s 2 ".wl[1761].w";
	setAttr ".wl[1761].w[0]" 0.50518873813941445;
	setAttr ".wl[1761].w[28]" 0.49481126186058561;
	setAttr -s 2 ".wl[1762].w";
	setAttr ".wl[1762].w[0]" 0.49987922962969866;
	setAttr ".wl[1762].w[28]" 0.50012077037030134;
	setAttr -s 2 ".wl[1763].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1764].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1765].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1766].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1767].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1768].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1769].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1770].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1771].w[28:29]"  0.050323222860450184 0.94967677713954979;
	setAttr -s 2 ".wl[1772].w[28:29]"  0.047583083255782685 0.95241691674421736;
	setAttr -s 2 ".wl[1773].w[28:29]"  0.050323222860450184 0.94967677713954979;
	setAttr -s 2 ".wl[1774].w[28:29]"  0.057068974668233942 0.94293102533176609;
	setAttr -s 2 ".wl[1775].w[28:29]"  0.063971770397819941 0.9360282296020096;
	setAttr -s 2 ".wl[1776].w[28:29]"  0.066867297806611797 0.93313270219338829;
	setAttr -s 2 ".wl[1777].w[28:29]"  0.063971476078250863 0.93602852392174918;
	setAttr -s 2 ".wl[1778].w[28:29]"  0.057068974668233942 0.94293102533176609;
	setAttr -s 2 ".wl[1779].w[29:30]"  0.12924217042617017 0.87075782957382986;
	setAttr -s 2 ".wl[1780].w[29:30]"  0.1265285910274862 0.87347140897251385;
	setAttr -s 2 ".wl[1781].w[29:30]"  0.12924217042617017 0.87075782957382986;
	setAttr -s 3 ".wl[1782].w[29:31]"  0.13525533051298438 0.86474466950024864 
		-1.3232892112994737e-011;
	setAttr -s 2 ".wl[1783].w[29:30]"  0.14057746477766431 0.85942253522233569;
	setAttr -s 2 ".wl[1784].w[29:30]"  0.14259905554461152 0.8574009444553885;
	setAttr -s 2 ".wl[1785].w[29:30]"  0.14057746477766431 0.85942253522233569;
	setAttr -s 2 ".wl[1786].w[29:30]"  0.13525533051298438 0.86474466948701567;
	setAttr -s 2 ".wl[1787].w[28:29]"  0.933687713545998 0.066312286454002001;
	setAttr -s 2 ".wl[1788].w[28:29]"  0.93651876359820285 0.063481236401797106;
	setAttr -s 2 ".wl[1789].w[28:29]"  0.933687713545998 0.066312286454002001;
	setAttr -s 2 ".wl[1790].w[28:29]"  0.92679025577123686 0.073209744228763113;
	setAttr -s 2 ".wl[1791].w[28:29]"  0.91982739006224135 0.08017260993775864;
	setAttr -s 2 ".wl[1792].w[28:29]"  0.91692959155965392 0.083070408440346161;
	setAttr -s 2 ".wl[1793].w[28:29]"  0.91982739006224135 0.08017260993775864;
	setAttr -s 2 ".wl[1794].w[28:29]"  0.92679025536011639 0.073209744639883653;
	setAttr -s 2 ".wl[1795].w[29:30]"  0.69521541982225143 0.30478458017774862;
	setAttr -s 2 ".wl[1796].w[29:30]"  0.70125093453331711 0.29874906546668284;
	setAttr -s 2 ".wl[1797].w[29:30]"  0.69521541982225143 0.30478458017774862;
	setAttr -s 2 ".wl[1798].w[29:30]"  0.68238867144446158 0.31761132855553836;
	setAttr -s 2 ".wl[1799].w[29:30]"  0.67158307063956757 0.32841692936043237;
	setAttr -s 2 ".wl[1800].w[29:30]"  0.66759498133127892 0.33240501866872119;
	setAttr -s 2 ".wl[1801].w[29:30]"  0.67158307063956757 0.32841692936043237;
	setAttr -s 2 ".wl[1802].w[29:30]"  0.68238867067992781 0.31761132932007219;
	setAttr -s 2 ".wl[1803].w[28:29]"  0.50005723869073471 0.49994276130926524;
	setAttr -s 2 ".wl[1804].w[28:29]"  0.50001149622879659 0.49998850377120335;
	setAttr -s 2 ".wl[1805].w[28:29]"  0.5 0.5;
	setAttr -s 2 ".wl[1806].w[28:29]"  0.5 0.5;
	setAttr -s 2 ".wl[1807].w[28:29]"  0.5 0.5;
	setAttr -s 2 ".wl[1808].w[28:29]"  0.50001149622879659 0.49998850377120335;
	setAttr -s 2 ".wl[1809].w[28:29]"  0.50005723869073471 0.49994276130926524;
	setAttr -s 2 ".wl[1810].w[28:29]"  0.50007741690608409 0.49992258309391591;
	setAttr -s 2 ".wl[1811].w[30:31]"  0.95865609477322777 0.041343905226772192;
	setAttr -s 2 ".wl[1812].w[30:31]"  0.95903060727241585 0.040969392727584208;
	setAttr -s 2 ".wl[1813].w[30:31]"  0.95865609477322777 0.041343905226772192;
	setAttr -s 2 ".wl[1814].w[30:31]"  0.95777063140554941 0.042229368594450638;
	setAttr -s 2 ".wl[1815].w[30:31]"  0.95691348567093237 0.043086514329067536;
	setAttr -s 2 ".wl[1816].w[30:31]"  0.95656837423433172 0.043431625765668266;
	setAttr -s 2 ".wl[1817].w[30:31]"  0.95691348567093237 0.043086514329067536;
	setAttr -s 2 ".wl[1818].w[30:31]"  0.95777063135277163 0.042229368647228371;
	setAttr -s 2 ".wl[1819].w";
	setAttr ".wl[1819].w[0]" 0.073357754252791882;
	setAttr ".wl[1819].w[28]" 0.92664224574720822;
	setAttr -s 2 ".wl[1820].w";
	setAttr ".wl[1820].w[0]" 0.070193279159096608;
	setAttr ".wl[1820].w[28]" 0.92980672084090343;
	setAttr -s 2 ".wl[1821].w";
	setAttr ".wl[1821].w[0]" 0.073357754252791882;
	setAttr ".wl[1821].w[28]" 0.92664224574720822;
	setAttr -s 2 ".wl[1822].w";
	setAttr ".wl[1822].w[0]" 0.080881548438450468;
	setAttr ".wl[1822].w[28]" 0.91911845156154948;
	setAttr -s 2 ".wl[1823].w";
	setAttr ".wl[1823].w[0]" 0.088220906487469983;
	setAttr ".wl[1823].w[28]" 0.91177909351253006;
	setAttr -s 2 ".wl[1824].w";
	setAttr ".wl[1824].w[0]" 0.091202309449616034;
	setAttr ".wl[1824].w[28]" 0.90879769055038395;
	setAttr -s 2 ".wl[1825].w";
	setAttr ".wl[1825].w[0]" 0.088220906487469983;
	setAttr ".wl[1825].w[28]" 0.91177909351253006;
	setAttr -s 2 ".wl[1826].w";
	setAttr ".wl[1826].w[0]" 0.080881548438450468;
	setAttr ".wl[1826].w[28]" 0.91911845156154948;
	setAttr -s 2 ".wl[1827].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1828].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1829].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1830].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1831].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1832].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1833].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1834].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1835].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1836].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1837].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1838].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1839].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1840].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1841].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1842].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1843].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1844].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1845].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1846].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1847].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1848].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1849].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1850].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1851].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1852].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1853].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1854].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1855].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1856].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1857].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1858].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1859].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1860].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1861].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1862].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1863].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1864].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1865].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1866].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[1867].w[30:31]"  0.5 0.5;
	setAttr -s 35 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.1100997811188691e-016 -1.6542078698586066e-018 -1 0
		 0.99988899211820148 -0.014899779892577125 1.6542078698586066e-018 0 -0.014899779892577181 -0.99988899211820148 1.1100997811188691e-016 0
		 -70.318124701891492 2.3344577633902048 -2.5917687589307512e-016 1;
	setAttr ".pm[1]" -type "matrix" 0.99660492485983188 -0.082277069224095681 -0.0030178841963357387 0
		 -0.082324956368703309 -0.99633798770977289 -0.023091466071511423 0 -0.0011069345148667917 0.02326151599389124 -0.99972880151051269 0
		 -27.277849072051456 56.406073700177181 4.6243428138353835 1;
	setAttr ".pm[2]" -type "matrix" 0.99666191512494673 -0.081562507004027146 0.0035474484762355457 0
		 -0.081049966110716964 -0.98331582870989198 0.1628523380305911 0 -0.0097943827230272014 -0.16259624368292241 -0.9866440754432565 0
		 -27.277871858897914 28.204182944252466 -0.37813448481363554 1;
	setAttr ".pm[3]" -type "matrix" 0.99896747737350089 0.045140756550397183 0.0051274992035030909 0
		 -0.045265088141026498 0.99859680482705226 0.027486236279038519 0 -0.0038795548210127919 -0.027689952821552757 0.99960903135532464 0
		 -27.402950755237988 -2.9622859162154622 -0.18844466214815569 1;
	setAttr ".pm[4]" -type "matrix" 1.0903525629431152e-016 -5.4564301869465596e-016 1 0
		 0.98210227923461613 0.18834838231896756 1.0505530076385977e-016 0 -0.18834838231896761 0.98210227923461602 4.4540388833535862e-016 0
		 -77.728914782608157 -4.5255984978411332 -3.5681107763557839e-015 1;
	setAttr ".pm[5]" -type "matrix" 1 -6.6355085004635815e-016 -5.4887923742347221e-016 0
		 8.2663612910257306e-016 0.99991112296120721 0.013332148306150199 0 4.3578281062417509e-016 -0.013332148306150227 0.9999111229612071 0
		 -6.7381636537441678e-014 -93.477928152717269 12.041628058428012 1;
	setAttr ".pm[6]" -type "matrix" 1 -7.5297591904055375e-016 -4.1784615974883672e-016 0
		 8.2663612910257306e-016 0.98538979305166696 -0.17031428521880551 0 4.3578281062417504e-016 0.17031428521880546 0.98538979305166685 0
		 -7.6357379473419487e-014 -105.96388010564142 32.02264691016093 1;
	setAttr ".pm[7]" -type "matrix" 1 -8.4459362304958916e-016 -1.6801714131535975e-016 0
		 8.2663612910257316e-016 0.88634884820483451 -0.46301805503237442 0 4.3578281062417514e-016 0.46301805503237431 0.88634884820483451 0
		 -8.6099226287281162e-014 -108.41259237850286 68.385388013823956 1;
	setAttr ".pm[8]" -type "matrix" 1 -6.2923263869085702e-016 -5.8790682448663398e-016 0
		 8.2663612910257306e-016 0.99728598644968758 0.073625139939239456 0 4.3578281062417499e-016 -0.073625139939239567 0.99728598644968758 0
		 -1.0094898167188744e-013 -142.36017520666664 -7.8144357613909312 1;
	setAttr ".pm[9]" -type "matrix" 1 -6.7080961500721336e-016 -5.3998389632070574e-016 0
		 8.2663612910257306e-016 0.99999999999999956 9.5756735873919633e-016 0 4.3578281062417509e-016 -1.0685896612017124e-015 0.99999999999999956 0
		 -2.1057526981516765e-013 -241.25008886243123 9.9747072821835214 1;
	setAttr ".pm[10]" -type "matrix" 0.99896303959116439 0.045528513382071888 1.0397547818471647e-017 0
		 -0.045528513382071721 0.99896303959116406 -4.7387628594122408e-019 0 -1.0721858362009351e-016 -1.1602411759808909e-016 0.99999999999999978 0
		 -12.934795577219708 -135.10960168541558 -1.4345484476470585e-014 1;
	setAttr ".pm[11]" -type "matrix" 0.99987324411358125 -0.015921548473142443 1.0397547818471649e-017 0
		 0.015921548473142588 0.99987324411358092 -4.7387628594122418e-019 0 -1.1414320868504241e-016 -1.092188099596267e-016 0.99999999999999978 0
		 -56.084971813606657 -131.91354099957528 -1.4345484476470585e-014 1;
	setAttr ".pm[12]" -type "matrix" 0.98949261822558088 -0.14458339627040409 1.0397547818471649e-017 0
		 0.1445833962704042 0.98949261822558054 -4.7387628594122427e-019 0 -1.2726086671834101e-016 -9.3606048629406615e-017 0.99999999999999978 0
		 -113.44636671168483 -118.28583942360987 -1.4345484476470585e-014 1;
	setAttr ".pm[13]" -type "matrix" 0.99644829185737449 -0.084206897903440228 1.0397547818471647e-017 0
		 0.084206897903440353 0.99644829185737416 -4.7387628594122408e-019 0 -1.2133947567750536e-016 -1.0116398657735014e-016 0.99999999999999978 0
		 -132.07652770599836 -124.38795697405112 -1.4345484476470585e-014 1;
	setAttr ".pm[14]" -type "matrix" 0.99020179615021586 0.13964384304682562 1.039754781847165e-017 0
		 -0.13964384304682545 0.99020179615021564 -4.7387628594122437e-019 0 -9.5785008557412477e-017 -1.2562902798943651e-016 0.99999999999999978 0
		 -112.5440652829422 -155.66970609898073 -1.4345484476470588e-014 1;
	setAttr ".pm[15]" -type "matrix" 1 -1.1102230246251563e-016 1.0397547818471649e-017 0
		 2.4980018054066017e-016 0.99999999999999978 -4.7387628594122427e-019 0 -1.1238980778449576e-016 -1.1102230246251559e-016 0.99999999999999978 0
		 -143.40773176714947 -136.98591523440356 -1.4345484476470585e-014 1;
	setAttr ".pm[16]" -type "matrix" 0.99589320646770374 0.090535746042520876 1.0397547818471649e-017 0
		 -0.090535746042520696 0.99589320646770341 -4.7387628594122437e-019 0 -1.0187675906798811e-016 -1.2074165188416675e-016 0.99999999999999978 0
		 -107.12402946900461 -137.67744800706913 -11.000000000000014 1;
	setAttr ".pm[17]" -type "matrix" 1 -1.2212453270876718e-015 1.0397547818471647e-017 0
		 1.3600232051658166e-015 0.99999999999999978 -4.7387628594122447e-019 0 -1.1238980778449588e-016 -1.1102230246251547e-016 0.99999999999999978 0
		 -126.36093147998059 -126.757835062102 -11.000000000000012 1;
	setAttr ".pm[18]" -type "matrix" 1 -1.2212453270876718e-015 1.0397547818471647e-017 0
		 1.3600232051658166e-015 0.99999999999999978 -4.7387628594122447e-019 0 -1.1238980778449588e-016 -1.1102230246251547e-016 0.99999999999999978 0
		 -135.80223625441266 -126.757835062102 -11.000000000000012 1;
	setAttr ".pm[19]" -type "matrix" 0.99896303959116439 0.045528513382071249 3.3835258467791696e-016 0
		 0.045528513382071381 -0.99896303959116417 3.4883332391309407e-016 0 2.3936634366229449e-016 -1.0022824140004841e-016 -0.99999999999999978 0
		 12.934755208414268 135.11000390048244 -2.7988775683177231e-014 1;
	setAttr ".pm[20]" -type "matrix" 0.99987324411358125 -0.015921548473141249 4.1092863062801242e-010 0
		 -0.015921548473141114 -0.99987324411358069 2.5806297103738191e-008 0 2.3275750908124187e-016 -2.5809568384351674e-008 -0.99999999999999933 0
		 56.084980443213645 131.91376111097853 -3.4046372356505607e-006 1;
	setAttr ".pm[21]" -type "matrix" 0.98949261822558088 -0.14458339627040367 -3.2896188518394943e-009 0
		 -0.14458339627040348 -0.98949261822558066 4.8067527060105855e-010 0 -3.3245513021211166e-009 -1.1566955679263727e-016 -0.99999999999999978 0
		 113.44633082322811 118.28541420051189 -3.7715816732712941e-007 1;
	setAttr ".pm[22]" -type "matrix" 0.99644829185737438 -0.084206897903441727 -3.2896188518394943e-009 0
		 -0.08420689790344156 -0.99644829185737416 4.8067527060105855e-010 0 -3.3184113426172029e-009 -2.0195920782355178e-010 -0.99999999999999978 0
		 132.07642822358136 124.38804372085423 -4.6340523296062256e-007 1;
	setAttr ".pm[23]" -type "matrix" 0.99020179615021575 0.13964384304682553 -3.2896188518394947e-009 0
		 0.13964384304682564 -0.99020179615021553 4.8067527060105876e-010 0 -3.190263289686284e-009 -9.3534031395812017e-010 -0.99999999999999978 0
		 112.54445730599977 155.66942125445829 -5.0465034012608188e-007 1;
	setAttr ".pm[24]" -type "matrix" 0.99999999999999978 3.3148566973807208e-016 -3.2896188518394939e-009 0
		 4.734260239473665e-016 -0.99999999999999956 4.8067527060105865e-010 0 -3.2896189556371901e-009 -4.8067503279003763e-010 -0.99999999999999978 0
		 143.40799999999987 136.98599999999999 -5.3760342819930367e-007 1;
	setAttr ".pm[25]" -type "matrix" 0.99589320646770352 0.090535746042520709 -3.2896188518394943e-009 0
		 0.09053574604252082 -0.9958932064677033 4.8067527060105865e-010 0 -3.2325908970888013e-009 -7.7652910601846897e-010 -0.99999999999999978 0
		 107.1242486824632 137.67698472943161 10.999999546800924 1;
	setAttr ".pm[26]" -type "matrix" 1 -8.4847964496361404e-017 -3.2896188518394943e-009 0
		 5.7092389712933093e-017 -0.99999999999999978 4.8067527060105865e-010 0 -3.2896189556371909e-009 -4.8067503279003629e-010 -0.99999999999999978 0
		 126.36100003618581 126.75800000528737 10.999999523391033 1;
	setAttr ".pm[27]" -type "matrix" 1 -8.4847964496361404e-017 -3.2896188518394943e-009 0
		 5.7092389712933093e-017 -0.99999999999999978 4.8067527060105865e-010 0 -3.2896189556371909e-009 -4.8067503279003629e-010 -0.99999999999999978 0
		 135.8020000361858 126.75800000528737 10.999999492333743 1;
	setAttr ".pm[28]" -type "matrix" 9.1750835678236238e-019 -1.333412246424621e-014 1 0
		 0.0082641805874092058 0.99996585107653491 1.3443027630456607e-014 0 -0.99996585107653491 0.0082641805874092613 1.0309493213268315e-019 0
		 -35.780808372896772 -64.141751511539809 -8.6620134922198469e-013 1;
	setAttr ".pm[29]" -type "matrix" 2.5145345339449332e-016 -1.3331751343845001e-014 1 0
		 -0.010525732662543365 0.99994460294154131 1.3443027630456607e-014 0 -0.99994460294154131 -0.01052573266254331 1.0309493213267083e-019 0
		 -48.845038014684029 -65.070992644085209 -8.6303094481119513e-013 1;
	setAttr ".pm[30]" -type "matrix" -2.7712841843227736e-016 -1.3331242349197402e-014 1 0
		 0.029113867034799935 0.99957610152818299 1.344302763045661e-014 0 -0.99957610152818299 0.029113867034799991 1.0309493213269549e-019 0
		 -62.587264700202105 -62.639655753529183 -8.577308512265994e-013 1;
	setAttr ".pm[31]" -type "matrix" 1 -1.3720035861656432e-014 1.3094890015548896e-014 0
		 1.3828136242123461e-014 1 -1.0408340855842733e-016 0 -1.3211550898107232e-014 1.5959455978987138e-016 1 0
		 -1.8463749852881429e-012 -64.789253867934988 72.890833985207848 1;
	setAttr ".pm[32]" -type "matrix" 0.99660493467276046 -0.082276938663268184 -0.0030182031248876915 0
		 0.082324870834938224 0.99633720695757999 0.023125433487366537 0 0.0011044581988794114 -0.023295394312366376 0.99972801540014755 0
		 27.277845361756015 -56.405865635523277 -4.6261823718286683 1;
	setAttr ".pm[33]" -type "matrix" 0.99666193237819534 -0.081562045677915126 0.0035532032019749602 0
		 0.081050058658485524 0.98330934494022249 -0.16289143668310582 0 0.0097918608863149167 0.16263568138039017 0.98663760044016102 0
		 27.277829285323488 -28.204350787160763 0.37837626783711198 1;
	setAttr ".pm[34]" -type "matrix" 0.99896747785186535 0.045141397317542409 0.0051217616600364013 0
		 0.045265416232385176 -0.99859787961504076 -0.027446619494090357 0 0.003875601577999546 0.02765011892495611 -0.99961014932614811 0
		 27.402944252512977 2.9624851304643394 0.18823478446720734 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 35 ".ma";
	setAttr -s 35 ".dpf[0:34]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 35 ".lw";
	setAttr -s 35 ".lw";
	setAttr ".mmi" yes;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
	setAttr -s 35 ".ifcl";
	setAttr -s 35 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "7B9395D6-4FC9-0B20-A7A1-95ABFC2D364D";
	setAttr -s 39 ".vl[0].vt";
	setAttr ".vl[0].vt[485]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[486]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[487]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[488]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[489]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[490]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[491]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[492]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[493]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[494]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[495]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[496]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[497]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[498]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[499]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[500]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[501]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[502]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[503]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[504]" -type "float3" 0 5.7220459e-006 0 ;
	setAttr ".vl[0].vt[1021]" -type "float3" 0 0 -2.7994158 ;
	setAttr ".vl[0].vt[1068]" -type "float3" 0 0 0.072037086 ;
	setAttr ".vl[0].vt[1109]" -type "float3" 0 0 -2.7994158 ;
	setAttr ".vl[0].vt[1155]" -type "float3" 0 0 0.072037086 ;
createNode objectSet -n "skinCluster1Set";
	rename -uid "E191CBFD-4C53-5CB0-DCEA-61BA683FFB0E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "79B34977-4E2D-2B0E-85E5-E49A6A348E7F";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "9FBDD29D-466F-D98C-7E2C-B2A0969C8159";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "9020CF75-4110-B2B1-4097-FA907C5447F2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "8723DFFC-4302-B436-7C56-2E8FB8829BC6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "CA0E92FB-423E-E224-30B1-20B17935DFE8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "5AD58F4E-4D86-A4A1-2F0A-84B28EB05DA7";
	setAttr -s 36 ".wm";
	setAttr -s 37 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0.044966456297106376 0 0 70.345101742659324
		 1.2864740396617693 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49242725467020138 -0.50745975097338369 0.49242725467020138 0.50745975097338381 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0.023136675269184812 -0.0049372468303633234
		 0.045075054747234486 0 -16.312360018863615 -1.7514729347201463 -31.840120886374894 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49861172532310205 -0.50138443072189587 -0.51691540157172722 -0.48249193528797973 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -0.051079056616359753 2.7096457115241306e-006
		 0.00041335815658827133 0 1.4695884242111853e-014 28.580983980026566 -2.1610254901129062e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11855277422156822 -0.0043616611573140378 -0.00042565401168433723 0.99293808188375021 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.5604911890097964e-016
		 24.266279886146719 3.5527136788004994e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.99526617892625158 -0.018088771882603903 -0.0017351963011802763 0.095472606076895103 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.0153510372180818 11.378724740551675
		 -1.2632922197832378e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99619265395318102 0.087179104203460325 2.4695830296340546e-017 2.8219841152614601e-016 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.412695657507179 3.5527136788005009e-015
		 -3.6443505230259577e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.45408201097546219 -0.54204199773493589 -0.4540820109754618 0.54204199773493622 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.9757429359778062e-015
		 16.562032751847141 -1.8024944102128424e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.092109827880603637 0 0 0.99574885368139165 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.7418468138616651e-015
		 18.150589497607637 9.5718211261126851e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.15450291714012074 0 0 0.98799233225526251 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4849755384606327e-014
		 16.691059036395842 -4.7861454426124982e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.27399496681111651 0 0 0.96173112571143038 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.0962628814328018e-013
		 98.969546865081739 2.0995825086789836e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.036837572872760405 0 0 0.99932126627268569 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 19.072722014690605 10.695494429880441
		 6.1647456512359113 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.23831935079085612 -0.0054279771745589433 -0.022113734831778878 0.97091987662948132 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 34.941105404255623 1.1102230246251565e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.030728401253084646 0.99952777117818459 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 41.179798937079021 1.3289369604763124e-013
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.064539965278175404 0.9979151230850708 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 25.942526808298052 -2.1509636354702568
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.030387920917397497 0.99953818049253029 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.286729459470076 2.334077447477187
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.11196893869797392 0.99371170706943435 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.32928864809875 1.5765166949677223e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.069993584883845633 0.99754744151599517 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.6217918818163133 -7.4601640755848893
		 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.087371762791268501 0.99617577518565781 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.2418485907566943 -2.3314683517128287e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.045314421171943058 0.99897277402031925 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.4413047744320693 2.6807053778163101e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -19.072699999999976 10.695852192111019
		 6.1645587605184673 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.97091987662948143 0.022113734831777823 -0.0054279771745590673 0.238319350790856 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 -34.941140865416514 0.00018198923967815972
		 -1.5432905812436238e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.2898690123796726e-008 3.9654338497870128e-010 0.030728401253083733 0.99952777117818459 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -41.17980949132896 0.00064641486778782564
		 -1.6696961691140422e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.27705960425161e-008 -8.2593579964749724e-010 0.064539965278175793 0.99791512308507058 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -25.942468667742034 2.1504457824419774
		 8.6247065633493204e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.030387920917396536 0.99953818049253029 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 -12.287147748961388 -2.3336257615980145
		 4.1245107165459165e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.11196893869797464 0.99371170706943435 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.329150392697898 -0.00040623663429073531
		 3.2953088073221994e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.069993584883845397 0.99754744151599528 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6215571779933384 7.4607451865062302
		 -11.000000010206158 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.087371762791269167 0.99617577518565781 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.2416827187029327 -0.00063375022230616196
		 2.3409889138292783e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.045314421171942419 0.99897277402031925 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 -9.4409999999999883 0
		 3.1057290073022159e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.3648074191452793 36.61998107502977
		 -4.0656346150835543e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.71524909446966844 0.69886961077179433 4.6982002201306555e-015 4.8083124538418841e-015 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.278232123045635 1.8179902028236938e-015
		 -3.170404410789535e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.0093949626319637901 0.99995586636468314 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.21042045402813 1.2531642390456454e-014
		 -5.3000935845958775e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.019820656254632852 0.99980355149681066 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.158936694264902 1.3211653993039363e-014
		 6.8475657689151129e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.010294397406079826 -0.70703184184450929 -0.010294397406079689 0.70703184184451862 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0.023102787573091772 -0.0049347691867527984
		 0.045075083649588114 0 -16.312409052457816 -1.7514690828118455 31.8401 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50138443072189687 0.49861172532310105 -0.48249193528798029 0.51691540157172655 1
		 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 -0.051005197959583616 2.7714651819513017e-006
		 0.00041322440727254101 0 2.6301211565993299e-005 -28.580922088017541 8.9690960693999955e-006 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.11855277422156781 -0.0043616611573120681 -0.00042565401168365526 0.99293808188375032 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.0418004040910773e-005
		 -24.266292385404647 -2.138758599001811e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.99526617892625169 -0.018088771882605308 -0.0017351963011803986 0.095472606076894437 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 -9.948241714141659e-005
		 8.6746803276582796e-005 -3.1597554872208879e-020 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 17.749437457676549 -137.04930614281255
		 -212.50599999999997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 36 ".m";
	setAttr -s 37 ".p";
	setAttr ".bp" yes;
createNode animCurveTA -n "spine3Ctrl_rotateX";
	rename -uid "82152EC6-4114-B494-6EBE-AE9ABFAA0DB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 27.590852109998412;
createNode animCurveTA -n "spine3Ctrl_rotateY";
	rename -uid "B7333534-4987-FC04-BAE0-A889B08396D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTA -n "spine3Ctrl_rotateZ";
	rename -uid "402D28E8-4FD5-0125-0599-F9A9CF019042";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "0327DAAF-408E-8F3A-C7C1-9FA94C916DC6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[196:219]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 140.73923492431641 3.1787080764770508 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 94.579612731933594 47.443948745727539 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "6E7BDEB6-4943-6E27-ECF8-1AAC592AF71E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[185]" "e[187]" "e[190]" "e[192]" "e[194]" "e[196:197]" "e[199]" "e[201]" "e[376]" "e[378]" "e[381]" "e[383]" "e[385]" "e[387:390]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "D7B822A3-45E1-618B-DC82-748FC39BFD08";
	setAttr ".uopa" yes;
	setAttr -s 2106 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.34420902 -0.019621443 0.10402545
		 -0.042964455 0.11400297 -0.03756069 0.34169924 -0.011624292 0.12251644 -0.030611817
		 0.33504251 -0.0057783723 0.12902875 -0.02204201 0.32677048 -0.0043213814 0.13360502
		 -0.012348011 0.32003427 -0.0078137517 0.30500177 -0.025734339 0.3173933 -0.0149277
		 0.31021184 -0.034496207 0.31981209 -0.022965897 0.31841883 -0.040742014 0.326758
		 -0.028681029 0.32857567 -0.044374648 0.33493903 -0.030179273 0.33947358 -0.045799609
		 0.3416217 -0.026711125 0.33082795 -0.017262416 0.10655334 -0.048440274 0.1091093
		 -0.054965965 0.12177894 -0.049039457 0.11778304 -0.042796466 0.13250501 -0.041503433
		 0.12717558 -0.035560165 0.14157046 -0.030119095 0.13458098 -0.025836591 0.28937724
		 -0.021050502 0.29615122 -0.018018918 0.29303193 -0.036043379 0.29957354 -0.030384574
		 0.30076113 -0.046958853 0.30561554 -0.040110502 0.31060916 -0.05314111 0.31466138
		 -0.04647145 0.32272077 -0.057145514 0.32589626 -0.050301883 0.094819687 -0.060299806
		 0.094263814 -0.053217769 0.11312249 -0.065651245 0.12602447 -0.057723202 0.13637461
		 -0.048284311 0.14513434 -0.034172196 0.14871974 -0.016402127 0.28924894 -0.043031055
		 0.29786667 -0.053381525 0.30812508 -0.061576255 0.31987566 -0.068150707 0.33597067
		 -0.073375143 0.11594078 -0.075731285 0.11794612 -0.08547134 0.13387854 -0.078697719
		 0.13075198 -0.067461587 0.14669795 -0.074136771 0.14263912 -0.060545154 0.28536591
		 -0.061568402 0.28216743 -0.076261438 0.29019147 -0.078731306 0.29321802 -0.066014014
		 0.3013595 -0.082581706 0.30489278 -0.072212942 0.31514657 -0.08774627 0.31757197
		 -0.078014679 0.330917 -0.093939327 0.099401616 -0.082304664 0.15566982 -0.042778287
		 0.15427913 -0.031902675 0.15189822 -0.014742374 0.2796669 -0.044231508 0.15977843
		 -0.070568837 0.15770043 -0.057082541 0.27729627 -0.060302608 0.27488905 -0.074519701
		 0.12234245 -0.099544115 0.13736553 -0.093409576 0.14999844 -0.089629717 0.2790671
		 -0.092233576 0.28718349 -0.094347022 0.2984575 -0.097583197 0.31131801 -0.10264415
		 0.3256819 -0.10932314 0.16275539 -0.086760826 0.27168334 -0.090691246 0.1291274 -0.11449732
		 0.14225484 -0.10908031 0.15351458 -0.10633409 0.27611917 -0.10952675 0.28356099 -0.11124432
		 0.29380649 -0.11381872 0.30508971 -0.11838481 0.31723967 -0.12460653 0.16633172 -0.10380475
		 0.26775724 -0.10796584 0.13537385 -0.1321262 0.14680012 -0.12730865 0.15745778 -0.12394474
		 0.27402312 -0.12179528 0.28079352 -0.12409259 0.28988862 -0.12737545 0.29846117 -0.13223225
		 0.21693367 -0.13730977 0.17012407 -0.12014996 0.26499766 -0.1194957 0.22292928 -0.0013457239
		 0.22748111 0.0057010502 0.19542719 -0.023913492 0.20711441 -0.026192676 0.23546319
		 0.0095814914 0.18499483 -0.01998977 0.24385132 0.0088013858 0.17620511 -0.013953388
		 0.24946123 0.0036491305 0.26580334 -0.0090425164 0.25018108 -0.0039222389 0.26000544
		 -0.018059092 0.24583687 -0.011069864 0.25252542 -0.024695802 0.23719449 -0.014629468
		 0.24271508 -0.028076787 0.22901402 -0.013950288 0.23134972 -0.02872109 0.22352649
		 -0.0088575631 0.21930988 -0.027762417 0.23649387 -0.0026041865 0.2054912 -0.032047551
		 0.19274373 -0.029985417 0.19009967 -0.037096586 0.20406295 -0.0388682 0.18157543
		 -0.026137758 0.17773928 -0.033497069 0.17175288 -0.019362148 0.16604038 -0.025789719
		 0.27081817 -0.013475329 0.15782751 -0.013217703 0.2641359 -0.024197344 0.26904851
		 -0.031734947 0.25568837 -0.031371217 0.25874582 -0.03932659 0.24517511 -0.03443196
		 0.24765182 -0.041762676 0.23294421 -0.034739133 0.23479877 -0.041696992 0.21934579
		 -0.033605631 0.2196544 -0.040387478 0.18792917 -0.046606239 0.20220937 -0.049930599
		 0.17560543 -0.041203771 0.16363998 -0.030878846 0.27956131 -0.020081285 0.2708658
		 -0.039650206 0.25989389 -0.046271089 0.24800831 -0.050250087 0.23524754 -0.052252118
		 0.21888019 -0.051940564 0.20192368 -0.060020514 0.1859187 -0.057270117 0.18633594
		 -0.0687804 0.20280869 -0.069474854 0.1728275 -0.054938711 0.17317577 -0.069133885
		 0.26939777 -0.058448829 0.26073369 -0.05965481 0.25937825 -0.072531521 0.26755616
		 -0.073330559 0.24811232 -0.061058946 0.24801493 -0.071774818 0.23488165 -0.061694063
		 0.23409815 -0.071086474 0.21871059 -0.061243124 0.21844737 -0.070255108 0.18826337
		 -0.08355955 0.20365913 -0.083548881 0.1755373 -0.084724106 0.25618768 -0.087999023
		 0.26432657 -0.089238919 0.24496876 -0.08642561 0.23191567 -0.085499294 0.21736197
		 -0.084555753 0.19028987 -0.099620946 0.2041389 -0.099226601 0.17906 -0.10137401 0.25199056
		 -0.10479829 0.25946039 -0.10616764 0.24172474 -0.10288054 0.22979373 -0.10177944
		 0.21653478 -0.10059483 0.19468454 -0.11775596 0.20746136 -0.11721338 0.18337347 -0.11887385
		 0.24831396 -0.11758418 0.25566679 -0.11816286 0.23825486 -0.11671738 0.22768897 -0.11695366
		 0.21711761 -0.11730383 0.16398944 -0.0096574873 0.27662432 -0.018704863 0.15538611
		 -0.015190139 0.28267315 -0.022502247 0.16900368 -0.0061262548 0.17960568 0.0001167506
		 0.25678399 0.00039070845 0.21804695 -0.015495211 0.2091658 -0.014305711 0.22722299
		 -0.015862152 0.25255498 -0.00583601 0.18483301 -0.0047822595 0.19149579 -0.0091190785
		 0.19997729 -0.012338325 0.11840835 -0.12164886 0.10913768 -0.10641429 0.10247412
		 -0.091837682 0.33853588 -0.052282009 0.33726409 -0.059889831 0.13920261 -0.014100075
		 0.14590074 -0.015390292 0.33379176 -0.083987899 0.28625488 -0.021319408 0.097236417
		 -0.072342969 0.093533956 -0.047259118 0.301963 -0.015339211 0.092776917 -0.034801554
		 0.34260458 -0.033100482 0.31294066 -0.0088489056 0.12202857 -0.0095106959 0.099830829
		 -0.031687658 0.3349317 -0.032075357 0.31521359 -0.016024532 0.11853459 -0.015731856
		 0.11372009 -0.021879178 0.10714807 -0.027405996 0.16704406 0.035357822 0.2696209
		 0.027185302 0.26962093 0.553913 0.17664517 0.5424993 0.37219793 0.035357822 0.36259675
		 0.5424993 0.085824721 0.067237012 0.10627412 0.52507102 0.45341718 0.067237012 0.43296784
		 0.52507102 0.5306527 0.13462916 0.51446086 0.4826034 0.0085892398 0.13462916 0.024781086
		 0.4826034 0.42923281 0.4047929 0.44655654 0.39842027 0.44982597 0.41398051 0.44110852
		 0.42381376;
	setAttr ".uvtk[250:499]" 0.46378797 0.39658329 0.459782 0.41696909 0.45577607
		 0.43735468 0.41173697 0.39008003 0.41868961 0.3782469 0.42942595 0.37900501 0.39949611
		 0.37239489 0.41167223 0.36435157 0.42184287 0.35794821 0.3002657 0.37730473 0.28755578
		 0.35514891 0.31581259 0.33799002 0.32679313 0.36021915 0.28384611 0.32461542 0.30553821
		 0.31562969 0.32723036 0.30664375 0.33450821 0.32906485 0.34376937 0.35056755 -0.64610457
		 -0.75580287 -0.63343275 -0.73633629 -0.64822471 -0.72665715 -0.65984261 -0.74499846
		 -0.62119836 -0.71767569 -0.63600028 -0.70800489 -0.64935589 -0.70046544 -0.6610412
		 -0.71827692 -0.67272651 -0.7360884 0.40076265 0.49677861 0.37391976 0.48242381 0.39972627
		 0.46272877 0.41654 0.48061642 0.35803047 0.4624919 0.38328761 0.44421047 0.39834961
		 0.43238831 0.41465703 0.44923908 0.43231735 0.46445447 0.34255525 0.44196993 0.36759883
		 0.42443135 0.32768673 0.42088753 0.35283893 0.40366518 0.36817271 0.39331803 0.38272378
		 0.41357246 0.31361625 0.39927509 0.33918592 0.38218614 0.35508925 0.37215081 0.35291666
		 0.32102758 0.36160728 0.34099007 0.34510732 0.30149186 0.3629843 0.29633981 0.36941111
		 0.31445158 0.38204432 0.33247784 -0.67945611 -0.8021363 -0.66072339 -0.77854967 -0.67131221
		 -0.76438445 -0.68270779 -0.78429258 -0.67934299 -0.75126868 -0.68595934 -0.76644903
		 0.42891839 0.43591699 0.44404668 0.45090464 0.41377273 0.41994113 0.3985925 0.40198877
		 0.3843607 0.38247237 0.37206033 0.36180559 0.38825899 0.35420966 0.38236499 0.30990964
		 0.39544407 0.31890336 0.38385814 0.29959995 0.40473205 0.30286008 -0.53868335 -0.82408124
		 -0.55198914 -0.81580448 -0.56522143 -0.83403981 -0.54998767 -0.83619112 -0.5673722
		 -0.80749679 -0.58243436 -0.82995629 -0.59663409 -0.85652661 -0.57896316 -0.85241377
		 -0.56129181 -0.84830093 -0.51527274 -0.78844708 -0.52865136 -0.78091574 -0.53977525
		 -0.79784632 -0.52697808 -0.80626416 -0.54394114 -0.77291989 -0.55454791 -0.78812814
		 0.40184444 0.35242206 0.40573141 0.34248048 0.41530073 0.33231473 0.42771077 0.32203707
		 0.45068961 0.34121421 0.43377271 0.35082462 -0.60360599 -0.82200825 -0.62223315 -0.85037678
		 -0.58670878 -0.79627407 -0.60771942 -0.78313518 -0.62553442 -0.81026947 -0.64783204
		 -0.84422696 -0.57327169 -0.77580845 -0.56195617 -0.76233816 -0.57880867 -0.74452615
		 -0.5939759 -0.76219976 0.44269848 0.37511396 0.45723888 0.36889878 -0.64501899 -0.79481411
		 -0.66364431 -0.82318163 -0.62812388 -0.76908004 -0.61468959 -0.74861288 -0.6024434
		 -0.72994405 0.31765947 0.65810454 0.32393444 0.65362614 0.33866274 0.67395264 0.33238491
		 0.67844564 0.35332495 0.69504762 0.34703448 0.69955814 0.33020869 0.64914387 0.34493878
		 0.66945636 0.37755287 0.64566129 0.3648895 0.62358224 0.38222998 0.61080116 0.39385992
		 0.63376373 0.40547341 0.65691757 0.39018321 0.66812342 0.35960272 0.69053513 0.35678643
		 0.60105926 0.37708619 0.58669662 0.3099089 0.63425398 0.31618688 0.62978411 0.29646
		 0.61568201 0.30274156 0.61122823 0.34897169 0.57893801 0.37208673 0.56279296 0.30363071
		 0.63871974 0.29017934 0.62013108 0.37092203 0.539617 0.34386176 0.55752069 0.28346288
		 0.59775519 0.28974146 0.59332812 0.27047545 0.57979828 0.27674943 0.57540447 0.33875605
		 0.53609151 0.36975932 0.51643515 0.27718481 0.60217929 0.26420164 0.58419192 0.34627181
		 0.50101256 0.31862387 0.51960123 0.25705594 0.56113589 0.26332802 0.55677843 0.24310054
		 0.5415659 0.249368 0.53723741 0.30369923 0.4998647 0.33086482 0.48117837 0.25078464
		 0.56549704 0.23683403 0.545901 0.31560642 0.4606199 0.28865761 0.47927001 0.22850545
		 0.5208863 0.23476006 0.51657003 0.21366645 0.49959052 0.21991099 0.49527043 0.27379888
		 0.45807898 0.30074281 0.43948326 0.22225006 0.52521008 0.20741929 0.50391775 0.2865192
		 0.41791466 0.25942215 0.43655446 0.19897945 0.47817305 0.20522799 0.47383389 0.18477012
		 0.45718575 0.19103591 0.4528223 0.24565084 0.41506341 0.27295825 0.39618406 0.19272782
		 0.4825168 0.17850219 0.46155044 0.26008183 0.37456125 0.23260786 0.39397359 0.1713648
		 0.43718046 0.17765991 0.43279839 0.15860887 0.41802844 0.16493873 0.41363835 0.22439243
		 0.36912689 0.25411928 0.34687114 0.16506974 0.44156176 0.1522813 0.42241645 0.23246162
		 0.33774275 0.20587827 0.35690153 0.14634727 0.39960003 0.15271141 0.39521915 0.13409719
		 0.3812114 0.14048807 0.37684673 0.18736605 0.34469956 0.21080504 0.32862607 0.13998802
		 0.40398055 0.12771201 0.38557836 0.19400091 0.31289157 0.17192693 0.32786995 0.12137448
		 0.36217892 0.12777901 0.3578268 0.10807779 0.34233001 0.11449071 0.33798468 0.15619813
		 0.31062919 0.17705186 0.29695138 0.11497515 0.36653423 0.1016691 0.34667882 0.15536214
		 0.28084147 0.13708478 0.29294279 0.094105802 0.32149214 0.10052987 0.31714538 0.079836808
		 0.30012843 0.086258017 0.29578963 0.11781581 0.27499831 0.13359472 0.26460257 0.087685369
		 0.32584298 0.073414437 0.30448121 0.19824822 0.74227977 0.18456127 0.7232275 0.17087422
		 0.70417506 0.15811513 0.6863392 0.14535581 0.66850328 0.13168612 0.64924175 0.11801635
		 0.62998003 0.10304608 0.60861641 0.08807575 0.58725274 0.073261134 0.56577289 0.058446519
		 0.54429299 0.045150839 0.52476227 0.031855188 0.5052315 0.019570084 0.48706281 0.0072850604
		 0.46889412 -0.0058431402 0.44945326 -0.01897151 0.43001223 -0.033414371 0.40868324
		 -0.047857173 0.38735455 0.22831108 0.7840898 0.21327971 0.76318485 0.47538245 0.046652187
		 0.49018413 0.056155257 0.48649949 0.062489264 0.47480595 0.062700562 0.50498569 0.065658323
		 0.49098045 0.070930593 0.47878838 0.075672559 -0.49372357 -0.70032865 -0.50822383
		 -0.67620456 -0.5165565 -0.67391598 -0.51846099 -0.68484843 -0.52272379 -0.6520803
		 -0.52890301 -0.66226649 -0.53527123 -0.67148864 -0.54310954 -0.65373117 -0.55349654
		 -0.6585843 -0.54805315 -0.64592755 -0.57338285 -0.63977468;
	setAttr ".uvtk[500:749]" -0.55767381 -0.70134634 -0.54557145 -0.68465352 -0.56427205
		 -0.6714927 -0.57596725 -0.68948865 -0.58268487 -0.66094172 -0.59466863 -0.67766404
		 -0.56944525 -0.72115219 -0.58911359 -0.70960402 -0.60789168 -0.69734651 -0.59705222
		 -0.65761471 -0.60938406 -0.66959286 -0.59756202 -0.64897966 -0.62174129 -0.65818465
		 -0.62270987 -0.68768644 -0.63554847 -0.67932516 -0.53997153 -0.71160126 -0.51684767
		 -0.70596504 -0.53034186 -0.69581032 -0.54417992 -0.70951706 -0.53553045 -0.76294315
		 -0.55142355 -0.75758958 -0.53114134 -0.75681376 -0.5541954 -0.74685884 -0.50137281
		 -0.76731527 -0.51868892 -0.76576269 -0.4874728 -0.74618351 -0.50930703 -0.75149858
		 0.36418772 0.015338935 0.37182605 -0.0093010291 0.40286481 -0.0098863468 0.400195
		 0.013317322 0.37946469 -0.03394087 0.40830195 -0.033433039 0.43713897 -0.032925386
		 0.43106037 -0.0091836676 0.4287864 0.01235888 0.41005367 0.145463 0.41169566 0.12214373
		 0.43183535 0.11460881 0.43517196 0.13485065 0.41333765 0.098824374 0.42685705 0.094882838
		 0.44469237 0.08915823 0.45137656 0.10654806 0.46029025 0.12423792 0.39802259 0.080273442
		 0.41859567 0.07618802 0.38270777 0.06172245 0.4097603 0.057010286 0.43386269 0.053423278
		 0.43878639 0.071724348 0.37344772 0.038530696 0.40306008 0.035834718 0.43012482 0.033430982
		 0.45356989 -0.0059043393 0.45099473 0.012801981 0.4579826 -0.024558565 0.47882605
		 -0.016191861 0.4701609 -0.0010259375 0.46794397 0.013893103 0.46972096 0.097435884
		 0.47804701 0.11233859 0.46268058 0.082251601 0.48449033 0.088362567 0.49580377 0.1004393
		 0.45821249 0.066503696 0.45509171 0.049765993 0.45209378 0.031612087 0.46864414 0.029301088
		 0.48060048 0.0044737216 0.48075724 0.014877116 0.48707706 -4.8778951e-005 0.49532825
		 0.016094543 0.5003947 0.083048694 0.49330646 0.080418102 0.47945261 0.02542172 0.48535526
		 0.031373311 -0.55195606 -0.72868389 -0.5355565 -0.73420751 0.39957035 0.59802043
		 0.41016698 0.62186605 0.42076361 0.64571178 0.14937355 0.25420672 0.17363964 0.26874018
		 0.19790567 0.28327376 0.21607487 0.29791319 0.23424406 0.31255248 0.25904503 0.31858411
		 0.39798218 0.5217132 0.39520174 0.54664785 0.39738601 0.57233417 -0.090670474 0.16581769
		 -0.10370762 0.18853374 -0.14223209 0.16444905 -0.10935289 0.14768957 -0.1207218 0.22039406
		 -0.1764771 0.18386556 -0.21266359 0.12372695 -0.16437894 0.12986188 -0.12587997 0.12297653
		 -0.26213405 0.061002962 -0.2342706 0.039694089 -0.20450538 0.079687111 -0.27637321
		 -0.0089885648 -0.24419135 -0.011333441 -0.21912822 -0.0134631 -0.20820826 0.015108397
		 -0.18735495 0.044646192 -0.17015225 0.096158408 -0.13567704 0.096741341 -0.16173753
		 0.06403666 -0.13913253 0.074009545 -0.13973051 0.037522089 -0.11911035 0.059815429
		 -0.16233671 0.013607865 -0.12970185 -0.013449317 -0.11064211 0.015250271 -0.093028821
		 0.041535307 -0.18163162 -0.014985731 -0.20049116 -0.042601224 -0.16810697 -0.071803279
		 -0.14931479 -0.043107178 -0.11111242 -0.062696457 -0.092426307 -0.034102287 -0.12898907
		 -0.090215869 -0.095176928 -0.095546223 -0.073031537 -0.07619264 -0.054124184 -0.046721261
		 -0.079458453 -0.0040760399 -0.066586114 0.023225641 -0.046657152 -0.015396452 -0.046007164
		 0.0092025325 -0.013439097 -0.012208885 -0.02578602 0.020244991 -0.014904834 -0.05119611
		 0.030420542 -0.043723848 0.017384009 0.0043581198 -0.003841199 0.037704866 -0.041016258
		 -0.091921382 -0.08485201 -0.11906555 -0.072872072 -0.14902458 -0.01274737 -0.11162952
		 0.041106604 0.036240052 0.013518305 0.060657743 0.072558694 0.013610788 0.085694455
		 0.078491695 0.049607031 0.080611266 0.023138883 0.083497204 0.032964706 0.12799697
		 0.0059200246 0.11058111 0.067761533 0.14470503 0.01909274 0.19951601 -0.0044205263
		 0.1660551 -0.023741551 0.13834932 -0.052847512 0.18872453 -0.059567191 0.15770419
		 -0.050171889 0.22713114 -0.20767361 -0.12925948 -0.14131008 -0.15503788 -0.13758597
		 -0.12086716 -0.18715772 -0.099231385 -0.25654191 -0.07643535 -0.22575369 -0.061299264
		 -0.012106694 0.088374995 -0.041392393 0.113768 -0.058751382 0.089572676 -0.029008098
		 0.065375589 -0.075075336 0.13267693 -0.091531821 0.10918263 -0.10480372 0.084175132
		 -0.075946309 0.065539621 -0.048427708 0.044989485 0.056392662 -0.66395783 0.031946503
		 -0.6580689 -0.02550035 -0.78216672 -0.0051922426 -0.79699516 0.0071035679 -0.66277117
		 -0.037989624 -0.76018274 -0.014394164 -0.67971718 -0.038979448 -0.73282689 0.080878533
		 -0.68071997 0.023431687 -0.80481809 0.096852779 -0.70431721 0.051759452 -0.80172873
		 0.075356558 -0.78575468 0.099942058 -0.7326448 0.092118822 -0.76126903 -0.030453272
		 -0.70452851 -0.26959848 -0.21811318 -0.28031006 -0.24285385 -0.25202525 -0.26855826
		 -0.24281695 -0.22241503 -0.22066613 -0.29461199 -0.20572026 -0.2272172 -0.27740943
		 -0.30268744 -0.26565361 -0.35170534 -0.29818964 -0.26792026 -0.31130171 -0.35994533
		 -0.33912942 -0.40343529 -0.30827633 -0.42261344 -0.38491949 -0.43174782 -0.37085226
		 -0.4620603 -0.37249643 -0.38720229 -0.39616865 -0.40825194 -0.35152891 -0.35617667
		 -0.32001069 -0.28702611 -0.30793881 -0.32063296 -0.34213686 -0.32425606 -0.3407622
		 -0.29870501 -0.36184996 -0.28451401 -0.37588561 -0.31265831 -0.39076328 -0.34332037
		 -0.40812033 -0.29264605 -0.42893317 -0.32162708 -0.38911587 -0.26595119 -0.41138747
		 -0.37249029 -0.43122345 -0.40087977 -0.45047152 -0.35149521 -0.47137907 -0.38021562
		 -0.46260089 -0.29309136 -0.48344839 -0.32167178 -0.5035516 -0.34907418 -0.51047885
		 -0.28973293 -0.52110809 -0.31827688 -0.48886257 -0.26061675 -0.41654307 -0.24704924
		 -0.43826991 -0.26952469 -0.46125805 -0.24190223 -0.43766898 -0.23225628 -0.43438503
		 -0.2086224 -0.47034597 -0.2085586 -0.50757241 -0.2242683 -0.46559665 -0.17263049
		 -0.51694787 -0.1776268 -0.42551672 -0.18096684 -0.53744882 -0.2644875 -0.5476737
		 -0.31689668 -0.56689972 -0.24432927 -0.58108342 -0.31627387 -0.40964693 -0.15573883
		 -0.44341028 -0.1379666 -0.47685775 -0.1157961 -0.40354732 -0.1134692 -0.41882762
		 -0.079291292 -0.39105058 -0.13804881 -0.35850549 -0.14480034 -0.35154885 -0.11222069
		 -0.34811944 -0.072392084 -0.3009823 -0.13448319 -0.27718991 -0.099443145;
	setAttr ".uvtk[750:999]" -0.32073659 -0.16335288 -0.28885794 -0.19095972 -0.26127407
		 -0.17308128 -0.22505341 -0.15641218 -0.51252949 -0.43960008 -0.49096358 -0.40872183
		 -0.53008997 -0.36863598 -0.56182325 -0.38476831 -0.44007489 -0.43220297 -0.44345129
		 -0.46757281 -0.37340724 -0.17040038 -0.33807695 -0.18945989 -0.38948977 -0.19520143
		 -0.35514998 -0.21514201 -0.30741531 -0.21515477 -0.32414043 -0.23970622 -0.37212652
		 -0.2406064 -0.34349853 -0.26172763 -0.40211809 -0.22148369 0.16377796 0.22268063
		 0.24710065 0.34329966 0.22401287 0.35326219 0.14628901 0.24074805 0.19873221 0.35285538
		 0.13772221 0.26453644 0.17466451 0.33981428 0.14140125 0.29166192 0.19065346 0.21010143
		 0.2683773 0.32261556 0.2190937 0.20832567 0.28010368 0.2966446 0.2450648 0.2200519
		 0.27832806 0.26820424 0.2657488 0.24132869 0.15461792 0.31809703 0.33242458 0.37440911
		 0.34974828 0.38835612 0.35301775 0.39692098 0.34430021 0.39224792 0.36697969 0.40382209
		 0.36297372 0.4072904 0.35896781 0.4107585 0.31492868 0.35283843 0.32188123 0.35515308
		 0.33261767 0.36546275 0.30268782 0.33513069 0.31486395 0.34367207 0.32503465 0.35091817
		 0.20345746 0.2440605 0.19074748 0.22433193 0.21900435 0.24468715 0.22998486 0.26282418
		 0.18703784 0.21005599 0.20872994 0.2271639 0.23042209 0.24427174 0.23769997 0.25901386
		 0.24696113 0.27528575 -0.67078149 -0.63711405 -0.65810955 -0.6183728 -0.67290151
		 -0.6287818 -0.68451941 -0.64613903 -0.64587533 -0.60032606 -0.66067708 -0.61074716
		 -0.67403281 -0.62057006 -0.68571812 -0.63780284 -0.69740343 -0.65503561 0.30395436
		 0.38033691 0.27711153 0.350151 0.30291802 0.36731684 0.31973165 0.389373 0.26122215
		 0.32823583 0.28647935 0.34538814 0.30154136 0.35529113 0.31784874 0.37650687 0.33550906
		 0.39840925 0.24574696 0.30649909 0.27079061 0.32371464 0.23087837 0.28513148 0.25603059
		 0.30256051 0.27136439 0.31323984 0.28591555 0.33401746 0.21680798 0.2643227 0.24237768
		 0.2821894 0.25828099 0.29351169 0.2561084 0.27338621 0.264799 0.2885794 0.24829909
		 0.25916833 0.26617599 0.27406472 0.2726028 0.2864857 0.28523594 0.30468109 -0.70413315
		 -0.68470538 -0.68540037 -0.65883732 -0.69598901 -0.66372734 -0.70738471 -0.68143117
		 -0.70401978 -0.66659635 -0.7106362 -0.67815715 0.33211014 0.38513032 0.34723842 0.40458384
		 0.31696445 0.36531079 0.30178416 0.34475935 0.28755236 0.32454145 0.2752521 0.30572301
		 0.29145068 0.31818482 0.28555667 0.29699367 0.29863578 0.31240928 0.28704989 0.29474145
		 0.30792379 0.31541818 -0.56336027 -0.56081051 -0.576666 -0.57032585 -0.58989847 -0.58915555
		 -0.57466459 -0.57566905 -0.59204918 -0.5817731 -0.60711128 -0.60380918 -0.62131101
		 -0.62649345 -0.60363996 -0.60851061 -0.58596873 -0.59052759 -0.53994966 -0.52630365
		 -0.55332822 -0.53615069 -0.56445205 -0.55254674 -0.55165493 -0.54355711 -0.56861818
		 -0.54762125 -0.57922482 -0.56292379 0.30503613 0.33025831 0.30892318 0.33037522 0.31849244
		 0.3357273 0.33090246 0.34369671 0.3538813 0.37197527 0.33696449 0.35955483 -0.62828279
		 -0.6207974 -0.64691007 -0.64825916 -0.61138558 -0.59588611 -0.63239634 -0.61088681
		 -0.65021145 -0.63715219 -0.67250896 -0.67002469 -0.59794861 -0.57607555 -0.58663309
		 -0.56072497 -0.60348558 -0.5701828 -0.6186527 -0.59062338 0.3458901 0.3764993 0.3604306
		 0.38789877 -0.66969573 -0.6499055 -0.68832111 -0.67736506 -0.65280092 -0.6249963
		 -0.63936639 -0.60518777 -0.62712032 -0.58712691 0.22085117 0.35970861 0.22712612
		 0.36399248 0.2418545 0.38496143 0.23557667 0.38068011 0.25651667 0.40614054 0.25022632
		 0.40185362 0.23340054 0.36827436 0.2481305 0.38923994 0.28074461 0.41132161 0.26808125
		 0.39166379 0.28542167 0.40335843 0.29705164 0.42236251 0.3086651 0.44141886 0.29337493
		 0.43108428 0.26279449 0.41041499 0.25997815 0.37611377 0.28027791 0.39001656 0.21310061
		 0.34401858 0.21937856 0.34830821 0.1996517 0.32486722 0.20593333 0.32916594 0.25216341
		 0.36097574 0.27527845 0.37688062 0.2068225 0.33972725 0.19337104 0.32056761 0.27411368
		 0.36758891 0.24705358 0.34861669 0.18665467 0.30636668 0.19293322 0.31067204 0.1736671
		 0.28786442 0.17994118 0.29217738 0.24194773 0.33625713 0.27295107 0.35829705 0.18037656
		 0.30206063 0.16739336 0.28355178 0.24946353 0.33087143 0.22181554 0.31159177 0.16024768
		 0.26870868 0.1665197 0.27303258 0.14629224 0.2487303 0.15255971 0.25306016 0.20689096
		 0.29064801 0.23405658 0.30944192 0.15397634 0.26438671 0.14002566 0.24440356 0.21879812
		 0.28789508 0.19184937 0.26929113 0.13169724 0.22776105 0.13795182 0.23208319 0.11685821
		 0.20634554 0.12310275 0.2106569 0.17699061 0.24789418 0.20393451 0.26651281 0.12544179
		 0.22344072 0.11061104 0.2020341 0.18971093 0.24557637 0.16261391 0.22683005 0.10217122
		 0.18502896 0.10841972 0.18933739 0.087961875 0.16431163 0.094227619 0.16862755 0.14884256
		 0.20634402 0.17615001 0.22520228 0.095919527 0.18071933 0.08169388 0.15999405 0.16327362
		 0.20550661 0.13579953 0.1866812 0.074556552 0.14469373 0.080851622 0.14903048 0.061800562
		 0.12598512 0.068130426 0.13035159 0.12758413 0.17020376 0.15731098 0.19012989 0.068261452
		 0.14035666 0.055473007 0.12162002 0.13565335 0.16664331 0.10906994 0.14856109 0.049539007
		 0.107995 0.055903099 0.11239668 0.037288971 0.090029769 0.043679781 0.094462119 0.090557747
		 0.12692864 0.11399671 0.14316189 0.043179743 0.10359769 0.030903697 0.085603349 0.097192667
		 0.12187659 0.075118698 0.10653251 0.024566265 0.071394555 0.030970722 0.075844191
		 0.011269571 0.051933605 0.017682405 0.056393523 0.059389897 0.085719876 0.08024358
		 0.10038313 0.018166872 0.066950791 0.0048608053 0.047478754 0.058553912 0.074395619
		 0.04027652 0.061584074 -0.0027024522 0.031490989 0.0037216228 0.03596092 -0.016971476
		 0.010584541 -0.010550253 0.015054531 0.021007599 0.03721137 0.036786385 0.048289765
		 -0.0091229901 0.027025884 -0.023393847 0.0061183353;
	setAttr ".uvtk[1000:1249]" 0.10143995 0.27781728 0.087753043 0.25827324 0.074066088
		 0.23872916 0.061306875 0.22048338 0.048547514 0.20223741 0.034877844 0.18263541 0.021208094
		 0.16303344 0.006237777 0.14147106 -0.00873252 0.11990868 -0.02354715 0.098450832
		 -0.038361825 0.076992922 -0.051657446 0.057645548 -0.064953037 0.038298137 -0.07723815
		 0.020377941 -0.089523263 0.0024577766 -0.10265142 -0.01670124 -0.11577979 -0.035860311
		 -0.13022259 -0.056917053 -0.14466539 -0.077973761 0.1315029 0.32073176 0.11647151
		 0.29927453 -0.23834148 -0.11969523 -0.2235398 -0.10248827 -0.22722444 -0.10369264
		 -0.23891792 -0.11455464 -0.20873824 -0.085281424 -0.22274354 -0.096514225 -0.23493573
		 -0.106239 -0.51840055 -0.47496247 -0.53290063 -0.47998616 -0.54123342 -0.48696959
		 -0.54313791 -0.49261993 -0.54740065 -0.48500967 -0.55357981 -0.494394 -0.55994809
		 -0.50361383 -0.56778651 -0.50466031 -0.57817346 -0.51609266 -0.57273012 -0.50652218
		 -0.59805971 -0.52803469 -0.58235061 -0.53513372 -0.57024848 -0.51790696 -0.58894902
		 -0.53073919 -0.60064411 -0.54804653 -0.60736179 -0.54422611 -0.61934543 -0.56135243
		 -0.59412205 -0.55315298 -0.61379051 -0.56746125 -0.63256848 -0.58068573 -0.62172925
		 -0.55648613 -0.63406098 -0.57225907 -0.62223893 -0.5539068 -0.64641809 -0.57977879
		 -0.64738685 -0.59112602 -0.66022539 -0.60017443 -0.56464839 -0.52220666 -0.54152447
		 -0.49858457 -0.55501878 -0.50761157 -0.56885689 -0.52540505 -0.56020737 -0.53622377
		 -0.57610059 -0.54919362 -0.55581832 -0.52994955 -0.57887232 -0.54798824 -0.52604973
		 -0.50582439 -0.54336578 -0.52147019 -0.51214969 -0.48534507 -0.53398407 -0.50764734
		 -0.3495363 -0.23477547 -0.3418979 -0.23635198 -0.31085923 -0.20752938 -0.31352893
		 -0.2018141 -0.33425927 -0.23792818 -0.30542207 -0.21077776 -0.27658492 -0.18362734
		 -0.28266367 -0.18090999 -0.28493756 -0.17541246 -0.30367032 -0.14582478 -0.30202836
		 -0.15254222 -0.28188851 -0.13637272 -0.27855203 -0.12608825 -0.30038637 -0.15925965
		 -0.28686687 -0.14801033 -0.26903149 -0.13335523 -0.26234746 -0.12094927 -0.25343367
		 -0.10635167 -0.31570134 -0.1801489 -0.29512835 -0.16235332 -0.3310163 -0.20103812
		 -0.30396369 -0.17740424 -0.2798613 -0.15613137 -0.27493763 -0.14504914 -0.34027624
		 -0.21790682 -0.31066388 -0.19116512 -0.28359914 -0.16670278 -0.26015413 -0.15869667
		 -0.26272932 -0.15448475 -0.25574139 -0.16117178 -0.23489788 -0.13871619 -0.24356306
		 -0.14145306 -0.24578002 -0.13824628 -0.24400306 -0.10701702 -0.23567691 -0.09395548
		 -0.25104326 -0.11897561 -0.22923359 -0.096414804 -0.21792024 -0.081559442 -0.25551155
		 -0.12872817 -0.25863224 -0.1375706 -0.26163012 -0.14679958 -0.24507985 -0.13213825
		 -0.23312348 -0.12974259 -0.23296681 -0.12591422 -0.2266469 -0.12528576 -0.21839583
		 -0.11185537 -0.21332929 -0.083420418 -0.22041744 -0.090980887 -0.23427135 -0.12340227
		 -0.22836873 -0.11577547 -0.57663298 -0.53946137 -0.56023341 -0.5260781 0.30276209
		 0.41505313 0.31335869 0.43340328 0.32395536 0.4517535 0.052565329 0.059368122 0.076831304
		 0.08720722 0.10109731 0.11504631 0.11926662 0.13722074 0.13743573 0.15939508 0.16223677
		 0.18472557 0.30117393 0.38656121 0.29839352 0.39278558 0.3005777 0.40391931 0.11408663
		 -0.41665059 0.12721825 -0.42593044 0.14960098 -0.37758833 0.13376388 -0.38167405
		 0.10926366 -0.41325435 0.12620229 -0.37967885 0.09422794 -0.40272635 0.10393488 -0.4095085
		 0.11790844 -0.37590936 0.10596835 -0.37539625 -0.076067157 -0.24215837 -0.080798157
		 -0.22933982 -0.10683903 -0.26407376 -0.099374026 -0.26917371 -0.09190926 -0.27427351
		 -0.070288874 -0.25015736 -0.08505249 -0.27896971 -0.064446725 -0.25894788 -0.07321164
		 -0.28709078 -0.056430347 -0.26940238 -0.046561845 -0.28031594 -0.061576426 -0.29508284
		 -0.032490671 -0.29480097 -0.047497869 -0.30475497 -0.023327649 -0.32138631 -0.0170421
		 -0.30981144 0.005455194 -0.34119126 0.011642041 -0.33206034 -0.0028175712 -0.32200715
		 -0.0096312463 -0.33079898 0.024861755 -0.34088707 0.017426165 -0.34943771 0.030646861
		 -0.35857588 0.037191004 -0.3497642 0.048787624 -0.35605615 0.042392194 -0.36669904
		 0.054924279 -0.37539589 0.062307119 -0.36291599 0.067894429 -0.38438255 0.074415565
		 -0.37084448 0.082710683 -0.39470673 0.092686288 -0.37460256 0.14842606 -0.32250917
		 0.1377832 -0.33464056 -0.040603407 -0.22119857 -0.042243429 -0.20806678 0.13099703
		 -0.33688411 0.10881191 -0.35237083 0.1214852 -0.34296882 -0.039676823 -0.23070303
		 -0.036990233 -0.24256591 -0.033051558 -0.25529635 -0.025314875 -0.26923031 -0.015194573
		 -0.2842474 -0.003861554 -0.29808521 0.021281386 -0.31913912 0.0080627743 -0.30927378
		 0.034070067 -0.32858613 0.045460068 -0.33679891 0.054995321 -0.3416447 0.067537449
		 -0.3458738 0.079876505 -0.34784359 0.095781587 -0.35059881 0.059499525 -0.23181403
		 0.065462075 -0.22580646 0.029246449 -0.21464251 0.024952354 -0.22077511 0.022834482
		 -0.23310515 0.054018818 -0.24061303 0.020808728 -0.2906248 0.036243618 -0.29622853
		 0.041620217 -0.28293294 0.021461846 -0.27728543 0.046158992 -0.26819128 0.021190705
		 -0.26151758 0.050158255 -0.2531257 0.021632703 -0.24609151 0.070351116 -0.21315168
		 0.026979566 -0.20092592 0.099255316 -0.25185141 0.10804036 -0.2442614 0.09175434
		 -0.25636283 0.029453799 -0.30791622 0.042884611 -0.31747618 0.051877789 -0.30625081
		 0.061568372 -0.29589683 0.071032993 -0.2834706 0.078534447 -0.27171993 0.084354542
		 -0.25998366 0.0026215836 -0.27752164 0.0089644808 -0.29087138 -0.0022909716 -0.2625441
		 -0.0060948804 -0.24744856 -0.0074317232 -0.23399831 -0.0054884031 -0.21328725 -0.0061592832
		 -0.20300378 -0.0077751353 -0.22154753 0.12496102 -0.28954244 0.12855634 -0.28606105
		 0.11862507 -0.29308751 0.11042827 -0.29757911 0.10158449 -0.30431339 0.090201698
		 -0.31190327 0.076437168 -0.31879658 0.06413015 -0.3230176 0.053128324 -0.32866135
		 0.015573384 -0.30317017 0.019693675 -0.30295599 0.088189185 -0.44729012 0.089703143
		 -0.46367347 0.083720416 -0.44084823 0.072751522 -0.42327672 0.077360392 -0.43433344
		 -0.11629891 -0.30057129 -0.13000455 -0.30080542 -0.10673356 -0.30305585 -0.096413881
		 -0.305338 -0.083767027 -0.30906233 -0.070033789 -0.31435913 -0.051465303 -0.32230866;
	setAttr ".uvtk[1250:1499]" -0.031913966 -0.33136943 -0.015442312 -0.34029558
		 -0.00089329481 -0.35020673 0.012050958 -0.35942036 0.024716141 -0.36780483 0.034684449
		 -0.376443 0.045856863 -0.38669509 0.057503074 -0.39525872 0.067387611 -0.41108039
		 0.04564479 -0.46746787 0.03786847 -0.4816995 -0.12322259 -0.34112588 -0.13608941
		 -0.34435639 0.045435905 -0.46029407 0.052210271 -0.43400395 0.047834307 -0.44920576
		 -0.11399448 -0.33854964 -0.10193288 -0.33679566 -0.088620603 -0.33591175 -0.072834074
		 -0.3381424 -0.055183768 -0.34221113 -0.038204104 -0.34784201 -0.023499191 -0.35498619
		 -0.0095724463 -0.36380062 0.0037947968 -0.37238604 0.01549858 -0.38012403 0.02338949
		 -0.3873387 0.031748831 -0.397596 0.037899733 -0.408463 0.046025842 -0.42240518 -0.077801138
		 -0.43068534 -0.10031816 -0.40236679 -0.10453066 -0.40858147 -0.081308752 -0.43841025
		 -0.071494699 -0.4224095 -0.089528948 -0.39597595 -0.036434114 -0.37353 -0.048680365
		 -0.37891012 -0.036257803 -0.39571214 -0.025723435 -0.38593751 -0.048442513 -0.40522343
		 -0.063522458 -0.38429853 -0.077788919 -0.39023608 -0.061121136 -0.41435432 -0.11815277
		 -0.41140026 -0.091400713 -0.44749928 -0.045072176 -0.46070325 -0.049071372 -0.47161028
		 -0.043494195 -0.45207345 -0.017188512 -0.37542924 -0.010817081 -0.39695734 -0.0034871995
		 -0.38456404 -0.01708442 -0.40970901 -0.025386117 -0.42299786 -0.033770256 -0.43421263
		 -0.042711884 -0.44384536 -0.055146754 -0.3612397 -0.04040727 -0.3623859 -0.0709005
		 -0.36201546 -0.086366832 -0.36386919 -0.099429041 -0.36742547 -0.12796792 -0.37977019
		 -0.11811939 -0.37668258 -0.11120328 -0.37155914 -0.0029078126 -0.47590271 -0.00086563826
		 -0.47131458 0.00023469329 -0.46410987 0.0015818775 -0.45483932 0.0047724247 -0.44415891
		 0.00789514 -0.43080652 0.0095383842 -0.41547751 0.0091739912 -0.40246293 0.010590347
		 -0.3901737 -0.025288731 -0.3680883 -0.026553482 -0.36416805 0.36910895 0.42826924
		 0.38371131 0.45211205 0.34951082 0.46741006 0.32411423 0.44988593 0.41189787 0.37774304
		 0.42498329 0.35413346 0.4574579 0.38638544 0.43840915 0.39469945 0.46286529 0.42578098
		 0.43912271 0.42402437 0.51774842 0.43961594 0.51121229 0.47250748 0.48765785 0.47824463
		 0.48253024 0.44852868 0.54620093 0.46333525 0.53355992 0.48912483 0.54187644 0.53926677
		 0.50234854 0.53563339 0.46585417 0.52088076 0.48897535 0.61881208 0.43236846 0.59666836
		 0.54947412 0.62556279 0.33696499 0.51829988 0.40535861 0.47488564 0.43640029 0.49469614
		 0.38420033 0.56090111 0.57968134 0.52577364 0.60746944 0.60929573 0.25733051 0.3444266
		 0.34749261 0.33706042 0.34716395 0.37419018 0.26799548 0.40249336 0.30485925 0.41297296
		 0.30859619 0.45791429 0.29535237 0.46328992 0.34858376 0.48533192 0.317545 0.45369872
		 0.34965158 0.47525075 0.31520736 0.41748992 0.39386967 0.46525297 0.4244706 0.42484748
		 0.38832182 0.45848891 0.41460186 0.42533171 0.42597407 0.40086049 0.40304914 0.38845798
		 0.41701278 0.40547583 0.3974337 0.39538935 0.3492395 0.38919404 0.35270393 0.39705375
		 0.32139915 0.42210868 0.40836623 0.42189017 0.41106811 0.4083074 0.3962681 0.40269294
		 0.35496455 0.40443096 -0.52112192 0.60464537 -0.48497981 0.57021338 -0.47757816 0.60016817
		 -0.50399017 0.62674093 -0.5835216 0.62678248 -0.57704532 0.65757912 -0.59156311 0.67245251
		 -0.61023432 0.63066512 -0.54987109 0.6686253 -0.55663103 0.69145256 -0.56311578 0.74768001
		 -0.54231524 0.71789575 -0.51633745 0.73320842 -0.53003973 0.7532078 -0.55100143 0.78268564
		 -0.52240717 0.7799902 -0.46786273 0.76725912 -0.47845411 0.80551487 -0.46874428 0.72790587
		 -0.38601077 0.72340989 -0.38533434 0.78419 -0.40043214 0.84316218 -0.42554203 0.60644537
		 -0.40241534 0.66570073 -0.48281002 0.69109088 -0.49035186 0.65504706 -0.43617195
		 0.8916468 -0.50445378 0.8360973 -0.55997747 0.47042802 -0.50944352 0.50095367 -0.56393397
		 0.56498092 -0.59877682 0.55214769 -0.46226412 0.54805708 -0.47197884 0.55854106 -0.51268888
		 0.53914022 -0.46048817 0.60564399 -0.47029477 0.60307509 -0.4790886 0.56541866 -0.51212674
		 0.55041742 -0.49529499 0.64089262 -0.54391551 0.65521276 -0.53997004 0.64615411 -0.49965769
		 0.63330996 -0.56688201 0.6481294 -0.57036835 0.62229884 -0.56189817 0.61949986 -0.559394
		 0.6413815 -0.55063581 0.57223254 -0.5445109 0.57825434 -0.50999826 0.55784297 -0.54098189
		 0.63910407 -0.55464178 0.63682383 -0.55465478 0.62099463 -0.53841126 0.58297962 -0.57101631
		 -0.89462417 -0.51175976 -0.88999426 -0.51778483 -0.87485677 -0.56698895 -0.87883526
		 -0.46655917 -0.85127717 -0.48032427 -0.84257442 -0.45285219 -0.79318976 -0.46906197
		 -0.79426694 -0.47674268 -0.73736781 -0.48837128 -0.74833071 -0.52324486 -0.70870054
		 -0.5281828 -0.72393119 -0.58390021 -0.71243894 -0.57793301 -0.72755241 -0.62968409
		 -0.75076485 -0.61592817 -0.75948286 -0.64400256 -0.80848777 -0.62774462 -0.8074578
		 -0.62156343 -0.86345971 -0.60901749 -0.85306615 -0.37765795 -0.65069675 -0.39698145
		 -0.60389316 -0.45925295 -0.65682459 -0.3893255 -0.69994867 -0.42731985 -0.73296368
		 -0.54154265 -0.66252613 -0.5291782 -0.6137017 -0.49048686 -0.58111441 -0.44003993
		 -0.57733852 -0.56698895 -0.87883526 -0.51778483 -0.87485677 -0.54813623 -0.80105096
		 -0.48032427 -0.84257442 -0.46906197 -0.79426694 -0.48837128 -0.74833071 -0.5281828
		 -0.72393119 -0.57793301 -0.72755241 -0.61592817 -0.75948286 -0.62774462 -0.8074578
		 -0.60901749 -0.85306615 -0.85614312 0.29949144 -0.84355843 0.30984119 -0.86086076
		 0.35605827 -0.87712395 0.35508013 -0.84756845 0.40368155 -0.86129677 0.41244116 -0.80862832
		 0.43441173 -0.81454319 0.4495413 -0.75883055 0.43645933 -0.75384587 0.45164141 -0.71982199
		 0.4107863 -0.70812774 0.42172095 -0.70196283 0.36419705 -0.68574607 0.36520356 -0.71473366
		 0.31622937 -0.70100641 0.30746776 -0.75315034 0.28515664 -0.74719167 0.26999554 -0.80238718
		 0.28274566 -0.8064819 0.26697612 -0.71748817 0.5781616 -0.68836355 0.50169492 -0.66690898
		 0.58055693 -0.75711536 0.54667199 -0.77085817 0.49825048 -0.65855598 0.42477915 -0.61961353
		 0.45671919;
	setAttr ".uvtk[1500:1749]" -0.60655582 0.50559127 -0.62457418 0.55286217 -0.84355843
		 0.30984119 -0.7811498 0.35995856 -0.86086076 0.35605827 -0.84756845 0.40368155 -0.80862832
		 0.43441173 -0.75883055 0.43645933 -0.71982199 0.4107863 -0.70196283 0.36419705 -0.71473366
		 0.31622937 -0.75315034 0.28515664 -0.80238718 0.28274566 -0.51778483 -0.87485677
		 -0.56698895 -0.87883526 -0.48032427 -0.84257442 -0.46906197 -0.79426694 -0.48837128
		 -0.74833071 -0.5281828 -0.72393119 -0.57793301 -0.72755241 -0.61592817 -0.75948286
		 -0.62774462 -0.8074578 -0.60901749 -0.85306615 -0.84355843 0.30984119 -0.86086076
		 0.35605827 -0.84756845 0.40368155 -0.80862832 0.43441173 -0.75883055 0.43645933 -0.71982199
		 0.4107863 -0.70196283 0.36419705 -0.71473366 0.31622937 -0.75315034 0.28515664 -0.80238718
		 0.28274566 0.32600147 -0.20113073 0.32624674 -0.1966428 0.32161802 -0.195733 0.3187753
		 -0.19952391 0.32645971 -0.19274621 0.32261381 -0.19180296 0.31323519 -0.1904581 0.31324804
		 -0.19659077 0.31759617 -0.19438301 0.31798285 -0.19079421 0.32325873 -0.18757282
		 0.32667017 -0.18889503 0.32693821 -0.18399023 0.32375684 -0.18304835 0.3272852 -0.17763864
		 0.32395223 -0.17820726 0.32753158 -0.17312603 0.32299531 -0.17354445 0.32092404 -0.17865901
		 0.31923789 -0.1757888 0.31993484 -0.18194036 0.31641045 -0.17967187 0.31876037 -0.18632852
		 0.31438947 -0.18471931 0.32792544 -0.16592146 0.32160264 -0.1670614 0.32299531 -0.17354445
		 0.32753158 -0.17312603 0.30733657 -0.18886434 0.30590683 -0.19531529 0.31324804 -0.19659077
		 0.31323519 -0.1904581 0.29939651 -0.18582539 0.29495108 -0.19258086 0.29081231 -0.18074606
		 0.28146666 -0.1873614 0.28481865 -0.17393677 0.27586871 -0.17762052 0.27206853 -0.16228633
		 0.27310637 -0.17000662 0.2818439 -0.16855632 0.27955034 -0.163078 0.27948797 -0.15679307
		 0.27291995 -0.15456064 0.28181577 -0.15066274 0.27611721 -0.14730991 0.28547496 -0.14528801
		 0.28887033 -0.14196767 0.28738177 -0.13780262 0.28116828 -0.14102311 0.29256898 -0.14215632
		 0.29696983 -0.14247964 0.29949474 -0.13590802 0.29340708 -0.13648055 0.3024106 -0.14356901
		 0.30626506 -0.13566931 0.30910373 -0.14591719 0.3154934 -0.15029271 0.32936588 -0.13955982
		 0.31539315 -0.13547115 0.31950325 -0.15750761 0.32885957 -0.14882441 0.31923789 -0.1757888
		 0.31662276 -0.17102323 0.31260705 -0.17629354 0.31641045 -0.17967187 0.30947253 -0.18233751
		 0.31438947 -0.18471931 0.30334136 -0.17881022 0.30781266 -0.17172049 0.3130939 -0.16489746
		 0.30864555 -0.15905015 0.3027792 -0.16663344 0.29708588 -0.17383139 0.29160619 -0.16833435
		 0.29760063 -0.16177224 0.30323163 -0.15447052 0.28796813 -0.16369243 0.28525865 -0.159826
		 0.29315519 -0.15787883 0.2896263 -0.15492339 0.29354525 -0.14896022 0.29798663 -0.15116219
		 0.28973204 -0.14739044 0.28643078 -0.15275364 0.28389043 -0.1567115 0.3187753 -0.19952391
		 0.31804731 -0.20789663 0.32557929 -0.20885722 0.32600147 -0.20113073 0.31616372 -0.22165756
		 0.32484466 -0.2222933 0.31304735 -0.23741251 0.3241019 -0.23588324 0.30942798 -0.25648245
		 0.32292503 -0.25738415 0.30685866 -0.20594119 0.30370456 -0.22086839 0.30041659 -0.23617363
		 0.29578862 -0.25392035 0.30759171 -0.12847041 0.30035442 -0.12940831 0.33133084 -0.1035521
		 0.31893361 -0.10219111 0.32037121 -0.10818684 0.33109438 -0.1078842 0.32170674 -0.1203713
		 0.33043176 -0.12002553 0.33082491 -0.11282292 0.32124078 -0.11399436 0.32166016 -0.12618534
		 0.33011824 -0.12576778 0.3218931 -0.13098155 0.32980835 -0.13144253 0.31470132 -0.12780736
		 0.33175784 -0.095727004 0.31678814 -0.094098784 0.30805635 -0.095033415 0.31042498
		 -0.10283845 0.29337245 -0.13049974 0.29314297 -0.098361962 0.28226966 -0.10036101
		 0.28726971 -0.10904026 0.29535198 -0.10607451 0.2859332 -0.13184555 0.27577877 -0.10517048
		 0.28132808 -0.11373392 0.30311203 -0.10430365 0.30179453 -0.096241273 0.31232113
		 -0.10909942 0.3136546 -0.11510883 0.31437802 -0.12131362 0.30747437 -0.12217773 0.30637625
		 -0.1164154 0.30492622 -0.11056188 0.29770637 -0.11249334 0.29940206 -0.11802895 0.30028021
		 -0.12352525 0.29093182 -0.11520253 0.29294378 -0.11984043 0.29354531 -0.12480484
		 0.26839483 -0.11314738 0.27554119 -0.1189952 0.28552049 -0.11925615 0.28784925 -0.12139739
		 0.28733635 -0.12564088 0.2888068 -0.2320566 0.28301084 -0.24831486 0.27765548 -0.22574763
		 0.26905152 -0.24242024 0.30272949 -0.20071833 0.29286233 -0.19986729 0.29308236 -0.20792465
		 0.291574 -0.21901976 0.2807371 -0.19747542 0.28113908 -0.2064219 0.2807565 -0.2154225
		 0.26554918 -0.12934397 0.25657535 -0.12454142 0.27266577 -0.2113456 0.26732004 -0.21705405
		 0.27017736 -0.20488732 0.25932041 -0.20652591 0.26784819 -0.19587277 0.25443277 -0.19536535
		 0.26624274 -0.1861109 0.2517978 -0.18423955 0.26375243 -0.17672883 0.25050998 -0.17411034
		 0.26240054 -0.16844343 0.25031424 -0.16634582 0.25124848 -0.15884383 0.26247454 -0.16038148
		 0.26448733 -0.15195449 0.25381315 -0.14962564 0.26871276 -0.1431721 0.25861168 -0.13955523
		 0.27583581 -0.13409047 0.27814537 -0.12548141 0.24614954 -0.1368099 0.24070787 -0.1486287
		 0.2378037 -0.15942566 0.23680994 -0.16454099 0.23598568 -0.16938375 0.23624644 -0.18185245
		 0.23935854 -0.19606601 0.2459805 -0.21143471 0.25588256 -0.22809111 0.33335963 -0.20032082
		 0.33094692 -0.19624273 0.33038545 -0.19222771 0.33985478 -0.19191287 0.3350988 -0.19172965
		 0.33509183 -0.19533901 0.33917385 -0.19800757 0.33020532 -0.18795256 0.33020318 -0.18340044
		 0.33053631 -0.17856704 0.33199576 -0.17403643 0.33349723 -0.17934625 0.33548629 -0.17667697
		 0.33412322 -0.18271576 0.33787361 -0.18084483 0.33933264 -0.18608259 0.3348127 -0.18720572
		 0.33199576 -0.17403643 0.33408636 -0.16774364 0.34589219 -0.1909713 0.33985478 -0.19191287
		 0.33917385 -0.19800757 0.34661025 -0.19753967 0.35779867 -0.19601516 0.35411599 -0.18881558
		 0.37177172 -0.19229566 0.36320236 -0.18470161 0.37839755 -0.18322222 0.36990219 -0.17858528;
	setAttr ".uvtk[1750:1999]" 0.38384551 -0.16839288 0.37632191 -0.16836475 0.37344554
		 -0.1735609 0.38197294 -0.17595433 0.38384083 -0.16061999 0.37706879 -0.16212361 0.38145232
		 -0.15306391 0.37542254 -0.15577604 0.37237036 -0.15003459 0.37711596 -0.14626412
		 0.37129009 -0.14238583 0.36935663 -0.14636405 0.36565953 -0.14614885 0.3654446 -0.14041547
		 0.35945544 -0.13918297 0.36124945 -0.14599065 0.35275149 -0.13820828 0.35572273 -0.14648126
		 0.34881425 -0.14808728 0.34369969 -0.13701735 0.34198582 -0.15174036 0.33721381 -0.15847556
		 0.33548629 -0.17667697 0.33860493 -0.17222475 0.33787361 -0.18084483 0.34202257 -0.17790107
		 0.33933264 -0.18608259 0.34447995 -0.18425058 0.35095888 -0.18141232 0.34728652 -0.17387752
		 0.34278008 -0.1665199 0.34783906 -0.16119184 0.35284454 -0.16936903 0.3577196 -0.17714445
		 0.36376563 -0.17227654 0.35852152 -0.16510065 0.35371965 -0.15722917 0.3710019 -0.16450997
		 0.36788747 -0.16805859 0.36719441 -0.15916057 0.36336482 -0.16171448 0.36394829 -0.15280618
		 0.35929358 -0.15451147 0.36790973 -0.15166093 0.3706075 -0.15735196 0.37270129 -0.1615632
		 0.33335963 -0.20032082 0.33317113 -0.20872329 0.33354324 -0.22260778 0.33492306 -0.23860848
		 0.33644018 -0.25795987 0.34450608 -0.20799904 0.34601411 -0.22318111 0.34761366 -0.23875397
		 0.35027805 -0.25689986 0.35930866 -0.13262819 0.35221675 -0.1309077 0.341721 -0.10935268
		 0.34380287 -0.10354932 0.33906722 -0.12131928 0.3402245 -0.11503108 0.33848071 -0.12710385
		 0.33772671 -0.13184591 0.34522182 -0.1294743 0.34681571 -0.095738776 0.35219014 -0.10511931
		 0.35539392 -0.097618453 0.36613035 -0.13447364 0.36985666 -0.1025509 0.36682141 -0.10997735
		 0.37453306 -0.11380577 0.3804478 -0.10572232 0.37337893 -0.13662173 0.37992841 -0.1191189
		 0.38637674 -0.11121018 0.35930029 -0.10737175 0.36148718 -0.099500798 0.34962386
		 -0.11113656 0.34764445 -0.11696495 0.34625 -0.12305425 0.35301834 -0.12466498 0.35473728
		 -0.11905636 0.3568157 -0.11339563 0.36378241 -0.11610188 0.36149424 -0.1214201 0.36002305
		 -0.12678812 0.37022191 -0.11953284 0.36771706 -0.12392412 0.36657858 -0.12879373
		 0.38510805 -0.12497923 0.39284843 -0.11994426 0.37515986 -0.12415181 0.37261188 -0.12602673
		 0.37265962 -0.13030116 0.35960329 -0.23592669 0.3635917 -0.25272024 0.37811095 -0.24838203
		 0.37137601 -0.23087011 0.34917963 -0.20325695 0.35908073 -0.20348607 0.35798389 -0.2114716
		 0.35827398 -0.22266541 0.3713944 -0.20242934 0.3700197 -0.2112792 0.36941886 -0.22026812
		 0.39391381 -0.13635527 0.40335751 -0.13255857 0.38259754 -0.22335415 0.37790588 -0.21709691
		 0.39169675 -0.21376012 0.38108337 -0.21094804 0.39777172 -0.20319794 0.38438094 -0.20224057
		 0.38704088 -0.19271128 0.40160325 -0.19242518 0.4039872 -0.18249594 0.39053854 -0.18365578
		 0.40502778 -0.17479841 0.39278537 -0.17556672 0.40491661 -0.16723879 0.40337163 -0.1577958
		 0.39250708 -0.15894787 0.39358991 -0.16754426 0.38926345 -0.14975719 0.39969844 -0.14726196
		 0.38317165 -0.13995327 0.38181323 -0.13114345 0.41238552 -0.14589062 0.41650775 -0.15823296
		 0.41821817 -0.16928272 0.41893974 -0.17938016 0.41864836 -0.17447613 0.41732231 -0.19174652
		 0.41267967 -0.20553695 0.40442237 -0.22009329 0.39276361 -0.23557246 -0.28460777
		 -0.0082930829 -0.28915775 -0.017760662 -0.26949817 -0.033788159 -0.26451135 -0.013760095
		 -0.29636854 -0.026850235 -0.28006452 -0.047451604 -0.30668211 -0.032116331 -0.29552707
		 -0.055022474 -0.31703842 -0.034896694 -0.31571293 -0.0551637 -0.3339422 -0.12128612
		 -0.32676777 -0.10480922 -0.35300842 -0.091833077 -0.35853207 -0.10335291 -0.32817599
		 -0.083256058 -0.35196197 -0.081125647 -0.36665341 -0.13924618 -0.34696448 -0.13322775
		 -0.36704683 -0.1129025 -0.37651235 -0.11828364 -0.38637012 -0.10081742 -0.39275587
		 -0.11164864 -0.37837592 -0.090095311 -0.40195504 -0.074942119 -0.40981683 -0.087291919
		 -0.41649812 -0.099455617 -0.3718856 -0.078411363 -0.36456966 -0.067971542 -0.3857967
		 -0.051599141 -0.3940129 -0.062688574 -0.42023104 -0.044004109 -0.42931029 -0.057443354
		 -0.41131586 -0.031482827 -0.44139442 -0.0088295024 -0.45072475 -0.022723963 -0.46059468
		 -0.037472926 -0.43793321 -0.071196772 -0.44582802 -0.084454298 -0.47020137 -0.052411232
		 -0.47918743 -0.066581532 -0.348171 0.086954735 -0.36140329 0.07869833 -0.33655339
		 0.048495468 -0.32327804 0.056898713 -0.37447464 0.068992503 -0.34989345 0.038575385
		 -0.32738775 0.01098395 -0.31467521 0.02099824 -0.30206406 0.029472571 -0.38678113
		 0.058336772 -0.36253726 0.027730849 -0.397708 0.047224525 -0.37375465 0.016600063
		 -0.35061768 -0.0099235754 -0.33980572 0.00065527065 -0.32053289 -0.018619245 -0.30950618
		 -0.01091872 -0.33020467 -0.026795518 -0.29971927 -0.0016548117 -0.28986919 0.0062444285
		 -0.34135142 -0.049170148 -0.36662611 -0.032982796 -0.3935155 -0.0069052503 -0.41755119
		 0.022936879 -0.42454848 0.018828236 -0.34251621 -0.059638083 -0.3201836 0.10082563
		 -0.29619223 0.070518158 -0.27614242 0.041320611 -0.26555553 0.012723496 -0.42481858
		 -0.12517218 -0.39308733 -0.13592894 -0.49700829 -0.09322498 -0.46046999 -0.10975745
		 0.43170685 0.14020826 0.42023915 0.14813043 0.40883344 0.13162169 0.42029917 0.12370071
		 0.44317138 0.13228765 0.43176353 0.11578034 0.45463341 0.12436953 0.44322681 0.10786062
		 0.46609402 0.11645238 0.45468998 0.099941902 0.47755575 0.10853516 0.46615392 0.092023484
		 0.39730239 0.16397442 0.38583773 0.17189313 0.37443596 0.15538146 0.3859008 0.14746232
		 0.40877008 0.15605326 0.39736694 0.13954242 0.37467074 0.057667784 0.36321115 0.065584712
		 0.35180581 0.049075413 0.36326426 0.041159201 0.38613451 0.049747758 0.37472779 0.033239115
		 0.39760256 0.041824628 0.38619691 0.025315683 0.40907353 0.033900548 0.39766908 0.017390408
		 0.42054343 0.025977831 0.40914035 0.0094669219 0.34029144 0.081416719 0.32882541
		 0.089335911 0.31742245 0.072824948 0.32888836 0.064905398 0.35175258 0.073500209
		 0.34034872 0.056989841 0.39742786 0.11511265 0.38602209 0.098603182 0.39748454 0.090684526
		 0.40889162 0.10719275;
	setAttr ".uvtk[2000:2105]" 0.4089486 0.08276438 0.42035586 0.099272482 0.42041451
		 0.074842803 0.43182063 0.09135174 0.4318819 0.066921048 0.44328612 0.083431415 0.44334924
		 0.059000187 0.45475155 0.075511925 0.35163116 0.12235841 0.36309659 0.11443917 0.37449908
		 0.13095072 0.36303389 0.1388699 0.37456018 0.10652118 0.38596368 0.12303171 0.34040076
		 0.032566 0.3518579 0.024650615 0.36332119 0.016730823 0.37479115 0.0088063236 0.38626492
		 0.00088027865 0.39773703 -0.0070438609 0.30601907 0.056314223 0.31748539 0.048394669
		 0.32894474 0.04047947 0.37461662 0.082094006 0.38607746 0.074176244 0.39754134 0.066256158
		 0.40900856 0.058333747 0.42047781 0.0504108 0.43194646 0.042488981 0.34022838 0.10584705
		 0.35169411 0.097927861 0.36315644 0.090010576 0.32899529 0.016056694 0.34045166 0.0081417914
		 0.3519147 0.00022194535 0.3633855 -0.0077028498 0.37486058 -0.015629789 0.38633358
		 -0.023554822 0.29461551 0.039803315 0.30608201 0.031883705 0.31754065 0.023969036
		 0.43497068 0.14493807 0.42350477 0.15285982 0.44643486 0.13701709 0.45789742 0.12909719
		 0.46935999 0.12117879 0.48082364 0.11326079 0.40057111 0.16870095 0.38910574 0.17661889
		 0.41203785 0.16078098 0.44246817 0.15579142 0.43100238 0.16371347 0.45393181 0.14786984
		 0.4653942 0.13994963 0.47685689 0.13203105 0.48832065 0.12411353 0.40806848 0.17955388
		 0.39660257 0.18747176 0.41953534 0.17163451 0.45338768 0.17159463 0.44192064 0.17951728
		 0.46485156 0.16367336 0.47631347 0.15575422 0.48777425 0.14783676 0.49923688 0.13992019
		 0.41898406 0.19535984 0.40751892 0.20327814 0.43045187 0.18743946 0.46728885 0.19170453
		 0.45581728 0.1996298 0.47875434 0.18378349 0.49021256 0.17586733 0.50166786 0.16795398
		 0.51312542 0.16003962 0.43287188 0.21547921 0.42140746 0.22339757 0.44434309 0.20755602
		 0.48015958 0.21028312 0.46867079 0.21821941 0.49162728 0.20236094 0.50307196 0.19445445
		 0.51450598 0.18655594 0.52594686 0.17865272 0.44569081 0.23409344 0.4342289 0.24201074
		 0.45717508 0.2261606 0.48421508 0.21636404 -0.015062315 0.51239276 -0.047088794 0.30565342
		 0.58633071 0.30565342 0.5543043 0.51239276 -0.040027641 0.098862819 0.05150988 -0.052944791
		 0.1497549 -0.085513361 0.26962093 -0.10887057 0.38948703 -0.085513361 0.48773205
		 -0.052944791 0.57926953 0.098862819 0.48937464 0.65363854 0.40914094 0.6990537 0.34894875
		 0.71745175 0.2696209 0.71603245 0.19029318 0.71745175 0.13010107 0.6990537 0.049867295
		 0.65363854 0.21693367 -0.13730977;
createNode blinn -n "mascotMat";
	rename -uid "82F62D8F-407F-3956-0694-8BB799DBE4BD";
createNode shadingEngine -n "mascotSG";
	rename -uid "E2C4382A-4BEE-4C1F-BD82-07A6DD26BDBF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "5AC0C299-4F95-0A82-3C4C-E9875335444B";
createNode Unfold3DUnfold -n "Unfold3DUnfold1";
	rename -uid "CDB27970-4463-39D5-0636-28A59FA3E2AE";
	setAttr ".uvl" -type "Int32Array" 353 1533 1534 1535 1536 1537 1538
		 1539 1540 1541 1542 1543 1544 1545 1546 1547 1548 1549 1550
		 1551 1552 1553 1554 1555 1556 1557 1558 1559 1560 1561 1562
		 1563 1564 1565 1566 1567 1568 1569 1570 1571 1572 1573 1574
		 1575 1576 1577 1578 1579 1580 1581 1582 1583 1584 1585 1586
		 1587 1588 1589 1590 1591 1592 1593 1594 1595 1596 1597 1598
		 1599 1600 1601 1602 1603 1604 1605 1606 1607 1608 1609 1610
		 1611 1612 1613 1614 1615 1616 1617 1618 1619 1620 1621 1622
		 1623 1624 1625 1626 1627 1628 1629 1630 1631 1632 1633 1634
		 1635 1636 1637 1638 1639 1640 1641 1642 1643 1644 1645 1646
		 1647 1648 1649 1650 1651 1652 1653 1654 1655 1656 1657 1658
		 1659 1660 1661 1662 1663 1664 1665 1666 1667 1668 1669 1670
		 1671 1672 1673 1674 1675 1676 1677 1678 1679 1680 1681 1682
		 1683 1684 1685 1686 1687 1688 1689 1690 1691 1692 1693 1694
		 1695 1696 1697 1698 1699 1700 1701 1702 1703 1704 1705 1706
		 1707 1708 1709 1710 1711 1712 1713 1714 1715 1716 1717 1718
		 1719 1720 1721 1722 1723 1724 1725 1726 1727 1728 1729 1730
		 1731 1732 1733 1734 1735 1736 1737 1738 1739 1740 1741 1742
		 1743 1744 1745 1746 1747 1748 1749 1750 1751 1752 1753 1754
		 1755 1756 1757 1758 1759 1760 1761 1762 1763 1764 1765 1766
		 1767 1768 1769 1770 1771 1772 1773 1774 1775 1776 1777 1778
		 1779 1780 1781 1782 1783 1784 1785 1786 1787 1788 1789 1790
		 1791 1792 1793 1794 1795 1796 1797 1798 1799 1800 1801 1802
		 1803 1804 1805 1806 1807 1808 1809 1810 1811 1812 1813 1814
		 1815 1816 1817 1818 1819 1820 1821 1822 1823 1824 1825 1826
		 1827 1828 1829 1830 1831 1832 1833 1834 1835 1836 1837 1838
		 1839 1840 1841 1842 1843 1844 1845 1846 1847 1848 1849 1850
		 1851 1852 1853 1854 1855 1856 1857 1858 1859 1860 1861 1862
		 1863 1864 1865 1866 1867 1868 1869 1870 1871 1872 1873 1874
		 1875 1876 1877 1878 1879 1880 1881 1882 1883 1884 1885 ;
	setAttr ".mdp" -type "string" "|lionGeo|lionGeoShape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 2106 0.39232108 0.9289093 0.9066186 0.39792806
		 0.88759869 0.41279981 0.87305009 0.43128014 0.86282629 0.44632936 0.47991309 0.4522295
		 0.46827337 0.44682556 0.44993824 0.43130791 0.42724732 0.41303089 0.40290043 0.39810136
		 0.42221537 0.92326164 0.91755152 0.88924646 0.89817369 0.86528385 0.87718999 0.84503078
		 0.86064589 0.5148195 0.49968588 0.5066545 0.49204007 0.48938689 0.47854176 0.46738577
		 0.45833257 0.44032761 0.43323314 0.94947553 0.95071745 0.90858543 0.8797617 0.85663891
		 0.83706874 0.829059 0.51510602 0.49585342 0.47293526 0.44668362 0.41072628 0.90228927
		 0.89780915 0.86221528 0.86919987 0.83357567 0.84264344 0.523781 0.53092653 0.51300019
		 0.50623888 0.48804998 0.48015654 0.45724869 0.45183024 0.42201638 0.93923903 0.81353164
		 0.81663871 0.82195783 0.53651303 0.80435288 0.80899513 0.5418092 0.54718709 0.88798738
		 0.85442489 0.82620215 0.537853 0.51972044 0.49453339 0.46580204 0.43371201 0.79770195
		 0.55434883 0.87282956 0.84350187 0.81834662 0.54443878 0.52781332 0.50492382 0.47971654
		 0.4525727 0.78971219 0.56312007 0.85887432 0.83334726 0.80953723 0.54912162 0.53399599
		 0.51367682 0.49452516 0.67666376 0.78123999 0.56928527 0.66326922 0.65310013 0.72471076
		 0.69860059 0.63526756 0.74801743 0.61652774 0.76765442 0.60399467 0.56748527 0.60238647
		 0.58043838 0.6120919 0.59714901 0.63139951 0.61906612 0.64967549 0.6444571 0.66193479
		 0.67135519 0.63296479 0.702227 0.73070598 0.73661286 0.70541787 0.7556566 0.76422679
		 0.777601 0.79036331 0.55628169 0.80871129 0.57121032 0.5602352 0.59008271 0.58325219
		 0.61357021 0.60803694 0.64089507 0.63675177 0.67127478 0.67058533 0.74146193 0.70955908
		 0.76899409 0.79572582 0.53674889 0.55617529 0.5806874 0.60724062 0.63574928 0.67231488
		 0.71019715 0.74595368 0.74502128 0.70821983 0.77520013 0.77442193 0.55945498 0.57881135
		 0.58183932 0.56356925 0.60700822 0.60722595 0.6365667 0.63831705 0.67269403 0.67328215
		 0.74071538 0.70632017 0.7691462 0.58896732 0.57078445 0.61403131 0.64319283 0.67570686
		 0.73618805 0.70524812 0.76127625 0.59834391 0.58165586 0.6212787 0.64793324 0.67755508
		 0.72636974 0.69782555 0.75163972 0.60655785 0.59013104 0.62903059 0.65263581 0.67625272
		 0.794945 0.54331034 0.81416553 0.5297969 0.78374296 0.76005721 0.58763516 0.67417657
		 0.69401777 0.65367651 0.59708315 0.74837911 0.7334938 0.71454549 0.89677644 0.91748798
		 0.93237484 0.40499529 0.40783638 0.85032094 0.83535671 0.41559407 0.52179497 0.94407642
		 0.95234782 0.48670194 0.95403934 0.39590544 0.4621771 0.88868892 0.93828028 0.41304737
		 0.45709902 0.89649487 0.90725076 0.92193305 0.82898569 0.7696209 0.7696209 0.82342899
		 0.71025628 0.71581286 0.87598991 0.86415517 0.66325206 0.6750868 0.6185534 0.62792414
		 0.92068863 0.91131783 0.47537127 0.4779875 0.48632017 0.4881025 0.48269492 0.49093395
		 0.49917296 0.46283907 0.45955151 0.46337426 0.45061454 0.45078659 0.45107764 0.42085505
		 0.40638834 0.40749228 0.42143467 0.39091137 0.39371672 0.39652207 0.40935799 0.4224053
		 0.12290686 0.13610369 0.13585162 0.12352145 0.14878243 0.14852309 0.14773446 0.13563031
		 0.12352616 0.50919026 0.49380609 0.4929325 0.50672901 0.47935227 0.47896224 0.47829941
		 0.49144742 0.50426781 0.46475628 0.46464461 0.45009422 0.45016557 0.45028031 0.46445259
		 0.43544203 0.43571064 0.43615514 0.41154617 0.4236888 0.39988774 0.4032535 0.41379941
		 0.42631024 0.090465784 0.10754716 0.11075068 0.097759664 0.11428982 0.1050536 0.48982456
		 0.50172037 0.47746095 0.4641619 0.45043787 0.43679968 0.43848038 0.41586006 0.42429093
		 0.41152114 0.41978884 0.12567878 0.125251 0.11244893 0.11636394 0.12416667 0.10879803
		 0.09178561 0.099417269 0.10704929 0.14990532 0.14910531 0.13759446 0.13779199 0.14790535
		 0.13736689 0.44203317 0.43863967 0.43697709 0.43617982 0.45257086 0.45160022 0.10567546
		 0.086391985 0.12316823 0.12252522 0.10408133 0.080998421 0.13707948 0.14703411 0.14991963
		 0.13675511 0.46584231 0.46763292 0.10501438 0.085731864 0.12250656 0.13641751 0.14910382
		 0.55778676 0.55771953 0.5719828 0.57205594 0.58658415 0.58666122 0.55765021 0.57190764
		 0.57131577 0.55689991 0.55652487 0.57101989 0.58559918 0.58590007 0.58650184 0.54374975
		 0.5435909 0.54412955 0.54406732 0.53110003 0.53104645 0.53088057 0.5307976 0.54418975
		 0.53115171 0.5195834 0.51921427 0.51851815 0.51847613 0.50592542 0.5058974 0.50754386
		 0.50836706 0.51855898 0.50595331 0.49356744 0.49332875 0.49286306 0.49285147 0.47920322
		 0.4792037 0.47927797 0.4793151 0.49287662 0.47920614 0.46477214 0.46478802 0.46481776
		 0.46481985 0.45006555 0.45006251 0.45007837 0.4500863 0.46481901 0.45007098 0.43540519
		 0.43536842 0.43530542 0.43529469 0.4209007 0.42088431 0.42086971 0.42086238 0.43531716
		 0.42091703 0.40659109 0.40679383 0.407215 0.40719932 0.3941381 0.39412993 0.39252067
		 0.391716 0.40723032 0.39414608 0.38045093 0.38082284 0.38155925 0.38156652 0.36900279
		 0.36902618 0.36913651 0.36919165 0.38155347 0.36898226 0.3564052 0.35627887 0.35599256
		 0.35602626 0.34241492 0.34245467 0.34313533 0.3434757 0.35596192 0.34237838 0.32893538
		 0.32869011 0.32815689 0.32819939 0.31355697 0.31360233 0.31407392 0.31430972 0.32811749
		 0.31351775 0.55857551 0.54524451 0.5319134 0.51945096 0.50698841 0.49356511 0.4801417
		 0.46531528 0.45048878 0.43565822 0.42082772 0.40739933 0.39397094 0.38150597 0.36904109
		 0.35570881 0.34237641 0.32773656 0.31309676 0.58783901 0.57320732 0.84483576 0.85406137
		 0.85583305 0.85215431 0.86328679 0.86122811 0.85950708 0.1980741 0.2046712 0.20304966
		 0.19732195 0.21126854 0.20450896 0.19813913 0.20391119 0.19828624 0.20596349 0.2006582
		 0.17693955 0.18865544 0.18876886 0.17657518 0.18775481 0.17606348 0.16387492 0.16292173
		 0.16258764 0.18466944 0.17508429 0.18854278 0.17642719 0.16231823 0.16208088 0.17786258
		 0.18796819 0.18835783 0.17747778 0.1552878 0.15265727 0.15957206 0.15677989 0.16427755
		 0.15940976 0.17864981 0.16911101 0.79427207 0.78521693 0.79497004 0.80495846 0.77616203
		 0.7857151 0.79526794 0.804407 0.81374645 0.86993963 0.85956514 0.8625474 0.87309104
		 0.84919059 0.85171455 0.85479903 0.86509061 0.8762424 0.83556795 0.84030342 0.82194555
		 0.82848102 0.8345896 0.84473848 0.80810881 0.816414 0.82403302 0.81321198 0.82112795
		 0.80591404 0.81655991 0.82085288 0.82711345 0.86675531 0.876414 0.85738015 0.86728334
		 0.8765856 0.84857249 0.83973718 0.83027923 0.83454502 0.82679713 0.83171284 0.82677448
		 0.83698916 0.86993617 0.86641622 0.83622241 0.8409124 0.16600263 0.16871727 0.55614966
		 0.57072395 0.58529824 0.31454539 0.32918078 0.3438161 0.3565315 0.36924684 0.38007909
		 0.51995248 0.53071463 0.54343218 0.27085969 0.27727106 0.25356314 0.25634712 0.28667384
		 0.25158048 0.21176773 0.23023453 0.23945141 0.16645458 0.16549081 0.19380841 0.12912405
		 0.1384235 0.14552405 0.16241273 0.18296224 0.21260852 0.22401792 0.2003054 0.21227154
		 0.19501534 0.2121017 0.17652944 0.1744189 0.19399697 0.2119787 0.15692496 0.13791847
		 0.1347239 0.15421391 0.15739417 0.17680219 0.13875011 0.14718014 0.16338453 0.18327436
		 0.19503284 0.21195844 0.20033512 0.21204853 0.21255662 0.22374469 0.19385114 0.21198744
		 0.23026109 0.23899868 0.16637141 0.13951695 0.1293771 0.16628715 0.25283366 0.25534016
		 0.25241166 0.28699589 0.27632934 0.26912856 0.29311252 0.27623165 0.31216669 0.32207635
		 0.29883295 0.27963519 0.29379016 0.27711314 0.31261498 0.095073521 0.10445672 0.12163928
		 0.11574331 0.10398963 0.12101373 0.26002383 0.26243812 0.24551579 0.24380863 0.26039973
		 0.24409673 0.22811499 0.22872233 0.22800195 0.12806848 0.12292531 0.046334743 0.045960724
		 0.11270103 0.052580714 0.097831756 0.065053612 0.12813982 0.051549077 0.12226522
		 0.062144846 0.077237785 0.11001614 0.094103098 0.081041306 0.35718173 0.34215179
		 0.33926857 0.36382154 0.33721519 0.37355965 0.3151083 0.29598325 0.32465392 0.27738374
		 0.24805674 0.24905512 0.22002462 0.21039364 0.24486899 0.22737825 0.2661511 0.30867019
		 0.29685408 0.28411239 0.29650515 0.29632914 0.27863371 0.25948888 0.27757907 0.25730303
		 0.29620188 0.23918542 0.21950155 0.23637784 0.21619305 0.25977135 0.23967147 0.22036296
		 0.24587542 0.22909343 0.26647419 0.29618102 0.27865195 0.28414315 0.29627424 0.30838719
		 0.29680014 0.27742803 0.31513575 0.29621077 0.32418483 0.24896866 0.22115713 0.24888158
		 0.21065569 0.34110898 0.33851302 0.33807591 0.36284629 0.37389299 0.35538888 0.36274499
		 0.38022774 0.39996099 0.38615203 0.41022402 0.36627007 0.36365813 0.3809295 0.40042537
		 0.17512935 0.19653583 0.20264208 0.18484688 0.20199433 0.18436331 0.34595954 0.34845978
		 0.32916635 0.33093452 0.34634882 0.32946473 0.31354231 0.31291318 0.31279629 0.86999607
		 0.95331877 0.95051932 0.87279546 0.94216239 0.88115239 0.92828906 0.89502579 0.87279546
		 0.95051932 0.88115239 0.94216239 0.89502579 0.92828906 0.91165733 0.91165733 0.37856305
		 0.38117924 0.38951194 0.39129418 0.38588664 0.39412567 0.4023647 0.36603078 0.36274314
		 0.36656597 0.35380626 0.35397831 0.35426942 0.32404682 0.30958003 0.31068403 0.32462639
		 0.29410309 0.29690844 0.29971379 0.31254977 0.32559705 0.098229945 0.11142689 0.11117482
		 0.098844647 0.12410545 0.12384629 0.12305754 0.11095339 0.098849237 0.41238201 0.39699787
		 0.39612424 0.40992069 0.38254395 0.38215399 0.38149115 0.39463913 0.4074595 0.367948
		 0.36783639 0.35328588 0.35335723 0.35347199 0.36764437 0.33863375 0.33890241 0.33934689
		 0.31473792 0.32688051 0.30307952 0.30644518 0.31699109 0.32950187 0.065788746 0.082870185
		 0.086073875 0.073082745 0.08961302 0.080376744 0.39301631 0.40491211 0.38065267 0.36735356
		 0.35362953 0.33999145 0.34167206 0.31905174 0.32748264 0.31471288 0.32298058 0.10100186
		 0.10057414 0.087771893 0.091687024 0.099489689 0.084121108 0.067108691 0.074740469
		 0.082372367 0.1252284 0.12442845 0.11291766 0.11311513 0.12322831 0.11268997 0.34522486
		 0.34183145 0.3401688 0.3393715 0.35576254 0.354792 0.080998659 0.061715066 0.09849143
		 0.097848296 0.079404294 0.056321502 0.11240256 0.12235719 0.12524271 0.11207831 0.36903393
		 0.37082464 0.080337644 0.061055064 0.097829521 0.11174071 0.1244269 0.46097845 0.46091121
		 0.47517455 0.47524768 0.48977587 0.48985308 0.46084207 0.47509933 0.47450751 0.46009168
		 0.45971656 0.47421157 0.48879087 0.48909181 0.48969364 0.44694144 0.44678265 0.44732127
		 0.44725901 0.43429172 0.43423823 0.43407232 0.43398935 0.44738156 0.4343434 0.42277509
		 0.42240608 0.42170995 0.42166787 0.4091171 0.40908918 0.41073555 0.41155881 0.42175069
		 0.409145 0.39675915 0.39652044 0.3960548 0.39604315 0.38239494 0.38239545 0.38246971
		 0.38250685 0.39606833 0.38239777 0.36796385 0.36797976 0.36800954 0.36801162 0.3532573
		 0.35325426 0.35327011 0.35327801 0.36801076 0.35326272 0.33859694 0.33856016 0.33849716
		 0.33848643 0.32409245 0.324076 0.32406142 0.32405412 0.33850884 0.32410872 0.30978286
		 0.30998552 0.31040677 0.31039101 0.29732978 0.29732162 0.29571235 0.29490772 0.310422
		 0.29733777 0.28364265 0.28401452 0.284751 0.28475821 0.27219456 0.2722179 0.2723282
		 0.27238333 0.28474522 0.27217394 0.25959694 0.25947064 0.25918433 0.25921798 0.24560669
		 0.24564636 0.2463271 0.24666741 0.25915363 0.24557009 0.23212716 0.23188186 0.23134863
		 0.23139113 0.21674868 0.21679407 0.2172657 0.21750137 0.23130915 0.21670946 0.46176723
		 0.44843632 0.43510526 0.42264271 0.41018012 0.39675683 0.38333347 0.36850697 0.35368049
		 0.33884993 0.32401937 0.31059104 0.29716271 0.28469774 0.27223277 0.25890052 0.24556813
		 0.23092833 0.21628854 0.49103081 0.47639909 0.13111183 0.14033741 0.14210913 0.13843045
		 0.14956287 0.14750412 0.14578301 0.17339712 0.1799944 0.17837274 0.17264503 0.18659168
		 0.17983216 0.17346227 0.17923421 0.17360932 0.18128651 0.17598134 0.15226275 0.1639784
		 0.16409189 0.15189832 0.16307789 0.15138668 0.13919812 0.13824481 0.13791084 0.1599924
		 0.15040737 0.16386586 0.15175039 0.13764125 0.13740396 0.15318573 0.16329139 0.16368091
		 0.1528008 0.13061088 0.12798023 0.13489509 0.13210297 0.13960063 0.1347329 0.15397292
		 0.14443398 0.080548048 0.07149294 0.081246018 0.091234565 0.062438041 0.071991086
		 0.081544071 0.090682954 0.10002249 0.15621564 0.14584109 0.14882353 0.15936705 0.13546655
		 0.13799062 0.14107516 0.15136656 0.1625185 0.12184402 0.12657943 0.10822147 0.11475703
		 0.12086564 0.13101444 0.094384819 0.10269004 0.11030903 0.09948796 0.1074039 0.092190057
		 0.10283598 0.10712889 0.11338946 0.15303129 0.16269007 0.14365628 0.15355942 0.16286159
		 0.13484848 0.12601322 0.1165553 0.120821 0.11307317 0.1179888 0.11305052 0.12326512
		 0.15621218 0.15269229 0.12249845 0.12718841 0.14132571 0.14404035 0.45934141 0.47391567
		 0.48848999 0.2177372 0.23237246 0.24700776 0.25972325 0.27243853 0.28327084 0.42314422
		 0.43390641 0.44662386 0.12919706 0.12909949 0.15893662 0.15190992 0.12922728 0.15040034
		 0.12929341 0.12925756 0.14948383 0.14586663 0.14936882 0.15383494 0.12917975 0.12920639
		 0.12923291 0.14749482 0.12925184 0.14527133 0.12927917 0.14297199 0.14105636 0.12930042
		 0.13882816 0.12932527 0.12935585 0.13679922 0.12939233 0.13566089 0.13569111 0.12937865
		 0.1358037 0.12940308 0.12940055 0.13563523 0.13643906 0.12939608 0.12937751 0.13759851
		 0.12936488 0.13780236 0.12932312 0.14194715 0.18431425 0.175203 0.1706267 0.17623782
		 0.17196169 0.15755284 0.16604349 0.16648135 0.1618017 0.15712082 0.15310401 0.14935072
		 0.14654064 0.14481726 0.1451605 0.14453077 0.14436963 0.14518377 0.14725772 0.15032259
		 0.15417209 0.19799981 0.20273533 0.19625688 0.19200188 0.18555176 0.19211456 0.15799901
		 0.16036457 0.16831896 0.1644479 0.17667887 0.17173398 0.18501604 0.17909059 0.21023256
		 0.20193905 0.20147228 0.20785961 0.1969395 0.15270555 0.15257367 0.16072822 0.16870058
		 0.17756903 0.18548736 0.19285581 0.15825135 0.15405744 0.16366839 0.16949886 0.17535684
		 0.18566984 0.19026217 0.18106836 0.19215059 0.19494006 0.18844602 0.18369764 0.17769152
		 0.17046514 0.16279501 0.15684548 0.15065214 0.15044099 0.15187222 0.10650295 0.099330544
		 0.10807177 0.11274546 0.1090638 0.10905624 0.10451922 0.11098439 0.11325076 0.1155946
		 0.11755401 0.11983493 0.12191364 0.12306041 0.12312555 0.12299839 0.12316889 0.12234953
		 0.12116435 0.12092188 0.11671618 0.083323449 0.074156135 0.087854743 0.082187444
		 0.086610734 0.10109335 0.092570812 0.092040479 0.096757114 0.10147095 0.1055274 0.10932648
		 0.11217842 0.1135878 0.11396474 0.11426812 0.11443031 0.11360553 0.11150926 0.10841441
		 0.10451958 0.060646325 0.066615194 0.062348157 0.055900723 0.066553593 0.073089153
		 0.10073751 0.09426558 0.090421259 0.098395318 0.08203724 0.086951137 0.079565793
		 0.073671609 0.056629509 0.04839018 0.057181567 0.050789118 0.061726898 0.1060665
		 0.098057419 0.10622081 0.090069592 0.08117339 0.073220551 0.065827399 0.10044003
		 0.10466543 0.094988108 0.089125037 0.083242327 0.068250269 0.072875589 0.077505678
		 0.063694537 0.066499829 0.070224434 0.074994951 0.081020176 0.088273019 0.09597227
		 0.10194063 0.10814515 0.10688272 0.10830739 0.47447586 0.49034292 0.48644865 0.47004956
		 0.46467048 0.45785689 0.48342973 0.48116425 0.50359946 0.49510813 0.52779871 0.54106861
		 0.53614253 0.52058977 0.54808211 0.55605876 0.58219355 0.5677253 0.54903728 0.60230279
		 0.57366121 0.62500334 0.50619388 0.50798571 0.52727753 0.54137486 0.5880962 0.63613111
		 0.3991589 0.42484021 0.44209731 0.42975831 0.44656748 0.46879101 0.46702647 0.49453014
		 0.46971053 0.49016076 0.45202261 0.49976963 0.49075985 0.49481434 0.48779827 0.48002836
		 0.46682274 0.47929174 0.4682501 0.44978422 0.45457888 0.45618284 0.48417455 0.47869548
		 0.47128898 0.45875898 0.27782559 0.27339929 0.28979832 0.29369265 0.26802021 0.28451395
		 0.28677946 0.26120651 0.29845792 0.30694914 0.33114839 0.32393956 0.33949226 0.34441835
		 0.35143179 0.35940838 0.37107497 0.38554329 0.35238707 0.37701094 0.40565255 0.42835298
		 0.30954358 0.3447246 0.3306272 0.31133538 0.43948084 0.39144588 0.20250857 0.23310804
		 0.24544698 0.22819 0.27037621 0.27214068 0.24991727 0.29787984 0.2935105 0.27306026
		 0.25537241 0.30311942 0.29410964 0.29114801 0.29816413 0.28337806 0.27017248 0.27159983
		 0.28264147 0.25313395 0.25792861 0.25953251 0.28752422 0.28204525 0.27463871 0.26210874
		 0.19806492 0.21937233 0.22450483 0.20674938 0.25207949 0.25170261 0.28367132 0.27793115
		 0.30205816 0.29317495 0.30044198 0.29172438 0.27909958 0.27395964 0.24638689 0.24675375
		 0.21476799 0.22050166 0.1963098 0.20522302 0.37459731 0.39024219 0.34537315 0.34779614
		 0.32008329 0.31612396 0.34295034 0.37068832 0.38875049 0.20674938 0.22450483 0.24921447
		 0.25170261 0.27793115 0.29317495 0.29172438 0.27395964 0.24675375 0.22050166 0.20522302
		 0.075708568 0.08461374 0.10063738 0.094926238 0.12720174 0.12686336 0.15415168 0.159316
		 0.17119586 0.17990589 0.17179161 0.18068272 0.15577382 0.16148335 0.12921685 0.12955403
		 0.10227597 0.097110927 0.085242987 0.076545656 0.25081652 0.22446638 0.26827586 0.22328961
		 0.19620633 0.19812661 0.22564304 0.25271559 0.26900065 0.08461374 0.1282112 0.10063738
		 0.12720174 0.15415168 0.17119586 0.17179161 0.15577382 0.12921685 0.10227597 0.085242987
		 0.22450483 0.20674938 0.25170261 0.27793115 0.29317495 0.29172438 0.27395964 0.24675375
		 0.22050166 0.20522302 0.08461374 0.10063738 0.12720174 0.15415168 0.17119586 0.17179161
		 0.15577382 0.12921685 0.10227597 0.085242987 0.75155175 0.7510007 0.76245916 0.769512
		 0.75046885 0.76012963 0.78363603 0.78193927 0.77237093 0.77188581 0.7585746 0.7499547
		 0.74930573 0.75709349 0.74844408 0.75682741 0.74780971 0.75942153 0.76486069 0.76907343
		 0.76721179 0.77635211 0.77009749 0.78112972 0.74678648 0.76412129 0.76096803 0.74768728
		 0.80306435 0.80583096 0.78664821 0.78895658 0.8229093 0.83388746 0.84478122 0.86862981
		 0.86018658 0.88320357 0.89313835 0.89040369 0.86786294 0.87378716 0.87394971 0.89096731
		 0.86791229 0.88269699 0.85839778 0.8495568 0.85342437 0.86958784 0.83993143 0.82846802
		 0.82184458 0.83772868 0.81427807 0.80415297 0.79678935 0.78006673 0.74346608 0.7802459
		 0.76954824 0.74464619 0.77211702 0.77808458 0.78932518 0.78051382 0.79777181 0.78613555
		 0.81292325 0.801117 0.78684461 0.79826051 0.81383604 0.82871354 0.84270436 0.82710117
		 0.81228942 0.85204256 0.85902286 0.83855611 0.84767395 0.8374396 0.8259055 0.84734333
		 0.85594708 0.8625505 0.7719509 0.77305979 0.75269669 0.75181997 0.77733254 0.75434333
		 0.78506255 0.75623643 0.79455733 0.75882995 0.80256206 0.81003314 0.81815797 0.83019084
		 0.80068266 0.81959701 0.73881394 0.77124906 0.76741552 0.73937714 0.76378345 0.74095112
		 0.74001813 0.76507318 0.76384997 0.74169338 0.76320469 0.7424252 0.78207648 0.73779494
		 0.77696562 0.7997722 0.79348242 0.83781832 0.8386876 0.86702174 0.85387641 0.83282137
		 0.85720402 0.88387156 0.86932021 0.81257498 0.81611848 0.7884537 0.78490609 0.78296173
		 0.80101556 0.80392593 0.80776775 0.82660854 0.82213521 0.81980896 0.84426504 0.83898097
		 0.8373841 0.90302503 0.8843503 0.85834384 0.85225838 0.85357124 0.84851134 0.86348063
		 0.87762213 0.89980835 0.81344342 0.83897042 0.83811003 0.84161973 0.87028223 0.86901921
		 0.86978388 0.91026986 0.93367833 0.89084214 0.90460306 0.89741611 0.92551595 0.90361589
		 0.93836272 0.90793568 0.94535798 0.91450638 0.94883609 0.91810143 0.9494434 0.9471119
		 0.91798919 0.91284281 0.94056398 0.90193754 0.92820793 0.88347518 0.87751627 0.96063769
		 0.97460765 0.98199302 0.98449939 0.98656929 0.98571414 0.9774372 0.96004629 0.9341355
		 0.73323482 0.739344 0.74061078 0.71695036 0.72866225 0.72910726 0.72007215 0.74103785
		 0.74132943 0.74026787 0.73649842 0.73237842 0.72747558 0.73094726 0.721237 0.71781778
		 0.72923964 0.73444885 0.72984076 0.69706964 0.71147537 0.71561909 0.69611657 0.667427
		 0.67654383 0.63149321 0.65346605 0.614461 0.63637328 0.60059816 0.62003154 0.62734288
		 0.60532218 0.60074997 0.61823803 0.60708982 0.62264782 0.63071132 0.6184901 0.6337198
		 0.63863915 0.64825124 0.64897656 0.6646148 0.65972453 0.68213654 0.6741026 0.69207817
		 0.70584846 0.70980638 0.72207868 0.72401416 0.71698493 0.71686518 0.70725608 0.71272832
		 0.70053273 0.68457323 0.69439226 0.70677912 0.69397122 0.68046737 0.66759509 0.65226942
		 0.66604948 0.67887354 0.63385218 0.64178872 0.64385355 0.65367132 0.65247959 0.66450262
		 0.64223665 0.63507515 0.62954098 0.73130286 0.73215443 0.73130846 0.72767895 0.72302836
		 0.70216137 0.69853067 0.69435078 0.68688512 0.66517305 0.68373275 0.71157038 0.706204
		 0.71833265 0.71540278 0.71976495 0.72164142 0.70205933 0.69841838 0.68426335 0.67598313
		 0.64734375 0.63815546 0.64598995 0.62582707 0.61050606 0.62842417 0.61169124 0.5950042
		 0.66565967 0.66004372 0.6908865 0.6959691 0.69950527 0.68177849 0.677396 0.67206144
		 0.65383011 0.65971017 0.66344351 0.63697898 0.6434325 0.64630383 0.59811527 0.57803512
		 0.62403387 0.63063723 0.6304304 0.66307414 0.65231574 0.61465478 0.63247436 0.68994755
		 0.66428083 0.66723329 0.66659379 0.63248652 0.63606405 0.63762444 0.57503402 0.55052137
		 0.60338569 0.61561185 0.57986581 0.60740376 0.56420547 0.59890342 0.59207594 0.55437243
		 0.54829311 0.58310688 0.54567939 0.5773828 0.54605496 0.55017668 0.57833403 0.57540321
		 0.58689713 0.55984932 0.60289478 0.60658884 0.52690411 0.51607722 0.51152813 0.50955218
		 0.51035857 0.51362216 0.52551967 0.54677618 0.57683116 0.27088505 0.26498783 0.2638436
		 0.27482045 0.25840783 0.25404072 0.25261348 0.24550524 0.24796778 0.2389183 0.20210817
		 0.21213105 0.20972231 0.20255089 0.22175518 0.21506757 0.18314227 0.19231707 0.19533449
		 0.18976033 0.19474375 0.18761575 0.20234022 0.20180944 0.19349447 0.18564796 0.20990068
		 0.21714616 0.21794537 0.21010527 0.21037328 0.20115563 0.2191087 0.21998563 0.21047398
		 0.2003884 0.19193846 0.18318838 0.19029933 0.18076998 0.29489303 0.28675747 0.28066099
		 0.28887913 0.27799606 0.2717126 0.26608002 0.2748698 0.28290659 0.26903751 0.26255679
		 0.26031125 0.25372794 0.2487987 0.25723845 0.25445089 0.26161397 0.24750292 0.2691077
		 0.27598369 0.23343882 0.23284391 0.23635235 0.24254325 0.23836145 0.22816733 0.31042066
		 0.30399793 0.296821 0.28686789 0.17093402 0.17615432 0.16255352 0.16662571 0.71934891
		 0.71934915 0.70794451 0.70794421 0.71934843 0.7079438 0.71934831 0.70794332 0.71934819
		 0.70794332 0.71934843 0.70794368 0.71934885 0.71934843 0.70794368 0.70794398 0.71934915
		 0.70794439 0.66232491 0.66232514 0.65092039 0.65092003 0.66232443 0.6509195 0.66232395
		 0.6509192 0.66232395 0.65091896 0.66232425 0.65091938 0.66232479 0.66232419 0.65091944
		 0.65091991 0.66232514 0.65092039 0.69653976 0.68513477 0.68513453 0.69653934 0.68513411
		 0.69653893 0.6851337 0.69653851 0.68513358 0.69653857 0.68513393 0.69653881 0.68513393
		 0.68513441 0.69653928 0.69653893 0.68513489 0.69653964 0.63951564 0.63951528 0.6395148
		 0.63951421 0.63951421 0.63951457 0.63951457 0.63951516 0.63951558 0.67373002 0.67372966
		 0.67372924 0.67372882 0.67372882 0.67372906 0.67372906 0.67372966 0.67373002 0.62811077
		 0.62811041 0.62810981 0.62810946 0.6281094 0.62810963 0.62810963 0.62811029 0.62811065
		 0.72261512 0.72261566 0.72261435 0.72261357 0.72261351 0.72261399 0.722615 0.72261405
		 0.7226156 0.73011261 0.73011327 0.73011136 0.73011041 0.73011029 0.730111 0.73011225
		 0.730111 0.73011315 0.74103022 0.74103081 0.74102914 0.74102861 0.74102837 0.74102914
		 0.74102992 0.74102914 0.74103063 0.75492495 0.75492537 0.75492465 0.75492418 0.75492418
		 0.7549243 0.75492489 0.7549243 0.75492537 0.76777077 0.76777077 0.76777065 0.76777041
		 0.76777041 0.76777041 0.76777065 0.76777041 0.76777077 0.77192456 0.9343766 0.9529112
		 0.58633071 0.60486537 0.94882464 0.89584899 0.83899128 0.7696209 0.70025063 0.64339298
		 0.59041721 0.64244235 0.68887615 0.72371125 0.7696209 0.81553066 0.85036588 0.89679956
		 0.67666376 ;
	setAttr ".mve" -type "floatArray" 2106 0.078463197 0.13061342 0.11854085 0.060597092
		 0.10301661 0.047536761 0.083871067 0.044281691 0.062213957 0.052083939 0.092120051
		 0.067977041 0.11169463 0.085935175 0.12564826 0.098703057 0.13376373 0.10205019 0.13694715
		 0.094302118 0.073192984 0.14284688 0.15742564 0.14418533 0.13023806 0.12734938 0.11407167
		 0.10191593 0.092348516 0.08165583 0.074883193 0.11515117 0.10250902 0.13953716 0.12423736
		 0.15334883 0.13844818 0.16229489 0.14700559 0.16934183 0.15352008 0.18129736 0.16358536
		 0.14249837 0.11097074 0.071271241 0.13076198 0.15388584 0.1721935 0.18688127 0.19855309
		 0.20381701 0.22557673 0.210444 0.18534169 0.20025459 0.1698899 0.17217603 0.20500126
		 0.21051919 0.18210769 0.21912119 0.19595662 0.23065919 0.20891806 0.244495 0.21850225
		 0.13019741 0.10590056 0.067563087 0.13344401 0.19228366 0.16215417 0.16934812 0.20111018
		 0.25701666 0.24331141 0.2348671 0.24068424 0.24540588 0.25263575 0.26394218 0.27886349
		 0.22845766 0.23723862 0.29042315 0.27832109 0.27218592 0.27931857 0.28315568 0.28890705
		 0.29910797 0.3130078 0.26653522 0.2758314 0.32980752 0.31904453 0.31152937 0.30672741
		 0.31185967 0.31919363 0.33004427 0.34138775 0.30305153 0.30158973 0.037634104 0.021891028
		 0.088052124 0.09314388 0.01322189 0.079286069 0.01496467 0.065800548 0.026475072
		 0.05482921 0.043390185 0.074972957 0.059358448 0.089799792 0.067310989 0.09735319
		 0.065793544 0.098792702 0.054416031 0.096650928 0.040445596 0.10622418 0.10161725
		 0.11750403 0.12146208 0.093021184 0.10946259 0.077883929 0.092243642 0.064732403
		 0.06415692 0.088686198 0.10552567 0.10471314 0.12248597 0.1115512 0.12792838 0.1122373
		 0.12778169 0.10970503 0.12485605 0.13874936 0.14617616 0.12667993 0.10361314 0.079490572
		 0.12320906 0.13800052 0.14689001 0.15136275 0.15066665 0.16871786 0.16257334 0.18828812
		 0.1898396 0.15736467 0.18907779 0.16520664 0.16790089 0.19666836 0.19845358 0.17103776
		 0.19497791 0.17245668 0.19344005 0.17144924 0.19158271 0.22130591 0.22128201 0.22390756
		 0.23122397 0.23399392 0.22770879 0.22563943 0.2235314 0.2571882 0.25630718 0.2611047
		 0.26875475 0.27181399 0.2644704 0.26201057 0.25936395 0.29770303 0.29649085 0.30020064
		 0.29731944 0.29861224 0.29538286 0.29591072 0.29669303 0.056203038 0.076415628 0.068563521
		 0.084899276 0.048314124 0.034366786 0.033754617 0.0692451 0.066587597 0.070064783
		 0.047665745 0.045311511 0.055000216 0.06219238 0.30640024 0.27236491 0.23979983 0.15142933
		 0.16842586 0.066128254 0.069010764 0.2222628 0.082256705 0.1962471 0.14020807 0.068896413
		 0.11237702 0.10857645 0.054396629 0.055875272 0.10542026 0.10628617 0.070427537 0.069773644
		 0.08350724 0.09585458 0.86081529 0.86253297 0.7518245 0.75422347 0.86081529 0.75422347
		 0.85411489 0.75788665 0.85411489 0.75788665 0.83995044 0.76681244 0.83995044 0.76681244
		 0.56959474 0.55943489 0.56293261 0.57018578 0.5507834 0.55924225 0.56770086 0.57302368
		 0.56594974 0.56117392 0.57303488 0.56474257 0.55791783 0.62102497 0.6198113 0.60105431
		 0.6031003 0.61168253 0.59863579 0.58558881 0.58942837 0.59204364 0.15005171 0.15041435
		 0.16045845 0.15996641 0.15072131 0.16076726 0.16944844 0.16915905 0.16886973 0.61262369
		 0.62053919 0.60210884 0.60002446 0.62153089 0.60381401 0.59295142 0.59076893 0.58742547
		 0.62213826 0.60476118 0.62228084 0.6049552 0.59444189 0.59418035 0.62187904 0.60440123
		 0.5937224 0.57822347 0.58060813 0.57556462 0.56554031 0.56838572 0.5683012 0.15068066
		 0.14953995 0.15906757 0.15796542 0.16705996 0.16525018 0.57979608 0.57756317 0.58171797
		 0.58301759 0.58336824 0.58244413 0.57241523 0.56086075 0.55764985 0.55683208 0.54812378
		 0.077760756 0.086656749 0.086953998 0.07913506 0.096534252 0.096322536 0.094379544
		 0.087444544 0.080509424 0.078324378 0.087013602 0.086746335 0.078042567 0.096746743
		 0.09679395 0.56548464 0.56045544 0.55269653 0.54357302 0.53902233 0.55003774 0.10879064
		 0.10833728 0.10920215 0.12327194 0.12283742 0.12229496 0.10952967 0.10858953 0.12222445
		 0.12360787 0.55371016 0.5449028 0.13694179 0.13648784 0.13735425 0.13768357 0.13798755
		 0.70360076 0.69921964 0.69889843 0.70328557 0.69885635 0.70325512 0.69483757 0.69451106
		 0.67157269 0.67036211 0.65812409 0.6601035 0.66215217 0.67292237 0.6944629 0.6668756
		 0.65274286 0.69952053 0.69514078 0.69981021 0.69543397 0.66338396 0.64735895 0.70389909
		 0.70418453 0.64041686 0.65885484 0.70009708 0.69573087 0.70036972 0.69601631 0.65432
		 0.63347191 0.70446217 0.70472288 0.63947344 0.65840757 0.70061642 0.69627577 0.70082062
		 0.69649142 0.65901119 0.64027107 0.70495796 0.70515156 0.64076519 0.6593923 0.70096552
		 0.69664627 0.70102525 0.69670957 0.65949523 0.64088804 0.70528752 0.70534468 0.64057195
		 0.65926504 0.70097482 0.6966511 0.70083988 0.69650018 0.65876251 0.63989377 0.70530152
		 0.705181 0.6389302 0.65804899 0.70064616 0.6962868 0.70042455 0.69604623 0.65386438
		 0.6327734 0.70500541 0.70480102 0.63995254 0.65857303 0.70020533 0.69581401 0.69999361
		 0.69559515 0.66328824 0.6471349 0.70459425 0.70439041 0.64991033 0.66507155 0.69979501
		 0.6953941 0.69960111 0.69519842 0.66685748 0.65268695 0.70419455 0.70400286 0.65762573
		 0.67008221 0.69940341 0.69499511 0.69917476 0.69477034 0.67329633 0.66255927 0.70381135
		 0.70358431 0.78663409 0.78687996 0.78712571 0.78733075 0.78753579 0.78770602 0.78787613
		 0.78797549 0.78807485 0.78806388 0.78805286 0.78796118 0.78786951 0.78774524 0.78762102
		 0.78748012 0.78733909 0.78720295 0.78706706 0.78608185 0.786358 0.91589808 0.91204613
		 0.91581535 0.92135203 0.9081943 0.91644681 0.92368019 0.096713006 0.11128688 0.11592293
		 0.11328191 0.12586081 0.12545985 0.12545872 0.13486069 0.13815027 0.13969338 0.15352607
		 0.12628978 0.12602282 0.13901937 0.13867503 0.15103829 0.15124029 0.12539649 0.13832468
		 0.15106571 0.15883183 0.16072917 0.16185969 0.1701932 0.16111588 0.16982073 0.11469877
		 0.10570586 0.11529672 0.11734009 0.096036434 0.10519814 0.095963955 0.10996079 0.078650653
		 0.087249875 0.07897687 0.087470472 0.95778161 0.9462499 0.93154597 0.94029009 0.93471813
		 0.92139679 0.90807545 0.91858757 0.92661011 0.97836828 0.97006738 0.95821512 0.96319389
		 0.96176636 0.95417094 0.94398117 0.946473 0.94801921 0.96293557 0.95199502 0.96410471
		 0.94993162 0.93750167 0.94111121 0.96094316 0.94622433 0.93279129 0.90912062 0.91636777
		 0.90103102 0.89398658 0.90293801 0.90879416 0.93495089 0.93587142 0.93333805 0.92511308
		 0.92372382 0.93034035 0.92639273 0.92193019 0.9134441 0.89983267 0.9031201 0.89534295
		 0.89669943 0.91595894 0.91842389 0.90713644 0.90629882 0.11478484 0.10533136 0.64588648
		 0.6486342 0.65138197 0.65182209 0.64516926 0.6385166 0.63474905 0.63098145 0.62133217
		 0.62197876 0.63133395 0.63861024 0.64041245 0.65384734 0.66408253 0.64329296 0.67209607
		 0.68636912 0.68386412 0.66326618 0.64303833 0.68673593 0.66682231 0.66582239 0.67078459
		 0.65497756 0.64256918 0.64669234 0.64648241 0.65507841 0.63914478 0.64076668 0.63341737
		 0.6219101 0.61946899 0.62475634 0.60075438 0.60111254 0.601367 0.62454242 0.62444097
		 0.59986341 0.60034555 0.5761525 0.57665128 0.57562238 0.55808854 0.55398458 0.55466324
		 0.58028662 0.58308673 0.56129056 0.56893307 0.54678625 0.56304413 0.53487724 0.51609522
		 0.53772396 0.55842215 0.53393191 0.54566264 0.53038228 0.51434577 0.53692961 0.55771887
		 0.51491123 0.52972758 0.54728818 0.56059802 0.5703783 0.57739943 0.55950332 0.59996891
		 0.60015541 0.60024059 0.63012487 0.62324643 0.64128047 0.59980565 0.560444 0.56974101
		 0.59991193 0.63972259 0.63021445 0.5786559 0.60055393 0.60085565 0.57912987 0.62241364
		 0.62251985 0.62064779 0.60113293 0.58162564 0.21518987 0.22852421 0.2152999 0.20101285
		 0.23862267 0.22824204 0.24320161 0.23754203 0.1983245 0.18510008 0.18323153 0.17285097
		 0.16697627 0.17263585 0.16704744 0.24269634 0.18647796 0.18349487 0.16196421 0.17256418
		 0.13888305 0.1536651 0.16280967 0.14147741 0.1837585 0.16016236 0.15912664 0.13850325
		 0.17139372 0.15502319 0.17997423 0.18424433 0.18019158 0.1877909 0.17128924 0.18611115
		 0.19372237 0.20816803 0.2056399 0.20269215 0.22717887 0.22754967 0.22691518 0.2029137
		 0.20301881 0.22797322 0.2284725 0.25251222 0.25302863 0.25357759 0.27598667 0.27173644
		 0.27528384 0.24584731 0.24874711 0.26842046 0.26050532 0.26660436 0.28344166 0.29577529
		 0.29282692 0.31522673 0.27139109 0.29675418 0.28460544 0.31703848 0.3004303 0.27211946
		 0.29364961 0.31645289 0.28292185 0.30110836 0.26913768 0.2517373 0.25900871 0.27027124
		 0.22817013 0.22836328 0.22808191 0.20425609 0.19713229 0.18557891 0.22853246 0.22842231
		 0.25966868 0.26929694 0.19703946 0.18719244 0.25043604 0.22775728 0.24994513 0.22744492
		 0.20511824 0.20500839 0.22715771 0.20694715 0.24736036 0.35479945 0.35479945 0.36881447
		 0.36881447 0.38050523 0.38050523 0.38754743 0.38754743 0.33816785 0.33816785 0.32429445
		 0.32429445 0.3159374 0.3159374 0.31313807 0.38990641 0.53921098 0.54937077 0.54587311
		 0.53861988 0.55802214 0.54956353 0.54110467 0.53578204 0.54285592 0.54763168 0.53577071
		 0.54406309 0.55088782 0.48778075 0.48899436 0.50775146 0.50570536 0.49712306 0.51016998
		 0.52321678 0.51937735 0.5167619 0.26874053 0.26837784 0.2583338 0.25882584 0.26807094
		 0.25802499 0.24934381 0.24963313 0.24992251 0.49618199 0.48826641 0.50669688 0.50878108
		 0.4872748 0.50499165 0.51585424 0.51803672 0.52138019 0.48666742 0.50404447 0.48652479
		 0.50385052 0.51436377 0.51462531 0.48692665 0.50440449 0.51508331 0.53058207 0.52819753
		 0.53324109 0.54326522 0.54041982 0.54050446 0.26811159 0.2692523 0.25972468 0.26082683
		 0.25173229 0.25354207 0.52900946 0.53124237 0.52708769 0.52578819 0.52543736 0.52636158
		 0.53639042 0.54794478 0.55115581 0.55197358 0.56068188 0.34103149 0.33213538 0.33183825
		 0.33965713 0.32225794 0.32246965 0.3244127 0.3313477 0.33828276 0.34046781 0.33177865
		 0.33204591 0.34074962 0.32204539 0.3219983 0.54332089 0.54835021 0.55610907 0.56523263
		 0.56978333 0.55876797 0.31000149 0.31045491 0.3095901 0.29552031 0.2959547 0.29649723
		 0.30926257 0.31020272 0.2965678 0.29518425 0.55509549 0.56390285 0.2818504 0.28230441
		 0.28143799 0.28110868 0.28080469 0.40520483 0.40958598 0.40990722 0.40552005 0.40994927
		 0.4055506 0.41396806 0.41429463 0.43723303 0.43844366 0.45068139 0.44870228 0.44665343
		 0.43588325 0.41434276 0.44193015 0.45606279 0.40928513 0.41366488 0.40899542 0.41337168
		 0.44542167 0.46144664 0.4049066 0.40462106 0.4683888 0.44995087 0.40870857 0.41307479
		 0.40843585 0.41278923 0.4544856 0.47533381 0.40434352 0.40408275 0.46933234 0.45039815
		 0.40818921 0.41252992 0.40798503 0.41231418 0.4497945 0.46853465 0.40384763 0.4036541
		 0.46804041 0.44941342 0.40784025 0.41215944 0.40778029 0.41209602 0.44931042 0.46791756
		 0.40351814 0.40346104 0.46823364 0.44954062 0.40783072 0.41215461 0.40796578 0.41230547
		 0.45004311 0.46891195 0.40350407 0.40362459 0.46987551 0.45075661 0.40815943 0.41251892
		 0.40838122 0.41275948 0.45494127 0.4760322 0.40380028 0.4040046 0.46885306 0.45023257
		 0.40860033 0.41299158 0.40881199 0.41321054 0.44551736 0.46167076 0.4042114 0.40441537
		 0.45889533 0.44373411 0.40901062 0.4134115 0.40920472 0.41360724 0.44194818 0.4561187
		 0.40461114 0.40480283 0.45117989 0.4387235 0.40940225 0.41381064 0.40963084 0.4140352
		 0.43550938 0.44624647 0.40499425 0.40522143 0.3221716 0.3219257 0.32167983 0.32147491
		 0.32126993 0.3210997 0.32092953 0.32083014 0.32073081 0.32074183 0.3207528 0.32084447
		 0.32093614 0.32106039 0.32118464 0.3213256 0.32146659 0.32160267 0.32173872 0.32272381
		 0.32244769 0.74955064 0.75340259 0.74963343 0.74409682 0.75725454 0.74900198 0.7417686
		 0.32207918 0.30750528 0.30286932 0.3055104 0.29293144 0.29333234 0.29333353 0.28393155
		 0.28064191 0.27909875 0.26526606 0.2925024 0.29276937 0.27977288 0.28011715 0.2677539
		 0.2675519 0.2933957 0.28046745 0.26772648 0.25996041 0.25806296 0.25693256 0.24859905
		 0.2576763 0.24897146 0.30409336 0.31308633 0.30349547 0.3014521 0.32275581 0.3135941
		 0.32282817 0.30883139 0.34014153 0.33154237 0.33981532 0.33132172 0.70766717 0.71919894
		 0.73390293 0.72515863 0.73073077 0.74405205 0.75737345 0.74686122 0.73883873 0.6870805
		 0.6953814 0.70723355 0.70225501 0.7036823 0.71127778 0.72146773 0.71897566 0.71742964
		 0.70251322 0.71345365 0.70134413 0.7155171 0.727947 0.7243377 0.70450562 0.71922445
		 0.73265755 0.75632828 0.74908102 0.76441777 0.7714622 0.7625109 0.75665474 0.73049796
		 0.72957736 0.73211086 0.7403357 0.74172509 0.73510849 0.73905611 0.74351853 0.75200474
		 0.7656163 0.76232874 0.77010596 0.76874948 0.74948984 0.74702489 0.75831246 0.75915003
		 0.30400735 0.31346077 0.46291918 0.46017143 0.45742369 0.45698351 0.46363634 0.47028917
		 0.4740566 0.47782409 0.48747361 0.48682681 0.47747168 0.47019538 0.35644424 0.3473056
		 0.35245508 0.35854125 0.35979679 0.36272192 0.37022901 0.36349878 0.36781809 0.37356752
		 0.50173557 0.50808889 0.50904608 0.50390768 0.4987694 0.49644941 0.49404591 0.49087772
		 0.4858852 0.48375171 0.47561127 0.47786239 0.4643518 0.46815419 0.45147869 0.45227847
		 0.43162093 0.43167734 0.44168684 0.44203305 0.4226439 0.42335886 0.41422439 0.41401061
		 0.406555 0.40610766 0.39743781 0.39801681 0.38846934 0.38979322 0.37820554 0.3800351
		 0.3707974 0.37185544 0.49192226 0.49693131 0.37430415 0.37967589 0.37678659 0.48841861
		 0.48333001 0.47737569 0.46925652 0.45967275 0.44990277 0.43134373 0.44071215 0.42231146
		 0.41433203 0.40830755 0.40107623 0.39466965 0.38634181 0.44168103 0.44083339 0.46137565
		 0.46140265 0.45840994 0.4414016 0.44077605 0.43174791 0.4335286 0.44477978 0.43616825
		 0.45000023 0.43916485 0.45477679 0.44263512 0.46686676 0.41661683 0.4149605 0.41866723
		 0.43114746 0.42177841 0.42119908 0.42001218 0.4196004 0.41988838 0.42095798 0.45351395
		 0.44623524 0.46064955 0.46730494 0.47227502 0.47805679 0.48169255 0.47645777 0.39242017
		 0.39186347 0.39423785 0.39662004 0.39858028 0.40145144 0.4056614 0.41005307 0.41337481
		 0.43917158 0.43731403 0.35865706 0.3526566 0.36282784 0.37363356 0.36790651 0.50167966
		 0.50801337 0.49640396 0.49084082 0.48372355 0.47559029 0.46433896 0.45226899 0.44168273
		 0.43167734 0.42264771 0.41401643 0.40656444 0.39802796 0.38981527 0.38008186 0.37203416
		 0.37107334 0.49181673 0.49679008 0.37444931 0.37977415 0.37690973 0.48833343 0.48325959
		 0.47731984 0.46921682 0.45964855 0.44988921 0.44070476 0.43134466 0.42232019 0.41434735
		 0.40832663 0.40110397 0.3947171 0.3864131 0.44164449 0.46132234 0.46128473 0.44078931
		 0.44136879 0.45834142 0.44076321 0.44475204 0.43351501 0.43174636 0.43614048 0.4499521
		 0.45470554 0.43911988 0.46674436 0.44257259 0.41664219 0.41498891 0.41869199 0.43114969
		 0.42121571 0.42179149 0.42002729 0.41961655 0.41991448 0.42098418 0.45348421 0.4462212
		 0.46060064 0.46723449 0.47219405 0.48155209 0.47794396 0.47636479 0.39201447 0.39254156
		 0.39435443 0.39671925 0.39867741 0.40153044 0.40571398 0.41008857 0.41339621 0.43730909
		 0.43916696 0.93510211 0.93597567 0.95691109 0.96312642 0.89877033 0.88502431 0.88025665
		 0.89185023 0.89045429 0.90098977 0.86925811 0.88293993 0.89580822 0.88860655 0.86361492
		 0.87785745 0.89016622 0.90747738 0.91977763 0.94060123 0.95991933 0.91449034 0.97921747
		 0.93320942 0.92509282 0.97089028 0.86812836 0.88211453 0.96028936 0.91574657 0.92789471
		 0.97406 0.96020639 0.97297674 0.98090661 0.96313405 0.96743011 0.959378 0.95682645
		 0.93547034 0.90810752 0.93587959 0.91287899 0.89965558 0.90636969 0.90533721 0.91123486
		 0.93177092 0.93268979 0.95542288 0.91468322 0.90903199 0.91413927 0.93401587 0.84108353
		 0.81305909 0.81927443 0.84020972 0.87741506 0.88433516 0.89592898 0.8911612 0.87519586
		 0.8857311 0.90692741 0.88757873 0.88037717 0.89324546 0.91257054 0.89832807 0.86870831
		 0.88601959 0.85640788 0.81626606 0.83558428 0.86169499 0.79696822 0.80529511 0.8510927
		 0.84297597 0.8940708 0.90805727 0.81589603 0.80212557 0.84829074 0.86043894 0.79527903
		 0.80320871 0.81597888 0.81305134 0.81680763 0.80875528 0.81935912 0.84071517 0.86807799
		 0.86330658 0.84030581 0.87652975 0.86981571 0.86495054 0.87084806 0.84441459 0.84349561
		 0.8207624 0.86150229 0.86715353 0.86204612 0.84216964 0.048067153 0.021852136 0.029559791
		 0.051284254 0.01322186 0.022470295 0.025576532 0.0328089 0.054781437 0.056677938
		 0.08578831 0.083177328 0.11294544 0.10527265 0.12197489 0.11272579 0.11002392 0.10275376
		 0.081772327 0.079262853 0.036443889 0.060599804 0.072621286 0.025989711 0.033092141
		 0.10926127 0.11925149 0.11168498 0.089313865 0.051284254 0.029559791 0.067595541
		 0.022470295 0.0328089 0.056677938 0.083177328 0.10527265 0.11272579 0.10275376 0.079262853
		 0.94117904 0.93863738 0.9616586 0.96894789 0.97082686 0.98007643 0.96254408 0.97019756
		 0.93991816 0.94249159 0.91338289 0.91144657 0.88998091 0.88272256 0.88045752 0.87120789
		 0.88838494 0.88070083 0.91063124 0.90745175 0.96636069 0.92803895 0.94348168 0.97471941
		 0.96550381 0.8892529 0.88135982 0.89104116 0.91473782 0.93863738 0.92564261 0.9616586
		 0.97082686 0.96254408 0.93991816 0.91338289 0.88998091 0.88045752 0.88838494 0.91063124
		 0.029559791 0.051284254 0.022470295 0.0328089 0.056677938 0.083177328 0.10527265
		 0.11272579 0.10275376 0.079262853 0.93863738 0.9616586 0.97082686 0.96254408 0.93991816
		 0.91338289 0.88998091 0.88045752 0.88838494 0.91063124 0.59844422 0.58715719 0.58467132
		 0.59411269 0.57652617 0.57409108 0.57092625 0.58608979 0.58096457 0.57144254 0.56314111
		 0.56649047 0.55386162 0.55161119 0.53735435 0.53874379 0.52588212 0.52678186 0.53958142
		 0.5323056 0.5484882 0.54246438 0.55989844 0.55576515 0.50335079 0.50642699 0.52181381
		 0.52054429 0.56656772 0.58446217 0.5885244 0.57075357 0.55861694 0.57677692 0.54538924
		 0.56307828 0.52763718 0.53760231 0.49754709 0.51771551 0.51362151 0.4993588 0.48293298
		 0.47733903 0.46685213 0.45832527 0.4527199 0.44396067 0.4331978 0.44178572 0.44430643
		 0.44496533 0.42786258 0.42955533 0.44755989 0.42701912 0.45333982 0.46428958 0.43648562
		 0.42623127 0.48252094 0.46020019 0.52841085 0.51705843 0.5315122 0.53958529 0.54834992
		 0.55418092 0.53948659 0.52018493 0.50187612 0.48721388 0.50736636 0.52674174 0.51258814
		 0.49504757 0.47572482 0.50060749 0.49061733 0.4851492 0.47762159 0.46192497 0.46742964
		 0.45801321 0.47211149 0.48254412 0.59877342 0.61905253 0.6218161 0.60371208 0.65373784
		 0.65531176 0.69511002 0.69378293 0.74416214 0.74670798 0.61257112 0.6513201 0.69109911
		 0.73714733 0.40837499 0.41100433 0.34347203 0.34011221 0.35562646 0.35469791 0.38713852
		 0.38612893 0.36748955 0.37064937 0.40216216 0.40096924 0.41453362 0.41560733 0.40648213
		 0.32318094 0.31916037 0.3217341 0.34193707 0.41404679 0.33068588 0.33612663 0.35853663
		 0.35064653 0.41777578 0.34876937 0.37087515 0.34588125 0.32499272 0.3581281 0.37366593
		 0.38970688 0.39209718 0.3772023 0.36206734 0.36724049 0.38155067 0.39577067 0.37443754
		 0.38641575 0.3992742 0.36969465 0.38469648 0.38510087 0.39059499 0.40162489 0.68018013
		 0.72237849 0.66361129 0.70693761 0.59862483 0.59603804 0.61725748 0.64622134 0.58968818
		 0.61316192 0.63669664 0.41189018 0.39965418 0.62601215 0.6409027 0.60913169 0.61345625
		 0.5855661 0.58437169 0.56003755 0.55536658 0.53552943 0.52895337 0.5138998 0.50869995
		 0.48911434 0.49284175 0.47080082 0.46502382 0.44778648 0.43866363 0.42392921 0.40147957
		 0.43186301 0.46276444 0.49094406 0.50428534 0.51691431 0.54939449 0.58638161 0.62635136
		 0.66965169 0.59598577 0.58586675 0.57509172 0.57436222 0.57365733 0.58315367 0.58917522
		 0.56404597 0.55241805 0.53957295 0.52788728 0.54122198 0.53437215 0.5503549 0.54533499
		 0.55910778 0.56202161 0.52313423 0.50814527 0.57179052 0.57454431 0.59202033 0.58989531
		 0.58502644 0.56587034 0.57484335 0.55488408 0.55094528 0.53875083 0.51208383 0.51196647
		 0.52556843 0.53187615 0.49176535 0.49564072 0.47202906 0.47904328 0.46403906 0.45427385
		 0.44412532 0.45444739 0.45383584 0.43894252 0.43568158 0.45335239 0.43308654 0.45452598
		 0.45854446 0.42993188 0.46778163 0.48488471 0.53084922 0.5201028 0.54274005 0.53558403
		 0.55773467 0.55314344 0.54584569 0.52547717 0.50585175 0.49239048 0.51398319 0.53473794
		 0.52204472 0.50304258 0.4823499 0.50180399 0.5110513 0.48774725 0.49433136 0.47111505
		 0.4754467 0.46820721 0.48308712 0.49412248 0.60072654 0.62105572 0.65600991 0.69794261
		 0.74768937 0.61753106 0.65682966 0.69721311 0.74421698 0.41868773 0.41419405 0.35840935
		 0.34335443 0.38940194 0.37312376 0.40435657 0.41660035 0.41046408 0.32307661 0.34738064
		 0.32790595 0.42352408 0.34068266 0.35995674 0.3699002 0.3489154 0.42915955 0.38371021
		 0.36316988 0.35320282 0.33277363 0.36298946 0.37809575 0.39386192 0.3980329 0.38350362
		 0.36882809 0.37584722 0.38963884 0.40355414 0.3847622 0.39615276 0.40878552 0.39895317
		 0.38588881 0.3967694 0.40162984 0.41273245 0.68934268 0.73280412 0.7210294 0.67573667
		 0.60473365 0.60469276 0.62571603 0.65487629 0.60147589 0.62470067 0.64818734 0.42857784
		 0.41873327 0.65581661 0.63964278 0.63058627 0.62350261 0.60293037 0.60067672 0.5757125
		 0.57477397 0.54884684 0.55198562 0.52876186 0.53082645 0.50904965 0.48443767 0.48743248
		 0.5098682 0.46345654 0.45699063 0.43789095 0.41496772 0.4534471 0.485569 0.51432908
		 0.54061288 0.52784675 0.57283288 0.60880035 0.64683181 0.68733346 0.70807683 0.70714623
		 0.69277507 0.69691288 0.70758188 0.69330245 0.71070367 0.69808763 0.7146486 0.70748174
		 0.69464612 0.69661379 0.71307677 0.71193844 0.7042349 0.71604633 0.70414132 0.69687819
		 0.71283537 0.71552348 0.7257756 0.725263 0.72550094 0.74142253 0.74110949 0.74030459
		 0.72624022 0.72619146 0.74140698 0.74166691 0.75996339 0.75986767 0.75983918 0.781223
		 0.78109765 0.78094876 0.75945723 0.75886637 0.78061545 0.78024018 0.76857042 0.77209115
		 0.75071359 0.74722016 0.7750684 0.75374734 0.73430967 0.73159981 0.72843993 0.77738118
		 0.7561568 0.77890122 0.75780678 0.73841888 0.73678023 0.72154099 0.71887207 0.72342265
		 0.71728802 0.71523345 0.72140735 0.73845589 0.75945461 0.78033477 0.78227973 0.71857047
		 0.75996327 0.73895341 0.72014534 0.70595646 0.735888 0.71757436 0.77996695 0.75753963
		 0.94655097 0.95447284 0.95447361 0.94655311 0.93863094 0.93863332 0.93071318 0.93071419
		 0.92279613 0.92279547 0.91487861 0.91487658 0.97031724 0.97823656 0.97823453 0.97031498
		 0.96239567 0.96239448 0.94655931 0.95447564 0.95447612 0.9465605 0.93863988 0.93864119
		 0.93071747 0.93071818 0.92279339 0.92279321 0.91487026 0.91486913 0.97030824 0.97822833
		 0.97822714 0.97030687 0.96239126 0.96239054 0.95447433 0.95447475 0.94655645 0.9465549
		 0.9386369 0.93863523 0.93071592 0.93071508 0.92279434 0.92279476 0.914873 0.91487479
		 0.97823119 0.97031128 0.97031295 0.97823274 0.96239275 0.96239358 0.95447636 0.94656157
		 0.9386425 0.93071878 0.92279273 0.91486812 0.97822618 0.97030574 0.96238995 0.95447528
		 0.946558 0.93863851 0.93071669 0.92279387 0.91487163 0.9782297 0.97030973 0.96239185
		 0.95447683 0.94656253 0.93864357 0.93071938 0.92279243 0.9148671 0.97822523 0.97030473
		 0.96238947 0.94655252 0.95447356 0.93863273 0.93071389 0.92279565 0.91487694 0.97031558
		 0.97823501 0.96239471 0.94655252 0.95447356 0.93863273 0.93071389 0.92279541 0.91487694
		 0.97031546 0.97823513 0.96239471 0.9465512 0.95447308 0.93863142 0.93071318 0.92279601
		 0.91487837 0.97031683 0.97823632 0.96239543 0.94654679 0.95447159 0.93862635 0.93071079
		 0.92279756 0.9148829 0.97032177 0.97824085 0.96239781 0.94652969 0.95446599 0.93860781
		 0.93070161 0.9228031 0.91489989 0.97034031 0.97825789 0.96240717 0.94659758 0.76055133
		 0.80400419 0.80400419 0.76055133 0.84746772 0.87937486 0.88622022 0.89112943 0.88622022
		 0.87937486 0.84746772 0.73086405 0.7213186 0.71745169 0.71774995 0.71745169 0.7213186
		 0.73086405 0.34138775 ;
	setAttr ".pack" no;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "E94F367F-48EE-55F7-D1DC-F8B146FA3905";
	setAttr ".uopa" yes;
	setAttr -s 354 ".uvtk";
	setAttr ".uvtk[1533]" -type "float2" -0.00053936243 -0.010045886 ;
	setAttr ".uvtk[1534]" -type "float2" -0.000454247 -0.0083019733 ;
	setAttr ".uvtk[1535]" -type "float2" -0.0022246838 -0.0079179406 ;
	setAttr ".uvtk[1536]" -type "float2" -0.0033143759 -0.0093766451 ;
	setAttr ".uvtk[1537]" -type "float2" -0.00037205219 -0.0066594481 ;
	setAttr ".uvtk[1538]" -type "float2" -0.0018647313 -0.006283164 ;
	setAttr ".uvtk[1539]" -type "float2" -0.0054966211 -0.0057942271 ;
	setAttr ".uvtk[1540]" -type "float2" -0.0052344799 -0.0081370473 ;
	setAttr ".uvtk[1541]" -type "float2" -0.0037561059 -0.0073451996 ;
	setAttr ".uvtk[1542]" -type "float2" -0.0036811233 -0.0058739781 ;
	setAttr ".uvtk[1543]" -type "float2" -0.001624465 -0.0045913458 ;
	setAttr ".uvtk[1544]" -type "float2" -0.00029265881 -0.0051088333 ;
	setAttr ".uvtk[1545]" -type "float2" -0.00019234419 -0.0031576157 ;
	setAttr ".uvtk[1546]" -type "float2" -0.0013956428 -0.0028098822 ;
	setAttr ".uvtk[1547]" -type "float2" -5.9247017e-005 -0.00060713291 ;
	setAttr ".uvtk[1548]" -type "float2" -0.0013545156 -0.00082182884 ;
	setAttr ".uvtk[1549]" -type "float2" 3.8802624e-005 0.00116539 ;
	setAttr ".uvtk[1550]" -type "float2" -0.0017552972 0.001026392 ;
	setAttr ".uvtk[1551]" -type "float2" -0.0025957227 -0.00095123053 ;
	setAttr ".uvtk[1552]" -type "float2" -0.0032466054 0.00017291307 ;
	setAttr ".uvtk[1553]" -type "float2" -0.0029589534 -0.0023273826 ;
	setAttr ".uvtk[1554]" -type "float2" -0.0043712258 -0.001396656 ;
	setAttr ".uvtk[1555]" -type "float2" -0.0034048557 -0.0040903687 ;
	setAttr ".uvtk[1556]" -type "float2" -0.0051093698 -0.003451705 ;
	setAttr ".uvtk[1557]" -type "float2" 0.00019687414 0.0046466589 ;
	setAttr ".uvtk[1558]" -type "float2" -0.0024814606 0.0041713715 ;
	setAttr ".uvtk[1559]" -type "float2" -0.0019942522 0.0017939806 ;
	setAttr ".uvtk[1560]" -type "float2" 5.7697296e-005 0.0019901395 ;
	setAttr ".uvtk[1561]" -type "float2" -0.0084984303 -0.0051208138 ;
	setAttr ".uvtk[1562]" -type "float2" -0.0089258552 -0.0078855753 ;
	setAttr ".uvtk[1563]" -type "float2" -0.0059620142 -0.0085132122 ;
	setAttr ".uvtk[1564]" -type "float2" -0.0063186884 -0.0057675242 ;
	setAttr ".uvtk[1565]" -type "float2" -0.011564612 -0.0038923621 ;
	setAttr ".uvtk[1566]" -type "float2" -0.013260782 -0.0066981912 ;
	setAttr ".uvtk[1567]" -type "float2" -0.014943957 -0.0018485785 ;
	setAttr ".uvtk[1568]" -type "float2" -0.018628716 -0.0045816302 ;
	setAttr ".uvtk[1569]" -type "float2" -0.01732415 0.00089424849 ;
	setAttr ".uvtk[1570]" -type "float2" -0.020880461 -0.0006454587 ;
	setAttr ".uvtk[1571]" -type "float2" -0.022415459 0.0055433512 ;
	setAttr ".uvtk[1572]" -type "float2" -0.021992922 0.0024272203 ;
	setAttr ".uvtk[1573]" -type "float2" -0.018510222 0.0030597448 ;
	setAttr ".uvtk[1574]" -type "float2" -0.019425571 0.005263418 ;
	setAttr ".uvtk[1575]" -type "float2" -0.019450665 0.0078013241 ;
	setAttr ".uvtk[1576]" -type "float2" -0.022080004 0.0086656213 ;
	setAttr ".uvtk[1577]" -type "float2" -0.018517852 0.010285914 ;
	setAttr ".uvtk[1578]" -type "float2" -0.02080214 0.011603355 ;
	setAttr ".uvtk[1579]" -type "float2" -0.017047822 0.012469441 ;
	setAttr ".uvtk[1580]" -type "float2" -0.015681803 0.013822794 ;
	setAttr ".uvtk[1581]" -type "float2" -0.01627934 0.015485734 ;
	setAttr ".uvtk[1582]" -type "float2" -0.018776715 0.014158845 ;
	setAttr ".uvtk[1583]" -type "float2" -0.014194608 0.013769388 ;
	setAttr ".uvtk[1584]" -type "float2" -0.012423456 0.013667554 ;
	setAttr ".uvtk[1585]" -type "float2" -0.011400104 0.016310036 ;
	setAttr ".uvtk[1586]" -type "float2" -0.013854265 0.016048521 ;
	setAttr ".uvtk[1587]" -type "float2" -0.010231018 0.013266683 ;
	setAttr ".uvtk[1588]" -type "float2" -0.0086666346 0.016440362 ;
	setAttr ".uvtk[1589]" -type "float2" -0.0075289011 0.012373656 ;
	setAttr ".uvtk[1590]" -type "float2" -0.004945159 0.010681838 ;
	setAttr ".uvtk[1591]" -type "float2" 0.00070989132 0.014977723 ;
	setAttr ".uvtk[1592]" -type "float2" -0.0049728155 0.016562104 ;
	setAttr ".uvtk[1593]" -type "float2" -0.0033199787 0.0078649819 ;
	setAttr ".uvtk[1594]" -type "float2" 0.00052756071 0.011313677 ;
	setAttr ".uvtk[1595]" -type "float2" -0.0037168264 0.00077468157 ;
	setAttr ".uvtk[1596]" -type "float2" -0.0046389103 0.0025287271 ;
	setAttr ".uvtk[1597]" -type "float2" -0.0063756108 0.00029551983 ;
	setAttr ".uvtk[1598]" -type "float2" -0.0050142407 -0.00095182657 ;
	setAttr ".uvtk[1599]" -type "float2" -0.0076807141 -0.0023060441 ;
	setAttr ".uvtk[1600]" -type "float2" -0.0058827996 -0.0032069683 ;
	setAttr ".uvtk[1601]" -type "float2" -0.010021687 -0.00093656778 ;
	setAttr ".uvtk[1602]" -type "float2" -0.008197546 0.0020456314 ;
	setAttr ".uvtk[1603]" -type "float2" -0.005992353 0.0048744678 ;
	setAttr ".uvtk[1604]" -type "float2" -0.0077561736 0.0071398914 ;
	setAttr ".uvtk[1605]" -type "float2" -0.010162711 0.0040262341 ;
	setAttr ".uvtk[1606]" -type "float2" -0.012461364 0.0010325909 ;
	setAttr ".uvtk[1607]" -type "float2" -0.014623046 0.0032194257 ;
	setAttr ".uvtk[1608]" -type "float2" -0.012212276 0.0059295297 ;
	setAttr ".uvtk[1609]" -type "float2" -0.0099237561 0.0089150369 ;
	setAttr ".uvtk[1610]" -type "float2" -0.016065836 0.0050705075 ;
	setAttr ".uvtk[1611]" -type "float2" -0.017144382 0.0066140294 ;
	setAttr ".uvtk[1612]" -type "float2" -0.013982117 0.0074588954 ;
	setAttr ".uvtk[1613]" -type "float2" -0.015390873 0.0086219609 ;
	setAttr ".uvtk[1614]" -type "float2" -0.013809621 0.011047184 ;
	setAttr ".uvtk[1615]" -type "float2" -0.012027502 0.010196686 ;
	setAttr ".uvtk[1616]" -type "float2" -0.015339792 0.011651576 ;
	setAttr ".uvtk[1617]" -type "float2" -0.016669154 0.009473294 ;
	setAttr ".uvtk[1618]" -type "float2" -0.017689407 0.0078614056 ;
	setAttr ".uvtk[1619]" -type "float2" -0.0036911964 -0.010096788 ;
	setAttr ".uvtk[1620]" -type "float2" -0.0038625002 -0.013230026 ;
	setAttr ".uvtk[1621]" -type "float2" -0.00071626902 -0.013657033 ;
	setAttr ".uvtk[1622]" -type "float2" -0.00058084726 -0.010859847 ;
	setAttr ".uvtk[1623]" -type "float2" -0.0045226812 -0.018589139 ;
	setAttr ".uvtk[1624]" -type "float2" -0.00097072124 -0.018832326 ;
	setAttr ".uvtk[1625]" -type "float2" -0.0057170391 -0.02498138 ;
	setAttr ".uvtk[1626]" -type "float2" -0.0012632012 -0.02477634 ;
	setAttr ".uvtk[1627]" -type "float2" -0.0071840286 -0.032560289 ;
	setAttr ".uvtk[1628]" -type "float2" -0.0016639233 -0.03295362 ;
	setAttr ".uvtk[1629]" -type "float2" -0.008420825 -0.012228608 ;
	setAttr ".uvtk[1630]" -type "float2" -0.0095751286 -0.018215597 ;
	setAttr ".uvtk[1631]" -type "float2" -0.010830462 -0.02436167 ;
	setAttr ".uvtk[1632]" -type "float2" -0.01268965 -0.031476438 ;
	setAttr ".uvtk[1633]" -type "float2" -0.0081304312 0.019320995 ;
	setAttr ".uvtk[1634]" -type "float2" -0.011052847 0.018914759 ;
	setAttr ".uvtk[1635]" -type "float2" 0.0014286637 0.02934894 ;
	setAttr ".uvtk[1636]" -type "float2" -0.0035827756 0.029868066 ;
	setAttr ".uvtk[1637]" -type "float2" -0.0029904246 0.027471006 ;
	setAttr ".uvtk[1638]" -type "float2" 0.0013416409 0.027614444 ;
	setAttr ".uvtk[1639]" -type "float2" -0.0024292469 0.022602171 ;
	setAttr ".uvtk[1640]" -type "float2" 0.001098454 0.022758156 ;
	setAttr ".uvtk[1641]" -type "float2" 0.0012426376 0.025638074 ;
	setAttr ".uvtk[1642]" -type "float2" -0.0026285648 0.025149852 ;
	setAttr ".uvtk[1643]" -type "float2" -0.0024395585 0.020280927 ;
	setAttr ".uvtk[1644]" -type "float2" 0.00098377466 0.020465255 ;
	setAttr ".uvtk[1645]" -type "float2" -0.0023398399 0.018369466 ;
	setAttr ".uvtk[1646]" -type "float2" 0.00087070465 0.018203557 ;
	setAttr ".uvtk[1647]" -type "float2" -0.0052556396 0.019613475 ;
	setAttr ".uvtk[1648]" -type "float2" 0.0015861392 0.032484025 ;
	setAttr ".uvtk[1649]" -type "float2" -0.0044659972 0.033105224 ;
	setAttr ".uvtk[1650]" -type "float2" -0.0079897642 0.032707602 ;
	setAttr ".uvtk[1651]" -type "float2" -0.0070179701 0.029586077 ;
	setAttr ".uvtk[1652]" -type "float2" -0.013868153 0.018444687 ;
	setAttr ".uvtk[1653]" -type "float2" -0.014002442 0.031324476 ;
	setAttr ".uvtk[1654]" -type "float2" -0.018380225 0.030483842 ;
	setAttr ".uvtk[1655]" -type "float2" -0.016349196 0.027021378 ;
	setAttr ".uvtk[1656]" -type "float2" -0.013096094 0.028240412 ;
	setAttr ".uvtk[1657]" -type "float2" -0.016863346 0.017868519 ;
	setAttr ".uvtk[1658]" -type "float2" -0.020983636 0.028530478 ;
	setAttr ".uvtk[1659]" -type "float2" -0.018735349 0.025114983 ;
	setAttr ".uvtk[1660]" -type "float2" -0.0099678636 0.028976709 ;
	setAttr ".uvtk[1661]" -type "float2" -0.010515392 0.032204092 ;
	setAttr ".uvtk[1662]" -type "float2" -0.0062409639 0.0270845 ;
	setAttr ".uvtk[1663]" -type "float2" -0.0056928396 0.024683774 ;
	setAttr ".uvtk[1664]" -type "float2" -0.0053924322 0.022205353 ;
	setAttr ".uvtk[1665]" -type "float2" -0.00818187 0.021836042 ;
	setAttr ".uvtk[1666]" -type "float2" -0.0086315274 0.024137408 ;
	setAttr ".uvtk[1667]" -type "float2" -0.0092251301 0.026475847 ;
	setAttr ".uvtk[1668]" -type "float2" -0.012136161 0.025676548 ;
	setAttr ".uvtk[1669]" -type "float2" -0.011444986 0.023465544 ;
	setAttr ".uvtk[1670]" -type "float2" -0.01108557 0.021268457 ;
	setAttr ".uvtk[1671]" -type "float2" -0.014864206 0.024564564 ;
	setAttr ".uvtk[1672]" -type "float2" -0.014047742 0.02271387 ;
	setAttr ".uvtk[1673]" -type "float2" -0.013801038 0.020727128 ;
	setAttr ".uvtk[1674]" -type "float2" -0.023943007 0.025297374 ;
	setAttr ".uvtk[1675]" -type "float2" -0.021057606 0.022979498 ;
	setAttr ".uvtk[1676]" -type "float2" -0.017039478 0.022917002 ;
	setAttr ".uvtk[1677]" -type "float2" -0.016099215 0.022068143 ;
	setAttr ".uvtk[1678]" -type "float2" -0.016302049 0.020363957 ;
	setAttr ".uvtk[1679]" -type "float2" -0.015520275 -0.02267462 ;
	setAttr ".uvtk[1680]" -type "float2" -0.017833114 -0.029194534 ;
	setAttr ".uvtk[1681]" -type "float2" -0.020018101 -0.02011466 ;
	setAttr ".uvtk[1682]" -type "float2" -0.023446023 -0.026808858 ;
	setAttr ".uvtk[1683]" -type "float2" -0.010102034 -0.010073841 ;
	setAttr ".uvtk[1684]" -type "float2" -0.014046133 -0.0096741319 ;
	setAttr ".uvtk[1685]" -type "float2" -0.013913214 -0.012952685 ;
	setAttr ".uvtk[1686]" -type "float2" -0.014455497 -0.017427802 ;
	setAttr ".uvtk[1687]" -type "float2" -0.018884003 -0.0086930394 ;
	setAttr ".uvtk[1688]" -type "float2" -0.018688858 -0.012319922 ;
	setAttr ".uvtk[1689]" -type "float2" -0.018806994 -0.015956163 ;
	setAttr ".uvtk[1690]" -type "float2" -0.025062323 0.018777877 ;
	setAttr ".uvtk[1691]" -type "float2" -0.028679132 0.020668417 ;
	setAttr ".uvtk[1692]" -type "float2" -0.022060633 -0.014305353 ;
	setAttr ".uvtk[1693]" -type "float2" -0.02418679 -0.016606033 ;
	setAttr ".uvtk[1694]" -type "float2" -0.023076355 -0.011697173 ;
	setAttr ".uvtk[1695]" -type "float2" -0.027417958 -0.012365341 ;
	setAttr ".uvtk[1696]" -type "float2" -0.024034262 -0.0080561638 ;
	setAttr ".uvtk[1697]" -type "float2" -0.029402852 -0.0078716278 ;
	setAttr ".uvtk[1698]" -type "float2" -0.024701715 -0.0041118264 ;
	setAttr ".uvtk[1699]" -type "float2" -0.030483723 -0.0033901334 ;
	setAttr ".uvtk[1700]" -type "float2" -0.02571696 -0.00032514334 ;
	setAttr ".uvtk[1701]" -type "float2" -0.031021118 0.00069087744 ;
	setAttr ".uvtk[1702]" -type "float2" -0.026272416 0.0030167699 ;
	setAttr ".uvtk[1703]" -type "float2" -0.031114936 0.0038201809 ;
	setAttr ".uvtk[1704]" -type "float2" -0.030754685 0.0068462491 ;
	setAttr ".uvtk[1705]" -type "float2" -0.026255071 0.006270349 ;
	setAttr ".uvtk[1706]" -type "float2" -0.025459886 0.0096758008 ;
	setAttr ".uvtk[1707]" -type "float2" -0.029743016 0.01056841 ;
	setAttr ".uvtk[1708]" -type "float2" -0.023774981 0.013231665 ;
	setAttr ".uvtk[1709]" -type "float2" -0.027833879 0.014641225 ;
	setAttr ".uvtk[1710]" -type "float2" -0.020922422 0.016917765 ;
	setAttr ".uvtk[1711]" -type "float2" -0.020001709 0.020386398 ;
	setAttr ".uvtk[1712]" -type "float2" -0.032844543 0.015691966 ;
	setAttr ".uvtk[1713]" -type "float2" -0.035002947 0.010917485 ;
	setAttr ".uvtk[1714]" -type "float2" -0.036144078 0.0065635443 ;
	setAttr ".uvtk[1715]" -type "float2" -0.03653127 0.0045022368 ;
	setAttr ".uvtk[1716]" -type "float2" -0.036851108 0.0025509596 ;
	setAttr ".uvtk[1717]" -type "float2" -0.036719024 -0.0024673939 ;
	setAttr ".uvtk[1718]" -type "float2" -0.035440147 -0.008182168 ;
	setAttr ".uvtk[1719]" -type "float2" -0.03275311 -0.014357746 ;
	setAttr ".uvtk[1720]" -type "float2" -0.028749764 -0.02104789 ;
	setAttr ".uvtk[1721]" -type "float2" 0.0022906661 -0.0096660852 ;
	setAttr ".uvtk[1722]" -type "float2" 0.0013467669 -0.0081025958 ;
	setAttr ".uvtk[1723]" -type "float2" 0.0011510849 -0.0064377785 ;
	setAttr ".uvtk[1724]" -type "float2" 0.004806757 -0.0063250661 ;
	setAttr ".uvtk[1725]" -type "float2" 0.00299716 -0.0062161684 ;
	setAttr ".uvtk[1726]" -type "float2" 0.0029284358 -0.0076833963 ;
	setAttr ".uvtk[1727]" -type "float2" 0.0043244362 -0.0086137652 ;
	setAttr ".uvtk[1728]" -type "float2" 0.0010851026 -0.0047311783 ;
	setAttr ".uvtk[1729]" -type "float2" 0.0010400414 -0.0029345751 ;
	setAttr ".uvtk[1730]" -type "float2" 0.0012040138 -0.00094991922 ;
	setAttr ".uvtk[1731]" -type "float2" 0.0017864704 0.00085556507 ;
	setAttr ".uvtk[1732]" -type "float2" 0.0024229884 -0.0012047291 ;
	setAttr ".uvtk[1733]" -type "float2" 0.0031805634 -0.00014638901 ;
	setAttr ".uvtk[1734]" -type "float2" 0.0026441216 -0.0026158094 ;
	setAttr ".uvtk[1735]" -type "float2" 0.0041444302 -0.0018401742 ;
	setAttr ".uvtk[1736]" -type "float2" 0.0046727061 -0.0039681792 ;
	setAttr ".uvtk[1737]" -type "float2" 0.0029079914 -0.0044183731 ;
	setAttr ".uvtk[1738]" -type "float2" 0.0021030903 0.0015899539 ;
	setAttr ".uvtk[1739]" -type "float2" 0.0028151274 0.0039058328 ;
	setAttr ".uvtk[1740]" -type "float2" 0.0078784227 -0.0059277415 ;
	setAttr ".uvtk[1741]" -type "float2" 0.0056526661 -0.0063531995 ;
	setAttr ".uvtk[1742]" -type "float2" 0.0050124526 -0.0090534091 ;
	setAttr ".uvtk[1743]" -type "float2" 0.0080257058 -0.0087250471 ;
	setAttr ".uvtk[1744]" -type "float2" 0.012458444 -0.0079727769 ;
	setAttr ".uvtk[1745]" -type "float2" 0.011049807 -0.0050130486 ;
	setAttr ".uvtk[1746]" -type "float2" 0.018010437 -0.0063994527 ;
	setAttr ".uvtk[1747]" -type "float2" 0.014615476 -0.003315568 ;
	setAttr ".uvtk[1748]" -type "float2" 0.020641983 -0.0027070045 ;
	setAttr ".uvtk[1749]" -type "float2" 0.017256439 -0.00082290173 ;
	setAttr ".uvtk[1750]" -type "float2" 0.022783935 0.0032973289 ;
	setAttr ".uvtk[1751]" -type "float2" 0.019781351 0.0033154488 ;
	setAttr ".uvtk[1752]" -type "float2" 0.018651664 0.0012138486 ;
	setAttr ".uvtk[1753]" -type "float2" 0.022054017 0.00023931265 ;
	setAttr ".uvtk[1754]" -type "float2" 0.022760451 0.0064366758 ;
	setAttr ".uvtk[1755]" -type "float2" 0.020058453 0.0058378875 ;
	setAttr ".uvtk[1756]" -type "float2" 0.021780908 0.0094860494 ;
	setAttr ".uvtk[1757]" -type "float2" 0.019377112 0.0084023178 ;
	setAttr ".uvtk[1758]" -type "float2" 0.018131256 0.010720551 ;
	setAttr ".uvtk[1759]" -type "float2" 0.020019472 0.012229353 ;
	setAttr ".uvtk[1760]" -type "float2" 0.017666399 0.013797343 ;
	setAttr ".uvtk[1761]" -type "float2" 0.016906321 0.012202531 ;
	setAttr ".uvtk[1762]" -type "float2" 0.015421212 0.012297004 ;
	setAttr ".uvtk[1763]" -type "float2" 0.015309155 0.014598131 ;
	setAttr ".uvtk[1764]" -type "float2" 0.012892962 0.015101969 ;
	setAttr ".uvtk[1765]" -type "float2" 0.01364851 0.012371719 ;
	setAttr ".uvtk[1766]" -type "float2" 0.010185719 0.0155029 ;
	setAttr ".uvtk[1767]" -type "float2" 0.011426985 0.012190372 ;
	setAttr ".uvtk[1768]" -type "float2" 0.0086496472 0.0115695 ;
	setAttr ".uvtk[1769]" -type "float2" 0.0065220594 0.015990317 ;
	setAttr ".uvtk[1770]" -type "float2" 0.0059105158 0.010142297 ;
	setAttr ".uvtk[1771]" -type "float2" 0.0040143728 0.0074997544 ;
	setAttr ".uvtk[1772]" -type "float2" 0.0037153363 0.00039798021 ;
	setAttr ".uvtk[1773]" -type "float2" 0.0048013926 0.0020583272 ;
	setAttr ".uvtk[1774]" -type "float2" 0.0048199296 -0.0014392734 ;
	setAttr ".uvtk[1775]" -type "float2" 0.0063045621 -0.0003336072 ;
	setAttr ".uvtk[1776]" -type "float2" 0.0054590702 -0.0037560463 ;
	setAttr ".uvtk[1777]" -type "float2" 0.0073433518 -0.0030466318 ;
	setAttr ".uvtk[1778]" -type "float2" 0.009809196 -0.0019190907 ;
	setAttr ".uvtk[1779]" -type "float2" 0.0082921386 0.0012279749 ;
	setAttr ".uvtk[1780]" -type "float2" 0.006378293 0.004260242 ;
	setAttr ".uvtk[1781]" -type "float2" 0.0083571672 0.0063400865 ;
	setAttr ".uvtk[1782]" -type "float2" 0.010443628 0.0030038357 ;
	setAttr ".uvtk[1783]" -type "float2" 0.012432456 -0.00020289421 ;
	setAttr ".uvtk[1784]" -type "float2" 0.01480037 0.0017582774 ;
	setAttr ".uvtk[1785]" -type "float2" 0.012671232 0.004694283 ;
	setAttr ".uvtk[1786]" -type "float2" 0.010689855 0.0078914165 ;
	setAttr ".uvtk[1787]" -type "float2" 0.017645955 0.0048856139 ;
	setAttr ".uvtk[1788]" -type "float2" 0.016419709 0.003456831 ;
	setAttr ".uvtk[1789]" -type "float2" 0.016100645 0.007057488 ;
	setAttr ".uvtk[1790]" -type "float2" 0.014583766 0.0060402155 ;
	setAttr ".uvtk[1791]" -type "float2" 0.014767885 0.0096272826 ;
	setAttr ".uvtk[1792]" -type "float2" 0.012910247 0.0089579821 ;
	setAttr ".uvtk[1793]" -type "float2" 0.016350508 0.010076553 ;
	setAttr ".uvtk[1794]" -type "float2" 0.017457008 0.0077775121 ;
	setAttr ".uvtk[1795]" -type "float2" 0.018312037 0.0060724914 ;
	setAttr ".uvtk[1796]" -type "float2" 0.0025891662 -0.010398567 ;
	setAttr ".uvtk[1797]" -type "float2" 0.0024576187 -0.013539553 ;
	setAttr ".uvtk[1798]" -type "float2" 0.0025883317 -0.01894021 ;
	setAttr ".uvtk[1799]" -type "float2" 0.0031490922 -0.025419056 ;
	setAttr ".uvtk[1800]" -type "float2" 0.0038676858 -0.033105254 ;
	setAttr ".uvtk[1801]" -type "float2" 0.0070917606 -0.012994945 ;
	setAttr ".uvtk[1802]" -type "float2" 0.0076526999 -0.01906687 ;
	setAttr ".uvtk[1803]" -type "float2" 0.0082985163 -0.025306344 ;
	setAttr ".uvtk[1804]" -type "float2" 0.009452045 -0.032568753 ;
	setAttr ".uvtk[1805]" -type "float2" 0.012806654 0.017727643 ;
	setAttr ".uvtk[1806]" -type "float2" 0.0099390745 0.018421918 ;
	setAttr ".uvtk[1807]" -type "float2" 0.0056380033 0.027041018 ;
	setAttr ".uvtk[1808]" -type "float2" 0.006467104 0.029367119 ;
	setAttr ".uvtk[1809]" -type "float2" 0.0045931935 0.02225247 ;
	setAttr ".uvtk[1810]" -type "float2" 0.0050458312 0.024767548 ;
	setAttr ".uvtk[1811]" -type "float2" 0.0043718815 0.019941896 ;
	setAttr ".uvtk[1812]" -type "float2" 0.0040819645 0.018050134 ;
	setAttr ".uvtk[1813]" -type "float2" 0.0071074963 0.018998235 ;
	setAttr ".uvtk[1814]" -type "float2" 0.0076700449 0.032500148 ;
	setAttr ".uvtk[1815]" -type "float2" 0.0098571181 0.028745025 ;
	setAttr ".uvtk[1816]" -type "float2" 0.011136472 0.031754017 ;
	setAttr ".uvtk[1817]" -type "float2" 0.015561402 0.01698038 ;
	setAttr ".uvtk[1818]" -type "float2" 0.016981065 0.029779911 ;
	setAttr ".uvtk[1819]" -type "float2" 0.015770614 0.026801944 ;
	setAttr ".uvtk[1820]" -type "float2" 0.018885851 0.025265604 ;
	setAttr ".uvtk[1821]" -type "float2" 0.021253109 0.028507888 ;
	setAttr ".uvtk[1822]" -type "float2" 0.018484592 0.016109675 ;
	setAttr ".uvtk[1823]" -type "float2" 0.021069944 0.023131877 ;
	setAttr ".uvtk[1824]" -type "float2" 0.023648202 0.026305497 ;
	setAttr ".uvtk[1825]" -type "float2" 0.012731493 0.027845472 ;
	setAttr ".uvtk[1826]" -type "float2" 0.013599217 0.031001925 ;
	setAttr ".uvtk[1827]" -type "float2" 0.008833766 0.026333362 ;
	setAttr ".uvtk[1828]" -type "float2" 0.0080484748 0.023999333 ;
	setAttr ".uvtk[1829]" -type "float2" 0.0075021386 0.021563381 ;
	setAttr ".uvtk[1830]" -type "float2" 0.010241032 0.020918936 ;
	setAttr ".uvtk[1831]" -type "float2" 0.01091814 0.023163795 ;
	setAttr ".uvtk[1832]" -type "float2" 0.011742353 0.025431246 ;
	setAttr ".uvtk[1833]" -type "float2" 0.014559209 0.024346769 ;
	setAttr ".uvtk[1834]" -type "float2" 0.013650715 0.022215873 ;
	setAttr ".uvtk[1835]" -type "float2" 0.013073921 0.020065844 ;
	setAttr ".uvtk[1836]" -type "float2" 0.017162859 0.022969335 ;
	setAttr ".uvtk[1837]" -type "float2" 0.016165733 0.021209419 ;
	setAttr ".uvtk[1838]" -type "float2" 0.015722096 0.019257575 ;
	setAttr ".uvtk[1839]" -type "float2" 0.023167551 0.020776749 ;
	setAttr ".uvtk[1840]" -type "float2" 0.026270032 0.02279526 ;
	setAttr ".uvtk[1841]" -type "float2" 0.019162953 0.021114141 ;
	setAttr ".uvtk[1842]" -type "float2" 0.0181427 0.020363182 ;
	setAttr ".uvtk[1843]" -type "float2" 0.018174648 0.01864776 ;
	setAttr ".uvtk[1844]" -type "float2" 0.013130963 -0.02409029 ;
	setAttr ".uvtk[1845]" -type "float2" 0.014793217 -0.030805409 ;
	setAttr ".uvtk[1846]" -type "float2" 0.020612061 -0.028986096 ;
	setAttr ".uvtk[1847]" -type "float2" 0.017858803 -0.021988094 ;
	setAttr ".uvtk[1848]" -type "float2" 0.0089788437 -0.01101768 ;
	setAttr ".uvtk[1849]" -type "float2" 0.01294452 -0.011011362 ;
	setAttr ".uvtk[1850]" -type "float2" 0.012488365 -0.014259577 ;
	setAttr ".uvtk[1851]" -type "float2" 0.01258719 -0.018765032 ;
	setAttr ".uvtk[1852]" -type "float2" 0.017856956 -0.010514319 ;
	setAttr ".uvtk[1853]" -type "float2" 0.017304182 -0.014102697 ;
	setAttr ".uvtk[1854]" -type "float2" 0.017063081 -0.017731547 ;
	setAttr ".uvtk[1855]" -type "float2" 0.026733756 0.016199529 ;
	setAttr ".uvtk[1856]" -type "float2" 0.030521095 0.01772058 ;
	setAttr ".uvtk[1857]" -type "float2" 0.022353232 -0.018910348 ;
	setAttr ".uvtk[1858]" -type "float2" 0.020464182 -0.016411364 ;
	setAttr ".uvtk[1859]" -type "float2" 0.025987208 -0.015012085 ;
	setAttr ".uvtk[1860]" -type "float2" 0.02173239 -0.013917565 ;
	setAttr ".uvtk[1861]" -type "float2" 0.028406799 -0.010739028 ;
	setAttr ".uvtk[1862]" -type "float2" 0.023045778 -0.010390818 ;
	setAttr ".uvtk[1863]" -type "float2" 0.024100661 -0.006533742 ;
	setAttr ".uvtk[1864]" -type "float2" 0.029926062 -0.0063887239 ;
	setAttr ".uvtk[1865]" -type "float2" 0.030865371 -0.0023828149 ;
	setAttr ".uvtk[1866]" -type "float2" 0.02548641 -0.0028677583 ;
	setAttr ".uvtk[1867]" -type "float2" 0.031269252 0.00072044134 ;
	setAttr ".uvtk[1868]" -type "float2" 0.026370823 0.00040149689 ;
	setAttr ".uvtk[1869]" -type "float2" 0.031211197 0.0037661195 ;
	setAttr ".uvtk[1870]" -type "float2" 0.030574381 0.0075688362 ;
	setAttr ".uvtk[1871]" -type "float2" 0.026223838 0.0071061254 ;
	setAttr ".uvtk[1872]" -type "float2" 0.026676714 0.0036396384 ;
	setAttr ".uvtk[1873]" -type "float2" 0.024900794 0.010810554 ;
	setAttr ".uvtk[1874]" -type "float2" 0.029079854 0.011809587 ;
	setAttr ".uvtk[1875]" -type "float2" 0.022429049 0.014760613 ;
	setAttr ".uvtk[1876]" -type "float2" 0.021858335 0.018302381 ;
	setAttr ".uvtk[1877]" -type "float2" 0.034170151 0.012357086 ;
	setAttr ".uvtk[1878]" -type "float2" 0.035842955 0.0073940456 ;
	setAttr ".uvtk[1879]" -type "float2" 0.036545813 0.0029504299 ;
	setAttr ".uvtk[1880]" -type "float2" 0.036851108 -0.0011106133 ;
	setAttr ".uvtk[1881]" -type "float2" 0.036726475 0.00086182356 ;
	setAttr ".uvtk[1882]" -type "float2" 0.036222279 -0.0060887933 ;
	setAttr ".uvtk[1883]" -type "float2" 0.034384012 -0.011645973 ;
	setAttr ".uvtk[1884]" -type "float2" 0.031099737 -0.017522097 ;
	setAttr ".uvtk[1885]" -type "float2" 0.026456058 -0.023779869 ;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "BC10E4E1-42D6-5F06-8871-E08A54305F0E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[195:197]" "e[412]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "138F0573-47C7-7090-5617-0FA82673D475";
	setAttr ".uopa" yes;
	setAttr -s 1187 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.016933173 -0.0084044207 ;
	setAttr ".uvtk[1]" -type "float2" 0.037880868 0.0014879992 ;
	setAttr ".uvtk[2]" -type "float2" 0.035687357 5.699601e-005 ;
	setAttr ".uvtk[3]" -type "float2" -0.016205192 -0.010196874 ;
	setAttr ".uvtk[4]" -type "float2" 0.03385964 -0.0017018709 ;
	setAttr ".uvtk[5]" -type "float2" -0.01456379 -0.0114164 ;
	setAttr ".uvtk[6]" -type "float2" 0.03252295 -0.003795946 ;
	setAttr ".uvtk[7]" -type "float2" -0.012633376 -0.011595812 ;
	setAttr ".uvtk[8]" -type "float2" 0.031652663 -0.0061121825 ;
	setAttr ".uvtk[9]" -type "float2" -0.011149487 -0.010665575 ;
	setAttr ".uvtk[10]" -type "float2" -0.0080287959 -0.0062598977 ;
	setAttr ".uvtk[11]" -type "float2" -0.010675928 -0.0089792851 ;
	setAttr ".uvtk[12]" -type "float2" -0.0093922531 -0.0043423716 ;
	setAttr ".uvtk[13]" -type "float2" -0.011383733 -0.0071756411 ;
	setAttr ".uvtk[14]" -type "float2" -0.011397919 -0.0030600671 ;
	setAttr ".uvtk[15]" -type "float2" -0.013089173 -0.0059916917 ;
	setAttr ".uvtk[16]" -type "float2" -0.013802818 -0.0024156515 ;
	setAttr ".uvtk[17]" -type "float2" -0.014999384 -0.0058010686 ;
	setAttr ".uvtk[18]" -type "float2" -0.016336679 -0.0022930522 ;
	setAttr ".uvtk[19]" -type "float2" -0.016471416 -0.0067247394 ;
	setAttr ".uvtk[20]" -type "float2" -0.013810447 -0.0086951572 ;
	setAttr ".uvtk[21]" -type "float2" 0.037196249 0.0027001118 ;
	setAttr ".uvtk[22]" -type "float2" 0.036485404 0.0041531837 ;
	setAttr ".uvtk[23]" -type "float2" 0.033682376 0.0025512492 ;
	setAttr ".uvtk[24]" -type "float2" 0.034719199 0.0011903113 ;
	setAttr ".uvtk[25]" -type "float2" 0.031356785 0.0006156629 ;
	setAttr ".uvtk[26]" -type "float2" 0.032694668 -0.00065122638 ;
	setAttr ".uvtk[27]" -type "float2" 0.029485617 -0.002173977 ;
	setAttr ".uvtk[28]" -type "float2" 0.031174157 -0.0030275378 ;
	setAttr ".uvtk[29]" -type "float2" -0.0043461532 -0.0070432369 ;
	setAttr ".uvtk[30]" -type "float2" -0.005847415 -0.0078681763 ;
	setAttr ".uvtk[31]" -type "float2" -0.0054692235 -0.0036629755 ;
	setAttr ".uvtk[32]" -type "float2" -0.0068676081 -0.0050879288 ;
	setAttr ".uvtk[33]" -type "float2" -0.0074527767 -0.0012974162 ;
	setAttr ".uvtk[34]" -type "float2" -0.0084406938 -0.0029642824 ;
	setAttr ".uvtk[35]" -type "float2" -0.0098347282 -6.0656108e-005 ;
	setAttr ".uvtk[36]" -type "float2" -0.010641387 -0.0016713161 ;
	setAttr ".uvtk[37]" -type "float2" -0.012696348 0.00063248631 ;
	setAttr ".uvtk[38]" -type "float2" -0.013298027 -0.0010016654 ;
	setAttr ".uvtk[39]" -type "float2" 0.039672285 0.0056492891 ;
	setAttr ".uvtk[40]" -type "float2" 0.039933532 0.0040305471 ;
	setAttr ".uvtk[41]" -type "float2" 0.035360962 0.0065357303 ;
	setAttr ".uvtk[42]" -type "float2" 0.032542203 0.0044689681 ;
	setAttr ".uvtk[43]" -type "float2" 0.030338917 0.0021027243 ;
	setAttr ".uvtk[44]" -type "float2" 0.028589401 -0.001308674 ;
	setAttr ".uvtk[45]" -type "float2" 0.028099213 -0.0054641273 ;
	setAttr ".uvtk[46]" -type "float2" -0.0047305431 -0.0019842479 ;
	setAttr ".uvtk[47]" -type "float2" -0.0069079008 0.0002345955 ;
	setAttr ".uvtk[48]" -type "float2" -0.0094221449 0.0019266224 ;
	setAttr ".uvtk[49]" -type "float2" -0.012249103 0.003217808 ;
	setAttr ".uvtk[50]" -type "float2" -0.016050071 0.0041165864 ;
	setAttr ".uvtk[51]" -type "float2" 0.034522861 0.0088015711 ;
	setAttr ".uvtk[52]" -type "float2" 0.033878118 0.011004467 ;
	setAttr ".uvtk[53]" -type "float2" 0.030340467 0.0091462201 ;
	setAttr ".uvtk[54]" -type "float2" 0.031271312 0.0066202497 ;
	setAttr ".uvtk[55]" -type "float2" 0.027477238 0.0078556286 ;
	setAttr ".uvtk[56]" -type "float2" 0.028666887 0.004805332 ;
	setAttr ".uvtk[57]" -type "float2" -0.004186234 0.002353332 ;
	setAttr ".uvtk[58]" -type "float2" -0.003727159 0.0057936525 ;
	setAttr ".uvtk[59]" -type "float2" -0.0056195464 0.0062107658 ;
	setAttr ".uvtk[60]" -type "float2" -0.0060763564 0.0032281792 ;
	setAttr ".uvtk[61]" -type "float2" -0.0082612541 0.0068862354 ;
	setAttr ".uvtk[62]" -type "float2" -0.008878788 0.0044344282 ;
	setAttr ".uvtk[63]" -type "float2" -0.011530181 0.0078147547 ;
	setAttr ".uvtk[64]" -type "float2" -0.011904886 0.0055303192 ;
	setAttr ".uvtk[65]" -type "float2" -0.015274724 0.0089424914 ;
	setAttr ".uvtk[66]" -type "float2" 0.038203806 0.010625158 ;
	setAttr ".uvtk[67]" -type "float2" 0.026003752 0.00047275331 ;
	setAttr ".uvtk[68]" -type "float2" 0.026528511 -0.0020029489 ;
	setAttr ".uvtk[69]" -type "float2" 0.027399275 -0.0059058163 ;
	setAttr ".uvtk[70]" -type "float2" -0.0025487752 -0.0015276913 ;
	setAttr ".uvtk[71]" -type "float2" 0.024535332 0.0067885583 ;
	setAttr ".uvtk[72]" -type "float2" 0.025267277 0.0037251627 ;
	setAttr ".uvtk[73]" -type "float2" -0.0023060651 0.0022140956 ;
	setAttr ".uvtk[74]" -type "float2" -0.0020199628 0.0055299914 ;
	setAttr ".uvtk[75]" -type "float2" 0.032601748 0.01415906 ;
	setAttr ".uvtk[76]" -type "float2" 0.029261265 0.012464977 ;
	setAttr ".uvtk[77]" -type "float2" 0.026426289 0.011357595 ;
	setAttr ".uvtk[78]" -type "float2" -0.0033146949 0.0095263934 ;
	setAttr ".uvtk[79]" -type "float2" -0.0052216258 0.0098597324 ;
	setAttr ".uvtk[80]" -type "float2" -0.0078760888 0.010391985 ;
	setAttr ".uvtk[81]" -type "float2" -0.010929933 0.011314041 ;
	setAttr ".uvtk[82]" -type "float2" -0.014360061 0.012580073 ;
	setAttr ".uvtk[83]" -type "float2" 0.023545597 0.010457401 ;
	setAttr ".uvtk[84]" -type "float2" -0.0015869946 0.0093105948 ;
	setAttr ".uvtk[85]" -type "float2" 0.030759368 0.017471263 ;
	setAttr ".uvtk[86]" -type "float2" 0.027841482 0.015977953 ;
	setAttr ".uvtk[87]" -type "float2" 0.025302861 0.01513419 ;
	setAttr ".uvtk[88]" -type "float2" -0.0029621334 0.013560093 ;
	setAttr ".uvtk[89]" -type "float2" -0.0047064032 0.013815111 ;
	setAttr ".uvtk[90]" -type "float2" -0.0071118679 0.014214433 ;
	setAttr ".uvtk[91]" -type "float2" -0.0097934818 0.015052442 ;
	setAttr ".uvtk[92]" -type "float2" -0.012705676 0.016254935 ;
	setAttr ".uvtk[93]" -type "float2" 0.02240191 0.014310963 ;
	setAttr ".uvtk[94]" -type "float2" -0.001009068 0.013358478 ;
	setAttr ".uvtk[95]" -type "float2" 0.028990481 0.021409137 ;
	setAttr ".uvtk[96]" -type "float2" 0.026452575 0.020085705 ;
	setAttr ".uvtk[97]" -type "float2" 0.024064098 0.019111199 ;
	setAttr ".uvtk[98]" -type "float2" -0.0027108998 0.016421948 ;
	setAttr ".uvtk[99]" -type "float2" -0.0043117017 0.016822938 ;
	setAttr ".uvtk[100]" -type "float2" -0.0064658131 0.01740689 ;
	setAttr ".uvtk[101]" -type "float2" -0.0085293856 0.01836277 ;
	setAttr ".uvtk[102]" -type "float2" -0.21568577 0.017793523 ;
	setAttr ".uvtk[103]" -type "float2" 0.021221794 0.017999718 ;
	setAttr ".uvtk[104]" -type "float2" -0.00059135864 0.016062859 ;
	setAttr ".uvtk[105]" -type "float2" 0.011311033 -0.010325113 ;
	setAttr ".uvtk[106]" -type "float2" 0.010396578 -0.012031922 ;
	setAttr ".uvtk[107]" -type "float2" 0.017212901 -0.0046156142 ;
	setAttr ".uvtk[108]" -type "float2" 0.014481348 -0.0043113697 ;
	setAttr ".uvtk[109]" -type "float2" 0.0086333537 -0.013074884 ;
	setAttr ".uvtk[110]" -type "float2" 0.019686673 -0.0053218547 ;
	setAttr ".uvtk[111]" -type "float2" 0.0066890465 -0.013053367 ;
	setAttr ".uvtk[112]" -type "float2" 0.021822434 -0.0065449867 ;
	setAttr ".uvtk[113]" -type "float2" 0.0053013908 -0.011973748 ;
	setAttr ".uvtk[114]" -type "float2" 0.0013030549 -0.0093617532 ;
	setAttr ".uvtk[115]" -type "float2" 0.0049932944 -0.010245543 ;
	setAttr ".uvtk[116]" -type "float2" 0.0024670744 -0.007178342 ;
	setAttr ".uvtk[117]" -type "float2" 0.0058580982 -0.0085194353 ;
	setAttr ".uvtk[118]" -type "float2" 0.0040628696 -0.0055107567 ;
	setAttr ".uvtk[119]" -type "float2" 0.0077792192 -0.0075378064 ;
	setAttr ".uvtk[120]" -type "float2" 0.0062560188 -0.0045482609 ;
	setAttr ".uvtk[121]" -type "float2" 0.0096739316 -0.0075400416 ;
	setAttr ".uvtk[122]" -type "float2" 0.0088584805 -0.0041860286 ;
	setAttr ".uvtk[123]" -type "float2" 0.011032143 -0.008608276 ;
	setAttr ".uvtk[124]" -type "float2" 0.01164625 -0.0041798744 ;
	setAttr ".uvtk[125]" -type "float2" 0.0081668282 -0.010291019 ;
	setAttr ".uvtk[126]" -type "float2" 0.014744502 -0.0029338915 ;
	setAttr ".uvtk[127]" -type "float2" 0.017715905 -0.0031682644 ;
	setAttr ".uvtk[128]" -type "float2" 0.018190239 -0.001482578 ;
	setAttr ".uvtk[129]" -type "float2" 0.014944655 -0.001337925 ;
	setAttr ".uvtk[130]" -type "float2" 0.020357527 -0.003843138 ;
	setAttr ".uvtk[131]" -type "float2" 0.021101452 -0.0020778943 ;
	setAttr ".uvtk[132]" -type "float2" 0.022744816 -0.0052168909 ;
	setAttr ".uvtk[133]" -type "float2" 0.023937915 -0.0036306921 ;
	setAttr ".uvtk[134]" -type "float2" 6.5901782e-005 -0.0084364358 ;
	setAttr ".uvtk[135]" -type "float2" 0.026063953 -0.0063681845 ;
	setAttr ".uvtk[136]" -type "float2" 0.0014012833 -0.0058440436 ;
	setAttr ".uvtk[137]" -type "float2" 0.00012920192 -0.0042025466 ;
	setAttr ".uvtk[138]" -type "float2" 0.0032095695 -0.0040346552 ;
	setAttr ".uvtk[139]" -type "float2" 0.0023563886 -0.0022621099 ;
	setAttr ".uvtk[140]" -type "float2" 0.0055703865 -0.0031325761 ;
	setAttr ".uvtk[141]" -type "float2" 0.004862641 -0.0014928225 ;
	setAttr ".uvtk[142]" -type "float2" 0.0083783651 -0.0028316248 ;
	setAttr ".uvtk[143]" -type "float2" 0.007820704 -0.0012659151 ;
	setAttr ".uvtk[144]" -type "float2" 0.011527995 -0.0028363336 ;
	setAttr ".uvtk[145]" -type "float2" 0.011329272 -0.0012820307 ;
	setAttr ".uvtk[146]" -type "float2" 0.018510494 0.00074597355 ;
	setAttr ".uvtk[147]" -type "float2" 0.015162808 0.0012418246 ;
	setAttr ".uvtk[148]" -type "float2" 0.021447282 -0.00026482437 ;
	setAttr ".uvtk[149]" -type "float2" 0.024394307 -0.0024147499 ;
	setAttr ".uvtk[150]" -type "float2" -0.0020697922 -0.0070813764 ;
	setAttr ".uvtk[151]" -type "float2" -0.00043787668 -0.002415875 ;
	setAttr ".uvtk[152]" -type "float2" 0.0019615074 -0.0006861845 ;
	setAttr ".uvtk[153]" -type "float2" 0.0046208249 0.00045301672 ;
	setAttr ".uvtk[154]" -type "float2" 0.0075187469 0.0011538183 ;
	setAttr ".uvtk[155]" -type "float2" 0.011289814 0.0013903296 ;
	setAttr ".uvtk[156]" -type "float2" 0.015038532 0.0035683727 ;
	setAttr ".uvtk[157]" -type "float2" 0.018772218 0.0032370305 ;
	setAttr ".uvtk[158]" -type "float2" 0.018459473 0.0058770692 ;
	setAttr ".uvtk[159]" -type "float2" 0.014656884 0.0057266559 ;
	setAttr ".uvtk[160]" -type "float2" 0.021827679 0.0029471731 ;
	setAttr ".uvtk[161]" -type "float2" 0.021480303 0.0062061762 ;
	setAttr ".uvtk[162]" -type "float2" -0.00045408914 0.0019363677 ;
	setAttr ".uvtk[163]" -type "float2" 0.0015163203 0.0023769354 ;
	setAttr ".uvtk[164]" -type "float2" 0.0015856405 0.0053647077 ;
	setAttr ".uvtk[165]" -type "float2" -0.00031062076 0.0053945398 ;
	setAttr ".uvtk[166]" -type "float2" 0.0043933773 0.0029375767 ;
	setAttr ".uvtk[167]" -type "float2" 0.0042140866 0.0054045673 ;
	setAttr ".uvtk[168]" -type "float2" 0.007425108 0.0033327853 ;
	setAttr ".uvtk[169]" -type "float2" 0.0074285651 0.0055082496 ;
	setAttr ".uvtk[170]" -type "float2" 0.011153736 0.0035335338 ;
	setAttr ".uvtk[171]" -type "float2" 0.0110446 0.0056116935 ;
	setAttr ".uvtk[172]" -type "float2" 0.017737839 0.0092406934 ;
	setAttr ".uvtk[173]" -type "float2" 0.014196256 0.0089483326 ;
	setAttr ".uvtk[174]" -type "float2" 0.02064351 0.0097481972 ;
	setAttr ".uvtk[175]" -type "float2" 0.0020284434 0.0089830076 ;
	setAttr ".uvtk[176]" -type "float2" 0.00013277819 0.0091150021 ;
	setAttr ".uvtk[177]" -type "float2" 0.0046390044 0.0088322973 ;
	setAttr ".uvtk[178]" -type "float2" 0.0076591754 0.0088649904 ;
	setAttr ".uvtk[179]" -type "float2" 0.01102505 0.0089219427 ;
	setAttr ".uvtk[180]" -type "float2" 0.016969178 0.012897377 ;
	setAttr ".uvtk[181]" -type "float2" 0.013790706 0.01254592 ;
	setAttr ".uvtk[182]" -type "float2" 0.019519601 0.013512139 ;
	setAttr ".uvtk[183]" -type "float2" 0.002677598 0.012926673 ;
	setAttr ".uvtk[184]" -type "float2" 0.00093344646 0.013101046 ;
	setAttr ".uvtk[185]" -type "float2" 0.00507537 0.012678779 ;
	setAttr ".uvtk[186]" -type "float2" 0.0078408504 0.012650139 ;
	setAttr ".uvtk[187]" -type "float2" 0.010913291 0.012627251 ;
	setAttr ".uvtk[188]" -type "float2" 0.015616757 0.016986553 ;
	setAttr ".uvtk[189]" -type "float2" 0.012687722 0.016621176 ;
	setAttr ".uvtk[190]" -type "float2" 0.018197808 0.01745669 ;
	setAttr ".uvtk[191]" -type "float2" 0.0032826448 0.015937243 ;
	setAttr ".uvtk[192]" -type "float2" 0.0015803357 0.015931938 ;
	setAttr ".uvtk[193]" -type "float2" 0.0056131231 0.015927259 ;
	setAttr ".uvtk[194]" -type "float2" 0.0080392743 0.016180549 ;
	setAttr ".uvtk[195]" -type "float2" 0.010464647 0.016460184 ;
	setAttr ".uvtk[196]" -type "float2" 0.02471349 -0.0073032323 ;
	setAttr ".uvtk[197]" -type "float2" -0.0013682456 -0.0073427204 ;
	setAttr ".uvtk[198]" -type "float2" 0.026588473 -0.0058684815 ;
	setAttr ".uvtk[199]" -type "float2" -0.0028312416 -0.006583022 ;
	setAttr ".uvtk[200]" -type "float2" 0.02362648 -0.0082100127 ;
	setAttr ".uvtk[201]" -type "float2" 0.021305002 -0.0098458175 ;
	setAttr ".uvtk[202]" -type "float2" 0.0035555148 -0.011362055 ;
	setAttr ".uvtk[203]" -type "float2" 0.012167731 -0.0069781188 ;
	setAttr ".uvtk[204]" -type "float2" 0.014233273 -0.0070845503 ;
	setAttr ".uvtk[205]" -type "float2" 0.010049918 -0.0070664976 ;
	setAttr ".uvtk[206]" -type "float2" 0.0044111358 -0.0098499618 ;
	setAttr ".uvtk[207]" -type "float2" 0.020010266 -0.0088172499 ;
	setAttr ".uvtk[208]" -type "float2" 0.018395815 -0.0079450253 ;
	setAttr ".uvtk[209]" -type "float2" 0.016384099 -0.0073641334 ;
	setAttr ".uvtk[210]" -type "float2" 0.033090562 0.019318325 ;
	setAttr ".uvtk[211]" -type "float2" 0.035510153 0.015988175 ;
	setAttr ".uvtk[212]" -type "float2" 0.037317604 0.012760363 ;
	setAttr ".uvtk[213]" -type "float2" -0.016243041 -0.00078413729 ;
	setAttr ".uvtk[214]" -type "float2" -0.016093731 0.00098996516 ;
	setAttr ".uvtk[215]" -type "float2" 0.030332062 -0.0058145169 ;
	setAttr ".uvtk[216]" -type "float2" 0.028766785 -0.0056438092 ;
	setAttr ".uvtk[217]" -type "float2" -0.01574865 0.0065990603 ;
	setAttr ".uvtk[218]" -type "float2" -0.0036329241 -0.0069225673 ;
	setAttr ".uvtk[219]" -type "float2" 0.038889498 0.0083742635 ;
	setAttr ".uvtk[220]" -type "float2" 0.040213615 0.0026734984 ;
	setAttr ".uvtk[221]" -type "float2" -0.0071339514 -0.0085940752 ;
	setAttr ".uvtk[222]" -type "float2" 0.040622324 -0.00017803255 ;
	setAttr ".uvtk[223]" -type "float2" -0.016817868 -0.0052733887 ;
	setAttr ".uvtk[224]" -type "float2" -0.0095370626 -0.010293851 ;
	setAttr ".uvtk[225]" -type "float2" 0.0343692 -0.0065469239 ;
	setAttr ".uvtk[226]" -type "float2" 0.039058179 -0.001027206 ;
	setAttr ".uvtk[227]" -type "float2" -0.015033418 -0.0053647477 ;
	setAttr ".uvtk[228]" -type "float2" -0.010195098 -0.0086859111 ;
	setAttr ".uvtk[229]" -type "float2" 0.035055906 -0.005049983 ;
	setAttr ".uvtk[230]" -type "float2" 0.036047727 -0.0035451446 ;
	setAttr ".uvtk[231]" -type "float2" 0.037455529 -0.0021499936 ;
	setAttr ".uvtk[246]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[247]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[248]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[249]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[250]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[251]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[252]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[253]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[254]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[255]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[256]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[257]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[258]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[259]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[260]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[261]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[262]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[263]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[264]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[265]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[266]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[267]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[268]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[269]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[270]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[271]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[272]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[273]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[274]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[275]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[276]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[277]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[278]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[279]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[280]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[281]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[282]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[283]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[284]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[285]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[286]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[287]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[288]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[289]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[290]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[291]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[292]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[293]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[294]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[295]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[296]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[297]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[298]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[299]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[300]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[301]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[302]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[303]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[304]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[305]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[306]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[307]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[308]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[309]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[310]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[311]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[312]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[313]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[314]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[315]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[316]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[317]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[318]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[319]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[320]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[321]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[322]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[323]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[324]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[325]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[326]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[327]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[328]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[329]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[330]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[331]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[332]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[333]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[334]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[335]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[336]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[337]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[338]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[339]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[340]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[341]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[342]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[343]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[344]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[345]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[346]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[347]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[348]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[349]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[350]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[351]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[352]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[353]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[354]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[355]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[356]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[357]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[358]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[359]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[360]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[361]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[362]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[363]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[364]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[365]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[366]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[367]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[368]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[369]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[370]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[371]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[372]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[373]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[374]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[375]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[376]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[377]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[378]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[379]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[380]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[381]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[382]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[383]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[384]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[385]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[386]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[387]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[388]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[389]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[390]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[391]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[392]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[393]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[394]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[395]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[396]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[397]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[398]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[399]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[400]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[401]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[402]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[403]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[404]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[405]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[406]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[407]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[408]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[409]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[410]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[411]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[412]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[413]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[414]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[415]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[416]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[417]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[418]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[419]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[420]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[421]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[422]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[423]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[424]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[425]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[426]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[427]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[428]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[429]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[430]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[431]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[432]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[433]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[434]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[435]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[436]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[437]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[438]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[439]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[440]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[441]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[442]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[443]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[444]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[445]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[446]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[447]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[448]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[449]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[450]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[451]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[452]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[453]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[454]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[455]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[456]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[457]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[458]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[459]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[460]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[461]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[462]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[463]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[464]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[465]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[466]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[467]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[468]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[469]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[470]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[471]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[472]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[473]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[474]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[475]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[476]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[477]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[478]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[479]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[480]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[481]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[489]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[490]" -type "float2" -0.078532264 -0.050485034 ;
	setAttr ".uvtk[491]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[492]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[493]" -type "float2" -0.078532264 -0.050485037 ;
	setAttr ".uvtk[494]" -type "float2" -0.078532264 -0.050485037 ;
	setAttr ".uvtk[495]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[496]" -type "float2" -0.078532264 -0.050485037 ;
	setAttr ".uvtk[497]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[498]" -type "float2" -0.078532264 -0.050485037 ;
	setAttr ".uvtk[499]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[500]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[501]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[502]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[503]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[504]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[505]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[506]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[507]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[508]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[509]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[510]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[511]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[512]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[513]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[514]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[515]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[516]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[517]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[518]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[519]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[520]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[521]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[522]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[523]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[524]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[525]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[526]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[577]" -type "float2" -0.078532271 -0.050485037 ;
	setAttr ".uvtk[578]" -type "float2" -0.078532271 -0.050485034 ;
	setAttr ".uvtk[579]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[580]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[581]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[582]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[583]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[584]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[585]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[586]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[587]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[588]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[589]" -type "float2" -0.012621264 0.070118122 ;
	setAttr ".uvtk[590]" -type "float2" -0.012621234 0.070118122 ;
	setAttr ".uvtk[591]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[592]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[593]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[594]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[595]" -type "float2" -0.039266143 0 ;
	setAttr ".uvtk[596]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[597]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[598]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[599]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[600]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[601]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[602]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[603]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[604]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[605]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[606]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[607]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[608]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[609]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[610]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[611]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[612]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[613]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[614]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[615]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[616]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[617]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[618]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[619]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[620]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[621]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[622]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[623]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[624]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[625]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[626]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[627]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[628]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[629]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[630]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[631]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[632]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[633]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[634]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[635]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[636]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[637]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[638]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[639]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[640]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[641]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[642]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[643]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[644]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[645]" -type "float2" -0.039266143 0 ;
	setAttr ".uvtk[646]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[647]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[648]" -type "float2" -0.039266143 0 ;
	setAttr ".uvtk[649]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[650]" -type "float2" -0.039266143 0 ;
	setAttr ".uvtk[651]" -type "float2" -0.039266143 0 ;
	setAttr ".uvtk[652]" -type "float2" -0.039266143 0 ;
	setAttr ".uvtk[653]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[654]" -type "float2" -0.039266143 0 ;
	setAttr ".uvtk[655]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[656]" -type "float2" -0.039266143 0 ;
	setAttr ".uvtk[657]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[658]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[659]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[660]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[661]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[662]" -type "float2" -0.039266136 0 ;
	setAttr ".uvtk[663]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[664]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[665]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[666]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[667]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[668]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[669]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[670]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[671]" -type "float2" -0.039266128 0 ;
	setAttr ".uvtk[688]" -type "float2" -0.02642666 0.096191324 ;
	setAttr ".uvtk[689]" -type "float2" -0.0093211439 0.083992518 ;
	setAttr ".uvtk[690]" -type "float2" 0.014880877 0.10135282 ;
	setAttr ".uvtk[691]" -type "float2" -0.018779237 0.11589784 ;
	setAttr ".uvtk[692]" -type "float2" 0.039850544 0.12099896 ;
	setAttr ".uvtk[693]" -type "float2" -0.0090678241 0.1433831 ;
	setAttr ".uvtk[694]" -type "float2" 0.03674705 0.07644143 ;
	setAttr ".uvtk[695]" -type "float2" 0.076017961 0.077402718 ;
	setAttr ".uvtk[696]" -type "float2" 0.0068633053 0.066278435 ;
	setAttr ".uvtk[697]" -type "float2" 0.074849799 0.041273281 ;
	setAttr ".uvtk[698]" -type "float2" 0.10345042 0.012972711 ;
	setAttr ".uvtk[699]" -type "float2" 0.12309816 0.033354819 ;
	setAttr ".uvtk[700]" -type "float2" 0.11755501 -0.026539644 ;
	setAttr ".uvtk[701]" -type "float2" 0.14294891 -0.02076531 ;
	setAttr ".uvtk[702]" -type "float2" 0.085636832 -0.0098055489 ;
	setAttr ".uvtk[703]" -type "float2" 0.097815312 -0.031278558 ;
	setAttr ".uvtk[704]" -type "float2" 0.065415129 0.011233894 ;
	setAttr ".uvtk[705]" -type "float2" 0.01786254 0.046533123 ;
	setAttr ".uvtk[706]" -type "float2" 0.045441315 0.050249517 ;
	setAttr ".uvtk[707]" -type "float2" 0.042623028 0.023598524 ;
	setAttr ".uvtk[708]" -type "float2" 0.023376625 0.028814571 ;
	setAttr ".uvtk[709]" -type "float2" 0.0091224406 0.015060285 ;
	setAttr ".uvtk[710]" -type "float2" 0.028279316 -0.00022684271 ;
	setAttr ".uvtk[711]" -type "float2" 0.049217477 -0.01656634 ;
	setAttr ".uvtk[712]" -type "float2" 0.0077705327 -0.021525746 ;
	setAttr ".uvtk[713]" -type "float2" 0.026459422 -0.042113781 ;
	setAttr ".uvtk[714]" -type "float2" -0.009471273 -0.0026886496 ;
	setAttr ".uvtk[715]" -type "float2" 0.068081126 -0.037041463 ;
	setAttr ".uvtk[716]" -type "float2" 0.086478569 -0.056788638 ;
	setAttr ".uvtk[717]" -type "float2" 0.045705855 -0.063399374 ;
	setAttr ".uvtk[718]" -type "float2" 0.064180732 -0.084017076 ;
	setAttr ".uvtk[719]" -type "float2" -0.00077826343 -0.063114136 ;
	setAttr ".uvtk[720]" -type "float2" 0.017599668 -0.083663188 ;
	setAttr ".uvtk[721]" -type "float2" 0.035201278 -0.1034529 ;
	setAttr ".uvtk[722]" -type "float2" -0.011148533 -0.09905047 ;
	setAttr ".uvtk[723]" -type "float2" 0.0088687185 -0.11180707 ;
	setAttr ".uvtk[724]" -type "float2" -0.029809365 -0.077828206 ;
	setAttr ".uvtk[725]" -type "float2" -0.02834967 -0.02050524 ;
	setAttr ".uvtk[726]" -type "float2" -0.01476731 -0.040728457 ;
	setAttr ".uvtk[727]" -type "float2" -0.039566793 -0.053739682 ;
	setAttr ".uvtk[728]" -type "float2" -0.043068863 -0.034190379 ;
	setAttr ".uvtk[729]" -type "float2" -0.0605428 -0.027832245 ;
	setAttr ".uvtk[730]" -type "float2" -0.066458173 -0.055225104 ;
	setAttr ".uvtk[731]" -type "float2" -0.060560234 -0.086155616 ;
	setAttr ".uvtk[732]" -type "float2" -0.093061574 -0.045744494 ;
	setAttr ".uvtk[733]" -type "float2" -0.097631939 -0.085690655 ;
	setAttr ".uvtk[734]" -type "float2" -0.080170341 -0.01656251 ;
	setAttr ".uvtk[735]" -type "float2" -0.034786187 -0.11548381 ;
	setAttr ".uvtk[736]" -type "float2" 0.0034828577 -0.13182564 ;
	setAttr ".uvtk[737]" -type "float2" -0.054952063 -0.13463752 ;
	setAttr ".uvtk[738]" -type "float2" -0.0024423357 -0.15718317 ;
	setAttr ".uvtk[739]" -type "float2" -0.096805729 -0.00035353238 ;
	setAttr ".uvtk[740]" -type "float2" -0.11585689 -0.023182681 ;
	setAttr ".uvtk[741]" -type "float2" -0.1382082 -0.045053571 ;
	setAttr ".uvtk[742]" -type "float2" -0.12802121 0.011190576 ;
	setAttr ".uvtk[743]" -type "float2" -0.15655859 0.005122466 ;
	setAttr ".uvtk[744]" -type "float2" -0.1072521 0.016703436 ;
	setAttr ".uvtk[745]" -type "float2" -0.096797653 0.040402263 ;
	setAttr ".uvtk[746]" -type "float2" -0.12048937 0.051018536 ;
	setAttr ".uvtk[747]" -type "float2" -0.1502804 0.060129687 ;
	setAttr ".uvtk[748]" -type "float2" -0.095275082 0.085919686 ;
	setAttr ".uvtk[749]" -type "float2" -0.11809502 0.1097667 ;
	setAttr ".uvtk[750]" -type "float2" -0.076498412 0.066156514 ;
	setAttr ".uvtk[751]" -type "float2" -0.050260402 0.085945018 ;
	setAttr ".uvtk[752]" -type "float2" -0.059384145 0.10988144 ;
	setAttr ".uvtk[753]" -type "float2" -0.066177286 0.14020212 ;
	setAttr ".uvtk[754]" -type "float2" 0.10271981 -0.12506309 ;
	setAttr ".uvtk[755]" -type "float2" 0.082708173 -0.10359169 ;
	setAttr ".uvtk[756]" -type "float2" 0.045778379 -0.12686731 ;
	setAttr ".uvtk[757]" -type "float2" 0.052894577 -0.15368079 ;
	setAttr ".uvtk[758]" -type "float2" 0.10890358 -0.068643831 ;
	setAttr ".uvtk[759]" -type "float2" 0.1353056 -0.076987095 ;
	setAttr ".uvtk[760]" -type "float2" -0.079720803 0.024870219 ;
	setAttr ".uvtk[761]" -type "float2" -0.059433125 0.048683494 ;
	setAttr ".uvtk[762]" -type "float2" -0.063445576 0.0085687172 ;
	setAttr ".uvtk[763]" -type "float2" -0.04264798 0.031483471 ;
	setAttr ".uvtk[764]" -type "float2" -0.034850635 0.067856528 ;
	setAttr ".uvtk[765]" -type "float2" -0.018870313 0.051106125 ;
	setAttr ".uvtk[766]" -type "float2" -0.026012959 0.014392534 ;
	setAttr ".uvtk[767]" -type "float2" -0.0052474942 0.032762021 ;
	setAttr ".uvtk[768]" -type "float2" -0.045477949 -0.0053421594 ;
	setAttr ".uvtk[769]" -type "float2" -0.3716259 0.30571494 ;
	setAttr ".uvtk[770]" -type "float2" -0.37162593 0.30571494 ;
	setAttr ".uvtk[771]" -type "float2" -0.37162587 0.30571494 ;
	setAttr ".uvtk[772]" -type "float2" -0.3716259 0.30571494 ;
	setAttr ".uvtk[773]" -type "float2" -0.37162587 0.30571494 ;
	setAttr ".uvtk[774]" -type "float2" -0.3716259 0.30571494 ;
	setAttr ".uvtk[775]" -type "float2" -0.37162587 0.30571494 ;
	setAttr ".uvtk[776]" -type "float2" -0.37162596 0.30571494 ;
	setAttr ".uvtk[777]" -type "float2" -0.3716259 0.30571494 ;
	setAttr ".uvtk[778]" -type "float2" -0.37162587 0.30571494 ;
	setAttr ".uvtk[779]" -type "float2" -0.3716259 0.30571494 ;
	setAttr ".uvtk[780]" -type "float2" -0.37162587 0.30571494 ;
	setAttr ".uvtk[781]" -type "float2" -0.37162596 0.30571494 ;
	setAttr ".uvtk[782]" -type "float2" -0.37162587 0.30571494 ;
	setAttr ".uvtk[783]" -type "float2" -0.37162587 0.30571494 ;
	setAttr ".uvtk[784]" -type "float2" -0.37162587 0.30571494 ;
	setAttr ".uvtk[785]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[786]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[787]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[788]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[789]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[790]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[791]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[792]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[793]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[794]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[795]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[796]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[797]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[798]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[799]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[800]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[801]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[802]" -type "float2" 0.014023603 0.0532897 ;
	setAttr ".uvtk[803]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[804]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[805]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[806]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[816]" -type "float2" 0.014023603 0.05328973 ;
	setAttr ".uvtk[817]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[818]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[819]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[820]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[821]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[822]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[823]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[824]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[825]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[826]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[827]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[828]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[829]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[830]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[831]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[832]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[833]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[834]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[835]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[836]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[837]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[838]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[839]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[846]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[847]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[848]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[849]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[850]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[851]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[852]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[853]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[854]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[855]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[856]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[872]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[873]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[874]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[875]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[876]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[877]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[888]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[889]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[895]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[896]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[897]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[898]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[899]" -type "float2" 0.014023663 0.05328979 ;
	setAttr ".uvtk[900]" -type "float2" 0.014023633 0.05328979 ;
	setAttr ".uvtk[901]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[902]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[903]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[904]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[905]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[906]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[907]" -type "float2" 0.014023633 0.05328982 ;
	setAttr ".uvtk[908]" -type "float2" 0.014023633 0.05328979 ;
	setAttr ".uvtk[909]" -type "float2" 0.014023633 0.05328979 ;
	setAttr ".uvtk[910]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[911]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[912]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[913]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[914]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[915]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[916]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[917]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[918]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[919]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[920]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[921]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[922]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[923]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[924]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[925]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[926]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[927]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[928]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[929]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[930]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[931]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[932]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[933]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[934]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[935]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[936]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[937]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[938]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[939]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[940]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[941]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[942]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[943]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[944]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[945]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[946]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[947]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[948]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[949]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[950]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[951]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[952]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[953]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[954]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[955]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[956]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[957]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[958]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[959]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[960]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[961]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[962]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[963]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[964]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[965]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[966]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[967]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[968]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[969]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[970]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[971]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[972]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[973]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[974]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[975]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[976]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[977]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[978]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[979]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[980]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[981]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[982]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[983]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[984]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[985]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[986]" -type "float2" 0.014023633 0.05328979 ;
	setAttr ".uvtk[987]" -type "float2" 0.014023633 0.05328979 ;
	setAttr ".uvtk[988]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[989]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[990]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[991]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[992]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[993]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[994]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[995]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[996]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[997]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[998]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[999]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[1000]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1001]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1002]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1003]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1004]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1005]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1006]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1007]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1008]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1009]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1010]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1011]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1012]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1013]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1014]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1015]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1016]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1017]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[1018]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[1019]" -type "float2" 0.014023663 0.05328979 ;
	setAttr ".uvtk[1020]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1021]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1022]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1023]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1024]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1025]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1026]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1027]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1066]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1067]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1068]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1069]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1070]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1071]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1072]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1073]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1074]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1075]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1076]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1077]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1078]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1079]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1080]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1081]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1082]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1083]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1084]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1085]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1086]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1087]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1088]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1089]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1090]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1091]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1092]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1093]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1094]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1095]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1096]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1097]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1098]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1099]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1100]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1101]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1102]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1103]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1104]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1105]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1106]" -type "float2" -0.04908267 0.026644893 ;
	setAttr ".uvtk[1107]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1108]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1109]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1110]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1111]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1112]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1113]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1114]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1115]" -type "float2" -0.049082674 0.026644893 ;
	setAttr ".uvtk[1118]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1119]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[1120]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1121]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[1122]" -type "float2" 0.014023618 0.05328979 ;
	setAttr ".uvtk[1123]" -type "float2" 0.014023633 0.05328982 ;
	setAttr ".uvtk[1124]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1125]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1126]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1127]" -type "float2" 0.014023603 0.05328979 ;
	setAttr ".uvtk[1128]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[1129]" -type "float2" 0.014023603 0.05328982 ;
	setAttr ".uvtk[1379]" -type "float2" -0.047473326 0.0049298205 ;
	setAttr ".uvtk[1380]" -type "float2" -0.014722126 0.034586597 ;
	setAttr ".uvtk[1381]" -type "float2" -0.04068061 0.04307412 ;
	setAttr ".uvtk[1382]" -type "float2" -0.065859541 0.021493776 ;
	setAttr ".uvtk[1383]" -type "float2" -0.071084604 -0.048706371 ;
	setAttr ".uvtk[1384]" -type "float2" -0.097846523 -0.040980835 ;
	setAttr ".uvtk[1385]" -type "float2" -0.11192249 -0.052825529 ;
	setAttr ".uvtk[1386]" -type "float2" -0.076254457 -0.07203263 ;
	setAttr ".uvtk[1387]" -type "float2" -0.10582431 -0.0162734 ;
	setAttr ".uvtk[1388]" -type "float2" -0.12641504 -0.020751078 ;
	setAttr ".uvtk[1389]" -type "float2" -0.17647038 -0.022807078 ;
	setAttr ".uvtk[1390]" -type "float2" -0.14882268 -0.0063894009 ;
	setAttr ".uvtk[1391]" -type "float2" -0.16064464 0.017540317 ;
	setAttr ".uvtk[1392]" -type "float2" -0.17919202 0.0067499033 ;
	setAttr ".uvtk[1393]" -type "float2" -0.20657973 -0.0098300818 ;
	setAttr ".uvtk[1394]" -type "float2" -0.20233506 0.015234334 ;
	setAttr ".uvtk[1395]" -type "float2" -0.187539 0.062550522 ;
	setAttr ".uvtk[1396]" -type "float2" -0.2219986 0.055696886 ;
	setAttr ".uvtk[1397]" -type "float2" -0.15285915 0.059205044 ;
	setAttr ".uvtk[1398]" -type "float2" -0.14349319 0.1319413 ;
	setAttr ".uvtk[1399]" -type "float2" -0.19710015 0.13650337 ;
	setAttr ".uvtk[1400]" -type "float2" -0.25014013 0.1270237 ;
	setAttr ".uvtk[1401]" -type "float2" -0.042826891 0.089416057 ;
	setAttr ".uvtk[1402]" -type "float2" -0.093623236 0.11369602 ;
	setAttr ".uvtk[1403]" -type "float2" -0.12127988 0.044387545 ;
	setAttr ".uvtk[1404]" -type "float2" -0.089955762 0.035378974 ;
	setAttr ".uvtk[1405]" -type "float2" -0.2952694 0.098638862 ;
	setAttr ".uvtk[1406]" -type "float2" -0.25068992 0.034742091 ;
	setAttr ".uvtk[1407]" -type "float2" 0.068466395 -0.038123924 ;
	setAttr ".uvtk[1408]" -type "float2" 0.044817835 0.0084739737 ;
	setAttr ".uvtk[1409]" -type "float2" -0.015254216 -0.035448089 ;
	setAttr ".uvtk[1410]" -type "float2" -0.0061992742 -0.067041352 ;
	setAttr ".uvtk[1411]" -type "float2" 0.006317242 0.053192247 ;
	setAttr ".uvtk[1412]" -type "float2" -0.0035707578 0.045301069 ;
	setAttr ".uvtk[1413]" -type "float2" 0.010898598 0.0081007369 ;
	setAttr ".uvtk[1414]" -type "float2" -0.044399202 0.058516908 ;
	setAttr ".uvtk[1415]" -type "float2" -0.042771474 0.049692679 ;
	setAttr ".uvtk[1416]" -type "float2" -0.010105603 0.03947388 ;
	setAttr ".uvtk[1417]" -type "float2" 0.00098083541 0.0093323477 ;
	setAttr ".uvtk[1418]" -type "float2" -0.077784166 0.030092161 ;
	setAttr ".uvtk[1419]" -type "float2" -0.093596518 -0.011891328 ;
	setAttr ".uvtk[1420]" -type "float2" -0.085342966 -0.0089994874 ;
	setAttr ".uvtk[1421]" -type "float2" -0.071375474 0.025746508 ;
	setAttr ".uvtk[1422]" -type "float2" -0.088842146 -0.032625992 ;
	setAttr ".uvtk[1423]" -type "float2" -0.066268757 -0.03738853 ;
	setAttr ".uvtk[1424]" -type "float2" -0.063245609 -0.030094404 ;
	setAttr ".uvtk[1425]" -type "float2" -0.082397215 -0.026456257 ;
	setAttr ".uvtk[1426]" -type "float2" -0.020787606 -0.023236709 ;
	setAttr ".uvtk[1427]" -type "float2" -0.025703564 -0.017437296 ;
	setAttr ".uvtk[1428]" -type "float2" -0.005434826 0.011695784 ;
	setAttr ".uvtk[1429]" -type "float2" -0.079185709 -0.010352632 ;
	setAttr ".uvtk[1430]" -type "float2" -0.078064114 -0.022558948 ;
	setAttr ".uvtk[1431]" -type "float2" -0.064092457 -0.0236031 ;
	setAttr ".uvtk[1432]" -type "float2" -0.029476658 -0.011744821 ;
	setAttr ".uvtk[1433]" -type "float2" -0.04908267 -0.015425983 ;
	setAttr ".uvtk[1434]" -type "float2" -0.04908267 -0.015425982 ;
	setAttr ".uvtk[1435]" -type "float2" -0.049082663 -0.015425982 ;
	setAttr ".uvtk[1436]" -type "float2" -0.049082663 -0.015425983 ;
	setAttr ".uvtk[1437]" -type "float2" -0.049082663 -0.015425982 ;
	setAttr ".uvtk[1438]" -type "float2" -0.049082663 -0.015425982 ;
	setAttr ".uvtk[1439]" -type "float2" -0.049082663 -0.015425982 ;
	setAttr ".uvtk[1440]" -type "float2" -0.049082663 -0.015425981 ;
	setAttr ".uvtk[1441]" -type "float2" -0.049082663 -0.015425983 ;
	setAttr ".uvtk[1442]" -type "float2" -0.049082663 -0.015425983 ;
	setAttr ".uvtk[1443]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1444]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1445]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1446]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1447]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1448]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1449]" -type "float2" -0.04908267 -0.015425979 ;
	setAttr ".uvtk[1450]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1451]" -type "float2" -0.04908267 -0.015425979 ;
	setAttr ".uvtk[1452]" -type "float2" -0.04908267 -0.015425979 ;
	setAttr ".uvtk[1453]" -type "float2" -0.049082663 -0.015425981 ;
	setAttr ".uvtk[1454]" -type "float2" -0.049082663 -0.015425983 ;
	setAttr ".uvtk[1455]" -type "float2" -0.049082663 -0.015425983 ;
	setAttr ".uvtk[1456]" -type "float2" -0.049082663 -0.015425982 ;
	setAttr ".uvtk[1457]" -type "float2" -0.049082663 -0.015425981 ;
	setAttr ".uvtk[1458]" -type "float2" -0.049082678 -0.015425979 ;
	setAttr ".uvtk[1459]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1460]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1461]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1462]" -type "float2" -0.049082663 -0.015425983 ;
	setAttr ".uvtk[1463]" -type "float2" -0.049082663 -0.015425982 ;
	setAttr ".uvtk[1464]" -type "float2" -0.049082663 -0.015425983 ;
	setAttr ".uvtk[1465]" -type "float2" -0.049082663 -0.015425982 ;
	setAttr ".uvtk[1466]" -type "float2" -0.049082663 -0.015425981 ;
	setAttr ".uvtk[1467]" -type "float2" -0.049082663 -0.015425983 ;
	setAttr ".uvtk[1468]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1469]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1470]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1471]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1472]" -type "float2" -0.04908267 -0.015425979 ;
	setAttr ".uvtk[1473]" -type "float2" -0.0091092288 0.05286853 ;
	setAttr ".uvtk[1474]" -type "float2" -0.017248824 0.046181142 ;
	setAttr ".uvtk[1475]" -type "float2" -0.0060768276 0.016294599 ;
	setAttr ".uvtk[1476]" -type "float2" 0.0044382364 0.016921923 ;
	setAttr ".uvtk[1477]" -type "float2" -0.014685661 -0.014491379 ;
	setAttr ".uvtk[1478]" -type "float2" -0.0058126897 -0.020159125 ;
	setAttr ".uvtk[1479]" -type "float2" -0.039871559 -0.034347355 ;
	setAttr ".uvtk[1480]" -type "float2" -0.036052056 -0.044130921 ;
	setAttr ".uvtk[1481]" -type "float2" -0.072068267 -0.035655424 ;
	setAttr ".uvtk[1482]" -type "float2" -0.075295776 -0.045469686 ;
	setAttr ".uvtk[1483]" -type "float2" -0.097280599 -0.019044798 ;
	setAttr ".uvtk[1484]" -type "float2" -0.10484473 -0.026110692 ;
	setAttr ".uvtk[1485]" -type "float2" -0.1088126 0.011082668 ;
	setAttr ".uvtk[1486]" -type "float2" -0.11929765 0.01043673 ;
	setAttr ".uvtk[1487]" -type "float2" -0.10054077 0.042091385 ;
	setAttr ".uvtk[1488]" -type "float2" -0.10941307 0.047760323 ;
	setAttr ".uvtk[1489]" -type "float2" -0.075693242 0.062168837 ;
	setAttr ".uvtk[1490]" -type "float2" -0.079540916 0.071972847 ;
	setAttr ".uvtk[1491]" -type "float2" -0.043859079 0.06371218 ;
	setAttr ".uvtk[1492]" -type "float2" -0.041206747 0.0739066 ;
	setAttr ".uvtk[1493]" -type "float2" -0.098841846 -0.12725817 ;
	setAttr ".uvtk[1494]" -type "float2" -0.11764818 -0.077810571 ;
	setAttr ".uvtk[1495]" -type "float2" -0.13154393 -0.12879092 ;
	setAttr ".uvtk[1496]" -type "float2" -0.073211685 -0.10691135 ;
	setAttr ".uvtk[1497]" -type "float2" -0.06431134 -0.075609311 ;
	setAttr ".uvtk[1498]" -type "float2" -0.13689557 -0.028072461 ;
	setAttr ".uvtk[1499]" -type "float2" -0.16208336 -0.048710577 ;
	setAttr ".uvtk[1500]" -type "float2" -0.17054093 -0.080303907 ;
	setAttr ".uvtk[1501]" -type "float2" -0.15890613 -0.11087215 ;
	setAttr ".uvtk[1502]" -type "float2" -0.017248824 0.046181142 ;
	setAttr ".uvtk[1503]" -type "float2" -0.057614043 0.013797879 ;
	setAttr ".uvtk[1504]" -type "float2" -0.0060768276 0.016294599 ;
	setAttr ".uvtk[1505]" -type "float2" -0.014685661 -0.014491379 ;
	setAttr ".uvtk[1506]" -type "float2" -0.039871559 -0.034347355 ;
	setAttr ".uvtk[1507]" -type "float2" -0.072068267 -0.035655424 ;
	setAttr ".uvtk[1508]" -type "float2" -0.097280599 -0.019044798 ;
	setAttr ".uvtk[1509]" -type "float2" -0.1088126 0.011082668 ;
	setAttr ".uvtk[1510]" -type "float2" -0.10054077 0.042091385 ;
	setAttr ".uvtk[1511]" -type "float2" -0.075693242 0.062168837 ;
	setAttr ".uvtk[1512]" -type "float2" -0.043859079 0.06371218 ;
	setAttr ".uvtk[1513]" -type "float2" -0.049082663 -0.015425982 ;
	setAttr ".uvtk[1514]" -type "float2" -0.049082663 -0.015425983 ;
	setAttr ".uvtk[1515]" -type "float2" -0.049082663 -0.015425982 ;
	setAttr ".uvtk[1516]" -type "float2" -0.049082663 -0.015425981 ;
	setAttr ".uvtk[1517]" -type "float2" -0.049082663 -0.015425983 ;
	setAttr ".uvtk[1518]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1519]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1520]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1521]" -type "float2" -0.049082663 -0.015425979 ;
	setAttr ".uvtk[1522]" -type "float2" -0.04908267 -0.015425979 ;
	setAttr ".uvtk[1523]" -type "float2" -0.017248824 0.046181142 ;
	setAttr ".uvtk[1524]" -type "float2" -0.0060768276 0.016294599 ;
	setAttr ".uvtk[1525]" -type "float2" -0.014685661 -0.014491379 ;
	setAttr ".uvtk[1526]" -type "float2" -0.039871559 -0.034347355 ;
	setAttr ".uvtk[1527]" -type "float2" -0.072068267 -0.035655424 ;
	setAttr ".uvtk[1528]" -type "float2" -0.097280599 -0.019044798 ;
	setAttr ".uvtk[1529]" -type "float2" -0.1088126 0.011082668 ;
	setAttr ".uvtk[1530]" -type "float2" -0.10054077 0.042091385 ;
	setAttr ".uvtk[1531]" -type "float2" -0.075693242 0.062168837 ;
	setAttr ".uvtk[1532]" -type "float2" -0.043859079 0.06371218 ;
	setAttr ".uvtk[1886]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1887]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1888]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1889]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1890]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1891]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1892]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1893]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1894]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1895]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1896]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1897]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1898]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1899]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1900]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1901]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1902]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1903]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1904]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1905]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1906]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1907]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1908]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1909]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1910]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1911]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1912]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1913]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1914]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1915]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1916]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1917]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1918]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1919]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1920]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1921]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1922]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1923]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1924]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1925]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1926]" -type "float2" -0.039266143 0.0070118317 ;
	setAttr ".uvtk[1927]" -type "float2" -0.039266143 0.0070118317 ;
	setAttr ".uvtk[1928]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1929]" -type "float2" -0.039266143 0.0070118317 ;
	setAttr ".uvtk[1930]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1931]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1932]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1933]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1934]" -type "float2" -0.039266143 0.0070118317 ;
	setAttr ".uvtk[1935]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1936]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1937]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1938]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1939]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1940]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1941]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1942]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1943]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1944]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1945]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1946]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1947]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1948]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1949]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1950]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1951]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1952]" -type "float2" -0.039266143 0.0070118317 ;
	setAttr ".uvtk[1953]" -type "float2" -0.039266143 0.0070118317 ;
	setAttr ".uvtk[1954]" -type "float2" -0.039266143 0.0070118317 ;
	setAttr ".uvtk[1955]" -type "float2" -0.039266143 0.0070118317 ;
	setAttr ".uvtk[1956]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1957]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[1958]" -type "float2" -0.039266136 0.0070118317 ;
	setAttr ".uvtk[1959]" -type "float2" -0.039266128 0.0070118317 ;
	setAttr ".uvtk[2105]" -type "float2" 0.23441134 0.022779735 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape2.ws";
connectAttr ":sideShape.msg" "imagePlaneShape2.ltc";
connectAttr "polySoftEdge1.out" "pCubeShape1.i";
connectAttr "rootJnt_parentConstraint1.ctx" "rootJnt.tx";
connectAttr "rootJnt_parentConstraint1.cty" "rootJnt.ty";
connectAttr "rootJnt_parentConstraint1.ctz" "rootJnt.tz";
connectAttr "rootJnt_parentConstraint1.crx" "rootJnt.rx";
connectAttr "rootJnt_parentConstraint1.cry" "rootJnt.ry";
connectAttr "rootJnt_parentConstraint1.crz" "rootJnt.rz";
connectAttr "rootJnt.s" "left_hipJnt.is";
connectAttr "left_hipJnt.s" "left_kneeJnt.is";
connectAttr "left_kneeJnt.s" "left_footJnt.is";
connectAttr "left_footJnt.tx" "effector1.tx";
connectAttr "left_footJnt.ty" "effector1.ty";
connectAttr "left_footJnt.tz" "effector1.tz";
connectAttr "rootJnt.s" "spine1Jnt.is";
connectAttr "spine1Jnt_parentConstraint1.ctx" "spine1Jnt.tx";
connectAttr "spine1Jnt_parentConstraint1.cty" "spine1Jnt.ty";
connectAttr "spine1Jnt_parentConstraint1.ctz" "spine1Jnt.tz";
connectAttr "spine1Jnt_parentConstraint1.crx" "spine1Jnt.rx";
connectAttr "spine1Jnt_parentConstraint1.cry" "spine1Jnt.ry";
connectAttr "spine1Jnt_parentConstraint1.crz" "spine1Jnt.rz";
connectAttr "spine1Jnt.s" "spine2Jnt.is";
connectAttr "spine2Jnt_parentConstraint1.ctx" "spine2Jnt.tx";
connectAttr "spine2Jnt_parentConstraint1.cty" "spine2Jnt.ty";
connectAttr "spine2Jnt_parentConstraint1.ctz" "spine2Jnt.tz";
connectAttr "spine2Jnt_parentConstraint1.crx" "spine2Jnt.rx";
connectAttr "spine2Jnt_parentConstraint1.cry" "spine2Jnt.ry";
connectAttr "spine2Jnt_parentConstraint1.crz" "spine2Jnt.rz";
connectAttr "spine2Jnt.s" "spine3Jnt.is";
connectAttr "spine3Jnt_parentConstraint1.ctx" "spine3Jnt.tx";
connectAttr "spine3Jnt_parentConstraint1.cty" "spine3Jnt.ty";
connectAttr "spine3Jnt_parentConstraint1.ctz" "spine3Jnt.tz";
connectAttr "spine3Jnt_parentConstraint1.crx" "spine3Jnt.rx";
connectAttr "spine3Jnt_parentConstraint1.cry" "spine3Jnt.ry";
connectAttr "spine3Jnt_parentConstraint1.crz" "spine3Jnt.rz";
connectAttr "spine3Jnt.s" "spine4Jnt.is";
connectAttr "spine4Jnt_parentConstraint1.ctx" "spine4Jnt.tx";
connectAttr "spine4Jnt_parentConstraint1.cty" "spine4Jnt.ty";
connectAttr "spine4Jnt_parentConstraint1.ctz" "spine4Jnt.tz";
connectAttr "spine4Jnt_parentConstraint1.crx" "spine4Jnt.rx";
connectAttr "spine4Jnt_parentConstraint1.cry" "spine4Jnt.ry";
connectAttr "spine4Jnt_parentConstraint1.crz" "spine4Jnt.rz";
connectAttr "spine4Jnt.s" "headJnt.is";
connectAttr "headJnt_parentConstraint1.ctx" "headJnt.tx";
connectAttr "headJnt_parentConstraint1.cty" "headJnt.ty";
connectAttr "headJnt_parentConstraint1.ctz" "headJnt.tz";
connectAttr "headJnt_parentConstraint1.crx" "headJnt.rx";
connectAttr "headJnt_parentConstraint1.cry" "headJnt.ry";
connectAttr "headJnt_parentConstraint1.crz" "headJnt.rz";
connectAttr "headJnt.s" "headEndJnt.is";
connectAttr "headJnt.ro" "headJnt_parentConstraint1.cro";
connectAttr "headJnt.pim" "headJnt_parentConstraint1.cpim";
connectAttr "headJnt.rp" "headJnt_parentConstraint1.crp";
connectAttr "headJnt.rpt" "headJnt_parentConstraint1.crt";
connectAttr "headJnt.jo" "headJnt_parentConstraint1.cjo";
connectAttr "headCtrl.t" "headJnt_parentConstraint1.tg[0].tt";
connectAttr "headCtrl.rp" "headJnt_parentConstraint1.tg[0].trp";
connectAttr "headCtrl.rpt" "headJnt_parentConstraint1.tg[0].trt";
connectAttr "headCtrl.r" "headJnt_parentConstraint1.tg[0].tr";
connectAttr "headCtrl.ro" "headJnt_parentConstraint1.tg[0].tro";
connectAttr "headCtrl.s" "headJnt_parentConstraint1.tg[0].ts";
connectAttr "headCtrl.pm" "headJnt_parentConstraint1.tg[0].tpm";
connectAttr "headJnt_parentConstraint1.w0" "headJnt_parentConstraint1.tg[0].tw";
connectAttr "spine4Jnt.s" "left_clavicleJnt.is";
connectAttr "left_clavicleJnt_parentConstraint1.ctx" "left_clavicleJnt.tx";
connectAttr "left_clavicleJnt_parentConstraint1.cty" "left_clavicleJnt.ty";
connectAttr "left_clavicleJnt_parentConstraint1.ctz" "left_clavicleJnt.tz";
connectAttr "left_clavicleJnt_parentConstraint1.crx" "left_clavicleJnt.rx";
connectAttr "left_clavicleJnt_parentConstraint1.cry" "left_clavicleJnt.ry";
connectAttr "left_clavicleJnt_parentConstraint1.crz" "left_clavicleJnt.rz";
connectAttr "left_clavicleJnt.s" "left_shoulderJnt.is";
connectAttr "left_shoulderJnt_parentConstraint1.ctx" "left_shoulderJnt.tx";
connectAttr "left_shoulderJnt_parentConstraint1.cty" "left_shoulderJnt.ty";
connectAttr "left_shoulderJnt_parentConstraint1.ctz" "left_shoulderJnt.tz";
connectAttr "left_shoulderJnt_parentConstraint1.crx" "left_shoulderJnt.rx";
connectAttr "left_shoulderJnt_parentConstraint1.cry" "left_shoulderJnt.ry";
connectAttr "left_shoulderJnt_parentConstraint1.crz" "left_shoulderJnt.rz";
connectAttr "left_shoulderJnt.s" "left_elbowJnt.is";
connectAttr "left_elbowJnt_parentConstraint1.ctx" "left_elbowJnt.tx";
connectAttr "left_elbowJnt_parentConstraint1.cty" "left_elbowJnt.ty";
connectAttr "left_elbowJnt_parentConstraint1.ctz" "left_elbowJnt.tz";
connectAttr "left_elbowJnt_parentConstraint1.crx" "left_elbowJnt.rx";
connectAttr "left_elbowJnt_parentConstraint1.cry" "left_elbowJnt.ry";
connectAttr "left_elbowJnt_parentConstraint1.crz" "left_elbowJnt.rz";
connectAttr "left_elbowJnt.s" "left_finger1Jnt.is";
connectAttr "left_finger1Jnt_parentConstraint1.ctx" "left_finger1Jnt.tx";
connectAttr "left_finger1Jnt_parentConstraint1.cty" "left_finger1Jnt.ty";
connectAttr "left_finger1Jnt_parentConstraint1.ctz" "left_finger1Jnt.tz";
connectAttr "left_finger1Jnt_parentConstraint1.crx" "left_finger1Jnt.rx";
connectAttr "left_finger1Jnt_parentConstraint1.cry" "left_finger1Jnt.ry";
connectAttr "left_finger1Jnt_parentConstraint1.crz" "left_finger1Jnt.rz";
connectAttr "left_finger1Jnt.s" "left_finger2Jnt.is";
connectAttr "left_finger2Jnt_parentConstraint1.ctx" "left_finger2Jnt.tx";
connectAttr "left_finger2Jnt_parentConstraint1.cty" "left_finger2Jnt.ty";
connectAttr "left_finger2Jnt_parentConstraint1.ctz" "left_finger2Jnt.tz";
connectAttr "left_finger2Jnt_parentConstraint1.crx" "left_finger2Jnt.rx";
connectAttr "left_finger2Jnt_parentConstraint1.cry" "left_finger2Jnt.ry";
connectAttr "left_finger2Jnt_parentConstraint1.crz" "left_finger2Jnt.rz";
connectAttr "left_finger2Jnt.s" "left_fingerEndJnt.is";
connectAttr "left_finger2Jnt.ro" "left_finger2Jnt_parentConstraint1.cro";
connectAttr "left_finger2Jnt.pim" "left_finger2Jnt_parentConstraint1.cpim";
connectAttr "left_finger2Jnt.rp" "left_finger2Jnt_parentConstraint1.crp";
connectAttr "left_finger2Jnt.rpt" "left_finger2Jnt_parentConstraint1.crt";
connectAttr "left_finger2Jnt.jo" "left_finger2Jnt_parentConstraint1.cjo";
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl|left_finger2CtrlGrp|left_finger1Ctrl.t" "left_finger2Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl|left_finger2CtrlGrp|left_finger1Ctrl.rp" "left_finger2Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl|left_finger2CtrlGrp|left_finger1Ctrl.rpt" "left_finger2Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl|left_finger2CtrlGrp|left_finger1Ctrl.r" "left_finger2Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl|left_finger2CtrlGrp|left_finger1Ctrl.ro" "left_finger2Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl|left_finger2CtrlGrp|left_finger1Ctrl.s" "left_finger2Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl|left_finger2CtrlGrp|left_finger1Ctrl.pm" "left_finger2Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "left_finger2Jnt_parentConstraint1.w0" "left_finger2Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "left_finger1Jnt.s" "left_thumb1Jnt.is";
connectAttr "left_thumb1Jnt.s" "left_thumb2Jnt.is";
connectAttr "left_thumb2Jnt.s" "left_thumbEndJnt.is";
connectAttr "left_finger1Jnt.s" "joint1.is";
connectAttr "left_finger1Jnt.ro" "left_finger1Jnt_parentConstraint1.cro";
connectAttr "left_finger1Jnt.pim" "left_finger1Jnt_parentConstraint1.cpim";
connectAttr "left_finger1Jnt.rp" "left_finger1Jnt_parentConstraint1.crp";
connectAttr "left_finger1Jnt.rpt" "left_finger1Jnt_parentConstraint1.crt";
connectAttr "left_finger1Jnt.jo" "left_finger1Jnt_parentConstraint1.cjo";
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl.t" "left_finger1Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl.rp" "left_finger1Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl.rpt" "left_finger1Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl.r" "left_finger1Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl.ro" "left_finger1Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl.s" "left_finger1Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|left_clavicleCtrlGrp|left_clavicleCtrl|left_shoulderCtrlGrp|left_shoulderCtrl|left_elbowCtrlGrp|left_elbowCtrl|left_finger1CtrlGrp|left_finger1Ctrl.pm" "left_finger1Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "left_finger1Jnt_parentConstraint1.w0" "left_finger1Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "left_elbowJnt.ro" "left_elbowJnt_parentConstraint1.cro";
connectAttr "left_elbowJnt.pim" "left_elbowJnt_parentConstraint1.cpim";
connectAttr "left_elbowJnt.rp" "left_elbowJnt_parentConstraint1.crp";
connectAttr "left_elbowJnt.rpt" "left_elbowJnt_parentConstraint1.crt";
connectAttr "left_elbowJnt.jo" "left_elbowJnt_parentConstraint1.cjo";
connectAttr "left_elbowCtrl.t" "left_elbowJnt_parentConstraint1.tg[0].tt";
connectAttr "left_elbowCtrl.rp" "left_elbowJnt_parentConstraint1.tg[0].trp";
connectAttr "left_elbowCtrl.rpt" "left_elbowJnt_parentConstraint1.tg[0].trt";
connectAttr "left_elbowCtrl.r" "left_elbowJnt_parentConstraint1.tg[0].tr";
connectAttr "left_elbowCtrl.ro" "left_elbowJnt_parentConstraint1.tg[0].tro";
connectAttr "left_elbowCtrl.s" "left_elbowJnt_parentConstraint1.tg[0].ts";
connectAttr "left_elbowCtrl.pm" "left_elbowJnt_parentConstraint1.tg[0].tpm";
connectAttr "left_elbowJnt_parentConstraint1.w0" "left_elbowJnt_parentConstraint1.tg[0].tw"
		;
connectAttr "left_shoulderJnt.ro" "left_shoulderJnt_parentConstraint1.cro";
connectAttr "left_shoulderJnt.pim" "left_shoulderJnt_parentConstraint1.cpim";
connectAttr "left_shoulderJnt.rp" "left_shoulderJnt_parentConstraint1.crp";
connectAttr "left_shoulderJnt.rpt" "left_shoulderJnt_parentConstraint1.crt";
connectAttr "left_shoulderJnt.jo" "left_shoulderJnt_parentConstraint1.cjo";
connectAttr "left_shoulderCtrl.t" "left_shoulderJnt_parentConstraint1.tg[0].tt";
connectAttr "left_shoulderCtrl.rp" "left_shoulderJnt_parentConstraint1.tg[0].trp"
		;
connectAttr "left_shoulderCtrl.rpt" "left_shoulderJnt_parentConstraint1.tg[0].trt"
		;
connectAttr "left_shoulderCtrl.r" "left_shoulderJnt_parentConstraint1.tg[0].tr";
connectAttr "left_shoulderCtrl.ro" "left_shoulderJnt_parentConstraint1.tg[0].tro"
		;
connectAttr "left_shoulderCtrl.s" "left_shoulderJnt_parentConstraint1.tg[0].ts";
connectAttr "left_shoulderCtrl.pm" "left_shoulderJnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "left_shoulderJnt_parentConstraint1.w0" "left_shoulderJnt_parentConstraint1.tg[0].tw"
		;
connectAttr "left_clavicleJnt.ro" "left_clavicleJnt_parentConstraint1.cro";
connectAttr "left_clavicleJnt.pim" "left_clavicleJnt_parentConstraint1.cpim";
connectAttr "left_clavicleJnt.rp" "left_clavicleJnt_parentConstraint1.crp";
connectAttr "left_clavicleJnt.rpt" "left_clavicleJnt_parentConstraint1.crt";
connectAttr "left_clavicleJnt.jo" "left_clavicleJnt_parentConstraint1.cjo";
connectAttr "left_clavicleCtrl.t" "left_clavicleJnt_parentConstraint1.tg[0].tt";
connectAttr "left_clavicleCtrl.rp" "left_clavicleJnt_parentConstraint1.tg[0].trp"
		;
connectAttr "left_clavicleCtrl.rpt" "left_clavicleJnt_parentConstraint1.tg[0].trt"
		;
connectAttr "left_clavicleCtrl.r" "left_clavicleJnt_parentConstraint1.tg[0].tr";
connectAttr "left_clavicleCtrl.ro" "left_clavicleJnt_parentConstraint1.tg[0].tro"
		;
connectAttr "left_clavicleCtrl.s" "left_clavicleJnt_parentConstraint1.tg[0].ts";
connectAttr "left_clavicleCtrl.pm" "left_clavicleJnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "left_clavicleJnt_parentConstraint1.w0" "left_clavicleJnt_parentConstraint1.tg[0].tw"
		;
connectAttr "spine4Jnt.s" "right_clavicleJnt.is";
connectAttr "right_clavicleJnt_parentConstraint1.ctx" "right_clavicleJnt.tx";
connectAttr "right_clavicleJnt_parentConstraint1.cty" "right_clavicleJnt.ty";
connectAttr "right_clavicleJnt_parentConstraint1.ctz" "right_clavicleJnt.tz";
connectAttr "right_clavicleJnt_parentConstraint1.crx" "right_clavicleJnt.rx";
connectAttr "right_clavicleJnt_parentConstraint1.cry" "right_clavicleJnt.ry";
connectAttr "right_clavicleJnt_parentConstraint1.crz" "right_clavicleJnt.rz";
connectAttr "right_clavicleJnt.s" "right_shoulderJnt.is";
connectAttr "right_shoulderJnt_parentConstraint1.ctx" "right_shoulderJnt.tx";
connectAttr "right_shoulderJnt_parentConstraint1.cty" "right_shoulderJnt.ty";
connectAttr "right_shoulderJnt_parentConstraint1.ctz" "right_shoulderJnt.tz";
connectAttr "right_shoulderJnt_parentConstraint1.crx" "right_shoulderJnt.rx";
connectAttr "right_shoulderJnt_parentConstraint1.cry" "right_shoulderJnt.ry";
connectAttr "right_shoulderJnt_parentConstraint1.crz" "right_shoulderJnt.rz";
connectAttr "right_shoulderJnt.s" "right_elbowJnt.is";
connectAttr "right_elbowJnt_parentConstraint1.ctx" "right_elbowJnt.tx";
connectAttr "right_elbowJnt_parentConstraint1.cty" "right_elbowJnt.ty";
connectAttr "right_elbowJnt_parentConstraint1.ctz" "right_elbowJnt.tz";
connectAttr "right_elbowJnt_parentConstraint1.crx" "right_elbowJnt.rx";
connectAttr "right_elbowJnt_parentConstraint1.cry" "right_elbowJnt.ry";
connectAttr "right_elbowJnt_parentConstraint1.crz" "right_elbowJnt.rz";
connectAttr "right_elbowJnt.s" "right_finger1Jnt.is";
connectAttr "right_finger1Jnt_parentConstraint1.ctx" "right_finger1Jnt.tx";
connectAttr "right_finger1Jnt_parentConstraint1.cty" "right_finger1Jnt.ty";
connectAttr "right_finger1Jnt_parentConstraint1.ctz" "right_finger1Jnt.tz";
connectAttr "right_finger1Jnt_parentConstraint1.crx" "right_finger1Jnt.rx";
connectAttr "right_finger1Jnt_parentConstraint1.cry" "right_finger1Jnt.ry";
connectAttr "right_finger1Jnt_parentConstraint1.crz" "right_finger1Jnt.rz";
connectAttr "right_finger1Jnt.s" "right_finger2Jnt.is";
connectAttr "right_finger2Jnt_parentConstraint1.ctx" "right_finger2Jnt.tx";
connectAttr "right_finger2Jnt_parentConstraint1.cty" "right_finger2Jnt.ty";
connectAttr "right_finger2Jnt_parentConstraint1.ctz" "right_finger2Jnt.tz";
connectAttr "right_finger2Jnt_parentConstraint1.crx" "right_finger2Jnt.rx";
connectAttr "right_finger2Jnt_parentConstraint1.cry" "right_finger2Jnt.ry";
connectAttr "right_finger2Jnt_parentConstraint1.crz" "right_finger2Jnt.rz";
connectAttr "right_finger2Jnt.s" "right_fingerEndJnt.is";
connectAttr "right_finger2Jnt.ro" "right_finger2Jnt_parentConstraint1.cro";
connectAttr "right_finger2Jnt.pim" "right_finger2Jnt_parentConstraint1.cpim";
connectAttr "right_finger2Jnt.rp" "right_finger2Jnt_parentConstraint1.crp";
connectAttr "right_finger2Jnt.rpt" "right_finger2Jnt_parentConstraint1.crt";
connectAttr "right_finger2Jnt.jo" "right_finger2Jnt_parentConstraint1.cjo";
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl|right_finger2CtrlGrp|right_finger1Ctrl.t" "right_finger2Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl|right_finger2CtrlGrp|right_finger1Ctrl.rp" "right_finger2Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl|right_finger2CtrlGrp|right_finger1Ctrl.rpt" "right_finger2Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl|right_finger2CtrlGrp|right_finger1Ctrl.r" "right_finger2Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl|right_finger2CtrlGrp|right_finger1Ctrl.ro" "right_finger2Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl|right_finger2CtrlGrp|right_finger1Ctrl.s" "right_finger2Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl|right_finger2CtrlGrp|right_finger1Ctrl.pm" "right_finger2Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "right_finger2Jnt_parentConstraint1.w0" "right_finger2Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "right_finger1Jnt.s" "right_thumb1Jnt.is";
connectAttr "right_thumb1Jnt_parentConstraint1.ctx" "right_thumb1Jnt.tx";
connectAttr "right_thumb1Jnt_parentConstraint1.cty" "right_thumb1Jnt.ty";
connectAttr "right_thumb1Jnt_parentConstraint1.ctz" "right_thumb1Jnt.tz";
connectAttr "right_thumb1Jnt_parentConstraint1.crx" "right_thumb1Jnt.rx";
connectAttr "right_thumb1Jnt_parentConstraint1.cry" "right_thumb1Jnt.ry";
connectAttr "right_thumb1Jnt_parentConstraint1.crz" "right_thumb1Jnt.rz";
connectAttr "right_thumb1Jnt.s" "right_thumb2Jnt.is";
connectAttr "right_thumb2Jnt_parentConstraint1.ctx" "right_thumb2Jnt.tx";
connectAttr "right_thumb2Jnt_parentConstraint1.cty" "right_thumb2Jnt.ty";
connectAttr "right_thumb2Jnt_parentConstraint1.ctz" "right_thumb2Jnt.tz";
connectAttr "right_thumb2Jnt_parentConstraint1.crx" "right_thumb2Jnt.rx";
connectAttr "right_thumb2Jnt_parentConstraint1.cry" "right_thumb2Jnt.ry";
connectAttr "right_thumb2Jnt_parentConstraint1.crz" "right_thumb2Jnt.rz";
connectAttr "right_thumb2Jnt.s" "right_thumbEndJnt.is";
connectAttr "right_thumb2Jnt.ro" "right_thumb2Jnt_parentConstraint1.cro";
connectAttr "right_thumb2Jnt.pim" "right_thumb2Jnt_parentConstraint1.cpim";
connectAttr "right_thumb2Jnt.rp" "right_thumb2Jnt_parentConstraint1.crp";
connectAttr "right_thumb2Jnt.rpt" "right_thumb2Jnt_parentConstraint1.crt";
connectAttr "right_thumb2Jnt.jo" "right_thumb2Jnt_parentConstraint1.cjo";
connectAttr "right_thumb2Ctrl.t" "right_thumb2Jnt_parentConstraint1.tg[0].tt";
connectAttr "right_thumb2Ctrl.rp" "right_thumb2Jnt_parentConstraint1.tg[0].trp";
connectAttr "right_thumb2Ctrl.rpt" "right_thumb2Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "right_thumb2Ctrl.r" "right_thumb2Jnt_parentConstraint1.tg[0].tr";
connectAttr "right_thumb2Ctrl.ro" "right_thumb2Jnt_parentConstraint1.tg[0].tro";
connectAttr "right_thumb2Ctrl.s" "right_thumb2Jnt_parentConstraint1.tg[0].ts";
connectAttr "right_thumb2Ctrl.pm" "right_thumb2Jnt_parentConstraint1.tg[0].tpm";
connectAttr "right_thumb2Jnt_parentConstraint1.w0" "right_thumb2Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "right_thumb1Jnt.ro" "right_thumb1Jnt_parentConstraint1.cro";
connectAttr "right_thumb1Jnt.pim" "right_thumb1Jnt_parentConstraint1.cpim";
connectAttr "right_thumb1Jnt.rp" "right_thumb1Jnt_parentConstraint1.crp";
connectAttr "right_thumb1Jnt.rpt" "right_thumb1Jnt_parentConstraint1.crt";
connectAttr "right_thumb1Jnt.jo" "right_thumb1Jnt_parentConstraint1.cjo";
connectAttr "right_thumb1Ctrl.t" "right_thumb1Jnt_parentConstraint1.tg[0].tt";
connectAttr "right_thumb1Ctrl.rp" "right_thumb1Jnt_parentConstraint1.tg[0].trp";
connectAttr "right_thumb1Ctrl.rpt" "right_thumb1Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "right_thumb1Ctrl.r" "right_thumb1Jnt_parentConstraint1.tg[0].tr";
connectAttr "right_thumb1Ctrl.ro" "right_thumb1Jnt_parentConstraint1.tg[0].tro";
connectAttr "right_thumb1Ctrl.s" "right_thumb1Jnt_parentConstraint1.tg[0].ts";
connectAttr "right_thumb1Ctrl.pm" "right_thumb1Jnt_parentConstraint1.tg[0].tpm";
connectAttr "right_thumb1Jnt_parentConstraint1.w0" "right_thumb1Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "right_finger1Jnt.ro" "right_finger1Jnt_parentConstraint1.cro";
connectAttr "right_finger1Jnt.pim" "right_finger1Jnt_parentConstraint1.cpim";
connectAttr "right_finger1Jnt.rp" "right_finger1Jnt_parentConstraint1.crp";
connectAttr "right_finger1Jnt.rpt" "right_finger1Jnt_parentConstraint1.crt";
connectAttr "right_finger1Jnt.jo" "right_finger1Jnt_parentConstraint1.cjo";
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl.t" "right_finger1Jnt_parentConstraint1.tg[0].tt"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl.rp" "right_finger1Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl.rpt" "right_finger1Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl.r" "right_finger1Jnt_parentConstraint1.tg[0].tr"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl.ro" "right_finger1Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl.s" "right_finger1Jnt_parentConstraint1.tg[0].ts"
		;
connectAttr "|mainCtrl|rootCtrl|spine1CtrlGrp|spine1Ctrl|spine2CtrlGrp|spine2Ctrl|spine3CtrlGrp|spine3Ctrl|spine4CtrlGrp|right_clavicleCtrlGrp|right_clavicleCtrl|right_shoulderCtrlGrp|right_shoulderCtrl|right_elbowCtrlGrp|right_elbowCtrl|right_finger1CtrlGrp|right_finger1Ctrl.pm" "right_finger1Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "right_finger1Jnt_parentConstraint1.w0" "right_finger1Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "right_elbowJnt.ro" "right_elbowJnt_parentConstraint1.cro";
connectAttr "right_elbowJnt.pim" "right_elbowJnt_parentConstraint1.cpim";
connectAttr "right_elbowJnt.rp" "right_elbowJnt_parentConstraint1.crp";
connectAttr "right_elbowJnt.rpt" "right_elbowJnt_parentConstraint1.crt";
connectAttr "right_elbowJnt.jo" "right_elbowJnt_parentConstraint1.cjo";
connectAttr "right_elbowCtrl.t" "right_elbowJnt_parentConstraint1.tg[0].tt";
connectAttr "right_elbowCtrl.rp" "right_elbowJnt_parentConstraint1.tg[0].trp";
connectAttr "right_elbowCtrl.rpt" "right_elbowJnt_parentConstraint1.tg[0].trt";
connectAttr "right_elbowCtrl.r" "right_elbowJnt_parentConstraint1.tg[0].tr";
connectAttr "right_elbowCtrl.ro" "right_elbowJnt_parentConstraint1.tg[0].tro";
connectAttr "right_elbowCtrl.s" "right_elbowJnt_parentConstraint1.tg[0].ts";
connectAttr "right_elbowCtrl.pm" "right_elbowJnt_parentConstraint1.tg[0].tpm";
connectAttr "right_elbowJnt_parentConstraint1.w0" "right_elbowJnt_parentConstraint1.tg[0].tw"
		;
connectAttr "right_shoulderJnt.ro" "right_shoulderJnt_parentConstraint1.cro";
connectAttr "right_shoulderJnt.pim" "right_shoulderJnt_parentConstraint1.cpim";
connectAttr "right_shoulderJnt.rp" "right_shoulderJnt_parentConstraint1.crp";
connectAttr "right_shoulderJnt.rpt" "right_shoulderJnt_parentConstraint1.crt";
connectAttr "right_shoulderJnt.jo" "right_shoulderJnt_parentConstraint1.cjo";
connectAttr "right_shoulderCtrl.t" "right_shoulderJnt_parentConstraint1.tg[0].tt"
		;
connectAttr "right_shoulderCtrl.rp" "right_shoulderJnt_parentConstraint1.tg[0].trp"
		;
connectAttr "right_shoulderCtrl.rpt" "right_shoulderJnt_parentConstraint1.tg[0].trt"
		;
connectAttr "right_shoulderCtrl.r" "right_shoulderJnt_parentConstraint1.tg[0].tr"
		;
connectAttr "right_shoulderCtrl.ro" "right_shoulderJnt_parentConstraint1.tg[0].tro"
		;
connectAttr "right_shoulderCtrl.s" "right_shoulderJnt_parentConstraint1.tg[0].ts"
		;
connectAttr "right_shoulderCtrl.pm" "right_shoulderJnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "right_shoulderJnt_parentConstraint1.w0" "right_shoulderJnt_parentConstraint1.tg[0].tw"
		;
connectAttr "right_clavicleJnt.ro" "right_clavicleJnt_parentConstraint1.cro";
connectAttr "right_clavicleJnt.pim" "right_clavicleJnt_parentConstraint1.cpim";
connectAttr "right_clavicleJnt.rp" "right_clavicleJnt_parentConstraint1.crp";
connectAttr "right_clavicleJnt.rpt" "right_clavicleJnt_parentConstraint1.crt";
connectAttr "right_clavicleJnt.jo" "right_clavicleJnt_parentConstraint1.cjo";
connectAttr "right_clavicleCtrl.t" "right_clavicleJnt_parentConstraint1.tg[0].tt"
		;
connectAttr "right_clavicleCtrl.rp" "right_clavicleJnt_parentConstraint1.tg[0].trp"
		;
connectAttr "right_clavicleCtrl.rpt" "right_clavicleJnt_parentConstraint1.tg[0].trt"
		;
connectAttr "right_clavicleCtrl.r" "right_clavicleJnt_parentConstraint1.tg[0].tr"
		;
connectAttr "right_clavicleCtrl.ro" "right_clavicleJnt_parentConstraint1.tg[0].tro"
		;
connectAttr "right_clavicleCtrl.s" "right_clavicleJnt_parentConstraint1.tg[0].ts"
		;
connectAttr "right_clavicleCtrl.pm" "right_clavicleJnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "right_clavicleJnt_parentConstraint1.w0" "right_clavicleJnt_parentConstraint1.tg[0].tw"
		;
connectAttr "spine4Jnt.ro" "spine4Jnt_parentConstraint1.cro";
connectAttr "spine4Jnt.pim" "spine4Jnt_parentConstraint1.cpim";
connectAttr "spine4Jnt.rp" "spine4Jnt_parentConstraint1.crp";
connectAttr "spine4Jnt.rpt" "spine4Jnt_parentConstraint1.crt";
connectAttr "spine4Jnt.jo" "spine4Jnt_parentConstraint1.cjo";
connectAttr "spine4Ctrl.t" "spine4Jnt_parentConstraint1.tg[0].tt";
connectAttr "spine4Ctrl.rp" "spine4Jnt_parentConstraint1.tg[0].trp";
connectAttr "spine4Ctrl.rpt" "spine4Jnt_parentConstraint1.tg[0].trt";
connectAttr "spine4Ctrl.r" "spine4Jnt_parentConstraint1.tg[0].tr";
connectAttr "spine4Ctrl.ro" "spine4Jnt_parentConstraint1.tg[0].tro";
connectAttr "spine4Ctrl.s" "spine4Jnt_parentConstraint1.tg[0].ts";
connectAttr "spine4Ctrl.pm" "spine4Jnt_parentConstraint1.tg[0].tpm";
connectAttr "spine4Jnt_parentConstraint1.w0" "spine4Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "spine3Jnt.ro" "spine3Jnt_parentConstraint1.cro";
connectAttr "spine3Jnt.pim" "spine3Jnt_parentConstraint1.cpim";
connectAttr "spine3Jnt.rp" "spine3Jnt_parentConstraint1.crp";
connectAttr "spine3Jnt.rpt" "spine3Jnt_parentConstraint1.crt";
connectAttr "spine3Jnt.jo" "spine3Jnt_parentConstraint1.cjo";
connectAttr "spine3Ctrl.t" "spine3Jnt_parentConstraint1.tg[0].tt";
connectAttr "spine3Ctrl.rp" "spine3Jnt_parentConstraint1.tg[0].trp";
connectAttr "spine3Ctrl.rpt" "spine3Jnt_parentConstraint1.tg[0].trt";
connectAttr "spine3Ctrl.r" "spine3Jnt_parentConstraint1.tg[0].tr";
connectAttr "spine3Ctrl.ro" "spine3Jnt_parentConstraint1.tg[0].tro";
connectAttr "spine3Ctrl.s" "spine3Jnt_parentConstraint1.tg[0].ts";
connectAttr "spine3Ctrl.pm" "spine3Jnt_parentConstraint1.tg[0].tpm";
connectAttr "spine3Jnt_parentConstraint1.w0" "spine3Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "spine2Jnt.ro" "spine2Jnt_parentConstraint1.cro";
connectAttr "spine2Jnt.pim" "spine2Jnt_parentConstraint1.cpim";
connectAttr "spine2Jnt.rp" "spine2Jnt_parentConstraint1.crp";
connectAttr "spine2Jnt.rpt" "spine2Jnt_parentConstraint1.crt";
connectAttr "spine2Jnt.jo" "spine2Jnt_parentConstraint1.cjo";
connectAttr "spine2Ctrl.t" "spine2Jnt_parentConstraint1.tg[0].tt";
connectAttr "spine2Ctrl.rp" "spine2Jnt_parentConstraint1.tg[0].trp";
connectAttr "spine2Ctrl.rpt" "spine2Jnt_parentConstraint1.tg[0].trt";
connectAttr "spine2Ctrl.r" "spine2Jnt_parentConstraint1.tg[0].tr";
connectAttr "spine2Ctrl.ro" "spine2Jnt_parentConstraint1.tg[0].tro";
connectAttr "spine2Ctrl.s" "spine2Jnt_parentConstraint1.tg[0].ts";
connectAttr "spine2Ctrl.pm" "spine2Jnt_parentConstraint1.tg[0].tpm";
connectAttr "spine2Jnt_parentConstraint1.w0" "spine2Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "spine1Jnt.ro" "spine1Jnt_parentConstraint1.cro";
connectAttr "spine1Jnt.pim" "spine1Jnt_parentConstraint1.cpim";
connectAttr "spine1Jnt.rp" "spine1Jnt_parentConstraint1.crp";
connectAttr "spine1Jnt.rpt" "spine1Jnt_parentConstraint1.crt";
connectAttr "spine1Jnt.jo" "spine1Jnt_parentConstraint1.cjo";
connectAttr "spine1Ctrl.t" "spine1Jnt_parentConstraint1.tg[0].tt";
connectAttr "spine1Ctrl.rp" "spine1Jnt_parentConstraint1.tg[0].trp";
connectAttr "spine1Ctrl.rpt" "spine1Jnt_parentConstraint1.tg[0].trt";
connectAttr "spine1Ctrl.r" "spine1Jnt_parentConstraint1.tg[0].tr";
connectAttr "spine1Ctrl.ro" "spine1Jnt_parentConstraint1.tg[0].tro";
connectAttr "spine1Ctrl.s" "spine1Jnt_parentConstraint1.tg[0].ts";
connectAttr "spine1Ctrl.pm" "spine1Jnt_parentConstraint1.tg[0].tpm";
connectAttr "spine1Jnt_parentConstraint1.w0" "spine1Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "rootJnt.s" "tail1Jnt.is";
connectAttr "tail1Jnt_parentConstraint1.ctx" "tail1Jnt.tx";
connectAttr "tail1Jnt_parentConstraint1.cty" "tail1Jnt.ty";
connectAttr "tail1Jnt_parentConstraint1.ctz" "tail1Jnt.tz";
connectAttr "tail1Jnt_parentConstraint1.crx" "tail1Jnt.rx";
connectAttr "tail1Jnt_parentConstraint1.cry" "tail1Jnt.ry";
connectAttr "tail1Jnt_parentConstraint1.crz" "tail1Jnt.rz";
connectAttr "tail1Jnt.s" "tail2Jnt.is";
connectAttr "tail2Jnt_parentConstraint1.ctx" "tail2Jnt.tx";
connectAttr "tail2Jnt_parentConstraint1.cty" "tail2Jnt.ty";
connectAttr "tail2Jnt_parentConstraint1.ctz" "tail2Jnt.tz";
connectAttr "tail2Jnt_parentConstraint1.crx" "tail2Jnt.rx";
connectAttr "tail2Jnt_parentConstraint1.cry" "tail2Jnt.ry";
connectAttr "tail2Jnt_parentConstraint1.crz" "tail2Jnt.rz";
connectAttr "tail2Jnt.s" "tail3Jnt.is";
connectAttr "tail3Jnt_parentConstraint1.ctx" "tail3Jnt.tx";
connectAttr "tail3Jnt_parentConstraint1.cty" "tail3Jnt.ty";
connectAttr "tail3Jnt_parentConstraint1.ctz" "tail3Jnt.tz";
connectAttr "tail3Jnt_parentConstraint1.crx" "tail3Jnt.rx";
connectAttr "tail3Jnt_parentConstraint1.cry" "tail3Jnt.ry";
connectAttr "tail3Jnt_parentConstraint1.crz" "tail3Jnt.rz";
connectAttr "tail3Jnt.s" "tailEndJnt.is";
connectAttr "tail3Jnt.ro" "tail3Jnt_parentConstraint1.cro";
connectAttr "tail3Jnt.pim" "tail3Jnt_parentConstraint1.cpim";
connectAttr "tail3Jnt.rp" "tail3Jnt_parentConstraint1.crp";
connectAttr "tail3Jnt.rpt" "tail3Jnt_parentConstraint1.crt";
connectAttr "tail3Jnt.jo" "tail3Jnt_parentConstraint1.cjo";
connectAttr "tail3Ctrl.t" "tail3Jnt_parentConstraint1.tg[0].tt";
connectAttr "tail3Ctrl.rp" "tail3Jnt_parentConstraint1.tg[0].trp";
connectAttr "tail3Ctrl.rpt" "tail3Jnt_parentConstraint1.tg[0].trt";
connectAttr "tail3Ctrl.r" "tail3Jnt_parentConstraint1.tg[0].tr";
connectAttr "tail3Ctrl.ro" "tail3Jnt_parentConstraint1.tg[0].tro";
connectAttr "tail3Ctrl.s" "tail3Jnt_parentConstraint1.tg[0].ts";
connectAttr "tail3Ctrl.pm" "tail3Jnt_parentConstraint1.tg[0].tpm";
connectAttr "tail3Jnt_parentConstraint1.w0" "tail3Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "tail2Jnt.ro" "tail2Jnt_parentConstraint1.cro";
connectAttr "tail2Jnt.pim" "tail2Jnt_parentConstraint1.cpim";
connectAttr "tail2Jnt.rp" "tail2Jnt_parentConstraint1.crp";
connectAttr "tail2Jnt.rpt" "tail2Jnt_parentConstraint1.crt";
connectAttr "tail2Jnt.jo" "tail2Jnt_parentConstraint1.cjo";
connectAttr "tail2Ctrl.t" "tail2Jnt_parentConstraint1.tg[0].tt";
connectAttr "tail2Ctrl.rp" "tail2Jnt_parentConstraint1.tg[0].trp";
connectAttr "tail2Ctrl.rpt" "tail2Jnt_parentConstraint1.tg[0].trt";
connectAttr "tail2Ctrl.r" "tail2Jnt_parentConstraint1.tg[0].tr";
connectAttr "tail2Ctrl.ro" "tail2Jnt_parentConstraint1.tg[0].tro";
connectAttr "tail2Ctrl.s" "tail2Jnt_parentConstraint1.tg[0].ts";
connectAttr "tail2Ctrl.pm" "tail2Jnt_parentConstraint1.tg[0].tpm";
connectAttr "tail2Jnt_parentConstraint1.w0" "tail2Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "tail1Jnt.ro" "tail1Jnt_parentConstraint1.cro";
connectAttr "tail1Jnt.pim" "tail1Jnt_parentConstraint1.cpim";
connectAttr "tail1Jnt.rp" "tail1Jnt_parentConstraint1.crp";
connectAttr "tail1Jnt.rpt" "tail1Jnt_parentConstraint1.crt";
connectAttr "tail1Jnt.jo" "tail1Jnt_parentConstraint1.cjo";
connectAttr "tail1Ctrl.t" "tail1Jnt_parentConstraint1.tg[0].tt";
connectAttr "tail1Ctrl.rp" "tail1Jnt_parentConstraint1.tg[0].trp";
connectAttr "tail1Ctrl.rpt" "tail1Jnt_parentConstraint1.tg[0].trt";
connectAttr "tail1Ctrl.r" "tail1Jnt_parentConstraint1.tg[0].tr";
connectAttr "tail1Ctrl.ro" "tail1Jnt_parentConstraint1.tg[0].tro";
connectAttr "tail1Ctrl.s" "tail1Jnt_parentConstraint1.tg[0].ts";
connectAttr "tail1Ctrl.pm" "tail1Jnt_parentConstraint1.tg[0].tpm";
connectAttr "tail1Jnt_parentConstraint1.w0" "tail1Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "rootJnt.s" "right_hipJnt.is";
connectAttr "right_hipJnt.s" "right_kneeJnt.is";
connectAttr "right_kneeJnt.s" "right_footJnt.is";
connectAttr "rootJnt.ro" "rootJnt_parentConstraint1.cro";
connectAttr "rootJnt.pim" "rootJnt_parentConstraint1.cpim";
connectAttr "rootJnt.rp" "rootJnt_parentConstraint1.crp";
connectAttr "rootJnt.rpt" "rootJnt_parentConstraint1.crt";
connectAttr "rootJnt.jo" "rootJnt_parentConstraint1.cjo";
connectAttr "rootCtrl.t" "rootJnt_parentConstraint1.tg[0].tt";
connectAttr "rootCtrl.rp" "rootJnt_parentConstraint1.tg[0].trp";
connectAttr "rootCtrl.rpt" "rootJnt_parentConstraint1.tg[0].trt";
connectAttr "rootCtrl.r" "rootJnt_parentConstraint1.tg[0].tr";
connectAttr "rootCtrl.ro" "rootJnt_parentConstraint1.tg[0].tro";
connectAttr "rootCtrl.s" "rootJnt_parentConstraint1.tg[0].ts";
connectAttr "rootCtrl.pm" "rootJnt_parentConstraint1.tg[0].tpm";
connectAttr "rootJnt_parentConstraint1.w0" "rootJnt_parentConstraint1.tg[0].tw";
connectAttr "left_hipJnt.msg" "left_legIK.hsj";
connectAttr "effector1.hp" "left_legIK.hee";
connectAttr "ikRPsolver.msg" "left_legIK.hsv";
connectAttr "left_legIK_parentConstraint1.ctx" "left_legIK.tx";
connectAttr "left_legIK_parentConstraint1.cty" "left_legIK.ty";
connectAttr "left_legIK_parentConstraint1.ctz" "left_legIK.tz";
connectAttr "left_legIK_parentConstraint1.crx" "left_legIK.rx";
connectAttr "left_legIK_parentConstraint1.cry" "left_legIK.ry";
connectAttr "left_legIK_parentConstraint1.crz" "left_legIK.rz";
connectAttr "left_legIK_poleVectorConstraint1.ctx" "left_legIK.pvx";
connectAttr "left_legIK_poleVectorConstraint1.cty" "left_legIK.pvy";
connectAttr "left_legIK_poleVectorConstraint1.ctz" "left_legIK.pvz";
connectAttr "left_legIK.ro" "left_legIK_parentConstraint1.cro";
connectAttr "left_legIK.pim" "left_legIK_parentConstraint1.cpim";
connectAttr "left_legIK.rp" "left_legIK_parentConstraint1.crp";
connectAttr "left_legIK.rpt" "left_legIK_parentConstraint1.crt";
connectAttr "left_footCtrl.t" "left_legIK_parentConstraint1.tg[0].tt";
connectAttr "left_footCtrl.rp" "left_legIK_parentConstraint1.tg[0].trp";
connectAttr "left_footCtrl.rpt" "left_legIK_parentConstraint1.tg[0].trt";
connectAttr "left_footCtrl.r" "left_legIK_parentConstraint1.tg[0].tr";
connectAttr "left_footCtrl.ro" "left_legIK_parentConstraint1.tg[0].tro";
connectAttr "left_footCtrl.s" "left_legIK_parentConstraint1.tg[0].ts";
connectAttr "left_footCtrl.pm" "left_legIK_parentConstraint1.tg[0].tpm";
connectAttr "left_legIK_parentConstraint1.w0" "left_legIK_parentConstraint1.tg[0].tw"
		;
connectAttr "left_legIK.pim" "left_legIK_poleVectorConstraint1.cpim";
connectAttr "left_hipJnt.pm" "left_legIK_poleVectorConstraint1.ps";
connectAttr "left_hipJnt.t" "left_legIK_poleVectorConstraint1.crp";
connectAttr "left_kneeCtrl.t" "left_legIK_poleVectorConstraint1.tg[0].tt";
connectAttr "left_kneeCtrl.rp" "left_legIK_poleVectorConstraint1.tg[0].trp";
connectAttr "left_kneeCtrl.rpt" "left_legIK_poleVectorConstraint1.tg[0].trt";
connectAttr "left_kneeCtrl.pm" "left_legIK_poleVectorConstraint1.tg[0].tpm";
connectAttr "left_legIK_poleVectorConstraint1.w0" "left_legIK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "right_hipJnt.msg" "right_legIK.hsj";
connectAttr "effector2.hp" "right_legIK.hee";
connectAttr "ikRPsolver.msg" "right_legIK.hsv";
connectAttr "right_legIK_parentConstraint1.ctx" "right_legIK.tx";
connectAttr "right_legIK_parentConstraint1.cty" "right_legIK.ty";
connectAttr "right_legIK_parentConstraint1.ctz" "right_legIK.tz";
connectAttr "right_legIK_parentConstraint1.crx" "right_legIK.rx";
connectAttr "right_legIK_parentConstraint1.cry" "right_legIK.ry";
connectAttr "right_legIK_parentConstraint1.crz" "right_legIK.rz";
connectAttr "right_legIK_poleVectorConstraint1.ctx" "right_legIK.pvx";
connectAttr "right_legIK_poleVectorConstraint1.cty" "right_legIK.pvy";
connectAttr "right_legIK_poleVectorConstraint1.ctz" "right_legIK.pvz";
connectAttr "right_legIK.ro" "right_legIK_parentConstraint1.cro";
connectAttr "right_legIK.pim" "right_legIK_parentConstraint1.cpim";
connectAttr "right_legIK.rp" "right_legIK_parentConstraint1.crp";
connectAttr "right_legIK.rpt" "right_legIK_parentConstraint1.crt";
connectAttr "right_footCtrl.t" "right_legIK_parentConstraint1.tg[0].tt";
connectAttr "right_footCtrl.rp" "right_legIK_parentConstraint1.tg[0].trp";
connectAttr "right_footCtrl.rpt" "right_legIK_parentConstraint1.tg[0].trt";
connectAttr "right_footCtrl.r" "right_legIK_parentConstraint1.tg[0].tr";
connectAttr "right_footCtrl.ro" "right_legIK_parentConstraint1.tg[0].tro";
connectAttr "right_footCtrl.s" "right_legIK_parentConstraint1.tg[0].ts";
connectAttr "right_footCtrl.pm" "right_legIK_parentConstraint1.tg[0].tpm";
connectAttr "right_legIK_parentConstraint1.w0" "right_legIK_parentConstraint1.tg[0].tw"
		;
connectAttr "right_legIK.pim" "right_legIK_poleVectorConstraint1.cpim";
connectAttr "right_hipJnt.pm" "right_legIK_poleVectorConstraint1.ps";
connectAttr "right_hipJnt.t" "right_legIK_poleVectorConstraint1.crp";
connectAttr "left_kneeCtrl1.t" "right_legIK_poleVectorConstraint1.tg[0].tt";
connectAttr "left_kneeCtrl1.rp" "right_legIK_poleVectorConstraint1.tg[0].trp";
connectAttr "left_kneeCtrl1.rpt" "right_legIK_poleVectorConstraint1.tg[0].trt";
connectAttr "left_kneeCtrl1.pm" "right_legIK_poleVectorConstraint1.tg[0].tpm";
connectAttr "right_legIK_poleVectorConstraint1.w0" "right_legIK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "tail2CtrlGrp_parentConstraint1.ctx" "tail2CtrlGrp.tx";
connectAttr "tail2CtrlGrp_parentConstraint1.cty" "tail2CtrlGrp.ty";
connectAttr "tail2CtrlGrp_parentConstraint1.ctz" "tail2CtrlGrp.tz";
connectAttr "tail2CtrlGrp_parentConstraint1.crx" "tail2CtrlGrp.rx";
connectAttr "tail2CtrlGrp_parentConstraint1.cry" "tail2CtrlGrp.ry";
connectAttr "tail2CtrlGrp_parentConstraint1.crz" "tail2CtrlGrp.rz";
connectAttr "tail3CtrlGrp_parentConstraint1.ctx" "tail3CtrlGrp.tx";
connectAttr "tail3CtrlGrp_parentConstraint1.cty" "tail3CtrlGrp.ty";
connectAttr "tail3CtrlGrp_parentConstraint1.ctz" "tail3CtrlGrp.tz";
connectAttr "tail3CtrlGrp_parentConstraint1.crx" "tail3CtrlGrp.rx";
connectAttr "tail3CtrlGrp_parentConstraint1.cry" "tail3CtrlGrp.ry";
connectAttr "tail3CtrlGrp_parentConstraint1.crz" "tail3CtrlGrp.rz";
connectAttr "tail3CtrlGrp.ro" "tail3CtrlGrp_parentConstraint1.cro";
connectAttr "tail3CtrlGrp.pim" "tail3CtrlGrp_parentConstraint1.cpim";
connectAttr "tail3CtrlGrp.rp" "tail3CtrlGrp_parentConstraint1.crp";
connectAttr "tail3CtrlGrp.rpt" "tail3CtrlGrp_parentConstraint1.crt";
connectAttr "tail2Ctrl.t" "tail3CtrlGrp_parentConstraint1.tg[0].tt";
connectAttr "tail2Ctrl.rp" "tail3CtrlGrp_parentConstraint1.tg[0].trp";
connectAttr "tail2Ctrl.rpt" "tail3CtrlGrp_parentConstraint1.tg[0].trt";
connectAttr "tail2Ctrl.r" "tail3CtrlGrp_parentConstraint1.tg[0].tr";
connectAttr "tail2Ctrl.ro" "tail3CtrlGrp_parentConstraint1.tg[0].tro";
connectAttr "tail2Ctrl.s" "tail3CtrlGrp_parentConstraint1.tg[0].ts";
connectAttr "tail2Ctrl.pm" "tail3CtrlGrp_parentConstraint1.tg[0].tpm";
connectAttr "tail3CtrlGrp_parentConstraint1.w0" "tail3CtrlGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "tail2CtrlGrp.ro" "tail2CtrlGrp_parentConstraint1.cro";
connectAttr "tail2CtrlGrp.pim" "tail2CtrlGrp_parentConstraint1.cpim";
connectAttr "tail2CtrlGrp.rp" "tail2CtrlGrp_parentConstraint1.crp";
connectAttr "tail2CtrlGrp.rpt" "tail2CtrlGrp_parentConstraint1.crt";
connectAttr "tail1Ctrl.t" "tail2CtrlGrp_parentConstraint1.tg[0].tt";
connectAttr "tail1Ctrl.rp" "tail2CtrlGrp_parentConstraint1.tg[0].trp";
connectAttr "tail1Ctrl.rpt" "tail2CtrlGrp_parentConstraint1.tg[0].trt";
connectAttr "tail1Ctrl.r" "tail2CtrlGrp_parentConstraint1.tg[0].tr";
connectAttr "tail1Ctrl.ro" "tail2CtrlGrp_parentConstraint1.tg[0].tro";
connectAttr "tail1Ctrl.s" "tail2CtrlGrp_parentConstraint1.tg[0].ts";
connectAttr "tail1Ctrl.pm" "tail2CtrlGrp_parentConstraint1.tg[0].tpm";
connectAttr "tail2CtrlGrp_parentConstraint1.w0" "tail2CtrlGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "spine3Ctrl_rotateX.o" "spine3Ctrl.rx";
connectAttr "spine3Ctrl_rotateY.o" "spine3Ctrl.ry";
connectAttr "spine3Ctrl_rotateZ.o" "spine3Ctrl.rz";
connectAttr "polyTweakUV3.out" "lionGeoShape.i";
connectAttr "skinCluster1GroupId.id" "lionGeoShape.iog.og[26].gid";
connectAttr "skinCluster1Set.mwc" "lionGeoShape.iog.og[26].gco";
connectAttr "groupId4.id" "lionGeoShape.iog.og[27].gid";
connectAttr "tweakSet1.mwc" "lionGeoShape.iog.og[27].gco";
connectAttr "tweak1.vl[0].vt[0]" "lionGeoShape.twl";
connectAttr "polyTweakUV3.uvtk[0]" "lionGeoShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "faceAndBodySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mascotSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "faceAndBodySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mascotSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyExtrudeEdge1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak4.out" "polySoftEdge1.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak4.ip";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "faceAndBodyMat.oc" "faceAndBodySG.ss";
connectAttr "faceAndBodySG.msg" "materialInfo2.sg";
connectAttr "faceAndBodyMat.msg" "materialInfo2.m";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster1.bp";
connectAttr "rootJnt.wm" "skinCluster1.ma[0]";
connectAttr "left_hipJnt.wm" "skinCluster1.ma[1]";
connectAttr "left_kneeJnt.wm" "skinCluster1.ma[2]";
connectAttr "left_footJnt.wm" "skinCluster1.ma[3]";
connectAttr "spine1Jnt.wm" "skinCluster1.ma[4]";
connectAttr "spine2Jnt.wm" "skinCluster1.ma[5]";
connectAttr "spine3Jnt.wm" "skinCluster1.ma[6]";
connectAttr "spine4Jnt.wm" "skinCluster1.ma[7]";
connectAttr "headJnt.wm" "skinCluster1.ma[8]";
connectAttr "headEndJnt.wm" "skinCluster1.ma[9]";
connectAttr "left_clavicleJnt.wm" "skinCluster1.ma[10]";
connectAttr "left_shoulderJnt.wm" "skinCluster1.ma[11]";
connectAttr "left_elbowJnt.wm" "skinCluster1.ma[12]";
connectAttr "left_finger1Jnt.wm" "skinCluster1.ma[13]";
connectAttr "left_finger2Jnt.wm" "skinCluster1.ma[14]";
connectAttr "left_fingerEndJnt.wm" "skinCluster1.ma[15]";
connectAttr "left_thumb1Jnt.wm" "skinCluster1.ma[16]";
connectAttr "left_thumb2Jnt.wm" "skinCluster1.ma[17]";
connectAttr "left_thumbEndJnt.wm" "skinCluster1.ma[18]";
connectAttr "right_clavicleJnt.wm" "skinCluster1.ma[19]";
connectAttr "right_shoulderJnt.wm" "skinCluster1.ma[20]";
connectAttr "right_elbowJnt.wm" "skinCluster1.ma[21]";
connectAttr "right_finger1Jnt.wm" "skinCluster1.ma[22]";
connectAttr "right_finger2Jnt.wm" "skinCluster1.ma[23]";
connectAttr "right_fingerEndJnt.wm" "skinCluster1.ma[24]";
connectAttr "right_thumb1Jnt.wm" "skinCluster1.ma[25]";
connectAttr "right_thumb2Jnt.wm" "skinCluster1.ma[26]";
connectAttr "right_thumbEndJnt.wm" "skinCluster1.ma[27]";
connectAttr "tail1Jnt.wm" "skinCluster1.ma[28]";
connectAttr "tail2Jnt.wm" "skinCluster1.ma[29]";
connectAttr "tail3Jnt.wm" "skinCluster1.ma[30]";
connectAttr "tailEndJnt.wm" "skinCluster1.ma[31]";
connectAttr "right_hipJnt.wm" "skinCluster1.ma[32]";
connectAttr "right_kneeJnt.wm" "skinCluster1.ma[33]";
connectAttr "right_footJnt.wm" "skinCluster1.ma[34]";
connectAttr "rootJnt.liw" "skinCluster1.lw[0]";
connectAttr "left_hipJnt.liw" "skinCluster1.lw[1]";
connectAttr "left_kneeJnt.liw" "skinCluster1.lw[2]";
connectAttr "left_footJnt.liw" "skinCluster1.lw[3]";
connectAttr "spine1Jnt.liw" "skinCluster1.lw[4]";
connectAttr "spine2Jnt.liw" "skinCluster1.lw[5]";
connectAttr "spine3Jnt.liw" "skinCluster1.lw[6]";
connectAttr "spine4Jnt.liw" "skinCluster1.lw[7]";
connectAttr "headJnt.liw" "skinCluster1.lw[8]";
connectAttr "headEndJnt.liw" "skinCluster1.lw[9]";
connectAttr "left_clavicleJnt.liw" "skinCluster1.lw[10]";
connectAttr "left_shoulderJnt.liw" "skinCluster1.lw[11]";
connectAttr "left_elbowJnt.liw" "skinCluster1.lw[12]";
connectAttr "left_finger1Jnt.liw" "skinCluster1.lw[13]";
connectAttr "left_finger2Jnt.liw" "skinCluster1.lw[14]";
connectAttr "left_fingerEndJnt.liw" "skinCluster1.lw[15]";
connectAttr "left_thumb1Jnt.liw" "skinCluster1.lw[16]";
connectAttr "left_thumb2Jnt.liw" "skinCluster1.lw[17]";
connectAttr "left_thumbEndJnt.liw" "skinCluster1.lw[18]";
connectAttr "right_clavicleJnt.liw" "skinCluster1.lw[19]";
connectAttr "right_shoulderJnt.liw" "skinCluster1.lw[20]";
connectAttr "right_elbowJnt.liw" "skinCluster1.lw[21]";
connectAttr "right_finger1Jnt.liw" "skinCluster1.lw[22]";
connectAttr "right_finger2Jnt.liw" "skinCluster1.lw[23]";
connectAttr "right_fingerEndJnt.liw" "skinCluster1.lw[24]";
connectAttr "right_thumb1Jnt.liw" "skinCluster1.lw[25]";
connectAttr "right_thumb2Jnt.liw" "skinCluster1.lw[26]";
connectAttr "right_thumbEndJnt.liw" "skinCluster1.lw[27]";
connectAttr "tail1Jnt.liw" "skinCluster1.lw[28]";
connectAttr "tail2Jnt.liw" "skinCluster1.lw[29]";
connectAttr "tail3Jnt.liw" "skinCluster1.lw[30]";
connectAttr "tailEndJnt.liw" "skinCluster1.lw[31]";
connectAttr "right_hipJnt.liw" "skinCluster1.lw[32]";
connectAttr "right_kneeJnt.liw" "skinCluster1.lw[33]";
connectAttr "right_footJnt.liw" "skinCluster1.lw[34]";
connectAttr "rootJnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "left_hipJnt.obcc" "skinCluster1.ifcl[1]";
connectAttr "left_kneeJnt.obcc" "skinCluster1.ifcl[2]";
connectAttr "left_footJnt.obcc" "skinCluster1.ifcl[3]";
connectAttr "spine1Jnt.obcc" "skinCluster1.ifcl[4]";
connectAttr "spine2Jnt.obcc" "skinCluster1.ifcl[5]";
connectAttr "spine3Jnt.obcc" "skinCluster1.ifcl[6]";
connectAttr "spine4Jnt.obcc" "skinCluster1.ifcl[7]";
connectAttr "headJnt.obcc" "skinCluster1.ifcl[8]";
connectAttr "headEndJnt.obcc" "skinCluster1.ifcl[9]";
connectAttr "left_clavicleJnt.obcc" "skinCluster1.ifcl[10]";
connectAttr "left_shoulderJnt.obcc" "skinCluster1.ifcl[11]";
connectAttr "left_elbowJnt.obcc" "skinCluster1.ifcl[12]";
connectAttr "left_finger1Jnt.obcc" "skinCluster1.ifcl[13]";
connectAttr "left_finger2Jnt.obcc" "skinCluster1.ifcl[14]";
connectAttr "left_fingerEndJnt.obcc" "skinCluster1.ifcl[15]";
connectAttr "left_thumb1Jnt.obcc" "skinCluster1.ifcl[16]";
connectAttr "left_thumb2Jnt.obcc" "skinCluster1.ifcl[17]";
connectAttr "left_thumbEndJnt.obcc" "skinCluster1.ifcl[18]";
connectAttr "right_clavicleJnt.obcc" "skinCluster1.ifcl[19]";
connectAttr "right_shoulderJnt.obcc" "skinCluster1.ifcl[20]";
connectAttr "right_elbowJnt.obcc" "skinCluster1.ifcl[21]";
connectAttr "right_finger1Jnt.obcc" "skinCluster1.ifcl[22]";
connectAttr "right_finger2Jnt.obcc" "skinCluster1.ifcl[23]";
connectAttr "right_fingerEndJnt.obcc" "skinCluster1.ifcl[24]";
connectAttr "right_thumb1Jnt.obcc" "skinCluster1.ifcl[25]";
connectAttr "right_thumb2Jnt.obcc" "skinCluster1.ifcl[26]";
connectAttr "right_thumbEndJnt.obcc" "skinCluster1.ifcl[27]";
connectAttr "tail1Jnt.obcc" "skinCluster1.ifcl[28]";
connectAttr "tail2Jnt.obcc" "skinCluster1.ifcl[29]";
connectAttr "tail3Jnt.obcc" "skinCluster1.ifcl[30]";
connectAttr "tailEndJnt.obcc" "skinCluster1.ifcl[31]";
connectAttr "right_hipJnt.obcc" "skinCluster1.ifcl[32]";
connectAttr "right_kneeJnt.obcc" "skinCluster1.ifcl[33]";
connectAttr "right_footJnt.obcc" "skinCluster1.ifcl[34]";
connectAttr "spine3Jnt.msg" "skinCluster1.ptt";
connectAttr "groupParts4.og" "tweak1.ip[0].ig";
connectAttr "groupId4.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "lionGeoShape.iog.og[26]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet1.gn" -na;
connectAttr "lionGeoShape.iog.og[27]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "polyPlanarProj1.out" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "rootJnt.msg" "bindPose2.m[0]";
connectAttr "left_hipJnt.msg" "bindPose2.m[1]";
connectAttr "left_kneeJnt.msg" "bindPose2.m[2]";
connectAttr "left_footJnt.msg" "bindPose2.m[3]";
connectAttr "spine1Jnt.msg" "bindPose2.m[4]";
connectAttr "spine2Jnt.msg" "bindPose2.m[5]";
connectAttr "spine3Jnt.msg" "bindPose2.m[6]";
connectAttr "spine4Jnt.msg" "bindPose2.m[7]";
connectAttr "headJnt.msg" "bindPose2.m[8]";
connectAttr "headEndJnt.msg" "bindPose2.m[9]";
connectAttr "left_clavicleJnt.msg" "bindPose2.m[10]";
connectAttr "left_shoulderJnt.msg" "bindPose2.m[11]";
connectAttr "left_elbowJnt.msg" "bindPose2.m[12]";
connectAttr "left_finger1Jnt.msg" "bindPose2.m[13]";
connectAttr "left_finger2Jnt.msg" "bindPose2.m[14]";
connectAttr "left_fingerEndJnt.msg" "bindPose2.m[15]";
connectAttr "left_thumb1Jnt.msg" "bindPose2.m[16]";
connectAttr "left_thumb2Jnt.msg" "bindPose2.m[17]";
connectAttr "left_thumbEndJnt.msg" "bindPose2.m[18]";
connectAttr "right_clavicleJnt.msg" "bindPose2.m[19]";
connectAttr "right_shoulderJnt.msg" "bindPose2.m[20]";
connectAttr "right_elbowJnt.msg" "bindPose2.m[21]";
connectAttr "right_finger1Jnt.msg" "bindPose2.m[22]";
connectAttr "right_finger2Jnt.msg" "bindPose2.m[23]";
connectAttr "right_fingerEndJnt.msg" "bindPose2.m[24]";
connectAttr "right_thumb1Jnt.msg" "bindPose2.m[25]";
connectAttr "right_thumb2Jnt.msg" "bindPose2.m[26]";
connectAttr "right_thumbEndJnt.msg" "bindPose2.m[27]";
connectAttr "tail1Jnt.msg" "bindPose2.m[28]";
connectAttr "tail2Jnt.msg" "bindPose2.m[29]";
connectAttr "tail3Jnt.msg" "bindPose2.m[30]";
connectAttr "tailEndJnt.msg" "bindPose2.m[31]";
connectAttr "right_hipJnt.msg" "bindPose2.m[32]";
connectAttr "right_kneeJnt.msg" "bindPose2.m[33]";
connectAttr "right_footJnt.msg" "bindPose2.m[34]";
connectAttr "joint1.msg" "bindPose2.m[36]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[0]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[6]" "bindPose2.p[7]";
connectAttr "bindPose2.m[7]" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "bindPose2.m[7]" "bindPose2.p[10]";
connectAttr "bindPose2.m[10]" "bindPose2.p[11]";
connectAttr "bindPose2.m[11]" "bindPose2.p[12]";
connectAttr "bindPose2.m[12]" "bindPose2.p[13]";
connectAttr "bindPose2.m[13]" "bindPose2.p[14]";
connectAttr "bindPose2.m[14]" "bindPose2.p[15]";
connectAttr "bindPose2.m[13]" "bindPose2.p[16]";
connectAttr "bindPose2.m[16]" "bindPose2.p[17]";
connectAttr "bindPose2.m[17]" "bindPose2.p[18]";
connectAttr "bindPose2.m[7]" "bindPose2.p[19]";
connectAttr "bindPose2.m[19]" "bindPose2.p[20]";
connectAttr "bindPose2.m[20]" "bindPose2.p[21]";
connectAttr "bindPose2.m[21]" "bindPose2.p[22]";
connectAttr "bindPose2.m[22]" "bindPose2.p[23]";
connectAttr "bindPose2.m[23]" "bindPose2.p[24]";
connectAttr "bindPose2.m[22]" "bindPose2.p[25]";
connectAttr "bindPose2.m[25]" "bindPose2.p[26]";
connectAttr "bindPose2.m[26]" "bindPose2.p[27]";
connectAttr "bindPose2.m[0]" "bindPose2.p[28]";
connectAttr "bindPose2.m[28]" "bindPose2.p[29]";
connectAttr "bindPose2.m[29]" "bindPose2.p[30]";
connectAttr "bindPose2.m[30]" "bindPose2.p[31]";
connectAttr "bindPose2.m[0]" "bindPose2.p[32]";
connectAttr "bindPose2.m[32]" "bindPose2.p[33]";
connectAttr "bindPose2.m[33]" "bindPose2.p[34]";
connectAttr "bindPose2.m[13]" "bindPose2.p[36]";
connectAttr "bindPose2.m[13]" "bindPose2.p[37]";
connectAttr "rootJnt.bps" "bindPose2.wm[0]";
connectAttr "left_hipJnt.bps" "bindPose2.wm[1]";
connectAttr "left_kneeJnt.bps" "bindPose2.wm[2]";
connectAttr "left_footJnt.bps" "bindPose2.wm[3]";
connectAttr "spine1Jnt.bps" "bindPose2.wm[4]";
connectAttr "spine2Jnt.bps" "bindPose2.wm[5]";
connectAttr "spine3Jnt.bps" "bindPose2.wm[6]";
connectAttr "spine4Jnt.bps" "bindPose2.wm[7]";
connectAttr "headJnt.bps" "bindPose2.wm[8]";
connectAttr "headEndJnt.bps" "bindPose2.wm[9]";
connectAttr "left_clavicleJnt.bps" "bindPose2.wm[10]";
connectAttr "left_shoulderJnt.bps" "bindPose2.wm[11]";
connectAttr "left_elbowJnt.bps" "bindPose2.wm[12]";
connectAttr "left_finger1Jnt.bps" "bindPose2.wm[13]";
connectAttr "left_finger2Jnt.bps" "bindPose2.wm[14]";
connectAttr "left_fingerEndJnt.bps" "bindPose2.wm[15]";
connectAttr "left_thumb1Jnt.bps" "bindPose2.wm[16]";
connectAttr "left_thumb2Jnt.bps" "bindPose2.wm[17]";
connectAttr "left_thumbEndJnt.bps" "bindPose2.wm[18]";
connectAttr "right_clavicleJnt.bps" "bindPose2.wm[19]";
connectAttr "right_shoulderJnt.bps" "bindPose2.wm[20]";
connectAttr "right_elbowJnt.bps" "bindPose2.wm[21]";
connectAttr "right_finger1Jnt.bps" "bindPose2.wm[22]";
connectAttr "right_finger2Jnt.bps" "bindPose2.wm[23]";
connectAttr "right_fingerEndJnt.bps" "bindPose2.wm[24]";
connectAttr "right_thumb1Jnt.bps" "bindPose2.wm[25]";
connectAttr "right_thumb2Jnt.bps" "bindPose2.wm[26]";
connectAttr "right_thumbEndJnt.bps" "bindPose2.wm[27]";
connectAttr "tail1Jnt.bps" "bindPose2.wm[28]";
connectAttr "tail2Jnt.bps" "bindPose2.wm[29]";
connectAttr "tail3Jnt.bps" "bindPose2.wm[30]";
connectAttr "tailEndJnt.bps" "bindPose2.wm[31]";
connectAttr "right_hipJnt.bps" "bindPose2.wm[32]";
connectAttr "right_kneeJnt.bps" "bindPose2.wm[33]";
connectAttr "right_footJnt.bps" "bindPose2.wm[34]";
connectAttr "joint1.bps" "bindPose2.wm[36]";
connectAttr "lionGeoShapeOrig.w" "polyPlanarProj1.ip";
connectAttr "lionGeoShape.wm" "polyPlanarProj1.mp";
connectAttr "skinCluster1.og[0]" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "mascotMat.oc" "mascotSG.ss";
connectAttr "lionGeoShape.iog" "mascotSG.dsm" -na;
connectAttr "mascotSG.msg" "materialInfo3.sg";
connectAttr "mascotMat.msg" "materialInfo3.m";
connectAttr "polyTweakUV1.out" "Unfold3DUnfold1.im";
connectAttr "Unfold3DUnfold1.om" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV3.ip";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "faceAndBodySG.pa" ":renderPartition.st" -na;
connectAttr "mascotSG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "faceAndBodyMat.msg" ":defaultShaderList1.s" -na;
connectAttr "mascotMat.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of mascot(NoTextures).ma
