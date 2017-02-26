//Maya ASCII 2017 scene
//Name: MAYA_playerCharacter.ma
//Last modified: Sat, Feb 25, 2017 03:22:20 PM
//Codeset: 1252
requires maya "2017";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201608291545-1001872";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "0D412021-4A8F-5378-49D1-FE90CD269027";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 236.11350074409776 231.06209967296058 381.91002379769674 ;
	setAttr ".r" -type "double3" -11.738352729602418 29.800000000000118 -4.5815298781422491e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FDF9E28F-4153-FF75-3627-6697A88C2251";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 486.37370081253175;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0151661C-42ED-F3DC-1DFE-76890970C2A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B98B54C6-4C99-1892-9D86-BBB599D02967";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B5A7076D-407B-B857-2002-7AAC43B84682";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3B0F569F-48F0-9D4E-76BE-568D40BFA3FD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "2ED28C93-4D94-7F20-6B78-BEBE1EC6CDEB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F5D12BE4-4149-1FD5-B6DF-58BC4F9AB356";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "pelvis_result_JNT";
	rename -uid "535F5A14-42E3-1619-1DC4-6583132BA9C7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.0305679150129387e-014 100 0 ;
	setAttr ".r" -type "double3" 6.3611093629270304e-015 6.3611093629270335e-015 -1.2722218725854064e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 89.999999999999986 4.265161804913653 89.999999999999986 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-016 0.99723053934136563 -0.074372383348450519 0
		 -3.3306690738754686e-016 0.074372383348450644 0.99723053934136563 0 0.99999999999999978 -3.3306690738754686e-016 4.4408920985006262e-016 0
		 -1.0305679150129387e-014 100 0 1;
	setAttr ".typ" 1;
	setAttr ".fbid" -type "long2" 943186566 2782 ;
createNode joint -n "spine1_result_JNT" -p "pelvis_result_JNT";
	rename -uid "3781D582-46BB-4CA1-2FAD-B7BCC65E1CD3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 16.0673425630949 -8.8817841970012886e-015 2.054881877982407e-015 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-016 0.99723053934136563 -0.074372383348450519 0
		 -3.3306690738754686e-016 0.074372383348450644 0.99723053934136563 0 0.99999999999999978 -3.3306690738754686e-016 4.4408920985006262e-016 0
		 -1.1154638089118818e-015 116.0228446899776 -1.1949665604933783 1;
	setAttr ".typ" 6;
	setAttr ".fbid" -type "long2" 943186566 2783 ;
createNode joint -n "spine2_result_JNT" -p "spine1_result_JNT";
	rename -uid "6773199F-46E5-27B7-E254-508373693D70";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 16.062839312972802 -3.5527136788005356e-015 2.054881877982407e-015 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-016 0.99723053934136563 -0.074372383348450519 0
		 -3.3306690738754686e-016 0.074372383348450644 0.99723053934136563 0 0.99999999999999978 -3.3306690738754686e-016 4.4408920985006262e-016 0
		 8.0727516875171397e-015 132.04119860140716 -2.3895982035423566 1;
	setAttr ".typ" 6;
	setAttr ".fbid" -type "long2" 943186566 2784 ;
createNode joint -n "spine3_result_JNT" -p "spine2_result_JNT";
	rename -uid "B80DCF5D-4366-2ED1-E52D-BD9C09AA43E3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 13.577956958236502 -7.1054273576010366e-015 2.054881877982407e-015 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-016 0.99723053934136563 -0.074372383348450519 0
		 -3.3306690738754686e-016 0.074372383348450644 0.99723053934136563 0 0.99999999999999978 -3.3306690738754686e-016 4.4408920985006262e-016 0
		 1.6157457742460957e-014 145.5815519420232 -3.39942322352909 1;
	setAttr ".typ" 6;
	setAttr ".fbid" -type "long2" 943186566 2785 ;
createNode joint -n "spine4_result_JNT" -p "spine3_result_JNT";
	rename -uid "64E8CE5B-46B2-EE5A-99AA-25AD212DDCBA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 15.903397365035854 -7.1054273576010366e-015 2.054881877982407e-015 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-016 0.99723053934136563 -0.074372383348450519 0
		 -3.3306690738754686e-016 0.074372383348450644 0.99723053934136563 0 0.99999999999999978 -3.3306690738754686e-016 4.4408920985006262e-016 0
		 2.5274866790213704e-014 161.44090547371795 -4.5821967889042812 1;
	setAttr ".typ" 6;
	setAttr ".fbid" -type "long2" 943186566 2786 ;
createNode joint -n "spine5_result_JNT" -p "spine4_result_JNT";
	rename -uid "C9301CB4-42D6-A0B8-393E-DE83607340F0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 16.433865352096365 -7.1054273576010366e-015 2.0548818779824007e-015 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-016 0.99723053934136563 -0.074372383348450519 0
		 -3.3306690738754686e-016 0.074372383348450644 0.99723053934136563 0 0.99999999999999978 -3.3306690738754686e-016 4.4408920985006262e-016 0
		 3.4627850947190901e-014 177.82925788225239 -5.8044225227672177 1;
	setAttr ".typ" 6;
	setAttr ".fbid" -type "long2" 943186566 2787 ;
createNode joint -n "neck_result_JNT" -p "spine5_result_JNT";
	rename -uid "B62C293C-40C3-E476-BBCB-4688220F5E14";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 23.296768844781752 -0.67624627791762215 -5.9028904016871513e-009 ;
	setAttr ".r" -type "double3" 3.1805546814635168e-014 -6.3611093629270351e-015 6.361109362927032e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -85.734838195086397 -89.999999999999986 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99999999999999978 -1.1989423949928729e-016 3.1686039280850823e-016 0
		 8.5021435150002825e-017 1 -7.7715611723760978e-016 0 -3.6517246464672316e-016 7.9103390504542404e-016 1 0
		 -5.9028452027572778e-009 201.01121319482598 -8.2114321865269453 1;
	setAttr ".typ" 7;
	setAttr ".fbid" -type "long2" 943186566 2210 ;
createNode joint -n "head_result_JNT" -p "neck_result_JNT";
	rename -uid "8241F95B-43FC-F1FE-C6CC-17ADB24D3A4F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.5716431638507526e-023 17.56851804328312 6.9511669138735925 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99999999999999978 -1.1989423949928729e-016 3.1686039280850823e-016 0
		 8.5021435150002825e-017 1 -7.7715611723760978e-016 0 -3.6517246464672316e-016 7.9103390504542404e-016 1 0
		 -5.9028462474313988e-009 218.5797312381091 -1.2602652726533661 1;
	setAttr ".typ" 8;
	setAttr ".fbid" -type "long2" 943186566 2211 ;
createNode joint -n "jaw_result_JNT" -p "head_result_JNT";
	rename -uid "6D6510BC-4979-1612-0600-61A682A5B372";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "Control" -at "message";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 7.0310352067007352e-023 -1.7585436765158988 4.6391217762769479 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-014 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -75.357402140112782 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 -6.4918918901768272e-010 -8.7047235864397209e-009 0
		 -8.2578992767271208e-009 0.25278875406328732 -0.96752149630854789 0 2.8285604029845517e-009 0.96752149630854789 0.2527887540632871 0
		 1.0525106268407941e-007 256.73492964821213 4.2913012749445612 1;
	setAttr ".typ" 18;
	setAttr ".fbid" -type "long2" 943186566 2212 ;
createNode joint -n "left_eye_result_JNT" -p "head_result_JNT";
	rename -uid "9E8F9EF3-4158-A83D-26AA-589004DE8793";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.9499502182349309 6.1393696928499821 9.427339652670879 ;
	setAttr ".r" -type "double3" -1.0814754606458137e-007 3.8423497015411846e-007 -1.4458383784714474e-009 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 87.803462641670819 -81.839751550431686 -87.825681241463997 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0053852831946536346 -0.14184000198681879 0.98987494794104836 0
		 0.00077165093024081485 0.98988959679167232 0.14183790296836229 0 -0.99998520153038029 6.491806246879968e-010 0.0054402867796434261 0
		 4.9499503702933438 264.63284301436454 9.079519108250544 1;
	setAttr ".fbid" -type "long2" 943186566 2284 ;
createNode joint -n "right_eye_result_JNT" -p "head_result_JNT";
	rename -uid "5381AA30-4A18-4078-A4D1-A095C6EF7343";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.9499498876578425 6.139369965130129 9.4273393584515102 ;
	setAttr ".r" -type "double3" -1.4545301059821692e-007 4.3876902093438729e-007 1.103884893161293e-009 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 92.198553826299658 -81.840000000000046 -92.176340086582712 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0053901070884856562 -0.14183552264208088 0.98987556352423567 0
		 -0.00077189515668916206 0.98989023862076453 0.14183342222901238 0 -0.99998517535183573 4.1718133172192723e-007 -0.0054450965449862098 0
		 -4.9499497355994331 264.63284329307163 9.0795189002070629 1;
	setAttr ".fbid" -type "long2" 943186566 2281 ;
createNode joint -n "left_clavicle_result_JNT" -p "spine5_result_JNT";
	rename -uid "9E1618C7-4474-5C10-C60B-748ABB76D35D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.99433940658110487 16.61111085903665 5.6843452974303403 ;
	setAttr ".r" -type "double3" -5.2942366532326362e-009 3.8971641868256762e-008 4.9858018964317711e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -82.49859806048957 -78.681871759291028 176.90802869333825 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.9805526125964551 -0.19464066771933 0.025131342981204757 0
		 -0.19457677089215633 -0.98087461506034157 -0.0049869589338516936 0 0.025621361389412425 4.6033252003132111e-011 -0.99967171903608087 0
		 5.6843452974303688 180.05625140961752 10.686733126724398 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".fbid" -type "long2" 943186566 2343 ;
createNode joint -n "left_upperArm_result_JNT" -p "left_clavicle_result_JNT";
	rename -uid "A70D2770-4017-C0A9-47F1-A087051B3093";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 36.04582306110931 -8.6672619706945628 33.821871590812783 ;
	setAttr ".r" -type "double3" -1.987846675914698e-016 5.5908187760100887e-017 6.9885234700126109e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -1.005526526224809 -3.9267924654786159 50.97 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.46699007658480429 -0.88245340425776864 -0.05653545511617819 0
		 -0.88399156193951589 -0.46747456281389405 -0.0051431062299769972 0 -0.021890335562817373 0.052378644845332327 -0.99838734505857674 0
		 43.582181514819304 181.54176559119946 -22.174932165575655 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".fbid" -type "long2" 943186566 2545 ;
createNode joint -n "left_forearm_result_JNT" -p "left_upperArm_result_JNT";
	rename -uid "7B307BB9-4DB9-D85A-2154-CB9AD4523FBE";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 73.85127637392921 0 0 ;
	setAttr ".ro" 1;
	setAttr ".jo" -type "double3" 0 30.540000000000003 20.34 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.12360985129949965 -0.87920777298618247 0.46012421864360986 0
		 -0.9911928315431251 -0.13159361118575691 0.014828762342591596 0 0.047511844409966079 -0.45790480824705126 -0.88773070873153548 0
		 78.069994724566044 116.37145534624432 -26.350147686286398 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".fbid" -type "long2" 943186566 2546 ;
createNode joint -n "left_hand_result_JNT" -p "left_forearm_result_JNT";
	rename -uid "912EF080-4092-71F9-212B-4481118809A6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 57.75755214475361 0.99600779066413536 -0.079547367951464054 ;
	setAttr ".r" -type "double3" -1.6003718746328873e-015 -2.4848083448933725e-016 7.1523655202540147e-015 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.1191042472545654 0.25625973841902272 3.2103135966963241 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.067694674115107142 -0.88314057506985311 0.4641984012916654 0
		 -0.99741998974610113 -0.048762816931651333 0.052683505386192139 0 -0.023891319581306698 -0.46656715738484944 -0.88416304633166209 0
		 84.2183819321654 65.495923412247919 0.31088706923431886 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".fbid" -type "long2" 943186566 2547 ;
createNode joint -n "left_thumb1_result_JNT" -p "left_hand_result_JNT";
	rename -uid "20F20101-4E53-C608-F473-18BE615868BA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.3711206162339948 7.6420414708618409 -0.49062617668342767 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 128.09705950398163 -0.73974068379396873 69.505612300285804 ;
	setAttr ".bps" -type "matrix" -0.91082137028118249 -0.36087182782392779 0.20043940561208365 0
		 0.24503777469930851 -0.86340836773123564 -0.4410016774368255 0 0.33220614143859367 -0.35255852622607242 0.87483802225085117 0
		 76.700596276729669 64.141293754102961 1.7837621352463113 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbid" -type "long2" 943186566 2366 ;
createNode joint -n "left_thumb2_result_JNT" -p "left_thumb1_result_JNT";
	rename -uid "46E2CAE9-419E-F70D-B738-84A3D9460886";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.584000000000017 6.3948846218409017e-014 -1.2434497875801753e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 27.585020358624583 -21.245998523987598 32.185947252638769 ;
	setAttr ".bps" -type "matrix" -0.47642244751575286 -0.84106601882804088 0.25618275405625679 0
		 0.86464705373664341 -0.50102215499645042 -0.036908978138853188 0 0.1593961228124478 0.20392339781266378 0.96592345652070033 0
		 66.149641523392447 59.960954500590525 4.1056522098566521 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbid" -type "long2" 943186566 2367 ;
createNode joint -n "left_thumb3_result_JNT" -p "left_thumb2_result_JNT";
	rename -uid "E5AA6CE0-4582-FC42-6924-44AB32F49529";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 6.6349999999999625 -1.7763568394002505e-014 1.4210854715202004e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.47642244751575286 -0.84106601882804088 0.25618275405625679 0
		 0.86464705373664341 -0.50102215499645042 -0.036908978138853188 0 0.1593961228124478 0.20392339781266378 0.96592345652070033 0
		 62.988578584125435 54.38048146566652 5.8054247830199213 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".fbid" -type "long2" 943186566 2368 ;
createNode joint -n "left_forearmTwist_result_JNT" -p "left_forearm_result_JNT";
	rename -uid "70DC18D0-4BF9-BF76-7128-3384BB136A33";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 20.000000000000043 0 -0.49999999999999201 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.12360985129949965 -0.87920777298618247 0.46012421864360986 0
		 -0.9911928315431251 -0.13159361118575691 0.014828762342591596 0 0.047511844409966079 -0.45790480824705126 -0.88773070873153548 0
		 80.518435828351059 99.016252290644161 -16.703797959048423 1;
createNode joint -n "left_upperArmTwist_result_JNT" -p "left_upperArm_result_JNT";
	rename -uid "985EEB66-41DB-EC7B-D877-F2B3C6E5D14C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 20.500000000000014 2.8421709430404007e-014 0.49999999999999645 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.46699007658480429 -0.88245340425776864 -0.05653545511617819 0
		 -0.88399156193951589 -0.46747456281389405 -0.0051431062299769972 0 -0.021890335562817373 0.052378644845332327 -0.99838734505857674 0
		 53.144532917026368 163.47766012633784 -23.833102667986594 1;
createNode joint -n "right_clavicle_result_JNT" -p "spine5_result_JNT";
	rename -uid "BEFAECC4-4D9D-BE73-67A8-88A5203B1E75";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.99433940658110487 16.611110859036661 -5.6843452974303927 ;
	setAttr ".r" -type "double3" -5.2942366532326362e-009 3.8971641868256762e-008 4.9858018964317711e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -82.498598060489257 -78.681871759290999 -3.0919713066618897 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.98055261259645521 0.19464066771932972 -0.025131342981204466 0
		 -0.19457677089215578 0.98087461506034168 0.0049869589338545316 0 0.025621361389412806 -4.6036127894675724e-011 0.99967171903608076 0
		 -5.6843452974303625 180.05625140961752 10.686733126724402 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".fbid" -type "long2" 943186566 2343 ;
createNode joint -n "right_upperArm_result_JNT" -p "right_clavicle_result_JNT";
	rename -uid "21B69DEC-4FF2-862F-A7DA-AF963C9E614C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -36.04582306110931 8.6672619706945628 -33.821871590812783 ;
	setAttr ".r" -type "double3" -1.987846675914698e-016 5.5908187760100887e-017 6.9885234700126109e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -1.0055265262248092 -3.9267924654786177 50.969999999999985 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.46699007658480496 0.8824534042577683 0.056535455116180564 0
		 -0.88399156193951567 0.46747456281389466 0.005143106229978555 0 -0.021890335562817019 -0.0523786448453352 0.9983873450585764 0
		 -43.582181514819311 181.54176559119958 -22.174932165575637 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".fbid" -type "long2" 943186566 2545 ;
createNode joint -n "right_forearm_result_JNT" -p "right_upperArm_result_JNT";
	rename -uid "BB48AC1B-4B21-8530-405E-D8B6116568E2";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -73.85127637392921 0 0 ;
	setAttr ".ro" 1;
	setAttr ".jo" -type "double3" 9.2321154039575651e-016 30.540000000000003 20.339999999999996 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.12360985129950003 0.87920777298618391 -0.46012421864360731 0
		 -0.9911928315431251 0.13159361118575758 -0.014828762342590934 0 0.047511844409966801 0.45790480824704882 0.8877307087315367 0
		 -78.069994724566101 116.37145534624445 -26.350147686286558 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".fbid" -type "long2" 943186566 2546 ;
createNode joint -n "right_hand_result_JNT" -p "right_forearm_result_JNT";
	rename -uid "0D8955F6-4F57-EAD8-6D1C-CD88B22FBADF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -57.75755214475361 -0.99600779066413536 0.079547367951464054 ;
	setAttr ".r" -type "double3" -1.6003718746328873e-015 -2.4848083448933725e-016 7.1523655202540147e-015 ;
	setAttr ".ro" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.1191042472545689 0.25625973841902272 3.210313596696325 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.067694674115107503 0.88314057506985466 -0.46419840129166284 0
		 -0.99741998974610113 0.048762816931652062 -0.052683505386191758 0 -0.023891319581306053 0.46656715738484705 0.88416304633166343 0
		 -84.218381932165485 65.495923412247961 0.31088706923400977 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".fbid" -type "long2" 943186566 2547 ;
createNode joint -n "right_thumb1_result_JNT" -p "right_hand_result_JNT";
	rename -uid "C5C36B9C-4512-5B69-6C0E-0E9D898105B3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.3711206162339948 -7.6420414708618409 0.49062617668342767 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 128.09705950398163 -0.73974068379396873 69.505612300285804 ;
	setAttr ".bps" -type "matrix" -0.91082137028118237 0.3608718278239289 -0.20043940561208234 0
		 0.24503777469930921 0.86340836773123453 0.44100167743682789 0 0.33220614143859356 0.35255852622607481 -0.87483802225085017 0
		 -76.700596276729755 64.141293754102989 1.7837621352459967 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbid" -type "long2" 943186566 2366 ;
createNode joint -n "right_thumb2_result_JNT" -p "right_thumb1_result_JNT";
	rename -uid "9E77E611-489D-AF8E-CB12-658B537A653D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -11.584000000000017 -6.3948846218409017e-014 1.2434497875801753e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 27.58502035862459 -21.245998523987595 32.185947252638762 ;
	setAttr ".bps" -type "matrix" -0.47642244751575247 0.84106601882804211 -0.25618275405625412 0
		 0.86464705373664374 0.50102215499644986 0.036908978138854354 0 0.15939612281244728 -0.20392339781266122 -0.96592345652070077 0
		 -66.149641523392532 59.960954500590539 4.1056522098563226 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbid" -type "long2" 943186566 2367 ;
createNode joint -n "right_thumb3_result_JNT" -p "right_thumb2_result_JNT";
	rename -uid "26DFD784-44DD-0570-FFB4-72B74DF71C9A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -6.6349999999999625 1.7763568394002505e-014 -1.4210854715202004e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.47642244751575247 0.84106601882804211 -0.25618275405625412 0
		 0.86464705373664374 0.50102215499644986 0.036908978138854354 0 0.15939612281244728 -0.20392339781266122 -0.96592345652070077 0
		 -62.98857858412552 54.38048146566652 5.8054247830195731 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".fbid" -type "long2" 943186566 2368 ;
createNode joint -n "right_forearmTwist_result_JNT" -p "right_forearm_result_JNT";
	rename -uid "21979AA0-4443-F0B5-B987-BF91FFD151FD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -20.000000000000043 0 0.49999999999999201 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.12360985129950003 0.87920777298618391 -0.46012421864360731 0
		 -0.9911928315431251 0.13159361118575758 -0.014828762342590934 0 0.047511844409966801 0.45790480824704882 0.8877307087315367 0
		 -80.51843582835113 99.016252290644246 -16.703797959048632 1;
	setAttr ".sd" 2;
createNode joint -n "right_upperArmTwist_result_JNT" -p "right_upperArm_result_JNT";
	rename -uid "D9CB1927-49F2-3717-BA33-A3ABF5D318DF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -20.500000000000014 -2.8421709430404007e-014 -0.49999999999999645 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.46699007658480496 0.8824534042577683 0.056535455116180564 0
		 -0.88399156193951567 0.46747456281389466 0.005143106229978555 0 -0.021890335562817019 -0.0523786448453352 0.9983873450585764 0
		 -53.144532917026389 163.47766012633798 -23.833102667986623 1;
	setAttr ".sd" 2;
createNode joint -n "left_thigh_result_JNT" -p "pelvis_result_JNT";
	rename -uid "D716A920-493C-6089-7D00-129A75F2B688";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.0584482720485937 6.8835065530517987 21.099365234375007 ;
	setAttr ".r" -type "double3" -2.4848083448933722e-017 2.0033767280702816e-016 1.5902773407317584e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".drp" yes;
	setAttr ".jo" -type "double3" 0.005926369900643884 181.31333540511685 11.256828704302578 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.022920019775720515 -0.99230312112651586 -0.12169300923247781 0
		 -0.00010340749517669248 -0.12172733860661797 0.99256357194017519 0 -0.99973729649361909 -0.022736992728263451 -0.0028926045883212988 0
		 21.099365234374989 101.56745972934509 6.7857236318163761 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".fbid" -type "long2" 943186566 3048 ;
createNode joint -n "left_shin_result_JNT" -p "left_thigh_result_JNT";
	rename -uid "10FCE4A9-4366-BAF1-BDED-3BBAF0B08790";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 43 3.9999999999999858 -3.5527136788005057e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.022920019775720515 -0.99230312112651586 -0.12169300923247781 0
		 -0.00010340749517669248 -0.12172733860661797 0.99256357194017519 0 -0.99973729649361909 -0.022736992728263451 -0.0028926045883212988 0
		 22.084512454750268 58.411516166478435 5.5231785225805172 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".fbid" -type "long2" 943186566 3049 ;
createNode joint -n "left_foot_result_JNT" -p "left_shin_result_JNT";
	rename -uid "1E6378F7-4C8B-CFC2-BA81-B78D687AE482";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 47 -3.9999999999999947 -1.7763568394002498e-014 ;
	setAttr ".r" -type "double3" 7.9513867036587919e-016 -4.4139062980501597e-032 6.3611093629270335e-015 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -177.08514114286461 4.6095906900199726 88.495410108787937 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.080841488330688618 -0.14543515148362082 0.98605946599452865 0
		 0.073557291359190188 -0.98572928147007388 -0.15141700215098419 0 0.99400904354657538 0.084772639250103782 -0.0689900063936323 0
		 23.162167014189855 12.260178827958661 -4.1666471991066345 1;
	setAttr ".sd" 1;
	setAttr ".typ" 13;
	setAttr ".fbid" -type "long2" 943186566 3050 ;
createNode joint -n "left_ball_result_JNT" -p "left_foot_result_JNT";
	rename -uid "D4431244-42CE-6E4B-C148-39A0065A262C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 25.391048431396484 1.2434497875801753e-014 -1.0658141036401503e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.080841488330688618 -0.14543515148362082 0.98605946599452865 0
		 0.073557291359190188 -0.98572928147007388 -0.15141700215098419 0 0.99400904354657538 0.084772639250103782 -0.0689900063936323 0
		 25.214817159660534 8.5674278530105479 20.870436458197393 1;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr ".fbid" -type "long2" 943186566 3051 ;
createNode joint -n "right_thigh_result_JNT" -p "pelvis_result_JNT";
	rename -uid "DA92FAD2-4005-69DC-E9B8-CF841B1DCE4E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.0584482720490485 6.8835065530518307 -21.099365234374996 ;
	setAttr ".r" -type "double3" 2.4848083448933719e-017 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".drp" yes;
	setAttr ".jo" -type "double3" -179.99407363009934 -1.3133354051168606 11.256828704302608 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.022920019775721681 0.99230312112651564 0.12169300923247839 0
		 -0.00010340749517643173 0.12172733860661847 -0.99256357194017564 0 -0.99973729649361931 0.022736992728264471 0.002892604588321036 0
		 -21.099365234375007 101.56745972934556 6.7857236318163547 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".fbid" -type "long2" 943186566 3048 ;
createNode joint -n "right_shin_result_JNT" -p "right_thigh_result_JNT";
	rename -uid "07625823-42EF-4B70-E813-AE8482E8B2B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -43 -3.9999999999999662 -3.5527136788005009e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.022920019775721681 0.99230312112651564 0.12169300923247839 0
		 -0.00010340749517643173 0.12172733860661847 -0.99256357194017564 0 -0.99973729649361931 0.022736992728264471 0.002892604588321036 0
		 -22.084512454750332 58.411516166478911 5.5231785225804533 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".fbid" -type "long2" 943186566 3049 ;
createNode joint -n "right_foot_result_JNT" -p "right_shin_result_JNT";
	rename -uid "FB6C6365-4B2F-068A-4DA3-CF93E9645B7B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -47 4.0000000000000373 7.1054273576010019e-015 ;
	setAttr ".r" -type "double3" 7.9513867036587919e-016 -4.4139062980501597e-032 6.3611093629270335e-015 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -177.08514114286461 4.6095906900199726 88.495410108787937 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.080841488330688938 0.14543515148362121 -0.98605946599452887 0
		 0.073557291359191368 0.98572928147007355 0.1514170021509848 0 0.99400904354657549 -0.084772639250104823 0.068990006393632577 0
		 -23.162167014189965 12.260178827959159 -4.1666471991067713 1;
	setAttr ".sd" 2;
	setAttr ".typ" 13;
	setAttr ".fbid" -type "long2" 943186566 3050 ;
createNode joint -n "right_ball_result_JNT" -p "right_foot_result_JNT";
	rename -uid "D4BD41F6-488A-5D1E-F036-B4B995EA49FB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	addAttr -s false -ci true -sn "driverJoint" -ln "driverJoint" -nn "Driver Joint" 
		-at "message";
	addAttr -s false -ci true -sn "IKJoint" -ln "IKJoint" -nn "IK Joint" -at "message";
	addAttr -s false -ci true -sn "FKControl" -ln "FKControl" -nn "FK Control" -at "message";
	addAttr -s false -ci true -sn "module" -ln "module" -nn "Module" -at "message";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -25.391048431396491 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.080841488330688938 0.14543515148362121 -0.98605946599452887 0
		 0.073557291359191368 0.98572928147007355 0.1514170021509848 0 0.99400904354657549 -0.084772639250104823 0.068990006393632577 0
		 -25.214817159660662 8.567427853011047 20.870436458197275 1;
	setAttr ".sd" 2;
	setAttr ".typ" 5;
	setAttr ".fbid" -type "long2" 943186566 3051 ;
createNode transform -n "player_hair_GEO";
	rename -uid "7AC4D967-436C-D32B-E0A0-5F9C41F8D560";
	setAttr ".t" -type "double3" 0 -13.472423858723005 9.9443779405656443 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 4.8094444274902344 268.79423522949219 -10.350090578198433 ;
	setAttr ".sp" -type "double3" 4.8094444274902344 268.79423522949219 -10.350090578198433 ;
createNode mesh -n "player_hair_GEOShape" -p "player_hair_GEO";
	rename -uid "323AFBD0-4B6A-FFDE-A17B-2684AE45F2E3";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49106401018798351 0.49999999161809683 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "player_hair_GEOShapeOrig" -p "player_hair_GEO";
	rename -uid "4EDE5551-45D2-C8B0-9006-26925C4A74E7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 109 ".uvst[0].uvsp[0:108]" -type "float2" 0.7414 0.61005801
		 0.621723 0.63685501 0.62474501 0.50319201 0.73512298 0.498777 0.618936 0.76147199
		 0.75759703 0.709575 0.66420001 0.84906101 0.78797001 0.78586602 0.724181 0.96089602
		 0.86772501 0.84950697 0.66749001 0.15132201 0.725205 0.046340998 0.86813301 0.150989
		 0.78763199 0.210006 0.63641697 0.24930599 0.744515 0.28547099 0.62491298 0.36566699
		 0.72530502 0.393242 0.82224298 0.576455 0.822815 0.49812701 0.83648199 0.64205402
		 0.86375499 0.69357198 0.91730303 0.71953499 0.860264 0.28508499 0.92902702 0.27922499
		 0.81876802 0.33250999 0.813802 0.414013 0.89143503 0.36006799 0.93018502 0.38680801
		 0.863877 0.55363297 0.86898297 0.49671301 0.86137301 0.43722501 0.89137101 0.62626702
		 0.87941301 0.58461601 0.87486601 0.39917499 0.92682499 0.607225 0.91228902 0.49410301
		 0.19484399 0.52610302 0.204013 0.460136 0.26315099 0.46320099 0.251636 0.55791903
		 0.168687 0.592776 0.229176 0.65153402 0.122009 0.64860702 0.19021299 0.73599201 0.075491004
		 0.68048501 0.129271 0.78793401 0.164197 0.32160899 0.114155 0.30245 0.168988 0.205855
		 0.21639 0.263372 0.19268499 0.35720599 0.243369 0.32047099 0.20534299 0.403786 0.26585001
		 0.37575299 0.159908 0.46702501 0.15286399 0.505382 0.132283 0.54459298 0.096084997
		 0.56847101 0.051943 0.56765699 0.082427002 0.398799 0.119835 0.39287701 0.14442199
		 0.40885699 0.156286 0.43274501 0.118458 0.49581099 0.109621 0.50398999 0.089856997
		 0.489764 0.083892003 0.484193 0.093222998 0.44830301 0.113167 0.45178401 0.507379
		 0.49963701 0.51740098 0.64260501 0.426884 0.63578397 0.41341099 0.49825901 0.51540399
		 0.359166 0.41855401 0.362515 0.53200799 0.76354802 0.44160399 0.75293398 0.55288798
		 0.87330401 0.460109 0.86849201 0.56901002 0.98071098 0.44477001 0.96916598 0.57487202
		 0.019289 0.55150902 0.13513 0.45197999 0.145408 0.45496899 0.036561001 0.53375697
		 0.24244501 0.43944201 0.24684601 0.29457 0.48205799 0.293726 0.59204 0.30201101 0.70508099
		 0.28742999 0.80614901 0.22351 0.87804198 0.253883 0.124084 0.28349 0.208894 0.300933
		 0.290158 0.30490401 0.38068601 0.34355801 0.49255601 0.35014001 0.61935699 0.352846
		 0.37361401 0.36729801 0.735681 0.376894 0.844733 0.33344099 0.93555701 0.35096499
		 0.069209002 0.363774 0.169842 0.36391899 0.263951 0.128627 0.484934 0.121639 0.46389499
		 0.106213 0.471398;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 98 ".vt[0:97]"  -5.8255949 273.031646729 -17.1704216 -8.46596622 271.26147461 -12.4081068
		 -8.30078125 266.68289185 -9.74125576 -5.9927392 262.45733643 -10.11577415 -2.76675606 260.3682251 -13.4058094
		 -0.224095 261.28649902 -17.5537796 0.361166 265.29388428 -21.008190155 -2.031043053 271.20645142 -20.80478096
		 -2.22009301 277.22024536 -14.39350605 -5.63798714 274.27206421 -8.043744087 -5.32870913 268.050018311 -4.9940238
		 -3.099957943 263.14352417 -7.055522919 0.19910599 261.56420898 -11.25938416 3.083848953 262.59677124 -15.72905064
		 4.46888113 266.79812622 -19.49221039 2.46079302 273.39907837 -19.51057053 6.54138613 274.87231445 -7.24759197
		 2.92606211 273.44082642 -2.18861103 0.89956701 268.11724854 -0.95564902 1.93171406 264.61923218 -4.61110783
		 4.54813099 263.37283325 -8.27425575 7.55093718 263.89810181 -11.75849819 10.013147354 267.65136719 -13.90395927
		 9.82392597 272.70077515 -12.048666954 11.075119972 270.45016479 -4.48843718 8.97627163 269.41223145 -1.28598905
		 6.72845602 266.29867554 0.308009 6.3271389 262.81561279 -2.32120395 8.39318657 261.8197937 -5.71269083
		 10.71046925 263.33926392 -8.047793388 12.364048 266.2802124 -8.99474716 12.57770729 269.46838379 -7.68230581
		 12.1825943 268.80996704 -4.41841984 10.93783569 267.89666748 -1.72579896 10.083022118 265.12237549 0.181638
		 9.66001701 261.65689087 -1.37654996 10.8532753 261.340271 -4.62139606 12.18573856 263.11856079 -6.39143085
		 13.1758604 265.36984253 -7.06964922 13.24291515 267.74023438 -6.739007 13.773736 266.29849243 -3.48930192
		 13.38498116 265.73406982 -1.77001905 13.27841568 264.049926758 -0.130439 13.097587585 261.43862915 -1.11217105
		 13.30729198 261.50457764 -3.73348403 13.63278866 262.98986816 -5.068970203 14.055526733 264.53305054 -5.46740103
		 14.19781113 265.83691406 -4.88802624 -7.042004108 268.68023682 -17.80965614 -8.62858391 267.91555786 -15.080068588
		 -8.35999966 265.46484375 -13.38173199 -7.012487888 262.943573 -13.36985397 -5.1226759 261.41577148 -15.10584641
		 -3.2705369 261.77844238 -17.82393646 -2.90901589 264.28326416 -20.35410118 -4.94131422 267.47219849 -20.37614441
		 -7.29064894 266.031219482 -17.66605949 -7.95183897 266.12738037 -16.065040588 -7.81649494 264.70089722 -15.46736717
		 -7.2261219 263.4140625 -15.087962151 -6.30725622 262.83282471 -16.35177231 -5.15660191 262.75021362 -17.77897835
		 -5.44013691 264.073699951 -18.83326721 -6.13046694 265.71188354 -19.15165138 -6.94162512 264.24758911 -17.16775894
		 15.38285255 264.84490967 -2.86726594 15.47537899 264.56185913 -1.84040797 15.6796236 263.603302 -0.81535101
		 15.77734756 261.95562744 -1.38000798 15.64387226 261.91732788 -3.18021011 15.43893814 262.89553833 -4.0065717697
		 15.49642658 263.93319702 -4.13403416 15.5007 264.6055603 -3.71342802 16.96773338 264.2539978 -2.38338995
		 17.42269325 263.97351074 -1.96816194 17.47186279 263.48623657 -1.78793097 17.73402214 262.93380737 -2.5517149
		 17.49410057 262.68188477 -2.97138405 16.9411068 262.80895996 -3.52572703 17.18793678 263.72076416 -3.70844293
		 17.29264641 264.24871826 -3.28804111 2.60989308 276.45639038 -10.44253254 -1.524629 274.97619629 -4.43268824
		 -2.23426604 268.74465942 -3.14094496 -0.27800301 264.59536743 -6.0062990189 2.5139029 263.20669556 -9.76278019
		 5.48687601 263.85296631 -13.67669296 7.67973804 267.71307373 -16.89772034 6.88890409 273.89093018 -15.89209366
		 9.23383713 272.45910645 -5.41241884 6.34605312 271.27005005 -1.37610602 3.92449188 267.10064697 0.027631
		 3.89824104 263.84957886 -3.38093901 6.35584593 262.72357178 -6.90889883 9.18648338 263.67245483 -9.84762478
		 11.43343067 267.10015869 -11.28132343 11.65867996 271.076477051 -9.36480141 18.24747276 263.94604492 -3.2708621;
	setAttr -s 192 ".ed";
	setAttr ".ed[0:165]"  1 9 1 9 8 1 8 0 1 0 1 1 10 9 1 1 2 1 2 10 1 11 10 1
		 2 3 1 3 11 1 12 11 1 3 4 1 4 12 1 13 12 1 4 5 1 5 13 1 14 13 1 5 6 1 6 14 1 15 14 1
		 6 7 1 7 15 1 8 15 1 7 0 1 49 1 1 0 48 1 48 49 1 50 2 1 49 50 1 51 3 1 50 51 1 52 4 1
		 51 52 1 53 5 1 52 53 1 54 6 1 53 54 1 55 7 1 54 55 1 55 48 1 61 53 1 52 60 1 60 61 1
		 57 49 1 48 56 1 56 57 1 55 63 1 63 56 1 59 51 1 50 58 1 58 59 1 62 54 1 61 62 1 57 58 1
		 62 63 1 59 60 1 58 64 1 64 60 1 64 62 1 64 56 1 41 40 1 40 32 1 32 33 1 33 41 1 42 41 1
		 33 34 1 34 42 1 43 42 1 34 35 1 35 43 1 44 43 1 35 36 1 36 44 1 45 44 1 36 37 1 37 45 1
		 46 45 1 37 38 1 38 46 1 47 46 1 38 39 1 39 47 1 39 32 1 40 47 1 65 40 1 41 66 1 66 65 1
		 42 67 1 67 66 1 43 68 1 68 67 1 44 69 1 69 68 1 45 70 1 70 69 1 46 71 1 71 70 1 47 72 1
		 72 71 1 65 72 1 74 66 1 67 75 1 75 74 1 76 68 1 69 77 1 77 76 1 78 70 1 71 79 1 79 78 1
		 81 82 1 82 17 1 17 16 1 16 81 1 81 8 1 9 82 1 88 15 1 81 88 1 16 23 1 23 88 1 10 83 1
		 83 82 1 83 18 1 18 17 1 11 84 1 84 83 1 84 19 1 19 18 1 12 85 1 85 84 1 85 20 1 20 19 1
		 13 86 1 86 85 1 86 21 1 21 20 1 14 87 1 87 86 1 87 22 1 22 21 1 88 87 1 23 22 1 32 24 1
		 24 25 1 25 33 1 25 26 1 26 34 1 26 27 1 27 35 1 27 28 1 28 36 1 28 29 1 29 37 1 29 30 1
		 30 38 1 30 31 1 31 39 1 31 24 1 89 90 1 90 25 1 24 89 1 89 16 1 17 90 1 96 23 1 89 96 1
		 31 96 1 18 91 1;
	setAttr ".ed[166:191]" 91 90 1 91 26 1 19 92 1 92 91 1 92 27 1 20 93 1 93 92 1
		 93 28 1 21 94 1 94 93 1 94 29 1 22 95 1 95 94 1 95 30 1 96 95 1 73 65 1 74 73 1 80 72 1
		 73 80 1 80 79 1 78 77 1 74 97 1 97 80 1 76 75 1 76 97 1 78 97 1;
	setAttr -s 98 ".n[0:97]" -type "float3"  -0.70145893 0.70799893 -0.08180999
		 -0.70145893 0.70799893 -0.08180999 -0.70145893 0.70799893 -0.08180999 -0.70145893
		 0.70799893 -0.08180999 -0.86727768 0.20258594 0.45473984 -0.86727768 0.20258594 0.45473984
		 -0.63737136 -0.47788927 0.60446638 -0.63737136 -0.47788927 0.60446638 -0.058747996
		 -0.91585892 0.39717898 -0.058747996 -0.91585892 0.39717898 0.36173016 -0.93213141
		 0.016802007 0.36172983 -0.93213153 0.016801992 0.50452065 -0.63523757 -0.58474964
		 0.50452065 -0.63523757 -0.58474964 0.26659006 0.10790803 -0.95775026 0.26659006 0.10790803
		 -0.95775026 -0.86748117 0.31946105 -0.3813411 -0.86748117 0.31946105 -0.3813411 -0.99811155
		 -0.027473986 0.054940972 -0.85984713 -0.47582805 0.18506902 -0.51607287 -0.85202682
		 0.087857984 -0.16615495 -0.94473678 -0.28260392 0.010926001 -0.67746806 -0.73547107
		 -0.137247 -0.047003001 -0.98942101 -0.46518624 -0.79435343 -0.39064619 -0.46518624
		 -0.79435343 -0.39064619 -0.88766694 0.0016729999 -0.46048298 -0.88766694 0.0016729999
		 -0.46048298 -0.76821917 0.052542012 -0.63802713 -0.88871223 -0.45655212 -0.04184201
		 -0.88871223 -0.45655212 -0.04184201 -0.35304907 -0.6356281 -0.68653715 -0.80581492
		 -0.50333899 -0.31194898 0.63364094 0.63193893 0.44626495 0.63364094 0.63193893 0.44626495
		 0.63364094 0.63193893 0.44626495 0.63364094 0.63193893 0.44626495 0.35466519 0.53408027
		 0.76744437 0.35466489 0.53407985 0.76744479 -0.067129038 -0.37908322 0.92292446 -0.067129038
		 -0.37908322 0.92292446 -0.016718004 -0.99911124 0.038695008 -0.016718004 -0.99911124
		 0.038695008 0.34030509 -0.73315418 -0.58879316 0.34030509 -0.73315418 -0.58879316
		 0.63727027 -0.42052522 -0.64579028 0.63727027 -0.42052522 -0.64579028 0.89947504
		 0.056084003 -0.43335804 0.89947504 0.056084003 -0.43335804 0.52127206 0.79797512
		 0.30250806 0.52127206 0.79797512 0.30250806 0.35162395 0.67109287 0.6526829 0.17792901
		 -0.33891404 0.92383903 0.18240498 -0.98321897 -0.0029859997 0.32300696 -0.63311493
		 -0.70344293 0.53571671 -0.26317084 -0.80233955 0.74012303 0.259103 -0.62055099 0.32563302
		 0.63843703 0.69739604 0.32563302 0.63843703 0.69739604 0.4255071 -0.90375721 0.046547011
		 0.4255071 -0.90375721 0.046547011 0.25152704 -0.19025603 -0.94896615 0.25152704 -0.19025603
		 -0.94896615 0.12924401 0.93298215 0.33591706 0.12924401 0.93298215 0.33591706 0.12924401
		 0.93298215 0.33591706 0.12924401 0.93298215 0.33591706 0.28076988 0.90807062 -0.31076688
		 0.4455139 0.89139181 -0.08329498 -0.61401707 0.27734903 0.73895907 -0.42052388 0.28758791
		 0.86049569 -0.20508501 -0.53918207 0.81683707 -0.46271181 -0.67292774 0.57711875
		 0.25083089 -0.82842165 0.50080079 -0.12621893 -0.96023744 0.24902385 0.44428387 -0.88595676
		 0.13301297 0.10868402 -0.99166113 -0.069253005 0.61624908 -0.65384305 -0.43900606
		 0.54553074 -0.67942673 -0.4906888 0.63330191 0.55238193 0.54203594 0.63330191 0.55238193
		 0.54203594 0.28393206 0.37513709 0.88241416 -0.26805997 -0.47373798 0.83887792 -0.28740588
		 -0.95660359 0.048035979 0.19913901 -0.84281409 -0.50000805 0.64468962 -0.50725567
		 -0.57189769 0.91241324 0.072962016 -0.4027141 0.4763779 0.69284689 0.54131991 0.4763779
		 0.69284689 0.54131991 0.61568803 0.78357702 0.083278 -0.10822805 0.31280714 0.9436304
		 -0.48854488 -0.6645788 0.56538385 -0.37577501 -0.92583501 0.040282998 -0.018596008
		 -0.97067553 -0.23967314 0.58568811 -0.63509715 -0.50360805 0.28317294 0.92485678
		 0.25387594 0.28504303 0.95653611 -0.061556008 0.33481199 0.92849702 0.160606;
	setAttr -s 96 -ch 384 ".fc[0:95]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -1 5 6
		mu 0 4 4 1 0 5
		f 4 7 -7 8 9
		mu 0 4 6 4 5 7
		f 4 10 -10 11 12
		mu 0 4 8 6 7 9
		f 4 13 -13 14 15
		mu 0 4 10 11 12 13
		f 4 16 -16 17 18
		mu 0 4 14 10 13 15
		f 4 19 -19 20 21
		mu 0 4 16 14 15 17
		f 4 -3 22 -22 23
		mu 0 4 3 2 16 17
		f 4 24 -4 25 26
		mu 0 4 18 0 3 19
		f 4 27 -6 -25 28
		mu 0 4 20 5 0 18
		f 4 29 -9 -28 30
		mu 0 4 21 7 5 20
		f 4 31 -12 -30 32
		mu 0 4 22 9 7 21
		f 4 33 -15 -32 34
		mu 0 4 23 13 12 24
		f 4 35 -18 -34 36
		mu 0 4 25 15 13 23
		f 4 37 -21 -36 38
		mu 0 4 26 17 15 25
		f 4 -26 -24 -38 39
		mu 0 4 19 3 17 26
		f 4 40 -35 41 42
		mu 0 4 27 23 24 28
		f 4 43 -27 44 45
		mu 0 4 29 18 19 30
		f 4 -45 -40 46 47
		mu 0 4 30 19 26 31
		f 4 48 -31 49 50
		mu 0 4 32 21 20 33
		f 4 51 -37 -41 52
		mu 0 4 34 25 23 27
		f 4 -50 -29 -44 53
		mu 0 4 33 20 18 29
		f 4 -47 -39 -52 54
		mu 0 4 31 26 25 34
		f 4 -42 -33 -49 55
		mu 0 4 35 22 21 32
		f 4 -56 -51 56 57
		mu 0 4 35 32 33 36
		f 4 58 -53 -43 -58
		mu 0 4 36 34 27 28
		f 4 -48 -55 -59 59
		mu 0 4 30 31 34 36
		f 4 -54 -46 -60 -57
		mu 0 4 33 29 30 36
		f 4 60 61 62 63
		mu 0 4 37 38 39 40
		f 4 64 -64 65 66
		mu 0 4 41 37 40 42
		f 4 67 -67 68 69
		mu 0 4 43 41 42 44
		f 4 70 -70 71 72
		mu 0 4 45 43 44 46
		f 4 73 -73 74 75
		mu 0 4 47 48 49 50
		f 4 76 -76 77 78
		mu 0 4 51 47 50 52
		f 4 79 -79 80 81
		mu 0 4 53 51 52 54
		f 4 82 -62 83 -82
		mu 0 4 54 39 38 53
		f 4 84 -61 85 86
		mu 0 4 55 38 37 56
		f 4 -86 -65 87 88
		mu 0 4 56 37 41 57
		f 4 -88 -68 89 90
		mu 0 4 57 41 43 58
		f 4 -90 -71 91 92
		mu 0 4 58 43 45 59
		f 4 -92 -74 93 94
		mu 0 4 60 48 47 61
		f 4 -94 -77 95 96
		mu 0 4 61 47 51 62
		f 4 -96 -80 97 98
		mu 0 4 62 51 53 63
		f 4 -98 -84 -85 99
		mu 0 4 63 53 38 55
		f 4 100 -89 101 102
		mu 0 4 64 56 57 65
		f 4 103 -93 104 105
		mu 0 4 66 58 59 67
		f 4 106 -97 107 108
		mu 0 4 68 61 62 69
		f 4 109 110 111 112
		mu 0 4 70 71 72 73
		f 4 113 -2 114 -110
		mu 0 4 70 2 1 71
		f 4 115 -23 -114 116
		mu 0 4 74 16 2 70
		f 4 117 118 -117 -113
		mu 0 4 73 75 74 70
		f 4 -115 -5 119 120
		mu 0 4 71 1 4 76
		f 4 -121 121 122 -111
		mu 0 4 71 76 77 72
		f 4 -120 -8 123 124
		mu 0 4 76 4 6 78
		f 4 -125 125 126 -122
		mu 0 4 76 78 79 77
		f 4 -124 -11 127 128
		mu 0 4 78 6 8 80
		f 4 -129 129 130 -126
		mu 0 4 78 80 81 79
		f 4 -128 -14 131 132
		mu 0 4 82 11 10 83
		f 4 -133 133 134 -130
		mu 0 4 82 83 84 85
		f 4 -132 -17 135 136
		mu 0 4 83 10 14 86
		f 4 -137 137 138 -134
		mu 0 4 83 86 87 84
		f 4 -136 -20 -116 139
		mu 0 4 86 14 16 74
		f 4 -140 -119 140 -138
		mu 0 4 86 74 75 87
		f 4 -63 141 142 143
		mu 0 4 40 39 88 89
		f 4 -66 -144 144 145
		mu 0 4 42 40 89 90
		f 4 -69 -146 146 147
		mu 0 4 44 42 90 91
		f 4 -72 -148 148 149
		mu 0 4 46 44 91 92
		f 4 -75 -150 150 151
		mu 0 4 50 49 93 94
		f 4 -78 -152 152 153
		mu 0 4 52 50 94 95
		f 4 -81 -154 154 155
		mu 0 4 54 52 95 96
		f 4 156 -142 -83 -156
		mu 0 4 96 88 39 54
		f 4 157 158 -143 159
		mu 0 4 97 98 89 88
		f 4 160 -112 161 -158
		mu 0 4 97 73 72 98
		f 4 162 -118 -161 163
		mu 0 4 99 75 73 97
		f 4 -157 164 -164 -160
		mu 0 4 88 96 99 97
		f 4 -162 -123 165 166
		mu 0 4 98 72 77 100
		f 4 -167 167 -145 -159
		mu 0 4 98 100 90 89
		f 4 -166 -127 168 169
		mu 0 4 100 77 79 101
		f 4 -170 170 -147 -168
		mu 0 4 100 101 91 90
		f 4 -169 -131 171 172
		mu 0 4 101 79 81 102
		f 4 -173 173 -149 -171
		mu 0 4 101 102 92 91
		f 4 -172 -135 174 175
		mu 0 4 103 85 84 104
		f 4 -176 176 -151 -174
		mu 0 4 103 104 94 93
		f 4 -175 -139 177 178
		mu 0 4 104 84 87 105
		f 4 -179 179 -153 -177
		mu 0 4 104 105 95 94
		f 4 -178 -141 -163 180
		mu 0 4 105 87 75 99
		f 4 -181 -165 -155 -180
		mu 0 4 105 99 96 95
		f 4 181 -87 -101 182
		mu 0 4 106 55 56 64
		f 4 183 -100 -182 184
		mu 0 4 107 63 55 106
		f 4 -108 -99 -184 185
		mu 0 4 69 62 63 107
		f 4 -105 -95 -107 186
		mu 0 4 67 60 61 68
		f 4 -185 -183 187 188
		mu 0 4 107 106 64 108
		f 4 -102 -91 -104 189
		mu 0 4 65 57 58 66
		f 4 -188 -103 -190 190
		mu 0 4 108 64 65 66
		f 4 -106 -187 191 -191
		mu 0 4 66 67 68 108
		f 4 -109 -186 -189 -192
		mu 0 4 68 69 107 108;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode transform -n "player_body_GEO";
	rename -uid "BDFBAB10-474B-858A-8E88-489BB5CBCF31";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "player_body_GEOShape" -p "player_body_GEO";
	rename -uid "C45C38BE-457B-2CFF-E486-8FAEAE28E1A5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4999999925494194 0.5068589961156249 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "player_body_GEOShapeOrig" -p "player_body_GEO";
	rename -uid "8555DDA1-4BFB-36DB-FA52-30B9DA53F59E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1788 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.048772998 0.273698 0.052317001
		 0.23708799 0.069926001 0.24012201 0.067362003 0.277071 0.046533 0.312778 0.066849999
		 0.31573701 0.055392001 0.35038599 0.071617 0.350674 0.063794002 0.38473099 0.077614002
		 0.38773501 0.112424 0.140893 0.141315 0.119572 0.153603 0.12984601 0.124124 0.152109
		 0.085735001 0.16941001 0.098665997 0.177174 0.063511997 0.20130201 0.080716997 0.20746499
		 0.107567 0.25306201 0.105974 0.28731999 0.107017 0.32127899 0.105555 0.35312501 0.102145
		 0.38426799 0.177619 0.14792299 0.15018 0.166453 0.128388 0.190375 0.113891 0.220239
		 0.14837199 0.26438901 0.147 0.28993601 0.14615799 0.318703 0.141904 0.34930199 0.13468599
		 0.377635 0.201952 0.177628 0.177113 0.18946999 0.15772299 0.211244 0.150241 0.239225
		 0.187721 0.280031 0.18523601 0.30234301 0.181228 0.323017 0.17324901 0.345397 0.164792
		 0.36680701 0.22864901 0.19874801 0.211161 0.21015 0.193689 0.229222 0.189439 0.25610599
		 0.40369201 0.30326 0.37528101 0.30210999 0.37175801 0.28975299 0.40030801 0.29288
		 0.432385 0.295445 0.42932001 0.284695 0.45495 0.27775699 0.44909099 0.264929 0.46914399
		 0.251717 0.46122101 0.24110401 0.274501 0.284163 0.24389 0.28011701 0.24866401 0.270668
		 0.27700901 0.271732 0.312702 0.28998899 0.31358099 0.28108299 0.349087 0.297593 0.34615999
		 0.28479201 0.36855701 0.277163 0.395531 0.28178599 0.42475501 0.27341199 0.44486001
		 0.253892 0.45675099 0.23060299 0.253943 0.262835 0.281542 0.261641 0.313254 0.26697201
		 0.34354201 0.27081001 0.36197001 0.25674799 0.38634199 0.25797001 0.41521299 0.25246799
		 0.43436 0.23127601 0.44580099 0.20939399 0.263513 0.242668 0.28822899 0.240337 0.31478
		 0.24269301 0.33954099 0.25073099 0.38147101 0.226292 0.39825901 0.21707401 0.41270599
		 0.20028199 0.42199799 0.18256301 0.27801999 0.20688801 0.29875901 0.20792501 0.319648
		 0.210997 0.33883601 0.21627 0.356769 0.220296 0.380209 0.22036301 0.35832301 0.21326999
		 0.39583299 0.213026 0.40649101 0.19366799 0.412532 0.17858 0.27813101 0.196078 0.300989
		 0.200396 0.32179701 0.202316 0.34018299 0.20597 0.47101599 0.680453 0.44218501 0.69950199
		 0.43271801 0.67302299 0.46588501 0.65602398 0.26418701 0.79766601 0.25491801 0.76794899
		 0.31096601 0.75167 0.317433 0.77851403 0.325865 0.800129 0.27141699 0.823695 0.43140501
		 0.44157299 0.465859 0.42748299 0.464843 0.43778801 0.434246 0.44755799 0.428074 0.47999999
		 0.46104601 0.47633001 0.39287001 0.451184 0.39512801 0.45773 0.35280901 0.458933
		 0.352054 0.47104001 0.297775 0.46900201 0.295708 0.481224 0.25104299 0.47258699 0.247917
		 0.48094499 0.20529699 0.46270201 0.202778 0.47243401 0.17397 0.45436099 0.17856 0.444763
		 0.48258299 0.26382101 0.467619 0.293356 0.44225401 0.31507599 0.41065201 0.32547
		 0.37645301 0.32585201 0.341616 0.320939 0.30789801 0.31573799 0.267602 0.30727401
		 0.236413 0.29310599 0.232715 0.29804099 0.26237199 0.31677899 0.30596101 0.33024999
		 0.34066901 0.341474 0.37914401 0.34720999 0.41638601 0.34334499 0.44780001 0.326718
		 0.47352701 0.302441 0.48834801 0.267701 0.433256 0.43632701 0.463772 0.42173401 0.393289
		 0.44276801 0.26790699 0.33223701 0.231611 0.30343699 0.30677 0.34516701 0.3416 0.36349699
		 0.353095 0.45472199 0.29970399 0.46365401 0.420522 0.35778201 0.38268599 0.37193999
		 0.45141399 0.33960101 0.45531699 0.37480199 0.45771101 0.394023 0.43080899 0.40093601
		 0.43072701 0.38516101 0.49401999 0.26908299 0.48088399 0.313815 0.47765699 0.36459699
		 0.47832 0.382359 0.47825199 0.34236801 0.45338401 0.35685101 0.40324101 0.40800399
		 0.40160301 0.39506701 0.369555 0.41612199 0.372361 0.39742199 0.42730001 0.37062201
		 0.403786 0.380101 0.206034 0.46122599 0.18066201 0.439273 0.31233901 0.41392401 0.28654799
		 0.40463299 0.27993 0.37167901 0.30893001 0.37925401 0.249897 0.46841499 0.339412
		 0.39115101 0.34051999 0.41968301 0.22891299 0.68583202 0.235469 0.66266 0.27317801
		 0.66131002 0.28467101 0.67678303 0.47407201 0.70012301 0.452003 0.71850801 0.370309
		 0.75113398 0.38485599 0.76802897 0.360811 0.72486103 0.39919099 0.695324 0.40983099
		 0.72238803 0.42131099 0.743783 0.41938499 0.63649601 0.45871499 0.62628502 0.388733
		 0.65982401 0.35142899 0.69102699 0.30367401 0.71925598 0.246721 0.73978299 0.236343
		 0.710195 0.292945 0.69458503 0.33784601 0.66160601 0.37041301 0.61932999 0.30347699
		 0.63972998 0.32120699 0.64451897 0.38845199 0.48381099 0.34433001 0.49075699 0.29562801
		 0.495415 0.24458 0.496957 0.19752499 0.49648201 0.16335 0.488585 0.14832801 0.52555001
		 0.18736 0.52743101 0.238177 0.51862001 0.295645 0.51523298 0.338076 0.50943702 0.212301
		 0.80590898 0.247859 0.82843298 0.20839199 0.843548 0.17318501 0.82537401 0.147147
		 0.80520898 0.172482 0.79432398 0.204466 0.772879 0.1636 0.77045798 0.12880599 0.77648002
		 0.19258 0.73926699 0.15316901 0.735524 0.11462 0.736323 0.18430699 0.69965202 0.10744
		 0.68590498 0.146321 0.69074398 0.18336099 0.65334702 0.21067099 0.63980401 0.11178
		 0.62974602 0.14952201 0.63808298 0.206928 0.603782 0.196614 0.58951998 0.41192001
		 0.51044297 0.454629 0.50972199 0.37668201 0.50710899 0.129696 0.57254499 0.17326801
		 0.57254398 0.239935 0.56654799 0.23657501 0.57385403 0.226267 0.543984 0.45621601
		 0.72816199 0.47427499 0.71209902 0.42388099 0.75385302 0.38636601 0.77910602;
	setAttr ".uvst[0].uvsp[250:499]" 0.32894799 0.80716401 0.27464101 0.83245802
		 0.25077301 0.83975399 0.213654 0.85027498 0.28718701 0.561804 0.28867099 0.56817597
		 0.31138399 0.54158199 0.475398 0.71627897 0.457288 0.73398799 0.42454201 0.75823802
		 0.38553399 0.78802598 0.32920599 0.81682199 0.280801 0.83933598 0.25312701 0.84622699
		 0.207634 0.86403799 0.48915201 0.84928 0.49658099 0.85028499 0.49673301 0.85206401
		 0.492854 0.850766 0.49626899 0.84750497 0.49239799 0.84814 0.48774499 0.84564197
		 0.49610999 0.84499103 0.48613301 0.90776801 0.48355001 0.90487498 0.48787799 0.89720798
		 0.490493 0.89637899 0.494057 0.89588302 0.494591 0.904612 0.491658 0.90284699 0.48875901
		 0.91043198 0.491359 0.91533798 0.47591099 0.91280699 0.474924 0.90898401 0.47902799
		 0.92313498 0.46684 0.91105199 0.467895 0.90750098 0.45794401 0.90383399 0.46141899
		 0.902538 0.460466 0.89068502 0.46341601 0.89338797 0.470146 0.88513499 0.47092101
		 0.88911301 0.485075 0.88921797 0.48352 0.89216697 0.489068 0.890791 0.40101501 0.895046
		 0.40246201 0.91012299 0.39838299 0.90944099 0.39743099 0.89461899 0.40616101 0.92160797
		 0.408456 0.92070198 0.399975 0.87848699 0.40754899 0.88374901 0.40449899 0.90956599
		 0.403317 0.89589798 0.40979499 0.91941899 0.411073 0.88924599 0.40860301 0.90718597
		 0.413369 0.91553998 0.42348599 0.92260498 0.42229199 0.91649801 0.43317199 0.91464102
		 0.42875499 0.910344 0.421377 0.90912801 0.427692 0.90541899 0.43047801 0.89773601
		 0.41439599 0.90464801 0.415113 0.89474499 0.417665 0.907332 0.42128199 0.89713502
		 0.42377299 0.88771701 0.425439 0.884166 0.40651599 0.86138302 0.417216 0.86767799
		 0.432365 0.89706397 0.429663 0.87311 0.45114401 0.907781 0.46434501 0.91995198 0.482061
		 0.93349499 0.44180301 0.891675 0.45335501 0.88533401 0.442606 0.91171002 0.447532
		 0.87108898 0.43895099 0.863828 0.42070299 0.84771401 0.42734101 0.85647899 0.44261199
		 0.83343399 0.44522601 0.84401602 0.17289101 0.956617 0.17299099 0.96792698 0.169149
		 0.97099298 0.16812199 0.96137798 0.16875599 0.94527799 0.164557 0.952393 0.160592
		 0.93656802 0.157454 0.94510299 0.14997099 0.93266201 0.1479 0.94177997 0.138384 0.93274999
		 0.13844401 0.94154602 0.127579 0.937343 0.12886 0.94468302 0.119434 0.94614297 0.121004
		 0.95169502 0.113955 0.95912898 0.111639 0.95472401 0.16263001 0.97513598 0.161534
		 0.96737897 0.158673 0.960747 0.130208 0.95425701 0.123326 0.95927799 0.117741 0.96612602
		 0.36267799 0.206634 0.38034201 0.216216 0.394557 0.21193799 0.40466601 0.191063 0.40928
		 0.178745 0.73610902 0.116186 0.70911402 0.130889 0.70433903 0.106474 0.72372401 0.092116997
		 0.704418 0.070909999 0.69316399 0.095560998 0.67277402 0.088390999 0.67515802 0.065989003
		 0.72674698 0.144109 0.70527297 0.14417601 0.69112301 0.039712999 0.66829097 0.040840998
		 0.75006598 0.146533 0.76409298 0.122229 0.177554 0.090834998 0.179058 0.091344997
		 0.172296 0.09849 0.171303 0.097227 0.66791397 0.036970001 0.69066203 0.036148999
		 0.164009 0.101186 0.16359 0.099349 0.57585102 0.065334998 0.58621299 0.083783001
		 0.56309903 0.100314 0.54506999 0.084876001 0.543993 0.081014 0.57478797 0.063478999
		 0.59181201 0.054986 0.59085399 0.052878998 0.141783 0.02617 0.14284401 0.024722001
		 0.155679 0.040826 0.15446299 0.041979998 0.60575402 0.045605998 0.60677397 0.047398001
		 0.64999598 0.062447 0.64262003 0.043568 0.64270598 0.039747 0.62259102 0.044741001
		 0.62142801 0.041577 0.12664799 0.055349 0.125295 0.055966999 0.117214 0.043120001
		 0.118262 0.042544998 0.615852 0.065403998 0.60014999 0.072021 0.60407799 0.096729003
		 0.58291602 0.111969 0.279006 0.19288801 0.302562 0.19402 0.32211 0.199018 0.60871398
		 0.083756998 0.62371099 0.080412999 0.62897098 0.089392997 0.65500098 0.082581997
		 0.34525701 0.200064 0.63669503 0.075306997 0.63168401 0.061918002 0.75268197 0.149388
		 0.76551598 0.123802 0.74188298 0.076792002 0.728486 0.057472002 0.754969 0.094972998
		 0.71948701 0.034449998 0.77297801 0.106079 0.71966201 0.030832 0.33749101 0.52528203
		 0.367948 0.52497298 0.33639899 0.59255701 0.31428799 0.611063 0.38863099 0.54279399
		 0.39691699 0.59124202 0.45055801 0.58672202 0.35376599 0.577205 0.44853801 0.545349
		 0.137898 0.083806001 0.136848 0.084729001 0.129656 0.068602003 0.130606 0.067919001
		 0.13188501 0.053661998 0.122705 0.039586999 0.115637 0.030214 0.116506 0.030236 0.12166
		 0.021923 0.122527 0.022748001 0.124687 0.026582999 0.13199601 0.036853001 0.120922
		 0.031950999 0.132072 0.019676 0.132034 0.020677 0.131354 0.025385 0.13899501 0.029863
		 0.14968 0.045308001 0.168092 0.052296001 0.167261 0.053312998 0.181251 0.080063 0.17999101
		 0.079924002 0.77493203 0.10686 0.17508499 0.061907001 0.173903 0.062665999 0.77120602
		 0.038614001 0.78112501 0.047316 0.778705 0.049256999 0.76919198 0.042056002 0.78586298
		 0.061981 0.78828299 0.060814999 0.78508699 0.078230999 0.78699601 0.078610003 0.75193697
		 0.034040999 0.75242198 0.031098001 0.151722 0.098453999 0.151475 0.096730001 0.179534
		 0.072153002 0.17849299 0.072825 0.76031202 0.062709004 0.74915802 0.048303001 0.78143001
		 0.089578003 0.78232002 0.090530001 0.77003998 0.077068999 0.73658401 0.032272 0.73751497
		 0.029763 0.14378899 0.093339004 0.14405 0.091934003 0.17488199 0.079847001 0.174519
		 0.087606996 0.168874 0.093910001 0.162522 0.095103003 0.152698 0.092895001 0.173199
		 0.074037999 0.163862 0.085823998 0.146714 0.088094003;
	setAttr ".uvst[0].uvsp[500:749]" 0.16879199 0.064673997 0.159521 0.079553001
		 0.140374 0.080278002 0.163427 0.056428 0.15465701 0.071698003 0.140232 0.049293999
		 0.147791 0.062403001 0.135581 0.06594 0.21461301 0.96757299 0.203583 0.97974998 0.19644
		 0.96992499 0.2106 0.958489 0.231947 0.96060199 0.227605 0.95059597 0.249736 0.95529097
		 0.24643201 0.94508702 0.26794699 0.95723498 0.26870301 0.94151503 0.049222998 0.94698501
		 0.034591999 0.94227201 0.037021998 0.92759502 0.051465999 0.93509001 0.063537002
		 0.95414197 0.066734001 0.94399798 0.077156 0.96437401 0.082263 0.95563602 0.096539997
		 0.96619201 0.090531997 0.975842 0.22158 0.97661 0.212548 0.98960102 0.23599 0.96836197
		 0.25237 0.96326399 0.26512 0.96998298 0.047736 0.95767301 0.03531 0.95462501 0.059672002
		 0.963907 0.070589997 0.97293901 0.081257001 0.98451197 0.204302 0.94743502 0.221817
		 0.93758601 0.216674 0.310559 0.210402 0.327126 0.241879 0.93120098 0.22070099 0.29047599
		 0.26754099 0.92591298 0.22236501 0.26735401 0.039547 0.91324198 0.052841999 0.923406
		 0.22963201 0.248009 0.15264501 0.92399102 0.163754 0.931472 0.198633 0.349347 0.141077
		 0.89393401 0.170819 0.89624399 0.164391 0.91152698 0.14744399 0.91094202 0.171552
		 0.94123298 0.17011 0.92724699 0.162651 0.92053401 0.17608701 0.95405799 0.17542 0.96704298
		 0.110512 0.95172 0.117938 0.942231 0.126295 0.93261999 0.137473 0.92650002 0.107116
		 0.92946702 0.11227 0.92084497 0.12973399 0.91492498 0.19117799 0.37007499 0.121754
		 0.90316498 0.248006 0.216023 0.23274399 0.22764701 0.119645 0.883555 0.110549 0.895935
		 0.105996 0.91221201 0.102565 0.92101401 0.091266997 0.90286702 0.096285 0.88320702
		 0.187067 0.91291797 0.199953 0.89048702 0.20579401 0.90355301 0.220173 0.884884 0.224815
		 0.89947701 0.24259999 0.87749797 0.25178301 0.89303797 0.045428999 0.87822598 0.053188
		 0.86250103 0.076702997 0.87256199 0.066191003 0.888533 0.236019 0.91536099 0.214132
		 0.92216098 0.077577002 0.916695 0.057666998 0.90536702 0.26533201 0.911358 0.041476
		 0.89934897 0.09584 0.921242 0.109353 0.946302 0.102048 0.93401599 0.087687999 0.948636
		 0.10305 0.96206701 0.19235601 0.96244401 0.194554 0.93097198 0.105922 0.94973302
		 0.17980801 0.96678102 0.18095499 0.95387399 0.097014003 0.93864501 0.177231 0.93528801
		 0.18895 0.94681799 0.183816 0.94945502 0.182805 0.96559298 0.105521 0.952869 0.093477003
		 0.94316399 0.182886 0.933267 0.176374 0.92126101 0.088578001 0.927863 0.072572 0.932217
		 0.085308 0.93450099 0.484182 0.81013298 0.491941 0.80886102 0.49197999 0.81917697
		 0.48323399 0.81985003 0.471899 0.81319302 0.472552 0.82100701 0.460493 0.82597899
		 0.462899 0.81671202 0.436997 0.82895702 0.413847 0.84350699 0.39709401 0.86116099
		 0.38859999 0.88033801 0.38908499 0.89659202 0.39213899 0.91276503 0.482907 0.80218798
		 0.49136001 0.804322 0.47035101 0.803967 0.45554599 0.80942702 0.46671301 0.79704797
		 0.431831 0.82539898 0.46090099 0.754839 0.47931799 0.74233001 0.485652 0.753124 0.46157601
		 0.76635897 0.47554001 0.773103 0.49046299 0.76476002 0.48419601 0.77785498 0.46568301
		 0.772995 0.454065 0.79931903 0.42771101 0.774872 0.438815 0.78376001 0.44291899 0.79790503
		 0.39325699 0.79999101 0.400962 0.81308299 0.35419101 0.82441097 0.37258801 0.83955699
		 0.33069101 0.85335201 0.35053 0.86967599 0.32338101 0.90692198 0.29595199 0.89533299
		 0.31763601 0.86453301 0.33778101 0.883654 0.48253399 0.84805799 0.48590499 0.85053301
		 0.460251 0.83587199 0.45824599 0.85992199 0.45112899 0.85259902 0.48267201 0.82902199
		 0.49189699 0.82869899 0.48615399 0.84117198 0.49395099 0.83943999 0.47651401 0.84509897
		 0.47292 0.83112198 0.47485301 0.83889502 0.48394299 0.83618498 0.49290201 0.83460599
		 0.46313399 0.84450001 0.46782801 0.85173798 0.48057899 0.85427201 0.496667 0.854195
		 0.49109501 0.86104703 0.475021 0.85939097 0.46700799 0.866126 0.48518899 0.86492699
		 0.49592301 0.86790103 0.49258101 0.87060797 0.49635899 0.87775803 0.49422899 0.87848902
		 0.49498501 0.88737798 0.49037999 0.88642198 0.48528099 0.88662601 0.47149 0.881796
		 0.459535 0.87583202 0.47851801 0.87729001 0.48349801 0.86975199 0.489952 0.87340301
		 0.492423 0.87737501 0.48973501 0.88412398 0.48553699 0.882438 0.48596999 0.874924
		 0.48423299 0.87655199 0.48907101 0.87466103 0.49082601 0.87696701 0.48954499 0.882384
		 0.48650199 0.88121402 0.48703301 0.87622303 0.48816299 0.876082 0.488363 0.87744403
		 0.48869401 0.87932098 0.48741001 0.87939298 0.48661 0.87743199 0.34833601 0.89687997
		 0.34232801 0.916197 0.362533 0.87485403 0.38475499 0.84935802 0.41137901 0.84028202
		 0.40269101 0.82795399 0.40581 0.83700597 0.392171 0.861413 0.39045301 0.853248 0.38355201
		 0.88199002 0.37129501 0.87776899 0.37697399 0.89996397 0.364979 0.90340799 0.362881
		 0.92566699 0.38058099 0.91686898 0.39862099 0.92614502 0.38916099 0.93232799 0.377119
		 0.944754 0.400094 0.94520599 0.393769 0.96016401 0.40801701 0.93652302 0.415831 0.93076599
		 0.423951 0.92575002 0.43510401 0.91549599 0.457463 0.92882401 0.41346899 0.954135
		 0.411975 0.96956402 0.41845199 0.94527501 0.42740801 0.95871502 0.430718 0.97233701
		 0.42626399 0.950293 0.44329199 0.92961198 0.42536399 0.93987501 0.433579 0.94785601
		 0.45794699 0.94319302 0.47685799 0.95108902 0.44068599 0.95785302 0.447772 0.97064501
		 0.44719201 0.93905002 0.46374401 0.96330398 0.45092401 0.95207101 0.441477 0.94388402;
	setAttr ".uvst[0].uvsp[750:999]" 0.43356699 0.934789 0.15335201 0.95570397
		 0.145963 0.95104003 0.13789099 0.952272 0.14824 0.95713598 0.150158 0.96238601 0.147054
		 0.96052998 0.141278 0.95580602 0.145156 0.95598501 0.140937 0.95910603 0.144334 0.95931703
		 0.14559101 0.963099 0.143098 0.962511 0.140674 0.96177202 0.136948 0.95952398 0.14190599
		 0.96566802 0.13891 0.96338099 0.132247 0.962524 0.12879901 0.96731198 0.126954 0.97400898
		 0.13902199 0.976349 0.134058 0.97121 0.15083399 0.97932798 0.15261599 0.973028 0.14585599
		 0.973966 0.15244301 0.96762198 0.135746 0.96738702 0.14051101 0.97111499 0.146111
		 0.97084898 0.14617901 0.96594501 0.054714002 0.97355998 0.048009999 0.96608198 0.063642003
		 0.97772199 0.25024599 0.97528702 0.23962501 0.98061299 0.22793999 0.98356199 0.25689101
		 0.98231298 0.039508 0.96857399 0.22675499 0.99442899 0.24287499 0.99377102 0.050057001
		 0.98375499 0.066652998 0.98771101 0.46790701 0.906829 0.46205401 0.90238702 0.47478601
		 0.90837002 0.48249099 0.90392202 0.485158 0.89809197 0.48172799 0.89437801 0.47139201
		 0.89084399 0.46449101 0.89452302 0.47868299 0.90176803 0.47424501 0.903332 0.46871701
		 0.89697599 0.47291401 0.895971 0.470202 0.90350997 0.468613 0.900397 0.47878399 0.89900601
		 0.47760299 0.896474 0.47365001 0.90020001 0.288185 0.631854 0.26837099 0.64565098
		 0.241069 0.650756 0.30004299 0.60793698 0.27662 0.583691 0.24097399 0.58065897 0.21251801
		 0.606538 0.220286 0.63598198 0.029947 0.269196 0.033748999 0.233088 0.02609 0.31027299
		 0.035670999 0.350768 0.047122002 0.38451001 0.098514996 0.128738 0.12908299 0.106468
		 0.070491001 0.160129 0.046075001 0.194947 0.021227 0.27120399 0.023698 0.23213699
		 0.28582099 0.63052201 0.26698399 0.64357501 0.24233501 0.64837801 0.034745 0.189096
		 0.296657 0.60854602 0.019648001 0.30972999 0.276463 0.58453202 0.029719001 0.35293701
		 0.242869 0.58299297 0.035147 0.39168301 0.21521901 0.60663998 0.079278998 0.116032
		 0.118773 0.096988 0.22229099 0.63352102 0.053045001 0.151921 0.50364101 0.87775803
		 0.50407702 0.86790103 0.50741899 0.87060797 0.50577098 0.87848902 0.50962001 0.88642198
		 0.50501502 0.88737798 0.50890499 0.86104703 0.51481098 0.86492699 0.50333297 0.854195
		 0.50326699 0.85206401 0.507146 0.850766 0.514094 0.85053301 0.51942098 0.85427201
		 0.51084799 0.84928 0.50341898 0.85028499 0.50373101 0.84750497 0.50760299 0.84814
		 0.51225501 0.84564197 0.50389099 0.84499103 0.50604898 0.83943999 0.51384598 0.84117198
		 0.50810301 0.82869899 0.50801998 0.81917697 0.51676601 0.81985003 0.51732701 0.82902199
		 0.51605701 0.83618498 0.50709802 0.83460599 0.50805902 0.80886102 0.515818 0.81013298
		 0.50863999 0.804322 0.517093 0.80218798 0.53328699 0.79704797 0.51580399 0.77785498
		 0.52446002 0.773103 0.54593498 0.79931903 0.54445398 0.80942702 0.52964902 0.803967
		 0.568169 0.82539898 0.50953698 0.76476002 0.51434797 0.753124 0.52068198 0.74233001
		 0.53909898 0.754839 0.53842402 0.76635897 0.53431702 0.772995 0.524602 0.71627897
		 0.52572501 0.71209902 0.54378402 0.72816199 0.54271197 0.73398799 0.52592802 0.70012301
		 0.547997 0.71850801 0.52898401 0.680453 0.55781502 0.69950199 0.53411502 0.65602398
		 0.54128498 0.62628502 0.58061498 0.63649601 0.56728202 0.67302299 0.54944199 0.58672202
		 0.60308301 0.59124202 0.55146199 0.545349 0.545371 0.50972199 0.58807999 0.51044297
		 0.61136901 0.54279399 0.53895402 0.47633001 0.571926 0.47999999 0.53515702 0.43778801
		 0.565754 0.44755799 0.534141 0.42748299 0.56859499 0.44157299 0.536228 0.42173401
		 0.56674403 0.43632701 0.52168 0.382359 0.52234298 0.36459699 0.54468298 0.37480199
		 0.54228902 0.394023 0.52174801 0.34236801 0.54661602 0.35685101 0.76838899 0.30343699
		 0.73209298 0.33223701 0.73762798 0.31677899 0.76728499 0.29804099 0.50598001 0.26908299
		 0.51165199 0.267701 0.52647299 0.302441 0.51911598 0.313815 0.72007 0.37167901 0.69107002
		 0.37925401 0.69322997 0.34516701 0.69403899 0.33024999 0.71345198 0.40463299 0.68766099
		 0.41392401 0.81933802 0.439273 0.82143998 0.444763 0.79470301 0.46270201 0.793966
		 0.46122599 0.82603002 0.45436099 0.79722202 0.47243401 0.83665001 0.488585 0.80247498
		 0.49648201 0.85167199 0.52555001 0.81264001 0.52743101 0.87030399 0.57254499 0.82673198
		 0.57254398 0.88822001 0.62974602 0.85047799 0.63808298 0.89256001 0.68590498 0.853679
		 0.69074398 0.88538003 0.736323 0.87119401 0.77648002 0.83639997 0.77045798 0.84683102
		 0.735524 0.852853 0.80520898 0.82751799 0.79432398 0.82681501 0.82537401 0.79160798
		 0.843548 0.752141 0.82843298 0.78769898 0.80590898 0.78634602 0.85027498 0.74922699
		 0.83975399 0.79236603 0.86403799 0.74687302 0.84622699 0.70404798 0.89533299 0.67661899
		 0.90692198 0.66221899 0.883654 0.68236399 0.86453301 0.65767199 0.916197 0.65166402
		 0.89687997 0.637119 0.92566699 0.622881 0.944754 0.61083901 0.93232799 0.61941898
		 0.91686898 0.62302601 0.89996397 0.63502097 0.90340799 0.60623097 0.96016401 0.59990603
		 0.94520599 0.58802497 0.96956402 0.58653098 0.954135 0.569282 0.97233701 0.57259202
		 0.95871502 0.55931401 0.95785302 0.55222797 0.97064501 0.53625602 0.96330398 0.54907602
		 0.95207101 0.52314198 0.95108902 0.51793897 0.93349499 0.54253697 0.92882401 0.54205298
		 0.94319302 0.508641 0.91533798 0.51124102 0.91043198 0.52097201 0.92313498 0.53565502
		 0.91995198 0.505409 0.904612 0.50834203 0.90284699 0.505943 0.89588302 0.509507 0.89637899
		 0.51093203 0.890791 0.514925 0.88921797 0.71532899 0.67678303;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.67879301 0.64451897 0.69652301 0.63972998
		 0.72682202 0.66131002 0.711815 0.631854 0.73162901 0.64565098 0.76453102 0.66266
		 0.77108699 0.68583202 0.75893098 0.650756 0.66360098 0.59255701 0.68571198 0.611063
		 0.69995701 0.60793698 0.71281302 0.561804 0.71132898 0.56817597 0.72338003 0.583691
		 0.76006502 0.56654799 0.76342499 0.57385403 0.75902599 0.58065897 0.80338597 0.58951998
		 0.79307199 0.603782 0.78748202 0.606538 0.81663901 0.65334702 0.78932899 0.63980401
		 0.77971399 0.63598198 0.96625102 0.233088 0.97005302 0.269196 0.95122701 0.273698
		 0.94768298 0.23708799 0.97630203 0.23213699 0.978773 0.27120399 0.93648797 0.20130201
		 0.95392501 0.194947 0.96525502 0.189096 0.97390997 0.31027299 0.95346701 0.312778
		 0.98035198 0.30972999 0.964329 0.350768 0.94460797 0.35038599 0.970281 0.35293701
		 0.952878 0.38451001 0.93620598 0.38473099 0.96485299 0.39168301 0.87091702 0.106468
		 0.90148503 0.128738 0.88757598 0.140893 0.85868502 0.119572 0.88122702 0.096988 0.92072099
		 0.116032 0.92950898 0.160129 0.91426498 0.16941001 0.94695503 0.151921 0.93263799
		 0.277071 0.93007398 0.24012201 0.91928297 0.20746499 0.93314999 0.31573701 0.92838299
		 0.350674 0.92238599 0.38773501 0.87587601 0.152109 0.84639698 0.12984601 0.90133399
		 0.177174 0.89402598 0.28731999 0.89243299 0.25306201 0.88610899 0.220239 0.89298302
		 0.32127899 0.894445 0.35312501 0.89785498 0.38426799 0.84982002 0.166453 0.82238102
		 0.14792299 0.87161201 0.190375 0.85299999 0.28993601 0.85162801 0.26438901 0.84975898
		 0.239225 0.85384202 0.318703 0.858096 0.34930199 0.86531401 0.377635 0.822887 0.18946999
		 0.79804802 0.177628 0.84227699 0.211244 0.81476402 0.30234301 0.81227899 0.280031
		 0.810561 0.25610599 0.81877202 0.323017 0.82675099 0.345397 0.835208 0.36680701 0.78883898
		 0.21015 0.77135098 0.19874801 0.80631101 0.229222 0.78332603 0.310559 0.77929902
		 0.29047599 0.77763498 0.26735401 0.78959799 0.327126 0.80136698 0.349347 0.80882198
		 0.37007499 0.76725602 0.22764701 0.75199401 0.216023 0.77036798 0.248009 0.75739998
		 0.87749797 0.779827 0.884884 0.77518499 0.89947701 0.74821699 0.89303797 0.95457101
		 0.87822598 0.93380898 0.888533 0.92329699 0.87256199 0.94681197 0.86250103 0.80004698
		 0.89048702 0.79420602 0.90355301 0.82918102 0.89624399 0.81293303 0.91291797 0.85892302
		 0.89393401 0.85255599 0.91094202 0.83560902 0.91152698 0.82362598 0.92126101 0.880355
		 0.883555 0.88945103 0.895935 0.87824601 0.90316498 0.87026602 0.91492498 0.90371501
		 0.88320702 0.90873301 0.90286702 0.62354702 0.32585201 0.58934802 0.32547 0.59630799
		 0.30326 0.62471902 0.30210999 0.62085599 0.34720999 0.58361399 0.34334499 0.650913
		 0.297593 0.65838403 0.320939 0.65933102 0.341474 0.55774599 0.31507599 0.56761497
		 0.295445 0.55220002 0.326718 0.532381 0.293356 0.54505002 0.27775699 0.51741701 0.26382101
		 0.53085601 0.251717 0.763587 0.29310599 0.73239797 0.30727401 0.72549897 0.284163
		 0.75611001 0.28011701 0.69210202 0.31573799 0.687298 0.28998899 0.59969199 0.29288
		 0.62824202 0.28975299 0.65384001 0.28479201 0.57068002 0.284695 0.55090898 0.264929
		 0.53877902 0.24110401 0.72299099 0.271732 0.75133598 0.270668 0.68641901 0.28108299
		 0.604469 0.28178599 0.63144302 0.277163 0.65645802 0.27081001 0.57524502 0.27341199
		 0.55514002 0.253892 0.54324901 0.23060299 0.718458 0.261641 0.74605697 0.262835 0.686746
		 0.26697201 0.61365801 0.25797001 0.63802999 0.25674799 0.66045898 0.25073099 0.58478701
		 0.25246799 0.56563997 0.23127601 0.55419898 0.20939399 0.71177101 0.240337 0.73648697
		 0.242668 0.68522 0.24269301 0.61852902 0.226292 0.64323097 0.220296 0.66116399 0.21627
		 0.60174102 0.21707401 0.58729398 0.20028199 0.57800198 0.18256301 0.70124102 0.20792501
		 0.72197998 0.20688801 0.68035197 0.210997 0.61979097 0.22036301 0.64167702 0.21326999
		 0.65981698 0.20597 0.60416698 0.213026 0.59350902 0.19366799 0.58746803 0.17858 0.69901103
		 0.200396 0.72186899 0.196078 0.67820299 0.202316 0.605443 0.21193799 0.61965799 0.216216
		 0.63732201 0.206634 0.59533399 0.191063 0.59072 0.178745 0.697438 0.19402 0.720994
		 0.19288801 0.67789 0.199018 0.65474302 0.200064 0.32722601 0.088390999 0.30683601
		 0.095560998 0.295582 0.070909999 0.32484201 0.065989003 0.35000399 0.062447 0.34499899
		 0.082581997 0.295661 0.106474 0.27627599 0.092116997 0.29088601 0.130889 0.26389101
		 0.116186 0.294727 0.14417601 0.27325299 0.144109 0.41708401 0.111969 0.39592201 0.096729003
		 0.41378701 0.083783001 0.436901 0.100314 0.37102899 0.089392997 0.37628901 0.080412999
		 0.39128599 0.083756998 0.39985001 0.072021 0.363305 0.075306997 0.36831599 0.061918002
		 0.61126697 0.65982401 0.60080898 0.695324 0.62958699 0.61932999 0.59016901 0.72238803
		 0.69632602 0.71925598 0.68903399 0.75167 0.639189 0.72486103 0.64857101 0.69102699
		 0.66215402 0.66160601 0.70705497 0.69458503 0.682567 0.77851403 0.629691 0.75113398
		 0.75327897 0.73978299 0.74508202 0.76794899 0.76365697 0.710195 0.73581302 0.79766601
		 0.80742002 0.73926699 0.79553401 0.772879 0.81569302 0.69965202 0.72535902 0.83245802
		 0.72858298 0.823695 0.719199 0.83933598 0.61363399 0.77910602 0.61514401 0.76802897
		 0.67413503 0.800129 0.67105198 0.80716401 0.67079401 0.81682199 0.61446601 0.78802598
		 0.57611901 0.75385302 0.57868898 0.743783 0.57545799 0.75823802 0.60671097 0.44276801
		 0.60712999 0.451184 0.56927299 0.38516101 0.56919098 0.40093601;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.60487199 0.45773 0.646905 0.45472199 0.64719099
		 0.458933 0.59839702 0.39506701 0.59675902 0.40800399 0.647946 0.47104001 0.70029598
		 0.46365401 0.70222503 0.46900201 0.627639 0.39742199 0.630445 0.41612199 0.704292
		 0.481224 0.750103 0.46841499 0.74895698 0.47258699 0.66058803 0.39115101 0.65947998
		 0.41968301 0.752083 0.48094499 0.61154801 0.48381099 0.65566999 0.49075699 0.70437199
		 0.495415 0.75542003 0.496957 0.62331802 0.50710899 0.632052 0.52497298 0.661924 0.50943702
		 0.704355 0.51523298 0.761823 0.51862001 0.68861598 0.54158199 0.77373302 0.543984
		 0.54858601 0.33960101 0.57947803 0.35778201 0.61731398 0.37193999 0.6584 0.36349699
		 0.596214 0.380101 0.57270002 0.37062201 0.64623398 0.577205 0.66250902 0.52528203
		 0.57228899 0.774872 0.561185 0.78376001 0.60674298 0.79999101 0.599038 0.81308299
		 0.64580899 0.82441097 0.62741202 0.83955699 0.66930902 0.85335201 0.64946997 0.86967599
		 0.55708098 0.79790503 0.59730899 0.82795399 0.61524498 0.84935802 0.63746703 0.87485403
		 0.51746601 0.84805799 0.52348602 0.84509897 0.53858203 0.902538 0.53210503 0.90750098
		 0.53209299 0.906829 0.53794599 0.90238702 0.54205602 0.90383399 0.53315997 0.91105199
		 0.53550899 0.89452302 0.53658402 0.89338797 0.53953397 0.89068502 0.52507597 0.90898401
		 0.52521402 0.90837002 0.52408898 0.91280699 0.51644999 0.90487498 0.51750898 0.90392202
		 0.51386702 0.90776801 0.51212198 0.89720798 0.51484197 0.89809197 0.51648003 0.89216697
		 0.51827198 0.89437801 0.52907902 0.88911301 0.52860701 0.89084399 0.529854 0.88513499
		 0.52979797 0.90350997 0.53138697 0.900397 0.53128302 0.89697599 0.52575499 0.903332
		 0.52131701 0.90176803 0.52121598 0.89900601 0.52239698 0.896474 0.52708602 0.895971
		 0.54885602 0.907781 0.54664499 0.88533401 0.51471901 0.88662601 0.52850997 0.881796
		 0.507577 0.87737501 0.51026499 0.88412398 0.51004797 0.87340301 0.55739403 0.91171002
		 0.55819702 0.891675 0.52148199 0.87729001 0.540465 0.87583202 0.552468 0.87108898
		 0.51446301 0.882438 0.53710097 0.81671202 0.53950697 0.82597899 0.527448 0.82100701
		 0.52810103 0.81319302 0.563003 0.82895702 0.55738801 0.83343399 0.53974903 0.83587199
		 0.52708 0.83112198 0.55477399 0.84401602 0.60290599 0.86116099 0.59348398 0.86138302
		 0.57929701 0.84771401 0.58615297 0.84350699 0.58862102 0.84028202 0.60782897 0.861413
		 0.582784 0.86767799 0.57265902 0.85647899 0.61140001 0.88033801 0.600025 0.87848699
		 0.61644799 0.88199002 0.59245098 0.88374901 0.61091501 0.89659202 0.60257 0.89461899
		 0.59898502 0.895046 0.60137898 0.92614502 0.59383798 0.92160797 0.60161698 0.90944099
		 0.60786098 0.91276503 0.59154397 0.92070198 0.59753799 0.91012299 0.59198302 0.93652302
		 0.58416897 0.93076599 0.58154798 0.94527501 0.57463598 0.93987501 0.57604897 0.92575002
		 0.56643301 0.934789 0.53686601 0.84450001 0.52514702 0.83889502 0.54887098 0.85259902
		 0.570337 0.87311 0.56104898 0.863828 0.574561 0.884166 0.59020501 0.91941899 0.59550101
		 0.90956599 0.59668303 0.89589798 0.57651401 0.92260498 0.56489599 0.91549599 0.56682801
		 0.91464102 0.55670798 0.92961198 0.567635 0.89706397 0.56952202 0.89773601 0.57622701
		 0.88771701 0.58892697 0.88924599 0.586631 0.91553998 0.59139699 0.90718597 0.57770801
		 0.91649801 0.57124501 0.910344 0.572308 0.90541899 0.57871801 0.89713502 0.58488703
		 0.89474499 0.58560401 0.90464801 0.582335 0.907332 0.578623 0.90912801 0.54175401
		 0.85992199 0.55280799 0.93905002 0.53299201 0.866126 0.51650202 0.86975199 0.53217202
		 0.85173798 0.524979 0.85939097 0.82458001 0.96704298 0.82391298 0.95405799 0.82710898
		 0.956617 0.82700902 0.96792698 0.82019198 0.96678102 0.81904501 0.95387399 0.88836098
		 0.95472401 0.880566 0.94614297 0.88206202 0.942231 0.88948798 0.95172 0.89064699
		 0.946302 0.89407802 0.94973302 0.828448 0.94123298 0.83124399 0.94527799 0.82276899
		 0.93528801 0.83624601 0.931472 0.83940798 0.93656802 0.82989001 0.92724699 0.84735501
		 0.92399102 0.85002899 0.93266201 0.837349 0.92053401 0.86252701 0.92650002 0.86161602
		 0.93274999 0.87370503 0.93261999 0.87242103 0.937343 0.88773 0.92084497 0.89288402
		 0.92946702 0.89795202 0.93401599 0.83187801 0.96137798 0.83085102 0.97099298 0.88604498
		 0.95912898 0.87899601 0.95169502 0.83544302 0.952393 0.84254599 0.94510299 0.85210001
		 0.94177997 0.86155599 0.94154602 0.87114 0.94468302 0.83846599 0.96737897 0.83736998
		 0.97513598 0.88225901 0.96612602 0.876674 0.95927799 0.84132701 0.960747 0.84664798
		 0.95570397 0.85403699 0.95104003 0.86210901 0.952272 0.86979198 0.95425701 0.84738398
		 0.973028 0.84916598 0.97932798 0.87304598 0.97400898 0.87120098 0.96731198 0.84755701
		 0.96762198 0.84984201 0.96238601 0.85484397 0.95598501 0.85176003 0.95713598 0.85294598
		 0.96052998 0.85872197 0.95580602 0.86775303 0.962524 0.86305201 0.95952398 0.85906303
		 0.95910603 0.85414398 0.973966 0.86097801 0.976349 0.865942 0.97121 0.85388899 0.97084898
		 0.85382098 0.96594501 0.85440898 0.963099 0.864254 0.96738702 0.86109 0.96338099
		 0.859326 0.96177202 0.221295 0.049256999 0.21887501 0.047316 0.22879399 0.038614001
		 0.230808 0.042056002 0.214137 0.061981 0.21171699 0.060814999 0.25084201 0.048303001
		 0.23968799 0.062709004 0.22995999 0.077068999 0.82770401 0.09849 0.82869703 0.097227
		 0.83640999 0.099349 0.83599102 0.101186 0.82094198 0.091344997 0.82244599 0.090834998
		 0.83112597 0.093910001 0.83747798 0.095103003 0.825481 0.087606996 0.83613801 0.085823998
		 0.84730202 0.092895001 0.82511801 0.079847001;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.86864603 0.025385 0.867966 0.020677 0.877473
		 0.022748001 0.87531298 0.026582999 0.88349402 0.030236 0.87907797 0.031950999 0.87729502
		 0.039586999 0.86800402 0.036853001 0.86100501 0.029863 0.86792803 0.019676 0.87834001
		 0.021923 0.884363 0.030214 0.40914601 0.052878998 0.40818799 0.054986 0.393226 0.047398001
		 0.39424601 0.045605998 0.37740901 0.044741001 0.37857199 0.041577 0.384148 0.065403998
		 0.331709 0.040840998 0.332086 0.036970001 0.35729399 0.039747 0.35738 0.043568 0.30887699
		 0.039712999 0.309338 0.036148999 0.87470502 0.055966999 0.87335199 0.055349 0.88173801
		 0.042544998 0.88278598 0.043120001 0.87034398 0.068602003 0.869394 0.067919001 0.86811501
		 0.053661998 0.86441898 0.06594 0.85976797 0.049293999 0.85220897 0.062403001 0.85031998
		 0.045308001 0.836573 0.056428 0.84553701 0.041979998 0.858217 0.02617 0.832739 0.053312998
		 0.84432101 0.040826 0.85715598 0.024722001 0.83190799 0.052296001 0.456007 0.081014
		 0.45493001 0.084876001 0.42414901 0.065334998 0.425212 0.063478999 0.234484 0.123802
		 0.235907 0.122229 0.249934 0.146533 0.247318 0.149388 0.247578 0.031098001 0.248063
		 0.034040999 0.26341599 0.032272 0.84852499 0.096730001 0.84827799 0.098453999 0.214913
		 0.078230999 0.21300399 0.078610003 0.21856999 0.089578003 0.81874901 0.080063 0.82000899
		 0.079924002 0.25811699 0.076792002 0.271514 0.057472002 0.245031 0.094972998 0.28051299
		 0.034449998 0.22702201 0.106079 0.28033799 0.030832 0.225068 0.10686 0.21768001 0.090530001
		 0.262485 0.029763 0.86315203 0.084729001 0.86210197 0.083806001 0.85595 0.091934003
		 0.85621101 0.093339004 0.82046598 0.072153002 0.82150698 0.072825 0.82609701 0.062665999
		 0.82491499 0.061907001 0.826801 0.074037999 0.83120799 0.064673997 0.859626 0.080278002
		 0.85328603 0.088094003 0.84047902 0.079553001 0.84534299 0.071698003 0.80356002 0.96992499
		 0.78939998 0.958489 0.79569799 0.94743502 0.80764401 0.96244401 0.80544603 0.93097198
		 0.81105 0.94681799 0.89695001 0.96206701 0.91231197 0.948636 0.91773701 0.95563602
		 0.90346003 0.96619201 0.89447898 0.952869 0.90652299 0.94316399 0.81618398 0.94945502
		 0.817195 0.96559298 0.77239501 0.95059597 0.77818298 0.93758601 0.78586799 0.92216098
		 0.75356799 0.94508702 0.75812101 0.93120098 0.76398098 0.91536099 0.73129702 0.94151503
		 0.73245901 0.92591298 0.73466802 0.911358 0.96297801 0.92759502 0.94853401 0.93509001
		 0.94715798 0.923406 0.96045297 0.91324198 0.94233298 0.90536702 0.95852399 0.89934897
		 0.93326598 0.94399798 0.92742801 0.932217 0.92242301 0.916695 0.91469198 0.93450099
		 0.91142201 0.927863 0.796417 0.97974998 0.78538698 0.96757299 0.92284399 0.96437401
		 0.909468 0.975842 0.768053 0.96060199 0.75026399 0.95529097 0.73205298 0.95723498
		 0.96540803 0.94227201 0.95077699 0.94698501 0.936463 0.95414197 0.78745198 0.98960102
		 0.77841997 0.97661 0.92940998 0.97293901 0.91874301 0.98451197 0.76401001 0.96836197
		 0.74763 0.96326399 0.73487997 0.96998298 0.96469003 0.95462501 0.95226401 0.95767301
		 0.940328 0.963907 0.77324498 0.99442899 0.77205998 0.98356199 0.93635798 0.97772199
		 0.93334699 0.98771101 0.76037502 0.98061299 0.74975401 0.97528702 0.74310899 0.98231298
		 0.96049201 0.96857399 0.95199001 0.96608198 0.94528598 0.97355998 0.75712502 0.99377102
		 0.94994301 0.98375499 0.90298599 0.93864501 0.817114 0.933267 0.90416002 0.921242
		 0.89743501 0.92101401 0.89400399 0.91221201 0.59419 0.83700597 0.60954702 0.853248
		 0.62870502 0.87776899 0.51402998 0.874924 0.51092899 0.87466103 0.51576698 0.87655199
		 0.50917399 0.87696701 0.51045501 0.882384 0.51349801 0.88121402 0.51339 0.87743199
		 0.51296699 0.87622303 0.51258999 0.87939298 0.51183701 0.876082 0.51163697 0.87744403
		 0.51130599 0.87932098 0.57373601 0.950293 0.56642097 0.94785601 0.558523 0.94388402
		 0.85809398 0.96566802 0.85948902 0.97111499 0.85566598 0.95931703 0.856902 0.962511
		 0.52635002 0.90020001 0.71417898 0.63052201 0.73301601 0.64357501 0.75766498 0.64837801
		 0.70334297 0.60854602 0.72353703 0.58453202 0.75713098 0.58299297 0.78478098 0.60663998
		 0.77770901 0.63352102 0.5 0.90568799 0.5 0.89682299 0.5 0.82793301 0.5 0.817931 0.5
		 0.808954 0.5 0.80366302 0.5 0.79918897 0.5 0.79017001 0.5 0.77798301 0.5 0.76450503
		 0.5 0.74917001 0.5 0.726174 0.5 0.70007199 0.5 0.69374198 0.5 0.54450297 0.5 0.50858599
		 0.5 0.47354501 0.5 0.43227199 0.5 0.421195 0.5 0.41519901 0.5 0.31050599 0.5 0.269678
		 0.22737101 0.30887699 0.25178501 0.33825499 0.77262902 0.30887699 0.74821502 0.33825499
		 0.25911099 0.373294 0.74088901 0.373294 0.26301101 0.40686801 0.73698902 0.40686801
		 0.15607201 0.425082 0.153005 0.43124801 0.84392798 0.425082 0.846995 0.43124801 0.146899
		 0.44326001 0.85310102 0.44326001 0.131657 0.47838601 0.868343 0.47838601 0.112234
		 0.51708502 0.887766 0.51708502 0.088871002 0.56484699 0.911129 0.56484699 0.859272
		 0.85064799 0.84151 0.866795 0.15849 0.866795 0.16972101 0.87419999 0.83027899 0.87419999
		 0.17822801 0.885279 0.82177198 0.885279 0.64837497 0.94767702 0.63218999 0.96304798
		 0.36781001 0.96304798 0.38783899 0.97833502 0.61216098 0.97833502 0.5 0.91677999
		 0.5 0.95965999 0.5 0.93648797 0.5 0.683613 0.5 0.67262697 0.5 0.65269202 0.5 0.376176
		 0.5 0.36043301 0.5 0.33856201 0.5 0.62251902;
	setAttr ".uvst[0].uvsp[1750:1787]" 0.5 0.58356702 0.069472 0.62402701 0.93052799
		 0.62402701 0.064074002 0.68674099 0.074083999 0.74416101 0.92591602 0.74416101 0.93592602
		 0.68674099 0.093590997 0.789877 0.90640903 0.789877 0.140728 0.85064799 0.116835
		 0.82449001 0.883165 0.82449001 0.5 0.85037899 0.5 0.85233998 0.5 0.855488 0.5 0.84465998
		 0.5 0.84752798 0.5 0.88751203 0.5 0.87821299 0.27900299 0.92520499 0.312181 0.93036199
		 0.72099698 0.92520499 0.687819 0.93036199 0.351625 0.94767702 0.33363801 0.93751901
		 0.66636199 0.93751901 0.5 0.83423799 0.5 0.83847398 0.5 0.86828899 0.5 0.86129701
		 0.410925 0.98757398 0.58907503 0.98757398 0.54390699 0.98563701 0.56623203 0.98960203
		 0.433768 0.98960203 0.45609301 0.98563701 0.47770599 0.97615898 0.52229398 0.97615898;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1552 ".vt";
	setAttr ".vt[0:165]"  0 258.97296143 6.054846764 0 254.70187378 8.82478619
		 0.008626 250.64619446 8.7376976 0 242.97688293 13.55891609 0 239.13630676 10.78103733
		 0 232.86703491 9.38875008 0 230.27650452 9.13325405 0 227.51617432 10.19675827 -0.084930003 219.44874573 9.60300541
		 0.011065 216.12586975 6.66043806 -0.028023999 215.59684753 2.44397998 0.00053399999 216.18095398 0.030912001
		 0 216.88536072 -1.755422 0.068379998 213.49795532 -2.63513589 -0.052221999 209.1071167 -1.94392598
		 0.00041000001 204.28276062 -2.62987494 0.00053399999 199.83540344 0.36742699 0.0080469996 193.1806488 4.84849024
		 0 193.41069031 6.83099413 -0.001791 191.98199463 9.66096783 0.00053399999 183.86038208 14.27676678
		 0.000688 175.98016357 19.69831276 0.00053399999 150.95840454 23.89787483 0.00053399999 138.67718506 22.86654854
		 0.00053399999 126.62445068 22.15512848 0 112.4080658 20.37187576 0.00053399999 108.65697479 19.53270149
		 0.000271 107.88726807 17.57182693 0.028914999 101.64633942 16.76596832 -0.00072200003 84.22376251 9.49550056
		 7.0000001e-006 82.46071625 -5.97348881 0.00053399999 87.74960327 -20.99164963 0.00053399999 98.5960083 -31.067140579
		 0.00054899999 111.70420837 -33.87731552 -0.000291 111.94537354 -36.22759628 -0.00015199999 116.26572418 -34.91239166
		 0 128.35449219 -37.3940506 -0.001049 139.320755 -43.92401505 0.00053399999 148.16577148 -54.78128815
		 -0.012572 158.60237122 -65.92040253 0.00053399999 184.87242126 -74.80716705 0.00053399999 195.98271179 -71.50836945
		 0.098664001 212.32557678 -62.86432266 0 217.22357178 -58.92945099 0 220.41368103 -57.011631012
		 0 219.014724731 -52.6086235 -0.061818998 228.33143616 -45.25402832 0.00053399999 241.96022034 -37.083602905
		 0 248.92471313 -35.84339905 -0.001273 256.15438843 -35.40910721 -0.022209 262.33071899 -32.2113533
		 0 268.39123535 -21.2368679 -0.00013099999 268.28137207 -7.64724588 0 264.55239868 -0.118148
		 -2.14085102 242.93612671 13.19939137 -1.41017795 239.17687988 9.97400093 -1.30615997 232.20280457 9.49920273
		 -1.28905904 230.19747925 9.02441597 -1.57589698 227.54571533 9.95994663 -3.98941588 219.59440613 9.7002058
		 -3.85618401 215.67286682 7.078017235 -2.92706394 215.64241028 2.078962088 -2.3017621 216.36987305 -0.089974999
		 -6.59045076 215.76286316 -6.71222305 -3.98633003 208.9569397 -3.72091007 -2.8133409 204.46115112 -2.49569511
		 -4.58790922 201.069274902 -0.39095399 -6.97815084 197.58436584 0.72931498 -7.48077393 197.54330444 2.07814908
		 -8.31939888 195.9801178 5.41554403 -12.86526966 184.76385498 12.40635777 -15.85056305 176.65400696 16.4935627
		 -17.02469635 150.69689941 19.76045418 -13.52148914 138.77952576 19.96185875 -11.0035858154 127.44139862 20.012619019
		 -9.68825817 114.17184448 19.92782784 -9.39370155 110.75239563 19.41246033 -9.41097069 109.96303558 17.27540779
		 -9.22007847 102.89775848 16.31706619 -2.17397594 80.55049896 -5.94446898 -5.85834312 85.65238953 -23.41239548
		 -8.37651539 98.44610596 -33.76670074 -9.65400696 111.99421692 -34.72026443 -10.30388165 112.4896698 -36.84449005
		 -9.80481434 116.25498199 -36.48682022 -10.90019035 127.84221649 -38.59716034 -12.61063671 138.52990723 -43.75151825
		 -15.01225853 147.37901306 -54.54717255 -16.012325287 159.12342834 -65.43201447 -15.12679386 186.018432617 -74.064727783
		 -13.53763962 197.19598389 -71.22632599 -14.38106823 214.12207031 -63.63574219 -16.69348145 224.0056762695 -57.69189072
		 -15.51632595 226.095718384 -55.8590126 -10.56245899 224.81381226 -53.20889282 -8.62995052 229.8483429 -44.4381752
		 -8.20214367 241.85339355 -35.58267975 -7.23016977 248.97116089 -35.38142014 -6.95605278 255.96640015 -34.78856659
		 -6.54767799 261.77377319 -31.56040001 -5.97282505 267.29382324 -21.097112656 -6.88665724 267.024627686 -8.55220699
		 -7.18732405 263.41583252 -1.12544894 -3.85485101 258.13909912 5.89619493 -2.58983898 254.16059875 8.57629204
		 -2.36142802 250.23313904 8.63145447 -81.93052673 165.79707336 -38.68679428 -75.09161377 163.43606567 -22.71925163
		 -65.082824707 158.33901978 -15.027898788 -51.55138016 148.45578003 -23.34447479 -50.90291977 145.72428894 -39.35904694
		 -52.0455513 144.11206055 -55.57435608 -65.92698669 151.88356018 -63.40203857 -78.20352173 162.47434998 -56.94530487
		 -85.92221069 153.44871521 -39.10564423 -81.088821411 152.037017822 -27.49044418 -71.27897644 147.28442383 -16.96827126
		 -60.01656723 139.061172485 -24.022800446 -57.62553024 135.62332153 -37.22071457 -60.086425781 135.17326355 -51.21667862
		 -71.97610474 141.95600891 -56.89343643 -83.41230774 149.91409302 -52.44662476 -88.15113831 146.15194702 -38.94582367
		 -83.84837341 145.21151733 -27.43273163 -73.96661377 140.42379761 -19.24226952 -64.38075256 133.62467957 -26.26207161
		 -59.086826324 128.8608551 -37.14562607 -64.91995239 130.74179077 -48.54480743 -74.63668823 135.3001709 -57.635952
		 -85.34013367 142.68130493 -51.26086426 -92.84248352 140.17729187 -38.65130234 -88.41119385 139.79748535 -25.11870766
		 -76.415802 134.081588745 -21.37295532 -66.93614197 128.39009094 -26.65154648 -59.62789154 123.11383057 -36.9539299
		 -66.10302734 124.72315979 -49.33139801 -77.036560059 129.33493042 -56.9417572 -87.11160278 135.6113739 -49.73593521
		 -97.45462036 124.89585876 -34.15047073 -92.3523407 125.25465393 -20.12667656 -78.86924744 121.69302368 -15.53983974
		 -68.17889404 117.43249512 -22.24708557 -62.86838531 114.23924255 -33.33201981 -67.54469299 113.97267151 -45.7364006
		 -79.50312805 116.84606934 -51.8603363 -92.27534485 121.44865417 -47.3582077 -96.19404602 108.8122406 -28.024833679
		 -93.12812805 109.64884949 -18.16065598 -83.22358704 108.7766571 -12.51412392 -72.42153931 106.37599182 -16.98669434
		 -69.51515198 104.40585327 -27.90244675 -72.97567749 103.51138306 -38.67092133 -83.78196716 104.50700378 -44.50863266
		 -93.6181488 107.024124146 -38.0075035095 -95.47084045 94.30003357 -18.42540359 -90.74249268 95.6473999 -11.28093624
		 -83.36077881 96.7691803 -7.56666899 -74.33786011 97.21928406 -10.0068893433 -72.92875671 96.14460754 -19.065021515
		 -76.37561035 94.90286255 -26.2401104 -83.78929138 93.49256897 -32.12003326 -91.89854431 93.51542664 -26.68798256
		 -93.90579224 82.080001831 -12.74183369 -89.31243896 84.088058472 -6.62699413 -83.075973511 86.02571106 -4.44772196
		 -74.24612427 88.19570923 -7.029414177;
	setAttr ".vt[166:331]" -72.2121582 86.94729614 -15.25548363 -77.069351196 85.90909576 -20.55449867
		 -83.21379852 81.81962585 -21.36659431 -90.75151062 81.45729065 -20.55621719 -36.91025925 83.41812897 -6.52109003
		 -33.039836884 83.10717773 6.52202988 -20.94983864 80.53610992 11.43393803 -8.85994339 76.64485931 6.81523991
		 -4.57892084 76.10892487 -5.8472662 -8.32858467 78.32891083 -18.54227066 -20.69321251 80.3505249 -25.22509956
		 -30.84063721 81.9670105 -18.25287819 -36.84314346 73.016212463 -7.47877693 -33.78287888 72.69710541 4.0030121803
		 -22.38061905 71.37473297 8.74285889 -11.43029213 70.071090698 3.55709004 -6.84963799 69.49422455 -7.46639681
		 -9.75813293 69.79167175 -20.17671204 -22.3806076 71.25286865 -26.15410614 -31.91201973 72.40348053 -17.073635101
		 -35.75083923 68.042007446 -9.88226795 -33.79459763 67.88677979 2.23405099 -21.73997688 66.68946838 7.2796669
		 -11.56841278 65.63848877 0.34943399 -7.47877598 65.19047546 -9.87215614 -9.68712807 65.37002563 -21.98740578
		 -22.30354309 68.51705933 -28.29459572 -31.43099403 67.57267761 -19.62144089 -34.91268158 63.29130554 -12.86719036
		 -33.44046783 63.2615509 -0.873649 -21.37589264 61.78490448 4.87836313 -11.34057522 62.17695236 -2.7303021
		 -7.38161612 61.94830322 -12.86246872 -9.50333214 62.010177612 -24.83493805 -21.6698494 64.048316956 -31.15077019
		 -32.43703842 63.13154602 -23.85575485 -34.26708221 55.94651413 -18.88511848 -30.28429031 55.77312851 -9.44208908
		 -20.85491943 55.3072052 -2.73904204 -11.49015617 54.79621887 -9.50357342 -7.7123661 54.56729126 -18.88007164
		 -10.01445961 54.64912415 -29.73542976 -20.85472679 55.19264603 -35.18289185 -30.28058434 55.70680618 -28.32270813
		 -31.29368591 41.99373245 -25.3054924 -27.46278381 44.24488449 -15.31966209 -20.40139389 43.060714722 -13.49436474
		 -12.90380096 42.020046234 -17.81118584 -10.037807465 41.99374008 -25.30541992 -12.045267105 41.96469498 -33.65822983
		 -20.39801025 41.95273972 -37.024368286 -28.010074615 41.96732712 -32.91740417 -27.40901947 41.80847168 -15.84538555
		 -20.45343018 41.27574158 -14.049572945 -13.55622292 38.65105057 -19.21036148 -9.98844719 37.90718079 -24.80910492
		 -11.34589672 38.95394516 -34.77788925 -20.34632683 38.66086578 -38.20330811 -28.39740181 37.58949661 -34.26159668
		 -31.083269119 38.99261475 -25.22009468 -27.61541748 38.86764526 -24.68152809 -26.043483734 41.080295563 -16.89380646
		 -20.74947357 40.85752869 -14.56061363 -14.0046520233 37.9985199 -20.30885506 -11.29951096 37.47633743 -24.89643478
		 -12.64040184 36.56329346 -34.057014465 -20.050224304 37.53469086 -37.31270218 -26.98166275 36.30558395 -31.4081955
		 -29.56838417 178.58398438 7.54130316 -24.39928055 188.62696838 5.22562599 -56.53466034 192.59228516 -12.48504066
		 -46.30076218 202.11863708 -14.95987892 -67.69055176 200.6410675 -30.59131622 -54.8177948 210.44848633 -30.91628075
		 -59.9236145 200.039291382 -52.95930862 -50.25502777 209.88423157 -50.44106293 -44.36994553 193.76690674 -65.64006042
		 -37.62722778 205.061233521 -62.0058898926 -24.47834015 226.42146301 -49.1877327 -27.88048172 224.36222839 -50.97838974
		 -32.43489838 221.36862183 -30.19286728 -35.027233124 219.89048767 -30.59464073 -26.1007843 213.89268494 -16.76570892
		 -28.82096672 211.53692627 -15.83938503 -11.93122768 201.24710083 -2.10834599 -14.3017292 200.12237549 0.1195
		 -30.70435143 224.16188049 -44.79029083 -27.70719528 224.48094177 -44.24071884 -0.001832 188.84796143 10.86394978
		 -10.23359203 190.90431213 8.48520756 -19.2955761 195.34213257 2.196347 -36.59454346 207.44595337 -16.94284248
		 -43.19722366 214.99594116 -31.46660042 -28.89155197 214.79402161 -59.28560257 -40.086395264 218.86373901 -47.57390594
		 -18.28019714 113.77297974 16.42038727 -19.21124268 115.26170349 17.17422867 -27.45411301 116.011222839 10.38088417
		 -29.80408096 117.26026154 11.88914013 -33.061508179 118.26748657 0.63357103 -34.49153519 118.77477264 0.64096498
		 -31.67242813 120.41469574 -13.40497589 -33.25202179 120.90429688 -14.31043911 -28.23391151 120.095436096 -25.078788757
		 -28.82539177 121.56031799 -25.032648087 -19.55078888 116.98238373 -32.67272949 -19.48892593 117.50917053 -32.89048767
		 -18.40894318 117.32389832 17.16134644 -29.03494072 119.62301636 11.90837955 -34.063785553 122.96916199 0.152312
		 -33.94800949 125.0092163086 -15.042977333 -28.22305489 124.46115112 -25.41446877
		 -19.42900848 120.92711639 -33.46260071 -20.91942406 128.23194885 17.21474075 -24.6555481 138.25656128 12.48086262
		 -29.48843575 128.48330688 8.90670776 -35.20228577 129.48646545 -2.53550696 -34.93108749 129.94734192 -15.61613178
		 -28.64774323 130.12428284 -26.56186676 -21.11600494 128.54066467 -35.91117477 -48.74860764 149.92448425 -37.33764648
		 -3.11886811 78.44763184 -5.39133692 -7.88484001 80.29824066 8.66572666 -20.16719818 85.82416534 12.95034504
		 -32.51212311 91.34049988 8.56546021 -36.076038361 92.61721802 -6.002682209 -30.037712097 90.084457397 -19.52576828
		 -19.99147034 85.21004486 -27.11670494 -6.70006084 82.063796997 -18.27200508 -20.41010857 90.33068848 -29.53350258
		 -29.84539223 98.68430328 -20.90689468 -34.65577316 103.022895813 -5.59510183 -31.028858185 97.79463196 9.28800297
		 -19.47087288 91.29859161 14.35216045 -6.94088411 84.67497253 10.9096384 -18.66867447 106.054252625 15.55333805
		 -20.2371273 102.95590973 -32.72499466 -27.040275574 109.15699768 -22.94670677 -31.80011749 112.98256683 -10.98546886
		 -27.12932014 109.45398712 10.89012527 -33.038578033 112.93392944 0.68084502 -28.53678894 103.43544006 10.57121372
		 -19.23256874 98.60005951 15.21565914 -8.73503399 94.33685303 14.94747543 0 93.53286743 14.36799812
		 -32.88550949 106.80980682 2.04171896 -78.5369873 176.71260071 -34.84465408 -67.93913269 170.57106018 -19.69963837
		 -70.41592407 173.37768555 -56.063865662 -52.44405746 163.17738342 -65.074394226 -40.52595139 184.14093018 -2.24343801
		 -34.69723511 194.26940918 -3.73661399 -21.74964905 206.25578308 -6.89442587 -19.34779358 207.105896 -9.14972878
		 -27.90127754 201.074447632 -5.75789881 -50.19750214 161.88438416 -13.7987833 -48.29368973 151.67105103 -25.06713295
		 0 164.082183838 23.86474991 0 171.29345703 -73.7072525 -18.13723946 164.33917236 19.17944145
		 -16.14925385 172.42799377 -72.61724091 -33.31413651 164.17292786 4.56574583 -74.63870239 187.67645264 -32.88955307
		 -63.54759216 180.74169922 -14.18233585 -66.72579956 186.56378174 -55.18915939 -49.068466187 179.56178284 -66.43920898;
	setAttr ".vt[332:497]" -43.39112473 171.65316772 -5.9424324 -45.20261383 152.60534668 -49.67967606
		 -31.65665054 136.15623474 4.91830683 -36.2689209 135.79232788 -5.20605421 -36.79978943 136.80744934 -16.81747627
		 -32.40821075 136.23976135 -30.66459656 -24.68858337 136.98565674 -41.48381424 -38.8171463 141.79060364 -37.39024353
		 -37.56410599 141.3405304 -6.35128307 0.00053399999 204.98988342 -67.51868439 -12.68493938 205.93011475 -67.78910065
		 -22.61173248 206.70475769 -65.68062592 -25.99885368 199.66918945 -67.96426392 -29.87799263 189.042938232 -71.27703857
		 -32.4086647 175.36877441 -70.51317596 -32.71005249 161.31793213 -64.46688843 -31.34823608 146.6607666 -51.2178421
		 -34.04706192 141.99285889 1.75629973 -42.13535309 146.14982605 -15.40640163 -31.26327133 148.49757385 5.57847977
		 -11.37974644 201.024917603 -3.9202559 -18.6306572 207.26097107 -10.35329437 -24.66479874 213.62651062 -19.14570618
		 -29.41853714 220.24809265 -31.82710266 -25.64325333 226.18728638 -42.26275635 -22.65513992 226.85462952 -47.59939957
		 -10.064670563 204.5431366 -5.57825422 -14.19076729 209.81533813 -10.45877075 -20.64554024 217.27786255 -19.033309937
		 -21.9473629 222.88021851 -28.47411728 -19.013048172 229.10215759 -36.98496628 -16.91098022 231.78717041 -41.69067383
		 0.00661 231.26846313 9.34168339 0 228.91574097 9.78320599 -1.29756606 231.19859314 9.23914337
		 -1.49879396 228.91835022 9.60983276 -6.024590015 229.42715454 7.077692032 -3.90497994 229.86459351 8.28065491
		 -2.60601211 230.53521729 8.76864147 -4.96902609 230.57821655 7.70821381 -2.89410996 229.25575256 8.97645664
		 -4.55722189 228.10183716 8.42215157 -13.85250854 251.52757263 -0.65621197 -12.53226757 253.87045288 1.19428301
		 -10.16239643 254.85244751 3.063538074 -6.6909852 253.50411987 5.64629221 -4.16416311 250.47988892 6.68806124
		 -5.96486807 248.45552063 6.72006512 -11.48052025 247.22123718 5.045669079 -14.18788528 248.63641357 2.21377993
		 -13.59900665 251.45202637 -0.605241 -12.32156086 253.71881104 1.111799 -10.036231995 254.67059326 2.91568899
		 -6.74266005 253.16238403 5.16824293 -4.68677711 250.7487793 5.54015017 -6.51362514 249.17356873 5.72849894
		 -11.11608791 247.73014832 4.6122818 -13.65497398 248.99917603 2.1992619 -15.22125244 251.90075684 -1.57270503
		 -13.16483116 255.28143311 0.56667399 -10.03199482 256.46392822 2.8915031 -5.89710188 254.92347717 6.10229397
		 -3.46821809 250.30830383 7.68325281 -5.47089577 247.31532288 7.83253813 -11.59282207 245.53372192 4.99844313
		 -14.9731226 247.29508972 1.512398 -4.92492294 256.14984131 6.34348106 -3.77375698 253.15960693 8.34407806
		 -4.0097298622 247.87994385 8.55339146 -3.18143201 243.19442749 12.5891304 -8.63038063 260.17199707 1.12871003
		 -13.45122147 258.22393799 -2.30922389 -16.88164711 252.85397339 -4.64611292 -17.075391769 244.75939941 -0.203462
		 -10.77539635 244.26649475 5.36481094 0 247.5070343 12.19327164 -2.25533509 247.13491821 11.52822399
		 -4.2510972 246.91062927 10.61700726 -5.89326286 246.77548218 8.8082819 -10.24174404 219.73320007 -2.99246192
		 -12.28568459 221.95646667 -1.43575895 -19.15076828 227.2492981 -15.43103981 -18.79447365 229.12487793 -12.85758972
		 -19.97315407 231.50036621 -21.37569618 -20.31171227 232.4803772 -17.94395828 -18.28254128 236.28125 -24.98588181
		 -18.69911003 237.12939453 -20.86413383 -15.24913597 245.57420349 -27.057601929 -16.57364845 245.91333008 -24.51754189
		 -14.9151144 254.74911499 -27.21141052 -16.14143753 254.6696167 -23.18832016 -12.29666901 225.4677887 0.010055
		 -17.9203701 232.60047913 -10.32752228 -19.35316086 235.55543518 -13.98713112 -17.70069313 246.94558716 -23.65334511
		 -17.16005516 250.69703674 -23.58177567 -16.76416206 254.39768982 -19.16625214 -16.66559601 252.77664185 -12.97858906
		 -18.95012093 247.063446045 -10.74548435 -19.21388435 242.063964844 -11.88221169 -18.92339325 239.76979065 -18.52851868
		 -17.76284218 242.30499268 -21.77653122 -18.60956383 247.052703857 -23.53426933 -17.91735649 250.94732666 -23.43664169
		 -17.78269577 254.10864258 -18.80005455 -17.33297539 252.39147949 -13.50689507 -19.037851334 247.074295044 -11.67903614
		 -19.40940094 243.053283691 -12.96907139 -19.4042778 241.99050903 -17.9394455 -18.22912407 242.92782593 -21.31155586
		 -16.33252144 250.43704224 -24.26861763 -15.1216011 250.045272827 -27.7947464 -17.39959908 241.61489868 -22.87110138
		 -16.33368492 240.67201233 -25.73361015 -19.71112442 247.23565674 -21.84576607 -19.63665581 250.84239197 -21.72964859
		 -19.15382576 252.14019775 -18.11244965 -18.52548409 250.89718628 -14.42764854 -18.90394211 244.25662231 -17.24065781
		 -18.23519325 247.20635986 -19.5213089 -17.73260307 248.66143799 -18.72812653 -17.51680374 249.73188782 -17.42915726
		 -18.656147 249.21676636 -14.20080566 -19.75873375 245.93609619 -15.45644379 -18.71472931 238.55395508 -9.39794636
		 -17.7660656 235.64596558 -5.59310198 0 224.39341736 10.46606922 -2.57541203 224.89610291 9.98435974
		 -17.14291954 252.91503906 -9.090174675 -18.7216053 246.21350098 -5.75386 -13.84046364 259.97821045 -7.20962715
		 -17.35252762 238.78155518 -1.90525603 -14.62894058 241.27459717 2.16820598 -6.57796907 232.61105347 6.59373283
		 -5.38632584 216.34164429 1.21146798 -7.48656702 216.81393433 5.34652281 -7.57157421 220.54400635 7.4891119
		 -5.277637 225.95288086 8.32358646 -7.95909691 228.29801941 5.62063599 -8.099762917 218.28862 -1.13262105
		 -10.10656834 219.0008392334 1.97517097 -9.90721226 222.58395386 4.13405514 -15.11491585 225.13818359 -6.46680307
		 -14.71071815 224.073318481 -9.33278847 -14.93766975 228.79116821 -4.6529479 -14.32247543 232.020004272 -1.92234898
		 -11.47855091 237.70324707 3.94144201 -13.47329044 234.91403198 1.045405984 -68.13154602 70.83169556 -9.33531189
		 -68.019546509 72.90428162 -6.3040638 -67.042495728 76.080192566 -4.99021387 -65.6291275 79.1390686 -5.96177578
		 -64.4716568 81.36352539 -9.39167976 -64.018135071 78.43647003 -13.6584034 -65.20927429 74.65299225 -14.97862816
		 -66.88671875 71.91364288 -12.65961647 -67.50566101 70.29224396 -9.088768959 -67.28889465 71.95021057 -6.047273159
		 -65.88565063 74.8376236 -4.49324512 -63.76764297 77.58727264 -5.86576605 -62.3482399 78.11719513 -9.17359734
		 -62.61435699 76.52574158 -12.52786541 -64.14689636 73.48397827 -13.96686172 -66.28425598 70.73696899 -12.51759624
		 -66.87083435 69.10512543 -8.78921127 -66.49755859 70.23749542 -5.90961409;
	setAttr ".vt[498:663]" -64.51080322 72.26461029 -4.39424419 -61.71620178 74.29921722 -5.08301878
		 -60.50120926 74.3199234 -8.36529732 -60.84069824 73.17125702 -11.39448071 -62.91651917 71.023422241 -13.080774307
		 -65.68600464 69.14083862 -11.93645 -66.46221924 67.11353302 -8.28549767 -65.83612823 67.7815094 -5.61191511
		 -63.55632019 68.62280273 -4.25554895 -60.77323151 69.24253845 -4.74236393 -59.61181259 69.92102814 -7.46123219
		 -59.99119949 68.45680237 -9.93715954 -62.21921158 67.58183289 -11.54076195 -65.18630981 66.9169693 -11.041230202
		 -65.71897888 64.21485138 -7.86196804 -65.19274139 64.76273346 -5.5239048 -63.18570328 65.22331238 -4.46184301
		 -60.93624115 65.83869934 -4.65419388 -59.86618805 64.95358276 -9.45118809 -61.96084595 64.4119339 -10.45872307
		 -64.42941284 64.068664551 -10.11077213 -28.3930645 21.49805641 14.93659401 -28.29598427 20.31849861 14.5880518
		 -28.61639404 19.31832123 15.22283077 -28.95605659 16.18033981 15.35666847 -16.21770287 15.64054585 -43.30610657
		 -16.0097198486 19.13041687 -43.48756409 -16.25272179 19.93947983 -43.15763092 -16.25539207 20.57523727 -43.73208618
		 -27.72602272 21.078849792 -25.49671173 -26.72942352 20.00023651123 -25.14476204 -26.98649979 18.98936081 -25.24628448
		 -25.7122879 15.61573696 -24.5342083 -20.061616898 15.70435905 -22.61986542 -14.17581081 15.76552486 -19.62122345
		 -12.86937141 19.42028999 -18.90759468 -13.23079967 20.54309273 -18.95669556 -12.24913597 21.58568954 -18.42346573
		 -26.21543121 21.2501564 -35.55993652 -25.37315559 20.10863113 -34.95963287 -25.47758102 19.21504593 -35.21500397
		 -24.2298336 15.39735031 -36.23838425 -17.78884888 15.51266384 -33.80509949 -10.6101656 16.049062729 -32.78786469
		 -9.7261343 19.36032677 -32.68357849 -10.12307262 20.56100655 -32.68035126 -9.54163837 21.17919159 -32.71065521
		 -29.22698021 30.51346016 -23.93453789 -27.021686554 28.60495949 -33.5545311 -17.44573784 28.7468605 -43.59955215
		 -9.24335003 29.25414085 -32.41954041 -12.070446968 29.92786407 -21.61213303 -32.56726456 21.73638535 12.34788132
		 -32.57247543 20.16504288 12.36876965 -33.25957489 19.046625137 12.89797306 -33.40462112 15.79400158 12.35048866
		 -22.35091019 21.26045609 15.2564621 -22.60999107 20.24034882 15.23758411 -22.62520409 19.10374641 15.87838173
		 -21.9942379 15.98180962 14.93018913 -22.45729065 35.038803101 -7.52285385 -31.10278511 32.87436295 -12.95866585
		 -13.61343288 31.38775635 -10.33952332 -32.12377167 21.019512177 -17.56181335 -11.7796011 21.15195465 -7.33087492
		 -17.66617584 20.99112511 10.63174057 -37.036022186 20.82746315 6.057524204 -31.22378922 20.021976471 -17.20166016
		 -36.64537811 19.73549652 5.78041887 -17.67448616 20.24438667 10.54918957 -12.23415184 20.52731895 -7.68306923
		 -17.34815788 19.3931675 10.78703403 -11.93529892 19.64117241 -7.48103189 -31.2086792 19.22625923 -17.35626984
		 -37.49456787 18.7074337 5.57846498 -18.99389648 34.38176346 -39.58607483 -10.84073067 28.74699783 -40.055152893
		 -10.72361946 20.87479782 -40.022468567 -11.25201702 20.15136337 -39.67397308 -11.2022047 19.35718918 -39.63951874
		 -23.84113312 28.24075317 -40.46373749 -22.31329727 21.10954857 -42.37445831 -21.92771339 19.88559532 -42.080417633
		 -21.96115494 19.2240448 -42.32866669 -13.47663593 33.82947159 -38.59208298 -23.54495811 33.11801529 -37.37683868
		 -24.81831551 30.55857277 -0.069085002 -33.27767944 28.63220406 -3.31267405 -16.048814774 28.99633408 0.40177
		 -13.14689255 21.18205643 -0.16842 -37.37804413 20.59511757 -7.070100784 -36.71411514 19.42196846 -6.70069408
		 -13.55850315 20.48085213 -0.26983401 -13.2425108 19.51980019 -0.106144 -37.029216766 18.50183296 -6.89500093
		 -42.17348099 158.37590027 -6.71669006 -37.21721268 15.96320057 5.47866821 -36.17068863 15.77543831 -7.68307304
		 -30.47800064 15.60743427 -16.81686783 -21.87603188 15.83019161 -42.066860199 -11.68763256 15.75366116 -39.59451675
		 -12.6597023 16.11077309 -7.39892387 -14.30856228 15.94589996 -0.67328799 -18.14522171 15.85042667 10.36075115
		 -15.93016911 20.38110733 6.1776228 -15.72046089 19.65119171 6.5311079 -26.93135834 27.032619476 7.96845102
		 -33.77139664 25.40676498 5.026523113 -19.88409805 25.9966011 8.46017933 -15.94961643 20.83515358 6.43171406
		 -38.51941681 20.49953079 -0.108333 -37.92844772 19.69431686 0.18275 -38.086921692 18.90941238 -0.23177101
		 -37.34030533 15.67052078 -0.31053799 -16.55648613 15.79019833 6.23202276 -27.72553253 15.73977757 8.57332039
		 -26.58385277 15.74246216 3.07980895 -24.94260979 15.66115189 -3.69135809 -22.35393333 15.71627617 -12.35446644
		 -70.075180054 68.13527679 -5.59816599 -74.80463409 69.41584778 -1.50530303 -81.64285278 68.74573517 -1.55954397
		 -87.86789703 66.85310364 -4.61391878 -92.18927765 64.85418701 -12.42702198 -87.23222351 63.94087982 -14.73784924
		 -80.56419373 66.1836319 -13.40613079 -73.94777679 66.25267029 -10.71008968 -69.68703461 65.36688232 -5.94599104
		 -74.40825653 65.20716095 -2.055491924 -80.58239746 64.0081481934 -2.58475089 -86.29124451 62.14104843 -5.39815712
		 -90.079589844 60.35335159 -11.83821774 -84.92565918 60.77582169 -14.0075759888 -79.74745941 62.24311447 -11.80173779
		 -74.037635803 63.49703598 -9.49080086 -68.66098022 61.67156982 -5.27869701 -73.60347748 61.90799332 -2.68453693
		 -79.64309692 60.40672302 -3.33693004 -84.92960358 58.77428818 -6.17111683 -87.49031067 56.079917908 -11.17897415
		 -82.82785034 57.42718124 -13.15761089 -78.37766266 59.036361694 -10.6295023 -73.31039429 60.31716156 -8.57144833
		 -68.50286865 57.40262604 -5.066744804 -73.54144287 58.37459183 -3.58065891 -79.03352356 57.50319672 -4.046695232
		 -83.90712738 56.14713287 -6.85178185 -84.52649689 53.21298218 -10.72239208 -80.65097046 54.4463501 -12.67288685
		 -76.59442139 55.80988312 -10.62720299 -71.84151459 57.034347534 -9.47544479 -70.90232849 53.31811905 -6.22740793
		 -73.5894165 55.30551147 -4.5484128 -77.14549255 53.73371506 -5.27273083 -80.91159058 53.2647171 -6.86798477
		 -80.40621185 51.33867645 -9.54339981 -78.64458466 52.34650421 -11.70125866 -75.029579163 52.63792801 -10.87437725
		 -71.58193207 53.94154358 -9.89266872 -69.80928802 70.59198761 -9.14821815 -75.6179657 81.9056778 -3.46018791
		 -82.82210541 81.40772247 -3.30579495 -88.45121002 79.16481018 -5.042962074 -94.13018036 76.28873444 -11.86935234
		 -90.76273346 75.24182892 -18.88269234 -80.97925568 75.99881744 -18.95469284;
	setAttr ".vt[664:829]" -68.22628784 80.21526337 -5.18880177 -67.080657959 82.50518799 -6.87993383
		 -67.4978714 84.33763123 -12.30816364 -71.062469482 81.1233139 -4.4758172 -69.41545868 84.84984589 -7.16355419
		 -69.40592194 77.26383972 -4.10724306 -69.34915161 72.53248596 -5.91371393 -69.10254669 71.7665863 -10.33548832
		 -71.77780914 72.48184967 -15.33737564 -72.80295563 72.21498871 -13.25504303 -76.37732697 72.7141571 -16.19534111
		 -74.39074707 73.37871552 -17.096834183 -71.32408142 74.80532074 -17.68533134 -74.90625 75.92002869 -18.79370689
		 -67.95722961 80.1656723 -16.62706947 -72.80083466 81.23026276 -18.22326469 -77.00010681152 81.086547852 -19.56925774
		 -82.3846817 74.72087097 -1.629444 -82.29376984 70.46378326 -16.10110855 -94.022186279 69.14437866 -12.93889523
		 -74.86432648 75.83836365 -1.59503806 -89.29772949 72.56539917 -4.70350885 -89.73825836 69.047355652 -16.9909668
		 -77.62648773 70.95448303 -13.77674198 -73.64845276 70.83951569 -11.64562607 -70.92881775 72.45707703 -2.95341897
		 -69.56341553 69.80088043 -8.2758913 -73.48252106 68.89610291 -11.2667923 -69.87733459 72.79459381 -4.52778578
		 -71.24196625 77.13251495 -3.089198112 -77.11766052 68.60054779 -13.088162422 -3.95052791 217.57569885 -2.24612403
		 -5.75344896 218.46954346 -4.81937981 -8.5413599 220.02557373 -7.52578211 -14.025927544 223.56199646 -11.81420326
		 -18.11192513 226.57929993 -16.45820045 -19.061050415 231.22142029 -22.8963623 -17.41362381 235.94400024 -26.6020298
		 -14.11728287 239.29318237 -29.60505486 -12.82505417 244.20594788 -30.60149956 -6.63588095 207.39401245 -3.64668608
		 -9.69984722 216.1237793 -8.016400337 -8.2392664 206.72773743 -5.83919811 -12.034215927 214.81710815 -10.2186079
		 -18.68889046 221.94192505 -19.32931328 -19.59942245 226.86985779 -25.043689728 -17.47727013 231.2905426 -33.016376495
		 2e-006 234.99157715 -40.06047821 -7.70272493 235.90843201 -40.43043518 -13.46757603 234.75032043 -38.64900208
		 -10.40698814 231.57919312 3.35776591 -8.63796234 234.84263611 5.75985718 3.0000001e-006 222.2880249 10.4102869
		 -3.39619899 222.63053894 9.91343975 -6.4026022 223.69610596 7.95366383 -8.75558758 225.64358521 5.133008
		 -11.35490322 228.67616272 1.59645295 -3.29776907 235.68981934 8.90090084 0.00053399999 235.80867004 9.30592442
		 -2.54445791 240.4908905 9.75198841 -5.25401688 237.61575317 8.13075447 -5.72715616 239.87556458 7.89649487
		 -3.010899067 241.88894653 9.18609142 -3.094621897 243.20980835 11.15066147 -4.71989822 245.89273071 10.79093456
		 -6.025405884 245.0029449463 9.50589466 -7.534832 242.84724426 6.62311411 -5.25571489 242.99229431 8.15023232
		 -4.42937279 242.47573853 8.2011261 -3.19008493 242.6124115 8.91266727 -2.85589099 243.46894836 10.073435783
		 -4.5272522 245.12988281 10.52940464 -5.288908 244.52851868 9.67463589 -4.14180613 243.80763245 8.496418
		 -3.909374 243.2664032 8.42769527 -3.38509488 243.34622192 8.68142128 -3.14421296 244.18296814 8.74105644
		 -3.70058799 245.24659729 9.066795349 -4.32930279 244.73803711 8.84558392 -12.87394142 238.099624634 -33.59809875
		 -17.26161194 233.13214111 -30.42142868 -19.07466507 228.53886414 -23.30836678 -17.57995224 225.13996887 -18.53246307
		 -12.71088123 249.49043274 -32.01374054 -12.47982311 255.020385742 -31.57090759 -0.029256999 266.3237915 -27.17869949
		 -6.043654919 265.33584595 -26.62669563 -11.72025108 259.96255493 -29.17247581 -14.1346302 258.9937439 -25.70705414
		 -15.28418159 258.79901123 -21.93245506 -15.39296818 258.46420288 -17.75957108 -14.71580887 258.13400269 -12.93621922
		 -12.2924881 264.25326538 -11.32638073 -10.67275238 264.87313843 -20.83430481 -10.73215866 263.26382446 -25.36675262
		 -12.94396019 261.59326172 -24.062021255 -13.43332672 262.061187744 -21.0063476563
		 -14.011870384 261.67797852 -13.7852211 0.00053399999 268.97979736 -14.85458374 -6.31669521 268.023498535 -15.17645168
		 -11.32665443 265.45037842 -16.098995209 -13.87165546 262.1166687 -17.15731621 -62.040393829 60.65865326 -6.85194302
		 -59.7784729 67.51989746 -5.70971489 -59.36048126 67.52765656 -7.092619896 -59.38111115 67.025062561 -8.40937805
		 -59.22312546 65.29862976 -8.15940189 -59.17571259 63.9319191 -7.80879402 -59.30485916 63.77937317 -6.65878296
		 -59.79331207 64.1756134 -5.68740797 -59.78494263 65.75944519 -5.62323618 -59.25401306 65.59037781 -6.85592985
		 -60.58333588 63.22153473 -5.00017595291 -59.55801773 62.051509857 -6.48887205 -59.50163269 62.99526978 -8.54824734
		 -61.60889435 62.11237335 -9.22083187 -63.62273026 62.33592606 -9.16521263 -64.3453064 61.98510361 -7.37087297
		 -64.44444275 62.7822876 -5.55420113 -62.7562027 62.46439743 -4.60235691 -74.95547485 50.46295166 -7.6931448
		 -11.89287758 251.28572083 2.10592294 -11.36662102 252.49530029 2.14184809 -9.90454483 252.64840698 3.29411793
		 -7.99180079 252.21455383 4.23725605 -7.78266716 251.010391235 4.6116662 -8.18093872 249.86965942 4.64406204
		 -10.26185894 249.61853027 3.80099392 -11.7694521 249.82441711 2.50357008 -10.12648106 251.2043457 3.72919106
		 -85.34300232 158.5438385 -38.31222153 -80.0047912598 155.87374878 -24.92235184 -69.66553497 150.63539124 -15.07382679
		 -57.35054016 140.050018311 -23.53074455 -53.7754364 140.43832397 -39.20586014 -54.54268265 141.70675659 -56.15851974
		 -70.084358215 149.070236206 -61.15141678 -82.064094543 155.32321167 -54.97179031
		 -85.12837982 157.32420349 -38.67277527 -79.76246643 154.87915039 -25.79139709 -70.36300659 149.30949402 -15.91874218
		 -57.86857986 140.21514893 -23.62848091 -55.32315063 140.21897888 -38.73287582 -55.62858582 141.67121887 -55.20539474
		 -69.84020996 148.43534851 -59.79159546 -81.73683929 154.4052887 -53.68890762 2.18043399 242.88130188 13.17973423
		 1.42310596 239.1592865 9.99447441 1.30702996 232.20321655 9.50743008 1.27472401 230.23002625 9.04949379
		 1.61190104 227.69296265 9.92426777 3.96656489 219.58750916 9.70827389 3.86250591 215.67573547 7.08033514
		 2.87440896 215.62559509 2.11872101 2.49041796 216.43156433 -0.19189499 6.59382486 215.77818298 -6.72156382
		 3.99061704 208.95863342 -3.71300101 2.81001401 204.46676636 -2.49040008 4.581285 201.067367554 -0.40294299
		 6.97600698 197.584198 0.74625999 7.47387314 197.55310059 2.078365088 8.31940842 195.98014832 5.41557217
		 12.7595768 184.72377014 12.46244335 15.84441566 176.63882446 16.50385284 16.92417908 150.67167664 19.81495857
		 13.54837704 138.78189087 19.94993973;
	setAttr ".vt[830:995]" 11.031585693 127.44332123 20.0035419464 9.68770981 114.17248535 19.92568207
		 9.34593296 110.67900848 19.29977608 9.42962265 109.89957428 17.33486748 9.28642845 102.8826828 16.30799294
		 2.12455106 80.65861511 -5.95439816 5.87654591 85.6908493 -23.54582024 8.35654926 98.4532547 -33.76483536
		 9.67558479 111.82678986 -34.91447449 10.28869724 112.50174713 -36.80930328 9.80961895 116.21476746 -36.47990036
		 10.90024757 127.84181213 -38.59896851 12.61332035 138.52331543 -43.74647141 15.074255943 147.39707947 -54.57308197
		 16.016799927 159.15257263 -65.45546722 15.12679958 186.018447876 -74.064781189 13.53765011 197.19602966 -71.22644806
		 14.38102341 214.12171936 -63.63512039 16.69303894 224.0051269531 -57.69041443 15.53355598 226.083221436 -55.82553101
		 10.54886818 224.82951355 -53.21858978 8.62997913 229.84744263 -44.43703842 8.19240665 241.84898376 -35.59104919
		 7.22886276 248.97108459 -35.37701416 6.9563961 255.96670532 -34.78969574 6.53918982 261.75506592 -31.58399773
		 5.94235516 267.28775024 -21.16761971 6.897645 267.021331787 -8.55270767 7.1485281 263.38650513 -1.050400972
		 3.87068892 258.17965698 5.86745119 2.58853602 254.1592865 8.57320309 2.3607769 250.23313904 8.63031578
		 81.936409 165.79098511 -38.67547607 75.089332581 163.43434143 -22.72202492 65.081253052 158.33659363 -15.034520149
		 51.54300308 148.45663452 -23.37221527 50.93010712 145.63743591 -39.36682129 52.04914093 144.10322571 -55.58078003
		 65.91529846 151.89250183 -63.37825775 78.19470978 162.4442749 -56.96235275 85.93314362 153.4627533 -39.14250183
		 81.099838257 152.045303345 -27.47701454 71.24456787 147.24365234 -16.96203232 60.0033721924 139.033340454 -24.09528923
		 57.62706375 135.62400818 -37.22062683 60.095901489 135.15049744 -51.18364716 71.97613525 141.95588684 -56.89234161
		 83.39221954 149.90951538 -52.44990921 88.13360596 146.20858765 -38.98680878 83.87332916 145.18211365 -27.42251968
		 73.92396545 140.47898865 -19.21122551 64.39320374 133.61737061 -26.26104546 59.088817596 128.86076355 -37.14567947
		 64.90725708 130.72087097 -48.54841614 74.63624573 135.30007935 -57.63743973 85.33286285 142.66485596 -51.27511978
		 92.85610199 140.13694763 -38.69102097 88.41594696 139.7950592 -25.12833023 76.40153503 134.075942993 -21.36664581
		 66.93526459 128.38983154 -26.65081406 59.62651062 123.13170624 -36.99479294 66.10397339 124.72330475 -49.32939529
		 77.050163269 129.35147095 -56.9499588 87.12905121 135.57086182 -49.81323624 97.44860077 124.86323547 -34.16734314
		 92.36869812 125.24626923 -20.1571846 78.79833984 121.69306946 -15.55944633 68.17893982 117.43984222 -22.26340485
		 62.87012482 114.23995972 -33.33238983 67.57352448 113.99589539 -45.78259277 79.51367188 116.84130096 -51.87179184
		 92.27375031 121.44257355 -47.36303329 96.20108795 108.7669754 -28.035926819 93.15213776 109.64896393 -18.210989
		 83.22272491 108.77584076 -12.51757526 72.47023773 106.36270905 -16.93266487 69.49440002 104.43712616 -27.87162971
		 72.91551971 103.53918457 -38.62371063 83.72626495 104.4675827 -44.48873138 93.61605072 107.025558472 -38.0057945251
		 95.47315216 94.29665375 -18.43484306 90.74240875 95.64735413 -11.2810421 83.400383 96.75798798 -7.56482601
		 74.37310028 97.32030487 -10.099585533 72.95330048 96.088539124 -19.086267471 76.35255432 94.88793182 -26.25176048
		 83.70848083 93.50305176 -32.1432991 91.89768982 93.51585388 -26.68725204 93.85991669 82.14354706 -12.5678978
		 89.31098175 84.087562561 -6.6292038 83.23207855 86.007598877 -4.46317387 74.24622345 88.1955719 -7.029600143
		 72.212883 86.94689941 -15.25500011 77.081069946 85.9769516 -20.61093903 83.25095367 81.77351379 -21.32815933
		 90.72197723 81.45405579 -20.56415939 36.90647888 83.41780853 -6.52011108 33.05896759 83.10732269 6.49857807
		 20.94981003 80.53621674 11.43351364 8.8601799 76.64521027 6.81489897 4.59601212 76.079971313 -5.85397387
		 8.31274319 78.42475891 -18.54154205 20.68719292 80.34786987 -25.2253685 30.71640968 81.95905304 -18.42762184
		 36.84050751 73.016357422 -7.47809792 33.78125763 72.69736481 4.0016741753 22.38052559 71.37593842 8.7383976
		 11.43429279 70.074165344 3.55355406 6.79475021 69.58655548 -7.59422016 9.73996544 69.7746048 -20.15950394
		 22.29568672 71.25428009 -26.19431114 31.95458031 72.36761475 -17.026031494 35.74545288 68.042457581 -9.88081074
		 33.7887001 67.88884735 2.23003197 21.74046516 66.69075775 7.27611685 11.60930729 65.61754608 0.37744799
		 7.48508883 65.17808533 -9.86438274 9.68555069 65.37065887 -21.98814774 22.45153999 68.5515976 -28.22287941
		 31.43355751 67.57432556 -19.62303162 34.91210556 63.29846954 -12.84051418 33.42777634 63.26568985 -0.86111897
		 21.35509491 61.82086563 4.89474487 11.35588455 62.16672897 -2.72387099 7.38747692 61.91580963 -12.83110714
		 9.65942764 62.14250946 -25.028709412 21.66887665 64.045570374 -31.14531898 32.43141937 63.12937546 -23.85272026
		 34.26158524 55.94724274 -18.88449478 30.25092316 55.75522232 -9.38689899 20.85482216 55.30641556 -2.73845911
		 11.43213177 54.83808136 -9.53162384 7.70492411 54.65270615 -18.84486771 10.022115707 54.64883423 -29.73045349
		 20.8201046 55.19197083 -35.18870926 30.27292252 55.70823288 -28.31924248 31.3066597 41.95540237 -25.43556786
		 27.46046638 44.24568176 -15.32241535 20.40246582 43.06180191 -13.49937153 12.90604877 42.02142334 -17.8134594
		 10.043029785 42.031932831 -25.30862236 12.051571846 41.95491791 -33.67858505 20.38082695 41.98581314 -37.017559052
		 28.010799408 41.96741867 -32.91812134 27.38798141 41.84760284 -15.86770535 20.45353699 41.28511047 -14.067908287
		 13.55445004 38.68035126 -19.22465324 10.020661354 37.96891403 -24.82168961 11.39531231 38.98584747 -34.74970627
		 20.34443283 38.66785049 -38.19234085 28.37902451 37.62197876 -34.24969864 31.082639694 39.033561707 -25.22177887
		 27.73976135 38.78063965 -24.6289978 26.15420341 41.12023544 -16.86883354 20.71949387 40.78972244 -14.43999386
		 13.922122 38.038738251 -20.28443718 11.14382267 37.30203247 -24.79780006 12.46873569 36.56935883 -34.069599152
		 20.086614609 37.54547119 -37.36688995 26.99352074 36.30591965 -31.41089058 29.60806465 178.48040771 7.54846287
		 24.30355835 188.73197937 5.20038605 56.69716263 192.62698364 -12.62987232 46.29985809 202.11621094 -14.9617548
		 67.68278503 200.59185791 -30.50389481 54.81583023 210.44261169 -30.91897011;
	setAttr ".vt[996:1161]" 59.92317963 200.038879395 -52.95879745 50.25074768 209.87268066 -50.45905304
		 44.38111496 193.69725037 -65.6657486 37.62301254 205.055007935 -62.011325836 24.44927216 226.39599609 -49.14356995
		 27.89339828 224.37704468 -50.99433517 32.43601608 221.37608337 -30.18933678 35.028812408 219.8939209 -30.57978821
		 26.099903107 213.90338135 -16.76356316 28.88325691 211.51046753 -15.81480408 11.91749954 201.26959229 -2.10885096
		 14.31349659 200.06489563 0.126625 31.43206978 225.69241333 -45.27744293 28.019174576 225.35955811 -44.27487183
		 10.23335648 190.90365601 8.48426342 19.30310059 195.35635376 2.18385291 36.59597397 207.44850159 -16.94094467
		 43.13465881 215.086013794 -31.54468727 28.98176956 214.89875793 -59.1771431 40.080936432 218.83692932 -47.62417603
		 18.2976799 113.81495667 16.43628693 19.20978355 115.26137543 17.16772461 27.44916916 116.016487122 10.37630463
		 29.82154465 117.31089783 11.91262627 33.082084656 118.25601196 0.66032302 34.44582748 118.80274963 0.633362
		 31.69435692 120.41710663 -13.41578484 33.25274277 120.90071869 -14.31153584 28.65774345 120.094665527 -25.32742882
		 29.012899399 121.56885529 -25.1477375 19.53891563 116.99577332 -32.6356163 19.48459053 117.50671387 -32.85985565
		 18.39463997 117.32515717 17.16834641 29.053533554 119.63409424 11.92946625 34.044734955 122.91994476 0.14683001
		 33.95093536 125.022949219 -15.044691086 28.21661377 124.46156311 -25.41065216 19.43315506 120.92552185 -33.46883011
		 20.92117882 128.233078 17.21809006 24.65423203 138.2565155 12.47971439 29.49291992 128.48475647 8.91196728
		 35.20307541 129.48646545 -2.53532195 34.93918991 129.92390442 -15.58102226 28.62229538 130.1005249 -26.59465218
		 21.13943863 128.71083069 -35.99239349 48.7513237 149.85713196 -37.33942413 3.11937594 78.44787598 -5.39131784
		 7.97233105 80.20889282 8.68989372 20.0170784 85.77765656 12.95746136 32.45067215 91.35171509 8.62802124
		 36.081485748 92.64611053 -5.91636801 30.032560349 90.08379364 -19.52121735 20.07749939 85.31743622 -27.12921333
		 6.70026779 82.066551208 -18.27145195 20.41013336 90.33066559 -29.53354454 29.84522629 98.68428802 -20.90680313
		 34.630867 103.021980286 -5.71954918 30.96763039 97.76515961 9.3502388 19.44542313 91.33415985 14.36212635
		 6.96143293 84.62099457 10.87440109 18.58777618 106.0073165894 15.56599998 20.31560707 103.031433105 -32.67269135
		 27.071510315 109.16196442 -22.86645126 31.80016327 112.98257446 -10.9854908 27.24391365 109.56816101 10.74995518
		 33.061233521 112.91822052 0.60334003 28.5647068 103.44898224 10.54388237 19.12086678 98.58135986 15.2332058
		 8.73545933 94.33778381 14.94286156 32.88600922 106.80991364 2.041927099 78.53670502 176.72766113 -34.86758804
		 67.89060211 170.66862488 -19.6406517 70.33685303 173.48483276 -56.057933807 52.50798416 163.25564575 -65.095016479
		 40.5904541 184.18894958 -2.29765105 34.9384613 194.18904114 -3.78832412 21.70951843 206.21237183 -6.88167286
		 19.3773365 207.13475037 -9.16604137 28.094230652 200.91697693 -5.7273016 50.19828796 161.88482666 -13.79990005
		 48.29779816 151.6505127 -25.060832977 18.13761711 164.3392334 19.18009949 16.14578056 172.3755188 -72.60150909
		 33.2664566 164.086761475 4.63563681 74.63702393 187.66929626 -32.87688828 63.54615784 180.74154663 -14.1838541
		 66.73947144 186.52792358 -55.18135452 48.97710037 179.5305481 -66.44802856 43.47890472 171.6681366 -6.0011320114
		 45.1975975 152.58312988 -49.68943787 31.69546127 136.18359375 4.86474419 36.26810074 135.79243469 -5.20629311
		 36.79985046 136.80741882 -16.81749153 32.40732574 136.24079895 -30.66466141 24.69711113 137.013534546 -41.50865936
		 38.78052902 141.81678772 -37.48661423 37.58710098 141.24659729 -6.49483395 12.68492603 205.93002319 -67.78888702
		 22.60988235 206.70495605 -65.68334961 25.92639923 199.53756714 -68.043075562 29.93137741 189.1235199 -71.24862671
		 32.32123947 175.46551514 -70.55885315 32.70870972 161.32150269 -64.4616394 31.38624382 146.71461487 -51.26682663
		 34.046783447 141.99287415 1.75609195 42.14383316 146.13702393 -15.4836874 31.24933815 148.59790039 5.60978079
		 11.37993145 201.028579712 -3.91547704 18.63022041 207.2596283 -10.35435104 24.6920166 213.61990356 -19.15943146
		 29.41730309 220.24545288 -31.82877541 25.65192223 226.19996643 -42.32907486 22.55608749 226.85520935 -47.69995499
		 10.073874474 204.55593872 -5.57537508 14.20740891 209.73913574 -10.42867374 20.64357185 217.2769928 -19.036405563
		 21.9428196 222.86956787 -28.47718048 19.019922256 229.10678101 -36.98004913 16.91495705 231.79943848 -41.69469452
		 1.244488 231.13980103 9.22715378 1.48599303 228.94285583 9.59246445 6.066027164 229.44812012 7.048190117
		 3.90099907 229.85342407 8.30402374 2.60706496 230.5340271 8.77811146 4.96272802 230.55651855 7.72024488
		 2.85738897 229.28030396 8.98800659 4.5522089 228.10092163 8.41485882 13.86776638 251.50743103 -0.66797203
		 12.48176956 253.88415527 1.18397999 10.13800812 254.86714172 3.043037891 6.65605021 253.51933289 5.63499022
		 4.14974785 250.49040222 6.6815691 5.957726 248.44013977 6.75128317 11.47548676 247.21763611 5.025290966
		 14.17331696 248.61775208 2.20093703 13.61645508 251.45278931 -0.56305498 12.31400108 253.68231201 1.068156958
		 10.024394989 254.68400574 2.90764689 6.73954201 253.1656189 5.16665316 4.68432713 250.74832153 5.5397191
		 6.51292086 249.17936707 5.75483608 11.11743355 247.73963928 4.61728287 13.65200329 249.0028991699 2.20177603
		 15.22276306 251.89836121 -1.56961405 13.1581068 255.28591919 0.55995297 10.029618263 256.46212769 2.88862991
		 5.90036297 254.92501831 6.10767221 3.47250199 250.31550598 7.6808219 5.47547007 247.32203674 7.83739281
		 11.59872913 245.55612183 4.99019909 14.95035934 247.31019592 1.54613197 4.92448616 256.14956665 6.34280777
		 3.86426091 253.18026733 8.2685194 3.98957205 247.91770935 8.53294945 3.2396121 243.23028564 12.49197483
		 8.63157368 260.17327881 1.13015103 13.44275188 258.21826172 -2.31387305 16.86766434 252.80712891 -4.65626192
		 17.073795319 244.75892639 -0.204634 10.77326107 244.26679993 5.36042023 2.26476908 247.13432312 11.52385712
		 4.26842594 246.88188171 10.634202 5.88411999 246.76835632 8.80807114 10.24929428 219.76187134 -2.96578407
		 12.28644085 221.95625305 -1.43553603 19.1447773 227.25895691 -15.42911434;
	setAttr ".vt[1162:1327]" 18.81690025 229.12744141 -12.87832355 19.95437241 231.50430298 -21.36533928
		 20.31507111 232.48109436 -17.9438076 18.27736473 236.28096008 -24.9828167 18.70719147 237.13157654 -20.8646698
		 15.27519894 245.57922363 -26.97144127 16.58193779 245.94883728 -24.50039291 14.91573906 254.74923706 -27.21163177
		 16.14237022 254.66976929 -23.18856049 12.2937088 225.46798706 0.0085239997 17.92951775 232.60348511 -10.32882309
		 19.36353302 235.58970642 -14.028356552 17.66744804 246.90342712 -23.64707756 17.16129875 250.69883728 -23.58682442
		 16.76830292 254.40211487 -19.16786575 16.68374443 252.78479004 -12.98737144 18.95147705 247.063751221 -10.74540615
		 19.20755577 242.064300537 -11.88241673 18.92332268 239.76979065 -18.5284996 17.7735424 242.30541992 -21.78061676
		 18.61060905 247.051727295 -23.53904533 17.9216423 250.95155334 -23.42560577 17.84200096 254.098922729 -18.76992035
		 17.24799728 252.47711182 -13.53423119 19.036052704 247.074630737 -11.67561531 19.4177494 243.051620483 -12.9671936
		 19.40263557 241.96513367 -17.86963081 18.31149864 242.890625 -21.2872963 16.36348724 250.47683716 -24.27672386
		 15.11414528 250.19393921 -27.8158226 17.39195824 241.6111908 -22.90962601 16.28880692 240.74313354 -25.77758598
		 19.69172287 247.23370361 -21.80856514 19.62013435 250.84065247 -21.74202156 19.16363907 252.24781799 -18.11208344
		 18.52989769 250.89454651 -14.42945766 18.95832062 244.28189087 -17.25860405 18.25353813 247.21258545 -19.51424408
		 17.74173927 248.66357422 -18.7268486 17.5501976 249.76483154 -17.42941666 18.65628624 249.21109009 -14.20693588
		 19.75369644 245.93649292 -15.45651054 18.70266151 238.55615234 -9.39810085 17.74561691 235.6512146 -5.55987597
		 2.57561588 224.89619446 9.98502159 17.14963913 252.90086365 -9.063714981 18.72619438 246.21138 -5.76814508
		 13.87634945 259.9487915 -7.259305 17.34413338 238.78517151 -1.91107404 14.64690208 241.28564453 2.14971805
		 6.58053589 232.48298645 6.58415985 5.36776781 216.33293152 1.23010802 7.48642397 216.81880188 5.36513281
		 7.56927776 220.54385376 7.48715782 5.27774096 225.95291138 8.32373047 7.95889616 228.30540466 5.62104797
		 8.29833221 218.36717224 -1.15210903 10.094466209 218.98638916 2.0048620701 9.90704155 222.58395386 4.13394213
		 15.11070538 225.13607788 -6.46786594 14.71994972 224.074859619 -9.31860161 14.9236412 228.8405304 -4.59612608
		 14.32345867 232.01965332 -1.9217 11.43094444 237.63600159 3.95989609 13.47280312 234.91423035 1.045024037
		 68.14067078 70.82171631 -9.34844971 68.0082244873 72.904953 -6.27663422 67.043045044 76.080810547 -4.98460722
		 65.5984726 79.14115143 -5.98194981 64.46231842 81.3487854 -9.39695835 64.01625824 78.43247223 -13.66602612
		 65.19821167 74.68939972 -14.9944458 66.88187408 71.91653442 -12.65227795 67.51409912 70.28456116 -9.0029182434
		 67.31221771 71.99503326 -6.075885773 65.89351654 74.85951233 -4.49489689 63.77007675 77.58304596 -5.87044907
		 62.35814285 78.13093567 -9.16924667 62.61302567 76.50537872 -12.53288841 64.18965912 73.45890808 -13.95465755
		 66.28005219 70.73867798 -12.48593235 66.88053131 69.096687317 -8.76477432 66.51426697 70.29537964 -5.94053507
		 64.50937653 72.26508331 -4.40025187 61.73987579 74.34227753 -5.098388195 60.51670074 74.31401062 -8.36555767
		 60.83679962 73.18212891 -11.36139107 62.93950272 71.022651672 -13.076587677 65.6815567 69.14373779 -11.93097305
		 66.47148132 67.17195129 -8.25065613 65.84314728 67.81619263 -5.64410114 63.54763794 68.62741089 -4.26165485
		 60.84815598 69.24047089 -4.68153906 59.6116333 69.92076874 -7.48456717 59.99277878 68.46906281 -9.94070339
		 62.21459961 67.58475494 -11.53420734 65.19133759 66.9200058 -11.01088047 65.71890259 64.2148819 -7.86195993
		 65.26545715 64.74022675 -5.59948015 63.18589401 65.22319031 -4.46030998 60.92334366 65.83744049 -4.66114902
		 59.86507034 64.95343018 -9.4522543 61.94221497 64.42948914 -10.45977306 64.42907715 64.069076538 -10.11006737
		 28.38150024 21.50891685 14.92499828 28.30601501 20.34420776 14.62397385 28.58024025 19.35378647 15.1947813
		 28.92155266 16.19639397 15.28293896 16.21928024 15.65904236 -43.29547882 16.0094509125 19.13054466 -43.48745728
		 16.25747681 19.95451164 -43.19164276 16.29677773 20.59972954 -43.7327919 27.70661354 21.088739395 -25.49224091
		 26.84843254 19.98044777 -25.17431641 26.99433136 18.9486866 -25.25053406 25.71167564 15.62916565 -24.53393555
		 20.061616898 15.70440388 -22.61986542 14.16627789 15.78958607 -19.61877251 12.88596535 19.41620064 -18.90838242
		 13.21864796 20.55036736 -18.9292984 12.30856323 21.50387192 -18.42100716 26.20847321 21.32076073 -35.5334549
		 25.41753769 20.06886673 -34.95576096 25.47108078 19.21403122 -35.2134819 24.19887733 15.43683624 -36.23326111
		 17.68181419 15.51559067 -33.66343307 10.67441082 16.091930389 -32.79667282 9.7248497 19.32106781 -32.68606186
		 10.074744225 20.57016373 -32.67671967 9.54680634 21.18489265 -32.71103287 29.23978996 30.52543068 -23.88986397
		 27.017101288 28.60443878 -33.55324936 17.44641304 28.80867004 -43.56760406 9.24521065 29.2533989 -32.41957855
		 12.074156761 29.92701149 -21.61294746 32.5491333 21.75868416 12.32647705 32.57765961 20.16474724 12.37346172
		 33.26109314 19.015047073 12.86585236 33.3976059 15.82926941 12.34568787 22.35865974 21.26225662 15.24876022
		 22.60880089 20.24318314 15.24204922 22.62942123 19.10379982 15.83079338 21.9982338 15.98931122 14.92453289
		 22.50147057 35.03704071 -7.51113892 31.10137367 32.87476349 -12.96079063 13.66872406 31.38657761 -10.14171791
		 32.13750839 21.068527222 -17.57927704 11.82613754 21.1284008 -7.33243895 17.65061378 20.98336029 10.63859081
		 37.03143692 20.86905861 6.039577961 31.21953011 20.023050308 -17.19650078 36.71050262 19.73074722 5.80516005
		 17.66790009 20.24793243 10.55243111 12.22840691 20.5277195 -7.68301582 17.35461235 19.39038467 10.78397465
		 11.9317522 19.64216423 -7.48098707 31.2109108 19.22662163 -17.35884666 37.40115356 18.75915527 5.58030987
		 18.99422073 34.38247681 -39.58699036 10.82445717 28.73805237 -40.032711029 10.73366356 20.88322258 -40.017719269
		 11.15041542 20.091875076 -39.69487381 11.19328403 19.35877609 -39.64336777 24.015480042 28.1196022 -40.28856277
		 22.30071259 21.11625671 -42.35954285 21.97757721 19.86294746 -42.054473877;
	setAttr ".vt[1328:1493]" 21.9544487 19.22001266 -42.32112503 13.479146 33.82767868 -38.58993149
		 23.54739761 33.11992645 -37.37928772 24.81825638 30.55792236 -0.069352999 33.30761337 28.61324692 -3.33524895
		 15.9702034 28.94714546 0.38985699 13.15348721 21.18744087 -0.17059 37.29802322 20.48026276 -7.090560913
		 36.7334404 19.43290329 -6.69182396 13.53783131 20.48241043 -0.304245 13.23584175 19.53832054 -0.114817
		 37.035381317 18.50277901 -6.89657593 42.19596863 158.35993958 -6.75243616 37.16191864 15.89039803 5.47473288
		 36.1720047 15.77299595 -7.6836648 30.46731758 15.61781597 -16.81850624 21.87230301 15.83302784 -42.06269455
		 11.69667053 15.76637936 -39.59011841 12.65784645 16.12327957 -7.40893221 14.3101263 15.94775963 -0.67345798
		 18.12664795 15.86988258 10.35767269 15.92839813 20.37617874 6.17745781 15.69580936 19.58938217 6.546031
		 26.9234581 27.047008514 7.94317198 33.76616669 25.41041756 5.026604176 19.88401794 25.99674416 8.46026993
		 15.9655962 20.83108521 6.45730305 38.52878952 20.49592209 -0.107658 37.93074799 19.69230461 0.18318801
		 38.13911819 18.85899925 -0.225862 37.33816147 15.67336369 -0.31027201 16.57981873 15.78654575 6.28944206
		 27.54966927 15.7413578 8.57283211 26.62592125 15.73939991 2.93568206 24.94256973 15.65973759 -3.69134498
		 23.33280754 15.71629143 -11.87584686 70.1114502 68.033592224 -5.49313879 74.87910461 69.43654633 -1.49005997
		 81.65077209 68.73714447 -1.563164 88.0068283081 66.86695099 -4.69360924 92.17464447 64.8622818 -12.41955185
		 87.21047974 63.94712067 -14.73721886 80.61780548 66.22769165 -13.43987083 73.9684906 66.22498322 -10.71107101
		 69.68612671 65.36540222 -5.93677187 74.40831757 65.20729065 -2.056289911 80.58271027 64.0076675415 -2.58287191
		 86.29246521 62.14020157 -5.39635992 90.060188293 60.3612709 -11.87209034 84.99117279 60.77603912 -14.025648117
		 79.76228333 62.2217598 -11.80010605 74.037986755 63.49736023 -9.49011707 68.66754913 61.66876602 -5.19748878
		 73.59329224 62.019706726 -2.66064501 79.64344788 60.40623856 -3.33505011 84.93017578 58.77386475 -6.17026281
		 87.49029541 56.079940796 -11.17897415 82.8277359 57.42721176 -13.15784359 78.37771606 59.036361694 -10.62939453
		 73.31021118 60.31720734 -8.57213402 68.45821381 57.36214066 -5.14438677 73.50565338 58.31266785 -3.59822512
		 79.033439636 57.50334167 -4.047112942 83.90708923 56.14716339 -6.85183716 84.52606201 53.21372986 -10.72246265
		 80.65170288 54.44631958 -12.67046738 76.59453583 55.8097496 -10.62689495 71.91178131 57.052570343 -9.46938992
		 70.90265656 53.31850433 -6.22786617 73.58901978 55.30369568 -4.54352999 77.21360016 53.66568375 -5.31523085
		 80.89915466 53.22846222 -6.88841486 80.40627289 51.33850861 -9.543396 78.66976929 52.401371 -11.72459507
		 75.067359924 52.50004959 -10.85306168 71.58600616 53.94452286 -9.88275623 69.81013489 70.59272766 -9.1467247
		 75.62444305 81.90861511 -3.46047091 82.74500275 81.38327789 -3.2833569 88.57311249 79.16514587 -5.12310886
		 94.1388855 76.28949738 -11.86662769 90.76934052 75.23778534 -18.87163162 80.97768402 75.93996429 -18.93492889
		 68.19907379 80.080299377 -5.14649105 67.1131897 82.51293182 -6.8620019 67.49795532 84.33751678 -12.30810547
		 71.068763733 81.095535278 -4.46075583 69.4154892 84.84980011 -7.16361809 69.40346527 77.26361084 -4.10294819
		 69.37850189 72.45534515 -5.86232185 69.11138916 71.75154114 -10.35021687 71.78186798 72.49368286 -15.35484982
		 72.83229828 72.22050476 -13.28189182 76.37718964 72.7155838 -16.19468498 74.39076233 73.37882233 -17.096733093
		 71.33508301 74.83946228 -17.69936943 74.90627289 75.92010498 -18.79345894 68.0070495605 80.12770844 -16.67316246
		 72.80158234 81.22975922 -18.2214489 77.044151306 81.079040527 -19.58258057 82.24313354 74.69445038 -1.59872305
		 82.28057861 70.49671936 -16.12488174 94.013290405 69.14913177 -12.94760418 74.87577057 75.84133911 -1.59467399
		 89.29820251 72.56542206 -4.70279408 89.81851196 69.1830368 -17.065530777 77.6582489 70.93906403 -13.80858517
		 73.73368835 70.76674652 -11.68198872 70.92767334 72.45703125 -2.95231891 69.55665588 69.82591248 -8.31132412
		 73.60726166 68.84719086 -11.32803726 69.90085602 72.78450775 -4.4678359 71.21112823 77.084381104 -3.093246937
		 77.082366943 68.67969513 -13.092196465 3.95100594 217.57331848 -2.24710202 5.7492342 218.47601318 -4.82046795
		 8.55802059 220.031707764 -7.54156494 14.016545296 223.57023621 -11.8201046 18.10388565 226.58772278 -16.46929932
		 19.062194824 231.22142029 -22.89664841 17.40643883 235.96946716 -26.59622955 14.1186533 239.29347229 -29.60594559
		 12.81951809 244.20518494 -30.59133911 6.63729 207.40638733 -3.67875791 9.67211723 216.13201904 -8.0089712143
		 8.24437237 206.7272644 -5.83422613 12.032963753 214.8170929 -10.21959019 18.69923592 221.94906616 -19.33584023
		 19.63191605 226.76477051 -25.05443573 17.45952797 231.25860596 -33.16176605 7.68549585 235.88215637 -40.45313263
		 13.47986412 234.75341797 -38.64315796 10.38773537 231.57115173 3.37645292 8.63833904 234.84254456 5.76034594
		 3.23094797 222.51179504 9.98055744 6.39934683 223.70402527 7.95468092 8.75590038 225.64363098 5.13328886
		 11.38144779 228.70584106 1.56078899 3.27403688 235.70436096 8.91912842 2.53218508 240.49397278 9.74535179
		 5.26580286 237.60827637 8.11997128 5.72841692 239.87576294 7.89921284 3.034497023 241.93539429 9.16269875
		 3.074774027 243.20860291 11.15499306 4.71972799 245.9006958 10.79137802 6.020329952 245.0043334961 9.50178909
		 7.53493023 242.84724426 6.62327623 5.27032614 242.97836304 8.14604282 4.429533 242.47572327 8.20169735
		 3.17331505 242.55593872 8.93678379 2.84702206 243.46159363 10.074374199 4.52248716 245.18185425 10.50985909
		 5.29597712 244.54644775 9.65570641 4.14098406 243.81095886 8.4977684 3.90970802 243.26913452 8.43924904
		 3.36672711 243.3293457 8.67868042 3.14808702 244.1837616 8.74697971 3.700804 245.24916077 9.065815926
		 4.33025599 244.73876953 8.8437767 12.88194275 238.10569763 -33.60186005 17.27581406 233.1386261 -30.42557144
		 19.068294525 228.53860474 -23.30879211 17.60264206 225.18710327 -18.55409431 12.86983967 249.51625061 -31.85409927
		 12.46816826 255.093765259 -31.56111908 6.23476124 265.33847046 -26.46393585;
	setAttr ".vt[1494:1551]" 11.72012711 259.96243286 -29.17238617 14.1351347 258.99404907 -25.70726776
		 15.26537514 258.8223877 -21.99973297 15.38990879 258.48287964 -17.76443291 14.71773338 258.13461304 -12.93583298
		 12.29236698 264.25311279 -11.32642937 10.51296806 265.0011901855 -20.79294014 10.76122761 263.23788452 -25.37710381
		 13.038049698 261.46401978 -24.082147598 13.45052147 262.051391602 -20.96108055 14.02117157 261.66671753 -13.90138721
		 6.31621885 268.021759033 -15.17638588 11.32727242 265.45123291 -16.099103928 13.81967068 262.22918701 -17.19452667
		 62.063331604 60.66336441 -6.87120581 59.74180222 67.54289246 -5.7680068 59.37813568 67.52402496 -6.96510506
		 59.36645126 67.026008606 -8.34964466 59.20101547 65.32907867 -8.060415268 59.1799202 63.89971542 -7.86178398
		 59.30470276 63.77605057 -6.65398693 59.82697296 64.17658234 -5.63947678 59.79779816 65.75745392 -5.60474586
		 59.28885651 65.66466522 -6.71582603 60.59447479 63.21981049 -4.99421215 59.55796814 62.051494598 -6.48885298
		 59.50448608 62.98907852 -8.56316566 61.60883713 62.11382675 -9.21873188 63.6219902 62.33023834 -9.16059494
		 64.37606049 62.0085525513 -7.32421207 64.46347809 62.76369476 -5.59170485 62.79364777 62.43393326 -4.60625076
		 74.96092987 50.4352951 -7.74791622 11.87304878 251.21368408 2.15442491 11.36482334 252.49427795 2.1402359
		 9.92942333 252.61512756 3.298908 7.97261 252.10501099 4.28348112 7.8039031 250.97259521 4.61327505
		 8.24444389 249.90327454 4.63071394 10.23790264 249.61088562 3.81608391 11.77399158 249.82377625 2.49832392
		 10.13450146 251.3706665 3.69057798 85.35124969 158.51152039 -38.3122406 79.97884369 155.87882996 -24.93189621
		 69.66573334 150.63577271 -15.071728706 57.34984207 140.055023193 -23.53126907 53.76981735 140.45814514 -39.21073151
		 54.54833603 141.73181152 -56.15310669 70.075622559 149.083786011 -61.14857864 82.057441711 155.35464478 -54.96877289
		 85.12988281 157.32214355 -38.68016434 79.73419952 154.88244629 -25.79414558 70.36148071 149.33325195 -15.91237068
		 57.86874008 140.21717834 -23.6292305 55.3347168 140.23016357 -38.74010849 55.6307869 141.68804932 -55.21022797
		 69.84101105 148.43249512 -59.79405975 81.73642731 154.40541077 -53.68842697;
	setAttr -s 3100 ".ed";
	setAttr ".ed[0:165]"  123 122 1 122 130 1 130 131 1 131 123 1 124 123 1 131 132 1
		 132 124 1 125 124 1 132 133 1 133 125 1 126 125 1 133 134 1 134 126 1 127 126 1 134 135 1
		 135 127 1 128 127 1 135 136 1 136 128 1 129 128 1 136 137 1 137 129 1 137 130 1 122 129 1
		 130 138 1 138 139 1 139 131 1 139 140 1 140 132 1 140 141 1 141 133 1 141 142 1 142 134 1
		 142 143 1 143 135 1 143 144 1 144 136 1 144 145 1 145 137 1 145 138 1 138 146 1 146 147 1
		 147 139 1 147 148 1 148 140 1 148 149 1 149 141 1 149 150 1 150 142 1 150 151 1 151 143 1
		 151 152 1 152 144 1 152 153 1 153 145 1 153 146 1 146 154 1 154 155 1 155 147 1 155 156 1
		 156 148 1 156 157 1 157 149 1 157 158 1 158 150 1 158 159 1 159 151 1 159 160 1 160 152 1
		 160 161 1 161 153 1 161 154 1 179 178 1 178 186 1 186 187 1 187 179 1 180 179 1 187 188 1
		 188 180 1 181 180 1 188 189 1 189 181 1 182 181 1 189 190 1 190 182 1 183 182 1 190 191 1
		 191 183 1 184 183 1 191 192 1 192 184 1 185 184 1 192 193 1 193 185 1 193 186 1 178 185 1
		 186 194 1 194 195 1 195 187 1 195 196 1 196 188 1 196 197 1 197 189 1 197 198 1 198 190 1
		 198 199 1 199 191 1 199 200 1 200 192 1 200 201 1 201 193 1 201 194 1 194 202 1 202 203 1
		 203 195 1 203 204 1 204 196 1 204 205 1 205 197 1 205 206 1 206 198 1 206 207 1 207 199 1
		 207 208 1 208 200 1 208 209 1 209 201 1 209 202 1 203 211 1 211 212 1 212 204 1 212 213 1
		 213 205 1 213 214 1 214 206 1 214 215 1 215 207 1 215 216 1 216 208 1 216 217 1 217 209 1
		 217 210 1 210 202 1 210 211 1 218 211 1 210 225 1 225 218 1 219 212 1 218 219 1 219 220 1
		 220 213 1 220 221 1 221 214 1 221 222 1 222 215 1 222 223 1 223 216 1 223 224 1 224 217 1
		 224 225 1 255 256 1 256 235 1 235 70 1 70 255 1 260 241 1 241 239 1;
	setAttr ".ed[166:331]" 239 258 1 258 260 1 247 252 1 252 260 1 258 247 1 262 76 1
		 76 75 1 75 273 1 273 262 1 279 273 1 75 74 1 74 279 1 264 262 1 273 274 1 274 264 1
		 266 264 1 274 275 1 275 266 1 268 266 1 275 276 1 276 268 1 270 268 1 276 277 1 277 270 1
		 272 270 1 277 278 1 278 272 1 84 83 1 83 272 1 278 84 1 182 174 1 174 173 1 173 181 1
		 173 172 1 172 180 1 172 171 1 171 179 1 171 170 1 170 178 1 170 177 1 177 185 1 177 176 1
		 176 184 1 176 175 1 175 183 1 175 174 1 287 174 1 175 294 1 294 287 1 176 293 1 293 294 1
		 177 292 1 292 293 1 170 291 1 291 292 1 171 290 1 290 291 1 172 289 1 289 290 1 173 288 1
		 288 289 1 287 288 1 261 77 1 77 76 1 262 261 1 263 261 1 264 263 1 80 79 1 79 287 1
		 294 80 1 295 293 1 292 296 1 296 295 1 295 80 1 265 263 1 266 265 1 268 267 1 267 265 1
		 298 297 1 297 291 1 290 298 1 299 298 1 289 299 1 301 261 1 263 305 1 305 301 1 79 300 1
		 300 288 1 78 77 1 301 78 1 300 299 1 309 78 1 301 308 1 308 309 1 308 299 1 300 309 1
		 265 306 1 306 305 1 267 304 1 304 306 1 307 298 1 308 307 1 305 307 1 297 296 1 307 311 1
		 311 297 1 311 306 1 304 297 1 271 272 1 83 82 1 82 271 1 82 81 1 81 302 1 302 271 1
		 81 80 1 295 302 1 269 270 1 271 269 1 303 296 1 304 303 1 269 267 1 269 303 1 302 303 1
		 314 113 1 113 106 1 106 312 1 312 314 1 255 69 1 69 251 1 251 256 1 257 249 1 249 247 1
		 258 257 1 239 237 1 237 257 1 317 235 1 256 320 1 320 317 1 320 257 1 237 317 1 318 249 1
		 320 318 1 251 318 1 234 71 1 71 70 1 235 234 1 317 316 1 316 234 1 237 236 1 236 316 1
		 239 238 1 238 236 1 240 238 1 241 240 1 330 314 1 312 328 1 328 330 1 240 330 1 328 238 1
		 328 329 1 329 236 1 329 332 1 332 316 1 106 107 1 107 313 1 313 312 1;
	setAttr ".ed[332:497]" 313 329 1 279 281 1 281 274 1 281 282 1 282 275 1 282 283 1
		 283 276 1 283 284 1 284 277 1 284 285 1 285 278 1 85 84 1 285 85 1 86 85 1 285 338 1
		 338 86 1 284 337 1 337 338 1 283 336 1 336 337 1 282 335 1 335 336 1 259 245 1 245 92 1
		 92 91 1 91 259 1 252 245 1 259 260 1 91 342 1 342 343 1 343 259 1 243 241 1 259 243 1
		 344 243 1 343 344 1 342 90 1 90 344 1 242 240 1 243 242 1 345 242 1 344 345 1 90 89 1
		 89 345 1 242 331 1 331 330 1 89 326 1 326 346 1 346 345 1 346 331 1 315 314 1 331 315 1
		 112 113 1 315 112 1 326 88 1 88 347 1 347 346 1 347 315 1 111 112 1 315 333 1 333 111 1
		 280 279 1 74 73 1 73 280 1 281 334 1 334 335 1 280 334 1 87 86 1 338 348 1 348 87 1
		 348 347 1 88 87 1 348 333 1 286 110 1 110 111 1 333 286 1 348 339 1 339 286 1 337 339 1
		 250 251 1 69 68 1 68 250 1 319 318 1 250 319 1 248 249 1 319 248 1 246 247 1 248 246 1
		 253 252 1 246 253 1 244 245 1 253 244 1 244 93 1 93 92 1 322 109 1 109 110 1 286 322 1
		 350 339 1 336 350 1 68 67 1 67 352 1 352 250 1 352 353 1 353 319 1 353 354 1 354 248 1
		 354 355 1 355 246 1 355 356 1 356 253 1 356 357 1 357 244 1 94 93 1 357 94 1 369 57 1
		 57 366 1 366 370 1 370 369 1 367 57 1 369 372 1 372 367 1 373 58 1 58 367 1 372 373 1
		 393 377 1 377 378 1 378 394 1 394 393 1 105 104 1 104 399 1 399 394 1 394 105 1 398 393 1
		 399 398 1 104 103 1 103 398 1 392 376 1 376 377 1 393 392 1 398 402 1 402 392 1 391 375 1
		 375 376 1 392 391 1 390 374 1 374 375 1 391 390 1 397 381 1 381 374 1 390 397 1 396 380 1
		 380 381 1 397 396 1 395 379 1 379 380 1 396 395 1 378 379 1 395 394 1 400 105 1 395 400 1
		 433 426 1 426 420 1 420 444 1 444 433 1 442 420 1 426 427 1 427 442 1;
	setAttr ".ed[498:663]" 444 418 1 418 432 1 432 433 1 434 426 1 433 441 1 441 434 1
		 435 427 1 434 435 1 432 440 1 440 441 1 440 446 1 446 434 1 446 447 1 447 435 1 436 435 1
		 447 448 1 448 436 1 437 436 1 448 449 1 449 437 1 448 453 1 453 454 1 454 449 1 438 437 1
		 454 438 1 451 446 1 440 450 1 450 451 1 452 451 1 450 455 1 455 452 1 452 447 1 452 453 1
		 455 454 1 439 438 1 455 439 1 440 439 1 432 431 1 431 439 1 418 416 1 416 425 1 425 432 1
		 431 430 1 430 438 1 456 431 1 425 456 1 404 390 1 391 403 1 403 404 1 402 403 1 103 102 1
		 102 402 1 461 430 1 456 461 1 404 405 1 405 397 1 404 460 1 460 461 1 461 405 1 463 461 1
		 456 457 1 457 463 1 416 414 1 414 424 1 424 425 1 424 457 1 474 476 1 476 424 1 414 474 1
		 489 488 1 488 496 1 496 497 1 497 489 1 490 489 1 497 498 1 498 490 1 491 490 1 498 499 1
		 499 491 1 492 491 1 499 500 1 500 492 1 493 492 1 500 501 1 501 493 1 494 493 1 501 502 1
		 502 494 1 495 494 1 502 503 1 503 495 1 503 496 1 488 495 1 496 504 1 504 505 1 505 497 1
		 505 506 1 506 498 1 502 510 1 510 511 1 511 503 1 511 504 1 225 226 1 226 227 1 227 218 1
		 228 219 1 227 228 1 228 229 1 229 220 1 230 221 1 229 230 1 560 229 1 228 558 1 558 560 1
		 559 227 1 226 545 1 545 559 1 559 558 1 549 230 1 560 549 1 561 559 1 545 527 1 527 561 1
		 535 549 1 560 562 1 562 535 1 556 555 1 555 520 1 520 521 1 521 556 1 527 528 1 528 565 1
		 565 561 1 520 551 1 551 552 1 552 521 1 544 548 1 548 549 1 535 544 1 535 534 1 534 543 1
		 543 544 1 575 544 1 543 576 1 576 575 1 542 543 1 534 533 1 533 542 1 576 525 1 525 526 1
		 526 575 1 545 546 1 546 536 1 536 527 1 536 537 1 537 528 1 579 526 1 525 580 1 580 579 1
		 580 537 1 536 579 1 529 528 1 537 538 1 538 529 1 526 547 1 547 574 1;
	setAttr ".ed[664:829]" 574 575 1 574 548 1 231 230 1 548 231 1 231 222 1 232 223 1
		 231 232 1 582 574 1 547 573 1 573 582 1 582 231 1 573 232 1 226 233 1 233 546 1 232 233 1
		 233 224 1 573 583 1 583 233 1 578 546 1 583 578 1 578 579 1 578 547 1 562 568 1 568 534 1
		 584 558 1 559 585 1 585 584 1 586 560 1 584 586 1 561 588 1 588 585 1 587 562 1 586 587 1
		 565 589 1 589 588 1 340 335 1 334 349 1 349 340 1 350 322 1 340 350 1 321 108 1 108 109 1
		 322 321 1 321 313 1 107 108 1 321 332 1 280 351 1 351 349 1 327 325 1 325 71 1 234 327 1
		 332 327 1 593 321 1 350 593 1 73 72 1 72 351 1 72 325 1 327 351 1 351 350 1 327 593 1
		 592 589 1 565 571 1 571 592 1 529 571 1 530 529 1 538 539 1 539 530 1 580 581 1 581 538 1
		 525 524 1 524 581 1 523 540 1 540 539 1 539 597 1 597 523 1 581 597 1 524 523 1 576 577 1
		 577 524 1 542 577 1 598 523 1 577 598 1 541 542 1 533 532 1 532 541 1 541 540 1 598 541 1
		 568 570 1 570 533 1 567 555 1 556 569 1 569 567 1 587 590 1 590 568 1 590 591 1 591 570 1
		 520 519 1 519 550 1 550 551 1 554 519 1 555 554 1 563 554 1 567 563 1 550 564 1 564 566 1
		 566 551 1 566 572 1 572 552 1 602 567 1 569 603 1 603 602 1 604 605 1 605 550 1 519 604 1
		 607 563 1 602 607 1 587 607 1 602 590 1 603 591 1 606 586 1 584 604 1 604 606 1 585 605 1
		 554 606 1 588 608 1 608 605 1 608 564 1 606 607 1 589 609 1 609 608 1 609 566 1 592 610 1
		 610 609 1 610 572 1 601 569 1 556 557 1 557 601 1 522 521 1 552 553 1 553 522 1 522 557 1
		 594 553 1 572 594 1 612 603 1 601 612 1 522 613 1 613 601 1 594 613 1 611 594 1 610 611 1
		 600 591 1 612 600 1 614 613 1 611 614 1 614 612 1 592 595 1 595 611 1 599 532 1 570 599 1
		 600 599 1 615 614 1 595 615 1 532 531 1 531 540 1 531 530 1 616 599 1;
	setAttr ".ed[830:995]" 600 615 1 615 616 1 596 595 1 571 596 1 596 616 1 530 596 1
		 531 616 1 634 633 1 633 625 1 625 626 1 626 634 1 635 634 1 626 627 1 627 635 1 636 635 1
		 627 628 1 628 636 1 637 636 1 628 629 1 629 637 1 638 637 1 629 630 1 630 638 1 639 638 1
		 630 631 1 631 639 1 640 639 1 631 632 1 632 640 1 632 625 1 633 640 1 642 641 1 641 633 1
		 634 642 1 643 642 1 635 643 1 644 643 1 636 644 1 645 644 1 637 645 1 646 645 1 638 646 1
		 647 646 1 639 647 1 648 647 1 640 648 1 641 648 1 626 618 1 618 619 1 619 627 1 163 164 1
		 164 156 1 155 163 1 619 620 1 620 628 1 162 163 1 154 162 1 620 621 1 621 629 1 169 162 1
		 161 169 1 621 622 1 622 630 1 168 169 1 160 168 1 484 483 1 483 491 1 492 484 1 164 165 1
		 165 157 1 166 165 1 165 668 1 668 666 1 666 166 1 483 482 1 482 490 1 664 483 1 484 665 1
		 665 664 1 482 481 1 481 489 1 481 480 1 480 488 1 480 487 1 487 495 1 487 486 1 486 494 1
		 485 484 1 493 485 1 486 485 1 487 672 1 672 676 1 676 486 1 666 484 1 485 678 1 678 666 1
		 668 665 1 676 678 1 166 158 1 678 679 1 679 166 1 166 167 1 167 159 1 167 168 1 679 680 1
		 680 167 1 677 676 1 672 675 1 675 677 1 677 679 1 663 168 1 680 663 1 677 663 1 658 165 1
		 164 659 1 659 658 1 163 660 1 660 659 1 162 661 1 661 660 1 169 662 1 662 661 1 663 662 1
		 685 620 1 619 681 1 681 685 1 660 685 1 681 659 1 682 686 1 686 662 1 663 682 1 683 621 1
		 685 683 1 686 622 1 683 686 1 661 683 1 675 674 1 674 663 1 487 671 1 671 673 1 673 672 1
		 673 674 1 632 624 1 624 617 1 617 625 1 617 618 1 618 684 1 684 681 1 684 658 1 480 657 1
		 657 671 1 481 670 1 670 657 1 657 688 1 688 673 1 669 482 1 664 669 1 617 689 1 689 684 1
		 669 670 1 692 689 1 617 690 1 690 692 1 690 691 1 691 688 1 657 690 1;
	setAttr ".ed[996:1161]" 670 692 1 692 693 1 693 684 1 667 664 1 668 667 1 693 669 1
		 667 693 1 658 667 1 624 691 1 687 674 1 688 687 1 687 682 1 622 623 1 623 631 1 682 623 1
		 623 624 1 694 691 1 623 694 1 687 694 1 466 61 1 61 60 1 60 467 1 467 466 1 471 466 1
		 467 472 1 472 471 1 472 412 1 412 411 1 411 471 1 475 411 1 412 474 1 474 475 1 414 413 1
		 413 475 1 415 413 1 416 415 1 417 415 1 418 417 1 445 417 1 444 445 1 420 419 1 419 445 1
		 695 62 1 62 61 1 466 695 1 471 696 1 696 695 1 411 697 1 697 696 1 697 63 1 63 695 1
		 698 697 1 475 698 1 67 66 1 66 358 1 358 352 1 704 66 1 66 65 1 65 64 1 64 704 1
		 706 358 1 704 706 1 705 704 1 64 63 1 63 705 1 698 705 1 358 359 1 359 353 1 706 707 1
		 707 359 1 705 707 1 359 360 1 360 354 1 360 361 1 361 355 1 361 362 1 362 356 1 95 94 1
		 357 363 1 363 95 1 362 363 1 369 368 1 368 373 1 370 371 1 371 368 1 412 423 1 423 476 1
		 479 463 1 457 477 1 477 479 1 468 467 1 60 59 1 59 468 1 469 459 1 459 58 1 373 469 1
		 368 470 1 470 469 1 468 473 1 473 472 1 473 423 1 719 473 1 468 718 1 718 719 1 717 459 1
		 469 718 1 718 717 1 59 717 1 470 719 1 719 720 1 720 423 1 476 477 1 720 714 1 714 479 1
		 477 720 1 470 714 1 465 470 1 371 465 1 366 56 1 56 371 1 721 465 1 56 721 1 715 714 1
		 465 715 1 478 479 1 715 478 1 721 724 1 724 715 1 721 55 1 55 723 1 723 724 1 55 54 1
		 54 401 1 401 723 1 54 408 1 408 409 1 409 401 1 408 105 1 400 409 1 395 410 1 410 409 1
		 396 406 1 406 410 1 405 406 1 464 405 1 463 464 1 478 464 1 730 406 1 464 730 1 725 478 1
		 724 725 1 725 730 1 726 725 1 723 726 1 727 726 1 401 727 1 728 727 1 409 728 1 729 728 1
		 410 729 1 730 729 1 732 731 1 731 730 1 725 732 1 733 732 1 726 733 1;
	setAttr ".ed[1162:1327]" 734 733 1 727 734 1 735 734 1 728 735 1 736 735 1 729 736 1
		 731 736 1 738 732 1 733 739 1 739 738 1 740 734 1 735 741 1 741 740 1 736 742 1 742 741 1
		 737 731 1 738 737 1 737 742 1 739 740 1 740 737 1 713 712 1 712 95 1 363 713 1 362 710 1
		 710 713 1 361 709 1 709 710 1 699 698 1 413 699 1 699 707 1 360 708 1 708 709 1 708 707 1
		 699 746 1 746 708 1 700 699 1 415 700 1 745 746 1 700 745 1 745 709 1 701 700 1 417 701 1
		 744 745 1 701 744 1 744 710 1 702 701 1 445 702 1 743 744 1 702 743 1 743 713 1 96 712 1
		 743 96 1 703 702 1 419 703 1 443 419 1 442 443 1 703 96 1 443 747 1 747 703 1 747 97 1
		 97 96 1 748 98 1 98 97 1 747 748 1 443 421 1 421 748 1 422 421 1 442 422 1 427 428 1
		 428 422 1 436 428 1 429 430 1 460 429 1 429 428 1 437 429 1 462 460 1 403 462 1 102 462 1
		 751 99 1 99 98 1 748 751 1 752 751 1 421 752 1 758 750 1 750 99 1 751 758 1 752 759 1
		 759 758 1 755 429 1 462 755 1 753 752 1 422 753 1 760 759 1 753 760 1 756 462 1 102 101 1
		 101 756 1 757 100 1 100 750 1 758 757 1 760 757 1 756 761 1 761 755 1 763 100 1 757 764 1
		 764 763 1 764 756 1 101 763 1 760 765 1 765 764 1 754 753 1 428 754 1 754 765 1 755 754 1
		 761 765 1 506 507 1 507 499 1 507 508 1 508 500 1 508 509 1 509 501 1 509 510 1 767 507 1
		 507 515 1 515 774 1 774 767 1 769 509 1 508 768 1 768 769 1 767 768 1 770 769 1 768 775 1
		 775 770 1 774 775 1 774 773 1 773 772 1 772 775 1 771 770 1 772 771 1 516 509 1 770 516 1
		 772 777 1 777 778 1 778 771 1 510 517 1 517 518 1 518 511 1 518 512 1 512 504 1 781 512 1
		 518 780 1 780 781 1 512 513 1 513 505 1 781 782 1 782 513 1 513 514 1 514 506 1 780 779 1
		 779 766 1 766 781 1 766 783 1 783 782 1 766 777 1 777 776 1 776 783 1;
	setAttr ".ed[1328:1493]" 516 517 1 516 778 1 778 779 1 779 517 1 783 514 1 514 515 1
		 776 515 1 776 773 1 655 654 1 654 646 1 647 655 1 648 656 1 656 655 1 644 652 1 652 651 1
		 651 643 1 651 650 1 650 642 1 653 652 1 645 653 1 654 653 1 649 650 1 651 784 1 784 649 1
		 649 641 1 784 655 1 656 649 1 784 653 1 383 375 1 374 382 1 382 383 1 384 376 1 383 384 1
		 385 377 1 384 385 1 386 378 1 385 386 1 387 379 1 386 387 1 388 380 1 387 388 1 389 381 1
		 388 389 1 389 382 1 788 385 1 384 787 1 787 788 1 792 389 1 388 791 1 791 792 1 786 383 1
		 382 785 1 785 786 1 792 785 1 789 386 1 788 789 1 790 387 1 789 790 1 786 787 1 793 789 1
		 787 793 1 790 791 1 793 791 1 793 785 1 795 107 1 106 794 1 794 795 1 113 801 1 801 794 1
		 796 108 1 795 796 1 797 109 1 796 797 1 798 110 1 797 798 1 799 111 1 798 799 1 800 112 1
		 799 800 1 800 801 1 115 114 1 114 122 1 123 115 1 116 115 1 124 116 1 117 116 1 125 117 1
		 118 117 1 126 118 1 119 118 1 127 119 1 120 119 1 128 120 1 121 120 1 129 121 1 114 121 1
		 115 803 1 803 802 1 802 114 1 803 795 1 794 802 1 801 809 1 809 802 1 809 121 1 804 796 1
		 803 804 1 116 804 1 805 797 1 804 805 1 117 805 1 806 798 1 805 806 1 118 806 1 807 799 1
		 806 807 1 119 807 1 808 800 1 807 808 1 120 808 1 808 809 1 810 811 1 811 1467 1
		 1467 1150 1 1150 810 1 1150 1157 1 1157 1156 1 1156 810 1 811 1466 1 1466 1468 1
		 1468 1467 1 812 1115 1 1115 1119 1 1119 1120 1 1120 812 1 1120 1212 1 1212 1466 1
		 1466 812 1 1118 1119 1 1115 813 1 813 1118 1 813 1116 1 1116 1121 1 1121 1118 1 1122 1121 1
		 1116 814 1 814 1122 1 1206 1216 1 1216 1122 1 814 1206 1 815 816 1 816 1214 1 1214 1215 1
		 1215 815 1 1215 1463 1 1463 1462 1 1462 815 1 816 817 1 817 1213 1 1213 1214 1 817 818 1
		 818 1442 1 1442 1213 1 819 820 1 820 1451 1 1451 1452 1 1452 819 1;
	setAttr ".ed[1494:1659]" 1444 1443 1 1443 1442 1 1442 819 1 819 1444 1 1452 1445 1
		 1445 1444 1 820 821 1 821 822 1 822 1451 1 822 823 1 823 1103 1 1103 1109 1 1109 822 1
		 1109 1453 1 1453 1451 1 823 824 1 824 1006 1 1006 1103 1 824 825 1 825 1007 1 1007 1006 1
		 1010 1011 1 1011 1007 1 825 1010 1 826 827 1 827 990 1 990 991 1 991 826 1 991 1011 1
		 1010 826 1 1077 1079 1 1079 990 1 827 1077 1 828 829 1 829 1035 1 1035 1102 1 1102 828 1
		 1102 1079 1 1077 828 1 829 830 1 830 1034 1 1034 1035 1 830 831 1 831 1028 1 1028 1034 1
		 831 832 1 832 1017 1 1017 1028 1 832 833 1 833 1016 1 1016 1017 1 833 834 1 834 1056 1
		 1056 1016 1 1064 1063 1 1063 1056 1 834 1064 1 835 836 1 836 1049 1 1049 1042 1 1042 835 1
		 1042 1043 1 1043 1055 1 1055 835 1 836 837 1 837 1057 1 1057 1050 1 1050 836 1 1050 1048 1
		 1048 1049 1 837 838 1 838 1026 1 1026 1057 1 838 839 1 839 1027 1 1027 1026 1 839 840 1
		 840 1033 1 1033 1027 1 840 841 1 841 1040 1 1040 1033 1 841 842 1 842 1090 1 1090 1040 1
		 842 843 1 843 1099 1 1099 1090 1 843 844 1 844 1098 1 1098 1099 1 844 1078 1 1078 1097 1
		 1097 1098 1 845 846 1 846 1095 1 1095 1096 1 1096 845 1 1096 1097 1 1078 845 1 846 1093 1
		 1093 1094 1 1094 1095 1 847 848 1 848 1001 1 1001 1014 1 1014 847 1 1014 1094 1 1093 847 1
		 848 849 1 849 1000 1 1000 1001 1 849 850 1 850 1108 1 1108 1000 1 850 851 1 851 1114 1
		 1114 1108 1 1458 1459 1 1459 1114 1 851 1458 1 852 853 1 853 1491 1 1491 1450 1 1450 852 1
		 1450 1449 1 1449 1487 1 1487 852 1 1487 1459 1 1458 852 1 853 854 1 854 1492 1 1492 1491 1
		 854 855 1 855 1494 1 1494 1492 1 855 1493 1 1493 1501 1 1501 1494 1 1500 1501 1 1493 856 1
		 856 1500 1 1505 1506 1 1506 1500 1 856 1505 1 857 858 1 858 1209 1 1209 1499 1 1499 857 1
		 1499 1506 1 1505 857 1 858 859 1 859 1147 1 1147 1151 1 1151 858 1 1151 1152 1 1152 1209 1
		 859 860 1 860 1148 1 1148 1147 1 860 861 1 861 1143 1 1143 1148 1 1149 1144 1 1144 1143 1
		 861 1149 1;
	setAttr ".ed[1660:1825]" 1157 1149 1 861 1156 1 1066 1067 1 1067 863 1 863 862 1
		 862 1066 1 863 1537 1 1537 1536 1 1536 862 1 862 869 1 869 1068 1 1068 1066 1 1536 1543 1
		 1543 869 1 1067 1075 1 1075 864 1 864 863 1 864 1538 1 1538 1537 1 1075 1076 1 1076 865 1
		 865 864 1 865 1539 1 1539 1538 1 1076 1041 1 1041 866 1 866 865 1 866 1540 1 1540 1539 1
		 1041 1085 1 1085 867 1 867 866 1 867 1541 1 1541 1540 1 1085 1069 1 1069 868 1 868 867 1
		 868 1542 1 1542 1541 1 1069 1068 1 869 868 1 1543 1542 1 870 871 1 871 879 1 879 878 1
		 878 870 1 1544 1545 1 1545 871 1 870 1544 1 878 885 1 885 877 1 877 870 1 877 1551 1
		 1551 1544 1 871 872 1 872 880 1 880 879 1 1545 1546 1 1546 872 1 872 873 1 873 881 1
		 881 880 1 1546 1547 1 1547 873 1 873 874 1 874 882 1 882 881 1 1547 1548 1 1548 874 1
		 874 875 1 875 883 1 883 882 1 1548 1549 1 1549 875 1 875 876 1 876 884 1 884 883 1
		 1549 1550 1 1550 876 1 876 877 1 885 884 1 1550 1551 1 879 887 1 887 886 1 886 878 1
		 886 893 1 893 885 1 880 888 1 888 887 1 881 889 1 889 888 1 882 890 1 890 889 1 883 891 1
		 891 890 1 884 892 1 892 891 1 893 892 1 887 895 1 895 894 1 894 886 1 894 901 1 901 893 1
		 888 896 1 896 895 1 889 897 1 897 896 1 890 898 1 898 897 1 891 899 1 899 898 1 892 900 1
		 900 899 1 901 900 1 895 903 1 903 902 1 902 894 1 902 909 1 909 901 1 896 904 1 904 903 1
		 897 905 1 905 904 1 898 906 1 906 905 1 899 907 1 907 906 1 900 908 1 908 907 1 909 908 1
		 903 911 1 911 910 1 910 902 1 910 917 1 917 909 1 904 912 1 912 911 1 905 913 1 913 912 1
		 906 914 1 914 913 1 907 915 1 915 914 1 908 916 1 916 915 1 917 916 1 911 919 1 919 918 1
		 918 910 1 918 925 1 925 917 1 912 920 1 920 919 1 913 921 1 921 920 1 914 922 1 922 921 1
		 915 923 1 923 922 1 916 924 1 924 923 1 925 924 1 919 1407 1 1407 1408 1 1408 918 1
		 1408 1409 1;
	setAttr ".ed[1826:1991]" 1409 925 1 920 1406 1 1406 1407 1 921 1405 1 1405 1406 1
		 922 1413 1 1413 1415 1 1415 921 1 1415 1414 1 1414 1405 1 923 1427 1 1427 1426 1
		 1426 922 1 1426 1425 1 1425 1413 1 924 1410 1 1410 1427 1 1409 1410 1 926 927 1 927 935 1
		 935 934 1 934 926 1 1046 1045 1 1045 927 1 926 1046 1 934 941 1 941 933 1 933 926 1
		 933 1047 1 1047 1046 1 927 928 1 928 936 1 936 935 1 1045 1044 1 1044 928 1 928 929 1
		 929 937 1 937 936 1 1044 1043 1 1043 929 1 929 930 1 930 938 1 938 937 1 1042 930 1
		 930 931 1 931 939 1 939 938 1 1049 931 1 931 932 1 932 940 1 940 939 1 1048 932 1
		 932 933 1 941 940 1 1048 1047 1 935 943 1 943 942 1 942 934 1 942 949 1 949 941 1
		 936 944 1 944 943 1 937 945 1 945 944 1 938 946 1 946 945 1 939 947 1 947 946 1 940 948 1
		 948 947 1 949 948 1 943 951 1 951 950 1 950 942 1 950 957 1 957 949 1 944 952 1 952 951 1
		 945 953 1 953 952 1 946 954 1 954 953 1 947 955 1 955 954 1 948 956 1 956 955 1 957 956 1
		 951 959 1 959 958 1 958 950 1 958 965 1 965 957 1 952 960 1 960 959 1 953 961 1 961 960 1
		 954 962 1 962 961 1 955 963 1 963 962 1 956 964 1 964 963 1 965 964 1 959 967 1 967 966 1
		 966 958 1 966 973 1 973 965 1 960 968 1 968 967 1 961 969 1 969 968 1 962 970 1 970 969 1
		 963 971 1 971 970 1 964 972 1 972 971 1 973 972 1 967 974 1 974 981 1 981 966 1 981 980 1
		 980 973 1 968 975 1 975 974 1 969 976 1 976 975 1 970 977 1 977 976 1 971 978 1 978 977 1
		 972 979 1 979 978 1 980 979 1 975 984 1 984 983 1 983 974 1 983 982 1 982 981 1 976 985 1
		 985 984 1 977 986 1 986 985 1 978 987 1 987 986 1 979 988 1 988 987 1 980 989 1 989 988 1
		 982 989 1 983 1306 1 1306 1292 1 1292 982 1 1292 1293 1 1293 989 1 984 1305 1 1305 1306 1
		 985 1307 1 1307 1305 1 986 1296 1 1296 1307 1 987 1295 1 1295 1296 1 988 1320 1 1320 1329 1;
	setAttr ".ed[1992:2157]" 1329 987 1 1329 1321 1 1321 1295 1 989 1330 1 1330 1320 1
		 1293 1325 1 1325 1330 1 1070 1071 1 1071 991 1 990 1070 1 1079 1084 1 1084 1070 1
		 1071 1074 1 1074 1011 1 994 995 1 995 993 1 993 992 1 992 994 1 993 1071 1 1070 992 1
		 1081 1080 1 1080 994 1 992 1081 1 1084 1081 1 995 1013 1 1013 1012 1 1012 993 1 1012 1074 1
		 996 997 1 997 995 1 994 996 1 1080 1082 1 1082 996 1 997 1015 1 1015 1013 1 998 999 1
		 999 997 1 996 998 1 1082 1083 1 1083 998 1 999 1014 1 1014 1015 1 1095 999 1 998 1096 1
		 1083 1097 1 1009 1008 1 1008 1001 1 1000 1009 1 1108 1107 1 1107 1009 1 1008 1015 1
		 1004 1005 1 1005 1003 1 1003 1002 1 1002 1004 1 1003 1008 1 1009 1002 1 1106 1105 1
		 1105 1004 1 1002 1106 1 1107 1106 1 1005 1012 1 1013 1003 1 1073 1072 1 1072 1005 1
		 1004 1073 1 1105 1104 1 1104 1073 1 1072 1074 1 1007 1072 1 1073 1006 1 1104 1103 1
		 1018 1019 1 1019 1017 1 1016 1018 1 1056 1060 1 1060 1018 1 1019 1029 1 1029 1028 1
		 1020 1021 1 1021 1019 1 1018 1020 1 1060 1061 1 1061 1020 1 1021 1030 1 1030 1029 1
		 1022 1023 1 1023 1021 1 1020 1022 1 1061 1059 1 1059 1022 1 1023 1031 1 1031 1030 1
		 1024 1025 1 1025 1023 1 1022 1024 1 1059 1058 1 1058 1024 1 1025 1032 1 1032 1031 1
		 1027 1025 1 1024 1026 1 1058 1057 1 1033 1032 1 1029 1036 1 1036 1034 1 1030 1037 1
		 1037 1036 1 1031 1038 1 1038 1037 1 1032 1039 1 1039 1038 1 1040 1039 1 1036 1086 1
		 1086 1035 1 1086 1100 1 1100 1102 1 1037 1087 1 1087 1086 1 1038 1088 1 1088 1087 1
		 1039 1089 1 1089 1088 1 1090 1089 1 1076 1101 1 1101 1091 1 1091 1041 1 1091 1099 1
		 1099 1085 1 1044 1054 1 1054 1055 1 1045 1053 1 1053 1054 1 1046 1052 1 1052 1053 1
		 1047 1051 1 1051 1052 1 1050 1051 1 1058 1051 1 1059 1052 1 1065 1062 1 1062 1053 1
		 1052 1065 1 1061 1065 1 1062 1063 1 1063 1054 1 1064 1055 1 1062 1060 1 1081 1067 1
		 1066 1080 1 1068 1082 1 1084 1075 1 1069 1083 1 1069 1098 1 1340 1101 1 1075 1340 1
		 1079 1340 1 1102 1101 1 1087 1092 1 1092 1100 1 1088 1101 1 1101 1092 1 1089 1091 1
		 1104 1110 1 1110 1109 1 1105 1111 1;
	setAttr ".ed[2158:2323]" 1111 1110 1 1106 1112 1 1112 1111 1 1107 1113 1 1113 1112 1
		 1114 1113 1 1110 1454 1 1454 1453 1 1111 1455 1 1455 1454 1 1112 1456 1 1456 1455 1
		 1113 1457 1 1457 1456 1 1459 1457 1 1118 1117 1 1117 1120 1 1122 1117 1 1217 1212 1
		 1117 1217 1 1216 1217 1 1123 1124 1 1124 1132 1 1132 1131 1 1131 1123 1 1139 1140 1
		 1140 1124 1 1123 1139 1 1131 1138 1 1138 1130 1 1130 1123 1 1130 1146 1 1146 1139 1
		 1124 1125 1 1125 1133 1 1133 1132 1 1140 1141 1 1141 1125 1 1125 1126 1 1126 1134 1
		 1134 1133 1 1141 1142 1 1142 1126 1 1126 1127 1 1127 1135 1 1135 1134 1 1142 1143 1
		 1143 1127 1 1127 1128 1 1128 1136 1 1136 1135 1 1144 1128 1 1128 1129 1 1129 1137 1
		 1137 1136 1 1144 1145 1 1145 1129 1 1129 1130 1 1138 1137 1 1145 1146 1 1132 1528 1
		 1528 1527 1 1527 1131 1 1527 1534 1 1534 1138 1 1133 1529 1 1529 1528 1 1134 1530 1
		 1530 1529 1 1135 1531 1 1531 1530 1 1136 1532 1 1532 1531 1 1137 1533 1 1533 1532 1
		 1534 1533 1 1153 1152 1 1152 1140 1 1139 1153 1 1146 1154 1 1154 1153 1 1151 1141 1
		 1147 1142 1 1158 1155 1 1155 1145 1 1144 1158 1 1157 1158 1 1155 1154 1 1471 1472 1
		 1472 1157 1 1150 1471 1 1467 1470 1 1470 1471 1 1153 1207 1 1207 1209 1 1154 1208 1
		 1208 1207 1 1155 1474 1 1474 1211 1 1211 1154 1 1211 1210 1 1210 1208 1 1158 1473 1
		 1473 1474 1 1472 1473 1 1159 1160 1 1160 1219 1 1219 1218 1 1218 1159 1 1222 1221 1
		 1221 1160 1 1159 1222 1 1218 1443 1 1444 1159 1 1445 1222 1 1160 1171 1 1171 1220 1
		 1220 1219 1 1221 1223 1 1223 1171 1 1163 1164 1 1164 1162 1 1162 1161 1 1161 1163 1
		 1162 1221 1 1222 1161 1 1446 1447 1 1447 1163 1 1161 1446 1 1445 1446 1 1164 1173 1
		 1173 1172 1 1172 1162 1 1172 1223 1 1165 1166 1 1166 1164 1 1163 1165 1 1447 1448 1
		 1448 1165 1 1166 1180 1 1180 1173 1 1193 1192 1 1192 1166 1 1165 1193 1 1448 1449 1
		 1449 1193 1 1192 1181 1 1181 1180 1 1191 1190 1 1190 1168 1 1168 1167 1 1167 1191 1
		 1168 1192 1 1193 1167 1 1491 1191 1 1167 1450 1 1190 1175 1 1175 1174 1 1174 1168 1
		 1174 1181 1 1169 1170 1 1170 1190 1 1191 1169 1 1495 1496 1 1496 1170 1 1169 1495 1;
	setAttr ".ed[2324:2489]" 1492 1169 1 1494 1495 1 1170 1176 1 1176 1175 1 1496 1497 1
		 1497 1176 1 1465 1464 1 1464 1220 1 1171 1465 1 1223 1224 1 1224 1465 1 1173 1204 1
		 1204 1205 1 1205 1172 1 1205 1224 1 1180 1179 1 1179 1204 1 1175 1183 1 1183 1182 1
		 1182 1174 1 1182 1189 1 1189 1181 1 1176 1184 1 1184 1183 1 1176 1177 1 1177 1185 1
		 1185 1184 1 1497 1498 1 1498 1177 1 1177 1178 1 1178 1186 1 1186 1185 1 1208 1178 1
		 1177 1207 1 1498 1209 1 1178 1179 1 1179 1187 1 1187 1186 1 1208 1204 1 1180 1188 1
		 1188 1187 1 1189 1188 1 1183 1195 1 1195 1194 1 1194 1182 1 1194 1188 1 1184 1196 1
		 1196 1195 1 1185 1197 1 1197 1196 1 1186 1202 1 1202 1197 1 1187 1203 1 1203 1202 1
		 1188 1198 1 1198 1203 1 1194 1199 1 1199 1198 1 1195 1200 1 1200 1199 1 1196 1201 1
		 1201 1200 1 1202 1201 1 1200 1203 1 1210 1205 1 1210 1226 1 1226 1224 1 1463 1216 1
		 1206 1462 1 1498 1504 1 1504 1499 1 1211 1225 1 1225 1226 1 1474 1469 1 1469 1225 1
		 1217 1460 1 1460 1461 1 1461 1212 1 1461 1468 1 1219 1214 1 1213 1218 1 1220 1215 1
		 1464 1463 1 1464 1217 1 1465 1460 1 1226 1460 1 1225 1461 1 1469 1468 1 1227 1228 1
		 1228 1236 1 1236 1235 1 1235 1227 1 1404 1417 1 1417 1228 1 1227 1404 1 1235 1242 1
		 1242 1234 1 1234 1227 1 1234 1418 1 1418 1404 1 1228 1229 1 1229 1237 1 1237 1236 1
		 1417 1416 1 1416 1229 1 1229 1230 1 1230 1238 1 1238 1237 1 1416 1411 1 1411 1230 1
		 1230 1231 1 1231 1239 1 1239 1238 1 1411 1412 1 1412 1231 1 1231 1232 1 1232 1240 1
		 1240 1239 1 1425 1232 1 1231 1413 1 1412 1415 1 1232 1233 1 1233 1241 1 1241 1240 1
		 1425 1423 1 1423 1233 1 1233 1234 1 1242 1241 1 1423 1419 1 1419 1234 1 1419 1420 1
		 1420 1418 1 1236 1244 1 1244 1243 1 1243 1235 1 1243 1250 1 1250 1242 1 1237 1245 1
		 1245 1244 1 1238 1246 1 1246 1245 1 1239 1247 1 1247 1246 1 1240 1248 1 1248 1247 1
		 1241 1249 1 1249 1248 1 1250 1249 1 1244 1252 1 1252 1251 1 1251 1243 1 1251 1258 1
		 1258 1250 1 1245 1253 1 1253 1252 1 1246 1254 1 1254 1253 1 1247 1255 1 1255 1254 1
		 1248 1256 1 1256 1255 1 1249 1257 1 1257 1256 1 1258 1257 1 1252 1260 1 1260 1259 1;
	setAttr ".ed[2490:2655]" 1259 1251 1 1259 1265 1 1265 1258 1 1253 1261 1 1261 1260 1
		 1254 1262 1 1262 1261 1 1255 1510 1 1510 1509 1 1509 1254 1 1509 1516 1 1516 1262 1
		 1256 1511 1 1511 1510 1 1257 1264 1 1264 1263 1 1263 1256 1 1263 1512 1 1512 1511 1
		 1265 1264 1 1260 1524 1 1524 1523 1 1523 1259 1 1523 1522 1 1522 1265 1 1261 1525 1
		 1525 1524 1 1262 1518 1 1518 1525 1 1516 1515 1 1515 1518 1 1264 1521 1 1521 1520 1
		 1520 1263 1 1520 1513 1 1513 1512 1 1522 1521 1 1266 1267 1 1267 1298 1 1298 1297 1
		 1297 1266 1 1301 1302 1 1302 1267 1 1266 1301 1 1297 1352 1 1352 1351 1 1351 1266 1
		 1351 1353 1 1353 1301 1 1267 1268 1 1268 1299 1 1299 1298 1 1302 1303 1 1303 1268 1
		 1268 1269 1 1269 1300 1 1300 1299 1 1303 1304 1 1304 1269 1 1360 1341 1 1341 1300 1
		 1269 1360 1 1304 1348 1 1348 1360 1 1345 1324 1 1324 1271 1 1271 1270 1 1270 1345 1
		 1271 1328 1 1328 1344 1 1344 1270 1 1344 1286 1 1286 1287 1 1287 1270 1 1287 1288 1
		 1288 1345 1 1324 1323 1 1323 1272 1 1272 1271 1 1272 1327 1 1327 1328 1 1323 1322 1
		 1322 1273 1 1273 1272 1 1273 1326 1 1326 1327 1 1322 1321 1 1321 1294 1 1294 1273 1
		 1294 1325 1 1325 1326 1 1274 1275 1 1275 1284 1 1284 1283 1 1283 1274 1 1308 1312 1
		 1312 1275 1 1274 1308 1 1283 1293 1 1292 1274 1 1306 1308 1 1275 1276 1 1276 1285 1
		 1285 1284 1 1312 1318 1 1318 1276 1 1276 1277 1 1277 1286 1 1286 1285 1 1318 1343 1
		 1343 1277 1 1277 1278 1 1278 1287 1 1343 1363 1 1363 1278 1 1278 1279 1 1279 1288 1
		 1363 1346 1 1346 1279 1 1279 1280 1 1280 1289 1 1289 1288 1 1346 1317 1 1317 1280 1
		 1280 1281 1 1281 1290 1 1290 1289 1 1317 1315 1 1315 1281 1 1281 1282 1 1282 1291 1
		 1291 1290 1 1315 1309 1 1309 1282 1 1295 1291 1 1282 1296 1 1309 1307 1 1284 1327 1
		 1326 1283 1 1285 1328 1 1289 1324 1 1290 1323 1 1291 1322 1 1320 1294 1 1298 1313 1
		 1313 1311 1 1311 1297 1 1311 1355 1 1355 1352 1 1299 1319 1 1319 1313 1 1341 1319 1
		 1310 1314 1 1314 1302 1 1301 1310 1 1353 1354 1 1354 1310 1 1314 1316 1 1316 1303 1
		 1316 1348 1 1331 1332 1 1332 1306 1 1305 1331 1 1307 1333 1 1333 1331 1 1332 1335 1;
	setAttr ".ed[2656:2821]" 1335 1308 1 1309 1334 1 1334 1333 1 1335 1336 1 1336 1312 1
		 1315 1337 1 1337 1334 1 1354 1349 1 1349 1314 1 1313 1356 1 1356 1355 1 1336 1339 1
		 1339 1318 1 1319 1357 1 1357 1356 1 1349 1350 1 1350 1316 1 1317 1338 1 1338 1337 1
		 1350 1359 1 1359 1348 1 1346 1347 1 1347 1338 1 1339 1342 1 1342 1343 1 1341 1358 1
		 1358 1357 1 1352 1332 1 1331 1351 1 1333 1353 1 1355 1335 1 1334 1354 1 1337 1349 1
		 1356 1336 1 1357 1339 1 1338 1350 1 1347 1359 1 1358 1342 1 1360 1361 1 1361 1358 1
		 1362 1363 1 1342 1362 1 1361 1362 1 1362 1347 1 1361 1359 1 1372 1373 1 1373 1365 1
		 1365 1364 1 1364 1372 1 1365 1431 1 1431 1436 1 1436 1364 1 1364 1371 1 1371 1379 1
		 1379 1372 1 1437 1438 1 1438 1371 1 1364 1437 1 1436 1439 1 1439 1437 1 1373 1374 1
		 1374 1366 1 1366 1365 1 1366 1428 1 1428 1431 1 1374 1375 1 1375 1367 1 1367 1366 1
		 1367 1432 1 1432 1428 1 1375 1376 1 1376 1368 1 1368 1367 1 1368 1430 1 1430 1432 1
		 1376 1377 1 1377 1369 1 1369 1368 1 1369 1433 1 1433 1430 1 1377 1378 1 1378 1370 1
		 1370 1369 1 1370 1429 1 1429 1433 1 1378 1379 1 1371 1370 1 1438 1441 1 1441 1370 1
		 1441 1434 1 1434 1429 1 1380 1381 1 1381 1373 1 1372 1380 1 1379 1387 1 1387 1380 1
		 1381 1382 1 1382 1374 1 1382 1383 1 1383 1375 1 1383 1384 1 1384 1376 1 1384 1385 1
		 1385 1377 1 1385 1386 1 1386 1378 1 1386 1387 1 1388 1389 1 1389 1381 1 1380 1388 1
		 1387 1395 1 1395 1388 1 1389 1390 1 1390 1382 1 1390 1391 1 1391 1383 1 1391 1392 1
		 1392 1384 1 1392 1393 1 1393 1385 1 1393 1394 1 1394 1386 1 1394 1395 1 1396 1397 1
		 1397 1389 1 1388 1396 1 1395 1403 1 1403 1396 1 1397 1398 1 1398 1390 1 1398 1399 1
		 1399 1391 1 1399 1400 1 1400 1392 1 1400 1401 1 1401 1393 1 1401 1402 1 1402 1394 1
		 1402 1403 1 1526 1398 1 1396 1526 1 1402 1526 1 1526 1400 1 1439 1417 1 1404 1437 1
		 1420 1435 1 1435 1404 1 1435 1438 1 1428 1406 1 1405 1431 1 1414 1440 1 1440 1431 1
		 1432 1407 1 1430 1408 1 1433 1409 1 1429 1410 1 1410 1421 1 1421 1422 1 1422 1424 1
		 1424 1410 1 1434 1421 1 1424 1426 1 1411 1414 1 1416 1440 1 1439 1440 1 1421 1420 1;
	setAttr ".ed[2822:2987]" 1419 1422 1 1423 1424 1 1434 1435 1 1452 1454 1 1454 1446 1
		 1490 1489 1 1489 1447 1 1446 1490 1 1455 1490 1 1489 1488 1 1488 1448 1 1488 1487 1
		 1456 1489 1 1457 1488 1 1469 1470 1 1476 1477 1 1477 1470 1 1469 1476 1 1474 1475 1
		 1475 1476 1 1477 1478 1 1478 1471 1 1478 1479 1 1479 1472 1 1479 1480 1 1480 1473 1
		 1480 1475 1 1481 1482 1 1482 1476 1 1475 1481 1 1480 1486 1 1486 1481 1 1482 1483 1
		 1483 1477 1 1483 1484 1 1484 1478 1 1484 1485 1 1485 1479 1 1485 1486 1 1481 1484 1
		 1501 1502 1 1502 1495 1 1502 1503 1 1503 1496 1 1503 1507 1 1507 1497 1 1507 1504 1
		 1507 1506 1 1500 1503 1 1518 1519 1 1519 1508 1 1508 1525 1 1519 1520 1 1521 1508 1
		 1523 1508 1 1510 1517 1 1517 1516 1 1512 1517 1 1513 1514 1 1514 1517 1 1519 1514 1
		 1514 1515 1 1529 1535 1 1535 1527 1 1535 1533 1 1531 1535 1 1537 1545 1 1544 1536 1
		 1551 1543 1 1538 1546 1 1539 1547 1 1540 1548 1 1541 1549 1 1542 1550 1 1 2 1 2 861 1
		 860 1 1 815 8 1 8 9 1 9 816 1 9 60 1 61 10 1 10 9 1 10 817 1 62 11 1 11 10 1 11 818 1
		 695 12 1 12 11 1 12 1442 1 63 13 1 13 12 1 13 819 1 64 14 1 14 13 1 14 820 1 65 15 1
		 15 14 1 15 821 1 66 16 1 16 15 1 16 822 1 67 17 1 17 16 1 17 823 1 68 18 1 18 17 1
		 18 824 1 828 22 1 22 23 1 23 829 1 23 73 1 74 24 1 24 23 1 24 830 1 75 25 1 25 24 1
		 25 831 1 76 26 1 26 25 1 26 832 1 77 27 1 27 26 1 27 833 1 1055 29 1 29 30 1 30 835 1
		 30 79 1 80 31 1 31 30 1 31 836 1 81 32 1 32 31 1 32 837 1 82 33 1 33 32 1 33 838 1
		 83 34 1 34 33 1 34 839 1 84 35 1 35 34 1 35 840 1 85 36 1 36 35 1 36 841 1 86 37 1
		 37 36 1 37 842 1 87 38 1 38 37 1 38 843 1 847 42 1 42 43 1 43 848 1 43 92 1 93 44 1
		 44 43 1 44 849 1 94 45 1 45 44 1 45 850 1 852 47 1 47 48 1 48 853 1 48 97 1;
	setAttr ".ed[2988:3099]" 98 49 1 49 48 1 49 854 1 0 103 1 104 1 1 1 0 1 859 0 1
		 52 53 1 53 858 1 857 52 1 53 102 1 0 53 1 69 19 1 19 18 1 19 825 1 254 255 1 70 20 1
		 20 254 1 20 826 1 1010 254 1 254 19 1 78 28 1 28 27 1 28 834 1 29 300 1 310 309 1
		 29 310 1 1064 310 1 310 28 1 71 21 1 21 20 1 21 827 1 22 72 1 323 325 1 22 323 1
		 1077 323 1 323 21 1 88 39 1 39 38 1 39 844 1 324 326 1 89 40 1 40 324 1 40 845 1
		 1078 324 1 324 39 1 90 41 1 41 40 1 41 846 1 42 91 1 341 342 1 42 341 1 1093 341 1
		 341 41 1 6 813 1 1115 364 1 364 6 1 812 5 1 5 364 1 364 366 1 57 6 1 7 814 1 1116 365 1
		 365 7 1 367 365 1 365 6 1 105 2 1 407 1156 1 2 407 1 407 408 1 54 3 1 3 407 1 3 810 1
		 58 7 1 95 46 1 46 45 1 46 851 1 47 96 1 711 712 1 47 711 1 1458 711 1 711 46 1 8 59 1
		 1462 716 1 716 8 1 459 458 1 458 7 1 717 716 1 716 458 1 458 1206 1 55 4 1 4 3 1
		 4 811 1 5 56 1 722 721 1 5 722 1 1466 722 1 722 4 1 99 50 1 50 49 1 50 855 1 51 856 1
		 1493 749 1 749 51 1 750 749 1 749 50 1 100 51 1 52 101 1 762 763 1 52 762 1 1505 762 1
		 762 51 1;
	setAttr -s 1552 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.71190298 0.643103 0.282157 -0.71190298
		 0.643103 0.282157 -0.71190298 0.643103 0.282157 -0.71190298 0.643103 0.282157 -0.37486801
		 0.237565 0.89612299 -0.37486801 0.237565 0.89612299 0.34301001 -0.33898601 0.87603199
		 0.34301001 -0.33898601 0.87603199 0.783988 -0.231434 0.57602298 0.783988 -0.231433
		 0.57602298 0.87681699 -0.104762 -0.469273 0.87681699 -0.104762 -0.469273 0.57465303
		 -0.16563 -0.80146199 0.57465303 -0.16563 -0.80146199 -0.534334 0.027163999 -0.84483701
		 -0.534334 0.027163999 -0.84483701 -0.88474298 0.35124701 0.30635899 -0.88474298 0.35124701
		 0.30635899 -0.150407 0.39924699 0.90442199 0.58227301 0.247412 0.774432 0.862863
		 0.0094649997 0.50534999 0.84725797 -0.34930101 -0.400179 0.381845 -0.378939 -0.84297001
		 -0.49150601 -0.101363 -0.86495501 -0.94509798 0.067201003 0.31980199 -0.94509798
		 0.067201003 0.31980199 -0.355037 0.222757 0.90792501 0.48784199 0.123732 0.86411798
		 0.88290799 -0.26024199 0.390829 0.76325297 -0.600703 -0.237909 0.29139 -0.59681499
		 -0.74759799 -0.498849 -0.38102201 -0.77844203 -0.90747499 0.13162699 0.39895201 -0.90747499
		 0.13162699 0.39895201 -0.45216 0.33652899 0.82601398 0.33411101 0.43793699 0.83461398
		 0.970119 -0.093566999 0.223864 0.77069801 -0.59587502 -0.22574 0.367746 -0.75337303
		 -0.54515398 -0.49256399 -0.62242597 -0.608248 -0.96080297 -0.19156601 0.200398 -0.96080399
		 -0.19156601 0.200398 -0.96080297 -0.19156601 0.200398 -0.96080399 -0.19156601 0.200398
		 -0.393861 -0.31945401 0.86187202 -0.393861 -0.31945401 0.86187202 0.423776 -0.39435801
		 0.81541097 0.423776 -0.39435801 0.81541097 0.87317801 -0.315431 0.37156799 0.87317801
		 -0.315431 0.37156799 0.97895902 0.034564 -0.201111 0.97895902 0.034564 -0.201111
		 0.456889 0.437121 -0.77471101 0.456889 0.437121 -0.77471101 -0.63795203 0.37104899
		 -0.67478901 -0.63795203 0.37104899 -0.67478901 -0.96787697 -0.21146201 0.136011 -0.96787697
		 -0.21146201 0.136011 -0.40213299 -0.480753 0.77920902 0.513574 -0.44450101 0.73393601
		 0.888493 -0.28359401 0.36076999 0.96606201 0.19296201 -0.171727 0.46726099 0.55197799
		 -0.69064301 -0.56042999 0.529926 -0.63647199 -0.87229902 -0.437774 0.21782701 -0.87229902
		 -0.437774 0.21782701 -0.386051 -0.73998803 0.55080199 0.457589 -0.63453603 0.622877
		 0.87305897 -0.33523199 0.354101 0.97835201 0.084151998 -0.18906499 0.447752 0.43783399
		 -0.77962798 -0.55071503 0.30507901 -0.77694303 -0.42467999 -0.55753201 0.71330601
		 -0.42467999 -0.55753201 0.71330601 0.418143 -0.56058002 0.71477699 0.87577099 -0.332542
		 0.34991401 0.97270399 -0.078263 -0.21845099 0.41495201 0.1734 -0.89316702 -0.53233302
		 0.145147 -0.83399898 -0.91981202 -0.018281 -0.39193299 -0.92292899 -0.075410999 0.37751099
		 -0.92292899 -0.075410999 0.37751099 -0.27021199 -0.238934 0.93268198 0.44326201 -0.37016201
		 0.81639397 0.88745999 -0.125489 0.443472 0.97778499 0.118346 -0.173004 0.33486399
		 0.35781199 -0.87168598 -0.45224601 0.29651201 -0.84116203 -0.27010301 0.57860303
		 0.76958603 -0.27010399 0.57860303 0.76958603 -0.27010301 0.57860303 0.76958603 -0.27010301
		 0.57860303 0.76958603 -0.52451199 0.850721 -0.034084 -0.52451199 0.850721 -0.034084
		 -0.52451199 0.850721 -0.034084 -0.52451199 0.850721 -0.034084 -0.51537198 0.85086101
		 0.102109 -0.51537198 0.85086101 0.102109 -0.28373101 -0.061438002 0.95693398 -0.28373101
		 -0.061438002 0.95693398 -0.28373101 -0.061438002 0.95693398 -0.28373101 -0.061438002
		 0.95693398 -0.29583699 -0.052264001 0.95380801 -0.29583699 -0.052264001 0.95380801
		 -0.416051 0.14646401 0.89746898 -0.416051 0.14646401 0.89746898 -0.88885802 0.192026
		 0.41600099 -0.88885897 0.192026 0.41600099 -0.997944 -0.039662 -0.050349999 -0.997944
		 -0.039662 -0.050349999 -0.89797097 -0.080810003 -0.43257201 -0.89797097 -0.080810003
		 -0.43257201 -0.668769 -0.04197 -0.742284 -0.668769 -0.04197 -0.742284 -0.34823501
		 -0.00088599999 -0.93740702 -0.34823501 -0.00088599999 -0.93740702 0.83823401 -0.43115699
		 0.333866 0.83823401 -0.43115699 0.333866 0.28064501 -0.40105501 0.872006 -0.40014201
		 -0.193995 0.89568502 -0.96231103 -0.014115 0.271584 -0.88647801 0.039473001 -0.46108401
		 -0.62306702 0.08168 -0.77789199 0.45679599 0.048381001 -0.888255 0.85536498 -0.39488599
		 -0.33528599 0.85536498 -0.39488599 -0.33528599 0.45437601 -0.282572 -0.84480602 -0.60598701
		 -0.121443 -0.78614998 -0.89571702 0.065522 -0.43977001 -0.96442002 0.036874 0.26179099
		 -0.40469399 -0.195942 0.89321297 0.18530899 -0.37798801 0.90707499 -0.422335 -0.77206898
		 0.47491401 -0.422335 -0.77206898 0.47491401 -0.40654299 -0.82003999 0.402812 0.74187499
		 -0.57611001 -0.34310201 0.74187499 -0.57611001 -0.34310201 -0.70358503 -0.20032901
		 -0.68178898 -0.70358503 -0.20032901 -0.68178898 -0.408932 -0.911825 0.036750998 -0.26565599
		 -0.94997603 -0.164232 -0.95306599 0.146368 0.26503 -0.95306599 0.146368 0.26503 -0.404241
		 -0.088266999 0.910384 -0.52318001 -0.01902 0.85201001 -0.52318001 -0.01902 0.85201001
		 0.876719 -0.343445 0.33676299 -0.132479 -0.119716 0.98392999 -0.063890003 -0.105476
		 0.99236703 -0.063890003 -0.105476 0.99236703 -0.86636698 -0.001962 0.49940401 -0.99464703
		 -0.011676 -0.10267 -0.44537899 -0.054276001 0.89369601 -0.93222702 0.089785002 0.35055801
		 -0.50828302 -0.82875299 -0.23413 -0.50828302 -0.82875299 -0.23413 -0.155706 -0.035604
		 -0.98716199 -0.155706 -0.035604 -0.98716199 -0.68521702 -0.241421 -0.687163 -0.92401099
		 0.124532 -0.361518 -0.81107497 0.486083 -0.325394 -0.81107497 0.486083 -0.325394
		 -0.81107497 0.486083 -0.325394 -0.81107497 0.486083 -0.325394 -0.25957599 0.58367801
		 0.76937699 -0.25957599 0.58367801 0.76937699;
	setAttr ".n[166:331]" -type "float3"  -0.45574999 0.68324399 0.570499 -0.45574999
		 0.68324399 0.570499 -0.29526201 0.77943403 0.55254298 -0.32945499 0.57089102 0.75202602
		 -0.32945499 0.57089102 0.75202602 -0.40773001 0.614739 0.67516798 -0.40087599 0.45960799
		 0.79250097 -0.40087599 0.45960799 0.79250199 -0.47464299 0.406223 0.78083098 -0.36059099
		 0.45865101 0.81216598 -0.47549 0.65355599 0.588875 -0.63146698 0.74735898 -0.206652
		 -0.87868202 0.31784099 -0.35622299 -0.87868202 0.31784099 -0.35622299 -0.74488097
		 0.325277 0.58253598 -0.459108 -0.010621 0.88831699 -0.80618399 0.27109501 0.525904
		 -0.80618399 0.27109501 0.525904 -0.57343298 0.036088001 0.81845701 -0.90072101 0.065627001
		 0.42941201 -0.98124999 -0.190346 -0.030265 -0.85656703 -0.191515 -0.479182 -0.73953301
		 -0.28303799 -0.61072099 -0.33195299 -0.26317999 -0.90583801 -0.166958 -0.51685399
		 -0.83963501 -0.166958 -0.51685399 -0.83963501 -0.63620698 -0.62290603 -0.45522401
		 -0.80467403 -0.48757401 -0.33877999 -0.97585797 -0.21838699 -0.0027920001 -0.31224799
		 0.54776502 -0.77618003 -0.31224799 0.54776502 -0.77618003 -0.31224799 0.54776502
		 -0.77618003 -0.31224799 0.54776502 -0.77618003 -0.201074 0.46135601 -0.86412901 -0.201074
		 0.46135601 -0.86412901 -0.41749501 0.62010801 -0.66420197 -0.258569 0.44308701 -0.85838002
		 -0.164414 0.37515101 -0.91226602 -0.418165 0.53771698 -0.73211902 -0.23961399 0.39690399
		 -0.88603199 -0.148141 0.30276 -0.94148302 -0.48040399 0.29016599 -0.82765698 -0.166457
		 -0.058143001 -0.98433298 -0.166457 -0.058143001 -0.98433298 -0.45719999 0.094589002
		 -0.88431901 -0.29747 0.252242 -0.920807 -0.149887 -0.42977899 -0.89040703 -0.149887
		 -0.42977899 -0.89040703 0.52147502 -0.37178999 -0.76800799 0.52147502 -0.37178999
		 -0.76800799 -0.436874 0.072907999 0.89656299 -0.436874 0.072907999 0.89656299 -0.90197599
		 -0.0030449999 0.431775 -0.068195 -0.75549603 -0.651595 -0.068195 -0.75549603 -0.651595
		 0.80151302 -0.59627098 0.045141999 0.80151302 -0.59627199 0.045141999 -0.48210901
		 -0.76661003 -0.42412201 0.17336001 0.84397697 0.50759202 0.17336001 0.84397697 0.50759202
		 0.161116 0.82842398 0.53642899 -0.087716997 0.76880002 0.63344502 -0.43805301 0.68641698
		 0.58046597 -0.324653 0.93533999 0.140494 -0.34590399 0.93823898 -0.0076339999 -0.31502101
		 0.79729599 -0.51485997 0.80190498 -0.58923 0.098773003 0.80190498 -0.58923 0.098773003
		 -0.76905102 -0.63437998 -0.078247003 0.539285 0.83168298 0.132192 0.539285 0.83168298
		 0.132192 0.51033998 0.83732301 0.196069 0.496914 0.82373202 0.27302501 0.48439801
		 0.83914202 0.24738701 -0.12940399 0.94384402 0.30399701 -0.44938701 0.89218199 -0.045426
		 0.117763 0.99298602 0.010542 -0.238814 -0.213836 0.94722903 -0.238814 -0.213836 0.94722903
		 -0.238814 -0.213836 0.94722903 -0.238814 -0.213836 0.94722903 -0.289464 0.45034 0.84463298
		 -0.289464 0.45034 0.84463298 -0.40125501 0.204211 0.89291197 -0.40125501 0.204211
		 0.89291197 -0.62637299 -0.14327 0.76624399 -0.62637299 -0.14327 0.76624399 -0.62637299
		 -0.14327 0.76624399 -0.62637299 -0.14327 0.76624399 -0.418488 -0.113475 0.901106
		 -0.418488 -0.113475 0.901106 -0.418488 -0.113475 0.901106 -0.73697501 -0.028897 0.67530203
		 -0.44058499 0.39025101 0.80844802 -0.57840902 0.100545 0.80952698 -0.57840902 0.100545
		 0.80952698 -0.47748801 0.46045899 0.74831998 -0.62771797 0.099951997 0.77199697 -0.62771797
		 0.099951997 0.77199697 -0.66962701 -0.116291 0.73353702 -0.66962701 -0.116291 0.73353702
		 -0.65497202 0.47466999 0.58796197 -0.65497202 0.47466999 0.58796197 -0.71032 0.036757998
		 0.70291799 -0.71032 0.036757998 0.70291799 -0.40823001 0.273054 0.871086 -0.40823001
		 0.273054 0.871086 -0.55316299 0.38758701 0.73741901 -0.83949798 -0.12501401 -0.528786
		 -0.83949798 -0.12501401 -0.528786 -0.83949798 -0.12501401 -0.528786 -0.83949798 -0.12501401
		 -0.528786 -0.58360201 0.086405002 -0.80743003 -0.58360201 0.086405002 -0.80743003
		 -0.95160198 0.122452 -0.28188601 -0.95160198 0.122452 -0.28188601 -0.52421099 -0.37631899
		 -0.76392901 -0.52421099 -0.37631899 -0.76392901 -0.146916 0.045552999 -0.98809999
		 -0.90396899 -0.153111 -0.39924601 -0.83722198 -0.34103799 -0.42749599 -0.76452798
		 0.096299998 -0.637357 -0.68274897 0.66298097 -0.3071 -0.68274897 0.66298097 -0.3071
		 -0.78084302 0.55936599 0.278198 -0.78084302 0.55936599 0.278198 -0.91363198 -0.372731
		 -0.162322 -0.91363198 -0.372731 -0.162322 -0.90756899 0.318434 0.27371201 -0.88465297
		 0.30518901 0.35248899 -0.88465297 0.30518901 0.35248899 -0.94046003 0.14651801 -0.306705
		 -0.94046003 0.14651801 -0.306705 -0.97871101 0.14802399 0.142175 -0.97899902 -0.20114
		 0.033211 -0.98178899 0.18285599 -0.051525 -0.98178899 0.18285599 -0.051525 -0.98787498
		 0.028519999 0.152612 -0.99960601 0.013425 0.024631999 -0.838 0.288526 0.46315101
		 -0.838 0.288526 0.46315101 -0.44593999 0.57028198 0.68986601 -0.99593198 -0.01344
		 0.089101002 -0.79504502 0.30674899 0.52326697 -0.949673 0.227158 0.21568701 -0.97977799
		 -0.085844003 0.18073501 -0.97977799 -0.085844003 0.18073501 -0.95350897 -0.030170999
		 0.299851 -0.95350897 -0.030170999 0.299851 -0.90013099 -0.122061 0.41816801 -0.90013099
		 -0.122061 0.41816801 -0.87911898 -0.39134601 0.272028 -0.87911803 -0.39134601 0.272028
		 -0.87911803 -0.39134601 0.272028 -0.87911803 -0.39134601 0.272028 -0.48460001 -0.19788601
		 0.85205901 -0.48460001 -0.19788601 0.85205901 0.16638 0.24110501 0.95613098 0.16638
		 0.24110501 0.95613098 0.78284502 0.51058799 0.35560301 0.78284502 0.51058799 0.35560301
		 0.88967699 0.38287801 -0.248757 0.88967699 0.38287801 -0.248757 0.61610597 0.045186002
		 -0.78636599 0.61610597 0.045186002 -0.78636599 -0.120252 -0.385142 -0.91498899;
	setAttr ".n[332:497]" -type "float3"  -0.120252 -0.385142 -0.91498899 -0.95429498
		 -0.187684 0.232585 -0.95429498 -0.187684 0.232585 -0.52053201 -0.077083997 0.85035503
		 -0.079563998 -0.40779299 -0.90960097 -0.079563998 -0.40779299 -0.90960199 -0.132526
		 -0.939529 0.315788 -0.132526 -0.939529 0.315788 -0.213981 -0.85130203 0.47905901
		 0.080348998 -0.84664297 0.52605999 0.333864 -0.88808298 0.315979 0.55605799 0.64994103
		 0.51805103 0.55605799 0.64994103 0.51805103 -0.93239897 0.347386 -0.099774003 -0.93239897
		 0.347386 -0.099774003 0.953839 0.19119801 0.23159 -0.94402498 0.071947001 -0.32193199
		 -0.94402498 0.071947001 -0.32193199 0.99376601 0.102873 0.042977002 0.99376601 0.102873
		 0.042977002 -0.08196 0.520311 0.850034 -0.08196 0.520311 0.850034 -0.08196 0.520311
		 0.850034 -0.08196 0.520311 0.85003501 -0.62734503 -0.694152 -0.35297501 -0.62734503
		 -0.694152 -0.35297501 -0.39181799 0.57911402 0.714917 -0.39181799 0.57911402 0.714917
		 0.976574 0.0095680002 0.21497101 0.976574 0.0095680002 0.21497101 0.69576401 -0.70152801
		 0.154177 0.69576401 -0.70152801 0.154177 0.75487602 -0.64973098 -0.089512996 0.75487602
		 -0.64973098 -0.089512996 0.92811 0.30708501 0.2105 0.92811 0.30708501 0.2105 0.46554101
		 -0.61332703 -0.63804501 0.46554101 -0.61332703 -0.63804501 -0.97952402 -0.097135
		 -0.176346 -0.97952402 -0.097135 -0.176346 -0.739914 -0.66261798 -0.116035 -0.19918001
		 -0.44848999 -0.87131101 -0.19918001 -0.44848999 -0.87131101 -0.96822798 0.209405
		 -0.13668901 -0.96822798 0.209405 -0.13668901 0.51161301 0.047031999 -0.85792798 0.51161301
		 0.047031999 -0.85792798 0.97965199 0.192249 0.057638001 0.31658199 -0.46795499 -0.82510298
		 0.318921 0.52703601 -0.78773302 0.318921 0.52703601 -0.78773302 -0.97250003 0.117566
		 -0.20105401 -0.57593101 0.465469 -0.67204303 -0.839037 0.22796901 -0.494012 0.77251202
		 -0.63183302 -0.063339002 -0.37809101 0.86142498 0.339109 -0.37809101 0.86142498 0.339109
		 0.30866799 0.86007798 0.40619001 -0.90509099 0.34022599 -0.255063 0.93207598 0.27621201
		 0.23439801 -0.68477398 -0.621346 -0.380806 -0.90185797 -0.136935 0.40975699 -0.90185797
		 -0.136935 0.40975699 0.23685101 -0.578646 0.78042901 0.23685101 -0.578646 0.78042901
		 -0.754179 -0.011083 0.65657598 -0.62165397 0.13194799 0.772098 -0.62165397 0.13194799
		 0.772098 -0.78693098 -0.44670299 0.42567199 -0.64538902 -0.050135002 0.76220697 -0.86026698
		 0.241696 -0.448915 -0.86026698 0.241696 -0.448915 -0.93744498 -0.32315099 -0.129498
		 -0.93744498 -0.32315201 -0.129498 -0.87554598 0.217352 -0.431483 -0.176621 0.33824101
		 -0.92433703 -0.0024699999 -0.99930501 -0.037184998 -0.0024699999 -0.99930501 -0.037184998
		 -0.0024699999 -0.99930501 -0.037184998 0.57277298 0.24857099 -0.78111702 0.628784
		 -0.086138003 -0.77279502 0.921166 -0.31628501 0.226752 0.921166 -0.31628501 0.226752
		 0.949736 0.301709 -0.083503999 0.62963498 0.39439899 0.66933501 0.62963498 0.39439899
		 0.66933501 0.80406398 -0.57586902 0.147837 0.924788 0.34116799 0.168439 -0.49189299
		 -0.119153 0.86246401 -0.49189299 -0.119153 0.86246401 -0.085564002 -0.158014 0.98372298
		 0.68615502 -0.144766 0.712906 -0.812774 -0.171197 0.55685699 -0.812774 -0.171197
		 0.55685699 -0.716842 0.573515 0.39650801 0.84077901 0.415043 0.347606 0.84077901
		 0.415043 0.347606 -0.35178801 0.78981203 0.50243598 -0.35178801 0.78981203 0.50243598
		 0.92291403 -0.095972002 0.372852 0.123281 0.90296799 0.41164401 -0.83470601 0.54987103
		 0.03015 -0.81659698 -0.56196702 -0.13176601 -0.93152899 0.32025599 -0.17230999 0.71915102
		 -0.15749501 0.67676902 0.71915102 -0.15749501 0.67676902 -0.50479299 -0.017576 0.86306101
		 -0.50479299 -0.017576 0.86306101 -0.86721998 -0.072307996 0.49264699 0.90951502 -0.23425899
		 0.34337199 -0.0091110002 -0.99888802 0.046246 -0.983464 -0.170164 0.06199 0.90936399
		 -0.269559 0.316852 -0.015265 -0.99958801 0.024313999 -0.96028399 -0.236992 -0.147276
		 0.96022701 -0.263212 -0.093185 -0.00128 -0.99999702 -0.001923 0.043637 -0.99902499
		 0.0066940002 0.035195 -0.99936998 -0.0045949998 -0.84381199 -0.191696 -0.50123203
		 0.551808 0.14892501 0.820566 0.551808 0.14892501 0.820566 0.551808 0.14892399 0.820566
		 0.551808 0.14892501 0.820566 -0.048571002 -0.20782501 0.97695899 -0.048571002 -0.20782501
		 0.97695899 -0.35441199 -0.310112 0.88216901 -0.35441199 -0.310112 0.88216901 -0.73340201
		 -0.38757199 0.55848801 -0.73340201 -0.38757199 0.55848801 -0.30648199 -0.36272299
		 -0.88005698 -0.30648199 -0.36272299 -0.88005698 0.45039901 -0.036934 -0.89206302
		 0.45039901 -0.036934 -0.89206302 0.40329 -0.162498 -0.90052903 0.40329 -0.162498
		 -0.90052903 0.37009799 -0.070781998 0.92629302 0.37009799 -0.070781998 0.92629302
		 -0.043279 -0.24608301 0.96828198 -0.382137 -0.32978901 0.86325598 -0.66187602 -0.50290298
		 0.55588597 -0.28458801 -0.391067 -0.87525803 0.41159299 0.192698 -0.89076298 0.24232399
		 0.25089201 -0.93719399 -0.018797999 -0.176364 0.984146 -0.018797999 -0.176364 0.984146
		 -0.43263999 0.266864 0.861166 -0.43263999 0.266864 0.861166 -0.354857 -0.27039999
		 0.89496398 -0.82632297 0.133753 0.54708302 -0.78253502 -0.324388 0.53142399 -0.89619398
		 -0.27104801 -0.35124001 -0.39127201 -0.37037101 -0.84245598 -0.29427001 -0.56816602
		 -0.76850098 0.65609998 0.57675803 0.48670599 0.65609998 0.57675803 0.48670599 0.219173
		 0.29135999 0.93116701 0.52009702 0.85310501 0.041373 0.520096 0.85310501 0.041373
		 0.520096 0.85310501 0.041373 0.106878 0.31552699 0.94287801 0.605726 0.441715 0.66180402
		 0.605726 0.441715 0.66180402 -0.53732502 -0.178891 0.82418501 -0.74517298 -0.54947001
		 0.37788901 -0.70417601 -0.59258401 -0.391128;
	setAttr ".n[498:663]" -type "float3"  -0.118648 -0.50478798 -0.85505098 0.82590503
		 0.493651 -0.27237701 0.270621 -0.71159798 -0.648377 0.270621 -0.71159798 -0.648377
		 0.72704703 0.52889299 -0.43780801 0.51981598 0.47037199 -0.713121 0.82493103 -0.260732
		 -0.501504 0.57651299 0.123519 -0.80769801 0.147524 -0.631226 -0.76143998 0.147524
		 -0.631226 -0.76143998 0.242245 -0.247032 -0.93823898 0.092203997 0.38682899 0.91753
		 0.092203997 0.38682899 0.91753 -0.37339801 0.21423499 0.90259498 -0.79630798 0.089815997
		 0.59818602 -0.91609502 -0.065889999 -0.39550999 -0.405893 -0.062977999 0.91174799
		 -0.405893 -0.062977999 0.91174799 0.091146998 -0.37540799 -0.92236698 0.091146998
		 -0.37540799 -0.92236698 -0.81158501 -0.232503 0.53597701 -0.026693 -0.62201202 -0.78255302
		 -0.038309 -0.991871 -0.121347 -0.038309 -0.991871 -0.121347 0.73760802 -0.066183001
		 -0.671978 0.73760802 -0.066183001 -0.671978 -0.0077140001 0.012376 0.99989402 -0.25299501
		 -0.81704402 -0.51810497 0.263928 -0.82299501 0.503012 0.314583 -0.78184199 -0.53829402
		 0.37425199 0.15108 0.91493702 0.45831501 -0.168561 0.87265998 0.94850999 -0.108626
		 0.297539 0.94850999 -0.108626 0.297539 0.57134098 -0.268765 -0.77545798 0.53305101
		 0.060210999 0.84393799 0.34647 0.44155201 0.82764101 0.26916 -0.82284498 -0.50047898
		 0.328455 -0.161401 -0.93062699 0.38917801 -0.341212 -0.85563701 -0.27416199 -0.960931
		 -0.038036998 -0.27416199 -0.960931 -0.038036998 -0.27416199 -0.960931 -0.038036998
		 -0.27416199 -0.960931 -0.038036998 -0.50340599 -0.85159397 -0.146184 -0.50340599
		 -0.85159498 -0.146184 -0.65234101 -0.75218099 -0.093139 -0.65234101 -0.75218099 -0.093139
		 -0.76025701 -0.64683902 0.060070999 -0.83145899 -0.491777 0.258517 -0.98057002 -0.17602
		 0.086597003 -0.960926 0.231309 -0.15204801 -0.92941397 0.25834501 -0.263531 -0.908252
		 0.054666001 -0.414837 -0.149351 -0.91539198 -0.37383401 -0.149351 -0.91539198 -0.37383401
		 -0.24116699 -0.919698 -0.309829 -0.347359 -0.91072398 -0.223436 -0.78185201 -0.17641
		 0.59798598 -0.51195902 -0.84622198 -0.14767 -0.39855 0.51258701 0.760535 -0.39855
		 0.51258701 0.760535 0.019858001 0.38756901 0.92162699 0.019858001 0.38756901 0.92162699
		 0.019858001 0.38756901 0.92162699 -0.63728499 0.28003901 0.71794599 -0.26291499 0.333112
		 0.90548998 -0.28976801 0.50983602 0.81000102 -0.49542499 0.27689499 0.82333702 -0.404789
		 0.55096298 0.72978503 -0.52543098 0.67562801 0.51715499 -0.51274502 0.79351801 0.32775301
		 -0.057505 0.83966899 -0.54004598 -0.057505 0.83966899 -0.54004598 -0.49225 0.249088
		 0.83405399 -0.45311499 0.03881 0.890607 -0.90190899 -0.16136301 0.400653 -0.80098099
		 -0.36015299 0.478246 -0.80098099 -0.36015299 0.478246 -0.52480602 -0.46069601 0.71577799
		 -0.52480602 -0.46069601 0.71577799 -0.45262599 0.148646 0.879224 -0.45262599 0.148646
		 0.879224 -0.62447202 0.14121599 0.76817501 -0.84814399 -0.25866601 0.46232399 -0.74899799
		 0.126583 0.65036798 -0.74899799 0.126583 0.65036798 -0.49619401 0.129806 0.85845298
		 -0.82258201 0.04078 0.56718302 -0.792431 -0.218813 0.56936198 -0.58352798 0.021973999
		 0.81179601 -0.36469799 -0.120234 0.92333001 -0.484871 -0.045262001 0.87341398 -0.630364
		 -0.081808999 0.77197701 -0.68718201 -0.187144 0.701967 -0.48606199 -0.136516 0.86319602
		 -0.39713001 -0.099423997 0.91236103 -0.39713001 -0.099423997 0.91236103 -0.624973
		 -0.60034603 0.49899301 -0.624973 -0.60034603 0.49899301 -0.42048001 0.326709 0.84643799
		 -0.42048001 0.326709 0.84643799 -0.44732201 0.83612603 0.317485 -0.56718802 0.40754399
		 0.71568501 -0.90463197 -0.077373996 0.41911 -0.59168297 -0.093442999 0.80073702 -0.558397
		 -0.029015001 0.82906598 -0.51096398 0.056382999 0.85775101 -0.97610199 -0.21472301
		 0.033457998 -0.876486 -0.211533 0.43246499 -0.73439997 0.34138101 0.58661401 -0.45339301
		 -0.0039829998 0.89130199 -0.45339301 -0.0039829998 0.89130199 -0.51537001 0.165557
		 0.84082401 -0.996032 0.086880997 0.019296 -0.79654503 -0.60386002 -0.029471001 -0.48652601
		 -0.42269999 0.76460201 -0.48741999 0.106567 0.86663997 -0.48741999 0.106567 0.86663997
		 -0.77741402 -0.54611897 -0.31206 -0.77741402 -0.54611897 -0.31206 0.47708899 -0.84194601
		 0.25202 -0.16330101 -0.179803 0.97005302 -0.196743 0.661017 -0.72411901 -0.196743
		 0.661017 -0.72411901 -0.71451902 0.69958502 -0.0065930001 -0.87084401 0.489144 0.048679002
		 -0.57927603 -0.81506801 -0.010144 -0.883744 0.31387699 0.34709999 -0.89717501 -0.146374
		 0.41671601 -0.72515202 -0.60424399 -0.33021799 -0.98049098 -0.176046 0.087440997
		 -0.87319702 -0.065109 -0.482999 -0.97135299 0.129159 -0.199479 -0.79662001 0.28032601
		 -0.53555101 -0.80286002 0.45999601 -0.37923601 -0.50836301 0.63019198 -0.58687699
		 -0.83324099 0.072177 -0.54817802 -0.921803 0.016759001 -0.387297 -0.85527802 -0.091192998
		 -0.51008099 -0.64006799 -0.018942 -0.768085 -0.51396102 0.091257997 -0.85294598 -0.51396102
		 0.091257997 -0.85294598 -0.86619902 0.086386003 -0.49217501 -0.94568199 0.099676996
		 -0.309434 -0.92187101 0.26443201 -0.28324899 -0.95522201 0.295874 -0.003056 -0.88981497
		 0.432356 0.14593799 -0.50308198 0.44306001 -0.74202901 -0.50308198 0.44306001 -0.74202901
		 -0.82424998 0.332791 -0.45810699 -0.470624 0.73117298 -0.49386099 -0.470624 0.73117298
		 -0.49386099 -0.71473902 0.59837103 -0.36207801 -0.91773897 0.394804 -0.043419 -0.92359602
		 0.27025601 -0.27190599 -0.823668 0.52325702 -0.21856999 -0.62528801 0.68744701 0.36936599
		 -0.62528801 0.68744701 0.36936599 -0.450966 0.843059 -0.29305601 -0.450966 0.843059
		 -0.29305601 -0.93362802 0.34019399 0.112281 -0.44411501 0.88333797 -0.14992 -0.44411501
		 0.88333797 -0.14992 -0.73495799 0.66299701 -0.142377 -0.957434 0.281322 -0.064636;
	setAttr ".n[664:829]" -type "float3"  0.16422901 0.089956999 0.98231202 0.89691502
		 0.22400101 0.38126999 0.97205698 0.135875 -0.191425 0.67130899 0.0030350001 0.74117202
		 0.67130798 0.0030350001 0.74117202 0.67130899 0.0030350001 0.74117202 0.97581798
		 0.13421901 -0.172525 0.97581798 0.13421901 -0.172525 0.997419 0.069706 -0.017227
		 0.997419 0.069706 -0.017227 0.907686 0.00060500001 0.41964999 0.907686 0.00060500001
		 0.41964999 0.99786597 0.010042 0.064517997 0.91261202 -0.008134 -0.408746 0.97773898
		 -0.209289 -0.014971 0.97773898 -0.209289 -0.014971 -0.085621998 -0.32893601 -0.94046301
		 -0.085621998 -0.32893601 -0.94046301 -0.85179597 -0.32005799 -0.41473699 -0.73708302
		 -0.54864299 -0.39458901 -0.73708302 -0.54864299 -0.39458799 -0.94364101 -0.198208
		 0.26505899 -0.87961501 -0.41860199 0.225943 -0.46843001 -0.090204 0.87888402 -0.26015601
		 -0.85752702 -0.44380999 -0.26015601 -0.85752702 -0.44380999 -0.47186601 -0.78246701
		 0.40630999 0.312953 -0.66668302 0.676458 0.33099499 0.095209002 -0.93881702 0.33099499
		 0.095209002 -0.93881702 0.20165201 0.161184 -0.96610302 -0.34366101 -0.41007301 0.84482902
		 -0.34366101 -0.410074 0.84482902 -0.039726 -0.314899 0.94829398 -0.53408903 -0.674312
		 0.50995302 0.088689998 -0.55996197 0.82375699 0.088689998 -0.55996197 0.82375699
		 -0.201355 -0.52604198 0.82627797 -0.201355 -0.52604198 0.82627797 -0.23723599 -0.70286298
		 0.67059898 -0.605748 -0.64427602 0.46687999 -0.766891 -0.56924599 0.29637501 -0.56529099
		 0.60407102 0.56173301 -0.35652101 0.68469298 0.63568002 -0.32143301 0.67312002 0.666026
		 -0.51364702 0.033755001 0.85733801 -0.51364702 0.033755001 0.85733801 -0.43375301
		 0.56852603 0.69902498 -0.43375301 0.56852603 0.69902498 -0.79107797 0.106723 0.60233301
		 -0.79107797 0.106723 0.60233301 -0.386004 -0.051665999 0.921049 -0.31118801 0.327463
		 0.89214897 -0.34419701 0.27598101 0.89741999 -0.81630999 0.40830201 0.40856901 -0.81630999
		 0.40830201 0.40856901 -0.87975299 0.403117 -0.25205299 -0.56384301 0.234044 0.79202598
		 0.37601599 -0.25516799 0.89078701 0.83503503 -0.52923501 0.150425 0.82033002 -0.57039601
		 -0.041324001 0.14345101 -0.46234101 -0.87502199 -0.87177199 0.313737 0.376275 -0.87177199
		 0.313737 0.376275 -0.64702898 0.136032 0.75023198 0.248318 -0.45605499 0.85460699
		 0.794025 -0.451406 0.40713301 0.801557 -0.52221102 -0.29121 0.36790499 -0.395147
		 -0.84172702 -0.38208699 0.096900001 -0.91903198 -0.90256602 0.15772299 0.40062201
		 -0.90256602 0.15772299 0.40062201 -0.94356799 -0.29986 -0.14058299 -0.75122201 -0.29044199
		 0.592713 0.003153 -0.63238299 0.77464902 0.024819 -0.99966198 -0.007803 0.051557999
		 -0.99524301 -0.082663998 -0.30088601 -0.88108802 -0.364898 0.65863901 -0.58455902
		 0.47379899 0.65863901 -0.58455902 0.47379899 0.65863901 -0.58455902 0.47379899 0.65863901
		 -0.58455902 0.47379899 0.426404 0.31659001 0.84732002 0.426404 0.31659001 0.84732002
		 0.40557301 -0.094024003 0.90921402 0.40557301 -0.094024003 0.90921402 0.35521299
		 -0.127941 0.92598897 0.35521299 -0.127941 0.92598897 0.35521299 -0.127941 0.92598897
		 0.35521299 -0.127941 0.92598897 0.48613501 -0.043791998 0.87278599 0.23778699 -0.192196
		 0.95211202 0.23778699 -0.192196 0.95211202 0.29234001 0.43193099 0.85321301 0.29234001
		 0.43193099 0.85321301 0.4005 0.211601 0.89152998 0.4005 0.211601 0.89152998 0.454505
		 0.149876 0.87804502 0.454505 0.149876 0.87804502 0.52409899 -0.45901901 0.71737099
		 0.52409899 -0.45901901 0.717372 0.52409899 -0.45901901 0.717372 0.52409899 -0.45901901
		 0.717372 0.51714802 0.058134999 0.85391903 0.51714802 0.058134999 0.85391903 0.27477899
		 -0.96078598 -0.03723 0.27477899 -0.96078598 -0.03723 0.15203699 -0.916031 -0.371176
		 0.15203699 -0.916031 -0.371176 0.267304 0.33039099 0.90520197 0.26730499 0.33039099
		 0.90520197 0.26730499 0.33039099 0.90520197 0.26730499 0.33039099 0.90520197 0.78167701
		 -0.17675801 0.59811199 0.78167701 -0.17675801 0.59811199 0.529468 0.049759001 0.84686899
		 -0.010185 0.38613901 0.92238498 -0.010185 0.38613901 0.92238498 0.396056 0.51396698
		 0.76090598 0.396056 0.51396698 0.76090598 0.396056 0.51396698 0.76090598 0.63247001
		 0.28268799 0.72115803 -0.54588902 0.828529 0.124677 -0.54588902 0.828529 0.124677
		 -0.162505 0.84209901 0.51425803 -0.162505 0.84209901 0.51425803 0.25927201 0.58534998
		 0.76820803 0.25927201 0.58534998 0.76820803 0.401391 0.45969 0.792193 0.401391 0.45969
		 0.792193 0.401391 0.45969 0.792193 0.401391 0.45969 0.792193 0.62113303 0.131642
		 0.77257001 0.62113303 0.131642 0.77257001 0.64499003 -0.048988 0.76261902 0.64499003
		 -0.048987001 0.76261902 0.64499003 -0.048988 0.76261902 0.64499003 -0.048988 0.76261902
		 0.43698299 0.073252998 0.89648199 0.43698299 0.073252998 0.89648199 0.29541799 -0.052322999
		 0.95393401 0.29541799 -0.052322999 0.95393401 0.28600901 -0.083259001 0.95460302
		 0.28600901 -0.083259001 0.95460302 0.42406201 -0.75806302 0.49549201 0.42406201 -0.75806302
		 0.495491 0.13693801 -0.124408 0.98273599 0.13693801 -0.124408 0.98273599 0.062284999
		 -0.105582 0.99245799 0.062284999 -0.105582 0.99245799 -0.74399698 -0.57402098 -0.34200501
		 -0.74399698 -0.57402098 -0.34200501 -0.74399698 -0.57402098 -0.34200501 -0.74399698
		 -0.57402098 -0.34200501 -0.87438601 -0.34767601 0.33848301 -0.87438601 -0.34767601
		 0.33848301 -0.0020649999 -0.46440899 -0.88561898 -0.0020649999 -0.46440899 -0.88561898
		 -0.0020649999 -0.46440899 -0.88561898 -0.2006 -0.65724802 -0.72648799 0.17144901
		 -0.043455999 -0.98423398 0.17144901 -0.043455999 -0.98423398 0.52425402 -0.79452997
		 -0.30639699 0.52425402 -0.79452997 -0.30639699 0.351652 -0.010536 -0.93607199 0.351652
		 -0.010536 -0.93607199;
	setAttr ".n[830:995]" -type "float3"  0.33049801 -0.26430601 -0.90604299 0.33049801
		 -0.26430601 -0.90604299 0.16722301 -0.51773202 -0.83904099 0.16722301 -0.51773202
		 -0.83904099 0.068821996 -0.75568599 -0.651308 0.068821996 -0.75568599 -0.651308 0.125145
		 -0.674918 -0.72720301 0.125145 -0.674918 -0.72720301 0.15097199 -0.42944399 -0.89038497
		 0.15097199 -0.42944399 -0.89038497 0.14735299 0.301833 -0.94190401 0.14735299 0.301833
		 -0.94190401 0.14735299 0.301833 -0.94190401 0.14735299 0.301833 -0.94190401 0.163774
		 0.37551901 -0.91223001 0.163774 0.37551901 -0.91223001 0.31149101 0.54718399 -0.77689302
		 0.31149101 0.54718399 -0.77689302 0.31149101 0.54718399 -0.77689302 0.31149101 0.54718399
		 -0.77689302 0.308842 0.80558199 -0.50562298 0.308842 0.80558199 -0.50562298 -0.112904
		 0.99360102 0.003176 -0.112904 0.99360102 0.003176 0.054458 0.84079099 -0.53861398
		 0.054458 0.84079099 -0.53861398 0.19534899 0.66173297 -0.72384298 0.19534899 0.66173297
		 -0.72384298 0.64151001 -0.017569 -0.766913 0.64151001 -0.017569 -0.766913 0.64151001
		 -0.017569 -0.766913 0.64151001 -0.017569 -0.766913 0.73866397 0.304405 -0.60142601
		 0.73866397 0.304405 -0.60142601 0.51776397 0.087347001 -0.851053 0.51776397 0.087347001
		 -0.851053 0.502114 0.44436499 -0.74190402 0.502114 0.44436499 -0.74190402 0.47117701
		 0.730102 -0.49491799 0.47117701 0.730102 -0.49491799 0.45310801 0.84237099 -0.29172701
		 0.45310801 0.84237099 -0.29172701 0.44051301 0.88560802 -0.147126 0.44051301 0.88560802
		 -0.147126 0.62610799 0.68569201 0.37123501 0.62610799 0.68569201 0.37123501 0.62610799
		 0.68569201 0.37123501 0.62610799 0.68569201 0.37123501 0.44939199 0.56707197 0.69027299
		 0.44939199 0.56707197 0.69027299 0.44939199 0.56707197 0.69027299 0.63181603 0.67733502
		 0.37686399 0.44182301 0.38791999 0.80889499 0.44182301 0.38791999 0.80889499 0.429811
		 -0.109239 0.89628601 0.429811 -0.109239 0.89628601 0.54709798 0.38256699 0.74453002
		 0.54709798 0.38256699 0.74453002 0.80640101 0.27107701 0.525581 0.80640101 0.27107701
		 0.525581 0.80640101 0.27107701 0.525581 0.80640101 0.27107701 0.525581 0.81688499
		 0.40631601 0.40939701 0.81688499 0.40631601 0.40939701 0.811068 0.485439 -0.326372
		 0.811068 0.485439 -0.326372 0.879309 0.40397701 -0.25222799 0.309971 0.26989001 0.91163498
		 0.309971 0.26989001 0.91163498 0.56449598 0.233953 0.791587 -0.23513401 -0.57969302
		 0.78017098 -0.23513401 -0.57969302 0.78017199 -0.37728 -0.25432199 0.89049399 -0.800744
		 -0.59045702 0.100843 -0.800744 -0.59045702 0.100843 -0.83387202 -0.53093398 0.150885
		 -0.80122602 -0.59678698 0.043393999 -0.80122602 -0.59678698 0.043393999 -0.81687701
		 -0.57526398 -0.042229999 -0.52074301 -0.369773 -0.76947701 -0.52074301 -0.369773
		 -0.76947701 -0.142334 -0.46290401 -0.874906 0.87274098 0.313068 0.37458199 0.87274098
		 0.313068 0.37458199 0.87274098 0.313068 0.37458199 0.87274098 0.313068 0.37458199
		 0.90130401 0.16340099 0.40118599 0.90130502 0.16340099 0.40118599 0.93399203 0.24270201
		 -0.26221201 0.93399203 0.24270201 -0.26221201 0.93416703 0.25141099 -0.253227 0.645051
		 0.13703801 0.75175101 0.645051 0.13703801 0.75175101 0.73671597 -0.038183998 0.67512298
		 -0.25217 -0.45575699 0.85363698 -0.25217 -0.45575699 0.85363698 -0.144502 -0.522349
		 0.84039903 -0.79387099 -0.451372 0.40746999 -0.79387099 -0.451372 0.40746999 -0.79501802
		 -0.57023001 0.206843 -0.802899 -0.52039403 -0.29076299 -0.802899 -0.52039403 -0.29076299
		 -0.83011001 -0.549757 -0.093199 -0.36970901 -0.39275599 -0.84205598 -0.36970901 -0.39275599
		 -0.84205598 -0.08055 -0.49992099 -0.86231703 0.71385998 0.640962 0.282085 0.71385998
		 0.640962 0.282085 0.83206898 0.35509399 -0.42611 0.376908 0.23496699 0.89595199 -0.34379801
		 -0.33993801 0.87535399 -0.78386497 -0.232884 0.57560402 -0.8768 -0.104462 -0.46937099
		 -0.57365203 -0.167106 -0.80187201 0.885324 0.35083199 0.305152 0.885324 0.35083199
		 0.305152 0.873501 0.18220399 -0.45143899 0.151464 0.39784601 0.904863 -0.58379698
		 0.246856 0.773462 -0.86316699 0.0096000005 0.50482798 -0.846376 -0.350633 -0.40087801
		 -0.381933 -0.37771401 -0.843481 0.94540501 0.067420997 0.31884801 0.94540501 0.067420997
		 0.31884801 0.94769597 -0.142121 -0.28578499 0.35532799 0.223662 0.90758902 -0.48816401
		 0.124123 0.86388099 -0.88265997 -0.258582 0.39248899 -0.76409 -0.599585 -0.238043
		 -0.2929 -0.59785903 -0.74617398 0.90765703 0.13141 0.39861 0.90765703 0.13141 0.39861
		 0.91967601 -0.28352901 -0.27167499 0.453895 0.33764699 0.82460499 -0.33445799 0.434854
		 0.83608598 -0.96902698 -0.093474999 0.228581 -0.77298599 -0.59327799 -0.22475401
		 -0.37160501 -0.751562 -0.54503602 0.82410002 0.137897 0.54940301 0.82410002 0.137897
		 0.54940301 0.89721203 -0.27458599 -0.345851 0.43680799 0.267194 0.85895699 -0.21899401
		 0.292319 0.93090898 -0.97709101 0.114234 0.179565 -0.82566601 -0.26169401 -0.49979201
		 -0.538881 -0.52944702 -0.65520501 0.79492098 0.089077003 0.60013801 0.79492098 0.089077003
		 0.60013801 0.91834301 -0.052956998 -0.39222601 0.37559301 0.206028 0.90359402 -0.090094998
		 0.39125499 0.91586202 -0.52006 0.85312998 0.041315001 -0.52006 0.85312998 0.041315001
		 -0.29722801 0.43966901 0.84755403 -0.57997501 0.117044 -0.80618203 -0.57997602 0.117044
		 -0.80618203 -0.52039403 0.469322 -0.71339101 -0.23635501 -0.248611 -0.93932402 0.96247602
		 -0.014631 0.27097201 0.96247602 -0.014631 0.27097201 0.96247602 -0.014631 0.27097201
		 0.96247602 -0.014631 0.27097201 0.96385998 0.037813999 0.263713 0.96385998 0.037813999
		 0.263713 0.88613403 0.041714001 -0.46154901 0.88613403 0.041714001 -0.46154901;
	setAttr ".n[996:1161]" -type "float3"  0.89562303 0.065454997 -0.43997201 0.40049401
		 -0.193551 0.89562398 0.40049401 -0.193551 0.89562398 0.40261799 -0.196208 0.89409202
		 -0.28051701 -0.401521 0.87183201 -0.28051701 -0.401521 0.87183201 -0.83774298 -0.43328601
		 0.33234 -0.83774298 -0.43328601 0.33234 -0.94889897 -0.167955 -0.26717401 -0.94889897
		 -0.167955 -0.26717401 -0.45934501 0.050703 -0.88681 -0.45934501 0.050703 -0.88681
		 0.96065003 -0.192324 0.200407 0.96065003 -0.192324 0.200407 0.89860302 0.072801001
		 -0.43268099 0.393875 -0.31978899 0.86174101 -0.42372799 -0.39261001 0.81627899 -0.87381899
		 -0.31359801 0.371613 -0.97875398 0.024078 -0.20362 -0.45721701 0.41919699 -0.78436399
		 0.96775901 -0.211623 0.13659801 0.96775901 -0.211623 0.13659801 0.916071 0.25715199
		 -0.30771101 0.401705 -0.48086399 0.77936101 -0.513394 -0.44433901 0.73415899 -0.888318
		 -0.28151199 0.36282599 -0.96793699 0.180318 -0.17488299 -0.456866 0.57261199 -0.68072701
		 0.87170899 -0.438642 0.21844 0.87170899 -0.438642 0.21844 0.95267802 0.033787999
		 -0.30209899 0.38492501 -0.73859298 0.55345601 -0.45771301 -0.63508201 0.62222999
		 -0.87357402 -0.33433801 0.35367599 -0.97651601 0.095298 -0.19322 -0.44446 0.43279201
		 -0.78431302 0.84553802 -0.37606901 0.37899399 0.84553802 -0.37606901 0.37899399 0.91845
		 -0.013849 -0.39529499 0.42271 -0.55905998 0.71328002 -0.419175 -0.56005901 0.71458101
		 -0.87678701 -0.33267799 0.347231 -0.97277403 -0.078086004 -0.21820401 -0.415806 0.173594
		 -0.89273202 0.92308599 -0.074954003 0.37722 0.92308599 -0.074954003 0.37722 0.93547899
		 0.071782999 -0.34601399 0.27178201 -0.24938001 0.92948598 -0.441131 -0.37558901 0.81506801
		 -0.88808298 -0.130125 0.44088101 -0.97846103 0.10899 -0.175313 -0.33728901 0.34942901
		 -0.87414801 0.24378 -0.80326802 0.54344499 0.24378 -0.80326802 0.54344499 0.16919801
		 -0.92809498 0.33168101 -0.146604 -0.80523998 0.57453901 -0.43921101 -0.80926001 0.390118
		 -0.79529399 -0.59410399 -0.120617 -0.32493901 -0.43266299 -0.84096199 0.189667 -0.85450399
		 -0.48358101 0.93598801 0.33794001 -0.098609 0.93598801 0.33794001 -0.098609 0.97241801
		 0.110895 -0.20519599 0.42693901 0.672903 0.60408998 -0.55012399 0.65137202 0.522569
		 -0.954992 0.17879701 0.236689 -0.98288703 0.17365199 0.061462998 -0.2897 0.72168797
		 -0.628681 -0.2897 0.72168797 -0.628681 -0.86575198 0.40531999 -0.29357901 0.58031201
		 0.455695 -0.67496699 0.83995801 0.228302 -0.49228901 0.47312999 0.40433899 0.78272402
		 0.47312999 0.40433899 0.78272402 0.69707602 -0.0066889999 0.71696597 0.329716 0.57140398
		 0.751522 0.47453201 0.65443099 0.58867598 0.47453201 0.65443099 0.58867598 0.47453201
		 0.65443099 0.58867598 0.47453201 0.65443099 0.58867598 0.746207 0.323053 0.582075
		 0.746207 0.323053 0.582075 0.296051 0.77898598 0.552751 0.296051 0.77898699 0.552751
		 0.63286901 0.746436 -0.205694 0.63286799 0.746436 -0.205694 0.82163 0.48116201 -0.30562699
		 0.525608 0.84994298 -0.036520999 0.41819501 0.537 -0.73262799 0.41819501 0.537 -0.73262799
		 0.48074099 0.28813401 -0.82817101 0.178674 0.97307199 -0.14562701 0.178674 0.97307199
		 -0.14562701 0.27629501 0.960841 -0.021121001 0.43581101 0.68819898 0.58004397 0.43581101
		 0.68819898 0.58004397 0.43581101 0.68819898 0.58004397 0.43581101 0.68819898 0.58004397
		 -0.49004799 0.83675098 0.24434 -0.49004799 0.83675098 0.24434 0.093310997 0.765194
		 0.63700098 0.093310997 0.765194 0.63700098 -0.50305498 0.82227898 0.26607099 0.40673
		 -0.82022601 0.40224299 0.40673 -0.82022601 0.40224299 0.52726299 -0.026449 0.84929001
		 0.41355401 0.14566401 0.89875197 0.42601201 -0.90346599 0.047559001 0.42601201 -0.90346599
		 0.047559001 0.86674303 -0.0032279999 0.49874499 0.89111602 0.191755 0.41126999 0.28164199
		 -0.945436 -0.16379701 0.28164199 -0.945436 -0.16379701 0.994524 -0.012662 -0.10374
		 0.99788302 -0.04318 -0.048631001 0.65591103 -0.72183001 -0.220777 0.65591103 -0.72183001
		 -0.220777 0.947142 -0.15163 -0.282718 0.90374798 -0.047765002 -0.425392 0.572133
		 0.037181001 0.819318 0.90178698 0.064529002 0.42733699 0.98095298 -0.19196001 -0.029696001
		 0.85648298 -0.19151001 -0.479334 0.71605802 0.102472 0.69047898 0.75431198 -0.012286
		 0.65640199 0.902309 -0.003736 0.43107301 0.97613102 -0.217173 -0.0021879999 0.80486298
		 -0.487055 -0.339075 0.66712302 -0.741108 0.075540997 0.66712302 -0.741108 0.075540997
		 -0.116866 -0.35281 0.92836797 0.40179399 -0.092901997 0.91100597 0.95145297 0.15158799
		 0.26787901 0.92976302 0.057472002 -0.363646 0.93451399 0.081706002 0.346423 0.93451399
		 0.081706002 0.34642199 0.786174 -0.44765699 0.42606699 0.902888 -0.134868 0.40817201
		 0.29055899 0.51072103 0.80915999 0.40371701 0.55151701 0.72996098 0.524616 0.67653197
		 0.51679999 0.51329899 0.79301202 0.32811001 0.49397001 0.27848601 0.82367402 0.64667702
		 0.27975699 0.70960897 0.88456202 0.31341901 0.34542599 0.86831099 0.49325499 0.052306999
		 0.45816201 0.045207001 0.88771802 0.58592498 0.024514999 0.809995 0.26944199 -0.475851
		 0.83723801 0.26944199 -0.475851 0.83723801 0.26944199 -0.475851 0.83723801 0.26944199
		 -0.475851 0.83723801 0.66038299 -0.117023 0.741754 0.66038299 -0.117023 0.741754
		 0.377821 0.68331897 0.62476099 0.377821 0.68331897 0.62476099 0.64240599 0.480593
		 0.596946 0.27645499 -0.65870702 0.69976997 0.27645499 -0.65870702 0.69976997 0.62603098
		 0.082767002 0.77539301 0.61752701 -0.60282302 0.50523698 0.61752701 -0.60282302 0.50523698
		 0.584732 0.082786001 0.80699098 0.76476401 -0.55540001 0.326599 0.76476401 -0.55540001
		 0.326599 0.558339 0.60563803 0.566975;
	setAttr ".n[1162:1327]" -type "float3"  0.558339 0.60563803 0.566975 0.35993901
		 0.66849101 0.65081799 0.35993901 0.66849101 0.65081799 0.41191101 0.275249 0.86865801
		 0.78560501 0.12620901 0.60571897 0.78560501 0.12620901 0.60571897 0.60090202 0.496939
		 0.62607402 0.64528501 0.13125999 0.752581 0.51117003 0.051034998 0.85796303 0.37491101
		 -0.051608 0.925623 0.30801299 0.343133 0.88734901 0.362073 0.475804 0.80157 0.83958399
		 0.290526 0.45901501 0.79861301 0.306124 0.51817602 0.56659299 0.39714301 0.72197598
		 0.56659299 0.39714301 0.72197598 0.883268 -0.22901601 0.40913099 0.883268 -0.22901601
		 0.40913099 0.97838902 -0.205825 0.019773999 0.890764 0.42839599 0.151711 0.94805902
		 0.23012 0.21960901 0.59181201 -0.093321003 0.80065602 0.59181201 -0.093321003 0.80065602
		 0.90522897 -0.078336 0.417642 0.635387 -0.154099 0.75666201 0.66214299 -0.74328798
		 -0.095339 0.66214299 -0.74328798 -0.095339 0.66214299 -0.74328798 -0.095339 0.66214299
		 -0.74328798 -0.095339 0.75951099 -0.64768499 0.060394999 0.75951099 -0.64768499 0.060394999
		 0.897062 -0.180088 0.40354401 0.897062 -0.180088 0.40354401 0.90190202 -0.16159099
		 0.40057701 0.98020297 -0.180785 0.080741003 0.98020297 -0.180785 0.080741003 0.98020297
		 -0.180785 0.080741003 0.98020297 -0.180785 0.080741003 0.73038697 -0.59997803 -0.32643801
		 0.73038697 -0.59997803 -0.32643801 0.953785 -0.027427001 0.29923499 0.953785 -0.027427001
		 0.29923499 0.96136802 0.22693101 -0.155798 0.96136898 0.22693101 -0.155798 0.87553102
		 -0.061772 -0.47919601 0.98165101 0.18319599 -0.052930001 0.92840803 0.25815901 -0.267232
		 0.92840803 0.25815901 -0.267232 0.95179999 0.121934 -0.28143901 0.91972101 0.011536
		 -0.39240399 0.91972101 0.011536 -0.39240399 0.91972101 0.011536 -0.39240399 0.91972101
		 0.011536 -0.39240399 0.601623 0.079487003 -0.79481602 0.601623 0.079487003 -0.79481602
		 0.94419599 0.105633 -0.311986 0.94419599 0.105633 -0.311986 0.92347801 0.26977399
		 -0.27278301 0.92347801 0.26977399 -0.27278301 0.92377502 0.26478299 -0.27664 0.95685101
		 0.28294501 -0.066169001 0.82293302 0.040011 0.566728 0.82293302 0.040011 0.566728
		 0.86149698 -0.12166 0.492973 0.97013098 -0.155158 0.186472 0.97013098 -0.155158 0.186472
		 0.999538 0.015395 0.026203001 0.145634 0.044925999 -0.98831803 0.145634 0.044925999
		 -0.98831803 0.50255901 -0.37689301 -0.77806598 0.199632 0.78701597 -0.58374101 0.35782501
		 0.89252901 0.27450401 0.35782501 0.89252901 0.27450401 0.94129902 0.315153 0.120971
		 0.85861498 0.42092001 0.29258499 0.85861498 0.42092001 0.29258499 0.987077 0.02727
		 0.15790699 0.97768599 -0.20708901 0.035286002 0.77115399 0.093230002 -0.629785 0.77115399
		 0.093230002 -0.629785 0.67797202 0.66181701 -0.31992501 0.77120298 0.564399 0.29444799
		 0.89913797 0.32802299 0.28974301 0.97870898 0.149335 0.14081299 0.99350899 -0.019754
		 -0.112026 0.89110702 0.30144599 0.339203 0.84664899 0.0078180004 0.53209502 0.86241198
		 -0.39617199 0.31510699 0.80151999 -0.35861501 0.478499 0.93358302 0.34148499 0.108679
		 0.706635 -0.24529 0.66370201 0.54414397 -0.021839 0.83870798 0.63060302 -0.081987001
		 0.77176303 0.63060302 -0.081987001 0.77176303 0.74925202 -0.54008597 0.383313 0.74925202
		 -0.54008597 0.383313 0.74925202 -0.54008597 0.383313 0.74925202 -0.54008597 0.383313
		 -0.28318301 -0.825885 0.48756701 -0.28318301 -0.825885 0.48756701 0.68845201 -0.61014199
		 -0.39212301 0.68845201 -0.61014199 -0.39212301 0.249706 -0.818358 -0.51762599 0.52619898
		 -0.186904 0.82956702 0.52619898 -0.186904 0.82956702 -0.2388 -0.37108099 0.89736998
		 -0.108146 0.31950301 0.94139397 -0.108146 0.31950301 0.94139397 -0.37893599 0.146515
		 0.91375101 -0.65747398 0.575881 0.48588899 -0.65747398 0.575881 0.48588899 -0.60312301
		 0.443914 0.662709 -0.82708001 0.491896 -0.271988 -0.82708001 0.491896 -0.271988 -0.682576
		 0.0186 -0.73057801 -0.682576 0.0186 -0.73057801 -0.48887399 -0.016733 -0.87219399
		 -0.27206701 -0.70897299 -0.65064299 0.037179999 -0.99118698 -0.12714399 0.87265903
		 -0.395592 0.28630999 0.87265903 -0.395592 0.28630999 0.82226503 -0.45967799 -0.33552301
		 0.48804301 -0.20253199 0.84899598 -0.16884901 0.240762 0.95578402 -0.78397602 0.50931197
		 0.35494 -0.89029598 0.382889 -0.24651401 -0.613424 0.041680001 -0.78865302 0.95237702
		 -0.189647 0.238774 0.95237601 -0.189647 0.238774 0.87964898 -0.31414801 -0.35711101
		 0.524535 -0.079737999 0.84764701 -0.15421 0.095207997 0.98343998 -0.89508897 0.22221901
		 0.386567 -0.97184598 0.138485 -0.190626 -0.66201001 -0.140222 -0.73626101 0.94762802
		 -0.190542 0.25630999 0.94762802 -0.190542 0.25630999 0.854433 -0.31464699 -0.41345099
		 0.477222 -0.089960001 0.87416601 -0.129098 -0.020528 0.99141902 -0.88814402 0.236037
		 0.39431801 -0.88814402 0.236037 0.39431801 -0.67673099 0.0089480001 0.73617601 -0.97832102
		 0.130836 -0.160531 -0.54873502 -0.15935799 -0.82066798 -0.54873502 -0.15935799 -0.82066798
		 -0.916722 -0.0080399998 -0.399445 0.87995201 -0.42300999 0.216208 0.87995201 -0.42300999
		 0.216208 0.73728299 -0.549788 -0.392616 0.483192 -0.146107 0.86323702 -0.151235 -0.067199998
		 0.986211 -0.64827698 -0.020400001 0.76113099 -0.44366601 -0.34062201 -0.82893699
		 -0.44366601 -0.34062201 -0.82893699 -0.91072899 -0.029603001 -0.41194201 0.49681699
		 -0.087963998 0.86338598 0.49681699 -0.087963998 0.86338598 0.49681699 -0.087963998
		 0.86338598 0.49681699 -0.087963998 0.86338598 0.083301999 -0.13251901 0.987674 0.083301999
		 -0.13251901 0.987674 0.35119399 0.79006398 0.502455 0.35119399 0.79006398 0.502455
		 -0.040040001 0.79538101 0.60478503 0.4064 0.54586202 0.73271602;
	setAttr ".n[1328:1493]" -type "float3"  0.4064 0.54586202 0.73271602 0.079144001
		 0.48509499 0.87087202 0.49717 -0.021622 0.86738402 0.49717 -0.021622 0.86738402 0.026004
		 -0.130482 0.99111003 -0.003303 -0.99959099 0.028410001 -0.003303 -0.99959099 0.028410001
		 0.0088799996 -0.99886698 0.046755001 -0.62806302 -0.090245999 -0.77291203 -0.62806302
		 -0.090245999 -0.77291203 -0.62806302 -0.090245999 -0.77291203 -0.62806302 -0.090245999
		 -0.77291101 0.203513 -0.060385998 -0.97720802 0.203513 -0.060385998 -0.97720802 0.003883
		 -0.99935001 -0.035831001 0.003883 -0.99935001 -0.035831001 -0.054237999 -0.99844998
		 0.012523 -0.57789201 0.200277 -0.79115701 -0.57789201 0.200277 -0.79115701 0.18345401
		 0.322198 -0.92872697 -0.485594 -0.54070997 -0.68690002 -0.485594 -0.54070997 -0.68690002
		 0.203859 -0.43076801 -0.87913603 -0.51013798 0.047421999 -0.85878497 0.78998101 -0.59995502
		 -0.12642699 0.78998101 -0.59995502 -0.12642699 0.78998101 -0.59995502 -0.12642699
		 0.78998101 -0.59995502 -0.12642699 0.65736699 -0.66027498 -0.36318901 0.65736699
		 -0.66027498 -0.36318901 0.98102802 0.129281 -0.144464 0.98102802 0.129281 -0.144464
		 0.87125301 0.12728199 -0.47404301 0.93442798 -0.33075699 -0.13207901 0.82221502 -0.32520899
		 -0.46711999 -0.0060950001 -0.99982297 0.017798999 -0.011005 -0.999928 0.0048139999
		 -0.049045999 -0.99877101 0.0072079999 -0.022141 -0.99961501 0.01675 -0.91853797 -0.325609
		 0.224204 -0.91853797 -0.325609 0.224204 -0.96066397 -0.26135999 -0.093898997 -0.93874002
		 0.26989901 0.214293 -0.93874002 0.26989901 0.214293 -0.95392698 0.28792599 -0.084389001
		 -0.70416099 -0.692756 0.15571301 -0.70416099 -0.692756 0.15571301 -0.779311 -0.62351298
		 -0.062498 0.81803 -0.12604401 0.56119502 0.81803 -0.12604401 0.56119502 0.74290299
		 0.60024703 0.29630899 0.73892599 0.53096098 0.41481301 -0.68480903 -0.142214 0.71471101
		 -0.68480903 -0.142214 0.71471101 -0.70137399 0.52292001 0.484386 -0.63502401 0.37132499
		 0.67739397 0.380063 0.86026597 0.33984399 0.380063 0.86026597 0.33984399 -0.30603501
		 0.85946202 0.40947199 0.90804499 0.33468801 -0.25187001 -0.93532598 0.27035099 0.228202
		 0.681144 -0.62494999 -0.381419 -0.82146502 -0.55031902 0.149483 -0.92380798 -0.098319001
		 0.37001699 0.88446802 -0.41220099 0.218646 0.859797 0.241705 -0.449808 0.90490401
		 0.39552999 0.15718 -0.84411597 0.40742299 0.348533 -0.925834 0.33876899 0.16753 -0.90733999
		 -0.237524 0.34686601 -0.947806 -0.25327599 0.19368701 0.84302402 -0.194198 -0.50159401
		 0.98204702 -0.17120899 0.079186 0.0098649999 -0.99978 0.018523 0.002966 -0.99998599
		 0.0044419998 -0.63636899 -0.030177001 0.77079499 -0.63636899 -0.030177001 0.77079499
		 -0.63636899 -0.030177001 0.77079499 -0.63636899 -0.030177001 0.77079499 -0.45001999
		 -0.163728 0.87788099 -0.45001999 -0.163728 0.87788099 -0.73924601 -0.048018001 -0.67172098
		 -0.73924702 -0.048018001 -0.67172098 -0.69548601 -0.525581 -0.48996401 -0.69548601
		 -0.525581 -0.48996401 -0.94967002 -0.105731 0.29486999 0.019535 -0.177536 0.98391998
		 0.019535 -0.177536 0.98391998 0.0068939999 0.011009 0.99991602 0.35760501 -0.26816401
		 0.89454299 0.35760501 -0.26816401 0.89454299 0.40547001 -0.062029 0.91200101 0.78237098
		 -0.33347499 0.52601397 0.78237098 -0.33347499 0.52601397 0.81623501 -0.227281 0.53113502
		 0.39451 -0.361485 -0.84480202 0.39451 -0.361485 -0.84480202 0.53902799 -0.46279201
		 -0.70375597 -0.328812 -0.16384 -0.93007499 -0.328812 -0.16384 -0.93007499 -0.23608699
		 -0.36822999 -0.899261 -0.385842 -0.34177899 -0.85692102 -0.39374399 -0.31492299 -0.86359102
		 -0.54873598 0.162231 0.820104 -0.54873598 0.162231 0.820104 -0.617212 -0.032708 -0.78611702
		 0.048195999 -0.207673 0.97701001 0.354386 -0.31026199 0.88212699 0.736875 -0.38475001
		 0.55586201 0.305803 -0.36923301 -0.87758303 -0.449352 -0.034504 -0.89268798 -0.36746699
		 -0.088564999 0.92580998 -0.36746699 -0.088564999 0.92580998 -0.64844298 0.218987
		 -0.72908598 0.042438 -0.246139 0.96830499 0.38194999 -0.33034 0.86312801 0.66175902
		 -0.50314599 0.55580503 0.28435799 -0.391271 -0.87524199 -0.411607 0.192223 -0.89085901
		 -0.245667 -0.348281 0.90462601 -0.245667 -0.348281 0.90462601 -0.873326 -0.16261201
		 -0.45919499 0.041632 -0.31688899 0.94754899 0.345768 -0.41004699 0.84398198 0.53511697
		 -0.67436999 0.50879699 0.213662 -0.70124203 -0.68015301 -0.338052 0.095701002 -0.93624902
		 -0.087595001 -0.56478798 0.82057399 -0.321435 -0.77725601 -0.54088199 -0.261769 0.30906999
		 0.91430497 0.024053 -0.62301201 -0.78184199 0.024053 -0.62301201 -0.78184199 0.024053
		 -0.62301201 -0.78184199 0.98085302 -0.173283 0.088878997 0.98085397 -0.173283 0.088878997
		 0.97166097 0.129951 -0.197455 0.51516801 0.165576 0.84094399 0.51516801 0.165576
		 0.84094399 0.45348799 -0.003949 0.89125401 0.99319398 0.116041 0.009974 0.79860401
		 -0.60025698 -0.043857999 0.46289 -0.44561899 0.76626199 0.17080601 -0.17797901 0.96909702
		 0.17080601 -0.17797901 0.96909702 -0.417622 -0.51869601 0.74602002 0.48000699 0.111413
		 0.870161 0.93742198 0.054625001 0.343885 0.78266102 -0.54423898 -0.30206701 0.71591002
		 0.597287 -0.361554 0.82402301 0.522937 -0.217999 0.89446902 0.444736 -0.046195999
		 -0.31140199 -0.67213899 0.67175698 -0.31140199 -0.67213899 0.67175698 -0.935067 0.048285
		 0.35116699 -0.996571 0.0080420002 0.082350999 0.63344502 0.29398701 0.71576399 0.071364999
		 -0.0057049999 0.99743402 0.071364999 -0.0057049999 0.99743402 -0.076465003 -0.60824198
		 0.79005998 -0.076465003 -0.60824198 0.79005998 0.060488001 -0.99596399 0.066311002
		 -0.017386001 -0.96058297 -0.27744901 -0.088496 -0.91042203 -0.40410399 -0.45589 -0.51833498
		 0.72352803 -0.445831 0.18888 0.87496197 -0.23637301 0.025118001 0.97133797;
	setAttr ".n[1494:1551]" -type "float3"  0.032122999 0.54008198 0.84099901 -0.117197
		 0.50117099 0.85737598 0.495781 0.86803597 0.026759 0.22298899 -0.067207001 0.97250098
		 0.22298899 -0.067207001 0.97250199 -0.203097 -0.049483001 0.97790802 -0.132723 -0.073526002
		 0.98842198 -0.066970997 -0.187865 0.979909 -0.210326 -0.91343701 0.34841701 -0.17941201
		 -0.96370399 0.19769999 -0.17941201 -0.96370399 0.19769999 0.49712199 -0.80849397
		 -0.31497201 0.35415801 -0.58960301 -0.72590703 0.19022299 -0.12831201 -0.97332001
		 -0.029689001 -0.98696703 -0.15816 0.111366 0.194745 -0.97451103 0.135253 -0.18262
		 -0.973836 0.064639002 -0.469917 -0.88034099 0.034747001 -0.77198201 -0.63469398 -0.144095
		 0.56470901 -0.81261301 -0.144095 0.56470901 -0.81261301 0.15175299 0.54968899 -0.82147002
		 0.40323901 0.912871 0.063754 0.125707 0.110384 -0.98590702 0.125707 0.110384 -0.98590702
		 -0.076615997 0.073270001 -0.99436498 -0.16493399 0.52593601 0.83437902 0.20788001
		 0.879776 0.42752799 0.20788001 0.879776 0.42752799 0.19292399 0.87223601 0.44942701
		 -0.079548001 0.561584 0.823587 -0.079548001 0.561584 0.823587 -0.063082002 -0.13219599
		 0.989214 0.081687003 -0.41736799 0.90505898 -0.120251 0.52389997 0.84324902 -0.24335299
		 0.012133 0.96986198 -0.010487 -0.70479298 -0.70933598 -0.064838998 -0.090733998 -0.99376202
		 -0.064838998 -0.090733998 -0.99376202 -0.012529 0.266289 -0.96381199 0.083284996
		 0.49813801 -0.86308903 0.063409999 -0.197806 0.97818798 0.063409999 -0.197806 0.97818798
		 -0.039340001 -0.121141 0.99185598 0.124544 0.27418301 0.95357901 0.124544 0.27418301
		 0.95357901 0.232747 0.69181198 0.68353802 -0.243394 0.315855 0.91705799 0.26238701
		 0.70551401 -0.658333 -0.034492999 0.51693201 -0.855331 0.052646 -0.17810699 0.982602
		 -0.16033299 0.077831998 0.98399001 -0.24600799 -0.61526299 0.748954 -0.077399001
		 0.081309997 0.99367899 -0.108607 0.472498 -0.87461501 0.179768 0.92764503 -0.32734999
		 0.179768 0.92764503 -0.32734999 -0.174435 0.97818202 0.112837;
	setAttr -s 1550 -ch 6200 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 4 7 -7 8 9
		mu 0 4 6 4 5 7
		f 4 10 -10 11 12
		mu 0 4 8 6 7 9
		f 4 13 -13 14 15
		mu 0 4 10 11 12 13
		f 4 16 -16 17 18
		mu 0 4 14 10 13 15
		f 4 19 -19 20 21
		mu 0 4 16 14 15 17
		f 4 22 -2 23 -22
		mu 0 4 17 2 1 16
		f 4 -3 24 25 26
		mu 0 4 3 2 18 19
		f 4 -6 -27 27 28
		mu 0 4 5 3 19 20
		f 4 -9 -29 29 30
		mu 0 4 7 5 20 21
		f 4 -12 -31 31 32
		mu 0 4 9 7 21 22
		f 4 -15 -33 33 34
		mu 0 4 13 12 23 24
		f 4 -18 -35 35 36
		mu 0 4 15 13 24 25
		f 4 -21 -37 37 38
		mu 0 4 17 15 25 26
		f 4 39 -25 -23 -39
		mu 0 4 26 18 2 17
		f 4 -26 40 41 42
		mu 0 4 19 18 27 28
		f 4 -28 -43 43 44
		mu 0 4 20 19 28 29
		f 4 -30 -45 45 46
		mu 0 4 21 20 29 30
		f 4 -32 -47 47 48
		mu 0 4 22 21 30 31
		f 4 -34 -49 49 50
		mu 0 4 24 23 32 33
		f 4 -36 -51 51 52
		mu 0 4 25 24 33 34
		f 4 -38 -53 53 54
		mu 0 4 26 25 34 35
		f 4 55 -41 -40 -55
		mu 0 4 35 27 18 26
		f 4 -42 56 57 58
		mu 0 4 28 27 36 37
		f 4 -44 -59 59 60
		mu 0 4 29 28 37 38
		f 4 -46 -61 61 62
		mu 0 4 30 29 38 39
		f 4 -48 -63 63 64
		mu 0 4 31 30 39 40
		f 4 -50 -65 65 66
		mu 0 4 33 32 41 42
		f 4 -52 -67 67 68
		mu 0 4 34 33 42 43
		f 4 -54 -69 69 70
		mu 0 4 35 34 43 44
		f 4 71 -57 -56 -71
		mu 0 4 44 36 27 35
		f 4 72 73 74 75
		mu 0 4 45 46 47 48
		f 4 76 -76 77 78
		mu 0 4 49 45 48 50
		f 4 79 -79 80 81
		mu 0 4 51 49 50 52
		f 4 82 -82 83 84
		mu 0 4 53 51 52 54
		f 4 85 -85 86 87
		mu 0 4 55 56 57 58
		f 4 88 -88 89 90
		mu 0 4 59 55 58 60
		f 4 91 -91 92 93
		mu 0 4 61 59 60 62
		f 4 94 -74 95 -94
		mu 0 4 62 47 46 61
		f 4 -75 96 97 98
		mu 0 4 48 47 63 64
		f 4 -78 -99 99 100
		mu 0 4 50 48 64 65
		f 4 -81 -101 101 102
		mu 0 4 52 50 65 66
		f 4 -84 -103 103 104
		mu 0 4 54 52 66 67
		f 4 -87 -105 105 106
		mu 0 4 58 57 68 69
		f 4 -90 -107 107 108
		mu 0 4 60 58 69 70
		f 4 -93 -109 109 110
		mu 0 4 62 60 70 71
		f 4 111 -97 -95 -111
		mu 0 4 71 63 47 62
		f 4 -98 112 113 114
		mu 0 4 64 63 72 73
		f 4 -100 -115 115 116
		mu 0 4 65 64 73 74
		f 4 -102 -117 117 118
		mu 0 4 66 65 74 75
		f 4 -104 -119 119 120
		mu 0 4 67 66 75 76
		f 4 -106 -121 121 122
		mu 0 4 69 68 77 78
		f 4 -108 -123 123 124
		mu 0 4 70 69 78 79
		f 4 -110 -125 125 126
		mu 0 4 71 70 79 80
		f 4 127 -113 -112 -127
		mu 0 4 80 72 63 71
		f 4 -116 128 129 130
		mu 0 4 74 73 81 82
		f 4 -118 -131 131 132
		mu 0 4 75 74 82 83
		f 4 -120 -133 133 134
		mu 0 4 76 75 83 84
		f 4 -122 -135 135 136
		mu 0 4 78 77 85 86
		f 4 -124 -137 137 138
		mu 0 4 79 78 86 87
		f 4 -126 -139 139 140
		mu 0 4 80 79 87 88
		f 4 -128 -141 141 142
		mu 0 4 72 80 88 89
		f 4 143 -129 -114 -143
		mu 0 4 89 81 73 72
		f 4 144 -144 145 146
		mu 0 4 90 81 89 91
		f 4 147 -130 -145 148
		mu 0 4 92 82 81 90
		f 4 -132 -148 149 150
		mu 0 4 83 82 92 93
		f 4 -134 -151 151 152
		mu 0 4 84 83 93 94
		f 4 -136 -153 153 154
		mu 0 4 86 85 95 96
		f 4 -138 -155 155 156
		mu 0 4 87 86 96 97
		f 4 -140 -157 157 158
		mu 0 4 88 87 97 98
		f 4 -146 -142 -159 159
		mu 0 4 91 89 88 98
		f 4 160 161 162 163
		mu 0 4 99 100 101 102
		f 4 164 165 166 167
		mu 0 4 103 104 105 106
		f 4 168 169 -168 170
		mu 0 4 107 108 103 106
		f 4 171 172 173 174
		mu 0 4 109 110 111 112
		f 4 175 -174 176 177
		mu 0 4 113 112 111 114
		f 4 178 -175 179 180
		mu 0 4 115 109 112 116
		f 4 181 -181 182 183
		mu 0 4 117 115 116 118
		f 4 184 -184 185 186
		mu 0 4 119 117 118 120
		f 4 187 -187 188 189
		mu 0 4 121 119 120 122
		f 4 190 -190 191 192
		mu 0 4 123 121 122 124
		f 4 193 194 -193 195
		mu 0 4 125 126 123 124
		f 4 -83 196 197 198
		mu 0 4 51 53 127 128
		f 4 -80 -199 199 200
		mu 0 4 49 51 128 129
		f 4 -77 -201 201 202
		mu 0 4 45 49 129 130
		f 4 -73 -203 203 204
		mu 0 4 46 45 130 131
		f 4 -96 -205 205 206
		mu 0 4 61 46 131 132
		f 4 -92 -207 207 208
		mu 0 4 59 61 132 133
		f 4 -89 -209 209 210
		mu 0 4 55 59 133 134
		f 4 211 -197 -86 -211
		mu 0 4 134 135 56 55
		f 4 212 -212 213 214
		mu 0 4 136 135 134 137
		f 4 -214 -210 215 216
		mu 0 4 137 134 133 138
		f 4 -216 -208 217 218
		mu 0 4 138 133 132 139
		f 4 -218 -206 219 220
		mu 0 4 139 132 131 140
		f 4 -220 -204 221 222
		mu 0 4 140 131 130 141
		f 4 -222 -202 223 224
		mu 0 4 141 130 129 142
		f 4 -224 -200 225 226
		mu 0 4 142 129 128 143
		f 4 -198 -213 227 -226
		mu 0 4 128 127 144 143
		f 4 228 229 -172 230
		mu 0 4 145 146 110 109
		f 4 231 -231 -179 232
		mu 0 4 147 145 109 115
		f 4 233 234 -215 235
		mu 0 4 148 149 136 137
		f 4 236 -219 237 238
		mu 0 4 150 138 139 151
		f 4 239 -236 -217 -237
		mu 0 4 150 148 137 138
		f 4 240 -233 -182 241
		mu 0 4 152 147 115 117
		f 4 -242 -185 242 243
		mu 0 4 152 117 119 153
		f 4 244 245 -223 246
		mu 0 4 154 155 140 141
		f 4 247 -247 -225 248
		mu 0 4 156 154 141 142
		f 4 249 -232 250 251
		mu 0 4 157 158 159 160
		f 4 -228 -235 252 253
		mu 0 4 143 144 161 162
		f 4 254 -229 -250 255
		mu 0 4 163 164 158 157
		f 4 256 -249 -227 -254
		mu 0 4 162 156 142 143
		f 4 257 -256 258 259
		mu 0 4 165 163 157 166
		f 4 -260 260 -257 261
		mu 0 4 165 166 156 162
		f 4 -251 -241 262 263
		mu 0 4 160 159 167 168
		f 4 -244 264 265 -263
		mu 0 4 167 169 170 168
		f 4 266 -248 -261 267
		mu 0 4 171 154 156 166
		f 4 -259 -252 268 -268
		mu 0 4 166 157 160 171
		f 4 269 -238 -221 -246
		mu 0 4 155 151 139 140
		f 4 -245 -267 270 271
		mu 0 4 155 154 171 172
		f 4 272 -266 273 -272
		mu 0 4 172 168 170 155
		f 4 -269 -264 -273 -271
		mu 0 4 171 160 168 172
		f 4 274 -195 275 276
		mu 0 4 173 123 126 174
		f 4 -277 277 278 279
		mu 0 4 175 176 177 178
		f 4 280 -240 281 -279
		mu 0 4 177 148 150 178
		f 4 282 -191 -275 283
		mu 0 4 179 121 123 173
		f 4 284 -270 -274 285
		mu 0 4 180 151 155 170
		f 4 286 -243 -188 -283
		mu 0 4 179 153 119 121
		f 4 -286 -265 -287 287
		mu 0 4 180 170 169 181
		f 4 -284 -280 288 -288
		mu 0 4 181 175 178 180
		f 4 -282 -239 -285 -289
		mu 0 4 178 150 151 180
		f 4 289 290 291 292
		mu 0 4 182 183 184 185
		f 4 -161 293 294 295
		mu 0 4 100 99 186 187
		f 4 296 297 -171 298
		mu 0 4 188 189 107 106
		f 4 -299 -167 299 300
		mu 0 4 188 106 105 190
		f 4 301 -162 302 303
		mu 0 4 191 101 100 192
		f 4 -304 304 -301 305
		mu 0 4 191 192 188 190
		f 4 306 -297 -305 307
		mu 0 4 193 189 188 192
		f 4 -308 -303 -296 308
		mu 0 4 193 192 100 187
		f 4 309 310 -163 311
		mu 0 4 194 195 102 101
		f 4 -312 -302 312 313
		mu 0 4 194 101 191 196
		f 4 -313 -306 314 315
		mu 0 4 196 191 190 197
		f 4 -315 -300 316 317
		mu 0 4 197 190 105 198
		f 4 318 -317 -166 319
		mu 0 4 199 198 105 104
		f 4 320 -293 321 322
		mu 0 4 200 182 185 201
		f 4 -319 323 -323 324
		mu 0 4 198 199 200 201
		f 4 325 326 -318 -325
		mu 0 4 201 202 197 198
		f 4 327 328 -316 -327
		mu 0 4 202 203 196 197
		f 4 -292 329 330 331
		mu 0 4 185 184 204 205
		f 4 -326 -322 -332 332
		mu 0 4 202 201 185 205
		f 4 -180 -176 333 334
		mu 0 4 116 112 113 206
		f 4 -183 -335 335 336
		mu 0 4 118 116 206 207
		f 4 -186 -337 337 338
		mu 0 4 120 118 207 208
		f 4 -189 -339 339 340
		mu 0 4 122 120 208 209
		f 4 -192 -341 341 342
		mu 0 4 124 122 209 210
		f 4 343 -196 -343 344
		mu 0 4 211 125 124 210
		f 4 345 -345 346 347
		mu 0 4 212 211 210 213
		f 4 -347 -342 348 349
		mu 0 4 213 210 209 214
		f 4 -349 -340 350 351
		mu 0 4 214 209 208 215
		f 4 -351 -338 352 353
		mu 0 4 215 208 207 216
		f 4 354 355 356 357
		mu 0 4 217 218 219 220
		f 4 -170 358 -355 359
		mu 0 4 103 108 218 217
		f 4 -358 360 361 362
		mu 0 4 217 220 221 222
		f 4 363 -165 -360 364
		mu 0 4 223 104 103 217
		f 4 365 -365 -363 366
		mu 0 4 224 223 217 222
		f 4 -367 -362 367 368
		mu 0 4 224 222 221 225
		f 4 369 -320 -364 370
		mu 0 4 226 199 104 223
		f 4 371 -371 -366 372
		mu 0 4 227 226 223 224
		f 4 -373 -369 373 374
		mu 0 4 227 224 225 228
		f 4 -324 -370 375 376
		mu 0 4 200 199 226 229
		f 4 -375 377 378 379
		mu 0 4 227 228 230 231
		f 4 -376 -372 -380 380
		mu 0 4 229 226 227 231
		f 4 381 -321 -377 382
		mu 0 4 232 182 200 229
		f 4 383 -290 -382 384
		mu 0 4 233 183 182 232
		f 4 -379 385 386 387
		mu 0 4 231 230 234 235
		f 4 -383 -381 -388 388
		mu 0 4 232 229 231 235
		f 4 389 -385 390 391
		mu 0 4 236 233 232 237
		f 4 392 -178 393 394
		mu 0 4 238 113 114 239
		f 4 -353 -336 395 396
		mu 0 4 216 207 206 240
		f 4 -334 -393 397 -396
		mu 0 4 206 113 238 240
		f 4 398 -348 399 400
		mu 0 4 241 212 213 242
		f 4 401 -387 402 -401
		mu 0 4 242 235 234 241
		f 4 403 -391 -389 -402
		mu 0 4 242 237 232 235
		f 4 404 405 -392 406
		mu 0 4 243 244 236 237
		f 4 -407 -404 407 408
		mu 0 4 243 237 242 245
		f 4 -408 -400 -350 409
		mu 0 4 245 242 213 214
		f 4 410 -295 411 412
		mu 0 4 246 187 186 247
		f 4 413 -309 -411 414
		mu 0 4 248 193 187 246
		f 4 415 -307 -414 416
		mu 0 4 249 189 193 248
		f 4 417 -298 -416 418
		mu 0 4 250 107 189 249
		f 4 419 -169 -418 420
		mu 0 4 251 108 107 250
		f 4 421 -359 -420 422
		mu 0 4 252 218 108 251
		f 4 423 424 -356 -422
		mu 0 4 252 253 219 218
		f 4 425 426 -405 427
		mu 0 4 254 255 244 243
		f 4 428 -410 -352 429
		mu 0 4 256 245 214 215
		f 4 -413 430 431 432
		mu 0 4 246 247 257 258
		f 4 -415 -433 433 434
		mu 0 4 248 246 258 259
		f 4 -417 -435 435 436
		mu 0 4 249 248 259 260
		f 4 -419 -437 437 438
		mu 0 4 250 249 260 261
		f 4 -421 -439 439 440
		mu 0 4 251 250 261 262
		f 4 -423 -441 441 442
		mu 0 4 252 251 262 263
		f 4 443 -424 -443 444
		mu 0 4 264 253 252 263
		f 4 445 446 447 448
		mu 0 4 265 266 267 268
		f 4 449 -446 450 451
		mu 0 4 269 266 265 270
		f 4 452 453 -452 454
		mu 0 4 271 272 269 270
		f 4 455 456 457 458
		mu 0 4 273 274 275 276
		f 4 459 460 461 462
		mu 0 4 277 278 279 276
		f 4 463 -459 -462 464
		mu 0 4 280 273 276 279
		f 4 -465 -461 465 466
		mu 0 4 280 279 278 281
		f 4 467 468 -456 469
		mu 0 4 282 283 274 273
		f 4 -470 -464 470 471
		mu 0 4 282 273 280 284
		f 4 472 473 -468 474
		mu 0 4 285 286 283 282
		f 4 475 476 -473 477
		mu 0 4 287 288 286 285
		f 4 478 479 -476 480
		mu 0 4 289 290 288 287
		f 4 481 482 -479 483
		mu 0 4 291 292 290 289
		f 4 484 485 -482 486
		mu 0 4 293 294 292 291
		f 4 -458 487 -485 488
		mu 0 4 276 275 294 293
		f 4 489 -463 -489 490
		mu 0 4 295 277 276 293
		f 4 491 492 493 494
		mu 0 4 296 297 298 299
		f 4 495 -493 496 497
		mu 0 4 300 298 297 301
		f 4 -495 498 499 500
		mu 0 4 296 299 302 303
		f 4 501 -492 502 503
		mu 0 4 304 297 296 305
		f 4 504 -497 -502 505
		mu 0 4 306 301 297 304
		f 4 -503 -501 506 507
		mu 0 4 305 296 303 307
		f 4 -504 -508 508 509
		mu 0 4 304 305 307 308
		f 4 -506 -510 510 511
		mu 0 4 306 304 308 309
		f 4 512 -512 513 514
		mu 0 4 310 306 309 311
		f 4 515 -515 516 517
		mu 0 4 312 310 311 313
		f 4 -517 518 519 520
		mu 0 4 313 311 314 315
		f 4 521 -518 -521 522
		mu 0 4 316 312 313 315
		f 4 523 -509 524 525
		mu 0 4 317 308 307 318
		f 4 526 -526 527 528
		mu 0 4 319 317 318 320
		f 4 -511 -524 -527 529
		mu 0 4 309 308 317 319
		f 4 -519 -514 -530 530
		mu 0 4 314 311 309 319
		f 4 531 -520 -531 -529
		mu 0 4 320 315 314 319
		f 4 532 -523 -532 533
		mu 0 4 321 316 315 320
		f 4 -525 534 -534 -528
		mu 0 4 318 307 321 320
		f 4 -535 -507 535 536
		mu 0 4 321 307 303 322
		f 4 -500 537 538 539
		mu 0 4 303 302 323 324
		f 4 -533 -537 540 541
		mu 0 4 316 321 322 325
		f 4 542 -536 -540 543
		mu 0 4 326 322 303 324
		f 4 544 -478 545 546
		mu 0 4 327 287 285 328
		f 4 -475 -472 547 -546
		mu 0 4 285 282 284 328
		f 4 -471 -467 548 549
		mu 0 4 284 280 281 329
		f 4 550 -541 -543 551
		mu 0 4 330 325 322 326
		f 4 -481 -545 552 553
		mu 0 4 289 287 327 331
		f 4 -553 554 555 556
		mu 0 4 331 327 332 330
		f 4 557 -552 558 559
		mu 0 4 333 330 326 334
		f 4 -539 560 561 562
		mu 0 4 324 323 335 336
		f 4 -559 -544 -563 563
		mu 0 4 334 326 324 336
		f 4 564 565 -562 566
		mu 0 4 337 338 336 335
		f 4 567 568 569 570
		mu 0 4 339 340 341 342
		f 4 571 -571 572 573
		mu 0 4 343 339 342 344
		f 4 574 -574 575 576
		mu 0 4 345 343 344 346
		f 4 577 -577 578 579
		mu 0 4 347 345 346 348
		f 4 580 -580 581 582
		mu 0 4 349 347 348 350
		f 4 583 -583 584 585
		mu 0 4 351 349 350 352
		f 4 586 -586 587 588
		mu 0 4 353 351 352 354
		f 4 589 -569 590 -589
		mu 0 4 354 355 356 353
		f 4 -570 591 592 593
		mu 0 4 342 341 357 358
		f 4 -573 -594 594 595
		mu 0 4 344 342 358 359
		f 4 -588 596 597 598
		mu 0 4 354 352 360 361
		f 4 599 -592 -590 -599
		mu 0 4 361 362 355 354
		f 4 -147 600 601 602
		mu 0 4 90 91 363 364
		f 4 603 -149 -603 604
		mu 0 4 365 92 90 364
		f 4 -150 -604 605 606
		mu 0 4 93 92 365 366
		f 4 607 -152 -607 608
		mu 0 4 367 94 93 366
		f 4 609 -606 610 611
		mu 0 4 368 369 370 371
		f 4 612 -602 613 614
		mu 0 4 372 373 374 375
		f 4 -611 -605 -613 615
		mu 0 4 371 370 373 372
		f 4 616 -609 -610 617
		mu 0 4 376 377 369 368
		f 4 618 -615 619 620
		mu 0 4 378 372 375 379
		f 4 621 -618 622 623
		mu 0 4 380 376 368 381
		f 4 624 625 626 627
		mu 0 4 382 383 384 385
		f 4 -621 628 629 630
		mu 0 4 378 379 386 387
		f 4 -627 631 632 633
		mu 0 4 385 384 388 389
		f 4 634 635 -622 636
		mu 0 4 390 391 392 393
		f 4 637 638 639 -637
		mu 0 4 393 394 395 390
		f 4 640 -640 641 642
		mu 0 4 396 390 395 397
		f 4 643 -639 644 645
		mu 0 4 398 399 400 401
		f 4 -643 646 647 648
		mu 0 4 396 397 402 403
		f 4 -620 649 650 651
		mu 0 4 379 375 404 405
		f 4 -629 -652 652 653
		mu 0 4 386 379 405 406
		f 4 654 -648 655 656
		mu 0 4 407 403 402 408
		f 4 657 -653 658 -657
		mu 0 4 408 406 405 407
		f 4 659 -654 660 661
		mu 0 4 409 410 411 412
		f 4 -649 662 663 664
		mu 0 4 396 403 413 414
		f 4 665 -635 -641 -665
		mu 0 4 414 391 390 396
		f 4 666 -617 -636 667
		mu 0 4 415 416 392 391
		f 4 -154 -608 -667 668
		mu 0 4 96 95 417 418
		f 4 669 -156 -669 670
		mu 0 4 419 97 96 418
		f 4 671 -664 672 673
		mu 0 4 420 414 413 421
		f 4 -668 -666 -672 674
		mu 0 4 415 391 414 420
		f 4 675 -671 -675 -674
		mu 0 4 421 422 415 420
		f 4 -650 -614 676 677
		mu 0 4 404 375 374 423
		f 4 -158 -670 678 679
		mu 0 4 98 97 419 424
		f 4 -601 -160 -680 -677
		mu 0 4 363 91 98 424
		f 4 -679 -676 680 681
		mu 0 4 423 422 421 425
		f 4 682 -678 -682 683
		mu 0 4 426 404 423 425
		f 4 -659 -651 -683 684
		mu 0 4 407 405 404 426
		f 4 685 -663 -655 -685
		mu 0 4 426 413 403 407
		f 4 -681 -673 -686 -684
		mu 0 4 425 421 413 426
		f 4 -638 -624 686 687
		mu 0 4 427 380 381 428
		f 4 688 -616 689 690
		mu 0 4 429 371 372 430
		f 4 691 -612 -689 692
		mu 0 4 431 368 371 429
		f 4 -690 -619 693 694
		mu 0 4 430 372 378 432
		f 4 695 -623 -692 696
		mu 0 4 433 381 368 431
		f 4 -694 -631 697 698
		mu 0 4 432 378 387 434
		f 4 699 -397 700 701
		mu 0 4 435 216 240 436
		f 4 -428 -409 -429 702
		mu 0 4 254 243 245 256
		f 4 -430 -354 -700 703
		mu 0 4 256 215 216 435
		f 4 704 705 -426 706
		mu 0 4 437 438 255 254
		f 4 707 -331 708 -705
		mu 0 4 437 205 204 438
		f 4 -328 -333 -708 709
		mu 0 4 203 202 205 437
		f 4 -701 -398 710 711
		mu 0 4 436 240 238 439
		f 4 712 713 -310 714
		mu 0 4 440 441 195 194
		f 4 -314 -329 715 -715
		mu 0 4 194 196 203 440
		f 4 716 -707 -703 717
		mu 0 4 442 437 254 256
		f 4 -711 -395 718 719
		mu 0 4 439 238 239 443
		f 4 -720 720 -713 721
		mu 0 4 439 443 441 440
		f 4 -704 -702 -712 722
		mu 0 4 256 435 436 439
		f 4 -722 723 -718 -723
		mu 0 4 439 440 442 256
		f 4 -716 -710 -717 -724
		mu 0 4 440 203 437 442
		f 4 724 -698 725 726
		mu 0 4 444 445 446 447
		f 4 -630 -660 727 -726
		mu 0 4 446 410 409 447
		f 4 728 -662 729 730
		mu 0 4 448 409 412 449
		f 4 -661 -658 731 732
		mu 0 4 412 411 450 451
		f 4 -656 733 734 -732
		mu 0 4 450 452 453 451
		f 4 735 736 737 738
		mu 0 4 454 455 449 456
		f 4 -738 -730 -733 739
		mu 0 4 456 449 412 451
		f 4 -740 -735 740 -739
		mu 0 4 456 451 453 454
		f 4 -734 -647 741 742
		mu 0 4 453 452 457 458
		f 4 -642 -644 743 -742
		mu 0 4 457 399 398 458
		f 4 744 -741 -743 745
		mu 0 4 459 454 453 458
		f 4 746 -646 747 748
		mu 0 4 460 398 401 461
		f 4 749 -736 -745 750
		mu 0 4 460 455 454 459
		f 4 -746 -744 -747 -751
		mu 0 4 459 458 398 460
		f 4 -645 -688 751 752
		mu 0 4 401 400 462 463
		f 4 753 -625 754 755
		mu 0 4 464 383 382 465
		f 4 -687 -696 756 757
		mu 0 4 428 381 433 466
		f 4 -752 -758 758 759
		mu 0 4 463 462 467 468
		f 4 -632 760 761 762
		mu 0 4 469 470 471 472
		f 4 763 -761 -626 764
		mu 0 4 473 471 470 474
		f 4 765 -765 -754 766
		mu 0 4 475 473 474 476
		f 4 -763 767 768 769
		mu 0 4 469 472 477 478
		f 4 -633 -770 770 771
		mu 0 4 389 388 479 480
		f 4 772 -756 773 774
		mu 0 4 481 464 465 482
		f 4 775 776 -762 777
		mu 0 4 483 484 472 471
		f 4 778 -767 -773 779
		mu 0 4 485 475 476 486
		f 4 -757 780 -780 781
		mu 0 4 466 433 485 486
		f 4 -775 782 -759 -782
		mu 0 4 481 482 468 467
		f 4 783 -693 784 785
		mu 0 4 487 431 429 483
		f 4 -785 -691 786 -776
		mu 0 4 483 429 430 484
		f 4 -764 787 -786 -778
		mu 0 4 471 473 487 483
		f 4 -787 -695 788 789
		mu 0 4 484 430 432 488
		f 4 -790 790 -768 -777
		mu 0 4 484 488 477 472
		f 4 -781 -697 -784 791
		mu 0 4 485 433 431 487
		f 4 -766 -779 -792 -788
		mu 0 4 473 475 485 487
		f 4 -789 -699 792 793
		mu 0 4 488 432 434 489
		f 4 -794 794 -769 -791
		mu 0 4 488 489 478 477
		f 4 -793 -725 795 796
		mu 0 4 490 445 444 491
		f 4 -797 797 -771 -795
		mu 0 4 490 491 480 479
		f 4 798 -755 799 800
		mu 0 4 492 465 382 493
		f 4 801 -634 802 803
		mu 0 4 494 385 389 495
		f 4 -800 -628 -802 804
		mu 0 4 493 382 385 494
		f 4 805 -803 -772 806
		mu 0 4 496 495 389 480
		f 4 807 -774 -799 808
		mu 0 4 497 482 465 492
		f 4 -801 -805 809 810
		mu 0 4 492 493 494 498
		f 4 -810 -804 -806 811
		mu 0 4 498 494 495 496
		f 4 812 -807 -798 813
		mu 0 4 499 496 480 491
		f 4 814 -783 -808 815
		mu 0 4 500 468 482 497
		f 4 816 -812 -813 817
		mu 0 4 501 498 496 499
		f 4 818 -809 -811 -817
		mu 0 4 501 497 492 498
		f 4 -814 -796 819 820
		mu 0 4 499 491 444 502
		f 4 821 -748 -753 822
		mu 0 4 503 461 401 463
		f 4 -823 -760 -815 823
		mu 0 4 503 463 468 500
		f 4 824 -818 -821 825
		mu 0 4 504 501 499 502
		f 4 -750 -749 826 827
		mu 0 4 455 460 461 505
		f 4 828 -731 -737 -828
		mu 0 4 505 448 449 455
		f 4 829 -824 830 831
		mu 0 4 506 503 500 504
		f 4 -831 -816 -819 -825
		mu 0 4 504 500 497 501
		f 4 832 -820 -727 833
		mu 0 4 507 502 444 447
		f 4 -832 -826 -833 834
		mu 0 4 506 504 502 507
		f 4 -834 -728 -729 835
		mu 0 4 507 447 409 448
		f 4 -836 -829 836 -835
		mu 0 4 507 448 505 506
		f 4 -837 -827 -822 -830
		mu 0 4 506 505 461 503
		f 4 837 838 839 840
		mu 0 4 508 509 510 511
		f 4 841 -841 842 843
		mu 0 4 512 508 511 513
		f 4 844 -844 845 846
		mu 0 4 514 512 513 515
		f 4 847 -847 848 849
		mu 0 4 516 514 515 517
		f 4 850 -850 851 852
		mu 0 4 518 519 520 521
		f 4 853 -853 854 855
		mu 0 4 522 518 521 523
		f 4 856 -856 857 858
		mu 0 4 524 522 523 525
		f 4 859 -839 860 -859
		mu 0 4 525 526 527 524
		f 4 861 862 -838 863
		mu 0 4 528 529 509 508
		f 4 864 -864 -842 865
		mu 0 4 530 528 508 512
		f 4 866 -866 -845 867
		mu 0 4 531 530 512 514
		f 4 868 -868 -848 869
		mu 0 4 532 531 514 516
		f 4 870 -870 -851 871
		mu 0 4 533 534 519 518
		f 4 872 -872 -854 873
		mu 0 4 535 533 518 522
		f 4 874 -874 -857 875
		mu 0 4 536 535 522 524
		f 4 -861 -863 876 -876
		mu 0 4 524 527 537 536
		f 4 -843 877 878 879
		mu 0 4 513 511 538 539
		f 4 880 881 -60 882
		mu 0 4 540 541 38 37
		f 4 -846 -880 883 884
		mu 0 4 515 513 539 542
		f 4 885 -883 -58 886
		mu 0 4 543 540 37 36
		f 4 -849 -885 887 888
		mu 0 4 517 515 542 544
		f 4 889 -887 -72 890
		mu 0 4 545 543 36 44
		f 4 -852 -889 891 892
		mu 0 4 521 520 546 547
		f 4 893 -891 -70 894
		mu 0 4 548 545 44 43
		f 4 895 896 -578 897
		mu 0 4 549 550 345 347
		f 4 -62 -882 898 899
		mu 0 4 39 38 541 551
		f 4 900 901 902 903
		mu 0 4 552 553 554 555
		f 4 -575 -897 904 905
		mu 0 4 343 345 550 556
		f 4 906 -896 907 908
		mu 0 4 557 550 549 558
		f 4 -572 -906 909 910
		mu 0 4 339 343 556 559
		f 4 911 912 -568 -911
		mu 0 4 559 560 340 339
		f 4 -591 -913 913 914
		mu 0 4 353 356 561 562
		f 4 -587 -915 915 916
		mu 0 4 351 353 562 563
		f 4 917 -898 -581 918
		mu 0 4 564 549 347 349
		f 4 -584 -917 919 -919
		mu 0 4 349 351 563 564
		f 4 -916 920 921 922
		mu 0 4 563 562 565 566
		f 4 923 -918 924 925
		mu 0 4 555 549 564 567
		f 4 926 -908 -924 -903
		mu 0 4 554 558 549 555
		f 4 -925 -920 -923 927
		mu 0 4 567 564 563 566
		f 4 -64 -900 -901 928
		mu 0 4 40 39 551 568
		f 4 -904 -926 929 930
		mu 0 4 552 555 567 569
		f 4 -66 -929 931 932
		mu 0 4 42 41 570 571
		f 4 933 -895 -68 -933
		mu 0 4 571 548 43 42
		f 4 -932 -931 934 935
		mu 0 4 572 552 569 573
		f 4 936 -922 937 938
		mu 0 4 574 566 565 575
		f 4 -930 -928 -937 939
		mu 0 4 569 567 566 574
		f 4 940 -934 -936 941
		mu 0 4 576 577 572 573
		f 4 -942 -935 -940 942
		mu 0 4 576 573 569 574
		f 4 943 -899 944 945
		mu 0 4 578 553 579 580
		f 4 -945 -881 946 947
		mu 0 4 580 579 581 582
		f 4 -947 -886 948 949
		mu 0 4 582 581 583 584
		f 4 -949 -890 950 951
		mu 0 4 585 586 587 588
		f 4 -951 -894 -941 952
		mu 0 4 588 587 577 576
		f 4 953 -884 954 955
		mu 0 4 589 542 539 590
		f 4 -948 956 -956 957
		mu 0 4 580 582 589 590
		f 4 958 959 -953 960
		mu 0 4 591 592 588 576
		f 4 961 -888 -954 962
		mu 0 4 593 544 542 589
		f 4 963 -892 -962 964
		mu 0 4 592 547 546 594
		f 4 -963 -957 -950 965
		mu 0 4 593 589 582 584
		f 4 -952 -960 -965 -966
		mu 0 4 585 588 592 594
		f 4 -943 -939 966 967
		mu 0 4 576 574 575 595
		f 4 -921 968 969 970
		mu 0 4 565 562 596 597
		f 4 -967 -938 -971 971
		mu 0 4 595 575 565 597
		f 4 -860 972 973 974
		mu 0 4 526 525 598 599
		f 4 975 -878 -840 -975
		mu 0 4 600 538 511 510
		f 4 -955 -879 976 977
		mu 0 4 590 539 538 601
		f 4 -946 -958 -978 978
		mu 0 4 578 580 590 601
		f 4 -969 -914 979 980
		mu 0 4 596 562 561 602
		f 4 -980 -912 981 982
		mu 0 4 603 560 559 604
		f 4 -970 -981 983 984
		mu 0 4 597 596 602 605
		f 4 985 -905 -907 986
		mu 0 4 606 556 550 557
		f 4 -977 -976 987 988
		mu 0 4 601 538 600 607
		f 4 -982 -910 -986 989
		mu 0 4 604 559 556 606
		f 4 990 -988 991 992
		mu 0 4 608 607 600 609
		f 4 993 994 -984 995
		mu 0 4 610 611 605 602
		f 4 -983 996 -993 -996
		mu 0 4 603 604 608 609
		f 4 997 998 -989 -991
		mu 0 4 608 612 601 607
		f 4 999 -909 -927 1000
		mu 0 4 613 557 558 554
		f 4 1001 -987 -1000 1002
		mu 0 4 612 606 557 613
		f 4 -1001 -902 -944 1003
		mu 0 4 613 554 553 578
		f 4 -1004 -979 -999 -1003
		mu 0 4 613 578 601 612
		f 4 -998 -997 -990 -1002
		mu 0 4 612 608 604 606
		f 4 -992 -974 1004 -994
		mu 0 4 610 599 598 611
		f 4 1005 -972 -985 1006
		mu 0 4 614 595 597 605
		f 4 1007 -961 -968 -1006
		mu 0 4 614 591 576 595
		f 4 -855 -893 1008 1009
		mu 0 4 523 521 547 615
		f 4 -1009 -964 -959 1010
		mu 0 4 615 547 592 591
		f 4 1011 -973 -858 -1010
		mu 0 4 615 598 525 523
		f 4 1012 -1005 -1012 1013
		mu 0 4 616 611 598 615
		f 4 -1011 -1008 1014 -1014
		mu 0 4 615 591 614 616
		f 4 -1007 -995 -1013 -1015
		mu 0 4 614 605 611 616
		f 4 1015 1016 1017 1018
		mu 0 4 617 618 619 620
		f 4 1019 -1019 1020 1021
		mu 0 4 621 617 620 622
		f 4 -1022 1022 1023 1024
		mu 0 4 621 622 623 624
		f 4 1025 -1024 1026 1027
		mu 0 4 625 624 623 337
		f 4 -1028 -567 1028 1029
		mu 0 4 625 337 335 626
		f 4 1030 -1029 -561 1031
		mu 0 4 627 626 335 323
		f 4 1032 -1032 -538 1033
		mu 0 4 628 627 323 302
		f 4 1034 -1034 -499 1035
		mu 0 4 629 628 302 299
		f 4 -1036 -494 1036 1037
		mu 0 4 629 299 298 630
		f 4 1038 1039 -1016 1040
		mu 0 4 631 632 618 617
		f 4 -1041 -1020 1041 1042
		mu 0 4 631 617 621 633
		f 4 -1042 -1025 1043 1044
		mu 0 4 633 621 624 634
		f 4 -1043 -1045 1045 1046
		mu 0 4 631 633 634 635
		f 4 1047 -1044 -1026 1048
		mu 0 4 636 634 624 625
		f 4 -432 1049 1050 1051
		mu 0 4 637 638 639 640
		f 4 1052 1053 1054 1055
		mu 0 4 641 639 642 643
		f 4 1056 -1051 -1053 1057
		mu 0 4 644 640 639 641
		f 4 1058 -1056 1059 1060
		mu 0 4 645 641 643 635
		f 4 -1061 -1046 -1048 1061
		mu 0 4 645 635 634 636
		f 4 -434 -1052 1062 1063
		mu 0 4 646 637 640 647
		f 4 -1063 -1057 1064 1065
		mu 0 4 647 640 644 648
		f 4 -1065 -1058 -1059 1066
		mu 0 4 648 644 641 645
		f 4 -436 -1064 1067 1068
		mu 0 4 649 646 647 650;
	setAttr ".fc[500:999]"
		f 4 -438 -1069 1069 1070
		mu 0 4 651 649 650 652
		f 4 -440 -1071 1071 1072
		mu 0 4 653 651 652 654
		f 4 1073 -445 1074 1075
		mu 0 4 655 656 657 658
		f 4 -442 -1073 1076 -1075
		mu 0 4 657 653 654 658
		f 4 -455 -451 1077 1078
		mu 0 4 271 270 265 659
		f 4 -1078 -449 1079 1080
		mu 0 4 659 265 268 660
		f 4 -565 -1027 1081 1082
		mu 0 4 338 337 623 661
		f 4 1083 -560 1084 1085
		mu 0 4 662 333 334 663
		f 4 1086 -1018 1087 1088
		mu 0 4 664 620 619 665
		f 4 1089 1090 -453 1091
		mu 0 4 666 667 272 271
		f 4 -1092 -1079 1092 1093
		mu 0 4 666 271 659 668
		f 4 -1021 -1087 1094 1095
		mu 0 4 622 620 664 669
		f 4 -1082 -1023 -1096 1096
		mu 0 4 661 623 622 669
		f 4 1097 -1095 1098 1099
		mu 0 4 670 669 664 671
		f 4 1100 -1090 1101 1102
		mu 0 4 672 667 666 671
		f 4 -1103 -1099 -1089 1103
		mu 0 4 672 671 664 665
		f 4 -1094 1104 -1100 -1102
		mu 0 4 666 668 670 671
		f 4 1105 1106 -1097 -1098
		mu 0 4 670 673 661 669
		f 4 -1085 -564 -566 1107
		mu 0 4 663 334 336 338
		f 4 1108 1109 -1086 1110
		mu 0 4 673 674 662 663
		f 4 -1108 -1083 -1107 -1111
		mu 0 4 663 338 661 673
		f 4 -1106 -1105 1111 -1109
		mu 0 4 673 670 668 674
		f 4 1112 -1093 -1081 1113
		mu 0 4 675 668 659 660
		f 4 -1080 -448 1114 1115
		mu 0 4 660 268 267 676
		f 4 1116 -1114 -1116 1117
		mu 0 4 677 675 660 676
		f 4 1118 -1112 -1113 1119
		mu 0 4 678 674 668 675
		f 4 1120 -1110 -1119 1121
		mu 0 4 679 662 674 678
		f 4 -1120 -1117 1122 1123
		mu 0 4 678 675 677 680
		f 4 -1123 1124 1125 1126
		mu 0 4 680 677 681 682
		f 4 -1126 1127 1128 1129
		mu 0 4 682 681 683 684
		f 4 -1129 1130 1131 1132
		mu 0 4 684 683 685 686
		f 4 1133 -490 1134 -1132
		mu 0 4 685 277 295 686
		f 4 -1135 -491 1135 1136
		mu 0 4 686 295 293 687
		f 4 -1136 -487 1137 1138
		mu 0 4 687 293 291 688
		f 4 -484 -554 1139 -1138
		mu 0 4 291 289 331 688
		f 4 1140 -557 -558 1141
		mu 0 4 689 331 330 333
		f 4 -1142 -1084 -1121 1142
		mu 0 4 689 333 662 679
		f 4 1143 -1140 -1141 1144
		mu 0 4 690 688 331 689
		f 4 1145 -1122 -1124 1146
		mu 0 4 691 679 678 680
		f 4 -1145 -1143 -1146 1147
		mu 0 4 690 689 679 691
		f 4 1148 -1147 -1127 1149
		mu 0 4 692 691 680 682
		f 4 1150 -1150 -1130 1151
		mu 0 4 693 692 682 684
		f 4 1152 -1152 -1133 1153
		mu 0 4 694 693 684 686
		f 4 1154 -1154 -1137 1155
		mu 0 4 695 694 686 687
		f 4 -1156 -1139 -1144 1156
		mu 0 4 695 687 688 690
		f 4 1157 1158 -1148 1159
		mu 0 4 696 697 690 691
		f 4 1160 -1160 -1149 1161
		mu 0 4 698 696 691 692
		f 4 1162 -1162 -1151 1163
		mu 0 4 699 698 692 693
		f 4 1164 -1164 -1153 1165
		mu 0 4 700 699 693 694
		f 4 1166 -1166 -1155 1167
		mu 0 4 701 700 694 695
		f 4 -1168 -1157 -1159 1168
		mu 0 4 701 695 690 697
		f 4 1169 -1161 1170 1171
		mu 0 4 702 696 698 703
		f 4 1172 -1165 1173 1174
		mu 0 4 704 699 700 705
		f 4 -1174 -1167 1175 1176
		mu 0 4 705 700 701 706
		f 4 1177 -1158 -1170 1178
		mu 0 4 707 697 696 702
		f 4 -1176 -1169 -1178 1179
		mu 0 4 706 701 697 707
		f 4 -1179 -1172 1180 1181
		mu 0 4 707 702 703 704
		f 4 -1175 -1177 -1180 -1182
		mu 0 4 704 705 706 707
		f 4 -1171 -1163 -1173 -1181
		mu 0 4 703 698 699 704
		f 4 1182 1183 -1076 1184
		mu 0 4 708 709 655 658
		f 4 -1185 -1077 1185 1186
		mu 0 4 708 658 654 710
		f 4 -1186 -1072 1187 1188
		mu 0 4 710 654 652 711
		f 4 1189 -1049 -1030 1190
		mu 0 4 712 636 625 626
		f 4 -1067 -1062 -1190 1191
		mu 0 4 648 645 636 712
		f 4 -1188 -1070 1192 1193
		mu 0 4 711 652 650 713
		f 4 1194 -1192 1195 1196
		mu 0 4 713 648 712 714
		f 4 -1068 -1066 -1195 -1193
		mu 0 4 650 647 648 713
		f 4 1197 -1191 -1031 1198
		mu 0 4 715 712 626 627
		f 4 1199 -1196 -1198 1200
		mu 0 4 716 714 712 715
		f 4 1201 -1194 -1197 -1200
		mu 0 4 716 711 713 714
		f 4 1202 -1199 -1033 1203
		mu 0 4 717 715 627 628
		f 4 1204 -1201 -1203 1205
		mu 0 4 718 716 715 717
		f 4 1206 -1189 -1202 -1205
		mu 0 4 718 710 711 716
		f 4 1207 -1204 -1035 1208
		mu 0 4 719 717 628 629
		f 4 1209 -1206 -1208 1210
		mu 0 4 720 718 717 719
		f 4 1211 -1187 -1207 -1210
		mu 0 4 720 708 710 718
		f 4 1212 -1183 -1212 1213
		mu 0 4 721 709 708 720
		f 4 1214 -1209 -1038 1215
		mu 0 4 722 719 629 630
		f 4 1216 -1037 -496 1217
		mu 0 4 723 630 298 300
		f 4 -1214 -1211 -1215 1218
		mu 0 4 721 720 719 722
		f 4 -1216 -1217 1219 1220
		mu 0 4 722 630 723 724
		f 4 1221 1222 -1219 -1221
		mu 0 4 724 725 721 722
		f 4 1223 1224 -1222 1225
		mu 0 4 726 727 725 724
		f 4 -1226 -1220 1226 1227
		mu 0 4 726 724 723 728
		f 4 1228 -1227 -1218 1229
		mu 0 4 729 728 723 300
		f 4 -1230 -498 1230 1231
		mu 0 4 729 300 301 730
		f 4 -1231 -505 -513 1232
		mu 0 4 730 301 306 310
		f 4 1233 -551 -556 1234
		mu 0 4 731 325 330 332
		f 4 1235 -1233 -516 1236
		mu 0 4 731 730 310 312
		f 4 -522 -542 -1234 -1237
		mu 0 4 312 316 325 731
		f 4 1237 -555 -547 1238
		mu 0 4 732 332 327 328
		f 4 -1239 -548 -550 1239
		mu 0 4 732 328 284 329
		f 4 1240 1241 -1224 1242
		mu 0 4 733 734 727 726
		f 4 1243 -1243 -1228 1244
		mu 0 4 735 733 726 728
		f 4 1245 1246 -1241 1247
		mu 0 4 736 737 734 733
		f 4 -1248 -1244 1248 1249
		mu 0 4 736 733 735 738
		f 4 1250 -1235 -1238 1251
		mu 0 4 739 731 332 732
		f 4 1252 -1245 -1229 1253
		mu 0 4 740 735 728 729
		f 4 1254 -1249 -1253 1255
		mu 0 4 741 738 735 740
		f 4 1256 -1240 1257 1258
		mu 0 4 742 732 329 743
		f 4 1259 1260 -1246 1261
		mu 0 4 744 745 737 736
		f 4 -1262 -1250 -1255 1262
		mu 0 4 744 736 738 741
		f 4 -1252 -1257 1263 1264
		mu 0 4 739 732 742 746
		f 4 1265 -1260 1266 1267
		mu 0 4 747 745 744 748
		f 4 -1268 1268 -1259 1269
		mu 0 4 747 748 742 743
		f 4 -1263 1270 1271 -1267
		mu 0 4 744 741 749 748
		f 4 1272 -1254 -1232 1273
		mu 0 4 750 740 729 730
		f 4 -1271 -1256 -1273 1274
		mu 0 4 749 741 740 750
		f 4 -1274 -1236 -1251 1275
		mu 0 4 750 730 731 739
		f 4 -1276 -1265 1276 -1275
		mu 0 4 750 739 746 749
		f 4 -1264 -1269 -1272 -1277
		mu 0 4 746 742 748 749
		f 4 -576 -596 1277 1278
		mu 0 4 346 344 359 751
		f 4 -579 -1279 1279 1280
		mu 0 4 348 346 751 752
		f 4 -582 -1281 1281 1282
		mu 0 4 350 348 752 753
		f 4 1283 -597 -585 -1283
		mu 0 4 753 360 352 350
		f 4 1284 1285 1286 1287
		mu 0 4 754 751 755 756
		f 4 1288 -1282 1289 1290
		mu 0 4 757 753 752 758
		f 4 -1280 -1285 1291 -1290
		mu 0 4 752 751 754 758
		f 4 1292 -1291 1293 1294
		mu 0 4 759 757 758 760
		f 4 -1294 -1292 -1288 1295
		mu 0 4 760 758 754 756
		f 4 -1296 1296 1297 1298
		mu 0 4 760 756 761 762
		f 4 1299 -1295 -1299 1300
		mu 0 4 763 759 760 762
		f 4 1301 -1289 -1293 1302
		mu 0 4 764 753 757 759
		f 4 -1301 1303 1304 1305
		mu 0 4 763 762 765 766
		f 4 -598 1306 1307 1308
		mu 0 4 361 360 767 768
		f 4 -600 -1309 1309 1310
		mu 0 4 362 361 768 769
		f 4 1311 -1310 1312 1313
		mu 0 4 770 769 768 771
		f 4 -593 -1311 1314 1315
		mu 0 4 358 357 772 773
		f 4 -1315 -1312 1316 1317
		mu 0 4 773 772 770 774
		f 4 -595 -1316 1318 1319
		mu 0 4 359 358 773 775
		f 4 -1314 1320 1321 1322
		mu 0 4 770 771 776 777
		f 4 -1317 -1323 1323 1324
		mu 0 4 774 770 777 778
		f 4 -1324 1325 1326 1327
		mu 0 4 778 777 765 779
		f 4 -1284 -1302 1328 -1307
		mu 0 4 360 753 764 767
		f 4 -1329 1329 1330 1331
		mu 0 4 767 764 766 776
		f 4 -1321 -1313 -1308 -1332
		mu 0 4 776 771 768 767
		f 4 -1305 -1326 -1322 -1331
		mu 0 4 766 765 777 776
		f 4 -1303 -1300 -1306 -1330
		mu 0 4 764 759 763 766
		f 4 -1319 -1318 -1325 1332
		mu 0 4 775 773 774 778
		f 4 1333 -1286 -1278 -1320
		mu 0 4 775 755 751 359
		f 4 -1328 1334 -1334 -1333
		mu 0 4 778 779 755 775
		f 4 -1297 -1287 -1335 1335
		mu 0 4 761 756 755 779
		f 4 -1304 -1298 -1336 -1327
		mu 0 4 765 762 761 779
		f 4 1336 1337 -873 1338
		mu 0 4 780 781 533 535
		f 4 -875 1339 1340 -1339
		mu 0 4 535 536 782 780
		f 4 -867 1341 1342 1343
		mu 0 4 530 531 783 784
		f 4 1344 1345 -865 -1344
		mu 0 4 784 785 528 530
		f 4 1346 -1342 -869 1347
		mu 0 4 786 783 531 532
		f 4 -871 -1338 1348 -1348
		mu 0 4 534 533 781 787
		f 4 1349 -1345 1350 1351
		mu 0 4 788 785 784 789
		f 4 -862 -1346 -1350 1352
		mu 0 4 529 528 785 788
		f 4 1353 -1341 1354 -1352
		mu 0 4 790 780 782 791
		f 4 -1355 -1340 -877 -1353
		mu 0 4 791 782 536 537
		f 4 -1349 -1337 -1354 1355
		mu 0 4 787 781 780 790
		f 4 -1351 -1343 -1347 -1356
		mu 0 4 789 784 783 786
		f 4 1356 -477 1357 1358
		mu 0 4 792 286 288 793
		f 4 1359 -474 -1357 1360
		mu 0 4 794 283 286 792
		f 4 1361 -469 -1360 1362
		mu 0 4 795 274 283 794
		f 4 1363 -457 -1362 1364
		mu 0 4 796 275 274 795
		f 4 1365 -488 -1364 1366
		mu 0 4 797 294 275 796
		f 4 1367 -486 -1366 1368
		mu 0 4 798 292 294 797
		f 4 1369 -483 -1368 1370
		mu 0 4 799 290 292 798
		f 4 -1358 -480 -1370 1371
		mu 0 4 793 288 290 799
		f 4 1372 -1363 1373 1374
		mu 0 4 800 795 794 801
		f 4 1375 -1371 1376 1377
		mu 0 4 802 799 798 803
		f 4 1378 -1359 1379 1380
		mu 0 4 804 792 793 805
		f 4 -1380 -1372 -1376 1381
		mu 0 4 805 793 799 802
		f 4 1382 -1365 -1373 1383
		mu 0 4 806 796 795 800
		f 4 1384 -1367 -1383 1385
		mu 0 4 807 797 796 806
		f 4 -1374 -1361 -1379 1386
		mu 0 4 801 794 792 804
		f 4 1387 -1384 -1375 1388
		mu 0 4 808 806 800 801
		f 4 -1377 -1369 -1385 1389
		mu 0 4 803 798 797 807
		f 4 -1390 -1386 -1388 1390
		mu 0 4 803 807 806 808
		f 4 1391 -1382 -1378 -1391
		mu 0 4 808 805 802 803
		f 4 -1387 -1381 -1392 -1389
		mu 0 4 801 804 805 808
		f 4 1392 -330 1393 1394
		mu 0 4 809 204 184 810
		f 4 -1394 -291 1395 1396
		mu 0 4 810 184 183 811
		f 4 1397 -709 -1393 1398
		mu 0 4 812 438 204 809
		f 4 1399 -706 -1398 1400
		mu 0 4 813 255 438 812
		f 4 1401 -427 -1400 1402
		mu 0 4 814 244 255 813
		f 4 1403 -406 -1402 1404
		mu 0 4 815 236 244 814
		f 4 1405 -390 -1404 1406
		mu 0 4 816 233 236 815
		f 4 -1396 -384 -1406 1407
		mu 0 4 811 183 233 816
		f 4 1408 1409 -1 1410
		mu 0 4 817 818 1 0
		f 4 1411 -1411 -5 1412
		mu 0 4 819 817 0 4
		f 4 1413 -1413 -8 1414
		mu 0 4 820 819 4 6
		f 4 1415 -1415 -11 1416
		mu 0 4 821 820 6 8
		f 4 1417 -1417 -14 1418
		mu 0 4 822 823 11 10
		f 4 1419 -1419 -17 1420
		mu 0 4 824 822 10 14
		f 4 1421 -1421 -20 1422
		mu 0 4 825 824 14 16
		f 4 -24 -1410 1423 -1423
		mu 0 4 16 1 818 825
		f 4 -1409 1424 1425 1426
		mu 0 4 818 817 826 827
		f 4 1427 -1395 1428 -1426
		mu 0 4 828 809 810 829
		f 4 -1429 -1397 1429 1430
		mu 0 4 829 810 811 830
		f 4 -1431 1431 -1424 -1427
		mu 0 4 827 831 825 818
		f 4 1432 -1399 -1428 1433
		mu 0 4 832 812 809 828
		f 4 -1412 1434 -1434 -1425
		mu 0 4 817 819 833 826
		f 4 1435 -1401 -1433 1436
		mu 0 4 834 813 812 832
		f 4 -1414 1437 -1437 -1435
		mu 0 4 819 820 835 833
		f 4 1438 -1403 -1436 1439
		mu 0 4 836 814 813 834
		f 4 -1416 1440 -1440 -1438
		mu 0 4 820 821 837 835
		f 4 1441 -1405 -1439 1442
		mu 0 4 838 815 814 836
		f 4 -1418 1443 -1443 -1441
		mu 0 4 823 822 839 840
		f 4 1444 -1407 -1442 1445
		mu 0 4 841 816 815 838
		f 4 -1420 1446 -1446 -1444
		mu 0 4 822 824 842 839
		f 4 -1430 -1408 -1445 1447
		mu 0 4 830 811 816 841
		f 4 -1422 -1432 -1448 -1447
		mu 0 4 824 825 831 842
		f 4 1448 1449 1450 1451
		mu 0 4 843 844 845 846
		f 4 -1452 1452 1453 1454
		mu 0 4 843 846 847 848
		f 4 1455 1456 1457 -1450
		mu 0 4 844 849 850 845
		f 4 1458 1459 1460 1461
		mu 0 4 851 852 853 854
		f 4 -1462 1462 1463 1464
		mu 0 4 851 854 855 849
		f 4 1465 -1460 1466 1467
		mu 0 4 856 853 852 857
		f 4 1468 1469 1470 -1468
		mu 0 4 857 858 859 856
		f 4 1471 -1470 1472 1473
		mu 0 4 860 859 858 861
		f 4 1474 1475 -1474 1476
		mu 0 4 862 863 860 861
		f 4 1477 1478 1479 1480
		mu 0 4 864 865 866 867
		f 4 -1481 1481 1482 1483
		mu 0 4 864 867 868 869
		f 4 1484 1485 1486 -1479
		mu 0 4 865 870 871 866
		f 4 1487 1488 1489 -1486
		mu 0 4 870 872 873 871
		f 4 1490 1491 1492 1493
		mu 0 4 874 875 876 877
		f 4 1494 1495 1496 1497
		mu 0 4 878 879 873 874
		f 4 1498 1499 -1498 -1494
		mu 0 4 877 880 878 874
		f 4 1500 1501 1502 -1492
		mu 0 4 875 881 882 876
		f 4 1503 1504 1505 1506
		mu 0 4 882 883 884 885
		f 4 -1507 1507 1508 -1503
		mu 0 4 882 885 886 876
		f 4 1509 1510 1511 -1505
		mu 0 4 887 888 889 890
		f 4 1512 1513 1514 -1511
		mu 0 4 888 891 892 889
		f 4 1515 1516 -1514 1517
		mu 0 4 893 894 892 891
		f 4 1518 1519 1520 1521
		mu 0 4 895 896 897 898
		f 4 -1522 1522 -1516 1523
		mu 0 4 895 898 894 893
		f 4 1524 1525 -1520 1526
		mu 0 4 899 900 897 896
		f 4 1527 1528 1529 1530
		mu 0 4 901 902 903 904
		f 4 1531 -1525 1532 -1531
		mu 0 4 904 900 899 901
		f 4 1533 1534 1535 -1529
		mu 0 4 902 905 906 903
		f 4 1536 1537 1538 -1535
		mu 0 4 905 907 908 906
		f 4 1539 1540 1541 -1538
		mu 0 4 907 909 910 908
		f 4 1542 1543 1544 -1541
		mu 0 4 909 911 912 910
		f 4 1545 1546 1547 -1544
		mu 0 4 913 914 915 916
		f 4 1548 1549 -1547 1550
		mu 0 4 917 918 915 914
		f 4 1551 1552 1553 1554
		mu 0 4 919 920 921 922
		f 4 -1555 1555 1556 1557
		mu 0 4 923 924 925 926
		f 4 1558 1559 1560 1561
		mu 0 4 920 927 928 929
		f 4 1562 1563 -1553 -1562
		mu 0 4 929 930 921 920
		f 4 1564 1565 1566 -1560
		mu 0 4 927 931 932 928
		f 4 1567 1568 1569 -1566
		mu 0 4 933 934 935 936
		f 4 1570 1571 1572 -1569
		mu 0 4 934 937 938 935
		f 4 1573 1574 1575 -1572
		mu 0 4 937 939 940 938
		f 4 1576 1577 1578 -1575
		mu 0 4 939 941 942 940
		f 4 1579 1580 1581 -1578
		mu 0 4 941 943 944 942
		f 4 1582 1583 1584 -1581
		mu 0 4 943 945 946 944
		f 4 1585 1586 1587 -1584
		mu 0 4 945 947 948 946
		f 4 1588 1589 1590 1591
		mu 0 4 949 950 951 952
		f 4 1592 -1587 1593 -1592
		mu 0 4 952 948 947 949
		f 4 1594 1595 1596 -1590
		mu 0 4 950 953 954 951
		f 4 1597 1598 1599 1600
		mu 0 4 955 956 957 958
		f 4 -1601 1601 -1596 1602
		mu 0 4 955 958 954 953
		f 4 1603 1604 1605 -1599
		mu 0 4 956 959 960 957
		f 4 1606 1607 1608 -1605
		mu 0 4 959 961 962 960
		f 4 1609 1610 1611 -1608
		mu 0 4 963 964 965 966
		f 4 1612 1613 -1611 1614
		mu 0 4 967 968 965 964
		f 4 1615 1616 1617 1618
		mu 0 4 969 970 971 972
		f 4 -1619 1619 1620 1621
		mu 0 4 969 972 973 974
		f 4 1622 -1613 1623 -1622
		mu 0 4 974 968 967 969
		f 4 1624 1625 1626 -1617
		mu 0 4 970 975 976 971
		f 4 1627 1628 1629 -1626
		mu 0 4 975 977 978 976
		f 4 1630 1631 1632 -1629
		mu 0 4 977 979 980 978
		f 4 1633 -1632 1634 1635
		mu 0 4 981 980 979 982
		f 4 1636 1637 -1636 1638
		mu 0 4 983 984 981 982
		f 4 1639 1640 1641 1642
		mu 0 4 985 986 987 988
		f 4 -1643 1643 -1637 1644
		mu 0 4 985 988 984 983
		f 4 1645 1646 1647 1648
		mu 0 4 986 989 990 991
		f 4 -1649 1649 1650 -1641
		mu 0 4 986 991 992 987
		f 4 1651 1652 1653 -1647
		mu 0 4 989 993 994 990
		f 4 1654 1655 1656 -1653
		mu 0 4 993 995 996 994
		f 4 1657 1658 -1656 1659
		mu 0 4 997 998 996 995
		f 4 -1454 1660 -1660 1661
		mu 0 4 848 847 997 995
		f 4 1662 1663 1664 1665
		mu 0 4 999 1000 1001 1002
		f 4 -1665 1666 1667 1668
		mu 0 4 1002 1001 1003 1004
		f 4 1669 1670 1671 -1666
		mu 0 4 1002 1005 1006 999
		f 4 1672 1673 -1670 -1669
		mu 0 4 1004 1007 1005 1002
		f 4 1674 1675 1676 -1664
		mu 0 4 1000 1008 1009 1001
		f 4 -1677 1677 1678 -1667
		mu 0 4 1001 1009 1010 1003
		f 4 1679 1680 1681 -1676
		mu 0 4 1008 1011 1012 1009
		f 4 -1682 1682 1683 -1678
		mu 0 4 1009 1012 1013 1010
		f 4 1684 1685 1686 -1681
		mu 0 4 1011 1014 1015 1012
		f 4 -1687 1687 1688 -1683
		mu 0 4 1012 1015 1016 1013
		f 4 1689 1690 1691 -1686
		mu 0 4 1014 1017 1018 1015
		f 4 -1692 1692 1693 -1688
		mu 0 4 1015 1018 1019 1016
		f 4 1694 1695 1696 -1691
		mu 0 4 1017 1020 1021 1018
		f 4 -1697 1697 1698 -1693
		mu 0 4 1018 1021 1022 1019
		f 4 1699 -1671 1700 -1696
		mu 0 4 1020 1006 1005 1021
		f 4 -1701 -1674 1701 -1698
		mu 0 4 1021 1005 1007 1022
		f 4 1702 1703 1704 1705
		mu 0 4 1023 1024 1025 1026
		f 4 1706 1707 -1703 1708
		mu 0 4 1027 1028 1024 1023
		f 4 1709 1710 1711 -1706
		mu 0 4 1026 1029 1030 1023
		f 4 -1712 1712 1713 -1709
		mu 0 4 1023 1030 1031 1027
		f 4 1714 1715 1716 -1704
		mu 0 4 1024 1032 1033 1025
		f 4 1717 1718 -1715 -1708
		mu 0 4 1028 1034 1032 1024
		f 4 1719 1720 1721 -1716
		mu 0 4 1032 1035 1036 1033
		f 4 1722 1723 -1720 -1719
		mu 0 4 1034 1037 1035 1032
		f 4 1724 1725 1726 -1721
		mu 0 4 1035 1038 1039 1036
		f 4 1727 1728 -1725 -1724
		mu 0 4 1037 1040 1038 1035
		f 4 1729 1730 1731 -1726
		mu 0 4 1041 1042 1043 1044
		f 4 1732 1733 -1730 -1729
		mu 0 4 1045 1046 1042 1041
		f 4 1734 1735 1736 -1731
		mu 0 4 1042 1047 1048 1043
		f 4 1737 1738 -1735 -1734
		mu 0 4 1046 1049 1047 1042
		f 4 1739 -1711 1740 -1736
		mu 0 4 1047 1030 1029 1048
		f 4 1741 -1713 -1740 -1739
		mu 0 4 1049 1031 1030 1047
		f 4 -1705 1742 1743 1744
		mu 0 4 1026 1025 1050 1051
		f 4 1745 1746 -1710 -1745
		mu 0 4 1051 1052 1029 1026
		f 4 -1717 1747 1748 -1743
		mu 0 4 1025 1033 1053 1050
		f 4 -1722 1749 1750 -1748
		mu 0 4 1033 1036 1054 1053
		f 4 -1727 1751 1752 -1750
		mu 0 4 1036 1039 1055 1054
		f 4 -1732 1753 1754 -1752
		mu 0 4 1044 1043 1056 1057
		f 4 -1737 1755 1756 -1754
		mu 0 4 1043 1048 1058 1056
		f 4 -1741 -1747 1757 -1756
		mu 0 4 1048 1029 1052 1058
		f 4 -1744 1758 1759 1760
		mu 0 4 1051 1050 1059 1060
		f 4 1761 1762 -1746 -1761
		mu 0 4 1060 1061 1052 1051
		f 4 -1749 1763 1764 -1759
		mu 0 4 1050 1053 1062 1059
		f 4 -1751 1765 1766 -1764
		mu 0 4 1053 1054 1063 1062
		f 4 -1753 1767 1768 -1766
		mu 0 4 1054 1055 1064 1063
		f 4 -1755 1769 1770 -1768
		mu 0 4 1057 1056 1065 1066
		f 4 -1757 1771 1772 -1770
		mu 0 4 1056 1058 1067 1065
		f 4 -1758 -1763 1773 -1772
		mu 0 4 1058 1052 1061 1067
		f 4 -1760 1774 1775 1776
		mu 0 4 1060 1059 1068 1069
		f 4 1777 1778 -1762 -1777
		mu 0 4 1069 1070 1061 1060
		f 4 -1765 1779 1780 -1775
		mu 0 4 1059 1062 1071 1068
		f 4 -1767 1781 1782 -1780
		mu 0 4 1062 1063 1072 1071
		f 4 -1769 1783 1784 -1782
		mu 0 4 1063 1064 1073 1072
		f 4 -1771 1785 1786 -1784
		mu 0 4 1066 1065 1074 1075
		f 4 -1773 1787 1788 -1786
		mu 0 4 1065 1067 1076 1074
		f 4 -1774 -1779 1789 -1788
		mu 0 4 1067 1061 1070 1076
		f 4 -1776 1790 1791 1792
		mu 0 4 1069 1068 1077 1078
		f 4 1793 1794 -1778 -1793
		mu 0 4 1078 1079 1070 1069
		f 4 -1781 1795 1796 -1791
		mu 0 4 1068 1071 1080 1077
		f 4 -1783 1797 1798 -1796
		mu 0 4 1071 1072 1081 1080
		f 4 -1785 1799 1800 -1798
		mu 0 4 1072 1073 1082 1081
		f 4 -1787 1801 1802 -1800
		mu 0 4 1075 1074 1083 1084
		f 4 -1789 1803 1804 -1802
		mu 0 4 1074 1076 1085 1083
		f 4 -1790 -1795 1805 -1804
		mu 0 4 1076 1070 1079 1085
		f 4 -1792 1806 1807 1808
		mu 0 4 1078 1077 1086 1087
		f 4 1809 1810 -1794 -1809
		mu 0 4 1087 1088 1079 1078
		f 4 -1797 1811 1812 -1807
		mu 0 4 1077 1080 1089 1086
		f 4 -1799 1813 1814 -1812
		mu 0 4 1080 1081 1090 1089
		f 4 -1801 1815 1816 -1814
		mu 0 4 1081 1082 1091 1090
		f 4 -1803 1817 1818 -1816
		mu 0 4 1084 1083 1092 1093
		f 4 -1805 1819 1820 -1818
		mu 0 4 1083 1085 1094 1092
		f 4 -1806 -1811 1821 -1820
		mu 0 4 1085 1079 1088 1094
		f 4 -1808 1822 1823 1824
		mu 0 4 1095 1096 1097 1098
		f 4 1825 1826 -1810 -1825
		mu 0 4 1099 1100 1101 1102
		f 4 -1813 1827 1828 -1823
		mu 0 4 1096 1103 1104 1097
		f 4 -1815 1829 1830 -1828
		mu 0 4 1103 1105 1106 1104
		f 4 -1817 1831 1832 1833
		mu 0 4 1105 1107 1108 1109
		f 4 1834 1835 -1830 -1834
		mu 0 4 1109 1110 1106 1105
		f 4 -1819 1836 1837 1838
		mu 0 4 1107 1111 1112 1113
		f 4 1839 1840 -1832 -1839
		mu 0 4 1113 1114 1108 1107
		f 4 -1821 1841 1842 -1837
		mu 0 4 1111 1115 1116 1112
		f 4 -1822 -1827 1843 -1842
		mu 0 4 1115 1101 1100 1116
		f 4 1844 1845 1846 1847
		mu 0 4 1117 1118 1119 1120
		f 4 1848 1849 -1845 1850
		mu 0 4 1121 1122 1118 1117
		f 4 1851 1852 1853 -1848
		mu 0 4 1120 1123 1124 1117
		f 4 -1854 1854 1855 -1851
		mu 0 4 1117 1124 1125 1121
		f 4 1856 1857 1858 -1846
		mu 0 4 1118 1126 1127 1119
		f 4 1859 1860 -1857 -1850
		mu 0 4 1122 1128 1126 1118
		f 4 1861 1862 1863 -1858
		mu 0 4 1126 1129 1130 1127
		f 4 1864 1865 -1862 -1861
		mu 0 4 1128 925 1129 1126
		f 4 1866 1867 1868 -1863
		mu 0 4 1129 1131 1132 1130
		f 4 -1556 1869 -1867 -1866
		mu 0 4 925 924 1131 1129
		f 4 1870 1871 1872 -1868
		mu 0 4 1133 1134 1135 1136
		f 4 -1554 1873 -1871 -1870
		mu 0 4 922 921 1134 1133
		f 4 1874 1875 1876 -1872
		mu 0 4 1134 1137 1138 1135
		f 4 -1564 1877 -1875 -1874
		mu 0 4 921 930 1137 1134
		f 4 1878 -1853 1879 -1876
		mu 0 4 1137 1124 1123 1138
		f 4 1880 -1855 -1879 -1878
		mu 0 4 930 1125 1124 1137
		f 4 -1847 1881 1882 1883
		mu 0 4 1120 1119 1139 1140
		f 4 1884 1885 -1852 -1884
		mu 0 4 1140 1141 1123 1120
		f 4 -1859 1886 1887 -1882
		mu 0 4 1119 1127 1142 1139
		f 4 -1864 1888 1889 -1887
		mu 0 4 1127 1130 1143 1142
		f 4 -1869 1890 1891 -1889
		mu 0 4 1130 1132 1144 1143
		f 4 -1873 1892 1893 -1891
		mu 0 4 1136 1135 1145 1146
		f 4 -1877 1894 1895 -1893
		mu 0 4 1135 1138 1147 1145
		f 4 -1880 -1886 1896 -1895
		mu 0 4 1138 1123 1141 1147
		f 4 -1883 1897 1898 1899
		mu 0 4 1140 1139 1148 1149
		f 4 1900 1901 -1885 -1900
		mu 0 4 1149 1150 1141 1140
		f 4 -1888 1902 1903 -1898
		mu 0 4 1139 1142 1151 1148
		f 4 -1890 1904 1905 -1903
		mu 0 4 1142 1143 1152 1151
		f 4 -1892 1906 1907 -1905
		mu 0 4 1143 1144 1153 1152
		f 4 -1894 1908 1909 -1907
		mu 0 4 1146 1145 1154 1155
		f 4 -1896 1910 1911 -1909
		mu 0 4 1145 1147 1156 1154
		f 4 -1897 -1902 1912 -1911
		mu 0 4 1147 1141 1150 1156
		f 4 -1899 1913 1914 1915
		mu 0 4 1149 1148 1157 1158
		f 4 1916 1917 -1901 -1916
		mu 0 4 1158 1159 1150 1149
		f 4 -1904 1918 1919 -1914
		mu 0 4 1148 1151 1160 1157
		f 4 -1906 1920 1921 -1919
		mu 0 4 1151 1152 1161 1160
		f 4 -1908 1922 1923 -1921
		mu 0 4 1152 1153 1162 1161
		f 4 -1910 1924 1925 -1923
		mu 0 4 1155 1154 1163 1164
		f 4 -1912 1926 1927 -1925
		mu 0 4 1154 1156 1165 1163
		f 4 -1913 -1918 1928 -1927
		mu 0 4 1156 1150 1159 1165
		f 4 -1915 1929 1930 1931
		mu 0 4 1158 1157 1166 1167
		f 4 1932 1933 -1917 -1932
		mu 0 4 1167 1168 1159 1158
		f 4 -1920 1934 1935 -1930
		mu 0 4 1157 1160 1169 1166
		f 4 -1922 1936 1937 -1935
		mu 0 4 1160 1161 1170 1169
		f 4 -1924 1938 1939 -1937
		mu 0 4 1161 1162 1171 1170
		f 4 -1926 1940 1941 -1939
		mu 0 4 1164 1163 1172 1173
		f 4 -1928 1942 1943 -1941
		mu 0 4 1163 1165 1174 1172
		f 4 -1929 -1934 1944 -1943
		mu 0 4 1165 1159 1168 1174
		f 4 -1931 1945 1946 1947
		mu 0 4 1167 1166 1175 1176
		f 4 1948 1949 -1933 -1948
		mu 0 4 1176 1177 1168 1167
		f 4 -1936 1950 1951 -1946
		mu 0 4 1166 1169 1178 1175
		f 4 -1938 1952 1953 -1951
		mu 0 4 1169 1170 1179 1178
		f 4 -1940 1954 1955 -1953
		mu 0 4 1170 1171 1180 1179
		f 4 -1942 1956 1957 -1955
		mu 0 4 1173 1172 1181 1182
		f 4 -1944 1958 1959 -1957
		mu 0 4 1172 1174 1183 1181
		f 4 -1945 -1950 1960 -1959
		mu 0 4 1174 1168 1177 1183
		f 4 -1952 1961 1962 1963
		mu 0 4 1175 1178 1184 1185
		f 4 1964 1965 -1947 -1964
		mu 0 4 1185 1186 1176 1175
		f 4 -1954 1966 1967 -1962
		mu 0 4 1178 1179 1187 1184
		f 4 -1956 1968 1969 -1967
		mu 0 4 1179 1180 1188 1187
		f 4 -1958 1970 1971 -1969
		mu 0 4 1182 1181 1189 1190
		f 4 -1960 1972 1973 -1971
		mu 0 4 1181 1183 1191 1189
		f 4 -1961 1974 1975 -1973
		mu 0 4 1183 1177 1192 1191
		f 4 -1949 -1966 1976 -1975
		mu 0 4 1177 1176 1186 1192
		f 4 -1965 1977 1978 1979
		mu 0 4 1193 1194 1195 1196
		f 4 1980 1981 -1977 -1980
		mu 0 4 1196 1197 1198 1193
		f 4 -1963 1982 1983 -1978
		mu 0 4 1194 1199 1200 1195
		f 4 -1968 1984 1985 -1983
		mu 0 4 1199 1201 1202 1200
		f 4 -1970 1986 1987 -1985
		mu 0 4 1201 1203 1204 1202
		f 4 -1972 1988 1989 -1987
		mu 0 4 1205 1206 1207 1208
		f 4 -1974 1990 1991 1992
		mu 0 4 1206 1209 1210 1211
		f 4 1993 1994 -1989 -1993
		mu 0 4 1211 1212 1207 1206
		f 4 -1976 1995 1996 -1991
		mu 0 4 1209 1198 1213 1210
		f 4 -1982 1997 1998 -1996
		mu 0 4 1198 1197 1214 1213
		f 4 1999 2000 -1521 2001
		mu 0 4 1215 1216 898 897
		f 4 2002 2003 -2002 -1526
		mu 0 4 900 1217 1215 897
		f 4 2004 2005 -1523 -2001
		mu 0 4 1216 1218 894 898
		f 4 2006 2007 2008 2009
		mu 0 4 1219 1220 1221 1222
		f 4 -2009 2010 -2000 2011
		mu 0 4 1222 1221 1216 1215
		f 4 2012 2013 -2010 2014
		mu 0 4 1223 1224 1219 1222
		f 4 -2012 -2004 2015 -2015
		mu 0 4 1222 1215 1217 1223
		f 4 -2008 2016 2017 2018
		mu 0 4 1221 1220 1225 1226
		f 4 -2019 2019 -2005 -2011
		mu 0 4 1221 1226 1218 1216
		f 4 2020 2021 -2007 2022
		mu 0 4 1227 1228 1220 1219
		f 4 2023 2024 -2023 -2014
		mu 0 4 1224 1229 1227 1219
		f 4 -2022 2025 2026 -2017
		mu 0 4 1220 1228 1230 1225
		f 4 2027 2028 -2021 2029
		mu 0 4 1231 1232 1228 1227
		f 4 2030 2031 -2030 -2025
		mu 0 4 1229 1233 1231 1227
		f 4 -2029 2032 2033 -2026
		mu 0 4 1228 1232 958 1230
		f 4 -1591 2034 -2028 2035
		mu 0 4 952 951 1232 1231
		f 4 -2032 2036 -1593 -2036
		mu 0 4 1231 1233 948 952
		f 4 -1597 -1602 -2033 -2035
		mu 0 4 951 954 958 1232
		f 4 2037 2038 -1606 2039
		mu 0 4 1234 1235 957 960
		f 4 2040 2041 -2040 -1609
		mu 0 4 962 1236 1234 960
		f 4 -2039 2042 -2034 -1600
		mu 0 4 957 1235 1230 958
		f 4 2043 2044 2045 2046
		mu 0 4 1237 1238 1239 1240
		f 4 -2046 2047 -2038 2048
		mu 0 4 1240 1239 1235 1234
		f 4 2049 2050 -2047 2051
		mu 0 4 1241 1242 1237 1240
		f 4 -2049 -2042 2052 -2052
		mu 0 4 1240 1234 1236 1241
		f 4 -2045 2053 -2018 2054
		mu 0 4 1239 1238 1226 1225
		f 4 -2027 -2043 -2048 -2055
		mu 0 4 1225 1230 1235 1239
		f 4 2055 2056 -2044 2057
		mu 0 4 1243 1244 1238 1237
		f 4 2058 2059 -2058 -2051
		mu 0 4 1242 1245 1243 1237
		f 4 2060 -2020 -2054 -2057
		mu 0 4 1244 1218 1226 1238
		f 4 -1515 2061 -2056 2062
		mu 0 4 889 892 1244 1243
		f 4 -2063 -2060 2063 -1512
		mu 0 4 889 1243 1245 890
		f 4 -1517 -2006 -2061 -2062
		mu 0 4 892 894 1218 1244
		f 4 2064 2065 -1545 2066
		mu 0 4 1246 1247 910 912
		f 4 2067 2068 -2067 -1548
		mu 0 4 915 1248 1249 916
		f 4 -2066 2069 2070 -1542
		mu 0 4 910 1247 1250 908
		f 4 2071 2072 -2065 2073
		mu 0 4 1251 1252 1247 1246
		f 4 2074 2075 -2074 -2069
		mu 0 4 1248 1253 1254 1249
		f 4 -2073 2076 2077 -2070
		mu 0 4 1247 1252 1255 1250
		f 4 2078 2079 -2072 2080
		mu 0 4 1256 1257 1252 1251
		f 4 2081 2082 -2081 -2076
		mu 0 4 1253 1258 1259 1254
		f 4 -2080 2083 2084 -2077
		mu 0 4 1252 1257 1260 1255
		f 4 2085 2086 -2079 2087
		mu 0 4 1261 1262 1257 1256
		f 4 2088 2089 -2088 -2083
		mu 0 4 1258 1263 1264 1259
		f 4 -2087 2090 2091 -2084
		mu 0 4 1257 1262 1265 1260
		f 4 -1570 2092 -2086 2093
		mu 0 4 936 935 1262 1261
		f 4 2094 -1567 -2094 -2090
		mu 0 4 1263 928 932 1264
		f 4 -2093 -1573 2095 -2091
		mu 0 4 1262 935 938 1265
		f 4 -2071 2096 2097 -1539
		mu 0 4 908 1250 1266 906
		f 4 -2078 2098 2099 -2097
		mu 0 4 1250 1255 1267 1266
		f 4 -2085 2100 2101 -2099
		mu 0 4 1255 1260 1268 1267
		f 4 -2092 2102 2103 -2101
		mu 0 4 1260 1265 1269 1268
		f 4 -2096 -1576 2104 -2103
		mu 0 4 1265 938 940 1269
		f 4 2105 2106 -1536 -2098
		mu 0 4 1266 1270 903 906
		f 4 -2107 2107 2108 -1530
		mu 0 4 903 1270 1271 904
		f 4 -2100 2109 2110 -2106
		mu 0 4 1266 1267 1272 1270
		f 4 -2102 2111 2112 -2110
		mu 0 4 1267 1268 1273 1272
		f 4 -2104 2113 2114 -2112
		mu 0 4 1268 1269 1274 1273
		f 4 -2105 -1579 2115 -2114
		mu 0 4 1269 940 942 1274
		f 4 -1685 2116 2117 2118
		mu 0 4 1014 1011 1275 1276
		f 4 2119 2120 -1690 -2119
		mu 0 4 1276 944 1017 1014
		f 4 -1865 2121 2122 -1557
		mu 0 4 925 1128 1277 926
		f 4 -1860 2123 2124 -2122
		mu 0 4 1128 1122 1278 1277
		f 4 -1849 2125 2126 -2124
		mu 0 4 1122 1121 1279 1278
		f 4 -1856 2127 2128 -2126
		mu 0 4 1121 1125 1280 1279
		f 4 -1881 -1563 2129 -2128
		mu 0 4 1125 930 929 1280
		f 4 -2095 2130 -2130 -1561
		mu 0 4 928 1263 1280 929;
	setAttr ".fc[1000:1499]"
		f 4 -2089 2131 -2129 -2131
		mu 0 4 1263 1258 1279 1280
		f 4 2132 2133 -2127 2134
		mu 0 4 1281 1282 1278 1279
		f 4 -2132 -2082 2135 -2135
		mu 0 4 1279 1258 1253 1281
		f 4 2136 2137 -2125 -2134
		mu 0 4 1282 918 1277 1278
		f 4 -1549 2138 -2123 -2138
		mu 0 4 918 917 926 1277
		f 4 -2137 2139 -2068 -1550
		mu 0 4 918 1282 1248 915
		f 4 -2133 -2136 -2075 -2140
		mu 0 4 1282 1281 1253 1248
		f 4 -2013 2140 -1663 2141
		mu 0 4 1224 1223 1000 999
		f 4 -1672 2142 -2024 -2142
		mu 0 4 999 1006 1229 1224
		f 4 -2016 2143 -1675 -2141
		mu 0 4 1223 1217 1008 1000
		f 4 -1700 2144 -2031 -2143
		mu 0 4 1006 1020 1233 1229
		f 4 -1588 -2037 -2145 2145
		mu 0 4 946 948 1233 1020
		f 4 -1695 -2121 -1585 -2146
		mu 0 4 1020 1017 944 946
		f 4 2146 -2117 -1680 2147
		mu 0 4 1283 1275 1011 1008
		f 4 -2144 -2003 2148 -2148
		mu 0 4 1008 1217 900 1283
		f 4 -1532 2149 -2147 -2149
		mu 0 4 900 904 1275 1283
		f 4 -2111 2150 2151 -2108
		mu 0 4 1270 1272 1284 1271
		f 4 -2113 2152 2153 -2151
		mu 0 4 1272 1273 1275 1284
		f 4 -2115 2154 -2118 -2153
		mu 0 4 1273 1274 1276 1275
		f 4 -2116 -1582 -2120 -2155
		mu 0 4 1274 942 944 1276
		f 4 -2150 -2109 -2152 -2154
		mu 0 4 1275 904 1271 1284
		f 4 -2064 2155 2156 -1506
		mu 0 4 884 1285 1286 885
		f 4 -2059 2157 2158 -2156
		mu 0 4 1285 1287 1288 1286
		f 4 -2050 2159 2160 -2158
		mu 0 4 1287 1289 1290 1288
		f 4 -2053 2161 2162 -2160
		mu 0 4 1289 1291 1292 1290
		f 4 -2041 -1612 2163 -2162
		mu 0 4 1291 966 965 1292
		f 4 -2157 2164 2165 -1508
		mu 0 4 885 1286 1293 886
		f 4 -2159 2166 2167 -2165
		mu 0 4 1286 1288 1294 1293
		f 4 -2161 2168 2169 -2167
		mu 0 4 1288 1290 1295 1294
		f 4 -2163 2170 2171 -2169
		mu 0 4 1290 1292 1296 1295
		f 4 -2164 -1614 2172 -2171
		mu 0 4 1292 965 968 1296
		f 4 -1461 -1466 2173 2174
		mu 0 4 854 853 856 1297
		f 4 -2174 -1471 -1472 2175
		mu 0 4 1297 856 859 860
		f 4 2176 -1463 -2175 2177
		mu 0 4 1298 855 854 1297
		f 4 -2176 -1476 2178 -2178
		mu 0 4 1297 860 863 1298
		f 4 2179 2180 2181 2182
		mu 0 4 1299 1300 1301 1302
		f 4 2183 2184 -2180 2185
		mu 0 4 1303 1304 1300 1299
		f 4 2186 2187 2188 -2183
		mu 0 4 1302 1305 1306 1299
		f 4 -2189 2189 2190 -2186
		mu 0 4 1299 1306 1307 1303
		f 4 2191 2192 2193 -2181
		mu 0 4 1300 1308 1309 1301
		f 4 2194 2195 -2192 -2185
		mu 0 4 1304 1310 1308 1300
		f 4 2196 2197 2198 -2193
		mu 0 4 1308 1311 1312 1309
		f 4 2199 2200 -2197 -2196
		mu 0 4 1310 1313 1311 1308
		f 4 2201 2202 2203 -2198
		mu 0 4 1311 1314 1315 1312
		f 4 2204 2205 -2202 -2201
		mu 0 4 1313 996 1314 1311
		f 4 2206 2207 2208 -2203
		mu 0 4 1314 1316 1317 1315
		f 4 -1659 2209 -2207 -2206
		mu 0 4 996 998 1316 1314
		f 4 2210 2211 2212 -2208
		mu 0 4 1316 1318 1319 1317
		f 4 2213 2214 -2211 -2210
		mu 0 4 998 1320 1318 1316
		f 4 2215 -2188 2216 -2212
		mu 0 4 1318 1306 1305 1319
		f 4 2217 -2190 -2216 -2215
		mu 0 4 1320 1307 1306 1318
		f 4 -2182 2218 2219 2220
		mu 0 4 1302 1301 1321 1322
		f 4 2221 2222 -2187 -2221
		mu 0 4 1322 1323 1305 1302
		f 4 -2194 2223 2224 -2219
		mu 0 4 1301 1309 1324 1321
		f 4 -2199 2225 2226 -2224
		mu 0 4 1309 1312 1325 1324
		f 4 -2204 2227 2228 -2226
		mu 0 4 1312 1315 1326 1325
		f 4 -2209 2229 2230 -2228
		mu 0 4 1315 1317 1327 1326
		f 4 -2213 2231 2232 -2230
		mu 0 4 1317 1319 1328 1327
		f 4 -2217 -2223 2233 -2232
		mu 0 4 1319 1305 1323 1328
		f 4 2234 2235 -2184 2236
		mu 0 4 1329 992 1304 1303
		f 4 -2191 2237 2238 -2237
		mu 0 4 1303 1307 1330 1329
		f 4 -1650 2239 -2195 -2236
		mu 0 4 992 991 1310 1304
		f 4 -1648 2240 -2200 -2240
		mu 0 4 991 990 1313 1310
		f 4 -1654 -1657 -2205 -2241
		mu 0 4 990 994 996 1313
		f 4 2241 2242 -2214 2243
		mu 0 4 1331 1332 1320 998
		f 4 -1658 -1661 2244 -2244
		mu 0 4 998 997 847 1331
		f 4 2245 -2238 -2218 -2243
		mu 0 4 1332 1330 1307 1320
		f 4 2246 2247 -1453 2248
		mu 0 4 1333 1334 847 846
		f 4 -1451 2249 2250 -2249
		mu 0 4 846 845 1335 1333
		f 4 -2235 2251 2252 -1651
		mu 0 4 992 1329 1336 987
		f 4 -2239 2253 2254 -2252
		mu 0 4 1329 1330 1337 1336
		f 4 -2246 2255 2256 2257
		mu 0 4 1330 1332 1338 1339
		f 4 2258 2259 -2254 -2258
		mu 0 4 1339 1340 1337 1330
		f 4 -2242 2260 2261 -2256
		mu 0 4 1332 1331 1341 1338
		f 4 2262 -2261 -2245 -2248
		mu 0 4 1334 1341 1331 847
		f 4 2263 2264 2265 2266
		mu 0 4 1342 1343 1344 1345
		f 4 2267 2268 -2264 2269
		mu 0 4 1346 1347 1343 1342
		f 4 -2267 2270 -1495 2271
		mu 0 4 1342 1345 879 878
		f 4 -1500 2272 -2270 -2272
		mu 0 4 878 880 1346 1342
		f 4 2273 2274 2275 -2265
		mu 0 4 1343 1348 1349 1344
		f 4 2276 2277 -2274 -2269
		mu 0 4 1347 1350 1348 1343
		f 4 2278 2279 2280 2281
		mu 0 4 1351 1352 1353 1354
		f 4 -2281 2282 -2268 2283
		mu 0 4 1354 1353 1347 1346
		f 4 2284 2285 -2282 2286
		mu 0 4 1355 1356 1351 1354
		f 4 -2284 -2273 2287 -2287
		mu 0 4 1354 1346 880 1355
		f 4 -2280 2288 2289 2290
		mu 0 4 1353 1352 1357 1358
		f 4 -2291 2291 -2277 -2283
		mu 0 4 1353 1358 1350 1347
		f 4 2292 2293 -2279 2294
		mu 0 4 1359 1360 1352 1351
		f 4 2295 2296 -2295 -2286
		mu 0 4 1356 1361 1359 1351
		f 4 -2294 2297 2298 -2289
		mu 0 4 1352 1360 1362 1357
		f 4 2299 2300 -2293 2301
		mu 0 4 1363 1364 1360 1359
		f 4 2302 2303 -2302 -2297
		mu 0 4 1361 973 1363 1359
		f 4 2304 2305 -2298 -2301
		mu 0 4 1364 1365 1362 1360
		f 4 2306 2307 2308 2309
		mu 0 4 1366 1367 1368 1369
		f 4 -2309 2310 -2300 2311
		mu 0 4 1369 1368 1364 1363
		f 4 -1618 2312 -2310 2313
		mu 0 4 972 971 1366 1369
		f 4 -2312 -2304 -1620 -2314
		mu 0 4 1369 1363 973 972
		f 4 2314 2315 2316 -2308
		mu 0 4 1367 1370 1371 1368
		f 4 -2317 2317 -2305 -2311
		mu 0 4 1368 1371 1365 1364
		f 4 2318 2319 -2307 2320
		mu 0 4 1372 1373 1367 1366
		f 4 2321 2322 -2319 2323
		mu 0 4 1374 1375 1373 1372
		f 4 -2321 -2313 -1627 2324
		mu 0 4 1372 1366 971 976
		f 4 -2325 -1630 2325 -2324
		mu 0 4 1372 976 978 1374
		f 4 2326 2327 -2315 -2320
		mu 0 4 1373 1376 1370 1367
		f 4 2328 2329 -2327 -2323
		mu 0 4 1375 1377 1376 1373
		f 4 2330 2331 -2275 2332
		mu 0 4 1378 1379 1349 1348
		f 4 -2278 2333 2334 -2333
		mu 0 4 1348 1350 1380 1378
		f 4 -2290 2335 2336 2337
		mu 0 4 1358 1357 1381 1382
		f 4 -2338 2338 -2334 -2292
		mu 0 4 1358 1382 1380 1350
		f 4 -2299 2339 2340 -2336
		mu 0 4 1357 1362 1383 1381
		f 4 -2316 2341 2342 2343
		mu 0 4 1371 1370 1384 1385
		f 4 2344 2345 -2318 -2344
		mu 0 4 1385 1386 1365 1371
		f 4 -2328 2346 2347 -2342
		mu 0 4 1370 1376 1387 1384
		f 4 2348 2349 2350 -2347
		mu 0 4 1376 1388 1389 1387
		f 4 2351 2352 -2349 -2330
		mu 0 4 1377 1390 1388 1376
		f 4 2353 2354 2355 -2350
		mu 0 4 1388 1391 1392 1389
		f 4 -2255 2356 -2354 2357
		mu 0 4 1336 1337 1391 1388
		f 4 2358 -2253 -2358 -2353
		mu 0 4 1390 987 1336 1388
		f 4 2359 2360 2361 -2355
		mu 0 4 1391 1383 1393 1392
		f 4 2362 -2341 -2360 -2357
		mu 0 4 1337 1381 1383 1391
		f 4 -2340 2363 2364 -2361
		mu 0 4 1383 1362 1394 1393
		f 4 -2306 -2346 2365 -2364
		mu 0 4 1362 1365 1386 1394
		f 4 -2343 2366 2367 2368
		mu 0 4 1385 1384 1395 1396
		f 4 2369 -2366 -2345 -2369
		mu 0 4 1396 1394 1386 1385
		f 4 -2348 2370 2371 -2367
		mu 0 4 1384 1387 1397 1395
		f 4 -2351 2372 2373 -2371
		mu 0 4 1387 1389 1398 1397
		f 4 -2356 2374 2375 -2373
		mu 0 4 1389 1392 1399 1398
		f 4 -2362 2376 2377 -2375
		mu 0 4 1392 1393 1400 1399
		f 4 -2365 2378 2379 -2377
		mu 0 4 1393 1394 1401 1400
		f 4 -2370 2380 2381 -2379
		mu 0 4 1394 1396 1402 1401
		f 4 -2368 2382 2383 -2381
		mu 0 4 1396 1395 1403 1402
		f 4 -2372 2384 2385 -2383
		mu 0 4 1395 1397 1404 1403
		f 4 -2374 -2376 2386 -2385
		mu 0 4 1397 1398 1399 1404
		f 4 -2382 -2384 2387 -2380
		mu 0 4 1401 1402 1403 1400
		f 4 -2386 -2387 -2378 -2388
		mu 0 4 1403 1404 1399 1400
		f 4 -2260 2388 -2337 -2363
		mu 0 4 1337 1340 1382 1381
		f 4 -2389 2389 2390 -2339
		mu 0 4 1382 1340 1405 1380
		f 4 -1483 2391 -1475 2392
		mu 0 4 869 868 863 862
		f 4 -2359 2393 2394 -1642
		mu 0 4 987 1390 1406 988
		f 4 -2259 2395 2396 -2390
		mu 0 4 1340 1339 1407 1405
		f 4 2397 2398 -2396 -2257
		mu 0 4 1338 1408 1407 1339
		f 4 -2177 2399 2400 2401
		mu 0 4 855 1298 1409 1410
		f 4 -2402 2402 -1457 -1464
		mu 0 4 855 1410 850 849
		f 4 -2266 2403 -1487 2404
		mu 0 4 1345 1344 866 871
		f 4 -1496 -2271 -2405 -1490
		mu 0 4 873 879 1345 871
		f 4 -2276 2405 -1480 -2404
		mu 0 4 1344 1349 867 866
		f 4 -2406 -2332 2406 -1482
		mu 0 4 867 1349 1379 868
		f 4 -2407 2407 -2179 -2392
		mu 0 4 868 1379 1298 863
		f 4 -2331 2408 -2400 -2408
		mu 0 4 1379 1378 1409 1298
		f 4 -2391 2409 -2409 -2335
		mu 0 4 1380 1405 1409 1378
		f 4 -2401 -2410 -2397 2410
		mu 0 4 1410 1409 1405 1407
		f 4 2411 -2403 -2411 -2399
		mu 0 4 1408 850 1410 1407
		f 4 2412 2413 2414 2415
		mu 0 4 1411 1412 1413 1414
		f 4 2416 2417 -2413 2418
		mu 0 4 1415 1416 1412 1411
		f 4 2419 2420 2421 -2416
		mu 0 4 1417 1418 1419 1420
		f 4 -2422 2422 2423 -2419
		mu 0 4 1420 1419 1421 1422
		f 4 2424 2425 2426 -2414
		mu 0 4 1412 1423 1424 1413
		f 4 2427 2428 -2425 -2418
		mu 0 4 1416 1425 1423 1412
		f 4 2429 2430 2431 -2426
		mu 0 4 1423 1426 1427 1424
		f 4 2432 2433 -2430 -2429
		mu 0 4 1425 1428 1426 1423
		f 4 2434 2435 2436 -2431
		mu 0 4 1426 1429 1430 1427
		f 4 2437 2438 -2435 -2434
		mu 0 4 1428 1431 1429 1426
		f 4 2439 2440 2441 -2436
		mu 0 4 1429 1432 1433 1430
		f 4 -1841 2442 -2440 2443
		mu 0 4 1108 1114 1432 1429
		f 4 -2439 2444 -1833 -2444
		mu 0 4 1429 1431 1109 1108
		f 4 2445 2446 2447 -2441
		mu 0 4 1432 1434 1435 1433
		f 4 2448 2449 -2446 -2443
		mu 0 4 1114 1436 1434 1432
		f 4 2450 -2421 2451 -2447
		mu 0 4 1434 1419 1418 1435
		f 4 2452 2453 -2451 -2450
		mu 0 4 1436 1437 1419 1434
		f 4 2454 2455 -2423 -2454
		mu 0 4 1437 1438 1421 1419
		f 4 -2415 2456 2457 2458
		mu 0 4 1414 1413 1439 1440
		f 4 2459 2460 -2420 -2459
		mu 0 4 1441 1442 1418 1417
		f 4 -2427 2461 2462 -2457
		mu 0 4 1413 1424 1443 1439
		f 4 -2432 2463 2464 -2462
		mu 0 4 1424 1427 1444 1443
		f 4 -2437 2465 2466 -2464
		mu 0 4 1427 1430 1445 1444
		f 4 -2442 2467 2468 -2466
		mu 0 4 1430 1433 1446 1445
		f 4 -2448 2469 2470 -2468
		mu 0 4 1433 1435 1447 1446
		f 4 -2452 -2461 2471 -2470
		mu 0 4 1435 1418 1442 1447
		f 4 -2458 2472 2473 2474
		mu 0 4 1440 1439 1448 1449
		f 4 2475 2476 -2460 -2475
		mu 0 4 1450 1451 1442 1441
		f 4 -2463 2477 2478 -2473
		mu 0 4 1439 1443 1452 1448
		f 4 -2465 2479 2480 -2478
		mu 0 4 1443 1444 1453 1452
		f 4 -2467 2481 2482 -2480
		mu 0 4 1444 1445 1454 1453
		f 4 -2469 2483 2484 -2482
		mu 0 4 1445 1446 1455 1454
		f 4 -2471 2485 2486 -2484
		mu 0 4 1446 1447 1456 1455
		f 4 -2472 -2477 2487 -2486
		mu 0 4 1447 1442 1451 1456
		f 4 -2474 2488 2489 2490
		mu 0 4 1449 1448 1457 1458
		f 4 2491 2492 -2476 -2491
		mu 0 4 1459 1460 1451 1450
		f 4 -2479 2493 2494 -2489
		mu 0 4 1448 1452 1461 1457
		f 4 -2481 2495 2496 -2494
		mu 0 4 1452 1453 1462 1461
		f 4 -2483 2497 2498 2499
		mu 0 4 1453 1454 1463 1464
		f 4 2500 2501 -2496 -2500
		mu 0 4 1464 1465 1462 1453
		f 4 -2485 2502 2503 -2498
		mu 0 4 1454 1455 1466 1463
		f 4 -2487 2504 2505 2506
		mu 0 4 1455 1456 1467 1468
		f 4 -2507 2507 2508 -2503
		mu 0 4 1455 1468 1469 1466
		f 4 -2488 -2493 2509 -2505
		mu 0 4 1456 1451 1460 1467
		f 4 -2490 2510 2511 2512
		mu 0 4 1458 1457 1470 1471
		f 4 2513 2514 -2492 -2513
		mu 0 4 1471 1472 1460 1459
		f 4 -2495 2515 2516 -2511
		mu 0 4 1457 1461 1473 1470
		f 4 -2497 2517 2518 -2516
		mu 0 4 1461 1462 1474 1473
		f 4 -2502 2519 2520 -2518
		mu 0 4 1462 1465 1475 1474
		f 4 -2506 2521 2522 2523
		mu 0 4 1468 1467 1476 1477
		f 4 2524 2525 -2508 -2524
		mu 0 4 1477 1478 1469 1468
		f 4 -2510 -2515 2526 -2522
		mu 0 4 1467 1460 1472 1476
		f 4 2527 2528 2529 2530
		mu 0 4 1479 1480 1481 1482
		f 4 2531 2532 -2528 2533
		mu 0 4 1483 1484 1480 1479
		f 4 -2531 2534 2535 2536
		mu 0 4 1479 1482 1485 1486
		f 4 2537 2538 -2534 -2537
		mu 0 4 1486 1487 1483 1479
		f 4 2539 2540 2541 -2529
		mu 0 4 1488 1489 1490 1491
		f 4 2542 2543 -2540 -2533
		mu 0 4 1492 1493 1489 1488
		f 4 2544 2545 2546 -2541
		mu 0 4 1489 1494 1495 1490
		f 4 2547 2548 -2545 -2544
		mu 0 4 1493 1496 1494 1489
		f 4 2549 2550 -2546 2551
		mu 0 4 1497 1498 1495 1494
		f 4 -2549 2552 2553 -2552
		mu 0 4 1494 1496 1499 1497
		f 4 2554 2555 2556 2557
		mu 0 4 1500 1501 1502 1503
		f 4 -2557 2558 2559 2560
		mu 0 4 1503 1502 1504 1505
		f 4 2561 2562 2563 -2561
		mu 0 4 1505 1506 1507 1503
		f 4 -2564 2564 2565 -2558
		mu 0 4 1503 1507 1508 1500
		f 4 2566 2567 2568 -2556
		mu 0 4 1501 1509 1510 1502
		f 4 -2569 2569 2570 -2559
		mu 0 4 1502 1510 1511 1504
		f 4 2571 2572 2573 -2568
		mu 0 4 1512 1513 1514 1515
		f 4 -2574 2574 2575 -2570
		mu 0 4 1515 1514 1516 1517
		f 4 2576 2577 2578 -2573
		mu 0 4 1513 1212 1518 1514
		f 4 -2579 2579 2580 -2575
		mu 0 4 1514 1518 1214 1516
		f 4 2581 2582 2583 2584
		mu 0 4 1519 1520 1521 1522
		f 4 2585 2586 -2582 2587
		mu 0 4 1523 1524 1520 1519
		f 4 -2585 2588 -1981 2589
		mu 0 4 1519 1522 1197 1196
		f 4 -2590 -1979 2590 -2588
		mu 0 4 1519 1196 1195 1523
		f 4 2591 2592 2593 -2583
		mu 0 4 1525 1526 1527 1528
		f 4 2594 2595 -2592 -2587
		mu 0 4 1529 1530 1526 1525
		f 4 2596 2597 2598 -2593
		mu 0 4 1526 1531 1506 1527
		f 4 2599 2600 -2597 -2596
		mu 0 4 1530 1532 1531 1526
		f 4 2601 2602 -2563 -2598
		mu 0 4 1531 1533 1507 1506
		f 4 2603 2604 -2602 -2601
		mu 0 4 1532 1534 1533 1531
		f 4 2605 2606 -2565 -2603
		mu 0 4 1533 1535 1508 1507
		f 4 2607 2608 -2606 -2605
		mu 0 4 1534 1536 1535 1533
		f 4 2609 2610 2611 -2607
		mu 0 4 1535 1537 1538 1508
		f 4 2612 2613 -2610 -2609
		mu 0 4 1536 1539 1537 1535
		f 4 2614 2615 2616 -2611
		mu 0 4 1537 1540 1541 1538
		f 4 2617 2618 -2615 -2614
		mu 0 4 1539 1542 1540 1537
		f 4 2619 2620 2621 -2616
		mu 0 4 1543 1544 1545 1546
		f 4 2622 2623 -2620 -2619
		mu 0 4 1547 1548 1549 1550
		f 4 -1990 2624 -2621 2625
		mu 0 4 1208 1207 1545 1544
		f 4 2626 -1988 -2626 -2624
		mu 0 4 1548 1202 1204 1549
		f 4 -2584 2627 -2576 2628
		mu 0 4 1522 1521 1517 1516
		f 4 -2581 -1998 -2589 -2629
		mu 0 4 1516 1214 1197 1522
		f 4 -2594 2629 -2571 -2628
		mu 0 4 1528 1527 1504 1511
		f 4 -2599 -2562 -2560 -2630
		mu 0 4 1527 1506 1505 1504
		f 4 -2612 2630 -2555 -2566
		mu 0 4 1508 1538 1501 1500
		f 4 -2617 2631 -2567 -2631
		mu 0 4 1538 1541 1509 1501
		f 4 -2622 2632 -2572 -2632
		mu 0 4 1546 1545 1513 1512
		f 4 -2625 -1995 -2577 -2633
		mu 0 4 1545 1207 1212 1513
		f 4 -1994 -1992 2633 -2578
		mu 0 4 1212 1211 1210 1518
		f 4 -2634 -1997 -1999 -2580
		mu 0 4 1518 1210 1213 1214
		f 4 -2530 2634 2635 2636
		mu 0 4 1482 1481 1551 1552
		f 4 -2637 2637 2638 -2535
		mu 0 4 1482 1552 1553 1485
		f 4 -2542 2639 2640 -2635
		mu 0 4 1491 1490 1554 1555
		f 4 -2547 -2551 2641 -2640
		mu 0 4 1490 1495 1498 1554
		f 4 2642 2643 -2532 2644
		mu 0 4 1556 1557 1484 1483
		f 4 2645 2646 -2645 -2539
		mu 0 4 1487 1558 1556 1483
		f 4 2647 2648 -2543 -2644
		mu 0 4 1559 1560 1493 1492
		f 4 2649 -2553 -2548 -2649
		mu 0 4 1560 1499 1496 1493
		f 4 2650 2651 -1984 2652
		mu 0 4 1561 1562 1195 1200
		f 4 -1986 2653 2654 -2653
		mu 0 4 1200 1202 1563 1561
		f 4 2655 2656 -2591 -2652
		mu 0 4 1562 1564 1523 1195
		f 4 -2627 2657 2658 -2654
		mu 0 4 1202 1548 1565 1563
		f 4 2659 2660 -2586 -2657
		mu 0 4 1564 1566 1524 1523
		f 4 -2623 2661 2662 -2658
		mu 0 4 1548 1547 1567 1565
		f 4 2663 2664 -2643 -2647
		mu 0 4 1558 1568 1557 1556
		f 4 -2636 2665 2666 -2638
		mu 0 4 1552 1551 1569 1553
		f 4 2667 2668 -2595 -2661
		mu 0 4 1570 1571 1530 1529
		f 4 -2641 2669 2670 -2666
		mu 0 4 1555 1554 1572 1573
		f 4 2671 2672 -2648 -2665
		mu 0 4 1574 1575 1560 1559
		f 4 -2618 2673 2674 -2662
		mu 0 4 1542 1539 1576 1577
		f 4 2675 2676 -2650 -2673
		mu 0 4 1575 1578 1499 1560
		f 4 2677 2678 -2674 -2613
		mu 0 4 1536 1579 1576 1539
		f 4 -2669 2679 2680 -2600
		mu 0 4 1530 1571 1580 1532
		f 4 -2642 2681 2682 -2670
		mu 0 4 1554 1498 1581 1572
		f 4 -2536 2683 -2651 2684
		mu 0 4 1486 1485 1562 1561
		f 4 -2655 2685 -2538 -2685
		mu 0 4 1561 1563 1487 1486
		f 4 -2639 2686 -2656 -2684
		mu 0 4 1485 1553 1564 1562
		f 4 -2659 2687 -2646 -2686
		mu 0 4 1563 1565 1558 1487
		f 4 -2663 2688 -2664 -2688
		mu 0 4 1565 1567 1568 1558
		f 4 -2667 2689 -2660 -2687
		mu 0 4 1553 1569 1566 1564
		f 4 -2671 2690 -2668 -2690
		mu 0 4 1573 1572 1571 1570
		f 4 -2675 2691 -2672 -2689
		mu 0 4 1577 1576 1575 1574
		f 4 -2679 2692 -2676 -2692
		mu 0 4 1576 1579 1578 1575
		f 4 -2683 2693 -2680 -2691
		mu 0 4 1572 1581 1580 1571
		f 4 2694 2695 -2682 -2550
		mu 0 4 1497 1582 1581 1498
		f 4 2696 -2604 -2681 2697
		mu 0 4 1583 1534 1532 1580
		f 4 -2694 -2696 2698 -2698
		mu 0 4 1580 1581 1582 1583
		f 4 -2697 2699 -2678 -2608
		mu 0 4 1534 1583 1579 1536
		f 4 -2699 2700 -2693 -2700
		mu 0 4 1583 1582 1578 1579
		f 4 -2677 -2701 -2695 -2554
		mu 0 4 1499 1578 1582 1497
		f 4 2701 2702 2703 2704
		mu 0 4 1584 1585 1586 1587
		f 4 -2704 2705 2706 2707
		mu 0 4 1587 1586 1588 1589
		f 4 2708 2709 2710 -2705
		mu 0 4 1590 1591 1592 1593
		f 4 2711 2712 -2709 2713
		mu 0 4 1594 1595 1591 1590
		f 4 -2708 2714 2715 -2714
		mu 0 4 1587 1589 1596 1597
		f 4 2716 2717 2718 -2703
		mu 0 4 1585 1598 1599 1586
		f 4 -2719 2719 2720 -2706
		mu 0 4 1586 1599 1600 1588
		f 4 2721 2722 2723 -2718
		mu 0 4 1598 1601 1602 1599
		f 4 -2724 2724 2725 -2720
		mu 0 4 1599 1602 1603 1600
		f 4 2726 2727 2728 -2723
		mu 0 4 1601 1604 1605 1602
		f 4 -2729 2729 2730 -2725
		mu 0 4 1602 1605 1606 1603
		f 4 2731 2732 2733 -2728
		mu 0 4 1607 1608 1609 1610
		f 4 -2734 2734 2735 -2730
		mu 0 4 1610 1609 1611 1612
		f 4 2736 2737 2738 -2733
		mu 0 4 1608 1613 1614 1609
		f 4 -2739 2739 2740 -2735
		mu 0 4 1609 1614 1615 1611
		f 4 2741 -2710 2742 -2738
		mu 0 4 1613 1592 1591 1614
		f 4 -2743 -2713 2743 2744
		mu 0 4 1614 1591 1595 1616
		f 4 2745 2746 -2740 -2745
		mu 0 4 1616 1617 1615 1614
		f 4 2747 2748 -2702 2749
		mu 0 4 1618 1619 1585 1584
		f 4 -2711 2750 2751 -2750
		mu 0 4 1593 1592 1620 1621
		f 4 2752 2753 -2717 -2749
		mu 0 4 1619 1622 1598 1585
		f 4 2754 2755 -2722 -2754
		mu 0 4 1622 1623 1601 1598
		f 4 2756 2757 -2727 -2756
		mu 0 4 1623 1624 1604 1601
		f 4 2758 2759 -2732 -2758
		mu 0 4 1625 1626 1608 1607
		f 4 2760 2761 -2737 -2760
		mu 0 4 1626 1627 1613 1608
		f 4 2762 -2751 -2742 -2762
		mu 0 4 1627 1620 1592 1613
		f 4 2763 2764 -2748 2765
		mu 0 4 1628 1629 1619 1618
		f 4 -2752 2766 2767 -2766
		mu 0 4 1621 1620 1630 1631
		f 4 2768 2769 -2753 -2765
		mu 0 4 1629 1632 1622 1619
		f 4 2770 2771 -2755 -2770
		mu 0 4 1632 1633 1623 1622
		f 4 2772 2773 -2757 -2772
		mu 0 4 1633 1634 1624 1623
		f 4 2774 2775 -2759 -2774
		mu 0 4 1635 1636 1626 1625
		f 4 2776 2777 -2761 -2776
		mu 0 4 1636 1637 1627 1626
		f 4 2778 -2767 -2763 -2778
		mu 0 4 1637 1630 1620 1627
		f 4 2779 2780 -2764 2781
		mu 0 4 1638 1639 1629 1628
		f 4 -2768 2782 2783 -2782
		mu 0 4 1631 1630 1640 1641
		f 4 2784 2785 -2769 -2781
		mu 0 4 1639 1642 1632 1629
		f 4 2786 2787 -2771 -2786
		mu 0 4 1642 1643 1633 1632
		f 4 2788 2789 -2773 -2788
		mu 0 4 1643 1644 1634 1633
		f 4 2790 2791 -2775 -2790
		mu 0 4 1645 1646 1636 1635
		f 4 2792 2793 -2777 -2792
		mu 0 4 1646 1647 1637 1636
		f 4 2794 -2783 -2779 -2794
		mu 0 4 1647 1640 1630 1637
		f 4 2795 -2785 -2780 2796
		mu 0 4 1648 1642 1639 1638
		f 4 -2784 -2795 2797 -2797
		mu 0 4 1641 1640 1647 1649
		f 4 2798 -2789 -2787 -2796
		mu 0 4 1648 1644 1643 1642
		f 4 -2798 -2793 -2791 -2799
		mu 0 4 1649 1647 1646 1645
		f 4 -2716 2799 -2417 2800
		mu 0 4 1597 1596 1416 1415
		f 4 -2424 -2456 2801 2802
		mu 0 4 1422 1421 1438 1650
		f 4 -2803 2803 -2712 -2801
		mu 0 4 1422 1650 1595 1594
		f 4 -2721 2804 -1831 2805
		mu 0 4 1588 1600 1104 1106
		f 4 -1836 2806 2807 -2806
		mu 0 4 1106 1110 1651 1588
		f 4 -2726 2808 -1829 -2805
		mu 0 4 1600 1603 1097 1104
		f 4 -2731 2809 -1824 -2809
		mu 0 4 1603 1606 1098 1097
		f 4 -2736 2810 -1826 -2810
		mu 0 4 1612 1611 1100 1099
		f 4 -2741 2811 -1844 -2811
		mu 0 4 1611 1615 1116 1100
		f 4 2812 2813 2814 2815
		mu 0 4 1116 1652 1653 1654
		f 4 -2747 2816 -2813 -2812
		mu 0 4 1615 1617 1652 1116
		f 4 -2816 2817 -1838 -1843
		mu 0 4 1116 1654 1113 1112
		f 4 -1835 -2445 -2438 2818
		mu 0 4 1110 1109 1431 1428
		f 4 2819 -2807 -2819 -2433
		mu 0 4 1425 1651 1110 1428
		f 4 -2428 -2800 2820 -2820
		mu 0 4 1425 1416 1596 1651
		f 4 -2814 2821 -2455 2822
		mu 0 4 1653 1652 1438 1437
		f 4 2823 -2815 -2823 -2453
		mu 0 4 1436 1654 1653 1437
		f 4 -2822 -2817 2824 -2802
		mu 0 4 1438 1652 1617 1650
		f 4 -1840 -2818 -2824 -2449
		mu 0 4 1114 1113 1654 1436
		f 4 -2821 -2715 -2707 -2808
		mu 0 4 1651 1596 1589 1588
		f 4 -2744 -2804 -2825 -2746
		mu 0 4 1616 1595 1650 1617
		f 4 2825 2826 -2288 -1499
		mu 0 4 877 1293 1355 880
		f 4 2827 2828 -2285 2829
		mu 0 4 1655 1656 1356 1355
		f 4 -2827 -2168 2830 -2830
		mu 0 4 1355 1293 1294 1655
		f 4 2831 2832 -2296 -2829
		mu 0 4 1656 1657 1361 1356
		f 4 2833 -1621 -2303 -2833
		mu 0 4 1657 974 973 1361
		f 4 -2166 -2826 -1493 -1509
		mu 0 4 886 1293 877 876
		f 4 -2170 2834 -2828 -2831
		mu 0 4 1294 1295 1656 1655
		f 4 -2172 2835 -2832 -2835
		mu 0 4 1295 1296 1657 1656
		f 4 -2173 -1623 -2834 -2836
		mu 0 4 1296 968 974 1657
		f 4 -1458 -2412 2836 -2250
		mu 0 4 845 850 1408 1335
		f 4 2837 2838 -2837 2839
		mu 0 4 1658 1659 1335 1408
		f 4 -2398 2840 2841 -2840
		mu 0 4 1408 1338 1660 1658
		f 4 2842 2843 -2251 -2839
		mu 0 4 1659 1661 1333 1335
		f 4 2844 2845 -2247 -2844
		mu 0 4 1661 1662 1334 1333
		f 4 2846 2847 -2263 -2846
		mu 0 4 1662 1663 1341 1334
		f 4 2848 -2841 -2262 -2848
		mu 0 4 1663 1660 1338 1341
		f 4 2849 2850 -2842 2851
		mu 0 4 1664 1665 1658 1660
		f 4 -2849 2852 2853 -2852
		mu 0 4 1660 1663 1666 1664
		f 4 2854 2855 -2838 -2851
		mu 0 4 1665 1667 1659 1658
		f 4 2856 2857 -2843 -2856
		mu 0 4 1667 1668 1661 1659
		f 4 2858 2859 -2845 -2858
		mu 0 4 1668 1669 1662 1661
		f 4 2860 -2853 -2847 -2860
		mu 0 4 1669 1666 1663 1662
		f 4 -2857 -2855 -2850 2861
		mu 0 4 1668 1667 1665 1664
		f 4 -2861 -2859 -2862 -2854
		mu 0 4 1666 1669 1668 1664
		f 4 2862 2863 -2326 -1633
		mu 0 4 980 1670 1374 978
		f 4 2864 2865 -2322 -2864
		mu 0 4 1670 1671 1375 1374
		f 4 2866 2867 -2329 -2866
		mu 0 4 1671 1672 1377 1375
		f 4 2868 -2394 -2352 -2868
		mu 0 4 1672 1406 1390 1377
		f 4 -2395 -2869 2869 -1644
		mu 0 4 988 1406 1672 984
		f 4 -2865 -2863 -1634 2870
		mu 0 4 1671 1670 980 981
		f 4 -2870 -2867 -2871 -1638
		mu 0 4 984 1672 1671 981
		f 4 -2519 2871 2872 2873
		mu 0 4 1473 1474 1673 1674
		f 4 -2873 2874 -2523 2875
		mu 0 4 1674 1673 1477 1476
		f 4 -2876 -2527 -2514 2876
		mu 0 4 1674 1476 1472 1471
		f 4 -2877 -2512 -2517 -2874
		mu 0 4 1674 1471 1470 1473
		f 4 -2499 2877 2878 -2501
		mu 0 4 1464 1463 1675 1465
		f 4 -2504 -2509 2879 -2878
		mu 0 4 1463 1466 1469 1675
		f 4 -2526 2880 2881 -2880
		mu 0 4 1469 1478 1676 1675
		f 4 -2875 2882 -2881 -2525
		mu 0 4 1477 1673 1676 1478
		f 4 2883 -2520 -2879 -2882
		mu 0 4 1676 1475 1465 1675
		f 4 -2872 -2521 -2884 -2883
		mu 0 4 1673 1474 1475 1676
		f 4 -2220 -2225 2884 2885
		mu 0 4 1322 1321 1324 1677
		f 4 2886 -2234 -2222 -2886
		mu 0 4 1677 1328 1323 1322
		f 4 -2227 -2229 2887 -2885
		mu 0 4 1324 1325 1326 1677
		f 4 -2231 -2233 -2887 -2888
		mu 0 4 1326 1327 1328 1677
		f 4 -1668 2888 -1707 2889
		mu 0 4 1004 1003 1678 1679
		f 4 -1714 2890 -1673 -2890
		mu 0 4 1679 1680 1007 1004
		f 4 -1679 2891 -1718 -2889
		mu 0 4 1003 1010 1681 1678
		f 4 -1684 2892 -1723 -2892
		mu 0 4 1010 1013 1682 1681
		f 4 -1689 2893 -1728 -2893
		mu 0 4 1013 1016 1683 1682
		f 4 -1694 2894 -1733 -2894
		mu 0 4 1016 1019 1684 1683
		f 4 -1699 2895 -1738 -2895
		mu 0 4 1019 1022 1685 1684
		f 4 -1702 -2891 -1742 -2896
		mu 0 4 1022 1007 1680 1685
		f 4 2896 2897 -1655 2898
		mu 0 4 1686 1687 995 993
		f 4 -1478 2899 2900 2901
		mu 0 4 865 864 1688 1689
		f 4 2902 -1017 2903 2904
		mu 0 4 1689 619 618 1690
		f 4 -1485 -2902 -2905 2905
		mu 0 4 870 865 1689 1690
		f 4 -2904 -1040 2906 2907
		mu 0 4 1690 618 632 1691
		f 4 -1488 -2906 -2908 2908
		mu 0 4 872 870 1690 1691
		f 4 -2907 -1039 2909 2910
		mu 0 4 1691 632 631 1692
		f 4 -1489 -2909 -2911 2911
		mu 0 4 873 872 1691 1692
		f 4 -2910 -1047 2912 2913
		mu 0 4 1692 631 635 1693
		f 4 -1497 -2912 -2914 2914
		mu 0 4 874 873 1692 1693
		f 4 -2913 -1060 2915 2916
		mu 0 4 1693 635 643 1694
		f 4 -1491 -2915 -2917 2917
		mu 0 4 875 874 1693 1694
		f 4 -2916 -1055 2918 2919
		mu 0 4 1694 643 642 1695
		f 4 -1501 -2918 -2920 2920
		mu 0 4 881 875 1694 1695
		f 4 -2919 -1054 2921 2922
		mu 0 4 1695 642 639 1696
		f 4 -1502 -2921 -2923 2923
		mu 0 4 882 881 1695 1696
		f 4 -2922 -1050 2924 2925
		mu 0 4 1696 639 638 1697
		f 4 -1504 -2924 -2926 2926
		mu 0 4 883 882 1696 1697
		f 4 -2925 -431 2927 2928
		mu 0 4 1698 257 247 1699
		f 4 -1510 -2927 -2929 2929
		mu 0 4 888 887 1698 1699
		f 4 -1528 2930 2931 2932
		mu 0 4 902 901 1700 1701
		f 4 2933 -394 2934 2935
		mu 0 4 1701 239 114 1702
		f 4 -1534 -2933 -2936 2936
		mu 0 4 905 902 1701 1702
		f 4 -2935 -177 2937 2938
		mu 0 4 1702 114 111 1703
		f 4 -1537 -2937 -2939 2939
		mu 0 4 907 905 1702 1703
		f 4 -2938 -173 2940 2941
		mu 0 4 1703 111 110 1704
		f 4 -1540 -2940 -2942 2942
		mu 0 4 909 907 1703 1704
		f 4 -2941 -230 2943 2944
		mu 0 4 1704 110 146 1705
		f 4 -1543 -2943 -2945 2945
		mu 0 4 911 909 1704 1705
		f 4 -1558 2946 2947 2948
		mu 0 4 923 926 1706 1707
		f 4 2949 -234 2950 2951
		mu 0 4 1708 149 148 1709
		f 4 -1552 -2949 -2952 2952
		mu 0 4 920 919 1710 1711
		f 4 -2951 -281 2953 2954
		mu 0 4 1709 148 177 1712
		f 4 -1559 -2953 -2955 2955
		mu 0 4 927 920 1711 1713
		f 4 -2954 -278 2956 2957
		mu 0 4 1712 177 176 1714
		f 4 -1565 -2956 -2958 2958
		mu 0 4 931 927 1713 1715
		f 4 -2957 -276 2959 2960
		mu 0 4 1716 174 126 1717
		f 4 -1568 -2959 -2961 2961
		mu 0 4 934 933 1718 1719
		f 4 -2960 -194 2962 2963
		mu 0 4 1717 126 125 1720
		f 4 -1571 -2962 -2964 2964
		mu 0 4 937 934 1719 1721
		f 4 -2963 -344 2965 2966
		mu 0 4 1720 125 211 1722
		f 4 -1574 -2965 -2967 2967
		mu 0 4 939 937 1721 1723
		f 4 -2966 -346 2968 2969
		mu 0 4 1722 211 212 1724
		f 4 -1577 -2968 -2970 2970
		mu 0 4 941 939 1723 1725
		f 4 -2969 -399 2971 2972
		mu 0 4 1724 212 241 1726
		f 4 -1580 -2971 -2973 2973
		mu 0 4 943 941 1725 1727
		f 4 -1598 2974 2975 2976
		mu 0 4 956 955 1728 1729
		f 4 2977 -425 2978 2979
		mu 0 4 1730 219 253 1731
		f 4 -1604 -2977 -2980 2980
		mu 0 4 959 956 1729 1732
		f 4 -2979 -444 2981 2982
		mu 0 4 1731 253 264 1733
		f 4 -1607 -2981 -2983 2983
		mu 0 4 961 959 1732 1734
		f 4 -1616 2984 2985 2986
		mu 0 4 970 969 1735 1736
		f 4 2987 -1225 2988 2989
		mu 0 4 1737 725 727 1738
		f 4 -1625 -2987 -2990 2990
		mu 0 4 975 970 1736 1739
		f 4 2991 -466 2992 2993
		mu 0 4 1740 281 278 1686
		f 4 -2994 -2899 -1652 2994
		mu 0 4 1740 1686 993 989
		f 4 2995 2996 -1640 2997
		mu 0 4 1741 1742 986 985
		f 4 2998 -549 -2992 2999
		mu 0 4 1742 329 281 1740
		f 4 -2995 -1646 -2997 -3000
		mu 0 4 1740 989 986 1742
		f 4 -2928 -412 3000 3001
		mu 0 4 1699 247 186 1743
		f 4 -1513 -2930 -3002 3002
		mu 0 4 891 888 1699 1743
		f 4 3003 -164 3004 3005
		mu 0 4 1744 99 102 1745
		f 4 3006 -1524 3007 -3006
		mu 0 4 1745 895 893 1744
		f 4 -3001 -294 -3004 3008
		mu 0 4 1743 186 99 1744
		f 4 -1518 -3003 -3009 -3008
		mu 0 4 893 891 1743 1744
		f 4 -2944 -255 3009 3010
		mu 0 4 1746 164 163 1747
		f 4 -1546 -2946 -3011 3011
		mu 0 4 914 913 1746 1747
		f 4 3012 -253 -2950 -2948
		mu 0 4 1706 162 161 1707
		f 4 3013 -262 -3013 3014
		mu 0 4 1748 165 162 1706
		f 4 -2947 -2139 3015 -3015
		mu 0 4 1706 926 917 1748
		f 4 -3010 -258 -3014 3016
		mu 0 4 1747 163 165 1748
		f 4 -1551 -3012 -3017 -3016
		mu 0 4 917 914 1747 1748
		f 4 -3005 -311 3017 3018
		mu 0 4 1745 102 195 1749
		f 4 -1519 -3007 -3019 3019
		mu 0 4 896 895 1745 1749
		f 4 3020 -719 -2934 -2932
		mu 0 4 1700 443 239 1701
		f 4 3021 -721 -3021 3022
		mu 0 4 1750 441 443 1700
		f 4 -2931 -1533 3023 -3023
		mu 0 4 1700 901 899 1750
		f 4 -3018 -714 -3022 3024
		mu 0 4 1749 195 441 1750
		f 4 -1527 -3020 -3025 -3024
		mu 0 4 899 896 1749 1750
		f 4 -2972 -403 3025 3026
		mu 0 4 1726 241 234 1751
		f 4 -1583 -2974 -3027 3027
		mu 0 4 945 943 1727 1752
		f 4 3028 -378 3029 3030
		mu 0 4 1753 230 228 1754
		f 4 3031 -1594 3032 -3031
		mu 0 4 1755 949 947 1756
		f 4 -3026 -386 -3029 3033
		mu 0 4 1751 234 230 1753
		f 4 -1586 -3028 -3034 -3033
		mu 0 4 947 945 1752 1756
		f 4 -3030 -374 3034 3035
		mu 0 4 1754 228 225 1757;
	setAttr ".fc[1500:1549]"
		f 4 -1589 -3032 -3036 3036
		mu 0 4 950 949 1755 1758
		f 4 3037 -357 -2978 -2976
		mu 0 4 1759 220 219 1730
		f 4 3038 -361 -3038 3039
		mu 0 4 1760 221 220 1759
		f 4 -2975 -1603 3040 -3040
		mu 0 4 1728 955 953 1761
		f 4 -3035 -368 -3039 3041
		mu 0 4 1757 225 221 1760
		f 4 -1595 -3037 -3042 -3041
		mu 0 4 953 950 1758 1761
		f 4 3042 -1467 3043 3044
		mu 0 4 1762 857 852 1763
		f 4 -1459 3045 3046 -3044
		mu 0 4 852 851 1764 1763
		f 4 3047 -447 3048 -3045
		mu 0 4 1763 267 266 1762
		f 4 3049 -1473 3050 3051
		mu 0 4 1765 861 858 1766
		f 4 -3049 -450 3052 3053
		mu 0 4 1762 266 269 1766
		f 4 -1469 -3043 -3054 -3051
		mu 0 4 858 857 1762 1766
		f 4 -2993 -460 3054 -2897
		mu 0 4 1686 278 277 1687
		f 4 3055 -1662 -2898 3056
		mu 0 4 1767 848 995 1687
		f 4 3057 -1131 3058 3059
		mu 0 4 1767 685 683 1768
		f 4 3060 -1455 -3056 -3060
		mu 0 4 1768 843 848 1767
		f 4 -3055 -1134 -3058 -3057
		mu 0 4 1687 277 685 1767
		f 4 -3053 -454 3061 -3052
		mu 0 4 1766 269 272 1765
		f 4 -2982 -1074 3062 3063
		mu 0 4 1769 656 655 1770
		f 4 -1610 -2984 -3064 3064
		mu 0 4 964 963 1771 1772
		f 4 3065 -1223 -2988 -2986
		mu 0 4 1773 721 725 1737
		f 4 3066 -1213 -3066 3067
		mu 0 4 1774 709 721 1773
		f 4 -2985 -1624 3068 -3068
		mu 0 4 1735 969 967 1775
		f 4 -3063 -1184 -3067 3069
		mu 0 4 1770 655 709 1774
		f 4 -1615 -3065 -3070 -3069
		mu 0 4 967 964 1772 1775
		f 4 3070 -1088 -2903 -2901
		mu 0 4 1688 665 619 1689
		f 4 -2900 -1484 3071 3072
		mu 0 4 1688 864 869 1776
		f 4 -3062 -1091 3073 3074
		mu 0 4 1765 272 667 1777
		f 4 -3074 -1101 3075 3076
		mu 0 4 1777 667 672 1776
		f 4 -1477 -3050 -3075 3077
		mu 0 4 862 861 1765 1777
		f 4 -3072 -2393 -3078 -3077
		mu 0 4 1776 869 862 1777
		f 4 -3076 -1104 -3071 -3073
		mu 0 4 1776 672 665 1688
		f 4 -3059 -1128 3078 3079
		mu 0 4 1768 683 681 1778
		f 4 -1449 -3061 -3080 3080
		mu 0 4 844 843 1768 1778
		f 4 3081 -1115 -3048 -3047
		mu 0 4 1764 676 267 1763
		f 4 3082 -1118 -3082 3083
		mu 0 4 1779 677 676 1764
		f 4 -3046 -1465 3084 -3084
		mu 0 4 1764 851 849 1779
		f 4 -3079 -1125 -3083 3085
		mu 0 4 1778 681 677 1779
		f 4 -1456 -3081 -3086 -3085
		mu 0 4 849 844 1778 1779
		f 4 -2989 -1242 3086 3087
		mu 0 4 1738 727 734 1780
		f 4 -1628 -2991 -3088 3088
		mu 0 4 977 975 1739 1781
		f 4 3089 -1635 3090 3091
		mu 0 4 1782 982 979 1783
		f 4 -3087 -1247 3092 3093
		mu 0 4 1780 734 737 1784
		f 4 -1631 -3089 -3094 -3091
		mu 0 4 979 977 1781 1783
		f 4 -3093 -1261 3094 -3092
		mu 0 4 1784 737 745 1785
		f 4 3095 -1258 -2999 -2996
		mu 0 4 1741 743 329 1742
		f 4 3096 -1270 -3096 3097
		mu 0 4 1786 747 743 1741
		f 4 -2998 -1645 3098 -3098
		mu 0 4 1741 985 983 1787
		f 4 -3095 -1266 -3097 3099
		mu 0 4 1785 745 747 1786
		f 4 -1639 -3090 -3100 -3099
		mu 0 4 983 982 1782 1787;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode mesh -n "player_body_GEOShapeOrig1" -p "player_body_GEO";
	rename -uid "9B8D2FFC-4E72-1AD2-4494-CF909A9A27B8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1788 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.048772998 0.273698 0.052317001
		 0.23708799 0.069926001 0.24012201 0.067362003 0.277071 0.046533 0.312778 0.066849999
		 0.31573701 0.055392001 0.35038599 0.071617 0.350674 0.063794002 0.38473099 0.077614002
		 0.38773501 0.112424 0.140893 0.141315 0.119572 0.153603 0.12984601 0.124124 0.152109
		 0.085735001 0.16941001 0.098665997 0.177174 0.063511997 0.20130201 0.080716997 0.20746499
		 0.107567 0.25306201 0.105974 0.28731999 0.107017 0.32127899 0.105555 0.35312501 0.102145
		 0.38426799 0.177619 0.14792299 0.15018 0.166453 0.128388 0.190375 0.113891 0.220239
		 0.14837199 0.26438901 0.147 0.28993601 0.14615799 0.318703 0.141904 0.34930199 0.13468599
		 0.377635 0.201952 0.177628 0.177113 0.18946999 0.15772299 0.211244 0.150241 0.239225
		 0.187721 0.280031 0.18523601 0.30234301 0.181228 0.323017 0.17324901 0.345397 0.164792
		 0.36680701 0.22864901 0.19874801 0.211161 0.21015 0.193689 0.229222 0.189439 0.25610599
		 0.40369201 0.30326 0.37528101 0.30210999 0.37175801 0.28975299 0.40030801 0.29288
		 0.432385 0.295445 0.42932001 0.284695 0.45495 0.27775699 0.44909099 0.264929 0.46914399
		 0.251717 0.46122101 0.24110401 0.274501 0.284163 0.24389 0.28011701 0.24866401 0.270668
		 0.27700901 0.271732 0.312702 0.28998899 0.31358099 0.28108299 0.349087 0.297593 0.34615999
		 0.28479201 0.36855701 0.277163 0.395531 0.28178599 0.42475501 0.27341199 0.44486001
		 0.253892 0.45675099 0.23060299 0.253943 0.262835 0.281542 0.261641 0.313254 0.26697201
		 0.34354201 0.27081001 0.36197001 0.25674799 0.38634199 0.25797001 0.41521299 0.25246799
		 0.43436 0.23127601 0.44580099 0.20939399 0.263513 0.242668 0.28822899 0.240337 0.31478
		 0.24269301 0.33954099 0.25073099 0.38147101 0.226292 0.39825901 0.21707401 0.41270599
		 0.20028199 0.42199799 0.18256301 0.27801999 0.20688801 0.29875901 0.20792501 0.319648
		 0.210997 0.33883601 0.21627 0.356769 0.220296 0.380209 0.22036301 0.35832301 0.21326999
		 0.39583299 0.213026 0.40649101 0.19366799 0.412532 0.17858 0.27813101 0.196078 0.300989
		 0.200396 0.32179701 0.202316 0.34018299 0.20597 0.47101599 0.680453 0.44218501 0.69950199
		 0.43271801 0.67302299 0.46588501 0.65602398 0.26418701 0.79766601 0.25491801 0.76794899
		 0.31096601 0.75167 0.317433 0.77851403 0.325865 0.800129 0.27141699 0.823695 0.43140501
		 0.44157299 0.465859 0.42748299 0.464843 0.43778801 0.434246 0.44755799 0.428074 0.47999999
		 0.46104601 0.47633001 0.39287001 0.451184 0.39512801 0.45773 0.35280901 0.458933
		 0.352054 0.47104001 0.297775 0.46900201 0.295708 0.481224 0.25104299 0.47258699 0.247917
		 0.48094499 0.20529699 0.46270201 0.202778 0.47243401 0.17397 0.45436099 0.17856 0.444763
		 0.48258299 0.26382101 0.467619 0.293356 0.44225401 0.31507599 0.41065201 0.32547
		 0.37645301 0.32585201 0.341616 0.320939 0.30789801 0.31573799 0.267602 0.30727401
		 0.236413 0.29310599 0.232715 0.29804099 0.26237199 0.31677899 0.30596101 0.33024999
		 0.34066901 0.341474 0.37914401 0.34720999 0.41638601 0.34334499 0.44780001 0.326718
		 0.47352701 0.302441 0.48834801 0.267701 0.433256 0.43632701 0.463772 0.42173401 0.393289
		 0.44276801 0.26790699 0.33223701 0.231611 0.30343699 0.30677 0.34516701 0.3416 0.36349699
		 0.353095 0.45472199 0.29970399 0.46365401 0.420522 0.35778201 0.38268599 0.37193999
		 0.45141399 0.33960101 0.45531699 0.37480199 0.45771101 0.394023 0.43080899 0.40093601
		 0.43072701 0.38516101 0.49401999 0.26908299 0.48088399 0.313815 0.47765699 0.36459699
		 0.47832 0.382359 0.47825199 0.34236801 0.45338401 0.35685101 0.40324101 0.40800399
		 0.40160301 0.39506701 0.369555 0.41612199 0.372361 0.39742199 0.42730001 0.37062201
		 0.403786 0.380101 0.206034 0.46122599 0.18066201 0.439273 0.31233901 0.41392401 0.28654799
		 0.40463299 0.27993 0.37167901 0.30893001 0.37925401 0.249897 0.46841499 0.339412
		 0.39115101 0.34051999 0.41968301 0.22891299 0.68583202 0.235469 0.66266 0.27317801
		 0.66131002 0.28467101 0.67678303 0.47407201 0.70012301 0.452003 0.71850801 0.370309
		 0.75113398 0.38485599 0.76802897 0.360811 0.72486103 0.39919099 0.695324 0.40983099
		 0.72238803 0.42131099 0.743783 0.41938499 0.63649601 0.45871499 0.62628502 0.388733
		 0.65982401 0.35142899 0.69102699 0.30367401 0.71925598 0.246721 0.73978299 0.236343
		 0.710195 0.292945 0.69458503 0.33784601 0.66160601 0.37041301 0.61932999 0.30347699
		 0.63972998 0.32120699 0.64451897 0.38845199 0.48381099 0.34433001 0.49075699 0.29562801
		 0.495415 0.24458 0.496957 0.19752499 0.49648201 0.16335 0.488585 0.14832801 0.52555001
		 0.18736 0.52743101 0.238177 0.51862001 0.295645 0.51523298 0.338076 0.50943702 0.212301
		 0.80590898 0.247859 0.82843298 0.20839199 0.843548 0.17318501 0.82537401 0.147147
		 0.80520898 0.172482 0.79432398 0.204466 0.772879 0.1636 0.77045798 0.12880599 0.77648002
		 0.19258 0.73926699 0.15316901 0.735524 0.11462 0.736323 0.18430699 0.69965202 0.10744
		 0.68590498 0.146321 0.69074398 0.18336099 0.65334702 0.21067099 0.63980401 0.11178
		 0.62974602 0.14952201 0.63808298 0.206928 0.603782 0.196614 0.58951998 0.41192001
		 0.51044297 0.454629 0.50972199 0.37668201 0.50710899 0.129696 0.57254499 0.17326801
		 0.57254398 0.239935 0.56654799 0.23657501 0.57385403 0.226267 0.543984 0.45621601
		 0.72816199 0.47427499 0.71209902 0.42388099 0.75385302 0.38636601 0.77910602;
	setAttr ".uvst[0].uvsp[250:499]" 0.32894799 0.80716401 0.27464101 0.83245802
		 0.25077301 0.83975399 0.213654 0.85027498 0.28718701 0.561804 0.28867099 0.56817597
		 0.31138399 0.54158199 0.475398 0.71627897 0.457288 0.73398799 0.42454201 0.75823802
		 0.38553399 0.78802598 0.32920599 0.81682199 0.280801 0.83933598 0.25312701 0.84622699
		 0.207634 0.86403799 0.48915201 0.84928 0.49658099 0.85028499 0.49673301 0.85206401
		 0.492854 0.850766 0.49626899 0.84750497 0.49239799 0.84814 0.48774499 0.84564197
		 0.49610999 0.84499103 0.48613301 0.90776801 0.48355001 0.90487498 0.48787799 0.89720798
		 0.490493 0.89637899 0.494057 0.89588302 0.494591 0.904612 0.491658 0.90284699 0.48875901
		 0.91043198 0.491359 0.91533798 0.47591099 0.91280699 0.474924 0.90898401 0.47902799
		 0.92313498 0.46684 0.91105199 0.467895 0.90750098 0.45794401 0.90383399 0.46141899
		 0.902538 0.460466 0.89068502 0.46341601 0.89338797 0.470146 0.88513499 0.47092101
		 0.88911301 0.485075 0.88921797 0.48352 0.89216697 0.489068 0.890791 0.40101501 0.895046
		 0.40246201 0.91012299 0.39838299 0.90944099 0.39743099 0.89461899 0.40616101 0.92160797
		 0.408456 0.92070198 0.399975 0.87848699 0.40754899 0.88374901 0.40449899 0.90956599
		 0.403317 0.89589798 0.40979499 0.91941899 0.411073 0.88924599 0.40860301 0.90718597
		 0.413369 0.91553998 0.42348599 0.92260498 0.42229199 0.91649801 0.43317199 0.91464102
		 0.42875499 0.910344 0.421377 0.90912801 0.427692 0.90541899 0.43047801 0.89773601
		 0.41439599 0.90464801 0.415113 0.89474499 0.417665 0.907332 0.42128199 0.89713502
		 0.42377299 0.88771701 0.425439 0.884166 0.40651599 0.86138302 0.417216 0.86767799
		 0.432365 0.89706397 0.429663 0.87311 0.45114401 0.907781 0.46434501 0.91995198 0.482061
		 0.93349499 0.44180301 0.891675 0.45335501 0.88533401 0.442606 0.91171002 0.447532
		 0.87108898 0.43895099 0.863828 0.42070299 0.84771401 0.42734101 0.85647899 0.44261199
		 0.83343399 0.44522601 0.84401602 0.17289101 0.956617 0.17299099 0.96792698 0.169149
		 0.97099298 0.16812199 0.96137798 0.16875599 0.94527799 0.164557 0.952393 0.160592
		 0.93656802 0.157454 0.94510299 0.14997099 0.93266201 0.1479 0.94177997 0.138384 0.93274999
		 0.13844401 0.94154602 0.127579 0.937343 0.12886 0.94468302 0.119434 0.94614297 0.121004
		 0.95169502 0.113955 0.95912898 0.111639 0.95472401 0.16263001 0.97513598 0.161534
		 0.96737897 0.158673 0.960747 0.130208 0.95425701 0.123326 0.95927799 0.117741 0.96612602
		 0.36267799 0.206634 0.38034201 0.216216 0.394557 0.21193799 0.40466601 0.191063 0.40928
		 0.178745 0.73610902 0.116186 0.70911402 0.130889 0.70433903 0.106474 0.72372401 0.092116997
		 0.704418 0.070909999 0.69316399 0.095560998 0.67277402 0.088390999 0.67515802 0.065989003
		 0.72674698 0.144109 0.70527297 0.14417601 0.69112301 0.039712999 0.66829097 0.040840998
		 0.75006598 0.146533 0.76409298 0.122229 0.177554 0.090834998 0.179058 0.091344997
		 0.172296 0.09849 0.171303 0.097227 0.66791397 0.036970001 0.69066203 0.036148999
		 0.164009 0.101186 0.16359 0.099349 0.57585102 0.065334998 0.58621299 0.083783001
		 0.56309903 0.100314 0.54506999 0.084876001 0.543993 0.081014 0.57478797 0.063478999
		 0.59181201 0.054986 0.59085399 0.052878998 0.141783 0.02617 0.14284401 0.024722001
		 0.155679 0.040826 0.15446299 0.041979998 0.60575402 0.045605998 0.60677397 0.047398001
		 0.64999598 0.062447 0.64262003 0.043568 0.64270598 0.039747 0.62259102 0.044741001
		 0.62142801 0.041577 0.12664799 0.055349 0.125295 0.055966999 0.117214 0.043120001
		 0.118262 0.042544998 0.615852 0.065403998 0.60014999 0.072021 0.60407799 0.096729003
		 0.58291602 0.111969 0.279006 0.19288801 0.302562 0.19402 0.32211 0.199018 0.60871398
		 0.083756998 0.62371099 0.080412999 0.62897098 0.089392997 0.65500098 0.082581997
		 0.34525701 0.200064 0.63669503 0.075306997 0.63168401 0.061918002 0.75268197 0.149388
		 0.76551598 0.123802 0.74188298 0.076792002 0.728486 0.057472002 0.754969 0.094972998
		 0.71948701 0.034449998 0.77297801 0.106079 0.71966201 0.030832 0.33749101 0.52528203
		 0.367948 0.52497298 0.33639899 0.59255701 0.31428799 0.611063 0.38863099 0.54279399
		 0.39691699 0.59124202 0.45055801 0.58672202 0.35376599 0.577205 0.44853801 0.545349
		 0.137898 0.083806001 0.136848 0.084729001 0.129656 0.068602003 0.130606 0.067919001
		 0.13188501 0.053661998 0.122705 0.039586999 0.115637 0.030214 0.116506 0.030236 0.12166
		 0.021923 0.122527 0.022748001 0.124687 0.026582999 0.13199601 0.036853001 0.120922
		 0.031950999 0.132072 0.019676 0.132034 0.020677 0.131354 0.025385 0.13899501 0.029863
		 0.14968 0.045308001 0.168092 0.052296001 0.167261 0.053312998 0.181251 0.080063 0.17999101
		 0.079924002 0.77493203 0.10686 0.17508499 0.061907001 0.173903 0.062665999 0.77120602
		 0.038614001 0.78112501 0.047316 0.778705 0.049256999 0.76919198 0.042056002 0.78586298
		 0.061981 0.78828299 0.060814999 0.78508699 0.078230999 0.78699601 0.078610003 0.75193697
		 0.034040999 0.75242198 0.031098001 0.151722 0.098453999 0.151475 0.096730001 0.179534
		 0.072153002 0.17849299 0.072825 0.76031202 0.062709004 0.74915802 0.048303001 0.78143001
		 0.089578003 0.78232002 0.090530001 0.77003998 0.077068999 0.73658401 0.032272 0.73751497
		 0.029763 0.14378899 0.093339004 0.14405 0.091934003 0.17488199 0.079847001 0.174519
		 0.087606996 0.168874 0.093910001 0.162522 0.095103003 0.152698 0.092895001 0.173199
		 0.074037999 0.163862 0.085823998 0.146714 0.088094003;
	setAttr ".uvst[0].uvsp[500:749]" 0.16879199 0.064673997 0.159521 0.079553001
		 0.140374 0.080278002 0.163427 0.056428 0.15465701 0.071698003 0.140232 0.049293999
		 0.147791 0.062403001 0.135581 0.06594 0.21461301 0.96757299 0.203583 0.97974998 0.19644
		 0.96992499 0.2106 0.958489 0.231947 0.96060199 0.227605 0.95059597 0.249736 0.95529097
		 0.24643201 0.94508702 0.26794699 0.95723498 0.26870301 0.94151503 0.049222998 0.94698501
		 0.034591999 0.94227201 0.037021998 0.92759502 0.051465999 0.93509001 0.063537002
		 0.95414197 0.066734001 0.94399798 0.077156 0.96437401 0.082263 0.95563602 0.096539997
		 0.96619201 0.090531997 0.975842 0.22158 0.97661 0.212548 0.98960102 0.23599 0.96836197
		 0.25237 0.96326399 0.26512 0.96998298 0.047736 0.95767301 0.03531 0.95462501 0.059672002
		 0.963907 0.070589997 0.97293901 0.081257001 0.98451197 0.204302 0.94743502 0.221817
		 0.93758601 0.216674 0.310559 0.210402 0.327126 0.241879 0.93120098 0.22070099 0.29047599
		 0.26754099 0.92591298 0.22236501 0.26735401 0.039547 0.91324198 0.052841999 0.923406
		 0.22963201 0.248009 0.15264501 0.92399102 0.163754 0.931472 0.198633 0.349347 0.141077
		 0.89393401 0.170819 0.89624399 0.164391 0.91152698 0.14744399 0.91094202 0.171552
		 0.94123298 0.17011 0.92724699 0.162651 0.92053401 0.17608701 0.95405799 0.17542 0.96704298
		 0.110512 0.95172 0.117938 0.942231 0.126295 0.93261999 0.137473 0.92650002 0.107116
		 0.92946702 0.11227 0.92084497 0.12973399 0.91492498 0.19117799 0.37007499 0.121754
		 0.90316498 0.248006 0.216023 0.23274399 0.22764701 0.119645 0.883555 0.110549 0.895935
		 0.105996 0.91221201 0.102565 0.92101401 0.091266997 0.90286702 0.096285 0.88320702
		 0.187067 0.91291797 0.199953 0.89048702 0.20579401 0.90355301 0.220173 0.884884 0.224815
		 0.89947701 0.24259999 0.87749797 0.25178301 0.89303797 0.045428999 0.87822598 0.053188
		 0.86250103 0.076702997 0.87256199 0.066191003 0.888533 0.236019 0.91536099 0.214132
		 0.92216098 0.077577002 0.916695 0.057666998 0.90536702 0.26533201 0.911358 0.041476
		 0.89934897 0.09584 0.921242 0.109353 0.946302 0.102048 0.93401599 0.087687999 0.948636
		 0.10305 0.96206701 0.19235601 0.96244401 0.194554 0.93097198 0.105922 0.94973302
		 0.17980801 0.96678102 0.18095499 0.95387399 0.097014003 0.93864501 0.177231 0.93528801
		 0.18895 0.94681799 0.183816 0.94945502 0.182805 0.96559298 0.105521 0.952869 0.093477003
		 0.94316399 0.182886 0.933267 0.176374 0.92126101 0.088578001 0.927863 0.072572 0.932217
		 0.085308 0.93450099 0.484182 0.81013298 0.491941 0.80886102 0.49197999 0.81917697
		 0.48323399 0.81985003 0.471899 0.81319302 0.472552 0.82100701 0.460493 0.82597899
		 0.462899 0.81671202 0.436997 0.82895702 0.413847 0.84350699 0.39709401 0.86116099
		 0.38859999 0.88033801 0.38908499 0.89659202 0.39213899 0.91276503 0.482907 0.80218798
		 0.49136001 0.804322 0.47035101 0.803967 0.45554599 0.80942702 0.46671301 0.79704797
		 0.431831 0.82539898 0.46090099 0.754839 0.47931799 0.74233001 0.485652 0.753124 0.46157601
		 0.76635897 0.47554001 0.773103 0.49046299 0.76476002 0.48419601 0.77785498 0.46568301
		 0.772995 0.454065 0.79931903 0.42771101 0.774872 0.438815 0.78376001 0.44291899 0.79790503
		 0.39325699 0.79999101 0.400962 0.81308299 0.35419101 0.82441097 0.37258801 0.83955699
		 0.33069101 0.85335201 0.35053 0.86967599 0.32338101 0.90692198 0.29595199 0.89533299
		 0.31763601 0.86453301 0.33778101 0.883654 0.48253399 0.84805799 0.48590499 0.85053301
		 0.460251 0.83587199 0.45824599 0.85992199 0.45112899 0.85259902 0.48267201 0.82902199
		 0.49189699 0.82869899 0.48615399 0.84117198 0.49395099 0.83943999 0.47651401 0.84509897
		 0.47292 0.83112198 0.47485301 0.83889502 0.48394299 0.83618498 0.49290201 0.83460599
		 0.46313399 0.84450001 0.46782801 0.85173798 0.48057899 0.85427201 0.496667 0.854195
		 0.49109501 0.86104703 0.475021 0.85939097 0.46700799 0.866126 0.48518899 0.86492699
		 0.49592301 0.86790103 0.49258101 0.87060797 0.49635899 0.87775803 0.49422899 0.87848902
		 0.49498501 0.88737798 0.49037999 0.88642198 0.48528099 0.88662601 0.47149 0.881796
		 0.459535 0.87583202 0.47851801 0.87729001 0.48349801 0.86975199 0.489952 0.87340301
		 0.492423 0.87737501 0.48973501 0.88412398 0.48553699 0.882438 0.48596999 0.874924
		 0.48423299 0.87655199 0.48907101 0.87466103 0.49082601 0.87696701 0.48954499 0.882384
		 0.48650199 0.88121402 0.48703301 0.87622303 0.48816299 0.876082 0.488363 0.87744403
		 0.48869401 0.87932098 0.48741001 0.87939298 0.48661 0.87743199 0.34833601 0.89687997
		 0.34232801 0.916197 0.362533 0.87485403 0.38475499 0.84935802 0.41137901 0.84028202
		 0.40269101 0.82795399 0.40581 0.83700597 0.392171 0.861413 0.39045301 0.853248 0.38355201
		 0.88199002 0.37129501 0.87776899 0.37697399 0.89996397 0.364979 0.90340799 0.362881
		 0.92566699 0.38058099 0.91686898 0.39862099 0.92614502 0.38916099 0.93232799 0.377119
		 0.944754 0.400094 0.94520599 0.393769 0.96016401 0.40801701 0.93652302 0.415831 0.93076599
		 0.423951 0.92575002 0.43510401 0.91549599 0.457463 0.92882401 0.41346899 0.954135
		 0.411975 0.96956402 0.41845199 0.94527501 0.42740801 0.95871502 0.430718 0.97233701
		 0.42626399 0.950293 0.44329199 0.92961198 0.42536399 0.93987501 0.433579 0.94785601
		 0.45794699 0.94319302 0.47685799 0.95108902 0.44068599 0.95785302 0.447772 0.97064501
		 0.44719201 0.93905002 0.46374401 0.96330398 0.45092401 0.95207101 0.441477 0.94388402;
	setAttr ".uvst[0].uvsp[750:999]" 0.43356699 0.934789 0.15335201 0.95570397
		 0.145963 0.95104003 0.13789099 0.952272 0.14824 0.95713598 0.150158 0.96238601 0.147054
		 0.96052998 0.141278 0.95580602 0.145156 0.95598501 0.140937 0.95910603 0.144334 0.95931703
		 0.14559101 0.963099 0.143098 0.962511 0.140674 0.96177202 0.136948 0.95952398 0.14190599
		 0.96566802 0.13891 0.96338099 0.132247 0.962524 0.12879901 0.96731198 0.126954 0.97400898
		 0.13902199 0.976349 0.134058 0.97121 0.15083399 0.97932798 0.15261599 0.973028 0.14585599
		 0.973966 0.15244301 0.96762198 0.135746 0.96738702 0.14051101 0.97111499 0.146111
		 0.97084898 0.14617901 0.96594501 0.054714002 0.97355998 0.048009999 0.96608198 0.063642003
		 0.97772199 0.25024599 0.97528702 0.23962501 0.98061299 0.22793999 0.98356199 0.25689101
		 0.98231298 0.039508 0.96857399 0.22675499 0.99442899 0.24287499 0.99377102 0.050057001
		 0.98375499 0.066652998 0.98771101 0.46790701 0.906829 0.46205401 0.90238702 0.47478601
		 0.90837002 0.48249099 0.90392202 0.485158 0.89809197 0.48172799 0.89437801 0.47139201
		 0.89084399 0.46449101 0.89452302 0.47868299 0.90176803 0.47424501 0.903332 0.46871701
		 0.89697599 0.47291401 0.895971 0.470202 0.90350997 0.468613 0.900397 0.47878399 0.89900601
		 0.47760299 0.896474 0.47365001 0.90020001 0.288185 0.631854 0.26837099 0.64565098
		 0.241069 0.650756 0.30004299 0.60793698 0.27662 0.583691 0.24097399 0.58065897 0.21251801
		 0.606538 0.220286 0.63598198 0.029947 0.269196 0.033748999 0.233088 0.02609 0.31027299
		 0.035670999 0.350768 0.047122002 0.38451001 0.098514996 0.128738 0.12908299 0.106468
		 0.070491001 0.160129 0.046075001 0.194947 0.021227 0.27120399 0.023698 0.23213699
		 0.28582099 0.63052201 0.26698399 0.64357501 0.24233501 0.64837801 0.034745 0.189096
		 0.296657 0.60854602 0.019648001 0.30972999 0.276463 0.58453202 0.029719001 0.35293701
		 0.242869 0.58299297 0.035147 0.39168301 0.21521901 0.60663998 0.079278998 0.116032
		 0.118773 0.096988 0.22229099 0.63352102 0.053045001 0.151921 0.50364101 0.87775803
		 0.50407702 0.86790103 0.50741899 0.87060797 0.50577098 0.87848902 0.50962001 0.88642198
		 0.50501502 0.88737798 0.50890499 0.86104703 0.51481098 0.86492699 0.50333297 0.854195
		 0.50326699 0.85206401 0.507146 0.850766 0.514094 0.85053301 0.51942098 0.85427201
		 0.51084799 0.84928 0.50341898 0.85028499 0.50373101 0.84750497 0.50760299 0.84814
		 0.51225501 0.84564197 0.50389099 0.84499103 0.50604898 0.83943999 0.51384598 0.84117198
		 0.50810301 0.82869899 0.50801998 0.81917697 0.51676601 0.81985003 0.51732701 0.82902199
		 0.51605701 0.83618498 0.50709802 0.83460599 0.50805902 0.80886102 0.515818 0.81013298
		 0.50863999 0.804322 0.517093 0.80218798 0.53328699 0.79704797 0.51580399 0.77785498
		 0.52446002 0.773103 0.54593498 0.79931903 0.54445398 0.80942702 0.52964902 0.803967
		 0.568169 0.82539898 0.50953698 0.76476002 0.51434797 0.753124 0.52068198 0.74233001
		 0.53909898 0.754839 0.53842402 0.76635897 0.53431702 0.772995 0.524602 0.71627897
		 0.52572501 0.71209902 0.54378402 0.72816199 0.54271197 0.73398799 0.52592802 0.70012301
		 0.547997 0.71850801 0.52898401 0.680453 0.55781502 0.69950199 0.53411502 0.65602398
		 0.54128498 0.62628502 0.58061498 0.63649601 0.56728202 0.67302299 0.54944199 0.58672202
		 0.60308301 0.59124202 0.55146199 0.545349 0.545371 0.50972199 0.58807999 0.51044297
		 0.61136901 0.54279399 0.53895402 0.47633001 0.571926 0.47999999 0.53515702 0.43778801
		 0.565754 0.44755799 0.534141 0.42748299 0.56859499 0.44157299 0.536228 0.42173401
		 0.56674403 0.43632701 0.52168 0.382359 0.52234298 0.36459699 0.54468298 0.37480199
		 0.54228902 0.394023 0.52174801 0.34236801 0.54661602 0.35685101 0.76838899 0.30343699
		 0.73209298 0.33223701 0.73762798 0.31677899 0.76728499 0.29804099 0.50598001 0.26908299
		 0.51165199 0.267701 0.52647299 0.302441 0.51911598 0.313815 0.72007 0.37167901 0.69107002
		 0.37925401 0.69322997 0.34516701 0.69403899 0.33024999 0.71345198 0.40463299 0.68766099
		 0.41392401 0.81933802 0.439273 0.82143998 0.444763 0.79470301 0.46270201 0.793966
		 0.46122599 0.82603002 0.45436099 0.79722202 0.47243401 0.83665001 0.488585 0.80247498
		 0.49648201 0.85167199 0.52555001 0.81264001 0.52743101 0.87030399 0.57254499 0.82673198
		 0.57254398 0.88822001 0.62974602 0.85047799 0.63808298 0.89256001 0.68590498 0.853679
		 0.69074398 0.88538003 0.736323 0.87119401 0.77648002 0.83639997 0.77045798 0.84683102
		 0.735524 0.852853 0.80520898 0.82751799 0.79432398 0.82681501 0.82537401 0.79160798
		 0.843548 0.752141 0.82843298 0.78769898 0.80590898 0.78634602 0.85027498 0.74922699
		 0.83975399 0.79236603 0.86403799 0.74687302 0.84622699 0.70404798 0.89533299 0.67661899
		 0.90692198 0.66221899 0.883654 0.68236399 0.86453301 0.65767199 0.916197 0.65166402
		 0.89687997 0.637119 0.92566699 0.622881 0.944754 0.61083901 0.93232799 0.61941898
		 0.91686898 0.62302601 0.89996397 0.63502097 0.90340799 0.60623097 0.96016401 0.59990603
		 0.94520599 0.58802497 0.96956402 0.58653098 0.954135 0.569282 0.97233701 0.57259202
		 0.95871502 0.55931401 0.95785302 0.55222797 0.97064501 0.53625602 0.96330398 0.54907602
		 0.95207101 0.52314198 0.95108902 0.51793897 0.93349499 0.54253697 0.92882401 0.54205298
		 0.94319302 0.508641 0.91533798 0.51124102 0.91043198 0.52097201 0.92313498 0.53565502
		 0.91995198 0.505409 0.904612 0.50834203 0.90284699 0.505943 0.89588302 0.509507 0.89637899
		 0.51093203 0.890791 0.514925 0.88921797 0.71532899 0.67678303;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.67879301 0.64451897 0.69652301 0.63972998
		 0.72682202 0.66131002 0.711815 0.631854 0.73162901 0.64565098 0.76453102 0.66266
		 0.77108699 0.68583202 0.75893098 0.650756 0.66360098 0.59255701 0.68571198 0.611063
		 0.69995701 0.60793698 0.71281302 0.561804 0.71132898 0.56817597 0.72338003 0.583691
		 0.76006502 0.56654799 0.76342499 0.57385403 0.75902599 0.58065897 0.80338597 0.58951998
		 0.79307199 0.603782 0.78748202 0.606538 0.81663901 0.65334702 0.78932899 0.63980401
		 0.77971399 0.63598198 0.96625102 0.233088 0.97005302 0.269196 0.95122701 0.273698
		 0.94768298 0.23708799 0.97630203 0.23213699 0.978773 0.27120399 0.93648797 0.20130201
		 0.95392501 0.194947 0.96525502 0.189096 0.97390997 0.31027299 0.95346701 0.312778
		 0.98035198 0.30972999 0.964329 0.350768 0.94460797 0.35038599 0.970281 0.35293701
		 0.952878 0.38451001 0.93620598 0.38473099 0.96485299 0.39168301 0.87091702 0.106468
		 0.90148503 0.128738 0.88757598 0.140893 0.85868502 0.119572 0.88122702 0.096988 0.92072099
		 0.116032 0.92950898 0.160129 0.91426498 0.16941001 0.94695503 0.151921 0.93263799
		 0.277071 0.93007398 0.24012201 0.91928297 0.20746499 0.93314999 0.31573701 0.92838299
		 0.350674 0.92238599 0.38773501 0.87587601 0.152109 0.84639698 0.12984601 0.90133399
		 0.177174 0.89402598 0.28731999 0.89243299 0.25306201 0.88610899 0.220239 0.89298302
		 0.32127899 0.894445 0.35312501 0.89785498 0.38426799 0.84982002 0.166453 0.82238102
		 0.14792299 0.87161201 0.190375 0.85299999 0.28993601 0.85162801 0.26438901 0.84975898
		 0.239225 0.85384202 0.318703 0.858096 0.34930199 0.86531401 0.377635 0.822887 0.18946999
		 0.79804802 0.177628 0.84227699 0.211244 0.81476402 0.30234301 0.81227899 0.280031
		 0.810561 0.25610599 0.81877202 0.323017 0.82675099 0.345397 0.835208 0.36680701 0.78883898
		 0.21015 0.77135098 0.19874801 0.80631101 0.229222 0.78332603 0.310559 0.77929902
		 0.29047599 0.77763498 0.26735401 0.78959799 0.327126 0.80136698 0.349347 0.80882198
		 0.37007499 0.76725602 0.22764701 0.75199401 0.216023 0.77036798 0.248009 0.75739998
		 0.87749797 0.779827 0.884884 0.77518499 0.89947701 0.74821699 0.89303797 0.95457101
		 0.87822598 0.93380898 0.888533 0.92329699 0.87256199 0.94681197 0.86250103 0.80004698
		 0.89048702 0.79420602 0.90355301 0.82918102 0.89624399 0.81293303 0.91291797 0.85892302
		 0.89393401 0.85255599 0.91094202 0.83560902 0.91152698 0.82362598 0.92126101 0.880355
		 0.883555 0.88945103 0.895935 0.87824601 0.90316498 0.87026602 0.91492498 0.90371501
		 0.88320702 0.90873301 0.90286702 0.62354702 0.32585201 0.58934802 0.32547 0.59630799
		 0.30326 0.62471902 0.30210999 0.62085599 0.34720999 0.58361399 0.34334499 0.650913
		 0.297593 0.65838403 0.320939 0.65933102 0.341474 0.55774599 0.31507599 0.56761497
		 0.295445 0.55220002 0.326718 0.532381 0.293356 0.54505002 0.27775699 0.51741701 0.26382101
		 0.53085601 0.251717 0.763587 0.29310599 0.73239797 0.30727401 0.72549897 0.284163
		 0.75611001 0.28011701 0.69210202 0.31573799 0.687298 0.28998899 0.59969199 0.29288
		 0.62824202 0.28975299 0.65384001 0.28479201 0.57068002 0.284695 0.55090898 0.264929
		 0.53877902 0.24110401 0.72299099 0.271732 0.75133598 0.270668 0.68641901 0.28108299
		 0.604469 0.28178599 0.63144302 0.277163 0.65645802 0.27081001 0.57524502 0.27341199
		 0.55514002 0.253892 0.54324901 0.23060299 0.718458 0.261641 0.74605697 0.262835 0.686746
		 0.26697201 0.61365801 0.25797001 0.63802999 0.25674799 0.66045898 0.25073099 0.58478701
		 0.25246799 0.56563997 0.23127601 0.55419898 0.20939399 0.71177101 0.240337 0.73648697
		 0.242668 0.68522 0.24269301 0.61852902 0.226292 0.64323097 0.220296 0.66116399 0.21627
		 0.60174102 0.21707401 0.58729398 0.20028199 0.57800198 0.18256301 0.70124102 0.20792501
		 0.72197998 0.20688801 0.68035197 0.210997 0.61979097 0.22036301 0.64167702 0.21326999
		 0.65981698 0.20597 0.60416698 0.213026 0.59350902 0.19366799 0.58746803 0.17858 0.69901103
		 0.200396 0.72186899 0.196078 0.67820299 0.202316 0.605443 0.21193799 0.61965799 0.216216
		 0.63732201 0.206634 0.59533399 0.191063 0.59072 0.178745 0.697438 0.19402 0.720994
		 0.19288801 0.67789 0.199018 0.65474302 0.200064 0.32722601 0.088390999 0.30683601
		 0.095560998 0.295582 0.070909999 0.32484201 0.065989003 0.35000399 0.062447 0.34499899
		 0.082581997 0.295661 0.106474 0.27627599 0.092116997 0.29088601 0.130889 0.26389101
		 0.116186 0.294727 0.14417601 0.27325299 0.144109 0.41708401 0.111969 0.39592201 0.096729003
		 0.41378701 0.083783001 0.436901 0.100314 0.37102899 0.089392997 0.37628901 0.080412999
		 0.39128599 0.083756998 0.39985001 0.072021 0.363305 0.075306997 0.36831599 0.061918002
		 0.61126697 0.65982401 0.60080898 0.695324 0.62958699 0.61932999 0.59016901 0.72238803
		 0.69632602 0.71925598 0.68903399 0.75167 0.639189 0.72486103 0.64857101 0.69102699
		 0.66215402 0.66160601 0.70705497 0.69458503 0.682567 0.77851403 0.629691 0.75113398
		 0.75327897 0.73978299 0.74508202 0.76794899 0.76365697 0.710195 0.73581302 0.79766601
		 0.80742002 0.73926699 0.79553401 0.772879 0.81569302 0.69965202 0.72535902 0.83245802
		 0.72858298 0.823695 0.719199 0.83933598 0.61363399 0.77910602 0.61514401 0.76802897
		 0.67413503 0.800129 0.67105198 0.80716401 0.67079401 0.81682199 0.61446601 0.78802598
		 0.57611901 0.75385302 0.57868898 0.743783 0.57545799 0.75823802 0.60671097 0.44276801
		 0.60712999 0.451184 0.56927299 0.38516101 0.56919098 0.40093601;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.60487199 0.45773 0.646905 0.45472199 0.64719099
		 0.458933 0.59839702 0.39506701 0.59675902 0.40800399 0.647946 0.47104001 0.70029598
		 0.46365401 0.70222503 0.46900201 0.627639 0.39742199 0.630445 0.41612199 0.704292
		 0.481224 0.750103 0.46841499 0.74895698 0.47258699 0.66058803 0.39115101 0.65947998
		 0.41968301 0.752083 0.48094499 0.61154801 0.48381099 0.65566999 0.49075699 0.70437199
		 0.495415 0.75542003 0.496957 0.62331802 0.50710899 0.632052 0.52497298 0.661924 0.50943702
		 0.704355 0.51523298 0.761823 0.51862001 0.68861598 0.54158199 0.77373302 0.543984
		 0.54858601 0.33960101 0.57947803 0.35778201 0.61731398 0.37193999 0.6584 0.36349699
		 0.596214 0.380101 0.57270002 0.37062201 0.64623398 0.577205 0.66250902 0.52528203
		 0.57228899 0.774872 0.561185 0.78376001 0.60674298 0.79999101 0.599038 0.81308299
		 0.64580899 0.82441097 0.62741202 0.83955699 0.66930902 0.85335201 0.64946997 0.86967599
		 0.55708098 0.79790503 0.59730899 0.82795399 0.61524498 0.84935802 0.63746703 0.87485403
		 0.51746601 0.84805799 0.52348602 0.84509897 0.53858203 0.902538 0.53210503 0.90750098
		 0.53209299 0.906829 0.53794599 0.90238702 0.54205602 0.90383399 0.53315997 0.91105199
		 0.53550899 0.89452302 0.53658402 0.89338797 0.53953397 0.89068502 0.52507597 0.90898401
		 0.52521402 0.90837002 0.52408898 0.91280699 0.51644999 0.90487498 0.51750898 0.90392202
		 0.51386702 0.90776801 0.51212198 0.89720798 0.51484197 0.89809197 0.51648003 0.89216697
		 0.51827198 0.89437801 0.52907902 0.88911301 0.52860701 0.89084399 0.529854 0.88513499
		 0.52979797 0.90350997 0.53138697 0.900397 0.53128302 0.89697599 0.52575499 0.903332
		 0.52131701 0.90176803 0.52121598 0.89900601 0.52239698 0.896474 0.52708602 0.895971
		 0.54885602 0.907781 0.54664499 0.88533401 0.51471901 0.88662601 0.52850997 0.881796
		 0.507577 0.87737501 0.51026499 0.88412398 0.51004797 0.87340301 0.55739403 0.91171002
		 0.55819702 0.891675 0.52148199 0.87729001 0.540465 0.87583202 0.552468 0.87108898
		 0.51446301 0.882438 0.53710097 0.81671202 0.53950697 0.82597899 0.527448 0.82100701
		 0.52810103 0.81319302 0.563003 0.82895702 0.55738801 0.83343399 0.53974903 0.83587199
		 0.52708 0.83112198 0.55477399 0.84401602 0.60290599 0.86116099 0.59348398 0.86138302
		 0.57929701 0.84771401 0.58615297 0.84350699 0.58862102 0.84028202 0.60782897 0.861413
		 0.582784 0.86767799 0.57265902 0.85647899 0.61140001 0.88033801 0.600025 0.87848699
		 0.61644799 0.88199002 0.59245098 0.88374901 0.61091501 0.89659202 0.60257 0.89461899
		 0.59898502 0.895046 0.60137898 0.92614502 0.59383798 0.92160797 0.60161698 0.90944099
		 0.60786098 0.91276503 0.59154397 0.92070198 0.59753799 0.91012299 0.59198302 0.93652302
		 0.58416897 0.93076599 0.58154798 0.94527501 0.57463598 0.93987501 0.57604897 0.92575002
		 0.56643301 0.934789 0.53686601 0.84450001 0.52514702 0.83889502 0.54887098 0.85259902
		 0.570337 0.87311 0.56104898 0.863828 0.574561 0.884166 0.59020501 0.91941899 0.59550101
		 0.90956599 0.59668303 0.89589798 0.57651401 0.92260498 0.56489599 0.91549599 0.56682801
		 0.91464102 0.55670798 0.92961198 0.567635 0.89706397 0.56952202 0.89773601 0.57622701
		 0.88771701 0.58892697 0.88924599 0.586631 0.91553998 0.59139699 0.90718597 0.57770801
		 0.91649801 0.57124501 0.910344 0.572308 0.90541899 0.57871801 0.89713502 0.58488703
		 0.89474499 0.58560401 0.90464801 0.582335 0.907332 0.578623 0.90912801 0.54175401
		 0.85992199 0.55280799 0.93905002 0.53299201 0.866126 0.51650202 0.86975199 0.53217202
		 0.85173798 0.524979 0.85939097 0.82458001 0.96704298 0.82391298 0.95405799 0.82710898
		 0.956617 0.82700902 0.96792698 0.82019198 0.96678102 0.81904501 0.95387399 0.88836098
		 0.95472401 0.880566 0.94614297 0.88206202 0.942231 0.88948798 0.95172 0.89064699
		 0.946302 0.89407802 0.94973302 0.828448 0.94123298 0.83124399 0.94527799 0.82276899
		 0.93528801 0.83624601 0.931472 0.83940798 0.93656802 0.82989001 0.92724699 0.84735501
		 0.92399102 0.85002899 0.93266201 0.837349 0.92053401 0.86252701 0.92650002 0.86161602
		 0.93274999 0.87370503 0.93261999 0.87242103 0.937343 0.88773 0.92084497 0.89288402
		 0.92946702 0.89795202 0.93401599 0.83187801 0.96137798 0.83085102 0.97099298 0.88604498
		 0.95912898 0.87899601 0.95169502 0.83544302 0.952393 0.84254599 0.94510299 0.85210001
		 0.94177997 0.86155599 0.94154602 0.87114 0.94468302 0.83846599 0.96737897 0.83736998
		 0.97513598 0.88225901 0.96612602 0.876674 0.95927799 0.84132701 0.960747 0.84664798
		 0.95570397 0.85403699 0.95104003 0.86210901 0.952272 0.86979198 0.95425701 0.84738398
		 0.973028 0.84916598 0.97932798 0.87304598 0.97400898 0.87120098 0.96731198 0.84755701
		 0.96762198 0.84984201 0.96238601 0.85484397 0.95598501 0.85176003 0.95713598 0.85294598
		 0.96052998 0.85872197 0.95580602 0.86775303 0.962524 0.86305201 0.95952398 0.85906303
		 0.95910603 0.85414398 0.973966 0.86097801 0.976349 0.865942 0.97121 0.85388899 0.97084898
		 0.85382098 0.96594501 0.85440898 0.963099 0.864254 0.96738702 0.86109 0.96338099
		 0.859326 0.96177202 0.221295 0.049256999 0.21887501 0.047316 0.22879399 0.038614001
		 0.230808 0.042056002 0.214137 0.061981 0.21171699 0.060814999 0.25084201 0.048303001
		 0.23968799 0.062709004 0.22995999 0.077068999 0.82770401 0.09849 0.82869703 0.097227
		 0.83640999 0.099349 0.83599102 0.101186 0.82094198 0.091344997 0.82244599 0.090834998
		 0.83112597 0.093910001 0.83747798 0.095103003 0.825481 0.087606996 0.83613801 0.085823998
		 0.84730202 0.092895001 0.82511801 0.079847001;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.86864603 0.025385 0.867966 0.020677 0.877473
		 0.022748001 0.87531298 0.026582999 0.88349402 0.030236 0.87907797 0.031950999 0.87729502
		 0.039586999 0.86800402 0.036853001 0.86100501 0.029863 0.86792803 0.019676 0.87834001
		 0.021923 0.884363 0.030214 0.40914601 0.052878998 0.40818799 0.054986 0.393226 0.047398001
		 0.39424601 0.045605998 0.37740901 0.044741001 0.37857199 0.041577 0.384148 0.065403998
		 0.331709 0.040840998 0.332086 0.036970001 0.35729399 0.039747 0.35738 0.043568 0.30887699
		 0.039712999 0.309338 0.036148999 0.87470502 0.055966999 0.87335199 0.055349 0.88173801
		 0.042544998 0.88278598 0.043120001 0.87034398 0.068602003 0.869394 0.067919001 0.86811501
		 0.053661998 0.86441898 0.06594 0.85976797 0.049293999 0.85220897 0.062403001 0.85031998
		 0.045308001 0.836573 0.056428 0.84553701 0.041979998 0.858217 0.02617 0.832739 0.053312998
		 0.84432101 0.040826 0.85715598 0.024722001 0.83190799 0.052296001 0.456007 0.081014
		 0.45493001 0.084876001 0.42414901 0.065334998 0.425212 0.063478999 0.234484 0.123802
		 0.235907 0.122229 0.249934 0.146533 0.247318 0.149388 0.247578 0.031098001 0.248063
		 0.034040999 0.26341599 0.032272 0.84852499 0.096730001 0.84827799 0.098453999 0.214913
		 0.078230999 0.21300399 0.078610003 0.21856999 0.089578003 0.81874901 0.080063 0.82000899
		 0.079924002 0.25811699 0.076792002 0.271514 0.057472002 0.245031 0.094972998 0.28051299
		 0.034449998 0.22702201 0.106079 0.28033799 0.030832 0.225068 0.10686 0.21768001 0.090530001
		 0.262485 0.029763 0.86315203 0.084729001 0.86210197 0.083806001 0.85595 0.091934003
		 0.85621101 0.093339004 0.82046598 0.072153002 0.82150698 0.072825 0.82609701 0.062665999
		 0.82491499 0.061907001 0.826801 0.074037999 0.83120799 0.064673997 0.859626 0.080278002
		 0.85328603 0.088094003 0.84047902 0.079553001 0.84534299 0.071698003 0.80356002 0.96992499
		 0.78939998 0.958489 0.79569799 0.94743502 0.80764401 0.96244401 0.80544603 0.93097198
		 0.81105 0.94681799 0.89695001 0.96206701 0.91231197 0.948636 0.91773701 0.95563602
		 0.90346003 0.96619201 0.89447898 0.952869 0.90652299 0.94316399 0.81618398 0.94945502
		 0.817195 0.96559298 0.77239501 0.95059597 0.77818298 0.93758601 0.78586799 0.92216098
		 0.75356799 0.94508702 0.75812101 0.93120098 0.76398098 0.91536099 0.73129702 0.94151503
		 0.73245901 0.92591298 0.73466802 0.911358 0.96297801 0.92759502 0.94853401 0.93509001
		 0.94715798 0.923406 0.96045297 0.91324198 0.94233298 0.90536702 0.95852399 0.89934897
		 0.93326598 0.94399798 0.92742801 0.932217 0.92242301 0.916695 0.91469198 0.93450099
		 0.91142201 0.927863 0.796417 0.97974998 0.78538698 0.96757299 0.92284399 0.96437401
		 0.909468 0.975842 0.768053 0.96060199 0.75026399 0.95529097 0.73205298 0.95723498
		 0.96540803 0.94227201 0.95077699 0.94698501 0.936463 0.95414197 0.78745198 0.98960102
		 0.77841997 0.97661 0.92940998 0.97293901 0.91874301 0.98451197 0.76401001 0.96836197
		 0.74763 0.96326399 0.73487997 0.96998298 0.96469003 0.95462501 0.95226401 0.95767301
		 0.940328 0.963907 0.77324498 0.99442899 0.77205998 0.98356199 0.93635798 0.97772199
		 0.93334699 0.98771101 0.76037502 0.98061299 0.74975401 0.97528702 0.74310899 0.98231298
		 0.96049201 0.96857399 0.95199001 0.96608198 0.94528598 0.97355998 0.75712502 0.99377102
		 0.94994301 0.98375499 0.90298599 0.93864501 0.817114 0.933267 0.90416002 0.921242
		 0.89743501 0.92101401 0.89400399 0.91221201 0.59419 0.83700597 0.60954702 0.853248
		 0.62870502 0.87776899 0.51402998 0.874924 0.51092899 0.87466103 0.51576698 0.87655199
		 0.50917399 0.87696701 0.51045501 0.882384 0.51349801 0.88121402 0.51339 0.87743199
		 0.51296699 0.87622303 0.51258999 0.87939298 0.51183701 0.876082 0.51163697 0.87744403
		 0.51130599 0.87932098 0.57373601 0.950293 0.56642097 0.94785601 0.558523 0.94388402
		 0.85809398 0.96566802 0.85948902 0.97111499 0.85566598 0.95931703 0.856902 0.962511
		 0.52635002 0.90020001 0.71417898 0.63052201 0.73301601 0.64357501 0.75766498 0.64837801
		 0.70334297 0.60854602 0.72353703 0.58453202 0.75713098 0.58299297 0.78478098 0.60663998
		 0.77770901 0.63352102 0.5 0.90568799 0.5 0.89682299 0.5 0.82793301 0.5 0.817931 0.5
		 0.808954 0.5 0.80366302 0.5 0.79918897 0.5 0.79017001 0.5 0.77798301 0.5 0.76450503
		 0.5 0.74917001 0.5 0.726174 0.5 0.70007199 0.5 0.69374198 0.5 0.54450297 0.5 0.50858599
		 0.5 0.47354501 0.5 0.43227199 0.5 0.421195 0.5 0.41519901 0.5 0.31050599 0.5 0.269678
		 0.22737101 0.30887699 0.25178501 0.33825499 0.77262902 0.30887699 0.74821502 0.33825499
		 0.25911099 0.373294 0.74088901 0.373294 0.26301101 0.40686801 0.73698902 0.40686801
		 0.15607201 0.425082 0.153005 0.43124801 0.84392798 0.425082 0.846995 0.43124801 0.146899
		 0.44326001 0.85310102 0.44326001 0.131657 0.47838601 0.868343 0.47838601 0.112234
		 0.51708502 0.887766 0.51708502 0.088871002 0.56484699 0.911129 0.56484699 0.859272
		 0.85064799 0.84151 0.866795 0.15849 0.866795 0.16972101 0.87419999 0.83027899 0.87419999
		 0.17822801 0.885279 0.82177198 0.885279 0.64837497 0.94767702 0.63218999 0.96304798
		 0.36781001 0.96304798 0.38783899 0.97833502 0.61216098 0.97833502 0.5 0.91677999
		 0.5 0.95965999 0.5 0.93648797 0.5 0.683613 0.5 0.67262697 0.5 0.65269202 0.5 0.376176
		 0.5 0.36043301 0.5 0.33856201 0.5 0.62251902;
	setAttr ".uvst[0].uvsp[1750:1787]" 0.5 0.58356702 0.069472 0.62402701 0.93052799
		 0.62402701 0.064074002 0.68674099 0.074083999 0.74416101 0.92591602 0.74416101 0.93592602
		 0.68674099 0.093590997 0.789877 0.90640903 0.789877 0.140728 0.85064799 0.116835
		 0.82449001 0.883165 0.82449001 0.5 0.85037899 0.5 0.85233998 0.5 0.855488 0.5 0.84465998
		 0.5 0.84752798 0.5 0.88751203 0.5 0.87821299 0.27900299 0.92520499 0.312181 0.93036199
		 0.72099698 0.92520499 0.687819 0.93036199 0.351625 0.94767702 0.33363801 0.93751901
		 0.66636199 0.93751901 0.5 0.83423799 0.5 0.83847398 0.5 0.86828899 0.5 0.86129701
		 0.410925 0.98757398 0.58907503 0.98757398 0.54390699 0.98563701 0.56623203 0.98960203
		 0.433768 0.98960203 0.45609301 0.98563701 0.47770599 0.97615898 0.52229398 0.97615898;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1552 ".vt";
	setAttr ".vt[0:165]"  -7.0528143e-015 243.522995 19.8582325 -7.0522506e-015 239.25190735 22.62817192
		 0.008626 235.19622803 22.54108238 -7.0465912e-015 227.5269165 27.36230087 -7.040595e-015 223.68634033 24.58442307
		 -7.0165135e-015 217.41706848 23.19213486 -7.0025124e-015 214.82653809 22.93663979
		 -6.9770011e-015 212.066207886 24.00014305115 -0.084930003 203.9987793 23.40639114
		 0.011065 200.67590332 20.46382332 -0.028023999 200.1468811 16.24736595 0.00053399999 200.73098755 13.83429718
		 -6.2104003e-015 201.43539429 12.047963142 0.068379998 198.047988892 11.16825008 -0.052221999 193.65715027 11.85945988
		 0.00041000001 188.83279419 11.17351055 0.00053399999 184.38543701 14.17081261 0.0080469996 177.73068237 18.65187645
		 -9.8067933e-015 177.96072388 20.63438034 -0.001791 176.5320282 23.46435356 0.00053399999 168.41041565 28.080152512
		 0.000688 160.53019714 33.50169754 0.00053399999 135.50843811 37.70125961 0.00053399999 123.22721863 36.66993332
		 0.00053399999 111.17448425 35.95851517 -5.3220279e-015 96.95809937 34.17526245 0.00053399999 93.20700836 33.33608627
		 0.000271 92.43730164 31.37521172 0.028914999 86.19637299 30.5693531 -0.00072200003 68.77379608 23.29888535
		 7.0000001e-006 67.010749817 7.82989693 0.00053399999 72.29963684 -7.18826389 0.00053399999 83.14604187 -17.2637558
		 0.00054899999 96.25424194 -20.07393074 -0.000291 96.4954071 -22.4242115 -0.00015199999 100.81575775 -21.10900688
		 -6.7071842e-015 112.90452576 -23.59066582 -0.001049 123.87078857 -30.12063026 0.00053399999 132.71580505 -40.97790146
		 -0.012572 143.15240479 -52.11701584 0.00053399999 169.42245483 -61.003780365 0.00053399999 180.53274536 -57.70498276
		 0.098664001 196.87561035 -49.060935974 -9.3607665e-016 201.77360535 -45.1260643 -1.8417514e-015 204.9637146 -43.20824432
		 -3.8084693e-015 203.5647583 -38.80523682 -0.061818998 212.88146973 -31.45064354 0.00053399999 226.51025391 -23.28021812
		 -7.0318943e-015 233.4747467 -22.040014267 -0.001273 240.704422 -21.60572243 -0.022209 246.88075256 -18.40796852
		 -7.0480794e-015 252.94126892 -7.43348217 -0.00013099999 252.83140564 6.15613985 -7.0529371e-015 249.10243225 13.68523788
		 -2.14085102 227.48616028 27.0027770996 -1.41017795 223.72691345 23.77738571 -1.30615997 216.75283813 23.30258751
		 -1.28905904 214.74751282 22.82780075 -1.57589698 212.095748901 23.76333237 -3.98941588 204.1444397 23.50359154
		 -3.85618401 200.22290039 20.88140297 -2.92706394 200.19244385 15.88234806 -2.3017621 200.91990662 13.71341038
		 -6.59045076 200.31289673 7.091162682 -3.98633003 193.50697327 10.082475662 -2.8133409 189.011184692 11.30769062
		 -4.58790922 185.61930847 13.41243172 -6.97815084 182.13439941 14.53270054 -7.48077393 182.093338013 15.88153458
		 -8.31939888 180.53015137 19.21892929 -12.86526966 169.31388855 26.2097435 -15.85056305 161.20404053 30.29694748
		 -17.02469635 135.24693298 33.56383896 -13.52148914 123.32955933 33.76524353 -11.0035858154 111.99143219 33.81600571
		 -9.68825817 98.72187805 33.73121262 -9.39370155 95.3024292 33.21584702 -9.41097069 94.51306915 31.078792572
		 -9.22007847 87.44779205 30.12045097 -2.17397594 65.10053253 7.85891676 -5.85834312 70.2024231 -9.60900974
		 -8.37651539 82.99613953 -19.96331596 -9.65400696 96.54425049 -20.91687965 -10.30388165 97.039703369 -23.04110527
		 -9.80481434 100.80501556 -22.68343544 -10.90019035 112.39225006 -24.79377556 -12.61063671 123.079940796 -29.94813347
		 -15.01225853 131.92904663 -40.74378586 -16.012325287 143.67346191 -51.62862778 -15.12679386 170.56846619 -60.26134109
		 -13.53763962 181.74601746 -57.4229393 -14.38106823 198.67210388 -49.8323555 -16.69348145 208.55570984 -43.88850403
		 -15.51632595 210.64575195 -42.055625916 -10.56245899 209.36384583 -39.40550613 -8.62995052 214.39837646 -30.63479042
		 -8.20214367 226.40342712 -21.77929497 -7.23016977 233.52119446 -21.57803535 -6.95605278 240.51643372 -20.98518181
		 -6.54767799 246.32380676 -17.75701523 -5.97282505 251.84385681 -7.29372692 -6.88665724 251.57466125 5.25117874
		 -7.18732405 247.96586609 12.67793655 -3.85485101 242.68913269 19.69958115 -2.58983898 238.71063232 22.37967682
		 -2.36142802 234.78317261 22.43483925 -81.93052673 150.34710693 -24.8834095 -75.09161377 147.98609924 -8.9158659
		 -65.082824707 142.88905334 -1.22451329 -51.55138016 133.0058135986 -9.54108906 -50.90291977 130.27432251 -25.55566216
		 -52.0455513 128.66209412 -41.77096939 -65.92698669 136.43359375 -49.59865189 -78.20352173 147.024383545 -43.14191818
		 -85.92221069 137.99874878 -25.30225945 -81.088821411 136.58705139 -13.68705845 -71.27897644 131.8344574 -3.16488576
		 -60.01656723 123.61120605 -10.21941471 -57.62553024 120.1733551 -23.41732979 -60.086425781 119.72329712 -37.41329193
		 -71.97610474 126.50604248 -43.090049744 -83.41230774 134.46412659 -38.64323807 -88.15113831 130.70198059 -25.14243889
		 -83.84837341 129.7615509 -13.62934589 -73.96661377 124.97383118 -5.43888378 -64.38075256 118.17471313 -12.45868587
		 -59.086826324 113.41088867 -23.34224129 -64.91995239 115.29182434 -34.74142075 -74.63668823 119.85020447 -43.83256531
		 -85.34013367 127.2313385 -37.45747757 -92.84248352 124.72732544 -24.84791756 -88.41119385 124.34751892 -11.31532192
		 -76.415802 118.63162231 -7.56956959 -66.93614197 112.94012451 -12.84816074 -59.62789154 107.66386414 -23.15054512
		 -66.10302734 109.27319336 -35.52801132 -77.036560059 113.88496399 -43.13837051 -87.11160278 120.16140747 -35.93254852
		 -97.45462036 109.44589233 -20.34708595 -92.3523407 109.8046875 -6.32329082 -78.86924744 106.24305725 -1.73645425
		 -68.17889404 101.98252869 -8.44369984 -62.86838531 98.78927612 -19.52863503 -67.54469299 98.52270508 -31.93301582
		 -79.50312805 101.39610291 -38.056949615 -92.27534485 105.99868774 -33.55482101 -96.19404602 93.36227417 -14.22144794
		 -93.12812805 94.19888306 -4.35727024 -83.22358704 93.32669067 1.28926158 -72.42153931 90.92602539 -3.18330884
		 -69.51515198 88.95588684 -14.099061012 -72.97567749 88.061416626 -24.86753654 -83.78196716 89.057037354 -30.70524788
		 -93.6181488 91.57415771 -24.20411873 -95.47084045 78.85006714 -4.62201786 -90.74249268 80.19743347 2.52244925
		 -83.36077881 81.31921387 6.23671675 -74.33786011 81.76931763 3.79649615 -72.92875671 80.69464111 -5.26163578
		 -76.37561035 79.45289612 -12.43672466 -83.78929138 78.042602539 -18.31664848 -91.89854431 78.065460205 -12.88459682
		 -93.90579224 66.6300354 1.061551809 -89.31243896 68.63809204 7.1763916 -83.075973511 70.57574463 9.3556633
		 -74.24612427 72.7457428 6.77397156;
	setAttr ".vt[166:331]" -72.2121582 71.49732971 -1.45209813 -77.069351196 70.45912933 -6.75111294
		 -83.21379852 66.36965942 -7.56320858 -90.75151062 66.0073242188 -6.75283146 -36.91025925 67.96816254 7.2822957
		 -33.039836884 67.6572113 20.32541466 -20.94983864 65.086143494 25.23732376 -8.85994339 61.19488907 20.61862564
		 -4.57892084 60.65895462 7.95611954 -8.32858467 62.87894058 -4.73888493 -20.69321251 64.90055847 -11.42171383
		 -30.84063721 66.51704407 -4.44949245 -36.84314346 57.56624222 6.3246088 -33.78287888 57.24713516 17.80639839
		 -22.38061905 55.92476273 22.54624367 -11.43029213 54.62112045 17.36047554 -6.84963799 54.044254303 6.33698893
		 -9.75813293 54.34170151 -6.3733263 -22.3806076 55.80289841 -12.35072041 -31.91201973 56.95351028 -3.27024961
		 -35.75083923 52.5920372 3.92111754 -33.79459763 52.43680954 16.037437439 -21.73997688 51.23949814 21.083051682
		 -11.56841278 50.18851852 14.15281963 -7.47877598 49.74050522 3.93122935 -9.68712807 49.92005539 -8.18402004
		 -22.30354309 53.067089081 -14.49120998 -31.43099403 52.12270737 -5.81805515 -34.91268158 47.8413353 0.93619519
		 -33.44046783 47.81158066 12.92973614 -21.37589264 46.33493423 18.68174934 -11.34057522 46.72698212 11.073083878
		 -7.38161612 46.49833298 0.94091684 -9.50333214 46.56020737 -11.031552315 -21.6698494 48.59834671 -17.34738541
		 -32.43703842 47.68157578 -10.052369118 -34.26708221 40.49654388 -5.08173275 -30.28429031 40.32315826 4.36129665
		 -20.85491943 39.85723495 11.064343452 -11.49015617 39.34624863 4.29981232 -7.7123661 39.11732101 -5.076685905
		 -10.01445961 39.1991539 -15.93204403 -20.85472679 39.74267578 -21.37950706 -30.28058434 40.25683594 -14.5193224
		 -31.29368591 26.54376221 -11.50210667 -27.46278381 28.79491425 -1.5162766 -20.40139389 27.61074448 0.30902082
		 -12.90380096 26.57007599 -4.0078001022 -10.037807465 26.54376984 -11.50203419 -12.045267105 26.51472473 -19.85484505
		 -20.39801025 26.50276947 -23.22098351 -28.010074615 26.51735687 -19.11401939 -27.40901947 26.35850143 -2.042000055
		 -20.45343018 25.82577133 -0.2461874 -13.55622292 23.20108032 -5.40697575 -9.98844719 22.45721054 -11.0057191849
		 -11.34589672 23.50397491 -20.97450447 -20.34632683 23.21089554 -24.39992332 -28.39740181 22.13952637 -20.4582119
		 -31.083269119 23.5426445 -11.41670895 -27.61541748 23.41767502 -10.87814236 -26.043483734 25.63032532 -3.090420961
		 -20.74947357 25.40755844 -0.75722808 -14.0046520233 22.54854965 -6.50546932 -11.29951096 22.026367188 -11.093049049
		 -12.64040184 21.11332321 -20.25362968 -20.050224304 22.084720612 -23.5093174 -26.98166275 20.85561371 -17.60481071
		 -29.56838417 163.13401794 21.34468842 -24.39928055 173.17700195 19.029010773 -56.53466034 177.14231873 1.31834483
		 -46.30076218 186.66867065 -1.15649343 -67.69055176 185.19110107 -16.78793144 -54.8177948 194.9985199 -17.11289597
		 -59.9236145 184.58932495 -39.15592194 -50.25502777 194.43426514 -36.63767624 -44.36994553 178.31694031 -51.83667374
		 -37.62722778 189.61126709 -48.2025032 -24.47834015 210.97149658 -35.38434601 -27.88048172 208.91226196 -37.17500305
		 -32.43489838 205.9186554 -16.3894825 -35.027233124 204.44052124 -16.79125595 -26.1007843 198.44271851 -2.96232343
		 -28.82096672 196.086959839 -2.035999537 -11.93122768 185.7971344 11.69503975 -14.3017292 184.67240906 13.92288589
		 -30.70435143 208.71191406 -30.98690605 -27.70719528 209.030975342 -30.43733406 -0.001832 173.397995 24.66733551
		 -10.23359203 175.4543457 22.28859329 -19.2955761 179.89216614 15.99973297 -36.59454346 191.99598694 -3.13945699
		 -43.19722366 199.54597473 -17.66321564 -28.89155197 199.34405518 -45.48221588 -40.086395264 203.41377258 -33.77051926
		 -18.28019714 98.32301331 30.22377205 -19.21124268 99.81173706 30.97761345 -27.45411301 100.56125641 24.18426895
		 -29.80408096 101.8102951 25.69252586 -33.061508179 102.81752014 14.43695641 -34.49153519 103.32480621 14.44435024
		 -31.67242813 104.96472931 0.39840966 -33.25202179 105.45433044 -0.50705355 -28.23391151 104.64546967 -11.27540302
		 -28.82539177 106.11035156 -11.22926235 -19.55078888 101.5324173 -18.86934471 -19.48892593 102.059204102 -19.08710289
		 -18.40894318 101.87393188 30.96473122 -29.03494072 104.17304993 25.71176529 -34.063785553 107.51919556 13.95569801
		 -33.94800949 109.55924988 -1.23959184 -28.22305489 109.011184692 -11.61108303 -19.42900848 105.47714996 -19.65921593
		 -20.91942406 112.78198242 31.018125534 -24.6555481 122.80659485 26.28424835 -29.48843575 113.033340454 22.71009254
		 -35.20228577 114.036499023 11.26787853 -34.93108749 114.49737549 -1.81274629 -28.64774323 114.67431641 -12.75848103
		 -21.11600494 113.090698242 -22.10778999 -48.74860764 134.47451782 -23.5342617 -3.11886811 62.99766159 8.41204834
		 -7.88484001 64.84827423 22.4691124 -20.16719818 70.37419891 26.75373077 -32.51212311 75.89053345 22.36884499
		 -36.076038361 77.16725159 7.80070353 -30.037712097 74.63449097 -5.72238255 -19.99147034 69.76007843 -13.31331921
		 -6.70006084 66.61383057 -4.46861935 -20.41010857 74.88072205 -15.73011684 -29.84539223 83.23433685 -7.10350895
		 -34.65577316 87.57292938 8.20828342 -31.028858185 82.34466553 23.091388702 -19.47087288 75.84862518 28.15554619
		 -6.94088411 69.2250061 24.71302414 -18.66867447 90.60428619 29.35672379 -20.2371273 87.5059433 -18.92160988
		 -27.040275574 93.70703125 -9.14332104 -31.80011749 97.5326004 2.81791663 -27.12932014 94.0040206909 24.69351006
		 -33.038578033 97.48396301 14.484231 -28.53678894 87.98547363 24.37459946 -19.23256874 83.15009308 29.019044876
		 -8.73503399 78.8868866 28.75086021 -2.3610738e-015 78.082901001 28.1713829 -32.88550949 91.35984039 15.84510422
		 -78.5369873 161.26263428 -21.041269302 -67.93913269 155.12109375 -5.89625263 -70.41592407 157.92771912 -42.26047897
		 -52.44405746 147.72741699 -51.27100754 -40.52595139 168.69096375 11.55994797 -34.69723511 178.81944275 10.066771507
		 -21.74964905 190.80581665 6.90895987 -19.34779358 191.65592957 4.65365696 -27.90127754 185.6244812 8.04548645
		 -50.19750214 146.43441772 0.0046026022 -48.29368973 136.22108459 -11.26374722 -8.7358853e-015 148.63221741 37.6681366
		 -2.7598256e-015 155.8434906 -59.90386581 -18.13723946 148.88920593 32.98282623 -16.14925385 156.97802734 -58.81385422
		 -33.31413651 148.72296143 18.36913109 -74.63870239 172.22648621 -19.086168289 -63.54759216 165.29173279 -0.3789503
		 -66.72579956 171.11381531 -41.38577271 -49.068466187 164.11181641 -52.6358223;
	setAttr ".vt[332:497]" -43.39112473 156.20320129 7.8609519 -45.20261383 137.15538025 -35.87628937
		 -31.65665054 120.70626831 18.72169304 -36.2689209 120.34236145 8.59733105 -36.79978943 121.35748291 -3.014090776
		 -32.40821075 120.78979492 -16.86121178 -24.68858337 121.53569031 -27.68042946 -38.8171463 126.34063721 -23.58685875
		 -37.56410599 125.89056396 7.45210266 0.00053399999 189.53991699 -53.7152977 -12.68493938 190.48014832 -53.98571396
		 -22.61173248 191.25479126 -51.87723923 -25.99885368 184.21922302 -54.16087723 -29.87799263 173.5929718 -57.47365189
		 -32.4086647 159.91880798 -56.70978928 -32.71005249 145.8679657 -50.66350174 -31.34823608 131.21080017 -37.41445541
		 -34.04706192 126.54290009 15.55968571 -42.13535309 130.69985962 -1.60301614 -31.26327133 133.047607422 19.38186455
		 -11.37974644 185.57495117 9.88313007 -18.6306572 191.81100464 3.45009112 -24.66479874 198.17654419 -5.34232044
		 -29.41853714 204.79812622 -18.02371788 -25.64325333 210.73731995 -28.45937157 -22.65513992 211.40466309 -33.79601288
		 -10.064670563 189.093170166 8.22513103 -14.19076729 194.3653717 3.34461474 -20.64554024 201.82789612 -5.2299242
		 -21.9473629 207.43025208 -14.67073154 -19.013048172 213.65219116 -23.1815815 -16.91098022 216.33720398 -27.88728905
		 0.00661 215.8184967 23.14506912 -6.9905625e-015 213.46577454 23.58659172 -1.29756606 215.74862671 23.042528152
		 -1.49879396 213.46838379 23.41321754 -6.024590015 213.97718811 20.88107681 -3.90497994 214.41462708 22.084039688
		 -2.60601211 215.085250854 22.57202721 -4.96902609 215.12825012 21.51159859 -2.89410996 213.80578613 22.77984238
		 -4.55722189 212.65187073 22.22553635 -13.85250854 236.077606201 13.14717388 -12.53226757 238.42048645 14.99766827
		 -10.16239643 239.40248108 16.86692429 -6.6909852 238.054153442 19.44967842 -4.16416311 235.029922485 20.49144745
		 -5.96486807 233.0055541992 20.52345085 -11.48052025 231.77127075 18.84905434 -14.18788528 233.18644714 16.017166138
		 -13.59900665 236.0020599365 13.19814491 -12.32156086 238.2688446 14.91518497 -10.036231995 239.22062683 16.71907425
		 -6.74266005 237.7124176 18.97162819 -4.68677711 235.29881287 19.34353638 -6.51362514 233.72360229 19.53188515
		 -11.11608791 232.28018188 18.41566658 -13.65497398 233.54920959 16.0026473999 -15.22125244 236.45079041 12.23068047
		 -13.16483116 239.83146667 14.37005997 -10.03199482 241.013961792 16.69488907 -5.89710188 239.47351074 19.9056797
		 -3.46821809 234.8583374 21.48663902 -5.47089577 231.86535645 21.63592339 -11.59282207 230.083755493 18.80182838
		 -14.9731226 231.84512329 15.3157835 -4.92492294 240.69987488 20.14686584 -3.77375698 237.7096405 22.14746284
		 -4.0097298622 232.42997742 22.35677719 -3.18143201 227.74446106 26.39251518 -8.63038063 244.72203064 14.93209553
		 -13.45122147 242.77397156 11.49416161 -16.88164711 237.40400696 9.15727234 -17.075391769 229.30943298 13.59992313
		 -10.77539635 228.81652832 19.16819572 -7.0489082e-015 232.057067871 25.99665642 -2.25533509 231.68495178 25.33160973
		 -4.2510972 231.46066284 24.42039299 -5.89326286 231.32551575 22.61166763 -10.24174404 204.28323364 10.81092358
		 -12.28568459 206.50650024 12.36762619 -19.15076828 211.79933167 -1.62765431 -18.79447365 213.6749115 0.94579583
		 -19.97315407 216.05039978 -7.57231045 -20.31171227 217.030410767 -4.14057255 -18.28254128 220.83128357 -11.18249607
		 -18.69911003 221.6794281 -7.0607481 -15.24913597 230.12423706 -13.25421619 -16.57364845 230.46336365 -10.71415615
		 -14.9151144 239.29914856 -13.40802479 -16.14143753 239.21965027 -9.38493443 -12.29666901 210.017822266 13.81344032
		 -17.9203701 217.1505127 3.47586322 -19.35316086 220.10546875 -0.18374558 -17.70069313 231.49562073 -9.84995937
		 -17.16005516 235.24707031 -9.77838993 -16.76416206 238.94772339 -5.3628664 -16.66559601 237.32667542 0.8247965
		 -18.95012093 231.61347961 3.057901144 -19.21388435 226.61399841 1.92117381 -18.92339325 224.31982422 -4.72513294
		 -17.76284218 226.85502625 -7.97314548 -18.60956383 231.60273743 -9.7308836 -17.91735649 235.49736023 -9.63325596
		 -17.78269577 238.65867615 -4.99666882 -17.33297539 236.94151306 0.29649049 -19.037851334 231.62432861 2.12434936
		 -19.40940094 227.60331726 0.83431417 -19.4042778 226.5405426 -4.13605976 -18.22912407 227.4778595 -7.50817013
		 -16.33252144 234.98707581 -10.4652319 -15.1216011 234.5953064 -13.99136066 -17.39959908 226.16493225 -9.067715645
		 -16.33368492 225.2220459 -11.93022442 -19.71112442 231.78569031 -8.042380333 -19.63665581 235.39242554 -7.92626286
		 -19.15382576 236.69023132 -4.30906391 -18.52548409 235.44721985 -0.62426299 -18.90394211 228.80665588 -3.43727231
		 -18.23519325 231.75639343 -5.71792316 -17.73260307 233.21147156 -4.92474079 -17.51680374 234.28192139 -3.62577176
		 -18.656147 233.76679993 -0.39742011 -19.75873375 230.48612976 -1.65305829 -18.71472931 223.10398865 4.40543938
		 -17.7660656 220.19599915 8.21028328 -6.9383679e-015 208.94345093 24.26945496 -2.57541203 209.44613647 23.78774452
		 -17.14291954 237.46507263 4.71321106 -18.7216053 230.76353455 8.049525261 -13.84046364 244.52824402 6.59375858
		 -17.35252762 223.33158875 11.89812946 -14.62894058 225.82463074 15.97159195 -6.57796907 217.16108704 20.39711761
		 -5.38632584 200.89167786 15.014853477 -7.48656702 201.3639679 19.14990807 -7.57157421 205.094039917 21.29249763
		 -5.277637 210.50291443 22.1269722 -7.95909691 212.84805298 19.42402077 -8.099762917 202.83865356 12.67076492
		 -10.10656834 203.5508728 15.77855682 -9.90721226 207.13398743 17.93744087 -15.11491585 209.68821716 7.33658266
		 -14.71071815 208.62335205 4.47059727 -14.93766975 213.34120178 9.15043736 -14.32247543 216.57003784 11.88103676
		 -11.47855091 222.25328064 17.74482727 -13.47329044 219.46406555 14.84879112 -68.13154602 55.38172531 4.46807384
		 -68.019546509 57.45431137 7.49932194 -67.042495728 60.63022232 8.81317139 -65.6291275 63.68909836 7.84160995
		 -64.4716568 65.91355896 4.41170597 -64.018135071 62.98649979 0.14498214 -65.20927429 59.203022 -1.17524266
		 -66.88671875 56.46367264 1.14376903 -67.50566101 54.84227371 4.71461678 -67.28889465 56.50024033 7.75611258
		 -65.88565063 59.38765335 9.31014061 -63.76764297 62.1373024 7.93761969 -62.3482399 62.66722488 4.6297884
		 -62.61435699 61.075771332 1.27552009 -64.14689636 58.034008026 -0.16347618 -66.28425598 55.28699875 1.28578925
		 -66.87083435 53.65515518 5.014174461 -66.49755859 54.78752518 7.89377165;
	setAttr ".vt[498:663]" -64.51080322 56.81464005 9.40914154 -61.71620178 58.84924698 8.72036648
		 -60.50120926 58.86995316 5.43808842 -60.84069824 57.72128677 2.40890479 -62.91651917 55.573452 0.72261125
		 -65.68600464 53.69086838 1.86693549 -66.46221924 51.66356277 5.51788807 -65.83612823 52.33153915 8.19147015
		 -63.55632019 53.17283249 9.5478363 -60.77323151 53.79256821 9.061021805 -59.61181259 54.47105789 6.34215355
		 -59.99119949 53.0068321228 3.86622596 -62.21921158 52.13186264 2.26262355 -65.18630981 51.46699905 2.76215529
		 -65.71897888 48.76488113 5.94141769 -65.19274139 49.31276321 8.27948093 -63.18570328 49.77334213 9.34154224
		 -60.93624115 50.3887291 9.14919186 -59.86618805 49.50361252 4.35219765 -61.96084595 48.96196365 3.34466243
		 -64.42941284 48.61869431 3.69261336 -28.3930645 6.048086166 28.73997879 -28.29598427 4.86852837 28.39143753
		 -28.61639404 3.86835098 29.026216507 -28.95605659 0.73036957 29.16005325 -16.21770287 0.19057561 -29.50272179
		 -16.0097198486 3.68044662 -29.68417931 -16.25272179 4.48950958 -29.35424614 -16.25539207 5.12526703 -29.9287014
		 -27.72602272 5.62887955 -11.693326 -26.72942352 4.55026627 -11.3413763 -26.98649979 3.53939056 -11.44289875
		 -25.7122879 0.16576673 -10.73082256 -20.061616898 0.25438884 -8.81647968 -14.17581081 0.31555465 -5.81783772
		 -12.86937141 3.97031975 -5.10420895 -13.23079967 5.093122482 -5.15330982 -12.24913597 6.1357193 -4.62007999
		 -26.21543121 5.80018616 -21.75655174 -25.37315559 4.65866089 -21.15624809 -25.47758102 3.76507568 -21.41161919
		 -24.2298336 -0.052619912 -22.43499947 -17.78884888 0.062693618 -20.0017147064 -10.6101656 0.59909248 -18.9844799
		 -9.7261343 3.91035652 -18.88019371 -10.12307262 5.1110363 -18.87696648 -9.54163837 5.72922134 -18.90727043
		 -29.22698021 15.063489914 -10.13115215 -27.021686554 13.15498924 -19.75114632 -17.44573784 13.29689026 -29.79616737
		 -9.24335003 13.80417061 -18.61615562 -12.070446968 14.47789383 -7.80874729 -32.56726456 6.2864151 26.1512661
		 -32.57247543 4.71507263 26.17215538 -33.25957489 3.59665489 26.7013588 -33.40462112 0.34403136 26.15387344
		 -22.35091019 5.81048584 29.059846878 -22.60999107 4.79037857 29.040969849 -22.62520409 3.65377617 29.68176651
		 -21.9942379 0.53183937 28.73357391 -22.45729065 19.58883286 6.28053188 -31.10278511 17.4243927 0.84471971
		 -13.61343288 15.9377861 3.46386218 -32.12377167 5.56954193 -3.75842786 -11.7796011 5.70198441 6.47251081
		 -17.66617584 5.54115486 24.43512535 -37.036022186 5.3774929 19.86091042 -31.22378922 4.57200623 -3.39827466
		 -36.64537811 4.28552628 19.58380508 -17.67448616 4.79441643 24.3525753 -12.23415184 5.077348709 6.12031651
		 -17.34815788 3.94319725 24.59041977 -11.93529892 4.19120216 6.32235384 -31.2086792 3.77628899 -3.55288434
		 -37.49456787 3.25746346 19.3818512 -18.99389648 18.93179321 -25.78269005 -10.84073067 13.29702759 -26.25176811
		 -10.72361946 5.42482758 -26.21908379 -11.25201702 4.70139313 -25.8705883 -11.2022047 3.90721893 -25.83613396
		 -23.84113312 12.79078293 -26.66035271 -22.31329727 5.65957832 -28.57107353 -21.92771339 4.43562508 -28.27703285
		 -21.96115494 3.77407455 -28.52528191 -13.47663593 18.37950134 -24.7886982 -23.54495811 17.66804504 -23.5734539
		 -24.81831551 15.10860252 13.73430061 -33.27767944 13.18223381 10.49071121 -16.048814774 13.54636383 14.20515537
		 -13.14689255 5.73208618 13.6349659 -37.37804413 5.14514732 6.73328495 -36.71411514 3.97199821 7.10269165
		 -13.55850315 5.030881882 13.53355122 -13.2425108 4.069829941 13.69724178 -37.029216766 3.051862717 6.9083848
		 -42.17348099 142.92593384 7.086695671 -37.21721268 0.51323032 19.28205299 -36.17068863 0.32546809 6.12031269
		 -30.47800064 0.15746404 -3.013482332 -21.87603188 0.3802214 -28.26347542 -11.68763256 0.30369094 -25.79113197
		 -12.6597023 0.66080284 6.40446186 -14.30856228 0.49592975 13.13009739 -18.14522171 0.40045646 24.16413689
		 -15.93016911 4.93113708 19.98100853 -15.72046089 4.20122147 20.33449364 -26.93135834 11.58264923 21.77183723
		 -33.77139664 9.95679474 18.82990837 -19.88409805 10.54663086 22.26356506 -15.94961643 5.38518333 20.23509979
		 -38.51941681 5.049560547 13.69505215 -37.92844772 4.24434662 13.98613548 -38.086921692 3.45944214 13.57161427
		 -37.34030533 0.22055055 13.49284744 -16.55648613 0.34022811 20.03540802 -27.72553253 0.28980735 22.37670517
		 -26.58385277 0.29249194 16.88319397 -24.94260979 0.21118166 10.11202717 -22.35393333 0.26630595 1.44891906
		 -70.075180054 52.68530655 8.20521927 -74.80463409 53.96587753 12.29808235 -81.64285278 53.29576492 12.24384117
		 -87.86789703 51.40313339 9.18946648 -92.18927765 49.40421677 1.37636352 -87.23222351 48.49090958 -0.93446368
		 -80.56419373 50.73366165 0.39725477 -73.94777679 50.80270004 3.093295813 -69.68703461 49.91691208 7.8573947
		 -74.40825653 49.7571907 11.74789333 -80.58239746 48.55817795 11.21863461 -86.29124451 46.69107819 8.40522861
		 -90.079589844 44.90338135 1.96516776 -84.92565918 45.32585144 -0.20419045 -79.74745941 46.79314423 2.0016477108
		 -74.037635803 48.047065735 4.31258488 -68.66098022 46.22159958 8.52468872 -73.60347748 46.45802307 11.1188488
		 -79.64309692 44.95675278 10.46645546 -84.92960358 43.32431793 7.63226891 -87.49031067 40.62994766 2.62441134
		 -82.82785034 41.977211 0.64577466 -78.37766266 43.58639145 3.1738832 -73.31039429 44.86719131 5.23193741
		 -68.50286865 41.95265579 8.73664093 -73.54144287 42.92462158 10.22272682 -79.03352356 42.053226471 9.75669003
		 -83.90712738 40.69716263 6.95160389 -84.52649689 37.76301193 3.080993414 -80.65097046 38.99637985 1.13049865
		 -76.59442139 40.35991287 3.17618251 -71.84151459 41.58437729 4.32794094 -70.90232849 37.8681488 7.5759778
		 -73.5894165 39.85554123 9.25497246 -77.14549255 38.28374481 8.53065491 -80.91159058 37.81474686 6.93540096
		 -80.40621185 35.88870621 4.25998592 -78.64458466 36.89653397 2.10212684 -75.029579163 37.18795776 2.92900825
		 -71.58193207 38.49157333 3.91071677 -69.80928802 55.14201736 4.65516758 -75.6179657 66.45571136 10.34319782
		 -82.82210541 65.95775604 10.49759102 -88.45121002 63.71483994 8.76042366 -94.13018036 60.83876419 1.93403316
		 -90.76273346 59.79185867 -5.079306602 -80.97925568 60.5488472 -5.15130711;
	setAttr ".vt[664:829]" -68.22628784 64.76529694 8.61458397 -67.080657959 67.055221558 6.9234519
		 -67.4978714 68.88766479 1.49522185 -71.062469482 65.67334747 9.32756805 -69.41545868 69.39987946 6.63983154
		 -69.40592194 61.81386948 9.6961422 -69.34915161 57.082515717 7.8896718 -69.10254669 56.31661606 3.46789718
		 -71.77780914 57.031879425 -1.53399014 -72.80295563 56.76501846 0.54834253 -76.37732697 57.26418686 -2.39195561
		 -74.39074707 57.92874527 -3.29344869 -71.32408142 59.35535049 -3.88194585 -74.90625 60.47005844 -4.99032116
		 -67.95722961 64.71570587 -2.82368398 -72.80083466 65.78029633 -4.41987896 -77.00010681152 65.63658142 -5.765872
		 -82.3846817 59.27090073 12.17394161 -82.29376984 55.013813019 -2.29772305 -94.022186279 53.69440842 0.86449033
		 -74.86432648 60.3883934 12.20834732 -89.29772949 57.11542892 9.099876404 -89.73825836 53.59738541 -3.1875813
		 -77.62648773 55.50451279 0.026643565 -73.64845276 55.38954544 2.15775943 -70.92881775 57.007106781 10.849967
		 -69.56341553 54.35091019 5.52749443 -73.48252106 53.44613266 2.5365932 -69.87733459 57.34462357 9.27559948
		 -71.24196625 61.68254471 10.71418762 -77.11766052 53.15057755 0.71522313 -3.95052791 202.12573242 11.55726147
		 -5.75344896 203.019577026 8.98400593 -8.5413599 204.5756073 6.27760363 -14.025927544 208.11203003 1.98918223
		 -18.11192513 211.1293335 -2.65481496 -19.061050415 215.77145386 -9.09297657 -17.41362381 220.49403381 -12.79864407
		 -14.11728287 223.84321594 -15.80166912 -12.82505417 228.75598145 -16.79811478 -6.63588095 191.94404602 10.15669918
		 -9.69984722 200.67381287 5.7869854 -8.2392664 191.277771 7.96418762 -12.034215927 199.36714172 3.58477759
		 -18.68889046 206.49195862 -5.52592754 -19.59942245 211.41989136 -11.24030399 -17.47727013 215.84057617 -19.21299171
		 2e-006 219.54161072 -26.25709343 -7.70272493 220.45846558 -26.6270504 -13.46757603 219.300354 -24.84561729
		 -10.40698814 216.12922668 17.16115189 -8.63796234 219.39266968 19.56324196 3.0000001e-006 206.83805847 24.21367264
		 -3.39619899 207.18057251 23.71682549 -6.4026022 208.24613953 21.75704956 -8.75558758 210.19361877 18.93639374
		 -11.35490322 213.22619629 15.39983845 -3.29776907 220.23985291 22.70428658 0.00053399999 220.35870361 23.10931015
		 -2.54445791 225.040924072 23.55537415 -5.25401688 222.16578674 21.93413925 -5.72715616 224.42559814 21.6998806
		 -3.010899067 226.4389801 22.98947716 -3.094621897 227.75984192 24.95404625 -4.71989822 230.44276428 24.5943203
		 -6.025405884 229.55297852 23.3092804 -7.534832 227.39727783 20.42650032 -5.25571489 227.54232788 21.9536171
		 -4.42937279 227.025772095 22.0045108795 -3.19008493 227.16244507 22.71605301 -2.85589099 228.018981934 23.87682152
		 -4.5272522 229.67991638 24.33279037 -5.288908 229.078552246 23.47802162 -4.14180613 228.35766602 22.29980278
		 -3.909374 227.81643677 22.23108101 -3.38509488 227.89625549 22.48480606 -3.14421296 228.73300171 22.54444122
		 -3.70058799 229.79663086 22.87018013 -4.32930279 229.28807068 22.64896965 -12.87394142 222.6496582 -19.79471397
		 -17.26161194 217.68217468 -16.6180439 -19.07466507 213.088897705 -9.50498104 -17.57995224 209.69000244 -4.72907734
		 -12.71088123 234.040466309 -18.21035576 -12.47982311 239.57041931 -17.76752281 -0.029256999 250.87382507 -13.37531376
		 -6.043654919 249.88587952 -12.8233099 -11.72025108 244.5125885 -15.36909008 -14.1346302 243.54377747 -11.9036684
		 -15.28418159 243.3490448 -8.12906933 -15.39296818 243.01423645 -3.95618558 -14.71580887 242.68403625 0.86716634
		 -12.2924881 248.80329895 2.47700477 -10.67275238 249.423172 -7.030919075 -10.73215866 247.81385803 -11.56336689
		 -12.94396019 246.14329529 -10.25863552 -13.43332672 246.61122131 -7.20296192 -14.011870384 246.22801208 0.018164447
		 0.00053399999 253.52983093 -1.051198244 -6.31669521 252.5735321 -1.37306619 -11.32665443 250.0004119873 -2.29560971
		 -13.87165546 246.66670227 -3.35393071 -62.040393829 45.20868301 6.95144272 -59.7784729 52.069927216 8.093670845
		 -59.36048126 52.07768631 6.71076584 -59.38111115 51.57509232 5.39400768 -59.22312546 49.84865952 5.64398384
		 -59.17571259 48.48194885 5.99459171 -59.30485916 48.32940292 7.14460278 -59.79331207 48.72564316 8.11597729
		 -59.78494263 50.30947495 8.18014908 -59.25401306 50.14040756 6.94745588 -60.58333588 47.77156448 8.8032093
		 -59.55801773 46.60153961 7.31451368 -59.50163269 47.54529953 5.2551384 -61.60889435 46.66240311 4.58255386
		 -63.62273026 46.88595581 4.6381731 -64.3453064 46.53513336 6.43251276 -64.44444275 47.33231735 8.24918461
		 -62.7562027 47.014427185 9.20102882 -74.95547485 35.012981415 6.11024094 -11.89287758 235.83575439 15.90930843
		 -11.36662102 237.045333862 15.94523335 -9.90454483 237.19844055 17.097503662 -7.99180079 236.7645874 18.040641785
		 -7.78266716 235.5604248 18.41505241 -8.18093872 234.41969299 18.44744682 -10.26185894 234.16856384 17.60437965
		 -11.7694521 234.37445068 16.30695534 -10.12648106 235.75437927 17.53257751 -85.34300232 143.09387207 -24.50883675
		 -80.0047912598 140.42378235 -11.1189661 -69.66553497 135.1854248 -1.27044129 -57.35054016 124.60005188 -9.72735882
		 -53.7754364 124.98835754 -25.40247536 -54.54268265 126.25679016 -42.35513306 -70.084358215 133.62026978 -47.34803009
		 -82.064094543 139.87324524 -41.16840363 -85.12837982 141.87423706 -24.86939049 -79.76246643 139.42918396 -11.98801136
		 -70.36300659 133.85952759 -2.11535668 -57.86857986 124.7651825 -9.82509518 -55.32315063 124.76901245 -24.92949104
		 -55.62858582 126.22125244 -41.40200806 -69.84020996 132.98538208 -45.98820877 -81.73683929 138.95532227 -39.88552094
		 2.18043399 227.43133545 26.98311996 1.42310596 223.70932007 23.79785919 1.30702996 216.75325012 23.31081581
		 1.27472401 214.78005981 22.85287857 1.61190104 212.24299622 23.7276535 3.96656489 204.13754272 23.51165962
		 3.86250591 200.22576904 20.8837204 2.87440896 200.17562866 15.92210674 2.49041796 200.9815979 13.61149025
		 6.59382486 200.32821655 7.081821918 3.99061704 193.50866699 10.090384483 2.81001401 189.016799927 11.31298542
		 4.581285 185.61740112 13.40044212 6.97600698 182.13423157 14.54964542 7.47387314 182.10313416 15.88175106
		 8.31940842 180.53018188 19.2189579 12.7595768 169.27380371 26.26582909 15.84441566 161.18885803 30.30723763
		 16.92417908 135.22171021 33.61834335 13.54837704 123.33192444 33.75332642;
	setAttr ".vt[830:995]" 11.031585693 111.9933548 33.80692673 9.68770981 98.72251892 33.72906876
		 9.34593296 95.22904205 33.10316086 9.42962265 94.44960785 31.13825226 9.28642845 87.43271637 30.11137772
		 2.12455106 65.20864868 7.84898758 5.87654591 70.24088287 -9.7424345 8.35654926 83.003288269 -19.96145058
		 9.67558479 96.37682343 -21.11108971 10.28869724 97.051780701 -23.0059185028 9.80961895 100.76480103 -22.67651558
		 10.90024757 112.3918457 -24.79558372 12.61332035 123.073348999 -29.94308662 15.074255943 131.94711304 -40.76969528
		 16.016799927 143.7026062 -51.65208054 15.12679958 170.56848145 -60.2613945 13.53765011 181.74606323 -57.42306137
		 14.38102341 198.67175293 -49.8317337 16.69303894 208.55516052 -43.88702774 15.53355598 210.633255 -42.022144318
		 10.54886818 209.37954712 -39.41520309 8.62997913 214.3974762 -30.63365364 8.19240665 226.39901733 -21.78766441
		 7.22886276 233.52111816 -21.57362938 6.9563961 240.51673889 -20.98631096 6.53918982 246.30509949 -17.78061295
		 5.94235516 251.83778381 -7.36423397 6.897645 251.57136536 5.25067806 7.1485281 247.9365387 12.752985
		 3.87068892 242.72969055 19.6708374 2.58853602 238.70932007 22.37658882 2.3607769 234.78317261 22.43370056
		 81.936409 150.34101868 -24.87209129 75.089332581 147.984375 -8.91863918 65.081253052 142.8866272 -1.23113465
		 51.54300308 133.0066680908 -9.56882954 50.93010712 130.18746948 -25.56343651 52.04914093 128.65325928 -41.77739334
		 65.91529846 136.4425354 -49.57487106 78.19470978 146.99430847 -43.15896606 85.93314362 138.012786865 -25.33911705
		 81.099838257 136.59533691 -13.67362881 71.24456787 131.79368591 -3.15864682 60.0033721924 123.58337402 -10.2919035
		 57.62706375 120.17404175 -23.41724205 60.095901489 119.70053101 -37.38026047 71.97613525 126.50592041 -43.088954926
		 83.39221954 134.45954895 -38.64652252 88.13360596 130.75862122 -25.183424 83.87332916 129.73214722 -13.61913395
		 73.92396545 125.029022217 -5.40783978 64.39320374 118.16740417 -12.45765972 59.088817596 113.41079712 -23.34229469
		 64.90725708 115.27090454 -34.74502945 74.63624573 119.85011292 -43.83405304 85.33286285 127.21488953 -37.47173309
		 92.85610199 124.6869812 -24.88763618 88.41594696 124.34509277 -11.3249445 76.40153503 118.62597656 -7.56326008
		 66.93526459 112.93986511 -12.84742832 59.62651062 107.68173981 -23.19140816 66.10397339 109.27333832 -35.52600861
		 77.050163269 113.90150452 -43.14657211 87.12905121 120.12089539 -36.0098495483 97.44860077 109.41326904 -20.36395836
		 92.36869812 109.7963028 -6.35379887 78.79833984 106.24310303 -1.75606084 68.17893982 101.98987579 -8.46001911
		 62.87012482 98.78999329 -19.52900505 67.57352448 98.54592896 -31.97920799 79.51367188 101.39133453 -38.068405151
		 92.27375031 105.99260712 -33.55964661 96.20108795 93.31700897 -14.23254108 93.15213776 94.1989975 -4.40760326
		 83.22272491 93.32587433 1.28581023 72.47023773 90.91274261 -3.12927938 69.49440002 88.98715973 -14.06824398
		 72.91551971 88.08921814 -24.82032585 83.72626495 89.017616272 -30.6853466 93.61605072 91.57559204 -24.20240974
		 95.47315216 78.84668732 -4.63145733 90.74240875 80.1973877 2.5223434 83.400383 81.30802155 6.23855972
		 74.37310028 81.87033844 3.70379996 72.95330048 80.63857269 -5.28288174 76.35255432 79.43796539 -12.44837475
		 83.70848083 78.053085327 -18.33991432 91.89768982 78.065887451 -12.88386631 93.85991669 66.69358063 1.2354877
		 89.31098175 68.63759613 7.17418194 83.23207855 70.55763245 9.34021187 74.24622345 72.74560547 6.77378559
		 72.212883 71.49693298 -1.45161462 77.081069946 70.52698517 -6.80755329 83.25095367 66.32354736 -7.5247736
		 90.72197723 66.0040893555 -6.76077366 36.90647888 67.9678421 7.28327465 33.05896759 67.65735626 20.30196381
		 20.94981003 65.086250305 25.23689842 8.8601799 61.19524002 20.61828423 4.59601212 60.63000107 7.94941187
		 8.31274319 62.97478867 -4.73815632 20.68719292 64.89790344 -11.42198277 30.71640968 66.50908661 -4.62423611
		 36.84050751 57.56638718 6.32528782 33.78125763 57.24739456 17.80505943 22.38052559 55.92596817 22.54178238
		 11.43429279 54.6241951 17.35693932 6.79475021 54.13658524 6.20916557 9.73996544 54.32463455 -6.3561182
		 22.29568672 55.80430984 -12.39092541 31.95458031 56.9176445 -3.222646 35.74545288 52.59248734 3.92257476
		 33.7887001 52.43887711 16.033416748 21.74046516 51.24078751 21.079502106 11.60930729 50.16757584 14.18083382
		 7.48508883 49.72811508 3.93900275 9.68555069 49.92068863 -8.184762 22.45153999 53.10162735 -14.41949368
		 31.43355751 52.12435532 -5.81964588 34.91210556 47.8484993 0.96287137 33.42777634 47.8157196 12.94226646
		 21.35509491 46.37089539 18.69812965 11.35588455 46.71675873 11.079514503 7.38747692 46.46583939 0.97227842
		 9.65942764 46.69253922 -11.22532368 21.66887665 48.59560013 -17.3419342 32.43141937 47.67940521 -10.049334526
		 34.26158524 40.49727249 -5.081109047 30.25092316 40.30525208 4.41648674 20.85482216 39.85644531 11.064926147
		 11.43213177 39.38811111 4.27176189 7.70492411 39.2027359 -5.041481972 10.022115707 39.19886398 -15.92706776
		 20.8201046 39.74200058 -21.38532448 30.27292252 40.25826263 -14.51585674 31.3066597 26.50543213 -11.63218212
		 27.46046638 28.79571152 -1.51902986 20.40246582 27.61183167 0.30401403 12.90604877 26.57145309 -4.010073662
		 10.043029785 26.58196259 -11.50523663 12.051571846 26.50494766 -19.87520027 20.38082695 26.5358429 -23.21417427
		 28.010799408 26.51744843 -19.11473656 27.38798141 26.3976326 -2.064319849 20.45353699 25.83514023 -0.26452273
		 13.55445004 23.23038101 -5.42126751 10.020661354 22.51894379 -11.018303871 11.39531231 23.53587723 -20.94632149
		 20.34443283 23.21788025 -24.38895607 28.37902451 22.17200851 -20.44631386 31.082639694 23.58359146 -11.41839314
		 27.73976135 23.3306694 -10.82561207 26.15420341 25.6702652 -3.065448046 20.71949387 25.3397522 -0.6366083
		 13.922122 22.58876801 -6.48105145 11.14382267 21.85206223 -10.99441433 12.46873569 21.11938858 -20.26621437
		 20.086614609 22.095500946 -23.56350517 26.99352074 20.8559494 -17.6075058 29.60806465 163.030441284 21.3518486
		 24.30355835 173.28201294 19.0037708282 56.69716263 177.17701721 1.17351317 46.29985809 186.66624451 -1.1583693
		 67.68278503 185.14189148 -16.70051003 54.81583023 194.99264526 -17.11558533;
	setAttr ".vt[996:1161]" 59.92317963 184.58891296 -39.15541077 50.25074768 194.42271423 -36.65566635
		 44.38111496 178.24728394 -51.86236191 37.62301254 189.6050415 -48.20793915 24.44927216 210.94602966 -35.34018326
		 27.89339828 208.92707825 -37.19094849 32.43601608 205.92611694 -16.385952 35.028812408 204.44395447 -16.77640343
		 26.099903107 198.45341492 -2.96017766 28.88325691 196.060501099 -2.011418581 11.91749954 185.81962585 11.6945343
		 14.31349659 184.6149292 13.9300108 31.43206978 210.2424469 -31.47405815 28.019174576 209.90959167 -30.47148705
		 10.23335648 175.45368958 22.28764915 19.30310059 179.90638733 15.98723888 36.59597397 191.99853516 -3.13755918
		 43.13465881 199.63604736 -17.74130249 28.98176956 199.4487915 -45.37375641 40.080936432 203.38696289 -33.82078934
		 18.2976799 98.36499023 30.23967171 19.20978355 99.811409 30.97110939 27.44916916 100.56652069 24.17968941
		 29.82154465 101.8609314 25.71601105 33.082084656 102.80604553 14.46370888 34.44582748 103.3527832 14.43674755
		 31.69435692 104.9671402 0.38760072 33.25274277 105.45075226 -0.50815028 28.65774345 104.6446991 -11.52404308
		 29.012899399 106.11888885 -11.34435177 19.53891563 101.54580688 -18.83223152 19.48459053 102.056747437 -19.056470871
		 18.39463997 101.87519073 30.97173119 29.053533554 104.18412781 25.73285103 34.044734955 107.46997833 13.95021534
		 33.95093536 109.57298279 -1.24130559 28.21661377 109.01159668 -11.60726643 19.43315506 105.47555542 -19.66544533
		 20.92117882 112.78311157 31.021474838 24.65423203 122.80654907 26.28310013 29.49291992 113.034790039 22.71535301
		 35.20307541 114.036499023 11.26806355 34.93918991 114.47393799 -1.77763677 28.62229538 114.65055847 -12.79126644
		 21.13943863 113.26086426 -22.18900871 48.7513237 134.40716553 -23.53603935 3.11937594 62.99790573 8.41206741
		 7.97233105 64.75892639 22.4932785 20.0170784 70.32769012 26.76084709 32.45067215 75.90174866 22.43140602
		 36.081485748 77.1961441 7.88701773 30.032560349 74.63382721 -5.71783161 20.07749939 69.86746979 -13.3258276
		 6.70026779 66.61658478 -4.46806622 20.41013336 74.88069916 -15.73015881 29.84522629 83.23432159 -7.1034174
		 34.630867 87.57201385 8.083836555 30.96763039 82.31519318 23.15362358 19.44542313 75.88419342 28.16551208
		 6.96143293 69.17102814 24.67778587 18.58777618 90.55735016 29.36938477 20.31560707 87.58146667 -18.86930656
		 27.071510315 93.71199799 -9.063065529 31.80016327 97.53260803 2.8178947 27.24391365 94.11819458 24.55334091
		 33.061233521 97.46825409 14.40672588 28.5647068 87.99901581 24.34726715 19.12086678 83.13139343 29.036590576
		 8.73545933 78.88781738 28.74624634 32.88600922 91.3599472 15.84531307 78.53670502 161.2776947 -21.064203262
		 67.89060211 155.21865845 -5.83726597 70.33685303 158.034866333 -42.25454712 52.50798416 147.80567932 -51.29162979
		 40.5904541 168.73898315 11.50573444 34.9384613 178.73907471 10.015061378 21.70951843 190.7624054 6.92171288
		 19.3773365 191.68478394 4.63734436 28.094228745 185.4670105 8.076084137 50.19828796 146.43486023 0.003485492
		 48.29779816 136.20054626 -11.25744724 18.13761711 148.88926697 32.98348618 16.14578056 156.92555237 -58.79812241
		 33.2664566 148.63679504 18.43902206 74.63702393 172.21932983 -19.073503494 63.54615784 165.2915802 -0.38046855
		 66.73947144 171.077957153 -41.37796783 48.97710037 164.080581665 -52.64464188 43.47890472 156.21817017 7.80225372
		 45.1975975 137.13316345 -35.88605118 31.69546127 120.73362732 18.66812897 36.26810074 120.34246826 8.59709263
		 36.79985046 121.35745239 -3.014106035 32.40732574 120.79082489 -16.86127663 24.69711113 121.56356812 -27.70527458
		 38.78052902 126.36682129 -23.68322945 37.58710098 125.79663086 7.30855179 12.68492603 190.48005676 -53.98550034
		 22.60988235 191.25498962 -51.87996292 25.92639923 184.087600708 -54.23968887 29.93137741 173.67355347 -57.44524002
		 32.32123947 160.015548706 -56.75546646 32.70870972 145.87153625 -50.65825272 31.38624573 131.26464844 -37.46343994
		 34.046783447 126.54290771 15.55947781 42.14383316 130.6870575 -1.6803019 31.24933815 133.14793396 19.41316605
		 11.37993145 185.57861328 9.88790894 18.63022041 191.80966187 3.44903445 24.6920166 198.16993713 -5.35604572
		 29.41730309 204.79548645 -18.025390625 25.65192223 210.75 -28.52569008 22.55608749 211.40524292 -33.8965683
		 10.073874474 189.10597229 8.22801018 14.20740891 194.28916931 3.37471175 20.64357185 201.82702637 -5.23301983
		 21.9428196 207.41960144 -14.67379475 19.019922256 213.65681458 -23.17666435 16.91495705 216.34947205 -27.89130974
		 1.244488 215.68983459 23.030538559 1.48599303 213.4928894 23.39584923 6.066027164 213.99815369 20.85157585
		 3.90099907 214.40345764 22.10740852 2.60706496 215.084060669 22.58149719 4.96272802 215.10655212 21.52363014
		 2.85738897 213.83033752 22.79139137 4.5522089 212.6509552 22.21824455 13.86776638 236.0574646 13.13541317
		 12.48176956 238.43418884 14.98736572 10.13800812 239.41717529 16.8464241 6.65605021 238.069366455 19.43837547
		 4.14974785 235.040435791 20.48495483 5.957726 232.99017334 20.55466843 11.47548676 231.76766968 18.82867622
		 14.17331696 233.16778564 16.004322052 13.61645508 236.002822876 13.2403307 12.31400108 238.23234558 14.87154293
		 10.024394989 239.23403931 16.71103287 6.73954201 237.71565247 18.97003937 4.68432713 235.2983551 19.34310532
		 6.51292086 233.72940063 19.55822182 11.11743355 232.28967285 18.42066765 13.65200329 233.55293274 16.0051612854
		 15.22276306 236.44839478 12.23377132 13.1581068 239.83595276 14.36333847 10.029618263 241.012161255 16.69201469
		 5.90036297 239.47505188 19.91105843 3.47250199 234.86553955 21.48420715 5.47547007 231.87207031 21.64077759
		 11.59872913 230.1061554 18.79358482 14.95035934 231.86022949 15.34951782 4.92448616 240.69960022 20.14619255
		 3.86426091 237.7303009 22.071905136 3.98957205 232.46774292 22.33633423 3.2396121 227.78031921 26.29536057
		 8.63157368 244.72331238 14.93353653 13.44275188 242.76829529 11.48951244 16.86766434 237.35716248 9.14712334
		 17.073795319 229.30895996 13.59875202 10.77326107 228.8168335 19.16380501 2.26476908 231.68435669 25.3272419
		 4.26842594 231.43191528 24.43758774 5.88411999 231.31838989 22.61145592 10.24929428 204.31190491 10.83760166
		 12.28644085 206.50628662 12.36784935 19.1447773 211.80899048 -1.62572885;
	setAttr ".vt[1162:1327]" 18.81690025 213.67747498 0.925062 19.95437241 216.054336548 -7.56195354
		 20.31507111 217.03112793 -4.14042187 18.27736473 220.83099365 -11.17943096 18.70719147 221.68161011 -7.061284065
		 15.27519894 230.1292572 -13.16805553 16.58193779 230.49887085 -10.69700718 14.91573906 239.29927063 -13.40824604
		 16.14237022 239.21980286 -9.38517475 12.2937088 210.01802063 13.81190968 17.92951775 217.15351868 3.47456241
		 19.36353302 220.13973999 -0.22497101 17.66744804 231.45346069 -9.84369183 17.16129875 235.24887085 -9.78343868
		 16.76830292 238.95214844 -5.36448002 16.68374443 237.33482361 0.81601411 18.95147705 231.61378479 3.057979345
		 19.20755577 226.61433411 1.92096877 18.92332268 224.31982422 -4.72511387 17.7735424 226.85545349 -7.97723103
		 18.61060905 231.60176086 -9.7356596 17.9216423 235.50158691 -9.62222004 17.84200096 238.6489563 -4.96653461
		 17.24799728 237.027145386 0.26915437 19.036052704 231.62466431 2.12777019 19.4177494 227.60165405 0.83619195
		 19.40263557 226.51516724 -4.066245079 18.31149864 227.44065857 -7.48391056 16.36348724 235.026870728 -10.47333813
		 15.11414528 234.74397278 -14.012436867 17.39195824 226.16122437 -9.10624027 16.28880692 225.29316711 -11.97420025
		 19.69172287 231.78373718 -8.0051794052 19.62013435 235.39068604 -7.93863583 19.16363907 236.79785156 -4.3086977
		 18.52989769 235.44458008 -0.62607211 18.95832062 228.83192444 -3.45521855 18.25353813 231.76261902 -5.71085835
		 17.74173927 233.21360779 -4.92346287 17.5501976 234.31486511 -3.62603116 18.65628624 233.76112366 -0.40355033
		 19.75369644 230.48652649 -1.65312505 18.70266151 223.10618591 4.40528488 17.74561691 220.20124817 8.24350929
		 2.57561588 209.44622803 23.78840637 17.14963913 237.45089722 4.73967075 18.72619438 230.76141357 8.035240173
		 13.87634945 244.49882507 6.54408073 17.34413338 223.33520508 11.8923111 14.64690208 225.8356781 15.95310402
		 6.58053589 217.03302002 20.38754463 5.36776781 200.88296509 15.033493996 7.48642397 201.36883545 19.16851807
		 7.56927776 205.093887329 21.2905426 5.27774096 210.50294495 22.12711525 7.95889616 212.85543823 19.42443275
		 8.29833221 202.91720581 12.65127659 10.094466209 203.53642273 15.80824757 9.90704155 207.13398743 17.93732834
		 15.11070538 209.68611145 7.33551979 14.71994972 208.62489319 4.48478413 14.9236412 213.39056396 9.20725918
		 14.32345867 216.56968689 11.88168526 11.43094444 222.18603516 17.76328087 13.47280312 219.46426392 14.84840965
		 68.14067078 55.37174606 4.45493603 68.0082244873 57.45498276 7.52675152 67.043045044 60.6308403 8.81877804
		 65.5984726 63.69118118 7.82143593 64.46231842 65.89881897 4.40642738 64.01625824 62.98250198 0.13735943
		 65.19821167 59.23942947 -1.1910603 66.88187408 56.46656418 1.15110755 67.51409912 54.83459091 4.80046749
		 67.31221771 56.54506302 7.72749996 65.89351654 59.40954208 9.30848885 63.77007675 62.13307571 7.93293667
		 62.35814285 62.68096542 4.63413906 62.61302567 61.055408478 1.27049708 64.18965912 58.0089378357 -0.15127201
		 66.28005219 55.28870773 1.31745315 66.88053131 53.64671707 5.038611412 66.51426697 54.84540939 7.86285067
		 64.50937653 56.81511307 9.40313339 61.73987579 58.89230728 8.70499706 60.51670074 58.86404037 5.43782806
		 60.83679962 57.73215866 2.44199443 62.93950272 55.57268143 0.72679788 65.6815567 53.69376755 1.87241244
		 66.47148132 51.72198105 5.55272961 65.84314728 52.36622238 8.15928459 63.54763794 53.17744064 9.54173088
		 60.84815598 53.79050064 9.1218462 59.6116333 54.47079849 6.31881857 59.99277878 53.01909256 3.8626821
		 62.21459961 52.1347847 2.26917815 65.19133759 51.47003555 2.79250503 65.71890259 48.76491165 5.9414258
		 65.26545715 49.2902565 8.20390511 63.18589401 49.77322006 9.34307575 60.92334366 50.38747025 9.14223671
		 59.86507034 49.50345993 4.35113144 61.94221497 48.97951889 3.34361243 64.42907715 48.61910629 3.69331813
		 28.38150024 6.058946609 28.72838402 28.30601501 4.89423752 28.42735863 28.58024025 3.90381622 28.99816704
		 28.92155266 0.74642372 29.086324692 16.21928024 0.20907213 -29.49209404 16.0094509125 3.68057442 -29.68407249
		 16.25747681 4.5045414 -29.38825798 16.29677773 5.14975929 -29.92940712 27.70661354 5.63876915 -11.68885517
		 26.84843254 4.53047752 -11.37093067 26.99433136 3.49871635 -11.44714832 25.71167564 0.17919542 -10.73054981
		 20.061616898 0.25443366 -8.81647968 14.16627789 0.33961585 -5.81538677 12.88596535 3.96623039 -5.10499668
		 13.21864796 5.10039711 -5.12591267 12.30856323 6.053901672 -4.61762142 26.20847321 5.87079048 -21.73007011
		 25.41753769 4.61889648 -21.15237617 25.47108078 3.76406097 -21.41009712 24.19887733 -0.013133981 -22.42987633
		 17.68181419 0.065620445 -19.86004829 10.67441082 0.64196014 -18.99328804 9.7248497 3.87109756 -18.88267708
		 10.074744225 5.12019348 -18.87333488 9.54680634 5.73492241 -18.90764809 29.23978996 15.075460434 -10.086478233
		 27.017101288 13.15446854 -19.74986458 17.44641304 13.3586998 -29.76421928 9.24521065 13.80342865 -18.61619377
		 12.074156761 14.47704124 -7.80956173 32.5491333 6.30871391 26.12986183 32.57765961 4.71477699 26.17684746
		 33.26109314 3.56507683 26.66923714 33.3976059 0.37929919 26.14907265 22.35865974 5.81228638 29.052145004
		 22.60880089 4.79321289 29.045434952 22.62942123 3.65382957 29.63417816 21.9982338 0.53934097 28.72791862
		 22.50147057 19.58707047 6.29224682 31.10137367 17.42479324 0.84259492 13.66872406 15.93660736 3.66166759
		 32.13750839 5.61855698 -3.77589154 11.82613754 5.67843056 6.47094679 17.65061378 5.53339005 24.44197655
		 37.03143692 5.41908836 19.84296417 31.21953011 4.57308006 -3.39311528 36.71050262 4.28077698 19.6085453
		 17.66790009 4.79796219 24.35581589 12.22840691 5.077749252 6.12036991 17.35461235 3.94041443 24.58736038
		 11.9317522 4.19219398 6.32239866 31.2109108 3.77665138 -3.55546117 37.40115356 3.30918503 19.3836956
		 18.99422073 18.93250656 -25.78360558 10.82445717 13.28808212 -26.22932625 10.73366356 5.43325233 -26.21433449
		 11.15041542 4.64190483 -25.89148903 11.19328403 3.90880585 -25.83998299 24.015480042 12.66963196 -26.48517799
		 22.30071259 5.66628647 -28.55615807 21.97757721 4.41297722 -28.2510891;
	setAttr ".vt[1328:1493]" 21.9544487 3.77004242 -28.51774025 13.479146 18.37770844 -24.78654671
		 23.54739761 17.66995621 -23.57590294 24.81825638 15.10795212 13.73403263 33.30761337 13.16327667 10.46813679
		 15.9702034 13.49717522 14.19324207 13.15348721 5.73747063 13.63279533 37.29802322 5.030292511 6.71282482
		 36.7334404 3.98293304 7.11156178 13.53783131 5.032440186 13.49914074 13.23584175 4.088350296 13.68856812
		 37.035381317 3.052808762 6.90680981 42.19596863 142.90997314 7.050949574 37.16191864 0.44042781 19.27811813
		 36.1720047 0.32302573 6.11972094 30.46731758 0.16784574 -3.015120745 21.87230301 0.38305762 -28.25930977
		 11.69667053 0.31640914 -25.78673363 12.65784645 0.67330933 6.39445353 14.3101263 0.49778941 13.12992764
		 18.12664795 0.41991237 24.16105843 15.92839813 4.9262085 19.98084259 15.69580936 4.13941193 20.34941673
		 26.9234581 11.59703827 21.74655724 33.76616669 9.96044731 18.82999039 19.88401794 10.54677391 22.26365471
		 15.9655962 5.38111496 20.26068878 38.52878952 5.045951843 13.69572735 37.93074799 4.24233437 13.98657322
		 38.13911819 3.40902901 13.57752323 37.33816147 0.22339346 13.49311352 16.57981873 0.33657554 20.092826843
		 27.54966927 0.29138759 22.37621689 26.62592125 0.28942969 16.73906708 24.94256973 0.20976736 10.11204052
		 23.33280754 0.26632121 1.92753863 70.1114502 52.58362198 8.31024647 74.87910461 53.98657608 12.31332588
		 81.65077209 53.28717422 12.24022198 88.0068283081 51.41698074 9.1097765 92.17464447 49.41231155 1.38383365
		 87.21047974 48.49715042 -0.9338333 80.61780548 50.77772141 0.36351472 73.9684906 50.77501297 3.092314482
		 69.68612671 49.91543198 7.86661386 74.40831757 49.7573204 11.74709606 80.58271027 48.5576973 11.22051334
		 86.29246521 46.69023132 8.40702534 90.060188293 44.91130066 1.93129516 84.99117279 45.32606888 -0.22226258
		 79.76228333 46.77178955 2.0032794476 74.037986755 48.047389984 4.31326866 68.66754913 46.21879578 8.60589695
		 73.59329224 46.56973648 11.14274025 79.64344788 44.95626831 10.46833515 84.93017578 43.3238945 7.63312292
		 87.49029541 40.62997055 2.62441134 82.8277359 41.97724152 0.64554197 78.37771606 43.58639145 3.17399096
		 73.31021118 44.86723709 5.23125172 68.45821381 41.91217041 8.65899849 73.50565338 42.8626976 10.20516014
		 79.033439636 42.053371429 9.75627232 83.90708923 40.69719315 6.95154858 84.52606201 37.76375961 3.080922842
		 80.65170288 38.99634933 1.13291812 76.59453583 40.35977936 3.17649055 71.91178131 41.6026001 4.33399582
		 70.90265656 37.86853409 7.57551956 73.58901978 39.85372543 9.25985527 77.21360016 38.2157135 8.48815441
		 80.89915466 37.77849197 6.91497087 80.40627289 35.88853836 4.25998974 78.66976929 36.95140076 2.078790426
		 75.067359924 37.050079346 2.95032382 71.58600616 38.49455261 3.92062926 69.81013489 55.14275742 4.65666103
		 75.62444305 66.45864868 10.34291458 82.74500275 65.93331146 10.52002907 88.57311249 63.71517563 8.68027687
		 94.1388855 60.83952713 1.9367578 90.76934052 59.78781509 -5.068245888 80.97768402 60.48999405 -5.13154316
		 68.19907379 64.63033295 8.65689468 67.1131897 67.062965393 6.94138384 67.49795532 68.88755035 1.49528003
		 71.068763733 65.64556885 9.34262943 69.4154892 69.39983368 6.63976765 69.40346527 61.81364059 9.70043755
		 69.37850189 57.0053749084 7.94106388 69.11138916 56.30157089 3.45316863 71.78186798 57.043712616 -1.55146432
		 72.83229828 56.77053452 0.52149373 76.37718964 57.26561356 -2.39129949 74.39076233 57.92885208 -3.2933476
		 71.33508301 59.38949203 -3.89598393 74.90627289 60.47013474 -4.9900732 68.0070495605 64.677742 -2.86977696
		 72.80158234 65.77979279 -4.41806316 77.044151306 65.6290741 -5.77919483 82.24313354 59.24448013 12.20466232
		 82.28057861 55.046749115 -2.32149625 94.013290405 53.69916153 0.85578138 74.87577057 60.39136887 12.20871162
		 89.29820251 57.11545181 9.10059166 89.81851196 53.73306656 -3.26214528 77.6582489 55.48909378 -0.00519962
		 73.73368835 55.31677628 2.12139678 70.92767334 57.0070610046 10.85106659 69.55665588 54.37594223 5.49206161
		 73.60726166 53.39722061 2.47534823 69.90085602 57.33453751 9.33554935 71.21112823 61.63441086 10.71013832
		 77.082366943 53.22972488 0.71118909 3.95100594 202.12335205 11.55628395 5.7492342 203.026046753 8.98291779
		 8.55802059 204.58174133 6.26182079 14.016545296 208.12026978 1.9832809 18.10388565 211.13775635 -2.66591382
		 19.062194824 215.77145386 -9.093262672 17.40643883 220.51950073 -12.79284382 14.1186533 223.84350586 -15.80255985
		 12.81951809 228.75521851 -16.78795433 6.63729 191.9564209 10.12462807 9.67211723 200.68205261 5.79441452
		 8.24437237 191.27729797 7.9691596 12.032963753 199.36712646 3.58379531 18.69923592 206.49909973 -5.53245449
		 19.63191605 211.31480408 -11.25105 17.45952797 215.80863953 -19.35838127 7.68549585 220.43218994 -26.64974785
		 13.47986412 219.30345154 -24.83977318 10.38773537 216.1211853 17.17983818 8.63833904 219.39257813 19.56373215
		 3.23094797 207.061828613 23.78394318 6.39934683 208.25405884 21.75806618 8.75590038 210.19366455 18.93667412
		 11.38144779 213.25587463 15.36417484 3.27403688 220.25439453 22.7225132 2.53218508 225.044006348 23.54873657
		 5.26580286 222.15830994 21.92335701 5.72841692 224.42579651 21.70259857 3.034497023 226.48542786 22.96608353
		 3.074774027 227.75863647 24.95837784 4.71972799 230.45072937 24.5947628 6.020329952 229.55436707 23.30517387
		 7.53493023 227.39727783 20.42666245 5.27032614 227.52839661 21.94942856 4.429533 227.025756836 22.0050830841
		 3.17331505 227.10597229 22.74016953 2.84702206 228.011627197 23.87775993 4.52248716 229.73188782 24.31324387
		 5.29597712 229.096481323 23.45909119 4.14098406 228.36099243 22.30115318 3.90970802 227.81916809 22.24263382
		 3.36672711 227.87937927 22.4820652 3.14808702 228.73379517 22.55036545 3.700804 229.79919434 22.86920166
		 4.33025599 229.2888031 22.64716148 12.88194275 222.6557312 -19.79847527 17.27581406 217.68865967 -16.62218666
		 19.068294525 213.088638306 -9.50540638 17.60264206 209.73713684 -4.75070858 12.86983967 234.06628418 -18.050714493
		 12.46816826 239.64379883 -17.7577343 6.23476124 249.88850403 -12.66055012;
	setAttr ".vt[1494:1551]" 11.72012711 244.51246643 -15.36900043 14.1351347 243.54408264 -11.90388203
		 15.26537514 243.37242126 -8.19634724 15.38990879 243.032913208 -3.96104741 14.71773338 242.68464661 0.86755258
		 12.29236698 248.80314636 2.47695613 10.51296806 249.55122375 -6.98955441 10.76122761 247.78791809 -11.57371807
		 13.038049698 246.014053345 -10.27876186 13.45052147 246.60142517 -7.15769482 14.02117157 246.2167511 -0.098001666
		 6.31621885 252.5717926 -1.37300038 11.32727242 250.0012664795 -2.29571843 13.81967068 246.77922058 -3.39114118
		 62.063331604 45.21339417 6.93217993 59.74180222 52.092922211 8.035378456 59.37813568 52.074054718 6.83828068
		 59.36645126 51.57603836 5.45374107 59.20101547 49.87910843 5.74297047 59.1799202 48.44974518 5.94160175
		 59.30470276 48.32608032 7.1493988 59.82697296 48.72661209 8.16390896 59.79779816 50.30748367 8.19863987
		 59.28885651 50.21469498 7.0875597 60.59447479 47.76984024 8.80917358 59.55796814 46.60152435 7.31453276
		 59.50448608 47.53910828 5.24022007 61.60883713 46.66385651 4.58465385 63.6219902 46.8802681 4.64279079
		 64.37606049 46.55858231 6.47917366 64.46347809 47.31372452 8.21168041 62.79364777 46.98396301 9.19713497
		 74.96092987 34.98532486 6.055469513 11.87304878 235.76371765 15.9578104 11.36482334 237.044311523 15.94362164
		 9.92942333 237.16516113 17.10229301 7.97261 236.65504456 18.086866379 7.8039031 235.52262878 18.41666031
		 8.24444389 234.45330811 18.4340992 10.23790264 234.16091919 17.61946869 11.77399158 234.37380981 16.30171013
		 10.13450146 235.92070007 17.49396324 85.35124969 143.061553955 -24.50885582 79.97884369 140.42886353 -11.12851048
		 69.66573334 135.18580627 -1.26834321 57.34984207 124.60505676 -9.72788334 53.76981735 125.0081787109 -25.40734673
		 54.54833603 126.28184509 -42.34972 70.075622559 133.63381958 -47.34519196 82.057441711 139.90467834 -41.1653862
		 85.12988281 141.87217712 -24.87677956 79.73419952 139.43247986 -11.99075985 70.36148071 133.88328552 -2.10898519
		 57.86874008 124.76721191 -9.82584476 55.3347168 124.78019714 -24.93672371 55.6307869 126.23808289 -41.40684128
		 69.84101105 132.98252869 -45.99067307 81.73642731 138.95544434 -39.88504028;
	setAttr -s 3100 ".ed";
	setAttr ".ed[0:165]"  123 122 1 122 130 1 130 131 1 131 123 1 124 123 1 131 132 1
		 132 124 1 125 124 1 132 133 1 133 125 1 126 125 1 133 134 1 134 126 1 127 126 1 134 135 1
		 135 127 1 128 127 1 135 136 1 136 128 1 129 128 1 136 137 1 137 129 1 137 130 1 122 129 1
		 130 138 1 138 139 1 139 131 1 139 140 1 140 132 1 140 141 1 141 133 1 141 142 1 142 134 1
		 142 143 1 143 135 1 143 144 1 144 136 1 144 145 1 145 137 1 145 138 1 138 146 1 146 147 1
		 147 139 1 147 148 1 148 140 1 148 149 1 149 141 1 149 150 1 150 142 1 150 151 1 151 143 1
		 151 152 1 152 144 1 152 153 1 153 145 1 153 146 1 146 154 1 154 155 1 155 147 1 155 156 1
		 156 148 1 156 157 1 157 149 1 157 158 1 158 150 1 158 159 1 159 151 1 159 160 1 160 152 1
		 160 161 1 161 153 1 161 154 1 179 178 1 178 186 1 186 187 1 187 179 1 180 179 1 187 188 1
		 188 180 1 181 180 1 188 189 1 189 181 1 182 181 1 189 190 1 190 182 1 183 182 1 190 191 1
		 191 183 1 184 183 1 191 192 1 192 184 1 185 184 1 192 193 1 193 185 1 193 186 1 178 185 1
		 186 194 1 194 195 1 195 187 1 195 196 1 196 188 1 196 197 1 197 189 1 197 198 1 198 190 1
		 198 199 1 199 191 1 199 200 1 200 192 1 200 201 1 201 193 1 201 194 1 194 202 1 202 203 1
		 203 195 1 203 204 1 204 196 1 204 205 1 205 197 1 205 206 1 206 198 1 206 207 1 207 199 1
		 207 208 1 208 200 1 208 209 1 209 201 1 209 202 1 203 211 1 211 212 1 212 204 1 212 213 1
		 213 205 1 213 214 1 214 206 1 214 215 1 215 207 1 215 216 1 216 208 1 216 217 1 217 209 1
		 217 210 1 210 202 1 210 211 1 218 211 1 210 225 1 225 218 1 219 212 1 218 219 1 219 220 1
		 220 213 1 220 221 1 221 214 1 221 222 1 222 215 1 222 223 1 223 216 1 223 224 1 224 217 1
		 224 225 1 255 256 1 256 235 1 235 70 1 70 255 1 260 241 1 241 239 1;
	setAttr ".ed[166:331]" 239 258 1 258 260 1 247 252 1 252 260 1 258 247 1 262 76 1
		 76 75 1 75 273 1 273 262 1 279 273 1 75 74 1 74 279 1 264 262 1 273 274 1 274 264 1
		 266 264 1 274 275 1 275 266 1 268 266 1 275 276 1 276 268 1 270 268 1 276 277 1 277 270 1
		 272 270 1 277 278 1 278 272 1 84 83 1 83 272 1 278 84 1 182 174 1 174 173 1 173 181 1
		 173 172 1 172 180 1 172 171 1 171 179 1 171 170 1 170 178 1 170 177 1 177 185 1 177 176 1
		 176 184 1 176 175 1 175 183 1 175 174 1 287 174 1 175 294 1 294 287 1 176 293 1 293 294 1
		 177 292 1 292 293 1 170 291 1 291 292 1 171 290 1 290 291 1 172 289 1 289 290 1 173 288 1
		 288 289 1 287 288 1 261 77 1 77 76 1 262 261 1 263 261 1 264 263 1 80 79 1 79 287 1
		 294 80 1 295 293 1 292 296 1 296 295 1 295 80 1 265 263 1 266 265 1 268 267 1 267 265 1
		 298 297 1 297 291 1 290 298 1 299 298 1 289 299 1 301 261 1 263 305 1 305 301 1 79 300 1
		 300 288 1 78 77 1 301 78 1 300 299 1 309 78 1 301 308 1 308 309 1 308 299 1 300 309 1
		 265 306 1 306 305 1 267 304 1 304 306 1 307 298 1 308 307 1 305 307 1 297 296 1 307 311 1
		 311 297 1 311 306 1 304 297 1 271 272 1 83 82 1 82 271 1 82 81 1 81 302 1 302 271 1
		 81 80 1 295 302 1 269 270 1 271 269 1 303 296 1 304 303 1 269 267 1 269 303 1 302 303 1
		 314 113 1 113 106 1 106 312 1 312 314 1 255 69 1 69 251 1 251 256 1 257 249 1 249 247 1
		 258 257 1 239 237 1 237 257 1 317 235 1 256 320 1 320 317 1 320 257 1 237 317 1 318 249 1
		 320 318 1 251 318 1 234 71 1 71 70 1 235 234 1 317 316 1 316 234 1 237 236 1 236 316 1
		 239 238 1 238 236 1 240 238 1 241 240 1 330 314 1 312 328 1 328 330 1 240 330 1 328 238 1
		 328 329 1 329 236 1 329 332 1 332 316 1 106 107 1 107 313 1 313 312 1;
	setAttr ".ed[332:497]" 313 329 1 279 281 1 281 274 1 281 282 1 282 275 1 282 283 1
		 283 276 1 283 284 1 284 277 1 284 285 1 285 278 1 85 84 1 285 85 1 86 85 1 285 338 1
		 338 86 1 284 337 1 337 338 1 283 336 1 336 337 1 282 335 1 335 336 1 259 245 1 245 92 1
		 92 91 1 91 259 1 252 245 1 259 260 1 91 342 1 342 343 1 343 259 1 243 241 1 259 243 1
		 344 243 1 343 344 1 342 90 1 90 344 1 242 240 1 243 242 1 345 242 1 344 345 1 90 89 1
		 89 345 1 242 331 1 331 330 1 89 326 1 326 346 1 346 345 1 346 331 1 315 314 1 331 315 1
		 112 113 1 315 112 1 326 88 1 88 347 1 347 346 1 347 315 1 111 112 1 315 333 1 333 111 1
		 280 279 1 74 73 1 73 280 1 281 334 1 334 335 1 280 334 1 87 86 1 338 348 1 348 87 1
		 348 347 1 88 87 1 348 333 1 286 110 1 110 111 1 333 286 1 348 339 1 339 286 1 337 339 1
		 250 251 1 69 68 1 68 250 1 319 318 1 250 319 1 248 249 1 319 248 1 246 247 1 248 246 1
		 253 252 1 246 253 1 244 245 1 253 244 1 244 93 1 93 92 1 322 109 1 109 110 1 286 322 1
		 350 339 1 336 350 1 68 67 1 67 352 1 352 250 1 352 353 1 353 319 1 353 354 1 354 248 1
		 354 355 1 355 246 1 355 356 1 356 253 1 356 357 1 357 244 1 94 93 1 357 94 1 369 57 1
		 57 366 1 366 370 1 370 369 1 367 57 1 369 372 1 372 367 1 373 58 1 58 367 1 372 373 1
		 393 377 1 377 378 1 378 394 1 394 393 1 105 104 1 104 399 1 399 394 1 394 105 1 398 393 1
		 399 398 1 104 103 1 103 398 1 392 376 1 376 377 1 393 392 1 398 402 1 402 392 1 391 375 1
		 375 376 1 392 391 1 390 374 1 374 375 1 391 390 1 397 381 1 381 374 1 390 397 1 396 380 1
		 380 381 1 397 396 1 395 379 1 379 380 1 396 395 1 378 379 1 395 394 1 400 105 1 395 400 1
		 433 426 1 426 420 1 420 444 1 444 433 1 442 420 1 426 427 1 427 442 1;
	setAttr ".ed[498:663]" 444 418 1 418 432 1 432 433 1 434 426 1 433 441 1 441 434 1
		 435 427 1 434 435 1 432 440 1 440 441 1 440 446 1 446 434 1 446 447 1 447 435 1 436 435 1
		 447 448 1 448 436 1 437 436 1 448 449 1 449 437 1 448 453 1 453 454 1 454 449 1 438 437 1
		 454 438 1 451 446 1 440 450 1 450 451 1 452 451 1 450 455 1 455 452 1 452 447 1 452 453 1
		 455 454 1 439 438 1 455 439 1 440 439 1 432 431 1 431 439 1 418 416 1 416 425 1 425 432 1
		 431 430 1 430 438 1 456 431 1 425 456 1 404 390 1 391 403 1 403 404 1 402 403 1 103 102 1
		 102 402 1 461 430 1 456 461 1 404 405 1 405 397 1 404 460 1 460 461 1 461 405 1 463 461 1
		 456 457 1 457 463 1 416 414 1 414 424 1 424 425 1 424 457 1 474 476 1 476 424 1 414 474 1
		 489 488 1 488 496 1 496 497 1 497 489 1 490 489 1 497 498 1 498 490 1 491 490 1 498 499 1
		 499 491 1 492 491 1 499 500 1 500 492 1 493 492 1 500 501 1 501 493 1 494 493 1 501 502 1
		 502 494 1 495 494 1 502 503 1 503 495 1 503 496 1 488 495 1 496 504 1 504 505 1 505 497 1
		 505 506 1 506 498 1 502 510 1 510 511 1 511 503 1 511 504 1 225 226 1 226 227 1 227 218 1
		 228 219 1 227 228 1 228 229 1 229 220 1 230 221 1 229 230 1 560 229 1 228 558 1 558 560 1
		 559 227 1 226 545 1 545 559 1 559 558 1 549 230 1 560 549 1 561 559 1 545 527 1 527 561 1
		 535 549 1 560 562 1 562 535 1 556 555 1 555 520 1 520 521 1 521 556 1 527 528 1 528 565 1
		 565 561 1 520 551 1 551 552 1 552 521 1 544 548 1 548 549 1 535 544 1 535 534 1 534 543 1
		 543 544 1 575 544 1 543 576 1 576 575 1 542 543 1 534 533 1 533 542 1 576 525 1 525 526 1
		 526 575 1 545 546 1 546 536 1 536 527 1 536 537 1 537 528 1 579 526 1 525 580 1 580 579 1
		 580 537 1 536 579 1 529 528 1 537 538 1 538 529 1 526 547 1 547 574 1;
	setAttr ".ed[664:829]" 574 575 1 574 548 1 231 230 1 548 231 1 231 222 1 232 223 1
		 231 232 1 582 574 1 547 573 1 573 582 1 582 231 1 573 232 1 226 233 1 233 546 1 232 233 1
		 233 224 1 573 583 1 583 233 1 578 546 1 583 578 1 578 579 1 578 547 1 562 568 1 568 534 1
		 584 558 1 559 585 1 585 584 1 586 560 1 584 586 1 561 588 1 588 585 1 587 562 1 586 587 1
		 565 589 1 589 588 1 340 335 1 334 349 1 349 340 1 350 322 1 340 350 1 321 108 1 108 109 1
		 322 321 1 321 313 1 107 108 1 321 332 1 280 351 1 351 349 1 327 325 1 325 71 1 234 327 1
		 332 327 1 593 321 1 350 593 1 73 72 1 72 351 1 72 325 1 327 351 1 351 350 1 327 593 1
		 592 589 1 565 571 1 571 592 1 529 571 1 530 529 1 538 539 1 539 530 1 580 581 1 581 538 1
		 525 524 1 524 581 1 523 540 1 540 539 1 539 597 1 597 523 1 581 597 1 524 523 1 576 577 1
		 577 524 1 542 577 1 598 523 1 577 598 1 541 542 1 533 532 1 532 541 1 541 540 1 598 541 1
		 568 570 1 570 533 1 567 555 1 556 569 1 569 567 1 587 590 1 590 568 1 590 591 1 591 570 1
		 520 519 1 519 550 1 550 551 1 554 519 1 555 554 1 563 554 1 567 563 1 550 564 1 564 566 1
		 566 551 1 566 572 1 572 552 1 602 567 1 569 603 1 603 602 1 604 605 1 605 550 1 519 604 1
		 607 563 1 602 607 1 587 607 1 602 590 1 603 591 1 606 586 1 584 604 1 604 606 1 585 605 1
		 554 606 1 588 608 1 608 605 1 608 564 1 606 607 1 589 609 1 609 608 1 609 566 1 592 610 1
		 610 609 1 610 572 1 601 569 1 556 557 1 557 601 1 522 521 1 552 553 1 553 522 1 522 557 1
		 594 553 1 572 594 1 612 603 1 601 612 1 522 613 1 613 601 1 594 613 1 611 594 1 610 611 1
		 600 591 1 612 600 1 614 613 1 611 614 1 614 612 1 592 595 1 595 611 1 599 532 1 570 599 1
		 600 599 1 615 614 1 595 615 1 532 531 1 531 540 1 531 530 1 616 599 1;
	setAttr ".ed[830:995]" 600 615 1 615 616 1 596 595 1 571 596 1 596 616 1 530 596 1
		 531 616 1 634 633 1 633 625 1 625 626 1 626 634 1 635 634 1 626 627 1 627 635 1 636 635 1
		 627 628 1 628 636 1 637 636 1 628 629 1 629 637 1 638 637 1 629 630 1 630 638 1 639 638 1
		 630 631 1 631 639 1 640 639 1 631 632 1 632 640 1 632 625 1 633 640 1 642 641 1 641 633 1
		 634 642 1 643 642 1 635 643 1 644 643 1 636 644 1 645 644 1 637 645 1 646 645 1 638 646 1
		 647 646 1 639 647 1 648 647 1 640 648 1 641 648 1 626 618 1 618 619 1 619 627 1 163 164 1
		 164 156 1 155 163 1 619 620 1 620 628 1 162 163 1 154 162 1 620 621 1 621 629 1 169 162 1
		 161 169 1 621 622 1 622 630 1 168 169 1 160 168 1 484 483 1 483 491 1 492 484 1 164 165 1
		 165 157 1 166 165 1 165 668 1 668 666 1 666 166 1 483 482 1 482 490 1 664 483 1 484 665 1
		 665 664 1 482 481 1 481 489 1 481 480 1 480 488 1 480 487 1 487 495 1 487 486 1 486 494 1
		 485 484 1 493 485 1 486 485 1 487 672 1 672 676 1 676 486 1 666 484 1 485 678 1 678 666 1
		 668 665 1 676 678 1 166 158 1 678 679 1 679 166 1 166 167 1 167 159 1 167 168 1 679 680 1
		 680 167 1 677 676 1 672 675 1 675 677 1 677 679 1 663 168 1 680 663 1 677 663 1 658 165 1
		 164 659 1 659 658 1 163 660 1 660 659 1 162 661 1 661 660 1 169 662 1 662 661 1 663 662 1
		 685 620 1 619 681 1 681 685 1 660 685 1 681 659 1 682 686 1 686 662 1 663 682 1 683 621 1
		 685 683 1 686 622 1 683 686 1 661 683 1 675 674 1 674 663 1 487 671 1 671 673 1 673 672 1
		 673 674 1 632 624 1 624 617 1 617 625 1 617 618 1 618 684 1 684 681 1 684 658 1 480 657 1
		 657 671 1 481 670 1 670 657 1 657 688 1 688 673 1 669 482 1 664 669 1 617 689 1 689 684 1
		 669 670 1 692 689 1 617 690 1 690 692 1 690 691 1 691 688 1 657 690 1;
	setAttr ".ed[996:1161]" 670 692 1 692 693 1 693 684 1 667 664 1 668 667 1 693 669 1
		 667 693 1 658 667 1 624 691 1 687 674 1 688 687 1 687 682 1 622 623 1 623 631 1 682 623 1
		 623 624 1 694 691 1 623 694 1 687 694 1 466 61 1 61 60 1 60 467 1 467 466 1 471 466 1
		 467 472 1 472 471 1 472 412 1 412 411 1 411 471 1 475 411 1 412 474 1 474 475 1 414 413 1
		 413 475 1 415 413 1 416 415 1 417 415 1 418 417 1 445 417 1 444 445 1 420 419 1 419 445 1
		 695 62 1 62 61 1 466 695 1 471 696 1 696 695 1 411 697 1 697 696 1 697 63 1 63 695 1
		 698 697 1 475 698 1 67 66 1 66 358 1 358 352 1 704 66 1 66 65 1 65 64 1 64 704 1
		 706 358 1 704 706 1 705 704 1 64 63 1 63 705 1 698 705 1 358 359 1 359 353 1 706 707 1
		 707 359 1 705 707 1 359 360 1 360 354 1 360 361 1 361 355 1 361 362 1 362 356 1 95 94 1
		 357 363 1 363 95 1 362 363 1 369 368 1 368 373 1 370 371 1 371 368 1 412 423 1 423 476 1
		 479 463 1 457 477 1 477 479 1 468 467 1 60 59 1 59 468 1 469 459 1 459 58 1 373 469 1
		 368 470 1 470 469 1 468 473 1 473 472 1 473 423 1 719 473 1 468 718 1 718 719 1 717 459 1
		 469 718 1 718 717 1 59 717 1 470 719 1 719 720 1 720 423 1 476 477 1 720 714 1 714 479 1
		 477 720 1 470 714 1 465 470 1 371 465 1 366 56 1 56 371 1 721 465 1 56 721 1 715 714 1
		 465 715 1 478 479 1 715 478 1 721 724 1 724 715 1 721 55 1 55 723 1 723 724 1 55 54 1
		 54 401 1 401 723 1 54 408 1 408 409 1 409 401 1 408 105 1 400 409 1 395 410 1 410 409 1
		 396 406 1 406 410 1 405 406 1 464 405 1 463 464 1 478 464 1 730 406 1 464 730 1 725 478 1
		 724 725 1 725 730 1 726 725 1 723 726 1 727 726 1 401 727 1 728 727 1 409 728 1 729 728 1
		 410 729 1 730 729 1 732 731 1 731 730 1 725 732 1 733 732 1 726 733 1;
	setAttr ".ed[1162:1327]" 734 733 1 727 734 1 735 734 1 728 735 1 736 735 1 729 736 1
		 731 736 1 738 732 1 733 739 1 739 738 1 740 734 1 735 741 1 741 740 1 736 742 1 742 741 1
		 737 731 1 738 737 1 737 742 1 739 740 1 740 737 1 713 712 1 712 95 1 363 713 1 362 710 1
		 710 713 1 361 709 1 709 710 1 699 698 1 413 699 1 699 707 1 360 708 1 708 709 1 708 707 1
		 699 746 1 746 708 1 700 699 1 415 700 1 745 746 1 700 745 1 745 709 1 701 700 1 417 701 1
		 744 745 1 701 744 1 744 710 1 702 701 1 445 702 1 743 744 1 702 743 1 743 713 1 96 712 1
		 743 96 1 703 702 1 419 703 1 443 419 1 442 443 1 703 96 1 443 747 1 747 703 1 747 97 1
		 97 96 1 748 98 1 98 97 1 747 748 1 443 421 1 421 748 1 422 421 1 442 422 1 427 428 1
		 428 422 1 436 428 1 429 430 1 460 429 1 429 428 1 437 429 1 462 460 1 403 462 1 102 462 1
		 751 99 1 99 98 1 748 751 1 752 751 1 421 752 1 758 750 1 750 99 1 751 758 1 752 759 1
		 759 758 1 755 429 1 462 755 1 753 752 1 422 753 1 760 759 1 753 760 1 756 462 1 102 101 1
		 101 756 1 757 100 1 100 750 1 758 757 1 760 757 1 756 761 1 761 755 1 763 100 1 757 764 1
		 764 763 1 764 756 1 101 763 1 760 765 1 765 764 1 754 753 1 428 754 1 754 765 1 755 754 1
		 761 765 1 506 507 1 507 499 1 507 508 1 508 500 1 508 509 1 509 501 1 509 510 1 767 507 1
		 507 515 1 515 774 1 774 767 1 769 509 1 508 768 1 768 769 1 767 768 1 770 769 1 768 775 1
		 775 770 1 774 775 1 774 773 1 773 772 1 772 775 1 771 770 1 772 771 1 516 509 1 770 516 1
		 772 777 1 777 778 1 778 771 1 510 517 1 517 518 1 518 511 1 518 512 1 512 504 1 781 512 1
		 518 780 1 780 781 1 512 513 1 513 505 1 781 782 1 782 513 1 513 514 1 514 506 1 780 779 1
		 779 766 1 766 781 1 766 783 1 783 782 1 766 777 1 777 776 1 776 783 1;
	setAttr ".ed[1328:1493]" 516 517 1 516 778 1 778 779 1 779 517 1 783 514 1 514 515 1
		 776 515 1 776 773 1 655 654 1 654 646 1 647 655 1 648 656 1 656 655 1 644 652 1 652 651 1
		 651 643 1 651 650 1 650 642 1 653 652 1 645 653 1 654 653 1 649 650 1 651 784 1 784 649 1
		 649 641 1 784 655 1 656 649 1 784 653 1 383 375 1 374 382 1 382 383 1 384 376 1 383 384 1
		 385 377 1 384 385 1 386 378 1 385 386 1 387 379 1 386 387 1 388 380 1 387 388 1 389 381 1
		 388 389 1 389 382 1 788 385 1 384 787 1 787 788 1 792 389 1 388 791 1 791 792 1 786 383 1
		 382 785 1 785 786 1 792 785 1 789 386 1 788 789 1 790 387 1 789 790 1 786 787 1 793 789 1
		 787 793 1 790 791 1 793 791 1 793 785 1 795 107 1 106 794 1 794 795 1 113 801 1 801 794 1
		 796 108 1 795 796 1 797 109 1 796 797 1 798 110 1 797 798 1 799 111 1 798 799 1 800 112 1
		 799 800 1 800 801 1 115 114 1 114 122 1 123 115 1 116 115 1 124 116 1 117 116 1 125 117 1
		 118 117 1 126 118 1 119 118 1 127 119 1 120 119 1 128 120 1 121 120 1 129 121 1 114 121 1
		 115 803 1 803 802 1 802 114 1 803 795 1 794 802 1 801 809 1 809 802 1 809 121 1 804 796 1
		 803 804 1 116 804 1 805 797 1 804 805 1 117 805 1 806 798 1 805 806 1 118 806 1 807 799 1
		 806 807 1 119 807 1 808 800 1 807 808 1 120 808 1 808 809 1 810 811 1 811 1467 1
		 1467 1150 1 1150 810 1 1150 1157 1 1157 1156 1 1156 810 1 811 1466 1 1466 1468 1
		 1468 1467 1 812 1115 1 1115 1119 1 1119 1120 1 1120 812 1 1120 1212 1 1212 1466 1
		 1466 812 1 1118 1119 1 1115 813 1 813 1118 1 813 1116 1 1116 1121 1 1121 1118 1 1122 1121 1
		 1116 814 1 814 1122 1 1206 1216 1 1216 1122 1 814 1206 1 815 816 1 816 1214 1 1214 1215 1
		 1215 815 1 1215 1463 1 1463 1462 1 1462 815 1 816 817 1 817 1213 1 1213 1214 1 817 818 1
		 818 1442 1 1442 1213 1 819 820 1 820 1451 1 1451 1452 1 1452 819 1;
	setAttr ".ed[1494:1659]" 1444 1443 1 1443 1442 1 1442 819 1 819 1444 1 1452 1445 1
		 1445 1444 1 820 821 1 821 822 1 822 1451 1 822 823 1 823 1103 1 1103 1109 1 1109 822 1
		 1109 1453 1 1453 1451 1 823 824 1 824 1006 1 1006 1103 1 824 825 1 825 1007 1 1007 1006 1
		 1010 1011 1 1011 1007 1 825 1010 1 826 827 1 827 990 1 990 991 1 991 826 1 991 1011 1
		 1010 826 1 1077 1079 1 1079 990 1 827 1077 1 828 829 1 829 1035 1 1035 1102 1 1102 828 1
		 1102 1079 1 1077 828 1 829 830 1 830 1034 1 1034 1035 1 830 831 1 831 1028 1 1028 1034 1
		 831 832 1 832 1017 1 1017 1028 1 832 833 1 833 1016 1 1016 1017 1 833 834 1 834 1056 1
		 1056 1016 1 1064 1063 1 1063 1056 1 834 1064 1 835 836 1 836 1049 1 1049 1042 1 1042 835 1
		 1042 1043 1 1043 1055 1 1055 835 1 836 837 1 837 1057 1 1057 1050 1 1050 836 1 1050 1048 1
		 1048 1049 1 837 838 1 838 1026 1 1026 1057 1 838 839 1 839 1027 1 1027 1026 1 839 840 1
		 840 1033 1 1033 1027 1 840 841 1 841 1040 1 1040 1033 1 841 842 1 842 1090 1 1090 1040 1
		 842 843 1 843 1099 1 1099 1090 1 843 844 1 844 1098 1 1098 1099 1 844 1078 1 1078 1097 1
		 1097 1098 1 845 846 1 846 1095 1 1095 1096 1 1096 845 1 1096 1097 1 1078 845 1 846 1093 1
		 1093 1094 1 1094 1095 1 847 848 1 848 1001 1 1001 1014 1 1014 847 1 1014 1094 1 1093 847 1
		 848 849 1 849 1000 1 1000 1001 1 849 850 1 850 1108 1 1108 1000 1 850 851 1 851 1114 1
		 1114 1108 1 1458 1459 1 1459 1114 1 851 1458 1 852 853 1 853 1491 1 1491 1450 1 1450 852 1
		 1450 1449 1 1449 1487 1 1487 852 1 1487 1459 1 1458 852 1 853 854 1 854 1492 1 1492 1491 1
		 854 855 1 855 1494 1 1494 1492 1 855 1493 1 1493 1501 1 1501 1494 1 1500 1501 1 1493 856 1
		 856 1500 1 1505 1506 1 1506 1500 1 856 1505 1 857 858 1 858 1209 1 1209 1499 1 1499 857 1
		 1499 1506 1 1505 857 1 858 859 1 859 1147 1 1147 1151 1 1151 858 1 1151 1152 1 1152 1209 1
		 859 860 1 860 1148 1 1148 1147 1 860 861 1 861 1143 1 1143 1148 1 1149 1144 1 1144 1143 1
		 861 1149 1;
	setAttr ".ed[1660:1825]" 1157 1149 1 861 1156 1 1066 1067 1 1067 863 1 863 862 1
		 862 1066 1 863 1537 1 1537 1536 1 1536 862 1 862 869 1 869 1068 1 1068 1066 1 1536 1543 1
		 1543 869 1 1067 1075 1 1075 864 1 864 863 1 864 1538 1 1538 1537 1 1075 1076 1 1076 865 1
		 865 864 1 865 1539 1 1539 1538 1 1076 1041 1 1041 866 1 866 865 1 866 1540 1 1540 1539 1
		 1041 1085 1 1085 867 1 867 866 1 867 1541 1 1541 1540 1 1085 1069 1 1069 868 1 868 867 1
		 868 1542 1 1542 1541 1 1069 1068 1 869 868 1 1543 1542 1 870 871 1 871 879 1 879 878 1
		 878 870 1 1544 1545 1 1545 871 1 870 1544 1 878 885 1 885 877 1 877 870 1 877 1551 1
		 1551 1544 1 871 872 1 872 880 1 880 879 1 1545 1546 1 1546 872 1 872 873 1 873 881 1
		 881 880 1 1546 1547 1 1547 873 1 873 874 1 874 882 1 882 881 1 1547 1548 1 1548 874 1
		 874 875 1 875 883 1 883 882 1 1548 1549 1 1549 875 1 875 876 1 876 884 1 884 883 1
		 1549 1550 1 1550 876 1 876 877 1 885 884 1 1550 1551 1 879 887 1 887 886 1 886 878 1
		 886 893 1 893 885 1 880 888 1 888 887 1 881 889 1 889 888 1 882 890 1 890 889 1 883 891 1
		 891 890 1 884 892 1 892 891 1 893 892 1 887 895 1 895 894 1 894 886 1 894 901 1 901 893 1
		 888 896 1 896 895 1 889 897 1 897 896 1 890 898 1 898 897 1 891 899 1 899 898 1 892 900 1
		 900 899 1 901 900 1 895 903 1 903 902 1 902 894 1 902 909 1 909 901 1 896 904 1 904 903 1
		 897 905 1 905 904 1 898 906 1 906 905 1 899 907 1 907 906 1 900 908 1 908 907 1 909 908 1
		 903 911 1 911 910 1 910 902 1 910 917 1 917 909 1 904 912 1 912 911 1 905 913 1 913 912 1
		 906 914 1 914 913 1 907 915 1 915 914 1 908 916 1 916 915 1 917 916 1 911 919 1 919 918 1
		 918 910 1 918 925 1 925 917 1 912 920 1 920 919 1 913 921 1 921 920 1 914 922 1 922 921 1
		 915 923 1 923 922 1 916 924 1 924 923 1 925 924 1 919 1407 1 1407 1408 1 1408 918 1
		 1408 1409 1;
	setAttr ".ed[1826:1991]" 1409 925 1 920 1406 1 1406 1407 1 921 1405 1 1405 1406 1
		 922 1413 1 1413 1415 1 1415 921 1 1415 1414 1 1414 1405 1 923 1427 1 1427 1426 1
		 1426 922 1 1426 1425 1 1425 1413 1 924 1410 1 1410 1427 1 1409 1410 1 926 927 1 927 935 1
		 935 934 1 934 926 1 1046 1045 1 1045 927 1 926 1046 1 934 941 1 941 933 1 933 926 1
		 933 1047 1 1047 1046 1 927 928 1 928 936 1 936 935 1 1045 1044 1 1044 928 1 928 929 1
		 929 937 1 937 936 1 1044 1043 1 1043 929 1 929 930 1 930 938 1 938 937 1 1042 930 1
		 930 931 1 931 939 1 939 938 1 1049 931 1 931 932 1 932 940 1 940 939 1 1048 932 1
		 932 933 1 941 940 1 1048 1047 1 935 943 1 943 942 1 942 934 1 942 949 1 949 941 1
		 936 944 1 944 943 1 937 945 1 945 944 1 938 946 1 946 945 1 939 947 1 947 946 1 940 948 1
		 948 947 1 949 948 1 943 951 1 951 950 1 950 942 1 950 957 1 957 949 1 944 952 1 952 951 1
		 945 953 1 953 952 1 946 954 1 954 953 1 947 955 1 955 954 1 948 956 1 956 955 1 957 956 1
		 951 959 1 959 958 1 958 950 1 958 965 1 965 957 1 952 960 1 960 959 1 953 961 1 961 960 1
		 954 962 1 962 961 1 955 963 1 963 962 1 956 964 1 964 963 1 965 964 1 959 967 1 967 966 1
		 966 958 1 966 973 1 973 965 1 960 968 1 968 967 1 961 969 1 969 968 1 962 970 1 970 969 1
		 963 971 1 971 970 1 964 972 1 972 971 1 973 972 1 967 974 1 974 981 1 981 966 1 981 980 1
		 980 973 1 968 975 1 975 974 1 969 976 1 976 975 1 970 977 1 977 976 1 971 978 1 978 977 1
		 972 979 1 979 978 1 980 979 1 975 984 1 984 983 1 983 974 1 983 982 1 982 981 1 976 985 1
		 985 984 1 977 986 1 986 985 1 978 987 1 987 986 1 979 988 1 988 987 1 980 989 1 989 988 1
		 982 989 1 983 1306 1 1306 1292 1 1292 982 1 1292 1293 1 1293 989 1 984 1305 1 1305 1306 1
		 985 1307 1 1307 1305 1 986 1296 1 1296 1307 1 987 1295 1 1295 1296 1 988 1320 1 1320 1329 1;
	setAttr ".ed[1992:2157]" 1329 987 1 1329 1321 1 1321 1295 1 989 1330 1 1330 1320 1
		 1293 1325 1 1325 1330 1 1070 1071 1 1071 991 1 990 1070 1 1079 1084 1 1084 1070 1
		 1071 1074 1 1074 1011 1 994 995 1 995 993 1 993 992 1 992 994 1 993 1071 1 1070 992 1
		 1081 1080 1 1080 994 1 992 1081 1 1084 1081 1 995 1013 1 1013 1012 1 1012 993 1 1012 1074 1
		 996 997 1 997 995 1 994 996 1 1080 1082 1 1082 996 1 997 1015 1 1015 1013 1 998 999 1
		 999 997 1 996 998 1 1082 1083 1 1083 998 1 999 1014 1 1014 1015 1 1095 999 1 998 1096 1
		 1083 1097 1 1009 1008 1 1008 1001 1 1000 1009 1 1108 1107 1 1107 1009 1 1008 1015 1
		 1004 1005 1 1005 1003 1 1003 1002 1 1002 1004 1 1003 1008 1 1009 1002 1 1106 1105 1
		 1105 1004 1 1002 1106 1 1107 1106 1 1005 1012 1 1013 1003 1 1073 1072 1 1072 1005 1
		 1004 1073 1 1105 1104 1 1104 1073 1 1072 1074 1 1007 1072 1 1073 1006 1 1104 1103 1
		 1018 1019 1 1019 1017 1 1016 1018 1 1056 1060 1 1060 1018 1 1019 1029 1 1029 1028 1
		 1020 1021 1 1021 1019 1 1018 1020 1 1060 1061 1 1061 1020 1 1021 1030 1 1030 1029 1
		 1022 1023 1 1023 1021 1 1020 1022 1 1061 1059 1 1059 1022 1 1023 1031 1 1031 1030 1
		 1024 1025 1 1025 1023 1 1022 1024 1 1059 1058 1 1058 1024 1 1025 1032 1 1032 1031 1
		 1027 1025 1 1024 1026 1 1058 1057 1 1033 1032 1 1029 1036 1 1036 1034 1 1030 1037 1
		 1037 1036 1 1031 1038 1 1038 1037 1 1032 1039 1 1039 1038 1 1040 1039 1 1036 1086 1
		 1086 1035 1 1086 1100 1 1100 1102 1 1037 1087 1 1087 1086 1 1038 1088 1 1088 1087 1
		 1039 1089 1 1089 1088 1 1090 1089 1 1076 1101 1 1101 1091 1 1091 1041 1 1091 1099 1
		 1099 1085 1 1044 1054 1 1054 1055 1 1045 1053 1 1053 1054 1 1046 1052 1 1052 1053 1
		 1047 1051 1 1051 1052 1 1050 1051 1 1058 1051 1 1059 1052 1 1065 1062 1 1062 1053 1
		 1052 1065 1 1061 1065 1 1062 1063 1 1063 1054 1 1064 1055 1 1062 1060 1 1081 1067 1
		 1066 1080 1 1068 1082 1 1084 1075 1 1069 1083 1 1069 1098 1 1340 1101 1 1075 1340 1
		 1079 1340 1 1102 1101 1 1087 1092 1 1092 1100 1 1088 1101 1 1101 1092 1 1089 1091 1
		 1104 1110 1 1110 1109 1 1105 1111 1;
	setAttr ".ed[2158:2323]" 1111 1110 1 1106 1112 1 1112 1111 1 1107 1113 1 1113 1112 1
		 1114 1113 1 1110 1454 1 1454 1453 1 1111 1455 1 1455 1454 1 1112 1456 1 1456 1455 1
		 1113 1457 1 1457 1456 1 1459 1457 1 1118 1117 1 1117 1120 1 1122 1117 1 1217 1212 1
		 1117 1217 1 1216 1217 1 1123 1124 1 1124 1132 1 1132 1131 1 1131 1123 1 1139 1140 1
		 1140 1124 1 1123 1139 1 1131 1138 1 1138 1130 1 1130 1123 1 1130 1146 1 1146 1139 1
		 1124 1125 1 1125 1133 1 1133 1132 1 1140 1141 1 1141 1125 1 1125 1126 1 1126 1134 1
		 1134 1133 1 1141 1142 1 1142 1126 1 1126 1127 1 1127 1135 1 1135 1134 1 1142 1143 1
		 1143 1127 1 1127 1128 1 1128 1136 1 1136 1135 1 1144 1128 1 1128 1129 1 1129 1137 1
		 1137 1136 1 1144 1145 1 1145 1129 1 1129 1130 1 1138 1137 1 1145 1146 1 1132 1528 1
		 1528 1527 1 1527 1131 1 1527 1534 1 1534 1138 1 1133 1529 1 1529 1528 1 1134 1530 1
		 1530 1529 1 1135 1531 1 1531 1530 1 1136 1532 1 1532 1531 1 1137 1533 1 1533 1532 1
		 1534 1533 1 1153 1152 1 1152 1140 1 1139 1153 1 1146 1154 1 1154 1153 1 1151 1141 1
		 1147 1142 1 1158 1155 1 1155 1145 1 1144 1158 1 1157 1158 1 1155 1154 1 1471 1472 1
		 1472 1157 1 1150 1471 1 1467 1470 1 1470 1471 1 1153 1207 1 1207 1209 1 1154 1208 1
		 1208 1207 1 1155 1474 1 1474 1211 1 1211 1154 1 1211 1210 1 1210 1208 1 1158 1473 1
		 1473 1474 1 1472 1473 1 1159 1160 1 1160 1219 1 1219 1218 1 1218 1159 1 1222 1221 1
		 1221 1160 1 1159 1222 1 1218 1443 1 1444 1159 1 1445 1222 1 1160 1171 1 1171 1220 1
		 1220 1219 1 1221 1223 1 1223 1171 1 1163 1164 1 1164 1162 1 1162 1161 1 1161 1163 1
		 1162 1221 1 1222 1161 1 1446 1447 1 1447 1163 1 1161 1446 1 1445 1446 1 1164 1173 1
		 1173 1172 1 1172 1162 1 1172 1223 1 1165 1166 1 1166 1164 1 1163 1165 1 1447 1448 1
		 1448 1165 1 1166 1180 1 1180 1173 1 1193 1192 1 1192 1166 1 1165 1193 1 1448 1449 1
		 1449 1193 1 1192 1181 1 1181 1180 1 1191 1190 1 1190 1168 1 1168 1167 1 1167 1191 1
		 1168 1192 1 1193 1167 1 1491 1191 1 1167 1450 1 1190 1175 1 1175 1174 1 1174 1168 1
		 1174 1181 1 1169 1170 1 1170 1190 1 1191 1169 1 1495 1496 1 1496 1170 1 1169 1495 1;
	setAttr ".ed[2324:2489]" 1492 1169 1 1494 1495 1 1170 1176 1 1176 1175 1 1496 1497 1
		 1497 1176 1 1465 1464 1 1464 1220 1 1171 1465 1 1223 1224 1 1224 1465 1 1173 1204 1
		 1204 1205 1 1205 1172 1 1205 1224 1 1180 1179 1 1179 1204 1 1175 1183 1 1183 1182 1
		 1182 1174 1 1182 1189 1 1189 1181 1 1176 1184 1 1184 1183 1 1176 1177 1 1177 1185 1
		 1185 1184 1 1497 1498 1 1498 1177 1 1177 1178 1 1178 1186 1 1186 1185 1 1208 1178 1
		 1177 1207 1 1498 1209 1 1178 1179 1 1179 1187 1 1187 1186 1 1208 1204 1 1180 1188 1
		 1188 1187 1 1189 1188 1 1183 1195 1 1195 1194 1 1194 1182 1 1194 1188 1 1184 1196 1
		 1196 1195 1 1185 1197 1 1197 1196 1 1186 1202 1 1202 1197 1 1187 1203 1 1203 1202 1
		 1188 1198 1 1198 1203 1 1194 1199 1 1199 1198 1 1195 1200 1 1200 1199 1 1196 1201 1
		 1201 1200 1 1202 1201 1 1200 1203 1 1210 1205 1 1210 1226 1 1226 1224 1 1463 1216 1
		 1206 1462 1 1498 1504 1 1504 1499 1 1211 1225 1 1225 1226 1 1474 1469 1 1469 1225 1
		 1217 1460 1 1460 1461 1 1461 1212 1 1461 1468 1 1219 1214 1 1213 1218 1 1220 1215 1
		 1464 1463 1 1464 1217 1 1465 1460 1 1226 1460 1 1225 1461 1 1469 1468 1 1227 1228 1
		 1228 1236 1 1236 1235 1 1235 1227 1 1404 1417 1 1417 1228 1 1227 1404 1 1235 1242 1
		 1242 1234 1 1234 1227 1 1234 1418 1 1418 1404 1 1228 1229 1 1229 1237 1 1237 1236 1
		 1417 1416 1 1416 1229 1 1229 1230 1 1230 1238 1 1238 1237 1 1416 1411 1 1411 1230 1
		 1230 1231 1 1231 1239 1 1239 1238 1 1411 1412 1 1412 1231 1 1231 1232 1 1232 1240 1
		 1240 1239 1 1425 1232 1 1231 1413 1 1412 1415 1 1232 1233 1 1233 1241 1 1241 1240 1
		 1425 1423 1 1423 1233 1 1233 1234 1 1242 1241 1 1423 1419 1 1419 1234 1 1419 1420 1
		 1420 1418 1 1236 1244 1 1244 1243 1 1243 1235 1 1243 1250 1 1250 1242 1 1237 1245 1
		 1245 1244 1 1238 1246 1 1246 1245 1 1239 1247 1 1247 1246 1 1240 1248 1 1248 1247 1
		 1241 1249 1 1249 1248 1 1250 1249 1 1244 1252 1 1252 1251 1 1251 1243 1 1251 1258 1
		 1258 1250 1 1245 1253 1 1253 1252 1 1246 1254 1 1254 1253 1 1247 1255 1 1255 1254 1
		 1248 1256 1 1256 1255 1 1249 1257 1 1257 1256 1 1258 1257 1 1252 1260 1 1260 1259 1;
	setAttr ".ed[2490:2655]" 1259 1251 1 1259 1265 1 1265 1258 1 1253 1261 1 1261 1260 1
		 1254 1262 1 1262 1261 1 1255 1510 1 1510 1509 1 1509 1254 1 1509 1516 1 1516 1262 1
		 1256 1511 1 1511 1510 1 1257 1264 1 1264 1263 1 1263 1256 1 1263 1512 1 1512 1511 1
		 1265 1264 1 1260 1524 1 1524 1523 1 1523 1259 1 1523 1522 1 1522 1265 1 1261 1525 1
		 1525 1524 1 1262 1518 1 1518 1525 1 1516 1515 1 1515 1518 1 1264 1521 1 1521 1520 1
		 1520 1263 1 1520 1513 1 1513 1512 1 1522 1521 1 1266 1267 1 1267 1298 1 1298 1297 1
		 1297 1266 1 1301 1302 1 1302 1267 1 1266 1301 1 1297 1352 1 1352 1351 1 1351 1266 1
		 1351 1353 1 1353 1301 1 1267 1268 1 1268 1299 1 1299 1298 1 1302 1303 1 1303 1268 1
		 1268 1269 1 1269 1300 1 1300 1299 1 1303 1304 1 1304 1269 1 1360 1341 1 1341 1300 1
		 1269 1360 1 1304 1348 1 1348 1360 1 1345 1324 1 1324 1271 1 1271 1270 1 1270 1345 1
		 1271 1328 1 1328 1344 1 1344 1270 1 1344 1286 1 1286 1287 1 1287 1270 1 1287 1288 1
		 1288 1345 1 1324 1323 1 1323 1272 1 1272 1271 1 1272 1327 1 1327 1328 1 1323 1322 1
		 1322 1273 1 1273 1272 1 1273 1326 1 1326 1327 1 1322 1321 1 1321 1294 1 1294 1273 1
		 1294 1325 1 1325 1326 1 1274 1275 1 1275 1284 1 1284 1283 1 1283 1274 1 1308 1312 1
		 1312 1275 1 1274 1308 1 1283 1293 1 1292 1274 1 1306 1308 1 1275 1276 1 1276 1285 1
		 1285 1284 1 1312 1318 1 1318 1276 1 1276 1277 1 1277 1286 1 1286 1285 1 1318 1343 1
		 1343 1277 1 1277 1278 1 1278 1287 1 1343 1363 1 1363 1278 1 1278 1279 1 1279 1288 1
		 1363 1346 1 1346 1279 1 1279 1280 1 1280 1289 1 1289 1288 1 1346 1317 1 1317 1280 1
		 1280 1281 1 1281 1290 1 1290 1289 1 1317 1315 1 1315 1281 1 1281 1282 1 1282 1291 1
		 1291 1290 1 1315 1309 1 1309 1282 1 1295 1291 1 1282 1296 1 1309 1307 1 1284 1327 1
		 1326 1283 1 1285 1328 1 1289 1324 1 1290 1323 1 1291 1322 1 1320 1294 1 1298 1313 1
		 1313 1311 1 1311 1297 1 1311 1355 1 1355 1352 1 1299 1319 1 1319 1313 1 1341 1319 1
		 1310 1314 1 1314 1302 1 1301 1310 1 1353 1354 1 1354 1310 1 1314 1316 1 1316 1303 1
		 1316 1348 1 1331 1332 1 1332 1306 1 1305 1331 1 1307 1333 1 1333 1331 1 1332 1335 1;
	setAttr ".ed[2656:2821]" 1335 1308 1 1309 1334 1 1334 1333 1 1335 1336 1 1336 1312 1
		 1315 1337 1 1337 1334 1 1354 1349 1 1349 1314 1 1313 1356 1 1356 1355 1 1336 1339 1
		 1339 1318 1 1319 1357 1 1357 1356 1 1349 1350 1 1350 1316 1 1317 1338 1 1338 1337 1
		 1350 1359 1 1359 1348 1 1346 1347 1 1347 1338 1 1339 1342 1 1342 1343 1 1341 1358 1
		 1358 1357 1 1352 1332 1 1331 1351 1 1333 1353 1 1355 1335 1 1334 1354 1 1337 1349 1
		 1356 1336 1 1357 1339 1 1338 1350 1 1347 1359 1 1358 1342 1 1360 1361 1 1361 1358 1
		 1362 1363 1 1342 1362 1 1361 1362 1 1362 1347 1 1361 1359 1 1372 1373 1 1373 1365 1
		 1365 1364 1 1364 1372 1 1365 1431 1 1431 1436 1 1436 1364 1 1364 1371 1 1371 1379 1
		 1379 1372 1 1437 1438 1 1438 1371 1 1364 1437 1 1436 1439 1 1439 1437 1 1373 1374 1
		 1374 1366 1 1366 1365 1 1366 1428 1 1428 1431 1 1374 1375 1 1375 1367 1 1367 1366 1
		 1367 1432 1 1432 1428 1 1375 1376 1 1376 1368 1 1368 1367 1 1368 1430 1 1430 1432 1
		 1376 1377 1 1377 1369 1 1369 1368 1 1369 1433 1 1433 1430 1 1377 1378 1 1378 1370 1
		 1370 1369 1 1370 1429 1 1429 1433 1 1378 1379 1 1371 1370 1 1438 1441 1 1441 1370 1
		 1441 1434 1 1434 1429 1 1380 1381 1 1381 1373 1 1372 1380 1 1379 1387 1 1387 1380 1
		 1381 1382 1 1382 1374 1 1382 1383 1 1383 1375 1 1383 1384 1 1384 1376 1 1384 1385 1
		 1385 1377 1 1385 1386 1 1386 1378 1 1386 1387 1 1388 1389 1 1389 1381 1 1380 1388 1
		 1387 1395 1 1395 1388 1 1389 1390 1 1390 1382 1 1390 1391 1 1391 1383 1 1391 1392 1
		 1392 1384 1 1392 1393 1 1393 1385 1 1393 1394 1 1394 1386 1 1394 1395 1 1396 1397 1
		 1397 1389 1 1388 1396 1 1395 1403 1 1403 1396 1 1397 1398 1 1398 1390 1 1398 1399 1
		 1399 1391 1 1399 1400 1 1400 1392 1 1400 1401 1 1401 1393 1 1401 1402 1 1402 1394 1
		 1402 1403 1 1526 1398 1 1396 1526 1 1402 1526 1 1526 1400 1 1439 1417 1 1404 1437 1
		 1420 1435 1 1435 1404 1 1435 1438 1 1428 1406 1 1405 1431 1 1414 1440 1 1440 1431 1
		 1432 1407 1 1430 1408 1 1433 1409 1 1429 1410 1 1410 1421 1 1421 1422 1 1422 1424 1
		 1424 1410 1 1434 1421 1 1424 1426 1 1411 1414 1 1416 1440 1 1439 1440 1 1421 1420 1;
	setAttr ".ed[2822:2987]" 1419 1422 1 1423 1424 1 1434 1435 1 1452 1454 1 1454 1446 1
		 1490 1489 1 1489 1447 1 1446 1490 1 1455 1490 1 1489 1488 1 1488 1448 1 1488 1487 1
		 1456 1489 1 1457 1488 1 1469 1470 1 1476 1477 1 1477 1470 1 1469 1476 1 1474 1475 1
		 1475 1476 1 1477 1478 1 1478 1471 1 1478 1479 1 1479 1472 1 1479 1480 1 1480 1473 1
		 1480 1475 1 1481 1482 1 1482 1476 1 1475 1481 1 1480 1486 1 1486 1481 1 1482 1483 1
		 1483 1477 1 1483 1484 1 1484 1478 1 1484 1485 1 1485 1479 1 1485 1486 1 1481 1484 1
		 1501 1502 1 1502 1495 1 1502 1503 1 1503 1496 1 1503 1507 1 1507 1497 1 1507 1504 1
		 1507 1506 1 1500 1503 1 1518 1519 1 1519 1508 1 1508 1525 1 1519 1520 1 1521 1508 1
		 1523 1508 1 1510 1517 1 1517 1516 1 1512 1517 1 1513 1514 1 1514 1517 1 1519 1514 1
		 1514 1515 1 1529 1535 1 1535 1527 1 1535 1533 1 1531 1535 1 1537 1545 1 1544 1536 1
		 1551 1543 1 1538 1546 1 1539 1547 1 1540 1548 1 1541 1549 1 1542 1550 1 1 2 1 2 861 1
		 860 1 1 815 8 1 8 9 1 9 816 1 9 60 1 61 10 1 10 9 1 10 817 1 62 11 1 11 10 1 11 818 1
		 695 12 1 12 11 1 12 1442 1 63 13 1 13 12 1 13 819 1 64 14 1 14 13 1 14 820 1 65 15 1
		 15 14 1 15 821 1 66 16 1 16 15 1 16 822 1 67 17 1 17 16 1 17 823 1 68 18 1 18 17 1
		 18 824 1 828 22 1 22 23 1 23 829 1 23 73 1 74 24 1 24 23 1 24 830 1 75 25 1 25 24 1
		 25 831 1 76 26 1 26 25 1 26 832 1 77 27 1 27 26 1 27 833 1 1055 29 1 29 30 1 30 835 1
		 30 79 1 80 31 1 31 30 1 31 836 1 81 32 1 32 31 1 32 837 1 82 33 1 33 32 1 33 838 1
		 83 34 1 34 33 1 34 839 1 84 35 1 35 34 1 35 840 1 85 36 1 36 35 1 36 841 1 86 37 1
		 37 36 1 37 842 1 87 38 1 38 37 1 38 843 1 847 42 1 42 43 1 43 848 1 43 92 1 93 44 1
		 44 43 1 44 849 1 94 45 1 45 44 1 45 850 1 852 47 1 47 48 1 48 853 1 48 97 1;
	setAttr ".ed[2988:3099]" 98 49 1 49 48 1 49 854 1 0 103 1 104 1 1 1 0 1 859 0 1
		 52 53 1 53 858 1 857 52 1 53 102 1 0 53 1 69 19 1 19 18 1 19 825 1 254 255 1 70 20 1
		 20 254 1 20 826 1 1010 254 1 254 19 1 78 28 1 28 27 1 28 834 1 29 300 1 310 309 1
		 29 310 1 1064 310 1 310 28 1 71 21 1 21 20 1 21 827 1 22 72 1 323 325 1 22 323 1
		 1077 323 1 323 21 1 88 39 1 39 38 1 39 844 1 324 326 1 89 40 1 40 324 1 40 845 1
		 1078 324 1 324 39 1 90 41 1 41 40 1 41 846 1 42 91 1 341 342 1 42 341 1 1093 341 1
		 341 41 1 6 813 1 1115 364 1 364 6 1 812 5 1 5 364 1 364 366 1 57 6 1 7 814 1 1116 365 1
		 365 7 1 367 365 1 365 6 1 105 2 1 407 1156 1 2 407 1 407 408 1 54 3 1 3 407 1 3 810 1
		 58 7 1 95 46 1 46 45 1 46 851 1 47 96 1 711 712 1 47 711 1 1458 711 1 711 46 1 8 59 1
		 1462 716 1 716 8 1 459 458 1 458 7 1 717 716 1 716 458 1 458 1206 1 55 4 1 4 3 1
		 4 811 1 5 56 1 722 721 1 5 722 1 1466 722 1 722 4 1 99 50 1 50 49 1 50 855 1 51 856 1
		 1493 749 1 749 51 1 750 749 1 749 50 1 100 51 1 52 101 1 762 763 1 52 762 1 1505 762 1
		 762 51 1;
	setAttr -s 1552 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.71190304 0.64310306 0.282157 -0.71190304
		 0.64310306 0.282157 -0.71190304 0.64310306 0.282157 -0.71190304 0.64310306 0.282157
		 -0.37486809 0.23756504 0.89612317 -0.37486809 0.23756504 0.89612317 0.3430101 -0.3389861
		 0.87603223 0.3430101 -0.3389861 0.87603223 0.78398746 -0.23143384 0.57602257 0.78398764
		 -0.2314329 0.57602274 0.87681687 -0.10476199 -0.46927294 0.87681687 -0.10476199 -0.46927294
		 0.57465279 -0.16562994 -0.8014617 0.57465279 -0.16562994 -0.8014617 -0.53433394 0.027163995
		 -0.84483689 -0.53433394 0.027163995 -0.84483689 -0.8847428 0.35124692 0.30635893
		 -0.8847428 0.35124692 0.30635893 -0.15040703 0.39924708 0.90442216 0.58227319 0.24741206
		 0.77443218 0.86286265 0.0094649959 0.50534981 0.84725773 -0.34930092 -0.40017891
		 0.38184524 -0.37893924 -0.84297049 -0.49150607 -0.10136301 -0.86495513 -0.94509822
		 0.067201018 0.31980208 -0.94509822 0.067201018 0.31980208 -0.35503703 0.22275703
		 0.90792513 0.48784217 0.12373205 0.86411828 0.88290811 -0.26024202 0.39082906 0.76325303
		 -0.60070306 -0.23790902 0.29139015 -0.59681529 -0.74759835 -0.498849 -0.38102198
		 -0.77844197 -0.90747535 0.13162704 0.39895216 -0.90747535 0.13162704 0.39895216 -0.45216012
		 0.33652908 0.82601416 0.33411109 0.43793711 0.83461422 0.97011864 -0.093566962 0.22386391
		 0.77069759 -0.59587473 -0.22573988 0.36774582 -0.75337267 -0.54515374 -0.49256423
		 -0.62242627 -0.60824829 -0.96080333 -0.19156608 0.20039807 -0.96080339 -0.19156589
		 0.20039788 -0.96080333 -0.19156608 0.20039807 -0.96080339 -0.19156589 0.20039788
		 -0.39386085 -0.3194539 0.86187172 -0.39386085 -0.3194539 0.86187172 0.42377612 -0.39435813
		 0.81541121 0.42377612 -0.39435813 0.81541121 0.8731783 -0.31543112 0.37156811 0.8731783
		 -0.31543112 0.37156811 0.97895849 0.034563981 -0.2011109 0.97895849 0.034563981 -0.2011109
		 0.45688912 0.43712112 -0.77471119 0.45688912 0.43712112 -0.77471119 -0.63795191 0.37104893
		 -0.67478889 -0.63795191 0.37104893 -0.67478889 -0.96787649 -0.2114619 0.13601093
		 -0.96787649 -0.2114619 0.13601093 -0.40213278 -0.48075274 0.7792086 0.51357365 -0.44450068
		 0.73393548 0.88849282 -0.28359395 0.36076993 0.96606189 0.19296198 -0.17172697 0.46726093
		 0.55197793 -0.69064289 -0.56042999 0.529926 -0.63647199 -0.8722989 -0.43777394 0.21782698
		 -0.8722989 -0.43777394 0.21782698 -0.38605091 -0.73998785 0.55080187 0.45758912 -0.63453621
		 0.62287718 0.87305897 -0.33523199 0.354101 0.97835213 0.084152006 -0.18906501 0.44775194
		 0.43783394 -0.77962786 -0.55071485 0.30507889 -0.77694273 -0.42467988 -0.55753189
		 0.71330583 -0.42467988 -0.55753189 0.71330583 0.41814306 -0.56058013 0.71477711 0.87577152
		 -0.33254221 0.34991422 0.97270447 -0.078263037 -0.2184511 0.41495201 0.1734 -0.89316702
		 -0.5323329 0.14514697 -0.8339988 -0.91981208 -0.018281002 -0.39193302 -0.92292929
		 -0.075411029 0.37751114 -0.92292929 -0.075411029 0.37751114 -0.27021205 -0.23893404
		 0.93268216 0.44326195 -0.37016198 0.81639385 0.88745993 -0.12548898 0.44347197 0.97778517
		 0.11834602 -0.17300403 0.33486402 0.35781202 -0.8716861 -0.45224616 0.2965121 -0.84116226
		 -0.27010304 0.57860309 0.76958615 -0.27010396 0.57860297 0.76958591 -0.27010304 0.57860309
		 0.76958615 -0.27010304 0.57860309 0.76958615 -0.52451181 0.85072064 -0.034083985
		 -0.52451181 0.85072064 -0.034083985 -0.52451181 0.85072064 -0.034083985 -0.52451181
		 0.85072064 -0.034083985 -0.51537222 0.85086143 0.10210905 -0.51537222 0.85086143
		 0.10210905 -0.28373092 -0.061437983 0.95693374 -0.28373092 -0.061437983 0.95693374
		 -0.28373092 -0.061437983 0.95693374 -0.28373092 -0.061437983 0.95693374 -0.29583687
		 -0.052263983 0.95380765 -0.29583687 -0.052263983 0.95380765 -0.41605085 0.14646395
		 0.89746869 -0.41605085 0.14646395 0.89746869 -0.88885832 0.19202606 0.41600111 -0.8888585
		 0.1920259 0.41600075 -0.99794376 -0.039661992 -0.050349988 -0.99794376 -0.039661992
		 -0.050349988 -0.89797068 -0.080809973 -0.43257186 -0.89797068 -0.080809973 -0.43257186
		 -0.66876936 -0.041970022 -0.74228436 -0.66876936 -0.041970022 -0.74228436 -0.34823495
		 -0.00088599988 -0.93740684 -0.34823495 -0.00088599988 -0.93740684 0.83823436 -0.43115717
		 0.33386615 0.83823436 -0.43115717 0.33386615 0.28064483 -0.40105477 0.87200546 -0.40014213
		 -0.19399506 0.89568532 -0.96231121 -0.014115003 0.27158406 -0.88647807 0.039473005
		 -0.46108404 -0.62306702 0.08168 -0.77789193 0.45679593 0.048380993 -0.88825488 0.85536462
		 -0.39488581 -0.33528584 0.85536462 -0.39488581 -0.33528584 0.45437562 -0.28257176
		 -0.8448053 -0.60598689 -0.12144297 -0.7861498 -0.89571714 0.065522008 -0.43977007
		 -0.9644199 0.036873996 0.26179096 -0.40469402 -0.19594201 0.89321303 0.18530905 -0.37798813
		 0.90707529 -0.42233485 -0.77206874 0.47491387 -0.42233485 -0.77206874 0.47491387
		 -0.40654293 -0.82003987 0.40281194 0.74187493 -0.57610995 -0.34310198 0.74187493
		 -0.57610995 -0.34310198 -0.70358509 -0.20032902 -0.68178904 -0.70358509 -0.20032902
		 -0.68178904 -0.40893182 -0.91182464 0.036750983 -0.26565602 -0.94997615 -0.16423203
		 -0.95306635 0.14636806 0.26503009 -0.95306635 0.14636806 0.26503009 -0.40424082 -0.088266961
		 0.91038358 -0.52317995 -0.019019999 0.85200995 -0.52317995 -0.019019999 0.85200995
		 0.876719 -0.343445 0.33676299 -0.13247894 -0.11971595 0.98392957 -0.063890018 -0.10547603
		 0.99236733 -0.063890018 -0.10547603 0.99236733 -0.86636698 -0.001962 0.49940401 -0.99464697
		 -0.011675999 -0.10266999 -0.44537878 -0.054275978 0.89369559 -0.93222725 0.089785025
		 0.3505581 -0.50828302 -0.82875299 -0.23413 -0.50828302 -0.82875299 -0.23413 -0.15570594
		 -0.035603985 -0.98716158 -0.15570594 -0.035603985 -0.98716158 -0.6852172 -0.24142106
		 -0.68716317 -0.92401111 0.12453201 -0.36151803 -0.81107473 0.48608285 -0.32539392
		 -0.81107473 0.48608285 -0.32539392 -0.81107473 0.48608285 -0.32539392 -0.81107473
		 0.48608285 -0.32539392 -0.2595759 0.58367783 0.76937675 -0.2595759 0.58367783 0.76937675;
	setAttr ".n[166:331]" -type "float3"  -0.45575011 0.68324417 0.57049912 -0.45575011
		 0.68324417 0.57049912 -0.29526189 0.77943373 0.55254275 -0.32945493 0.57089096 0.7520259
		 -0.32945493 0.57089096 0.7520259 -0.4077301 0.61473912 0.6751681 -0.40087622 0.45960826
		 0.79250145 -0.4008759 0.45960787 0.79250181 -0.47464296 0.40622297 0.78083092 -0.36059096
		 0.45865098 0.81216592 -0.47549003 0.65355599 0.588875 -0.63146663 0.74735856 -0.20665191
		 -0.87868208 0.31784102 -0.35622302 -0.87868208 0.31784102 -0.35622302 -0.74488062
		 0.32527685 0.58253568 -0.459108 -0.010621 0.88831699 -0.80618393 0.27109498 0.52590394
		 -0.80618393 0.27109498 0.52590394 -0.5734331 0.036088008 0.81845719 -0.90072107 0.065627001
		 0.42941204 -0.98125041 -0.19034609 -0.030265013 -0.85656685 -0.19151495 -0.47918189
		 -0.73953313 -0.28303802 -0.61072111 -0.33195317 -0.26318011 -0.90583849 -0.166958
		 -0.51685399 -0.83963501 -0.166958 -0.51685399 -0.83963501 -0.63620692 -0.62290597
		 -0.45522398 -0.80467379 -0.48757386 -0.3387799 -0.97585821 -0.21838705 -0.0027920008
		 -0.31224787 0.54776484 -0.77617973 -0.31224787 0.54776484 -0.77617973 -0.31224787
		 0.54776484 -0.77617973 -0.31224787 0.54776484 -0.77617973 -0.20107409 0.46135622
		 -0.86412942 -0.20107409 0.46135622 -0.86412942 -0.41749495 0.62010789 -0.66420186
		 -0.25856897 0.44308695 -0.8583799 -0.16441405 0.3751511 -0.91226625 -0.41816503 0.53771704
		 -0.73211908 -0.23961395 0.39690393 -0.88603187 -0.14814103 0.30276006 -0.9414832
		 -0.4804039 0.29016593 -0.82765681 -0.166457 -0.058143001 -0.98433298 -0.166457 -0.058143001
		 -0.98433298 -0.45720023 0.094589047 -0.88431942 -0.29747 0.252242 -0.920807 -0.14988694
		 -0.42977881 -0.89040667 -0.14988694 -0.42977881 -0.89040667 0.52147496 -0.37178993
		 -0.76800787 0.52147496 -0.37178993 -0.76800787 -0.43687406 0.072908014 0.89656311
		 -0.43687406 0.072908014 0.89656311 -0.90197617 -0.0030450006 0.43177509 -0.06819497
		 -0.75549573 -0.6515947 -0.06819497 -0.75549573 -0.6515947 0.80151302 -0.59627098
		 0.045141999 0.80151254 -0.59627163 0.045141973 -0.48210913 -0.76661021 -0.42412212
		 0.17335996 0.8439768 0.5075919 0.17335996 0.8439768 0.5075919 0.16111594 0.82842368
		 0.53642881 -0.087716982 0.7687999 0.63344491 -0.43805313 0.68641716 0.58046615 -0.32465315
		 0.93534046 0.14049408 -0.34590396 0.93823886 -0.007633999 -0.31502101 0.79729605
		 -0.51485997 0.8019051 -0.58923012 0.098773018 0.8019051 -0.58923012 0.098773018 -0.76905102
		 -0.63437998 -0.078247003 0.53928512 0.83168316 0.13219203 0.53928512 0.83168316 0.13219203
		 0.51034003 0.83732313 0.19606903 0.49691385 0.82373178 0.27302492 0.48439774 0.83914155
		 0.24738687 -0.12940392 0.94384348 0.30399683 -0.44938681 0.89218158 -0.045425978
		 0.11776297 0.99298579 0.010541997 -0.23881391 -0.21383591 0.94722867 -0.23881391
		 -0.21383591 0.94722867 -0.23881391 -0.21383591 0.94722867 -0.23881391 -0.21383591
		 0.94722867 -0.28946394 0.45033991 0.8446328 -0.28946394 0.45033991 0.8446328 -0.4012551
		 0.20421104 0.89291221 -0.4012551 0.20421104 0.89291221 -0.62637323 -0.14327005 0.76624429
		 -0.62637323 -0.14327005 0.76624429 -0.62637323 -0.14327005 0.76624429 -0.62637323
		 -0.14327005 0.76624429 -0.41848782 -0.11347496 0.90110564 -0.41848782 -0.11347496
		 0.90110564 -0.41848782 -0.11347496 0.90110564 -0.73697501 -0.028897 0.67530203 -0.44058517
		 0.39025116 0.80844837 -0.57840896 0.10054499 0.80952692 -0.57840896 0.10054499 0.80952692
		 -0.47748798 0.46045896 0.74831992 -0.62771809 0.09995202 0.77199715 -0.62771809 0.09995202
		 0.77199715 -0.66962683 -0.11629097 0.73353684 -0.66962683 -0.11629097 0.73353684
		 -0.65497226 0.47467017 0.58796221 -0.65497226 0.47467017 0.58796221 -0.71032023 0.036758009
		 0.70291823 -0.71032023 0.036758009 0.70291823 -0.4082298 0.27305385 0.87108552 -0.4082298
		 0.27305385 0.87108552 -0.55316305 0.38758704 0.73741907 -0.83949798 -0.12501401 -0.528786
		 -0.83949798 -0.12501401 -0.528786 -0.83949798 -0.12501401 -0.528786 -0.83949798 -0.12501401
		 -0.528786 -0.58360189 0.086404987 -0.80742985 -0.58360189 0.086404987 -0.80742985
		 -0.95160174 0.12245196 -0.28188592 -0.95160174 0.12245196 -0.28188592 -0.52421081
		 -0.37631887 -0.76392877 -0.52421081 -0.37631887 -0.76392877 -0.14691593 0.045552976
		 -0.98809952 -0.90396887 -0.15311098 -0.39924595 -0.8372218 -0.34103793 -0.4274959
		 -0.76452774 0.096299969 -0.63735676 -0.68274885 0.66298085 -0.30709994 -0.68274885
		 0.66298085 -0.30709994 -0.7808429 0.55936593 0.27819797 -0.7808429 0.55936593 0.27819797
		 -0.91363186 -0.37273097 -0.16232198 -0.91363186 -0.37273097 -0.16232198 -0.90756899
		 0.318434 0.27371201 -0.88465309 0.30518907 0.35248905 -0.88465309 0.30518907 0.35248905
		 -0.94045979 0.14651796 -0.30670491 -0.94045979 0.14651796 -0.30670491 -0.97871095
		 0.14802399 0.142175 -0.97899932 -0.20114006 0.033211011 -0.98178864 0.18285592 -0.051524982
		 -0.98178864 0.18285592 -0.051524982 -0.98787457 0.028519988 0.15261194 -0.99960643
		 0.013425006 0.024632011 -0.83799994 0.28852597 0.46315098 -0.83799994 0.28852597
		 0.46315098 -0.4459402 0.57028222 0.6898663 -0.99593192 -0.013439999 0.089100994 -0.79504508
		 0.30674902 0.52326703 -0.94967276 0.22715795 0.21568696 -0.97977835 -0.085844032
		 0.18073508 -0.97977835 -0.085844032 0.18073508 -0.95350885 -0.030170996 0.29985097
		 -0.95350885 -0.030170996 0.29985097 -0.90013134 -0.12206105 0.41816819 -0.90013134
		 -0.12206105 0.41816819 -0.8791185 -0.3913458 0.27202785 -0.87911826 -0.39134613 0.27202809
		 -0.87911826 -0.39134613 0.27202809 -0.87911826 -0.39134613 0.27202809 -0.48459986
		 -0.19788595 0.85205877 -0.48459986 -0.19788595 0.85205877 0.16637997 0.24110496 0.9561308
		 0.16637997 0.24110496 0.9561308 0.78284508 0.51058799 0.35560301 0.78284508 0.51058799
		 0.35560301 0.88967663 0.38287786 -0.24875692 0.88967663 0.38287786 -0.24875692 0.61610603
		 0.045186006 -0.78636605 0.61610603 0.045186006 -0.78636605 -0.12025201 -0.38514206
		 -0.91498911;
	setAttr ".n[332:497]" -type "float3"  -0.12025201 -0.38514206 -0.91498911 -0.95429498
		 -0.187684 0.232585 -0.95429498 -0.187684 0.232585 -0.52053225 -0.077084027 0.85035539
		 -0.07956402 -0.4077931 -0.90960121 -0.079563946 -0.40779272 -0.90960139 -0.132526
		 -0.939529 0.315788 -0.132526 -0.939529 0.315788 -0.21398094 -0.85130179 0.47905889
		 0.080349021 -0.84664321 0.52606016 0.33386412 -0.88808328 0.31597912 0.55605781 0.64994079
		 0.51805085 0.55605781 0.64994079 0.51805085 -0.93239909 0.34738606 -0.099774018 -0.93239909
		 0.34738606 -0.099774018 0.95383924 0.19119807 0.23159006 -0.9440251 0.071947008 -0.32193202
		 -0.9440251 0.071947008 -0.32193202 0.99376565 0.10287296 0.042976987 0.99376565 0.10287296
		 0.042976987 -0.081960052 0.5203113 0.85003453 -0.081960052 0.5203113 0.85003453 -0.081960052
		 0.5203113 0.85003453 -0.081959978 0.52031088 0.85003477 -0.62734497 -0.69415194 -0.35297498
		 -0.62734497 -0.69415194 -0.35297498 -0.39181784 0.57911384 0.71491677 -0.39181784
		 0.57911384 0.71491677 0.97657359 0.0095679965 0.21497092 0.97657359 0.0095679965
		 0.21497092 0.69576412 -0.70152813 0.15417702 0.69576412 -0.70152813 0.15417702 0.75487572
		 -0.64973074 -0.089512967 0.75487572 -0.64973074 -0.089512967 0.92811018 0.30708507
		 0.21050005 0.92811018 0.30708507 0.21050005 0.46554106 -0.61332703 -0.63804501 0.46554106
		 -0.61332703 -0.63804501 -0.97952384 -0.097134978 -0.17634597 -0.97952384 -0.097134978
		 -0.17634597 -0.73991418 -0.66261816 -0.11603503 -0.19918013 -0.44849026 -0.87131155
		 -0.19918013 -0.44849026 -0.87131155 -0.9682281 0.20940503 -0.13668902 -0.9682281
		 0.20940503 -0.13668902 0.51161295 0.047031991 -0.85792786 0.51161295 0.047031991
		 -0.85792786 0.97965205 0.19224901 0.057638004 0.31658185 -0.46795475 -0.82510257
		 0.31892085 0.52703577 -0.78773266 0.31892085 0.52703577 -0.78773266 -0.97249967 0.11756595
		 -0.20105393 -0.57593107 0.46546906 -0.67204309 -0.83903664 0.22796892 -0.49401179
		 0.7725122 -0.63183314 -0.063339017 -0.37809086 0.86142468 0.33910888 -0.37809086
		 0.86142468 0.33910888 0.30866793 0.8600778 0.40618992 -0.90509075 0.34022591 -0.25506294
		 0.93207544 0.27621186 0.23439787 -0.68477416 -0.62134618 -0.38080609 -0.90185809
		 -0.13693501 0.40975702 -0.90185809 -0.13693501 0.40975702 0.23685113 -0.5786463 0.78042936
		 0.23685113 -0.5786463 0.78042936 -0.7541787 -0.011082996 0.65657574 -0.62165421 0.13194804
		 0.7720983 -0.62165421 0.13194804 0.7720983 -0.78693074 -0.44670287 0.42567188 -0.64538902
		 -0.050135002 0.76220697 -0.86026657 0.2416959 -0.4489148 -0.86026657 0.2416959 -0.4489148
		 -0.93744528 -0.32315108 -0.12949805 -0.93744498 -0.32315201 -0.129498 -0.87554586
		 0.21735197 -0.43148294 -0.17662093 0.33824086 -0.92433661 -0.0024700009 -0.99930537
		 -0.03718501 -0.0024700009 -0.99930537 -0.03718501 -0.0024700009 -0.99930537 -0.03718501
		 0.57277292 0.24857096 -0.78111696 0.62878364 -0.08613795 -0.77279454 0.92116624 -0.3162851
		 0.22675206 0.92116624 -0.3162851 0.22675206 0.94973612 0.30170903 -0.083504014 0.62963492
		 0.39439896 0.66933495 0.62963492 0.39439896 0.66933495 0.80406404 -0.57586908 0.14783701
		 0.92478794 0.34116796 0.16843899 -0.4918929 -0.11915298 0.86246389 -0.4918929 -0.11915298
		 0.86246389 -0.08556398 -0.15801395 0.98372275 0.68615472 -0.14476594 0.7129057 -0.81277412
		 -0.17119703 0.55685705 -0.81277412 -0.17119703 0.55685705 -0.71684182 0.57351488
		 0.39650792 0.84077901 0.415043 0.347606 0.84077901 0.415043 0.347606 -0.35178804
		 0.78981215 0.50243604 -0.35178804 0.78981215 0.50243604 0.92291427 -0.095972024 0.37285209
		 0.12328099 0.90296793 0.41164398 -0.83470547 0.54987067 0.030149981 -0.81659704 -0.56196707
		 -0.13176602 -0.93152857 0.32025585 -0.17230992 0.71915132 -0.15749507 0.67676932
		 0.71915132 -0.15749507 0.67676932 -0.50479317 -0.017576007 0.86306137 -0.50479317
		 -0.017576007 0.86306137 -0.86721998 -0.072307996 0.49264699 0.90951538 -0.23425908
		 0.34337214 -0.0091110049 -0.99888855 0.046246022 -0.983464 -0.170164 0.06199 0.90936393
		 -0.269559 0.31685197 -0.015264997 -0.99958783 0.024313994 -0.96028364 -0.23699191
		 -0.14727594 0.96022707 -0.263212 -0.093185008 -0.0012800003 -0.99999732 -0.0019230006
		 0.043637 -0.99902505 0.0066940007 0.035194997 -0.99936992 -0.0045949994 -0.84381217
		 -0.19169605 -0.50123215 0.55180818 0.14892507 0.8205663 0.55180818 0.14892507 0.8205663
		 0.5518083 0.14892407 0.82056642 0.55180818 0.14892507 0.8205663 -0.04857102 -0.20782508
		 0.97695935 -0.04857102 -0.20782508 0.97695935 -0.35441208 -0.31011209 0.88216925
		 -0.35441208 -0.31011209 0.88216925 -0.73340225 -0.38757211 0.55848819 -0.73340225
		 -0.38757211 0.55848819 -0.30648208 -0.36272308 -0.88005722 -0.30648208 -0.36272308
		 -0.88005722 0.45039904 -0.036934003 -0.89206308 0.45039904 -0.036934003 -0.89206308
		 0.40328982 -0.16249792 -0.90052861 0.40328982 -0.16249792 -0.90052861 0.37009776
		 -0.070781954 0.92629236 0.37009776 -0.070781954 0.92629236 -0.043279 -0.24608302
		 0.96828204 -0.38213694 -0.32978895 0.8632558 -0.66187584 -0.50290287 0.55588585 -0.28458795
		 -0.39106694 -0.87525785 0.41159299 0.192698 -0.89076298 0.24232396 0.25089198 -0.93719387
		 -0.01879799 -0.17636392 0.98414552 -0.01879799 -0.17636392 0.98414552 -0.43263984
		 0.26686391 0.8611657 -0.43263984 0.26686391 0.8611657 -0.35485697 -0.27039996 0.89496392
		 -0.82632321 0.13375305 0.5470832 -0.78253496 -0.324388 0.53142399 -0.89619386 -0.27104798
		 -0.35123998 -0.39127189 -0.37037092 -0.84245574 -0.29426983 -0.56816566 -0.76850051
		 0.65610009 0.57675809 0.48670605 0.65610009 0.57675809 0.48670605 0.21917306 0.29136008
		 0.93116724 0.52009684 0.85310465 0.041372985 0.52009606 0.85310513 0.041373003 0.52009606
		 0.85310513 0.041373003 0.10687804 0.31552714 0.94287843 0.60572577 0.44171485 0.66180378
		 0.60572577 0.44171485 0.66180378 -0.53732473 -0.1788909 0.82418454 -0.74517292 -0.54946995
		 0.37788898 -0.70417571 -0.59258378 -0.39112785;
	setAttr ".n[498:663]" -type "float3"  -0.11864798 -0.50478786 -0.8550508 0.82590514
		 0.49365109 -0.27237707 0.27062097 -0.71159792 -0.64837694 0.27062097 -0.71159792
		 -0.64837694 0.72704667 0.5288927 -0.43780777 0.51981598 0.47037199 -0.713121 0.82493156
		 -0.26073217 -0.50150436 0.57651293 0.12351899 -0.80769789 0.14752397 -0.63122588
		 -0.7614398 0.14752397 -0.63122588 -0.7614398 0.24224502 -0.24703202 -0.93823904 0.092204019
		 0.38682908 0.91753024 0.092204019 0.38682908 0.91753024 -0.37339792 0.21423495 0.9025948
		 -0.79630804 0.089816004 0.59818608 -0.91609514 -0.065890007 -0.39551005 -0.40589306
		 -0.062978007 0.91174811 -0.40589306 -0.062978007 0.91174811 0.091147006 -0.37540802
		 -0.9223671 0.091147006 -0.37540802 -0.9223671 -0.81158531 -0.23250309 0.53597724
		 -0.026692992 -0.62201178 -0.78255272 -0.038308986 -0.99187064 -0.12134696 -0.038308986
		 -0.99187064 -0.12134696 0.73760796 -0.066182993 -0.67197794 0.73760796 -0.066182993
		 -0.67197794 -0.0077139973 0.012375996 0.99989367 -0.25299498 -0.81704396 -0.51810491
		 0.26392803 -0.82299507 0.50301206 0.31458303 -0.78184205 -0.53829408 0.37425208 0.15108004
		 0.91493726 0.45831481 -0.16856092 0.87265956 0.94850987 -0.10862599 0.29753897 0.94850987
		 -0.10862599 0.29753897 0.57134092 -0.26876497 -0.77545792 0.53305101 0.060210995
		 0.84393793 0.34647012 0.44155216 0.82764131 0.26915997 -0.82284492 -0.50047892 0.32845506
		 -0.16140103 -0.93062717 0.38917804 -0.34121203 -0.85563707 -0.27416199 -0.960931
		 -0.038036998 -0.27416199 -0.960931 -0.038036998 -0.27416199 -0.960931 -0.038036998
		 -0.27416199 -0.960931 -0.038036998 -0.50340611 -0.85159409 -0.14618403 -0.50340563
		 -0.85159439 -0.14618389 -0.65234101 -0.75218105 -0.093139008 -0.65234101 -0.75218105
		 -0.093139008 -0.76025701 -0.64683902 0.060070999 -0.83145911 -0.49177706 0.25851703
		 -0.9805702 -0.17602003 0.086597018 -0.9609254 0.23130886 -0.15204792 -0.9294135 0.25834486
		 -0.26353085 -0.90825206 0.054666005 -0.41483703 -0.149351 -0.91539192 -0.37383401
		 -0.149351 -0.91539192 -0.37383401 -0.24116701 -0.919698 -0.309829 -0.34735897 -0.91072392
		 -0.22343598 -0.78185189 -0.17640997 0.59798592 -0.51195902 -0.84622192 -0.14766999
		 -0.3985498 0.51258677 0.76053458 -0.3985498 0.51258677 0.76053458 0.019857997 0.38756895
		 0.92162681 0.019857997 0.38756895 0.92162681 0.019857997 0.38756895 0.92162681 -0.63728487
		 0.28003895 0.71794581 -0.26291499 0.333112 0.90548998 -0.28976801 0.50983602 0.81000108
		 -0.49542484 0.2768949 0.82333678 -0.40478888 0.55096287 0.72978485 -0.52543092 0.67562795
		 0.51715493 -0.51274496 0.79351789 0.32775295 -0.057504985 0.83966881 -0.54004586
		 -0.057504985 0.83966881 -0.54004586 -0.49224976 0.24908789 0.83405358 -0.45311493
		 0.038809996 0.89060688 -0.9019087 -0.16136295 0.40065286 -0.80098099 -0.36015299
		 0.478246 -0.80098099 -0.36015299 0.478246 -0.52480596 -0.46069595 0.71577787 -0.52480596
		 -0.46069595 0.71577787 -0.45262581 0.14864594 0.87922364 -0.45262581 0.14864594 0.87922364
		 -0.62447196 0.14121599 0.76817495 -0.84814405 -0.25866604 0.46232402 -0.74899811
		 0.12658301 0.65036803 -0.74899811 0.12658301 0.65036803 -0.49619409 0.12980603 0.85845315
		 -0.82258171 0.040779985 0.56718278 -0.79243135 -0.21881311 0.56936222 -0.5835278
		 0.021973994 0.81179577 -0.36469814 -0.12023405 0.92333043 -0.48487088 -0.04526199
		 0.87341374 -0.630364 -0.081808999 0.77197701 -0.68718213 -0.18714403 0.70196712 -0.48606193
		 -0.13651599 0.8631959 -0.39713001 -0.099423997 0.91236103 -0.39713001 -0.099423997
		 0.91236103 -0.62497282 -0.60034585 0.49899286 -0.62497282 -0.60034585 0.49899286
		 -0.42048013 0.32670909 0.84643823 -0.42048013 0.32670909 0.84643823 -0.44732192 0.83612585
		 0.31748495 -0.5671882 0.40754411 0.71568525 -0.90463245 -0.077374041 0.41911024 -0.59168291
		 -0.093442991 0.80073696 -0.55839711 -0.029015008 0.82906622 -0.51096398 0.056382999
		 0.85775101 -0.97610176 -0.21472295 0.033457991 -0.87648606 -0.21153301 0.43246502
		 -0.73439986 0.34138095 0.58661389 -0.45339295 -0.0039829994 0.89130187 -0.45339295
		 -0.0039829994 0.89130187 -0.51536989 0.16555697 0.84082383 -0.99603182 0.086880982
		 0.019295996 -0.79654527 -0.6038602 -0.029471008 -0.48652625 -0.4227002 0.76460236
		 -0.48742008 0.10656703 0.86664015 -0.48742008 0.10656703 0.86664015 -0.77741402 -0.54611897
		 -0.31206 -0.77741402 -0.54611897 -0.31206 0.47708872 -0.84194559 0.25201988 -0.16330107
		 -0.17980307 0.97005343 -0.19674304 0.66101712 -0.72411913 -0.19674304 0.66101712
		 -0.72411913 -0.71451896 0.69958496 -0.0065929997 -0.87084365 0.48914382 0.048678983
		 -0.5792762 -0.81506824 -0.010144003 -0.8837437 0.3138769 0.34709987 -0.89717478 -0.14637396
		 0.41671589 -0.72515196 -0.60424393 -0.33021796 -0.98049062 -0.17604594 0.087440968
		 -0.8731969 -0.065108992 -0.48299894 -0.9713527 0.12915897 -0.19947894 -0.79661959
		 0.28032586 -0.53555077 -0.80285984 0.4599959 -0.37923592 -0.50836313 0.63019216 -0.58687717
		 -0.83324134 0.07217703 -0.54817826 -0.9218027 0.016758995 -0.38729689 -0.85527831
		 -0.091193028 -0.51008117 -0.64006788 -0.018941997 -0.76808482 -0.51396084 0.09125796
		 -0.85294563 -0.51396084 0.09125796 -0.85294563 -0.8661992 0.086386025 -0.49217513
		 -0.94568229 0.099677034 -0.30943409 -0.92187083 0.26443195 -0.28324893 -0.95522207
		 0.29587403 -0.0030560002 -0.88981485 0.43235594 0.14593798 -0.5030818 0.44305986
		 -0.74202877 -0.5030818 0.44305986 -0.74202877 -0.82425004 0.33279103 -0.45810702
		 -0.47062412 0.73117316 -0.49386111 -0.47062412 0.73117316 -0.49386111 -0.71473897
		 0.59837097 -0.36207795 -0.91773885 0.39480394 -0.043418996 -0.92359567 0.27025589
		 -0.27190587 -0.82366812 0.52325708 -0.21857002 -0.62528807 0.68744713 0.36936605
		 -0.62528807 0.68744713 0.36936605 -0.45096585 0.84305871 -0.29305592 -0.45096585
		 0.84305871 -0.29305592 -0.9336279 0.34019396 0.11228099 -0.44411498 0.88333791 -0.14991999
		 -0.44411498 0.88333791 -0.14991999 -0.73495817 0.66299719 -0.14237703 -0.95743412
		 0.28132203 -0.064636007;
	setAttr ".n[664:829]" -type "float3"  0.16422898 0.089956984 0.98231184 0.89691508
		 0.22400102 0.38127002 0.97205681 0.13587499 -0.19142497 0.6713087 0.0030349987 0.74117166
		 0.6713081 0.0030350008 0.74117219 0.6713087 0.0030349987 0.74117166 0.9758178 0.13421898
		 -0.17252497 0.9758178 0.13421898 -0.17252497 0.99741882 0.069705985 -0.017226996
		 0.99741882 0.069705985 -0.017226996 0.90768582 0.00060499989 0.41964993 0.90768582
		 0.00060499989 0.41964993 0.99786603 0.010042 0.064517997 0.91261196 -0.0081339991
		 -0.40874597 0.97773921 -0.20928904 -0.014971004 0.97773921 -0.20928904 -0.014971004
		 -0.085621968 -0.32893589 -0.94046271 -0.085621968 -0.32893589 -0.94046271 -0.85179585
		 -0.32005796 -0.41473693 -0.73708266 -0.54864269 -0.3945888 -0.73708296 -0.54864293
		 -0.39458796 -0.94364053 -0.1982079 0.26505885 -0.87961483 -0.4186019 0.22594295 -0.46842989
		 -0.090203978 0.87888378 -0.26015586 -0.8575266 -0.44380975 -0.26015586 -0.8575266
		 -0.44380975 -0.47186601 -0.78246701 0.40630999 0.31295279 -0.6666826 0.67645758 0.33099502
		 0.09520901 -0.93881708 0.33099502 0.09520901 -0.93881708 0.20165212 0.16118409 -0.96610355
		 -0.34366122 -0.41007325 0.8448295 -0.34366107 -0.41007406 0.84482914 -0.039725982
		 -0.31489885 0.94829351 -0.53408909 -0.67431206 0.50995308 0.088690042 -0.55996227
		 0.82375747 0.088690042 -0.55996227 0.82375747 -0.20135507 -0.52604216 0.82627827
		 -0.20135507 -0.52604216 0.82627827 -0.23723596 -0.70286286 0.67059886 -0.60574824
		 -0.64427632 0.4668802 -0.76689065 -0.5692457 0.29637486 -0.56529111 0.60407114 0.56173313
		 -0.35652086 0.68469268 0.63567978 -0.32143295 0.6731199 0.66602588 -0.51364672 0.033754982
		 0.85733753 -0.51364672 0.033754982 0.85733753 -0.43375313 0.56852621 0.69902515 -0.43375313
		 0.56852621 0.69902515 -0.79107827 0.10672305 0.60233325 -0.79107827 0.10672305 0.60233325
		 -0.38600406 -0.051666006 0.92104912 -0.31118804 0.32746303 0.89214909 -0.34419706
		 0.27598104 0.89742011 -0.81630951 0.40830177 0.40856877 -0.81630951 0.40830177 0.40856877
		 -0.87975329 0.40311712 -0.25205308 -0.56384283 0.23404393 0.79202569 0.37601596 -0.25516796
		 0.89078689 0.83503467 -0.52923477 0.15042494 0.82032979 -0.57039583 -0.04132399 0.14345095
		 -0.4623408 -0.87502158 -0.87177193 0.31373698 0.37627497 -0.87177193 0.31373698 0.37627497
		 -0.64702922 0.13603204 0.75023228 0.24831787 -0.45605475 0.85460651 0.79402483 -0.45140591
		 0.40713292 0.80155653 -0.52221072 -0.29120982 0.36790505 -0.39514709 -0.8417272 -0.38208702
		 0.096900009 -0.91903204 -0.90256602 0.15772299 0.40062201 -0.90256602 0.15772299
		 0.40062201 -0.94356793 -0.29985997 -0.14058298 -0.75122207 -0.29044202 0.59271306
		 0.0031530012 -0.63238323 0.77464932 0.024818989 -0.99966151 -0.0078029963 0.051557992
		 -0.99524289 -0.082663991 -0.30088615 -0.88108844 -0.36489818 0.65863901 -0.58455902
		 0.47379896 0.65863901 -0.58455902 0.47379896 0.65863901 -0.58455902 0.47379896 0.65863901
		 -0.58455902 0.47379896 0.42640382 0.31658989 0.84731966 0.42640382 0.31658989 0.84731966
		 0.40557298 -0.094023995 0.90921396 0.40557298 -0.094023995 0.90921396 0.35521287
		 -0.12794095 0.92598861 0.35521287 -0.12794095 0.92598861 0.35521287 -0.12794095 0.92598861
		 0.35521287 -0.12794095 0.92598861 0.48613492 -0.043791991 0.87278581 0.23778708 -0.19219607
		 0.95211238 0.23778708 -0.19219607 0.95211238 0.29234007 0.43193111 0.85321325 0.29234007
		 0.43193111 0.85321325 0.40049982 0.2116009 0.89152956 0.40049982 0.2116009 0.89152956
		 0.45450485 0.14987595 0.87804472 0.45450485 0.14987595 0.87804472 0.52409917 -0.45901915
		 0.71737123 0.52409881 -0.45901883 0.7173717 0.52409881 -0.45901883 0.7173717 0.52409881
		 -0.45901883 0.7173717 0.51714814 0.058135014 0.85391927 0.51714814 0.058135014 0.85391927
		 0.27477908 -0.96078634 -0.037230015 0.27477908 -0.96078634 -0.037230015 0.15203702
		 -0.91603118 -0.37117606 0.15203702 -0.91603118 -0.37117606 0.26730397 0.33039096
		 0.90520185 0.2673049 0.33039087 0.90520161 0.2673049 0.33039087 0.90520161 0.2673049
		 0.33039087 0.90520161 0.78167689 -0.17675798 0.59811193 0.78167689 -0.17675798 0.59811193
		 0.52946818 0.049759015 0.84686923 -0.010184994 0.3861388 0.92238444 -0.010184994
		 0.3861388 0.92238444 0.39605594 0.51396692 0.76090586 0.39605594 0.51396692 0.76090586
		 0.39605594 0.51396692 0.76090586 0.63247007 0.28268802 0.72115815 -0.54588914 0.82852924
		 0.12467703 -0.54588914 0.82852924 0.12467703 -0.162505 0.84209901 0.51425803 -0.162505
		 0.84209901 0.51425803 0.25927198 0.58534992 0.76820797 0.25927198 0.58534992 0.76820797
		 0.40139112 0.45969015 0.79219323 0.40139112 0.45969015 0.79219323 0.40139112 0.45969015
		 0.79219323 0.40139112 0.45969015 0.79219323 0.62113297 0.13164198 0.77256989 0.62113297
		 0.13164198 0.77256989 0.64499009 -0.048988007 0.76261914 0.64499015 -0.048987009
		 0.76261914 0.64499009 -0.048988007 0.76261914 0.64499009 -0.048988007 0.76261914
		 0.43698296 0.073252998 0.89648193 0.43698296 0.073252998 0.89648193 0.29541805 -0.05232301
		 0.95393419 0.29541805 -0.05232301 0.95393419 0.28600898 -0.083258994 0.95460296 0.28600898
		 -0.083258994 0.95460296 0.42406192 -0.75806284 0.49549189 0.42406213 -0.7580632 0.49549112
		 0.13693805 -0.12440804 0.98273629 0.13693805 -0.12440804 0.98273629 0.062285002 -0.10558201
		 0.99245805 0.062285002 -0.10558201 0.99245805 -0.74399734 -0.57402128 -0.34200519
		 -0.74399734 -0.57402128 -0.34200519 -0.74399734 -0.57402128 -0.34200519 -0.74399734
		 -0.57402128 -0.34200519 -0.87438589 -0.34767598 0.33848298 -0.87438589 -0.34767598
		 0.33848298 -0.002064999 -0.46440876 -0.88561857 -0.002064999 -0.46440876 -0.88561857
		 -0.002064999 -0.46440876 -0.88561857 -0.20059998 -0.65724796 -0.72648793 0.17144904
		 -0.043456007 -0.98423409 0.17144904 -0.043456007 -0.98423409 0.5242542 -0.79453027
		 -0.30639711 0.5242542 -0.79453027 -0.30639711 0.35165185 -0.010535995 -0.93607157
		 0.35165185 -0.010535995 -0.93607157;
	setAttr ".n[830:995]" -type "float3"  0.33049792 -0.26430595 -0.90604275 0.33049792
		 -0.26430595 -0.90604275 0.16722302 -0.51773208 -0.83904111 0.16722302 -0.51773208
		 -0.83904111 0.068822004 -0.75568604 -0.65130806 0.068822004 -0.75568604 -0.65130806
		 0.12514502 -0.67491806 -0.72720307 0.12514502 -0.67491806 -0.72720307 0.15097199
		 -0.42944396 -0.89038491 0.15097199 -0.42944396 -0.89038491 0.14735305 0.30183312
		 -0.94190437 0.14735305 0.30183312 -0.94190437 0.14735305 0.30183312 -0.94190437 0.14735305
		 0.30183312 -0.94190437 0.163774 0.37551901 -0.91223001 0.163774 0.37551901 -0.91223001
		 0.31149104 0.54718405 -0.77689314 0.31149104 0.54718405 -0.77689314 0.31149104 0.54718405
		 -0.77689314 0.31149104 0.54718405 -0.77689314 0.30884194 0.80558187 -0.50562292 0.30884194
		 0.80558187 -0.50562292 -0.11290397 0.99360085 0.0031759993 -0.11290397 0.99360085
		 0.0031759993 0.054457996 0.84079093 -0.53861392 0.054457996 0.84079093 -0.53861392
		 0.19534895 0.66173285 -0.7238428 0.19534895 0.66173285 -0.7238428 0.64151025 -0.017569005
		 -0.76691324 0.64151025 -0.017569005 -0.76691324 0.64151025 -0.017569005 -0.76691324
		 0.64151025 -0.017569005 -0.76691324 0.73866391 0.30440497 -0.60142595 0.73866391
		 0.30440497 -0.60142595 0.51776391 0.087346993 -0.85105288 0.51776391 0.087346993
		 -0.85105288 0.50211394 0.44436494 -0.7419039 0.50211394 0.44436494 -0.7419039 0.47117689
		 0.73010182 -0.49491787 0.47117689 0.73010182 -0.49491787 0.45310792 0.84237081 -0.29172695
		 0.45310792 0.84237081 -0.29172695 0.44051316 0.88560832 -0.14712605 0.44051316 0.88560832
		 -0.14712605 0.62610793 0.68569195 0.37123498 0.62610793 0.68569195 0.37123498 0.62610793
		 0.68569195 0.37123498 0.62610793 0.68569195 0.37123498 0.44939187 0.5670718 0.69027281
		 0.44939187 0.5670718 0.69027281 0.44939187 0.5670718 0.69027281 0.63181579 0.67733479
		 0.37686387 0.44182289 0.38791987 0.80889475 0.44182289 0.38791987 0.80889475 0.42981115
		 -0.10923903 0.89628637 0.42981115 -0.10923903 0.89628637 0.54709834 0.38256726 0.7445305
		 0.54709834 0.38256726 0.7445305 0.80640072 0.27107692 0.52558082 0.80640072 0.27107692
		 0.52558082 0.80640072 0.27107692 0.52558082 0.80640072 0.27107692 0.52558082 0.81688511
		 0.40631607 0.40939707 0.81688511 0.40631607 0.40939707 0.81106758 0.48543876 -0.32637185
		 0.81106758 0.48543876 -0.32637185 0.8793087 0.40397686 -0.2522279 0.30997086 0.26988989
		 0.9116345 0.30997086 0.26988989 0.9116345 0.56449604 0.23395303 0.79158711 -0.23513415
		 -0.57969338 0.78017145 -0.23513396 -0.5796929 0.78017187 -0.37728012 -0.25432205
		 0.89049423 -0.80074412 -0.59045708 0.10084301 -0.80074412 -0.59045708 0.10084301
		 -0.83387214 -0.53093404 0.15088502 -0.80122566 -0.59678674 0.043393981 -0.80122566
		 -0.59678674 0.043393981 -0.81687701 -0.57526398 -0.042229999 -0.52074295 -0.36977297
		 -0.76947695 -0.52074295 -0.36977297 -0.76947695 -0.14233403 -0.4629041 -0.87490618
		 0.87274092 0.313068 0.37458199 0.87274092 0.313068 0.37458199 0.87274092 0.313068
		 0.37458199 0.87274092 0.313068 0.37458199 0.90130448 0.16340108 0.4011862 0.90130466
		 0.16340092 0.40118581 0.93399179 0.24270195 -0.26221195 0.93399179 0.24270195 -0.26221195
		 0.93416727 0.25141105 -0.25322706 0.64505106 0.13703802 0.75175107 0.64505106 0.13703802
		 0.75175107 0.73671615 -0.038184009 0.67512316 -0.25216997 -0.45575693 0.85363686
		 -0.25216997 -0.45575693 0.85363686 -0.14450201 -0.52234906 0.84039909 -0.79387116
		 -0.45137209 0.40747008 -0.79387116 -0.45137209 0.40747008 -0.79501802 -0.57023001
		 0.206843 -0.80289906 -0.52039409 -0.29076302 -0.80289906 -0.52039409 -0.29076302
		 -0.83010942 -0.54975659 -0.093198933 -0.36970896 -0.39275593 -0.84205586 -0.36970896
		 -0.39275593 -0.84205586 -0.08055 -0.49992099 -0.86231703 0.71385986 0.64096189 0.28208497
		 0.71385986 0.64096189 0.28208497 0.83206886 0.35509393 -0.42610994 0.37690818 0.2349671
		 0.8959524 -0.3437981 -0.3399381 0.87535417 -0.78386527 -0.23288409 0.57560426 -0.87680012
		 -0.10446201 -0.46937108 -0.57365209 -0.16710602 -0.80187207 0.88532424 0.35083207
		 0.30515209 0.88532424 0.35083207 0.30515209 0.87350124 0.18220404 -0.45143911 0.15146402
		 0.39784604 0.90486306 -0.58379692 0.24685597 0.77346188 -0.86316669 0.0095999967
		 0.5048278 -0.84637642 -0.35063317 -0.40087822 -0.38193282 -0.37771383 -0.84348065
		 0.94540489 0.067420989 0.31884798 0.94540489 0.067420989 0.31884798 0.94769639 -0.14212106
		 -0.28578511 0.3553279 0.22366194 0.90758878 -0.48816377 0.12412294 0.86388057 -0.88265955
		 -0.25858188 0.39248881 -0.76408994 -0.59958494 -0.23804298 -0.29289979 -0.59785861
		 -0.74617344 0.90765715 0.13141002 0.39861003 0.90765715 0.13141002 0.39861003 0.91967601
		 -0.28352901 -0.27167499 0.45389509 0.33764708 0.82460517 -0.33445802 0.43485403 0.83608603
		 -0.96902692 -0.093474992 0.22858098 -0.77298582 -0.59327787 -0.22475395 -0.37160501
		 -0.751562 -0.54503602 0.82409996 0.137897 0.54940301 0.82409996 0.137897 0.54940301
		 0.89721209 -0.27458602 -0.34585103 0.43680778 0.26719388 0.85895658 -0.21899398 0.29231897
		 0.93090886 -0.97709107 0.11423401 0.17956501 -0.82566595 -0.26169398 -0.49979198
		 -0.53888088 -0.5294469 -0.65520483 0.7949211 0.089077018 0.60013807 0.7949211 0.089077018
		 0.60013807 0.91834319 -0.05295701 -0.3922261 0.37559304 0.20602801 0.90359414 -0.090094961
		 0.39125484 0.91586167 -0.52006 0.85312992 0.041314997 -0.52006 0.85312992 0.041314997
		 -0.29722783 0.43966874 0.84755355 -0.57997507 0.11704402 -0.80618215 -0.57997572
		 0.11704395 -0.80618167 -0.52039409 0.46932206 -0.71339107 -0.23635492 -0.24861091
		 -0.93932366 0.96247602 -0.014631 0.27097201 0.96247602 -0.014631 0.27097201 0.96247602
		 -0.014631 0.27097201 0.96247602 -0.014631 0.27097201 0.96385974 0.037813988 0.26371294
		 0.96385974 0.037813988 0.26371294 0.88613355 0.041713979 -0.46154878 0.88613355 0.041713979
		 -0.46154878;
	setAttr ".n[996:1161]" -type "float3"  0.89562285 0.06545499 -0.43997195 0.40049407
		 -0.19355103 0.8956241 0.40049407 -0.19355103 0.8956241 0.40261811 -0.19620806 0.89409232
		 -0.28051701 -0.401521 0.87183201 -0.28051701 -0.401521 0.87183201 -0.83774298 -0.43328601
		 0.33234 -0.83774298 -0.43328601 0.33234 -0.94889891 -0.167955 -0.26717401 -0.94889891
		 -0.167955 -0.26717401 -0.45934486 0.050702985 -0.88680971 -0.45934486 0.050702985
		 -0.88680971 0.96065003 -0.192324 0.200407 0.96065003 -0.192324 0.200407 0.8986029
		 0.072800994 -0.43268093 0.39387497 -0.31978899 0.86174095 -0.42372811 -0.39261013
		 0.81627923 -0.87381917 -0.31359807 0.37161309 -0.97875386 0.024077998 -0.20361999
		 -0.45721692 0.4191969 -0.78436387 0.9677586 -0.21162291 0.13659795 0.9677586 -0.21162291
		 0.13659795 0.91607136 0.25715208 -0.30771112 0.40170488 -0.48086384 0.77936077 -0.513394
		 -0.44433901 0.73415899 -0.88831776 -0.2815119 0.3628259 -0.96793669 0.18031794 -0.17488293
		 -0.45686594 0.57261193 -0.68072689 0.87170923 -0.43864211 0.21844006 0.87170923 -0.43864211
		 0.21844006 0.95267761 0.033787984 -0.30209887 0.38492492 -0.7385928 0.55345589 -0.45771289
		 -0.63508183 0.62222981 -0.87357396 -0.33433798 0.35367596 -0.97651643 0.095298037
		 -0.19322008 -0.44445989 0.43279189 -0.78431278 0.8455385 -0.37606922 0.3789942 0.8455385
		 -0.37606922 0.3789942 0.91844982 -0.013848999 -0.39529493 0.42270997 -0.55905992
		 0.71327996 -0.41917503 -0.56005907 0.71458107 -0.87678725 -0.33267808 0.34723109
		 -0.97277415 -0.078086011 -0.21820404 -0.415806 0.173594 -0.89273202 0.92308563 -0.074953973
		 0.37721986 0.92308563 -0.074953973 0.37721986 0.93547928 0.071783021 -0.34601408
		 0.27178201 -0.24938001 0.92948598 -0.44113111 -0.3755891 0.81506819 -0.88808298 -0.130125
		 0.44088101 -0.97846133 0.10899003 -0.17531304 -0.33728912 0.34942913 -0.87414831
		 0.24377993 -0.80326778 0.54344481 0.24377993 -0.80326778 0.54344481 0.16919796 -0.92809474
		 0.33168092 -0.14660406 -0.80524027 0.57453924 -0.43921098 -0.80925995 0.39011797
		 -0.79529375 -0.59410381 -0.12061697 -0.32493907 -0.43266305 -0.84096211 0.18966688
		 -0.85450345 -0.48358071 0.93598765 0.33793989 -0.098608963 0.93598765 0.33793989
		 -0.098608963 0.97241807 0.11089501 -0.20519601 0.42693901 0.672903 0.60408998 -0.55012393
		 0.65137196 0.52256894 -0.95499212 0.17879702 0.23668903 -0.98288721 0.17365202 0.06146301
		 -0.28970009 0.72168815 -0.62868118 -0.28970009 0.72168815 -0.62868118 -0.86575222
		 0.40532011 -0.2935791 0.58031189 0.45569491 -0.67496687 0.83995813 0.22830203 -0.49228907
		 0.47313026 0.40433919 0.78272444 0.47313026 0.40433919 0.78272444 0.69707602 -0.0066889999
		 0.71696597 0.32971591 0.57140386 0.75152183 0.47453201 0.65443099 0.58867598 0.47453201
		 0.65443099 0.58867598 0.47453201 0.65443099 0.58867598 0.47453201 0.65443099 0.58867598
		 0.74620724 0.32305309 0.58207518 0.74620724 0.32305309 0.58207518 0.29605114 0.77898633
		 0.5527513 0.29605091 0.77898675 0.55275083 0.63286906 0.74643606 -0.205694 0.63286841
		 0.74643654 -0.20569415 0.82162976 0.48116186 -0.3056269 0.52560782 0.84994274 -0.036520988
		 0.41819504 0.53700006 -0.73262805 0.41819504 0.53700006 -0.73262805 0.4807409 0.28813395
		 -0.8281709 0.17867394 0.97307163 -0.14562695 0.17867394 0.97307163 -0.14562695 0.27629495
		 0.96084076 -0.021120995 0.43581098 0.68819892 0.58004397 0.43581098 0.68819892 0.58004397
		 0.43581098 0.68819892 0.58004397 0.43581098 0.68819892 0.58004397 -0.49004766 0.83675045
		 0.24433985 -0.49004766 0.83675045 0.24433985 0.093311042 0.76519436 0.63700128 0.093311042
		 0.76519436 0.63700128 -0.5030548 0.82227868 0.26607087 0.40673012 -0.82022625 0.40224311
		 0.40673012 -0.82022625 0.40224311 0.52726316 -0.02644901 0.84929031 0.41355401 0.14566401
		 0.89875197 0.42601225 -0.90346646 0.047559027 0.42601225 -0.90346646 0.047559027
		 0.86674285 -0.0032279992 0.49874488 0.89111567 0.19175492 0.41126984 0.28164187 -0.94543558
		 -0.16379693 0.28164187 -0.94543558 -0.16379693 0.99452382 -0.012661998 -0.10373998
		 0.99788302 -0.04318 -0.048631001 0.65591091 -0.72182989 -0.22077698 0.65591091 -0.72182989
		 -0.22077698 0.94714242 -0.15163007 -0.28271812 0.90374786 -0.047764994 -0.42539194
		 0.57213283 0.03718099 0.81931776 0.90178668 0.064528979 0.42733684 0.98095334 -0.19196008
		 -0.029696012 0.85648286 -0.19150998 -0.47933394 0.71605772 0.10247196 0.69047868
		 0.75431156 -0.012285993 0.65640163 0.90230924 -0.0037360012 0.43107313 0.97613072
		 -0.21717292 -0.0021879992 0.80486345 -0.48705527 -0.33907521 0.66712278 -0.74110776
		 0.075540975 0.66712278 -0.74110776 0.075540975 -0.11686602 -0.35281006 0.92836815
		 0.40179378 -0.092901945 0.9110055 0.95145255 0.15158793 0.26787889 0.92976266 0.057471979
		 -0.36364588 0.93451345 0.081705958 0.34642279 0.93451375 0.081705987 0.3464219 0.78617424
		 -0.44765711 0.42606711 0.90288776 -0.13486797 0.40817192 0.29055893 0.51072091 0.80915982
		 0.40371671 0.55151659 0.72996044 0.52461606 0.67653209 0.51680005 0.51329899 0.79301196
		 0.32810998 0.49397007 0.27848604 0.82367414 0.64667702 0.27975699 0.70960897 0.88456178
		 0.31341892 0.3454259 0.86831081 0.49325487 0.052306987 0.45816216 0.045207016 0.88771832
		 0.58592469 0.024514988 0.80999458 0.2694419 -0.47585085 0.83723772 0.2694419 -0.47585085
		 0.83723772 0.2694419 -0.47585085 0.83723772 0.2694419 -0.47585085 0.83723772 0.66038328
		 -0.11702305 0.74175435 0.66038328 -0.11702305 0.74175435 0.37782103 0.68331903 0.62476104
		 0.37782103 0.68331903 0.62476104 0.64240611 0.48059309 0.59694612 0.27645496 -0.6587069
		 0.69976985 0.27645496 -0.6587069 0.69976985 0.62603116 0.082767025 0.77539319 0.61752713
		 -0.60282314 0.5052371 0.61752713 -0.60282314 0.5052371 0.58473217 0.082786024 0.80699122
		 0.76476401 -0.55540001 0.326599 0.76476401 -0.55540001 0.326599 0.55833888 0.60563785
		 0.56697488;
	setAttr ".n[1162:1327]" -type "float3"  0.55833888 0.60563785 0.56697488 0.35993895
		 0.66849089 0.65081787 0.35993895 0.66849089 0.65081787 0.41191113 0.27524909 0.86865824
		 0.78560525 0.12620904 0.60571915 0.78560525 0.12620904 0.60571915 0.60090196 0.49693891
		 0.62607396 0.64528501 0.13125999 0.75258094 0.51117003 0.051035002 0.85796309 0.3749111
		 -0.051608011 0.92562318 0.3080129 0.34313291 0.88734877 0.36207286 0.47580382 0.8015697
		 0.8395834 0.29052579 0.45901468 0.79861259 0.30612385 0.51817578 0.56659311 0.3971431
		 0.72197616 0.56659311 0.3971431 0.72197616 0.88326848 -0.22901614 0.40913123 0.88326848
		 -0.22901614 0.40913123 0.97838902 -0.205825 0.019773999 0.89076406 0.42839602 0.15171102
		 0.94805938 0.23012009 0.2196091 0.5918119 -0.093320988 0.8006559 0.5918119 -0.093320988
		 0.8006559 0.90522856 -0.078335963 0.41764182 0.63538682 -0.15409896 0.75666183 0.66214305
		 -0.74328804 -0.095339008 0.66214305 -0.74328804 -0.095339008 0.66214305 -0.74328804
		 -0.095339008 0.66214305 -0.74328804 -0.095339008 0.75951087 -0.64768487 0.060394987
		 0.75951087 -0.64768487 0.060394987 0.89706212 -0.18008803 0.40354407 0.89706212 -0.18008803
		 0.40354407 0.90190166 -0.16159092 0.40057683 0.98020285 -0.18078499 0.080740996 0.98020285
		 -0.18078499 0.080740996 0.98020285 -0.18078499 0.080740996 0.98020285 -0.18078499
		 0.080740996 0.73038679 -0.59997785 -0.32643792 0.73038679 -0.59997785 -0.32643792
		 0.95378518 -0.027427007 0.29923505 0.95378518 -0.027427007 0.29923505 0.96136844
		 0.2269311 -0.15579806 0.9613685 0.22693089 -0.15579793 0.87553138 -0.061772026 -0.47919622
		 0.98165047 0.18319589 -0.052929971 0.92840779 0.25815895 -0.26723194 0.92840779 0.25815895
		 -0.26723194 0.95180047 0.12193406 -0.28143916 0.91972071 0.011535997 -0.39240384
		 0.91972071 0.011535997 -0.39240384 0.91972071 0.011535997 -0.39240384 0.91972071
		 0.011535997 -0.39240384 0.6016227 0.079486966 -0.79481566 0.6016227 0.079486966 -0.79481566
		 0.94419616 0.10563301 -0.31198606 0.94419616 0.10563301 -0.31198606 0.92347789 0.26977396
		 -0.27278298 0.92347789 0.26977396 -0.27278298 0.92377502 0.26478299 -0.27664 0.95685101
		 0.28294501 -0.066169001 0.8229329 0.040010996 0.56672794 0.8229329 0.040010996 0.56672794
		 0.86149675 -0.12165996 0.49297285 0.97013104 -0.155158 0.186472 0.97013104 -0.155158
		 0.186472 0.99953806 0.015395001 0.026203003 0.14563398 0.044925995 -0.98831797 0.14563398
		 0.044925995 -0.98831797 0.50255889 -0.37689289 -0.77806574 0.19963194 0.78701574
		 -0.58374083 0.35782516 0.89252937 0.27450413 0.35782516 0.89252937 0.27450413 0.94129938
		 0.31515312 0.12097105 0.85861528 0.42092016 0.29258507 0.85861528 0.42092016 0.29258507
		 0.98707736 0.02727001 0.15790705 0.97768557 -0.20708892 0.035285987 0.77115422 0.093230024
		 -0.62978518 0.77115422 0.093230024 -0.62978518 0.67797208 0.66181707 -0.31992504
		 0.77120304 0.56439906 0.29444802 0.89913833 0.32802311 0.28974313 0.97870874 0.14933495
		 0.14081296 0.99350893 -0.019753998 -0.11202599 0.89110696 0.30144599 0.339203 0.84664869
		 0.0078179976 0.53209484 0.86241239 -0.39617217 0.31510714 0.80151987 -0.35861495
		 0.47849894 0.93358284 0.34148493 0.10867897 0.70663482 -0.24528992 0.66370183 0.5441438
		 -0.021838993 0.83870769 0.63060296 -0.081986994 0.77176297 0.63060296 -0.081986994
		 0.77176297 0.7492519 -0.54008591 0.38331294 0.7492519 -0.54008591 0.38331294 0.7492519
		 -0.54008591 0.38331294 0.7492519 -0.54008591 0.38331294 -0.28318298 -0.82588488 0.48756695
		 -0.28318298 -0.82588488 0.48756695 0.68845206 -0.61014205 -0.39212304 0.68845206
		 -0.61014205 -0.39212304 0.24970606 -0.81835818 -0.51762611 0.52619898 -0.18690401
		 0.82956707 0.52619898 -0.18690401 0.82956707 -0.23880008 -0.37108111 0.89737022 -0.10814598
		 0.31950295 0.94139379 -0.10814598 0.31950295 0.94139379 -0.37893599 0.146515 0.91375101
		 -0.65747428 0.57588124 0.48588923 -0.65747428 0.57588124 0.48588923 -0.60312295 0.44391394
		 0.66270894 -0.82707983 0.49189588 -0.27198794 -0.82707983 0.49189588 -0.27198794
		 -0.68257594 0.018599998 -0.73057795 -0.68257594 0.018599998 -0.73057795 -0.48887396
		 -0.016732998 -0.87219393 -0.27206707 -0.70897317 -0.65064317 0.037180007 -0.99118721
		 -0.12714402 0.87265891 -0.39559197 0.28630996 0.87265891 -0.39559197 0.28630996 0.82226533
		 -0.45967814 -0.33552313 0.48804316 -0.20253205 0.84899622 -0.16884905 0.24076207
		 0.95578432 -0.7839762 0.50931209 0.35494009 -0.89029592 0.38288897 -0.24651399 -0.61342406
		 0.041680004 -0.78865308 0.95237654 -0.18964691 0.23877388 0.95237643 -0.18964709
		 0.23877411 0.87964916 -0.31414807 -0.3571111 0.52453482 -0.079737976 0.84764677 -0.15421005
		 0.095208019 0.98344022 -0.89508915 0.22221905 0.38656709 -0.97184551 0.13848493 -0.19062591
		 -0.66201007 -0.14022201 -0.73626113 0.94762808 -0.190542 0.25630999 0.94762808 -0.190542
		 0.25630999 0.85443294 -0.31464696 -0.41345096 0.47722203 -0.089960009 0.87416607
		 -0.12909804 -0.020528007 0.99141932 -0.88814402 0.236037 0.39431801 -0.88814402 0.236037
		 0.39431801 -0.67673099 0.0089480001 0.73617601 -0.9783209 0.13083598 -0.16053098
		 -0.54873472 -0.15935791 -0.82066756 -0.54873472 -0.15935791 -0.82066756 -0.91672194
		 -0.0080399988 -0.39944497 0.87995249 -0.42301023 0.21620812 0.87995249 -0.42301023
		 0.21620812 0.73728287 -0.54978788 -0.39261594 0.48319203 -0.146107 0.86323708 -0.151235
		 -0.067199998 0.986211 -0.6482771 -0.020400004 0.76113117 -0.44366613 -0.3406221 -0.82893723
		 -0.44366613 -0.3406221 -0.82893723 -0.91072905 -0.029603003 -0.41194203 0.49681696
		 -0.087963991 0.86338592 0.49681696 -0.087963991 0.86338592 0.49681696 -0.087963991
		 0.86338592 0.49681696 -0.087963991 0.86338592 0.083301984 -0.13251898 0.98767376
		 0.083301984 -0.13251898 0.98767376 0.35119411 0.79006422 0.50245517 0.35119411 0.79006422
		 0.50245517 -0.04004002 0.79538137 0.60478532 0.40640017 0.54586226 0.73271638;
	setAttr ".n[1328:1493]" -type "float3"  0.40640017 0.54586226 0.73271638 0.079144038
		 0.48509523 0.87087244 0.49716985 -0.021621995 0.86738378 0.49716985 -0.021621995
		 0.86738378 0.026003988 -0.13048194 0.99110961 -0.0033029998 -0.99959087 0.028409999
		 -0.0033029998 -0.99959087 0.028409999 0.0088799987 -0.99886692 0.046754997 -0.62806284
		 -0.090245977 -0.77291185 -0.62806284 -0.090245977 -0.77291185 -0.62806284 -0.090245977
		 -0.77291185 -0.62806338 -0.090246044 -0.77291143 0.20351304 -0.060386013 -0.97720826
		 0.20351304 -0.060386013 -0.97720826 0.0038830012 -0.99935031 -0.035831012 0.0038830012
		 -0.99935031 -0.035831012 -0.054237973 -0.9984495 0.012522995 -0.57789218 0.20027706
		 -0.79115725 -0.57789218 0.20027706 -0.79115725 0.18345395 0.32219788 -0.92872661
		 -0.48559389 -0.54070985 -0.68689984 -0.48559389 -0.54070985 -0.68689984 0.20385903
		 -0.43076807 -0.87913615 -0.51013768 0.047421969 -0.85878444 0.78998107 -0.59995508
		 -0.12642701 0.78998107 -0.59995508 -0.12642701 0.78998107 -0.59995508 -0.12642701
		 0.78998107 -0.59995508 -0.12642701 0.65736675 -0.66027474 -0.36318889 0.65736675
		 -0.66027474 -0.36318889 0.98102832 0.12928104 -0.14446405 0.98102832 0.12928104 -0.14446405
		 0.87125331 0.12728204 -0.47404319 0.93442768 -0.33075687 -0.13207896 0.8222152 -0.32520908
		 -0.46712011 -0.0060950001 -0.99982303 0.017798999 -0.011004998 -0.99992788 0.0048139994
		 -0.049045973 -0.99877053 0.0072079962 -0.022140989 -0.99961454 0.016749993 -0.91853768
		 -0.32560888 0.22420393 -0.91853768 -0.32560888 0.22420393 -0.96066332 -0.26135981
		 -0.093898937 -0.93874013 0.26989904 0.21429303 -0.93874013 0.26989904 0.21429303
		 -0.95392722 0.28792605 -0.084389016 -0.70416093 -0.69275594 0.15571299 -0.70416093
		 -0.69275594 0.15571299 -0.77931094 -0.62351298 -0.062497996 0.81803 -0.12604401 0.56119502
		 0.81803 -0.12604401 0.56119502 0.74290287 0.60024691 0.29630893 0.73892564 0.53096068
		 0.4148128 -0.68480903 -0.142214 0.71471101 -0.68480903 -0.142214 0.71471101 -0.70137376
		 0.52291983 0.48438585 -0.63502389 0.37132493 0.67739385 0.38006312 0.86026627 0.33984411
		 0.38006312 0.86026627 0.33984411 -0.30603507 0.85946214 0.40947205 0.90804487 0.33468795
		 -0.25186998 -0.93532574 0.27035093 0.22820194 0.68114394 -0.62494993 -0.381419 -0.8214646
		 -0.55031878 0.14948292 -0.9238078 -0.098318979 0.37001693 0.88446826 -0.41220111
		 0.21864606 0.85979724 0.24170507 -0.44980812 0.90490365 0.39552984 0.15717994 -0.84411573
		 0.40742287 0.34853292 -0.9258343 0.33876911 0.16753006 -0.90734023 -0.23752406 0.3468661
		 -0.94780618 -0.25327605 0.19368705 0.84302449 -0.1941981 -0.50159431 0.98204738 -0.17120905
		 0.07918603 0.0098649981 -0.99977976 0.018522996 0.0029659993 -0.99998575 0.0044419989
		 -0.63636863 -0.030176984 0.77079457 -0.63636863 -0.030176984 0.77079457 -0.63636863
		 -0.030176984 0.77079457 -0.63636863 -0.030176984 0.77079457 -0.45002002 -0.16372801
		 0.87788105 -0.45002002 -0.16372801 0.87788105 -0.73924619 -0.048018012 -0.67172116
		 -0.73924667 -0.048017979 -0.67172068 -0.69548571 -0.52558076 -0.4899638 -0.69548571
		 -0.52558076 -0.4899638 -0.94966978 -0.10573097 0.29486993 0.019535007 -0.17753607
		 0.9839204 0.019535007 -0.17753607 0.9839204 0.0068939971 0.011008996 0.99991566 0.35760492
		 -0.26816395 0.89454281 0.35760492 -0.26816395 0.89454281 0.40547013 -0.062029019
		 0.91200131 0.78237075 -0.33347487 0.52601379 0.78237075 -0.33347487 0.52601379 0.81623477
		 -0.22728093 0.53113484 0.39451 -0.361485 -0.84480202 0.39451 -0.361485 -0.84480202
		 0.53902799 -0.46279198 -0.70375592 -0.32881194 -0.16383997 -0.93007481 -0.32881194
		 -0.16383997 -0.93007481 -0.23608691 -0.36822984 -0.89926064 -0.38584188 -0.3417789
		 -0.85692078 -0.39374393 -0.31492296 -0.8635909 -0.5487358 0.16223094 0.82010376 -0.5487358
		 0.16223094 0.82010376 -0.61721188 -0.032707993 -0.78611684 0.04819601 -0.20767306
		 0.97701025 0.354386 -0.31026199 0.88212699 0.73687506 -0.38475004 0.55586201 0.30580294
		 -0.36923292 -0.87758285 -0.44935209 -0.034504008 -0.89268816 -0.36746702 -0.088565007
		 0.92581004 -0.36746702 -0.088565007 0.92581004 -0.64844298 0.218987 -0.72908598 0.042438
		 -0.246139 0.96830499 0.38194993 -0.33033997 0.86312789 0.66175896 -0.50314599 0.55580497
		 0.28435785 -0.39127079 -0.87524158 -0.41160706 0.19222301 -0.89085913 -0.24566698
		 -0.34828097 0.90462595 -0.24566698 -0.34828097 0.90462595 -0.87332559 -0.16261192
		 -0.45919475 0.041631982 -0.31688884 0.94754857 0.34576806 -0.41004708 0.84398216
		 0.53511715 -0.67437017 0.50879711 0.213662 -0.70124203 -0.68015301 -0.338052 0.095701002
		 -0.93624902 -0.087595001 -0.56478798 0.82057399 -0.32143489 -0.77725571 -0.54088181
		 -0.26176888 0.30906987 0.91430455 0.024053007 -0.62301219 -0.78184223 0.024053007
		 -0.62301219 -0.78184223 0.024053007 -0.62301219 -0.78184223 0.98085344 -0.17328307
		 0.088879034 0.9808535 -0.17328291 0.088878952 0.97166061 0.12995096 -0.19745493 0.51516795
		 0.16557597 0.84094387 0.51516795 0.16557597 0.84094387 0.45348784 -0.0039489986 0.89125371
		 0.99319434 0.11604104 0.0099740038 0.79860389 -0.60025686 -0.043857992 0.46288979
		 -0.44561878 0.76626164 0.17080599 -0.17797899 0.9690969 0.17080599 -0.17797899 0.9690969
		 -0.41762209 -0.51869613 0.7460202 0.48000705 0.11141302 0.87016112 0.93742162 0.054624978
		 0.34388489 0.7826615 -0.54423928 -0.30206719 0.71590996 0.59728694 -0.36155397 0.82402277
		 0.52293682 -0.21799894 0.89446944 0.44473621 -0.046196021 -0.31140208 -0.67213917
		 0.67175716 -0.31140208 -0.67213917 0.67175716 -0.935067 0.048285 0.35116699 -0.99657094
		 0.0080419993 0.082350992 0.63344532 0.29398715 0.71576434 0.071364991 -0.0057049994
		 0.99743396 0.071364991 -0.0057049994 0.99743396 -0.076465003 -0.60824198 0.79005998
		 -0.076465003 -0.60824198 0.79005998 0.060487993 -0.99596387 0.066310994 -0.017386002
		 -0.96058303 -0.27744904 -0.088496007 -0.91042209 -0.40410402 -0.45589009 -0.51833504
		 0.72352815 -0.44583115 0.18888006 0.87496221 -0.23637293 0.025117993 0.97133768;
	setAttr ".n[1494:1551]" -type "float3"  0.032123003 0.54008204 0.84099913 -0.11719694
		 0.50117069 0.8573755 0.49578068 0.86803544 0.026758984 0.2229891 -0.067207031 0.97250146
		 0.22298889 -0.067206964 0.97250152 -0.2030969 -0.049482975 0.97790748 -0.13272303
		 -0.073526025 0.98842221 -0.066970997 -0.187865 0.979909 -0.21032615 -0.91343766 0.34841725
		 -0.17941207 -0.96370429 0.19770005 -0.17941207 -0.96370429 0.19770005 0.49712196
		 -0.80849391 -0.31497198 0.35415789 -0.58960283 -0.72590679 0.19022293 -0.12831196
		 -0.97331971 -0.029689003 -0.98696709 -0.15816 0.11136601 0.19474503 -0.97451115 0.135253
		 -0.18262 -0.973836 0.064638987 -0.46991688 -0.88034081 0.034747001 -0.77198201 -0.63469398
		 -0.14409503 0.56470913 -0.81261319 -0.14409503 0.56470913 -0.81261319 0.15175299
		 0.54968899 -0.82147002 0.40323907 0.91287112 0.063754007 0.12570703 0.11038403 -0.98590726
		 0.12570703 0.11038403 -0.98590726 -0.076615989 0.073269993 -0.99436486 -0.16493398
		 0.52593595 0.8343789 0.20787999 0.87977594 0.42752796 0.20787999 0.87977594 0.42752796
		 0.19292399 0.87223601 0.44942701 -0.079548001 0.561584 0.823587 -0.079548001 0.561584
		 0.823587 -0.063082017 -0.13219602 0.98921424 0.081686981 -0.41736788 0.90505874 -0.12025098
		 0.52389985 0.84324884 -0.24335298 0.012132999 0.96986192 -0.010486997 -0.70479274
		 -0.70933574 -0.064839005 -0.090734012 -0.9937622 -0.064839005 -0.090734012 -0.9937622
		 -0.012528998 0.26628894 -0.96381181 0.083284974 0.49813789 -0.86308879 0.063410006
		 -0.19780603 0.9781881 0.063410006 -0.19780603 0.9781881 -0.039339978 -0.12114093
		 0.99185544 0.12454397 0.27418295 0.95357877 0.12454397 0.27418295 0.95357877 0.23274708
		 0.69181228 0.68353832 -0.24339396 0.31585494 0.91705781 0.2623871 0.70551425 -0.65833324
		 -0.034493007 0.51693213 -0.85533118 0.052645989 -0.17810696 0.98260182 -0.16033293
		 0.077831969 0.9839896 -0.24600792 -0.61526281 0.74895376 -0.077399008 0.081310004
		 0.99367905 -0.10860693 0.4724977 -0.87461448 0.17976801 0.92764509 -0.32735002 0.17976801
		 0.92764509 -0.32735002 -0.17443502 0.97818208 0.11283701;
	setAttr -s 1550 -ch 6200 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 -4 5 6
		mu 0 4 4 0 3 5
		f 4 7 -7 8 9
		mu 0 4 6 4 5 7
		f 4 10 -10 11 12
		mu 0 4 8 6 7 9
		f 4 13 -13 14 15
		mu 0 4 10 11 12 13
		f 4 16 -16 17 18
		mu 0 4 14 10 13 15
		f 4 19 -19 20 21
		mu 0 4 16 14 15 17
		f 4 22 -2 23 -22
		mu 0 4 17 2 1 16
		f 4 -3 24 25 26
		mu 0 4 3 2 18 19
		f 4 -6 -27 27 28
		mu 0 4 5 3 19 20
		f 4 -9 -29 29 30
		mu 0 4 7 5 20 21
		f 4 -12 -31 31 32
		mu 0 4 9 7 21 22
		f 4 -15 -33 33 34
		mu 0 4 13 12 23 24
		f 4 -18 -35 35 36
		mu 0 4 15 13 24 25
		f 4 -21 -37 37 38
		mu 0 4 17 15 25 26
		f 4 39 -25 -23 -39
		mu 0 4 26 18 2 17
		f 4 -26 40 41 42
		mu 0 4 19 18 27 28
		f 4 -28 -43 43 44
		mu 0 4 20 19 28 29
		f 4 -30 -45 45 46
		mu 0 4 21 20 29 30
		f 4 -32 -47 47 48
		mu 0 4 22 21 30 31
		f 4 -34 -49 49 50
		mu 0 4 24 23 32 33
		f 4 -36 -51 51 52
		mu 0 4 25 24 33 34
		f 4 -38 -53 53 54
		mu 0 4 26 25 34 35
		f 4 55 -41 -40 -55
		mu 0 4 35 27 18 26
		f 4 -42 56 57 58
		mu 0 4 28 27 36 37
		f 4 -44 -59 59 60
		mu 0 4 29 28 37 38
		f 4 -46 -61 61 62
		mu 0 4 30 29 38 39
		f 4 -48 -63 63 64
		mu 0 4 31 30 39 40
		f 4 -50 -65 65 66
		mu 0 4 33 32 41 42
		f 4 -52 -67 67 68
		mu 0 4 34 33 42 43
		f 4 -54 -69 69 70
		mu 0 4 35 34 43 44
		f 4 71 -57 -56 -71
		mu 0 4 44 36 27 35
		f 4 72 73 74 75
		mu 0 4 45 46 47 48
		f 4 76 -76 77 78
		mu 0 4 49 45 48 50
		f 4 79 -79 80 81
		mu 0 4 51 49 50 52
		f 4 82 -82 83 84
		mu 0 4 53 51 52 54
		f 4 85 -85 86 87
		mu 0 4 55 56 57 58
		f 4 88 -88 89 90
		mu 0 4 59 55 58 60
		f 4 91 -91 92 93
		mu 0 4 61 59 60 62
		f 4 94 -74 95 -94
		mu 0 4 62 47 46 61
		f 4 -75 96 97 98
		mu 0 4 48 47 63 64
		f 4 -78 -99 99 100
		mu 0 4 50 48 64 65
		f 4 -81 -101 101 102
		mu 0 4 52 50 65 66
		f 4 -84 -103 103 104
		mu 0 4 54 52 66 67
		f 4 -87 -105 105 106
		mu 0 4 58 57 68 69
		f 4 -90 -107 107 108
		mu 0 4 60 58 69 70
		f 4 -93 -109 109 110
		mu 0 4 62 60 70 71
		f 4 111 -97 -95 -111
		mu 0 4 71 63 47 62
		f 4 -98 112 113 114
		mu 0 4 64 63 72 73
		f 4 -100 -115 115 116
		mu 0 4 65 64 73 74
		f 4 -102 -117 117 118
		mu 0 4 66 65 74 75
		f 4 -104 -119 119 120
		mu 0 4 67 66 75 76
		f 4 -106 -121 121 122
		mu 0 4 69 68 77 78
		f 4 -108 -123 123 124
		mu 0 4 70 69 78 79
		f 4 -110 -125 125 126
		mu 0 4 71 70 79 80
		f 4 127 -113 -112 -127
		mu 0 4 80 72 63 71
		f 4 -116 128 129 130
		mu 0 4 74 73 81 82
		f 4 -118 -131 131 132
		mu 0 4 75 74 82 83
		f 4 -120 -133 133 134
		mu 0 4 76 75 83 84
		f 4 -122 -135 135 136
		mu 0 4 78 77 85 86
		f 4 -124 -137 137 138
		mu 0 4 79 78 86 87
		f 4 -126 -139 139 140
		mu 0 4 80 79 87 88
		f 4 -128 -141 141 142
		mu 0 4 72 80 88 89
		f 4 143 -129 -114 -143
		mu 0 4 89 81 73 72
		f 4 144 -144 145 146
		mu 0 4 90 81 89 91
		f 4 147 -130 -145 148
		mu 0 4 92 82 81 90
		f 4 -132 -148 149 150
		mu 0 4 83 82 92 93
		f 4 -134 -151 151 152
		mu 0 4 84 83 93 94
		f 4 -136 -153 153 154
		mu 0 4 86 85 95 96
		f 4 -138 -155 155 156
		mu 0 4 87 86 96 97
		f 4 -140 -157 157 158
		mu 0 4 88 87 97 98
		f 4 -146 -142 -159 159
		mu 0 4 91 89 88 98
		f 4 160 161 162 163
		mu 0 4 99 100 101 102
		f 4 164 165 166 167
		mu 0 4 103 104 105 106
		f 4 168 169 -168 170
		mu 0 4 107 108 103 106
		f 4 171 172 173 174
		mu 0 4 109 110 111 112
		f 4 175 -174 176 177
		mu 0 4 113 112 111 114
		f 4 178 -175 179 180
		mu 0 4 115 109 112 116
		f 4 181 -181 182 183
		mu 0 4 117 115 116 118
		f 4 184 -184 185 186
		mu 0 4 119 117 118 120
		f 4 187 -187 188 189
		mu 0 4 121 119 120 122
		f 4 190 -190 191 192
		mu 0 4 123 121 122 124
		f 4 193 194 -193 195
		mu 0 4 125 126 123 124
		f 4 -83 196 197 198
		mu 0 4 51 53 127 128
		f 4 -80 -199 199 200
		mu 0 4 49 51 128 129
		f 4 -77 -201 201 202
		mu 0 4 45 49 129 130
		f 4 -73 -203 203 204
		mu 0 4 46 45 130 131
		f 4 -96 -205 205 206
		mu 0 4 61 46 131 132
		f 4 -92 -207 207 208
		mu 0 4 59 61 132 133
		f 4 -89 -209 209 210
		mu 0 4 55 59 133 134
		f 4 211 -197 -86 -211
		mu 0 4 134 135 56 55
		f 4 212 -212 213 214
		mu 0 4 136 135 134 137
		f 4 -214 -210 215 216
		mu 0 4 137 134 133 138
		f 4 -216 -208 217 218
		mu 0 4 138 133 132 139
		f 4 -218 -206 219 220
		mu 0 4 139 132 131 140
		f 4 -220 -204 221 222
		mu 0 4 140 131 130 141
		f 4 -222 -202 223 224
		mu 0 4 141 130 129 142
		f 4 -224 -200 225 226
		mu 0 4 142 129 128 143
		f 4 -198 -213 227 -226
		mu 0 4 128 127 144 143
		f 4 228 229 -172 230
		mu 0 4 145 146 110 109
		f 4 231 -231 -179 232
		mu 0 4 147 145 109 115
		f 4 233 234 -215 235
		mu 0 4 148 149 136 137
		f 4 236 -219 237 238
		mu 0 4 150 138 139 151
		f 4 239 -236 -217 -237
		mu 0 4 150 148 137 138
		f 4 240 -233 -182 241
		mu 0 4 152 147 115 117
		f 4 -242 -185 242 243
		mu 0 4 152 117 119 153
		f 4 244 245 -223 246
		mu 0 4 154 155 140 141
		f 4 247 -247 -225 248
		mu 0 4 156 154 141 142
		f 4 249 -232 250 251
		mu 0 4 157 158 159 160
		f 4 -228 -235 252 253
		mu 0 4 143 144 161 162
		f 4 254 -229 -250 255
		mu 0 4 163 164 158 157
		f 4 256 -249 -227 -254
		mu 0 4 162 156 142 143
		f 4 257 -256 258 259
		mu 0 4 165 163 157 166
		f 4 -260 260 -257 261
		mu 0 4 165 166 156 162
		f 4 -251 -241 262 263
		mu 0 4 160 159 167 168
		f 4 -244 264 265 -263
		mu 0 4 167 169 170 168
		f 4 266 -248 -261 267
		mu 0 4 171 154 156 166
		f 4 -259 -252 268 -268
		mu 0 4 166 157 160 171
		f 4 269 -238 -221 -246
		mu 0 4 155 151 139 140
		f 4 -245 -267 270 271
		mu 0 4 155 154 171 172
		f 4 272 -266 273 -272
		mu 0 4 172 168 170 155
		f 4 -269 -264 -273 -271
		mu 0 4 171 160 168 172
		f 4 274 -195 275 276
		mu 0 4 173 123 126 174
		f 4 -277 277 278 279
		mu 0 4 175 176 177 178
		f 4 280 -240 281 -279
		mu 0 4 177 148 150 178
		f 4 282 -191 -275 283
		mu 0 4 179 121 123 173
		f 4 284 -270 -274 285
		mu 0 4 180 151 155 170
		f 4 286 -243 -188 -283
		mu 0 4 179 153 119 121
		f 4 -286 -265 -287 287
		mu 0 4 180 170 169 181
		f 4 -284 -280 288 -288
		mu 0 4 181 175 178 180
		f 4 -282 -239 -285 -289
		mu 0 4 178 150 151 180
		f 4 289 290 291 292
		mu 0 4 182 183 184 185
		f 4 -161 293 294 295
		mu 0 4 100 99 186 187
		f 4 296 297 -171 298
		mu 0 4 188 189 107 106
		f 4 -299 -167 299 300
		mu 0 4 188 106 105 190
		f 4 301 -162 302 303
		mu 0 4 191 101 100 192
		f 4 -304 304 -301 305
		mu 0 4 191 192 188 190
		f 4 306 -297 -305 307
		mu 0 4 193 189 188 192
		f 4 -308 -303 -296 308
		mu 0 4 193 192 100 187
		f 4 309 310 -163 311
		mu 0 4 194 195 102 101
		f 4 -312 -302 312 313
		mu 0 4 194 101 191 196
		f 4 -313 -306 314 315
		mu 0 4 196 191 190 197
		f 4 -315 -300 316 317
		mu 0 4 197 190 105 198
		f 4 318 -317 -166 319
		mu 0 4 199 198 105 104
		f 4 320 -293 321 322
		mu 0 4 200 182 185 201
		f 4 -319 323 -323 324
		mu 0 4 198 199 200 201
		f 4 325 326 -318 -325
		mu 0 4 201 202 197 198
		f 4 327 328 -316 -327
		mu 0 4 202 203 196 197
		f 4 -292 329 330 331
		mu 0 4 185 184 204 205
		f 4 -326 -322 -332 332
		mu 0 4 202 201 185 205
		f 4 -180 -176 333 334
		mu 0 4 116 112 113 206
		f 4 -183 -335 335 336
		mu 0 4 118 116 206 207
		f 4 -186 -337 337 338
		mu 0 4 120 118 207 208
		f 4 -189 -339 339 340
		mu 0 4 122 120 208 209
		f 4 -192 -341 341 342
		mu 0 4 124 122 209 210
		f 4 343 -196 -343 344
		mu 0 4 211 125 124 210
		f 4 345 -345 346 347
		mu 0 4 212 211 210 213
		f 4 -347 -342 348 349
		mu 0 4 213 210 209 214
		f 4 -349 -340 350 351
		mu 0 4 214 209 208 215
		f 4 -351 -338 352 353
		mu 0 4 215 208 207 216
		f 4 354 355 356 357
		mu 0 4 217 218 219 220
		f 4 -170 358 -355 359
		mu 0 4 103 108 218 217
		f 4 -358 360 361 362
		mu 0 4 217 220 221 222
		f 4 363 -165 -360 364
		mu 0 4 223 104 103 217
		f 4 365 -365 -363 366
		mu 0 4 224 223 217 222
		f 4 -367 -362 367 368
		mu 0 4 224 222 221 225
		f 4 369 -320 -364 370
		mu 0 4 226 199 104 223
		f 4 371 -371 -366 372
		mu 0 4 227 226 223 224
		f 4 -373 -369 373 374
		mu 0 4 227 224 225 228
		f 4 -324 -370 375 376
		mu 0 4 200 199 226 229
		f 4 -375 377 378 379
		mu 0 4 227 228 230 231
		f 4 -376 -372 -380 380
		mu 0 4 229 226 227 231
		f 4 381 -321 -377 382
		mu 0 4 232 182 200 229
		f 4 383 -290 -382 384
		mu 0 4 233 183 182 232
		f 4 -379 385 386 387
		mu 0 4 231 230 234 235
		f 4 -383 -381 -388 388
		mu 0 4 232 229 231 235
		f 4 389 -385 390 391
		mu 0 4 236 233 232 237
		f 4 392 -178 393 394
		mu 0 4 238 113 114 239
		f 4 -353 -336 395 396
		mu 0 4 216 207 206 240
		f 4 -334 -393 397 -396
		mu 0 4 206 113 238 240
		f 4 398 -348 399 400
		mu 0 4 241 212 213 242
		f 4 401 -387 402 -401
		mu 0 4 242 235 234 241
		f 4 403 -391 -389 -402
		mu 0 4 242 237 232 235
		f 4 404 405 -392 406
		mu 0 4 243 244 236 237
		f 4 -407 -404 407 408
		mu 0 4 243 237 242 245
		f 4 -408 -400 -350 409
		mu 0 4 245 242 213 214
		f 4 410 -295 411 412
		mu 0 4 246 187 186 247
		f 4 413 -309 -411 414
		mu 0 4 248 193 187 246
		f 4 415 -307 -414 416
		mu 0 4 249 189 193 248
		f 4 417 -298 -416 418
		mu 0 4 250 107 189 249
		f 4 419 -169 -418 420
		mu 0 4 251 108 107 250
		f 4 421 -359 -420 422
		mu 0 4 252 218 108 251
		f 4 423 424 -356 -422
		mu 0 4 252 253 219 218
		f 4 425 426 -405 427
		mu 0 4 254 255 244 243
		f 4 428 -410 -352 429
		mu 0 4 256 245 214 215
		f 4 -413 430 431 432
		mu 0 4 246 247 257 258
		f 4 -415 -433 433 434
		mu 0 4 248 246 258 259
		f 4 -417 -435 435 436
		mu 0 4 249 248 259 260
		f 4 -419 -437 437 438
		mu 0 4 250 249 260 261
		f 4 -421 -439 439 440
		mu 0 4 251 250 261 262
		f 4 -423 -441 441 442
		mu 0 4 252 251 262 263
		f 4 443 -424 -443 444
		mu 0 4 264 253 252 263
		f 4 445 446 447 448
		mu 0 4 265 266 267 268
		f 4 449 -446 450 451
		mu 0 4 269 266 265 270
		f 4 452 453 -452 454
		mu 0 4 271 272 269 270
		f 4 455 456 457 458
		mu 0 4 273 274 275 276
		f 4 459 460 461 462
		mu 0 4 277 278 279 276
		f 4 463 -459 -462 464
		mu 0 4 280 273 276 279
		f 4 -465 -461 465 466
		mu 0 4 280 279 278 281
		f 4 467 468 -456 469
		mu 0 4 282 283 274 273
		f 4 -470 -464 470 471
		mu 0 4 282 273 280 284
		f 4 472 473 -468 474
		mu 0 4 285 286 283 282
		f 4 475 476 -473 477
		mu 0 4 287 288 286 285
		f 4 478 479 -476 480
		mu 0 4 289 290 288 287
		f 4 481 482 -479 483
		mu 0 4 291 292 290 289
		f 4 484 485 -482 486
		mu 0 4 293 294 292 291
		f 4 -458 487 -485 488
		mu 0 4 276 275 294 293
		f 4 489 -463 -489 490
		mu 0 4 295 277 276 293
		f 4 491 492 493 494
		mu 0 4 296 297 298 299
		f 4 495 -493 496 497
		mu 0 4 300 298 297 301
		f 4 -495 498 499 500
		mu 0 4 296 299 302 303
		f 4 501 -492 502 503
		mu 0 4 304 297 296 305
		f 4 504 -497 -502 505
		mu 0 4 306 301 297 304
		f 4 -503 -501 506 507
		mu 0 4 305 296 303 307
		f 4 -504 -508 508 509
		mu 0 4 304 305 307 308
		f 4 -506 -510 510 511
		mu 0 4 306 304 308 309
		f 4 512 -512 513 514
		mu 0 4 310 306 309 311
		f 4 515 -515 516 517
		mu 0 4 312 310 311 313
		f 4 -517 518 519 520
		mu 0 4 313 311 314 315
		f 4 521 -518 -521 522
		mu 0 4 316 312 313 315
		f 4 523 -509 524 525
		mu 0 4 317 308 307 318
		f 4 526 -526 527 528
		mu 0 4 319 317 318 320
		f 4 -511 -524 -527 529
		mu 0 4 309 308 317 319
		f 4 -519 -514 -530 530
		mu 0 4 314 311 309 319
		f 4 531 -520 -531 -529
		mu 0 4 320 315 314 319
		f 4 532 -523 -532 533
		mu 0 4 321 316 315 320
		f 4 -525 534 -534 -528
		mu 0 4 318 307 321 320
		f 4 -535 -507 535 536
		mu 0 4 321 307 303 322
		f 4 -500 537 538 539
		mu 0 4 303 302 323 324
		f 4 -533 -537 540 541
		mu 0 4 316 321 322 325
		f 4 542 -536 -540 543
		mu 0 4 326 322 303 324
		f 4 544 -478 545 546
		mu 0 4 327 287 285 328
		f 4 -475 -472 547 -546
		mu 0 4 285 282 284 328
		f 4 -471 -467 548 549
		mu 0 4 284 280 281 329
		f 4 550 -541 -543 551
		mu 0 4 330 325 322 326
		f 4 -481 -545 552 553
		mu 0 4 289 287 327 331
		f 4 -553 554 555 556
		mu 0 4 331 327 332 330
		f 4 557 -552 558 559
		mu 0 4 333 330 326 334
		f 4 -539 560 561 562
		mu 0 4 324 323 335 336
		f 4 -559 -544 -563 563
		mu 0 4 334 326 324 336
		f 4 564 565 -562 566
		mu 0 4 337 338 336 335
		f 4 567 568 569 570
		mu 0 4 339 340 341 342
		f 4 571 -571 572 573
		mu 0 4 343 339 342 344
		f 4 574 -574 575 576
		mu 0 4 345 343 344 346
		f 4 577 -577 578 579
		mu 0 4 347 345 346 348
		f 4 580 -580 581 582
		mu 0 4 349 347 348 350
		f 4 583 -583 584 585
		mu 0 4 351 349 350 352
		f 4 586 -586 587 588
		mu 0 4 353 351 352 354
		f 4 589 -569 590 -589
		mu 0 4 354 355 356 353
		f 4 -570 591 592 593
		mu 0 4 342 341 357 358
		f 4 -573 -594 594 595
		mu 0 4 344 342 358 359
		f 4 -588 596 597 598
		mu 0 4 354 352 360 361
		f 4 599 -592 -590 -599
		mu 0 4 361 362 355 354
		f 4 -147 600 601 602
		mu 0 4 90 91 363 364
		f 4 603 -149 -603 604
		mu 0 4 365 92 90 364
		f 4 -150 -604 605 606
		mu 0 4 93 92 365 366
		f 4 607 -152 -607 608
		mu 0 4 367 94 93 366
		f 4 609 -606 610 611
		mu 0 4 368 369 370 371
		f 4 612 -602 613 614
		mu 0 4 372 373 374 375
		f 4 -611 -605 -613 615
		mu 0 4 371 370 373 372
		f 4 616 -609 -610 617
		mu 0 4 376 377 369 368
		f 4 618 -615 619 620
		mu 0 4 378 372 375 379
		f 4 621 -618 622 623
		mu 0 4 380 376 368 381
		f 4 624 625 626 627
		mu 0 4 382 383 384 385
		f 4 -621 628 629 630
		mu 0 4 378 379 386 387
		f 4 -627 631 632 633
		mu 0 4 385 384 388 389
		f 4 634 635 -622 636
		mu 0 4 390 391 392 393
		f 4 637 638 639 -637
		mu 0 4 393 394 395 390
		f 4 640 -640 641 642
		mu 0 4 396 390 395 397
		f 4 643 -639 644 645
		mu 0 4 398 399 400 401
		f 4 -643 646 647 648
		mu 0 4 396 397 402 403
		f 4 -620 649 650 651
		mu 0 4 379 375 404 405
		f 4 -629 -652 652 653
		mu 0 4 386 379 405 406
		f 4 654 -648 655 656
		mu 0 4 407 403 402 408
		f 4 657 -653 658 -657
		mu 0 4 408 406 405 407
		f 4 659 -654 660 661
		mu 0 4 409 410 411 412
		f 4 -649 662 663 664
		mu 0 4 396 403 413 414
		f 4 665 -635 -641 -665
		mu 0 4 414 391 390 396
		f 4 666 -617 -636 667
		mu 0 4 415 416 392 391
		f 4 -154 -608 -667 668
		mu 0 4 96 95 417 418
		f 4 669 -156 -669 670
		mu 0 4 419 97 96 418
		f 4 671 -664 672 673
		mu 0 4 420 414 413 421
		f 4 -668 -666 -672 674
		mu 0 4 415 391 414 420
		f 4 675 -671 -675 -674
		mu 0 4 421 422 415 420
		f 4 -650 -614 676 677
		mu 0 4 404 375 374 423
		f 4 -158 -670 678 679
		mu 0 4 98 97 419 424
		f 4 -601 -160 -680 -677
		mu 0 4 363 91 98 424
		f 4 -679 -676 680 681
		mu 0 4 423 422 421 425
		f 4 682 -678 -682 683
		mu 0 4 426 404 423 425
		f 4 -659 -651 -683 684
		mu 0 4 407 405 404 426
		f 4 685 -663 -655 -685
		mu 0 4 426 413 403 407
		f 4 -681 -673 -686 -684
		mu 0 4 425 421 413 426
		f 4 -638 -624 686 687
		mu 0 4 427 380 381 428
		f 4 688 -616 689 690
		mu 0 4 429 371 372 430
		f 4 691 -612 -689 692
		mu 0 4 431 368 371 429
		f 4 -690 -619 693 694
		mu 0 4 430 372 378 432
		f 4 695 -623 -692 696
		mu 0 4 433 381 368 431
		f 4 -694 -631 697 698
		mu 0 4 432 378 387 434
		f 4 699 -397 700 701
		mu 0 4 435 216 240 436
		f 4 -428 -409 -429 702
		mu 0 4 254 243 245 256
		f 4 -430 -354 -700 703
		mu 0 4 256 215 216 435
		f 4 704 705 -426 706
		mu 0 4 437 438 255 254
		f 4 707 -331 708 -705
		mu 0 4 437 205 204 438
		f 4 -328 -333 -708 709
		mu 0 4 203 202 205 437
		f 4 -701 -398 710 711
		mu 0 4 436 240 238 439
		f 4 712 713 -310 714
		mu 0 4 440 441 195 194
		f 4 -314 -329 715 -715
		mu 0 4 194 196 203 440
		f 4 716 -707 -703 717
		mu 0 4 442 437 254 256
		f 4 -711 -395 718 719
		mu 0 4 439 238 239 443
		f 4 -720 720 -713 721
		mu 0 4 439 443 441 440
		f 4 -704 -702 -712 722
		mu 0 4 256 435 436 439
		f 4 -722 723 -718 -723
		mu 0 4 439 440 442 256
		f 4 -716 -710 -717 -724
		mu 0 4 440 203 437 442
		f 4 724 -698 725 726
		mu 0 4 444 445 446 447
		f 4 -630 -660 727 -726
		mu 0 4 446 410 409 447
		f 4 728 -662 729 730
		mu 0 4 448 409 412 449
		f 4 -661 -658 731 732
		mu 0 4 412 411 450 451
		f 4 -656 733 734 -732
		mu 0 4 450 452 453 451
		f 4 735 736 737 738
		mu 0 4 454 455 449 456
		f 4 -738 -730 -733 739
		mu 0 4 456 449 412 451
		f 4 -740 -735 740 -739
		mu 0 4 456 451 453 454
		f 4 -734 -647 741 742
		mu 0 4 453 452 457 458
		f 4 -642 -644 743 -742
		mu 0 4 457 399 398 458
		f 4 744 -741 -743 745
		mu 0 4 459 454 453 458
		f 4 746 -646 747 748
		mu 0 4 460 398 401 461
		f 4 749 -736 -745 750
		mu 0 4 460 455 454 459
		f 4 -746 -744 -747 -751
		mu 0 4 459 458 398 460
		f 4 -645 -688 751 752
		mu 0 4 401 400 462 463
		f 4 753 -625 754 755
		mu 0 4 464 383 382 465
		f 4 -687 -696 756 757
		mu 0 4 428 381 433 466
		f 4 -752 -758 758 759
		mu 0 4 463 462 467 468
		f 4 -632 760 761 762
		mu 0 4 469 470 471 472
		f 4 763 -761 -626 764
		mu 0 4 473 471 470 474
		f 4 765 -765 -754 766
		mu 0 4 475 473 474 476
		f 4 -763 767 768 769
		mu 0 4 469 472 477 478
		f 4 -633 -770 770 771
		mu 0 4 389 388 479 480
		f 4 772 -756 773 774
		mu 0 4 481 464 465 482
		f 4 775 776 -762 777
		mu 0 4 483 484 472 471
		f 4 778 -767 -773 779
		mu 0 4 485 475 476 486
		f 4 -757 780 -780 781
		mu 0 4 466 433 485 486
		f 4 -775 782 -759 -782
		mu 0 4 481 482 468 467
		f 4 783 -693 784 785
		mu 0 4 487 431 429 483
		f 4 -785 -691 786 -776
		mu 0 4 483 429 430 484
		f 4 -764 787 -786 -778
		mu 0 4 471 473 487 483
		f 4 -787 -695 788 789
		mu 0 4 484 430 432 488
		f 4 -790 790 -768 -777
		mu 0 4 484 488 477 472
		f 4 -781 -697 -784 791
		mu 0 4 485 433 431 487
		f 4 -766 -779 -792 -788
		mu 0 4 473 475 485 487
		f 4 -789 -699 792 793
		mu 0 4 488 432 434 489
		f 4 -794 794 -769 -791
		mu 0 4 488 489 478 477
		f 4 -793 -725 795 796
		mu 0 4 490 445 444 491
		f 4 -797 797 -771 -795
		mu 0 4 490 491 480 479
		f 4 798 -755 799 800
		mu 0 4 492 465 382 493
		f 4 801 -634 802 803
		mu 0 4 494 385 389 495
		f 4 -800 -628 -802 804
		mu 0 4 493 382 385 494
		f 4 805 -803 -772 806
		mu 0 4 496 495 389 480
		f 4 807 -774 -799 808
		mu 0 4 497 482 465 492
		f 4 -801 -805 809 810
		mu 0 4 492 493 494 498
		f 4 -810 -804 -806 811
		mu 0 4 498 494 495 496
		f 4 812 -807 -798 813
		mu 0 4 499 496 480 491
		f 4 814 -783 -808 815
		mu 0 4 500 468 482 497
		f 4 816 -812 -813 817
		mu 0 4 501 498 496 499
		f 4 818 -809 -811 -817
		mu 0 4 501 497 492 498
		f 4 -814 -796 819 820
		mu 0 4 499 491 444 502
		f 4 821 -748 -753 822
		mu 0 4 503 461 401 463
		f 4 -823 -760 -815 823
		mu 0 4 503 463 468 500
		f 4 824 -818 -821 825
		mu 0 4 504 501 499 502
		f 4 -750 -749 826 827
		mu 0 4 455 460 461 505
		f 4 828 -731 -737 -828
		mu 0 4 505 448 449 455
		f 4 829 -824 830 831
		mu 0 4 506 503 500 504
		f 4 -831 -816 -819 -825
		mu 0 4 504 500 497 501
		f 4 832 -820 -727 833
		mu 0 4 507 502 444 447
		f 4 -832 -826 -833 834
		mu 0 4 506 504 502 507
		f 4 -834 -728 -729 835
		mu 0 4 507 447 409 448
		f 4 -836 -829 836 -835
		mu 0 4 507 448 505 506
		f 4 -837 -827 -822 -830
		mu 0 4 506 505 461 503
		f 4 837 838 839 840
		mu 0 4 508 509 510 511
		f 4 841 -841 842 843
		mu 0 4 512 508 511 513
		f 4 844 -844 845 846
		mu 0 4 514 512 513 515
		f 4 847 -847 848 849
		mu 0 4 516 514 515 517
		f 4 850 -850 851 852
		mu 0 4 518 519 520 521
		f 4 853 -853 854 855
		mu 0 4 522 518 521 523
		f 4 856 -856 857 858
		mu 0 4 524 522 523 525
		f 4 859 -839 860 -859
		mu 0 4 525 526 527 524
		f 4 861 862 -838 863
		mu 0 4 528 529 509 508
		f 4 864 -864 -842 865
		mu 0 4 530 528 508 512
		f 4 866 -866 -845 867
		mu 0 4 531 530 512 514
		f 4 868 -868 -848 869
		mu 0 4 532 531 514 516
		f 4 870 -870 -851 871
		mu 0 4 533 534 519 518
		f 4 872 -872 -854 873
		mu 0 4 535 533 518 522
		f 4 874 -874 -857 875
		mu 0 4 536 535 522 524
		f 4 -861 -863 876 -876
		mu 0 4 524 527 537 536
		f 4 -843 877 878 879
		mu 0 4 513 511 538 539
		f 4 880 881 -60 882
		mu 0 4 540 541 38 37
		f 4 -846 -880 883 884
		mu 0 4 515 513 539 542
		f 4 885 -883 -58 886
		mu 0 4 543 540 37 36
		f 4 -849 -885 887 888
		mu 0 4 517 515 542 544
		f 4 889 -887 -72 890
		mu 0 4 545 543 36 44
		f 4 -852 -889 891 892
		mu 0 4 521 520 546 547
		f 4 893 -891 -70 894
		mu 0 4 548 545 44 43
		f 4 895 896 -578 897
		mu 0 4 549 550 345 347
		f 4 -62 -882 898 899
		mu 0 4 39 38 541 551
		f 4 900 901 902 903
		mu 0 4 552 553 554 555
		f 4 -575 -897 904 905
		mu 0 4 343 345 550 556
		f 4 906 -896 907 908
		mu 0 4 557 550 549 558
		f 4 -572 -906 909 910
		mu 0 4 339 343 556 559
		f 4 911 912 -568 -911
		mu 0 4 559 560 340 339
		f 4 -591 -913 913 914
		mu 0 4 353 356 561 562
		f 4 -587 -915 915 916
		mu 0 4 351 353 562 563
		f 4 917 -898 -581 918
		mu 0 4 564 549 347 349
		f 4 -584 -917 919 -919
		mu 0 4 349 351 563 564
		f 4 -916 920 921 922
		mu 0 4 563 562 565 566
		f 4 923 -918 924 925
		mu 0 4 555 549 564 567
		f 4 926 -908 -924 -903
		mu 0 4 554 558 549 555
		f 4 -925 -920 -923 927
		mu 0 4 567 564 563 566
		f 4 -64 -900 -901 928
		mu 0 4 40 39 551 568
		f 4 -904 -926 929 930
		mu 0 4 552 555 567 569
		f 4 -66 -929 931 932
		mu 0 4 42 41 570 571
		f 4 933 -895 -68 -933
		mu 0 4 571 548 43 42
		f 4 -932 -931 934 935
		mu 0 4 572 552 569 573
		f 4 936 -922 937 938
		mu 0 4 574 566 565 575
		f 4 -930 -928 -937 939
		mu 0 4 569 567 566 574
		f 4 940 -934 -936 941
		mu 0 4 576 577 572 573
		f 4 -942 -935 -940 942
		mu 0 4 576 573 569 574
		f 4 943 -899 944 945
		mu 0 4 578 553 579 580
		f 4 -945 -881 946 947
		mu 0 4 580 579 581 582
		f 4 -947 -886 948 949
		mu 0 4 582 581 583 584
		f 4 -949 -890 950 951
		mu 0 4 585 586 587 588
		f 4 -951 -894 -941 952
		mu 0 4 588 587 577 576
		f 4 953 -884 954 955
		mu 0 4 589 542 539 590
		f 4 -948 956 -956 957
		mu 0 4 580 582 589 590
		f 4 958 959 -953 960
		mu 0 4 591 592 588 576
		f 4 961 -888 -954 962
		mu 0 4 593 544 542 589
		f 4 963 -892 -962 964
		mu 0 4 592 547 546 594
		f 4 -963 -957 -950 965
		mu 0 4 593 589 582 584
		f 4 -952 -960 -965 -966
		mu 0 4 585 588 592 594
		f 4 -943 -939 966 967
		mu 0 4 576 574 575 595
		f 4 -921 968 969 970
		mu 0 4 565 562 596 597
		f 4 -967 -938 -971 971
		mu 0 4 595 575 565 597
		f 4 -860 972 973 974
		mu 0 4 526 525 598 599
		f 4 975 -878 -840 -975
		mu 0 4 600 538 511 510
		f 4 -955 -879 976 977
		mu 0 4 590 539 538 601
		f 4 -946 -958 -978 978
		mu 0 4 578 580 590 601
		f 4 -969 -914 979 980
		mu 0 4 596 562 561 602
		f 4 -980 -912 981 982
		mu 0 4 603 560 559 604
		f 4 -970 -981 983 984
		mu 0 4 597 596 602 605
		f 4 985 -905 -907 986
		mu 0 4 606 556 550 557
		f 4 -977 -976 987 988
		mu 0 4 601 538 600 607
		f 4 -982 -910 -986 989
		mu 0 4 604 559 556 606
		f 4 990 -988 991 992
		mu 0 4 608 607 600 609
		f 4 993 994 -984 995
		mu 0 4 610 611 605 602
		f 4 -983 996 -993 -996
		mu 0 4 603 604 608 609
		f 4 997 998 -989 -991
		mu 0 4 608 612 601 607
		f 4 999 -909 -927 1000
		mu 0 4 613 557 558 554
		f 4 1001 -987 -1000 1002
		mu 0 4 612 606 557 613
		f 4 -1001 -902 -944 1003
		mu 0 4 613 554 553 578
		f 4 -1004 -979 -999 -1003
		mu 0 4 613 578 601 612
		f 4 -998 -997 -990 -1002
		mu 0 4 612 608 604 606
		f 4 -992 -974 1004 -994
		mu 0 4 610 599 598 611
		f 4 1005 -972 -985 1006
		mu 0 4 614 595 597 605
		f 4 1007 -961 -968 -1006
		mu 0 4 614 591 576 595
		f 4 -855 -893 1008 1009
		mu 0 4 523 521 547 615
		f 4 -1009 -964 -959 1010
		mu 0 4 615 547 592 591
		f 4 1011 -973 -858 -1010
		mu 0 4 615 598 525 523
		f 4 1012 -1005 -1012 1013
		mu 0 4 616 611 598 615
		f 4 -1011 -1008 1014 -1014
		mu 0 4 615 591 614 616
		f 4 -1007 -995 -1013 -1015
		mu 0 4 614 605 611 616
		f 4 1015 1016 1017 1018
		mu 0 4 617 618 619 620
		f 4 1019 -1019 1020 1021
		mu 0 4 621 617 620 622
		f 4 -1022 1022 1023 1024
		mu 0 4 621 622 623 624
		f 4 1025 -1024 1026 1027
		mu 0 4 625 624 623 337
		f 4 -1028 -567 1028 1029
		mu 0 4 625 337 335 626
		f 4 1030 -1029 -561 1031
		mu 0 4 627 626 335 323
		f 4 1032 -1032 -538 1033
		mu 0 4 628 627 323 302
		f 4 1034 -1034 -499 1035
		mu 0 4 629 628 302 299
		f 4 -1036 -494 1036 1037
		mu 0 4 629 299 298 630
		f 4 1038 1039 -1016 1040
		mu 0 4 631 632 618 617
		f 4 -1041 -1020 1041 1042
		mu 0 4 631 617 621 633
		f 4 -1042 -1025 1043 1044
		mu 0 4 633 621 624 634
		f 4 -1043 -1045 1045 1046
		mu 0 4 631 633 634 635
		f 4 1047 -1044 -1026 1048
		mu 0 4 636 634 624 625
		f 4 -432 1049 1050 1051
		mu 0 4 637 638 639 640
		f 4 1052 1053 1054 1055
		mu 0 4 641 639 642 643
		f 4 1056 -1051 -1053 1057
		mu 0 4 644 640 639 641
		f 4 1058 -1056 1059 1060
		mu 0 4 645 641 643 635
		f 4 -1061 -1046 -1048 1061
		mu 0 4 645 635 634 636
		f 4 -434 -1052 1062 1063
		mu 0 4 646 637 640 647
		f 4 -1063 -1057 1064 1065
		mu 0 4 647 640 644 648
		f 4 -1065 -1058 -1059 1066
		mu 0 4 648 644 641 645
		f 4 -436 -1064 1067 1068
		mu 0 4 649 646 647 650;
	setAttr ".fc[500:999]"
		f 4 -438 -1069 1069 1070
		mu 0 4 651 649 650 652
		f 4 -440 -1071 1071 1072
		mu 0 4 653 651 652 654
		f 4 1073 -445 1074 1075
		mu 0 4 655 656 657 658
		f 4 -442 -1073 1076 -1075
		mu 0 4 657 653 654 658
		f 4 -455 -451 1077 1078
		mu 0 4 271 270 265 659
		f 4 -1078 -449 1079 1080
		mu 0 4 659 265 268 660
		f 4 -565 -1027 1081 1082
		mu 0 4 338 337 623 661
		f 4 1083 -560 1084 1085
		mu 0 4 662 333 334 663
		f 4 1086 -1018 1087 1088
		mu 0 4 664 620 619 665
		f 4 1089 1090 -453 1091
		mu 0 4 666 667 272 271
		f 4 -1092 -1079 1092 1093
		mu 0 4 666 271 659 668
		f 4 -1021 -1087 1094 1095
		mu 0 4 622 620 664 669
		f 4 -1082 -1023 -1096 1096
		mu 0 4 661 623 622 669
		f 4 1097 -1095 1098 1099
		mu 0 4 670 669 664 671
		f 4 1100 -1090 1101 1102
		mu 0 4 672 667 666 671
		f 4 -1103 -1099 -1089 1103
		mu 0 4 672 671 664 665
		f 4 -1094 1104 -1100 -1102
		mu 0 4 666 668 670 671
		f 4 1105 1106 -1097 -1098
		mu 0 4 670 673 661 669
		f 4 -1085 -564 -566 1107
		mu 0 4 663 334 336 338
		f 4 1108 1109 -1086 1110
		mu 0 4 673 674 662 663
		f 4 -1108 -1083 -1107 -1111
		mu 0 4 663 338 661 673
		f 4 -1106 -1105 1111 -1109
		mu 0 4 673 670 668 674
		f 4 1112 -1093 -1081 1113
		mu 0 4 675 668 659 660
		f 4 -1080 -448 1114 1115
		mu 0 4 660 268 267 676
		f 4 1116 -1114 -1116 1117
		mu 0 4 677 675 660 676
		f 4 1118 -1112 -1113 1119
		mu 0 4 678 674 668 675
		f 4 1120 -1110 -1119 1121
		mu 0 4 679 662 674 678
		f 4 -1120 -1117 1122 1123
		mu 0 4 678 675 677 680
		f 4 -1123 1124 1125 1126
		mu 0 4 680 677 681 682
		f 4 -1126 1127 1128 1129
		mu 0 4 682 681 683 684
		f 4 -1129 1130 1131 1132
		mu 0 4 684 683 685 686
		f 4 1133 -490 1134 -1132
		mu 0 4 685 277 295 686
		f 4 -1135 -491 1135 1136
		mu 0 4 686 295 293 687
		f 4 -1136 -487 1137 1138
		mu 0 4 687 293 291 688
		f 4 -484 -554 1139 -1138
		mu 0 4 291 289 331 688
		f 4 1140 -557 -558 1141
		mu 0 4 689 331 330 333
		f 4 -1142 -1084 -1121 1142
		mu 0 4 689 333 662 679
		f 4 1143 -1140 -1141 1144
		mu 0 4 690 688 331 689
		f 4 1145 -1122 -1124 1146
		mu 0 4 691 679 678 680
		f 4 -1145 -1143 -1146 1147
		mu 0 4 690 689 679 691
		f 4 1148 -1147 -1127 1149
		mu 0 4 692 691 680 682
		f 4 1150 -1150 -1130 1151
		mu 0 4 693 692 682 684
		f 4 1152 -1152 -1133 1153
		mu 0 4 694 693 684 686
		f 4 1154 -1154 -1137 1155
		mu 0 4 695 694 686 687
		f 4 -1156 -1139 -1144 1156
		mu 0 4 695 687 688 690
		f 4 1157 1158 -1148 1159
		mu 0 4 696 697 690 691
		f 4 1160 -1160 -1149 1161
		mu 0 4 698 696 691 692
		f 4 1162 -1162 -1151 1163
		mu 0 4 699 698 692 693
		f 4 1164 -1164 -1153 1165
		mu 0 4 700 699 693 694
		f 4 1166 -1166 -1155 1167
		mu 0 4 701 700 694 695
		f 4 -1168 -1157 -1159 1168
		mu 0 4 701 695 690 697
		f 4 1169 -1161 1170 1171
		mu 0 4 702 696 698 703
		f 4 1172 -1165 1173 1174
		mu 0 4 704 699 700 705
		f 4 -1174 -1167 1175 1176
		mu 0 4 705 700 701 706
		f 4 1177 -1158 -1170 1178
		mu 0 4 707 697 696 702
		f 4 -1176 -1169 -1178 1179
		mu 0 4 706 701 697 707
		f 4 -1179 -1172 1180 1181
		mu 0 4 707 702 703 704
		f 4 -1175 -1177 -1180 -1182
		mu 0 4 704 705 706 707
		f 4 -1171 -1163 -1173 -1181
		mu 0 4 703 698 699 704
		f 4 1182 1183 -1076 1184
		mu 0 4 708 709 655 658
		f 4 -1185 -1077 1185 1186
		mu 0 4 708 658 654 710
		f 4 -1186 -1072 1187 1188
		mu 0 4 710 654 652 711
		f 4 1189 -1049 -1030 1190
		mu 0 4 712 636 625 626
		f 4 -1067 -1062 -1190 1191
		mu 0 4 648 645 636 712
		f 4 -1188 -1070 1192 1193
		mu 0 4 711 652 650 713
		f 4 1194 -1192 1195 1196
		mu 0 4 713 648 712 714
		f 4 -1068 -1066 -1195 -1193
		mu 0 4 650 647 648 713
		f 4 1197 -1191 -1031 1198
		mu 0 4 715 712 626 627
		f 4 1199 -1196 -1198 1200
		mu 0 4 716 714 712 715
		f 4 1201 -1194 -1197 -1200
		mu 0 4 716 711 713 714
		f 4 1202 -1199 -1033 1203
		mu 0 4 717 715 627 628
		f 4 1204 -1201 -1203 1205
		mu 0 4 718 716 715 717
		f 4 1206 -1189 -1202 -1205
		mu 0 4 718 710 711 716
		f 4 1207 -1204 -1035 1208
		mu 0 4 719 717 628 629
		f 4 1209 -1206 -1208 1210
		mu 0 4 720 718 717 719
		f 4 1211 -1187 -1207 -1210
		mu 0 4 720 708 710 718
		f 4 1212 -1183 -1212 1213
		mu 0 4 721 709 708 720
		f 4 1214 -1209 -1038 1215
		mu 0 4 722 719 629 630
		f 4 1216 -1037 -496 1217
		mu 0 4 723 630 298 300
		f 4 -1214 -1211 -1215 1218
		mu 0 4 721 720 719 722
		f 4 -1216 -1217 1219 1220
		mu 0 4 722 630 723 724
		f 4 1221 1222 -1219 -1221
		mu 0 4 724 725 721 722
		f 4 1223 1224 -1222 1225
		mu 0 4 726 727 725 724
		f 4 -1226 -1220 1226 1227
		mu 0 4 726 724 723 728
		f 4 1228 -1227 -1218 1229
		mu 0 4 729 728 723 300
		f 4 -1230 -498 1230 1231
		mu 0 4 729 300 301 730
		f 4 -1231 -505 -513 1232
		mu 0 4 730 301 306 310
		f 4 1233 -551 -556 1234
		mu 0 4 731 325 330 332
		f 4 1235 -1233 -516 1236
		mu 0 4 731 730 310 312
		f 4 -522 -542 -1234 -1237
		mu 0 4 312 316 325 731
		f 4 1237 -555 -547 1238
		mu 0 4 732 332 327 328
		f 4 -1239 -548 -550 1239
		mu 0 4 732 328 284 329
		f 4 1240 1241 -1224 1242
		mu 0 4 733 734 727 726
		f 4 1243 -1243 -1228 1244
		mu 0 4 735 733 726 728
		f 4 1245 1246 -1241 1247
		mu 0 4 736 737 734 733
		f 4 -1248 -1244 1248 1249
		mu 0 4 736 733 735 738
		f 4 1250 -1235 -1238 1251
		mu 0 4 739 731 332 732
		f 4 1252 -1245 -1229 1253
		mu 0 4 740 735 728 729
		f 4 1254 -1249 -1253 1255
		mu 0 4 741 738 735 740
		f 4 1256 -1240 1257 1258
		mu 0 4 742 732 329 743
		f 4 1259 1260 -1246 1261
		mu 0 4 744 745 737 736
		f 4 -1262 -1250 -1255 1262
		mu 0 4 744 736 738 741
		f 4 -1252 -1257 1263 1264
		mu 0 4 739 732 742 746
		f 4 1265 -1260 1266 1267
		mu 0 4 747 745 744 748
		f 4 -1268 1268 -1259 1269
		mu 0 4 747 748 742 743
		f 4 -1263 1270 1271 -1267
		mu 0 4 744 741 749 748
		f 4 1272 -1254 -1232 1273
		mu 0 4 750 740 729 730
		f 4 -1271 -1256 -1273 1274
		mu 0 4 749 741 740 750
		f 4 -1274 -1236 -1251 1275
		mu 0 4 750 730 731 739
		f 4 -1276 -1265 1276 -1275
		mu 0 4 750 739 746 749
		f 4 -1264 -1269 -1272 -1277
		mu 0 4 746 742 748 749
		f 4 -576 -596 1277 1278
		mu 0 4 346 344 359 751
		f 4 -579 -1279 1279 1280
		mu 0 4 348 346 751 752
		f 4 -582 -1281 1281 1282
		mu 0 4 350 348 752 753
		f 4 1283 -597 -585 -1283
		mu 0 4 753 360 352 350
		f 4 1284 1285 1286 1287
		mu 0 4 754 751 755 756
		f 4 1288 -1282 1289 1290
		mu 0 4 757 753 752 758
		f 4 -1280 -1285 1291 -1290
		mu 0 4 752 751 754 758
		f 4 1292 -1291 1293 1294
		mu 0 4 759 757 758 760
		f 4 -1294 -1292 -1288 1295
		mu 0 4 760 758 754 756
		f 4 -1296 1296 1297 1298
		mu 0 4 760 756 761 762
		f 4 1299 -1295 -1299 1300
		mu 0 4 763 759 760 762
		f 4 1301 -1289 -1293 1302
		mu 0 4 764 753 757 759
		f 4 -1301 1303 1304 1305
		mu 0 4 763 762 765 766
		f 4 -598 1306 1307 1308
		mu 0 4 361 360 767 768
		f 4 -600 -1309 1309 1310
		mu 0 4 362 361 768 769
		f 4 1311 -1310 1312 1313
		mu 0 4 770 769 768 771
		f 4 -593 -1311 1314 1315
		mu 0 4 358 357 772 773
		f 4 -1315 -1312 1316 1317
		mu 0 4 773 772 770 774
		f 4 -595 -1316 1318 1319
		mu 0 4 359 358 773 775
		f 4 -1314 1320 1321 1322
		mu 0 4 770 771 776 777
		f 4 -1317 -1323 1323 1324
		mu 0 4 774 770 777 778
		f 4 -1324 1325 1326 1327
		mu 0 4 778 777 765 779
		f 4 -1284 -1302 1328 -1307
		mu 0 4 360 753 764 767
		f 4 -1329 1329 1330 1331
		mu 0 4 767 764 766 776
		f 4 -1321 -1313 -1308 -1332
		mu 0 4 776 771 768 767
		f 4 -1305 -1326 -1322 -1331
		mu 0 4 766 765 777 776
		f 4 -1303 -1300 -1306 -1330
		mu 0 4 764 759 763 766
		f 4 -1319 -1318 -1325 1332
		mu 0 4 775 773 774 778
		f 4 1333 -1286 -1278 -1320
		mu 0 4 775 755 751 359
		f 4 -1328 1334 -1334 -1333
		mu 0 4 778 779 755 775
		f 4 -1297 -1287 -1335 1335
		mu 0 4 761 756 755 779
		f 4 -1304 -1298 -1336 -1327
		mu 0 4 765 762 761 779
		f 4 1336 1337 -873 1338
		mu 0 4 780 781 533 535
		f 4 -875 1339 1340 -1339
		mu 0 4 535 536 782 780
		f 4 -867 1341 1342 1343
		mu 0 4 530 531 783 784
		f 4 1344 1345 -865 -1344
		mu 0 4 784 785 528 530
		f 4 1346 -1342 -869 1347
		mu 0 4 786 783 531 532
		f 4 -871 -1338 1348 -1348
		mu 0 4 534 533 781 787
		f 4 1349 -1345 1350 1351
		mu 0 4 788 785 784 789
		f 4 -862 -1346 -1350 1352
		mu 0 4 529 528 785 788
		f 4 1353 -1341 1354 -1352
		mu 0 4 790 780 782 791
		f 4 -1355 -1340 -877 -1353
		mu 0 4 791 782 536 537
		f 4 -1349 -1337 -1354 1355
		mu 0 4 787 781 780 790
		f 4 -1351 -1343 -1347 -1356
		mu 0 4 789 784 783 786
		f 4 1356 -477 1357 1358
		mu 0 4 792 286 288 793
		f 4 1359 -474 -1357 1360
		mu 0 4 794 283 286 792
		f 4 1361 -469 -1360 1362
		mu 0 4 795 274 283 794
		f 4 1363 -457 -1362 1364
		mu 0 4 796 275 274 795
		f 4 1365 -488 -1364 1366
		mu 0 4 797 294 275 796
		f 4 1367 -486 -1366 1368
		mu 0 4 798 292 294 797
		f 4 1369 -483 -1368 1370
		mu 0 4 799 290 292 798
		f 4 -1358 -480 -1370 1371
		mu 0 4 793 288 290 799
		f 4 1372 -1363 1373 1374
		mu 0 4 800 795 794 801
		f 4 1375 -1371 1376 1377
		mu 0 4 802 799 798 803
		f 4 1378 -1359 1379 1380
		mu 0 4 804 792 793 805
		f 4 -1380 -1372 -1376 1381
		mu 0 4 805 793 799 802
		f 4 1382 -1365 -1373 1383
		mu 0 4 806 796 795 800
		f 4 1384 -1367 -1383 1385
		mu 0 4 807 797 796 806
		f 4 -1374 -1361 -1379 1386
		mu 0 4 801 794 792 804
		f 4 1387 -1384 -1375 1388
		mu 0 4 808 806 800 801
		f 4 -1377 -1369 -1385 1389
		mu 0 4 803 798 797 807
		f 4 -1390 -1386 -1388 1390
		mu 0 4 803 807 806 808
		f 4 1391 -1382 -1378 -1391
		mu 0 4 808 805 802 803
		f 4 -1387 -1381 -1392 -1389
		mu 0 4 801 804 805 808
		f 4 1392 -330 1393 1394
		mu 0 4 809 204 184 810
		f 4 -1394 -291 1395 1396
		mu 0 4 810 184 183 811
		f 4 1397 -709 -1393 1398
		mu 0 4 812 438 204 809
		f 4 1399 -706 -1398 1400
		mu 0 4 813 255 438 812
		f 4 1401 -427 -1400 1402
		mu 0 4 814 244 255 813
		f 4 1403 -406 -1402 1404
		mu 0 4 815 236 244 814
		f 4 1405 -390 -1404 1406
		mu 0 4 816 233 236 815
		f 4 -1396 -384 -1406 1407
		mu 0 4 811 183 233 816
		f 4 1408 1409 -1 1410
		mu 0 4 817 818 1 0
		f 4 1411 -1411 -5 1412
		mu 0 4 819 817 0 4
		f 4 1413 -1413 -8 1414
		mu 0 4 820 819 4 6
		f 4 1415 -1415 -11 1416
		mu 0 4 821 820 6 8
		f 4 1417 -1417 -14 1418
		mu 0 4 822 823 11 10
		f 4 1419 -1419 -17 1420
		mu 0 4 824 822 10 14
		f 4 1421 -1421 -20 1422
		mu 0 4 825 824 14 16
		f 4 -24 -1410 1423 -1423
		mu 0 4 16 1 818 825
		f 4 -1409 1424 1425 1426
		mu 0 4 818 817 826 827
		f 4 1427 -1395 1428 -1426
		mu 0 4 828 809 810 829
		f 4 -1429 -1397 1429 1430
		mu 0 4 829 810 811 830
		f 4 -1431 1431 -1424 -1427
		mu 0 4 827 831 825 818
		f 4 1432 -1399 -1428 1433
		mu 0 4 832 812 809 828
		f 4 -1412 1434 -1434 -1425
		mu 0 4 817 819 833 826
		f 4 1435 -1401 -1433 1436
		mu 0 4 834 813 812 832
		f 4 -1414 1437 -1437 -1435
		mu 0 4 819 820 835 833
		f 4 1438 -1403 -1436 1439
		mu 0 4 836 814 813 834
		f 4 -1416 1440 -1440 -1438
		mu 0 4 820 821 837 835
		f 4 1441 -1405 -1439 1442
		mu 0 4 838 815 814 836
		f 4 -1418 1443 -1443 -1441
		mu 0 4 823 822 839 840
		f 4 1444 -1407 -1442 1445
		mu 0 4 841 816 815 838
		f 4 -1420 1446 -1446 -1444
		mu 0 4 822 824 842 839
		f 4 -1430 -1408 -1445 1447
		mu 0 4 830 811 816 841
		f 4 -1422 -1432 -1448 -1447
		mu 0 4 824 825 831 842
		f 4 1448 1449 1450 1451
		mu 0 4 843 844 845 846
		f 4 -1452 1452 1453 1454
		mu 0 4 843 846 847 848
		f 4 1455 1456 1457 -1450
		mu 0 4 844 849 850 845
		f 4 1458 1459 1460 1461
		mu 0 4 851 852 853 854
		f 4 -1462 1462 1463 1464
		mu 0 4 851 854 855 849
		f 4 1465 -1460 1466 1467
		mu 0 4 856 853 852 857
		f 4 1468 1469 1470 -1468
		mu 0 4 857 858 859 856
		f 4 1471 -1470 1472 1473
		mu 0 4 860 859 858 861
		f 4 1474 1475 -1474 1476
		mu 0 4 862 863 860 861
		f 4 1477 1478 1479 1480
		mu 0 4 864 865 866 867
		f 4 -1481 1481 1482 1483
		mu 0 4 864 867 868 869
		f 4 1484 1485 1486 -1479
		mu 0 4 865 870 871 866
		f 4 1487 1488 1489 -1486
		mu 0 4 870 872 873 871
		f 4 1490 1491 1492 1493
		mu 0 4 874 875 876 877
		f 4 1494 1495 1496 1497
		mu 0 4 878 879 873 874
		f 4 1498 1499 -1498 -1494
		mu 0 4 877 880 878 874
		f 4 1500 1501 1502 -1492
		mu 0 4 875 881 882 876
		f 4 1503 1504 1505 1506
		mu 0 4 882 883 884 885
		f 4 -1507 1507 1508 -1503
		mu 0 4 882 885 886 876
		f 4 1509 1510 1511 -1505
		mu 0 4 887 888 889 890
		f 4 1512 1513 1514 -1511
		mu 0 4 888 891 892 889
		f 4 1515 1516 -1514 1517
		mu 0 4 893 894 892 891
		f 4 1518 1519 1520 1521
		mu 0 4 895 896 897 898
		f 4 -1522 1522 -1516 1523
		mu 0 4 895 898 894 893
		f 4 1524 1525 -1520 1526
		mu 0 4 899 900 897 896
		f 4 1527 1528 1529 1530
		mu 0 4 901 902 903 904
		f 4 1531 -1525 1532 -1531
		mu 0 4 904 900 899 901
		f 4 1533 1534 1535 -1529
		mu 0 4 902 905 906 903
		f 4 1536 1537 1538 -1535
		mu 0 4 905 907 908 906
		f 4 1539 1540 1541 -1538
		mu 0 4 907 909 910 908
		f 4 1542 1543 1544 -1541
		mu 0 4 909 911 912 910
		f 4 1545 1546 1547 -1544
		mu 0 4 913 914 915 916
		f 4 1548 1549 -1547 1550
		mu 0 4 917 918 915 914
		f 4 1551 1552 1553 1554
		mu 0 4 919 920 921 922
		f 4 -1555 1555 1556 1557
		mu 0 4 923 924 925 926
		f 4 1558 1559 1560 1561
		mu 0 4 920 927 928 929
		f 4 1562 1563 -1553 -1562
		mu 0 4 929 930 921 920
		f 4 1564 1565 1566 -1560
		mu 0 4 927 931 932 928
		f 4 1567 1568 1569 -1566
		mu 0 4 933 934 935 936
		f 4 1570 1571 1572 -1569
		mu 0 4 934 937 938 935
		f 4 1573 1574 1575 -1572
		mu 0 4 937 939 940 938
		f 4 1576 1577 1578 -1575
		mu 0 4 939 941 942 940
		f 4 1579 1580 1581 -1578
		mu 0 4 941 943 944 942
		f 4 1582 1583 1584 -1581
		mu 0 4 943 945 946 944
		f 4 1585 1586 1587 -1584
		mu 0 4 945 947 948 946
		f 4 1588 1589 1590 1591
		mu 0 4 949 950 951 952
		f 4 1592 -1587 1593 -1592
		mu 0 4 952 948 947 949
		f 4 1594 1595 1596 -1590
		mu 0 4 950 953 954 951
		f 4 1597 1598 1599 1600
		mu 0 4 955 956 957 958
		f 4 -1601 1601 -1596 1602
		mu 0 4 955 958 954 953
		f 4 1603 1604 1605 -1599
		mu 0 4 956 959 960 957
		f 4 1606 1607 1608 -1605
		mu 0 4 959 961 962 960
		f 4 1609 1610 1611 -1608
		mu 0 4 963 964 965 966
		f 4 1612 1613 -1611 1614
		mu 0 4 967 968 965 964
		f 4 1615 1616 1617 1618
		mu 0 4 969 970 971 972
		f 4 -1619 1619 1620 1621
		mu 0 4 969 972 973 974
		f 4 1622 -1613 1623 -1622
		mu 0 4 974 968 967 969
		f 4 1624 1625 1626 -1617
		mu 0 4 970 975 976 971
		f 4 1627 1628 1629 -1626
		mu 0 4 975 977 978 976
		f 4 1630 1631 1632 -1629
		mu 0 4 977 979 980 978
		f 4 1633 -1632 1634 1635
		mu 0 4 981 980 979 982
		f 4 1636 1637 -1636 1638
		mu 0 4 983 984 981 982
		f 4 1639 1640 1641 1642
		mu 0 4 985 986 987 988
		f 4 -1643 1643 -1637 1644
		mu 0 4 985 988 984 983
		f 4 1645 1646 1647 1648
		mu 0 4 986 989 990 991
		f 4 -1649 1649 1650 -1641
		mu 0 4 986 991 992 987
		f 4 1651 1652 1653 -1647
		mu 0 4 989 993 994 990
		f 4 1654 1655 1656 -1653
		mu 0 4 993 995 996 994
		f 4 1657 1658 -1656 1659
		mu 0 4 997 998 996 995
		f 4 -1454 1660 -1660 1661
		mu 0 4 848 847 997 995
		f 4 1662 1663 1664 1665
		mu 0 4 999 1000 1001 1002
		f 4 -1665 1666 1667 1668
		mu 0 4 1002 1001 1003 1004
		f 4 1669 1670 1671 -1666
		mu 0 4 1002 1005 1006 999
		f 4 1672 1673 -1670 -1669
		mu 0 4 1004 1007 1005 1002
		f 4 1674 1675 1676 -1664
		mu 0 4 1000 1008 1009 1001
		f 4 -1677 1677 1678 -1667
		mu 0 4 1001 1009 1010 1003
		f 4 1679 1680 1681 -1676
		mu 0 4 1008 1011 1012 1009
		f 4 -1682 1682 1683 -1678
		mu 0 4 1009 1012 1013 1010
		f 4 1684 1685 1686 -1681
		mu 0 4 1011 1014 1015 1012
		f 4 -1687 1687 1688 -1683
		mu 0 4 1012 1015 1016 1013
		f 4 1689 1690 1691 -1686
		mu 0 4 1014 1017 1018 1015
		f 4 -1692 1692 1693 -1688
		mu 0 4 1015 1018 1019 1016
		f 4 1694 1695 1696 -1691
		mu 0 4 1017 1020 1021 1018
		f 4 -1697 1697 1698 -1693
		mu 0 4 1018 1021 1022 1019
		f 4 1699 -1671 1700 -1696
		mu 0 4 1020 1006 1005 1021
		f 4 -1701 -1674 1701 -1698
		mu 0 4 1021 1005 1007 1022
		f 4 1702 1703 1704 1705
		mu 0 4 1023 1024 1025 1026
		f 4 1706 1707 -1703 1708
		mu 0 4 1027 1028 1024 1023
		f 4 1709 1710 1711 -1706
		mu 0 4 1026 1029 1030 1023
		f 4 -1712 1712 1713 -1709
		mu 0 4 1023 1030 1031 1027
		f 4 1714 1715 1716 -1704
		mu 0 4 1024 1032 1033 1025
		f 4 1717 1718 -1715 -1708
		mu 0 4 1028 1034 1032 1024
		f 4 1719 1720 1721 -1716
		mu 0 4 1032 1035 1036 1033
		f 4 1722 1723 -1720 -1719
		mu 0 4 1034 1037 1035 1032
		f 4 1724 1725 1726 -1721
		mu 0 4 1035 1038 1039 1036
		f 4 1727 1728 -1725 -1724
		mu 0 4 1037 1040 1038 1035
		f 4 1729 1730 1731 -1726
		mu 0 4 1041 1042 1043 1044
		f 4 1732 1733 -1730 -1729
		mu 0 4 1045 1046 1042 1041
		f 4 1734 1735 1736 -1731
		mu 0 4 1042 1047 1048 1043
		f 4 1737 1738 -1735 -1734
		mu 0 4 1046 1049 1047 1042
		f 4 1739 -1711 1740 -1736
		mu 0 4 1047 1030 1029 1048
		f 4 1741 -1713 -1740 -1739
		mu 0 4 1049 1031 1030 1047
		f 4 -1705 1742 1743 1744
		mu 0 4 1026 1025 1050 1051
		f 4 1745 1746 -1710 -1745
		mu 0 4 1051 1052 1029 1026
		f 4 -1717 1747 1748 -1743
		mu 0 4 1025 1033 1053 1050
		f 4 -1722 1749 1750 -1748
		mu 0 4 1033 1036 1054 1053
		f 4 -1727 1751 1752 -1750
		mu 0 4 1036 1039 1055 1054
		f 4 -1732 1753 1754 -1752
		mu 0 4 1044 1043 1056 1057
		f 4 -1737 1755 1756 -1754
		mu 0 4 1043 1048 1058 1056
		f 4 -1741 -1747 1757 -1756
		mu 0 4 1048 1029 1052 1058
		f 4 -1744 1758 1759 1760
		mu 0 4 1051 1050 1059 1060
		f 4 1761 1762 -1746 -1761
		mu 0 4 1060 1061 1052 1051
		f 4 -1749 1763 1764 -1759
		mu 0 4 1050 1053 1062 1059
		f 4 -1751 1765 1766 -1764
		mu 0 4 1053 1054 1063 1062
		f 4 -1753 1767 1768 -1766
		mu 0 4 1054 1055 1064 1063
		f 4 -1755 1769 1770 -1768
		mu 0 4 1057 1056 1065 1066
		f 4 -1757 1771 1772 -1770
		mu 0 4 1056 1058 1067 1065
		f 4 -1758 -1763 1773 -1772
		mu 0 4 1058 1052 1061 1067
		f 4 -1760 1774 1775 1776
		mu 0 4 1060 1059 1068 1069
		f 4 1777 1778 -1762 -1777
		mu 0 4 1069 1070 1061 1060
		f 4 -1765 1779 1780 -1775
		mu 0 4 1059 1062 1071 1068
		f 4 -1767 1781 1782 -1780
		mu 0 4 1062 1063 1072 1071
		f 4 -1769 1783 1784 -1782
		mu 0 4 1063 1064 1073 1072
		f 4 -1771 1785 1786 -1784
		mu 0 4 1066 1065 1074 1075
		f 4 -1773 1787 1788 -1786
		mu 0 4 1065 1067 1076 1074
		f 4 -1774 -1779 1789 -1788
		mu 0 4 1067 1061 1070 1076
		f 4 -1776 1790 1791 1792
		mu 0 4 1069 1068 1077 1078
		f 4 1793 1794 -1778 -1793
		mu 0 4 1078 1079 1070 1069
		f 4 -1781 1795 1796 -1791
		mu 0 4 1068 1071 1080 1077
		f 4 -1783 1797 1798 -1796
		mu 0 4 1071 1072 1081 1080
		f 4 -1785 1799 1800 -1798
		mu 0 4 1072 1073 1082 1081
		f 4 -1787 1801 1802 -1800
		mu 0 4 1075 1074 1083 1084
		f 4 -1789 1803 1804 -1802
		mu 0 4 1074 1076 1085 1083
		f 4 -1790 -1795 1805 -1804
		mu 0 4 1076 1070 1079 1085
		f 4 -1792 1806 1807 1808
		mu 0 4 1078 1077 1086 1087
		f 4 1809 1810 -1794 -1809
		mu 0 4 1087 1088 1079 1078
		f 4 -1797 1811 1812 -1807
		mu 0 4 1077 1080 1089 1086
		f 4 -1799 1813 1814 -1812
		mu 0 4 1080 1081 1090 1089
		f 4 -1801 1815 1816 -1814
		mu 0 4 1081 1082 1091 1090
		f 4 -1803 1817 1818 -1816
		mu 0 4 1084 1083 1092 1093
		f 4 -1805 1819 1820 -1818
		mu 0 4 1083 1085 1094 1092
		f 4 -1806 -1811 1821 -1820
		mu 0 4 1085 1079 1088 1094
		f 4 -1808 1822 1823 1824
		mu 0 4 1095 1096 1097 1098
		f 4 1825 1826 -1810 -1825
		mu 0 4 1099 1100 1101 1102
		f 4 -1813 1827 1828 -1823
		mu 0 4 1096 1103 1104 1097
		f 4 -1815 1829 1830 -1828
		mu 0 4 1103 1105 1106 1104
		f 4 -1817 1831 1832 1833
		mu 0 4 1105 1107 1108 1109
		f 4 1834 1835 -1830 -1834
		mu 0 4 1109 1110 1106 1105
		f 4 -1819 1836 1837 1838
		mu 0 4 1107 1111 1112 1113
		f 4 1839 1840 -1832 -1839
		mu 0 4 1113 1114 1108 1107
		f 4 -1821 1841 1842 -1837
		mu 0 4 1111 1115 1116 1112
		f 4 -1822 -1827 1843 -1842
		mu 0 4 1115 1101 1100 1116
		f 4 1844 1845 1846 1847
		mu 0 4 1117 1118 1119 1120
		f 4 1848 1849 -1845 1850
		mu 0 4 1121 1122 1118 1117
		f 4 1851 1852 1853 -1848
		mu 0 4 1120 1123 1124 1117
		f 4 -1854 1854 1855 -1851
		mu 0 4 1117 1124 1125 1121
		f 4 1856 1857 1858 -1846
		mu 0 4 1118 1126 1127 1119
		f 4 1859 1860 -1857 -1850
		mu 0 4 1122 1128 1126 1118
		f 4 1861 1862 1863 -1858
		mu 0 4 1126 1129 1130 1127
		f 4 1864 1865 -1862 -1861
		mu 0 4 1128 925 1129 1126
		f 4 1866 1867 1868 -1863
		mu 0 4 1129 1131 1132 1130
		f 4 -1556 1869 -1867 -1866
		mu 0 4 925 924 1131 1129
		f 4 1870 1871 1872 -1868
		mu 0 4 1133 1134 1135 1136
		f 4 -1554 1873 -1871 -1870
		mu 0 4 922 921 1134 1133
		f 4 1874 1875 1876 -1872
		mu 0 4 1134 1137 1138 1135
		f 4 -1564 1877 -1875 -1874
		mu 0 4 921 930 1137 1134
		f 4 1878 -1853 1879 -1876
		mu 0 4 1137 1124 1123 1138
		f 4 1880 -1855 -1879 -1878
		mu 0 4 930 1125 1124 1137
		f 4 -1847 1881 1882 1883
		mu 0 4 1120 1119 1139 1140
		f 4 1884 1885 -1852 -1884
		mu 0 4 1140 1141 1123 1120
		f 4 -1859 1886 1887 -1882
		mu 0 4 1119 1127 1142 1139
		f 4 -1864 1888 1889 -1887
		mu 0 4 1127 1130 1143 1142
		f 4 -1869 1890 1891 -1889
		mu 0 4 1130 1132 1144 1143
		f 4 -1873 1892 1893 -1891
		mu 0 4 1136 1135 1145 1146
		f 4 -1877 1894 1895 -1893
		mu 0 4 1135 1138 1147 1145
		f 4 -1880 -1886 1896 -1895
		mu 0 4 1138 1123 1141 1147
		f 4 -1883 1897 1898 1899
		mu 0 4 1140 1139 1148 1149
		f 4 1900 1901 -1885 -1900
		mu 0 4 1149 1150 1141 1140
		f 4 -1888 1902 1903 -1898
		mu 0 4 1139 1142 1151 1148
		f 4 -1890 1904 1905 -1903
		mu 0 4 1142 1143 1152 1151
		f 4 -1892 1906 1907 -1905
		mu 0 4 1143 1144 1153 1152
		f 4 -1894 1908 1909 -1907
		mu 0 4 1146 1145 1154 1155
		f 4 -1896 1910 1911 -1909
		mu 0 4 1145 1147 1156 1154
		f 4 -1897 -1902 1912 -1911
		mu 0 4 1147 1141 1150 1156
		f 4 -1899 1913 1914 1915
		mu 0 4 1149 1148 1157 1158
		f 4 1916 1917 -1901 -1916
		mu 0 4 1158 1159 1150 1149
		f 4 -1904 1918 1919 -1914
		mu 0 4 1148 1151 1160 1157
		f 4 -1906 1920 1921 -1919
		mu 0 4 1151 1152 1161 1160
		f 4 -1908 1922 1923 -1921
		mu 0 4 1152 1153 1162 1161
		f 4 -1910 1924 1925 -1923
		mu 0 4 1155 1154 1163 1164
		f 4 -1912 1926 1927 -1925
		mu 0 4 1154 1156 1165 1163
		f 4 -1913 -1918 1928 -1927
		mu 0 4 1156 1150 1159 1165
		f 4 -1915 1929 1930 1931
		mu 0 4 1158 1157 1166 1167
		f 4 1932 1933 -1917 -1932
		mu 0 4 1167 1168 1159 1158
		f 4 -1920 1934 1935 -1930
		mu 0 4 1157 1160 1169 1166
		f 4 -1922 1936 1937 -1935
		mu 0 4 1160 1161 1170 1169
		f 4 -1924 1938 1939 -1937
		mu 0 4 1161 1162 1171 1170
		f 4 -1926 1940 1941 -1939
		mu 0 4 1164 1163 1172 1173
		f 4 -1928 1942 1943 -1941
		mu 0 4 1163 1165 1174 1172
		f 4 -1929 -1934 1944 -1943
		mu 0 4 1165 1159 1168 1174
		f 4 -1931 1945 1946 1947
		mu 0 4 1167 1166 1175 1176
		f 4 1948 1949 -1933 -1948
		mu 0 4 1176 1177 1168 1167
		f 4 -1936 1950 1951 -1946
		mu 0 4 1166 1169 1178 1175
		f 4 -1938 1952 1953 -1951
		mu 0 4 1169 1170 1179 1178
		f 4 -1940 1954 1955 -1953
		mu 0 4 1170 1171 1180 1179
		f 4 -1942 1956 1957 -1955
		mu 0 4 1173 1172 1181 1182
		f 4 -1944 1958 1959 -1957
		mu 0 4 1172 1174 1183 1181
		f 4 -1945 -1950 1960 -1959
		mu 0 4 1174 1168 1177 1183
		f 4 -1952 1961 1962 1963
		mu 0 4 1175 1178 1184 1185
		f 4 1964 1965 -1947 -1964
		mu 0 4 1185 1186 1176 1175
		f 4 -1954 1966 1967 -1962
		mu 0 4 1178 1179 1187 1184
		f 4 -1956 1968 1969 -1967
		mu 0 4 1179 1180 1188 1187
		f 4 -1958 1970 1971 -1969
		mu 0 4 1182 1181 1189 1190
		f 4 -1960 1972 1973 -1971
		mu 0 4 1181 1183 1191 1189
		f 4 -1961 1974 1975 -1973
		mu 0 4 1183 1177 1192 1191
		f 4 -1949 -1966 1976 -1975
		mu 0 4 1177 1176 1186 1192
		f 4 -1965 1977 1978 1979
		mu 0 4 1193 1194 1195 1196
		f 4 1980 1981 -1977 -1980
		mu 0 4 1196 1197 1198 1193
		f 4 -1963 1982 1983 -1978
		mu 0 4 1194 1199 1200 1195
		f 4 -1968 1984 1985 -1983
		mu 0 4 1199 1201 1202 1200
		f 4 -1970 1986 1987 -1985
		mu 0 4 1201 1203 1204 1202
		f 4 -1972 1988 1989 -1987
		mu 0 4 1205 1206 1207 1208
		f 4 -1974 1990 1991 1992
		mu 0 4 1206 1209 1210 1211
		f 4 1993 1994 -1989 -1993
		mu 0 4 1211 1212 1207 1206
		f 4 -1976 1995 1996 -1991
		mu 0 4 1209 1198 1213 1210
		f 4 -1982 1997 1998 -1996
		mu 0 4 1198 1197 1214 1213
		f 4 1999 2000 -1521 2001
		mu 0 4 1215 1216 898 897
		f 4 2002 2003 -2002 -1526
		mu 0 4 900 1217 1215 897
		f 4 2004 2005 -1523 -2001
		mu 0 4 1216 1218 894 898
		f 4 2006 2007 2008 2009
		mu 0 4 1219 1220 1221 1222
		f 4 -2009 2010 -2000 2011
		mu 0 4 1222 1221 1216 1215
		f 4 2012 2013 -2010 2014
		mu 0 4 1223 1224 1219 1222
		f 4 -2012 -2004 2015 -2015
		mu 0 4 1222 1215 1217 1223
		f 4 -2008 2016 2017 2018
		mu 0 4 1221 1220 1225 1226
		f 4 -2019 2019 -2005 -2011
		mu 0 4 1221 1226 1218 1216
		f 4 2020 2021 -2007 2022
		mu 0 4 1227 1228 1220 1219
		f 4 2023 2024 -2023 -2014
		mu 0 4 1224 1229 1227 1219
		f 4 -2022 2025 2026 -2017
		mu 0 4 1220 1228 1230 1225
		f 4 2027 2028 -2021 2029
		mu 0 4 1231 1232 1228 1227
		f 4 2030 2031 -2030 -2025
		mu 0 4 1229 1233 1231 1227
		f 4 -2029 2032 2033 -2026
		mu 0 4 1228 1232 958 1230
		f 4 -1591 2034 -2028 2035
		mu 0 4 952 951 1232 1231
		f 4 -2032 2036 -1593 -2036
		mu 0 4 1231 1233 948 952
		f 4 -1597 -1602 -2033 -2035
		mu 0 4 951 954 958 1232
		f 4 2037 2038 -1606 2039
		mu 0 4 1234 1235 957 960
		f 4 2040 2041 -2040 -1609
		mu 0 4 962 1236 1234 960
		f 4 -2039 2042 -2034 -1600
		mu 0 4 957 1235 1230 958
		f 4 2043 2044 2045 2046
		mu 0 4 1237 1238 1239 1240
		f 4 -2046 2047 -2038 2048
		mu 0 4 1240 1239 1235 1234
		f 4 2049 2050 -2047 2051
		mu 0 4 1241 1242 1237 1240
		f 4 -2049 -2042 2052 -2052
		mu 0 4 1240 1234 1236 1241
		f 4 -2045 2053 -2018 2054
		mu 0 4 1239 1238 1226 1225
		f 4 -2027 -2043 -2048 -2055
		mu 0 4 1225 1230 1235 1239
		f 4 2055 2056 -2044 2057
		mu 0 4 1243 1244 1238 1237
		f 4 2058 2059 -2058 -2051
		mu 0 4 1242 1245 1243 1237
		f 4 2060 -2020 -2054 -2057
		mu 0 4 1244 1218 1226 1238
		f 4 -1515 2061 -2056 2062
		mu 0 4 889 892 1244 1243
		f 4 -2063 -2060 2063 -1512
		mu 0 4 889 1243 1245 890
		f 4 -1517 -2006 -2061 -2062
		mu 0 4 892 894 1218 1244
		f 4 2064 2065 -1545 2066
		mu 0 4 1246 1247 910 912
		f 4 2067 2068 -2067 -1548
		mu 0 4 915 1248 1249 916
		f 4 -2066 2069 2070 -1542
		mu 0 4 910 1247 1250 908
		f 4 2071 2072 -2065 2073
		mu 0 4 1251 1252 1247 1246
		f 4 2074 2075 -2074 -2069
		mu 0 4 1248 1253 1254 1249
		f 4 -2073 2076 2077 -2070
		mu 0 4 1247 1252 1255 1250
		f 4 2078 2079 -2072 2080
		mu 0 4 1256 1257 1252 1251
		f 4 2081 2082 -2081 -2076
		mu 0 4 1253 1258 1259 1254
		f 4 -2080 2083 2084 -2077
		mu 0 4 1252 1257 1260 1255
		f 4 2085 2086 -2079 2087
		mu 0 4 1261 1262 1257 1256
		f 4 2088 2089 -2088 -2083
		mu 0 4 1258 1263 1264 1259
		f 4 -2087 2090 2091 -2084
		mu 0 4 1257 1262 1265 1260
		f 4 -1570 2092 -2086 2093
		mu 0 4 936 935 1262 1261
		f 4 2094 -1567 -2094 -2090
		mu 0 4 1263 928 932 1264
		f 4 -2093 -1573 2095 -2091
		mu 0 4 1262 935 938 1265
		f 4 -2071 2096 2097 -1539
		mu 0 4 908 1250 1266 906
		f 4 -2078 2098 2099 -2097
		mu 0 4 1250 1255 1267 1266
		f 4 -2085 2100 2101 -2099
		mu 0 4 1255 1260 1268 1267
		f 4 -2092 2102 2103 -2101
		mu 0 4 1260 1265 1269 1268
		f 4 -2096 -1576 2104 -2103
		mu 0 4 1265 938 940 1269
		f 4 2105 2106 -1536 -2098
		mu 0 4 1266 1270 903 906
		f 4 -2107 2107 2108 -1530
		mu 0 4 903 1270 1271 904
		f 4 -2100 2109 2110 -2106
		mu 0 4 1266 1267 1272 1270
		f 4 -2102 2111 2112 -2110
		mu 0 4 1267 1268 1273 1272
		f 4 -2104 2113 2114 -2112
		mu 0 4 1268 1269 1274 1273
		f 4 -2105 -1579 2115 -2114
		mu 0 4 1269 940 942 1274
		f 4 -1685 2116 2117 2118
		mu 0 4 1014 1011 1275 1276
		f 4 2119 2120 -1690 -2119
		mu 0 4 1276 944 1017 1014
		f 4 -1865 2121 2122 -1557
		mu 0 4 925 1128 1277 926
		f 4 -1860 2123 2124 -2122
		mu 0 4 1128 1122 1278 1277
		f 4 -1849 2125 2126 -2124
		mu 0 4 1122 1121 1279 1278
		f 4 -1856 2127 2128 -2126
		mu 0 4 1121 1125 1280 1279
		f 4 -1881 -1563 2129 -2128
		mu 0 4 1125 930 929 1280
		f 4 -2095 2130 -2130 -1561
		mu 0 4 928 1263 1280 929;
	setAttr ".fc[1000:1499]"
		f 4 -2089 2131 -2129 -2131
		mu 0 4 1263 1258 1279 1280
		f 4 2132 2133 -2127 2134
		mu 0 4 1281 1282 1278 1279
		f 4 -2132 -2082 2135 -2135
		mu 0 4 1279 1258 1253 1281
		f 4 2136 2137 -2125 -2134
		mu 0 4 1282 918 1277 1278
		f 4 -1549 2138 -2123 -2138
		mu 0 4 918 917 926 1277
		f 4 -2137 2139 -2068 -1550
		mu 0 4 918 1282 1248 915
		f 4 -2133 -2136 -2075 -2140
		mu 0 4 1282 1281 1253 1248
		f 4 -2013 2140 -1663 2141
		mu 0 4 1224 1223 1000 999
		f 4 -1672 2142 -2024 -2142
		mu 0 4 999 1006 1229 1224
		f 4 -2016 2143 -1675 -2141
		mu 0 4 1223 1217 1008 1000
		f 4 -1700 2144 -2031 -2143
		mu 0 4 1006 1020 1233 1229
		f 4 -1588 -2037 -2145 2145
		mu 0 4 946 948 1233 1020
		f 4 -1695 -2121 -1585 -2146
		mu 0 4 1020 1017 944 946
		f 4 2146 -2117 -1680 2147
		mu 0 4 1283 1275 1011 1008
		f 4 -2144 -2003 2148 -2148
		mu 0 4 1008 1217 900 1283
		f 4 -1532 2149 -2147 -2149
		mu 0 4 900 904 1275 1283
		f 4 -2111 2150 2151 -2108
		mu 0 4 1270 1272 1284 1271
		f 4 -2113 2152 2153 -2151
		mu 0 4 1272 1273 1275 1284
		f 4 -2115 2154 -2118 -2153
		mu 0 4 1273 1274 1276 1275
		f 4 -2116 -1582 -2120 -2155
		mu 0 4 1274 942 944 1276
		f 4 -2150 -2109 -2152 -2154
		mu 0 4 1275 904 1271 1284
		f 4 -2064 2155 2156 -1506
		mu 0 4 884 1285 1286 885
		f 4 -2059 2157 2158 -2156
		mu 0 4 1285 1287 1288 1286
		f 4 -2050 2159 2160 -2158
		mu 0 4 1287 1289 1290 1288
		f 4 -2053 2161 2162 -2160
		mu 0 4 1289 1291 1292 1290
		f 4 -2041 -1612 2163 -2162
		mu 0 4 1291 966 965 1292
		f 4 -2157 2164 2165 -1508
		mu 0 4 885 1286 1293 886
		f 4 -2159 2166 2167 -2165
		mu 0 4 1286 1288 1294 1293
		f 4 -2161 2168 2169 -2167
		mu 0 4 1288 1290 1295 1294
		f 4 -2163 2170 2171 -2169
		mu 0 4 1290 1292 1296 1295
		f 4 -2164 -1614 2172 -2171
		mu 0 4 1292 965 968 1296
		f 4 -1461 -1466 2173 2174
		mu 0 4 854 853 856 1297
		f 4 -2174 -1471 -1472 2175
		mu 0 4 1297 856 859 860
		f 4 2176 -1463 -2175 2177
		mu 0 4 1298 855 854 1297
		f 4 -2176 -1476 2178 -2178
		mu 0 4 1297 860 863 1298
		f 4 2179 2180 2181 2182
		mu 0 4 1299 1300 1301 1302
		f 4 2183 2184 -2180 2185
		mu 0 4 1303 1304 1300 1299
		f 4 2186 2187 2188 -2183
		mu 0 4 1302 1305 1306 1299
		f 4 -2189 2189 2190 -2186
		mu 0 4 1299 1306 1307 1303
		f 4 2191 2192 2193 -2181
		mu 0 4 1300 1308 1309 1301
		f 4 2194 2195 -2192 -2185
		mu 0 4 1304 1310 1308 1300
		f 4 2196 2197 2198 -2193
		mu 0 4 1308 1311 1312 1309
		f 4 2199 2200 -2197 -2196
		mu 0 4 1310 1313 1311 1308
		f 4 2201 2202 2203 -2198
		mu 0 4 1311 1314 1315 1312
		f 4 2204 2205 -2202 -2201
		mu 0 4 1313 996 1314 1311
		f 4 2206 2207 2208 -2203
		mu 0 4 1314 1316 1317 1315
		f 4 -1659 2209 -2207 -2206
		mu 0 4 996 998 1316 1314
		f 4 2210 2211 2212 -2208
		mu 0 4 1316 1318 1319 1317
		f 4 2213 2214 -2211 -2210
		mu 0 4 998 1320 1318 1316
		f 4 2215 -2188 2216 -2212
		mu 0 4 1318 1306 1305 1319
		f 4 2217 -2190 -2216 -2215
		mu 0 4 1320 1307 1306 1318
		f 4 -2182 2218 2219 2220
		mu 0 4 1302 1301 1321 1322
		f 4 2221 2222 -2187 -2221
		mu 0 4 1322 1323 1305 1302
		f 4 -2194 2223 2224 -2219
		mu 0 4 1301 1309 1324 1321
		f 4 -2199 2225 2226 -2224
		mu 0 4 1309 1312 1325 1324
		f 4 -2204 2227 2228 -2226
		mu 0 4 1312 1315 1326 1325
		f 4 -2209 2229 2230 -2228
		mu 0 4 1315 1317 1327 1326
		f 4 -2213 2231 2232 -2230
		mu 0 4 1317 1319 1328 1327
		f 4 -2217 -2223 2233 -2232
		mu 0 4 1319 1305 1323 1328
		f 4 2234 2235 -2184 2236
		mu 0 4 1329 992 1304 1303
		f 4 -2191 2237 2238 -2237
		mu 0 4 1303 1307 1330 1329
		f 4 -1650 2239 -2195 -2236
		mu 0 4 992 991 1310 1304
		f 4 -1648 2240 -2200 -2240
		mu 0 4 991 990 1313 1310
		f 4 -1654 -1657 -2205 -2241
		mu 0 4 990 994 996 1313
		f 4 2241 2242 -2214 2243
		mu 0 4 1331 1332 1320 998
		f 4 -1658 -1661 2244 -2244
		mu 0 4 998 997 847 1331
		f 4 2245 -2238 -2218 -2243
		mu 0 4 1332 1330 1307 1320
		f 4 2246 2247 -1453 2248
		mu 0 4 1333 1334 847 846
		f 4 -1451 2249 2250 -2249
		mu 0 4 846 845 1335 1333
		f 4 -2235 2251 2252 -1651
		mu 0 4 992 1329 1336 987
		f 4 -2239 2253 2254 -2252
		mu 0 4 1329 1330 1337 1336
		f 4 -2246 2255 2256 2257
		mu 0 4 1330 1332 1338 1339
		f 4 2258 2259 -2254 -2258
		mu 0 4 1339 1340 1337 1330
		f 4 -2242 2260 2261 -2256
		mu 0 4 1332 1331 1341 1338
		f 4 2262 -2261 -2245 -2248
		mu 0 4 1334 1341 1331 847
		f 4 2263 2264 2265 2266
		mu 0 4 1342 1343 1344 1345
		f 4 2267 2268 -2264 2269
		mu 0 4 1346 1347 1343 1342
		f 4 -2267 2270 -1495 2271
		mu 0 4 1342 1345 879 878
		f 4 -1500 2272 -2270 -2272
		mu 0 4 878 880 1346 1342
		f 4 2273 2274 2275 -2265
		mu 0 4 1343 1348 1349 1344
		f 4 2276 2277 -2274 -2269
		mu 0 4 1347 1350 1348 1343
		f 4 2278 2279 2280 2281
		mu 0 4 1351 1352 1353 1354
		f 4 -2281 2282 -2268 2283
		mu 0 4 1354 1353 1347 1346
		f 4 2284 2285 -2282 2286
		mu 0 4 1355 1356 1351 1354
		f 4 -2284 -2273 2287 -2287
		mu 0 4 1354 1346 880 1355
		f 4 -2280 2288 2289 2290
		mu 0 4 1353 1352 1357 1358
		f 4 -2291 2291 -2277 -2283
		mu 0 4 1353 1358 1350 1347
		f 4 2292 2293 -2279 2294
		mu 0 4 1359 1360 1352 1351
		f 4 2295 2296 -2295 -2286
		mu 0 4 1356 1361 1359 1351
		f 4 -2294 2297 2298 -2289
		mu 0 4 1352 1360 1362 1357
		f 4 2299 2300 -2293 2301
		mu 0 4 1363 1364 1360 1359
		f 4 2302 2303 -2302 -2297
		mu 0 4 1361 973 1363 1359
		f 4 2304 2305 -2298 -2301
		mu 0 4 1364 1365 1362 1360
		f 4 2306 2307 2308 2309
		mu 0 4 1366 1367 1368 1369
		f 4 -2309 2310 -2300 2311
		mu 0 4 1369 1368 1364 1363
		f 4 -1618 2312 -2310 2313
		mu 0 4 972 971 1366 1369
		f 4 -2312 -2304 -1620 -2314
		mu 0 4 1369 1363 973 972
		f 4 2314 2315 2316 -2308
		mu 0 4 1367 1370 1371 1368
		f 4 -2317 2317 -2305 -2311
		mu 0 4 1368 1371 1365 1364
		f 4 2318 2319 -2307 2320
		mu 0 4 1372 1373 1367 1366
		f 4 2321 2322 -2319 2323
		mu 0 4 1374 1375 1373 1372
		f 4 -2321 -2313 -1627 2324
		mu 0 4 1372 1366 971 976
		f 4 -2325 -1630 2325 -2324
		mu 0 4 1372 976 978 1374
		f 4 2326 2327 -2315 -2320
		mu 0 4 1373 1376 1370 1367
		f 4 2328 2329 -2327 -2323
		mu 0 4 1375 1377 1376 1373
		f 4 2330 2331 -2275 2332
		mu 0 4 1378 1379 1349 1348
		f 4 -2278 2333 2334 -2333
		mu 0 4 1348 1350 1380 1378
		f 4 -2290 2335 2336 2337
		mu 0 4 1358 1357 1381 1382
		f 4 -2338 2338 -2334 -2292
		mu 0 4 1358 1382 1380 1350
		f 4 -2299 2339 2340 -2336
		mu 0 4 1357 1362 1383 1381
		f 4 -2316 2341 2342 2343
		mu 0 4 1371 1370 1384 1385
		f 4 2344 2345 -2318 -2344
		mu 0 4 1385 1386 1365 1371
		f 4 -2328 2346 2347 -2342
		mu 0 4 1370 1376 1387 1384
		f 4 2348 2349 2350 -2347
		mu 0 4 1376 1388 1389 1387
		f 4 2351 2352 -2349 -2330
		mu 0 4 1377 1390 1388 1376
		f 4 2353 2354 2355 -2350
		mu 0 4 1388 1391 1392 1389
		f 4 -2255 2356 -2354 2357
		mu 0 4 1336 1337 1391 1388
		f 4 2358 -2253 -2358 -2353
		mu 0 4 1390 987 1336 1388
		f 4 2359 2360 2361 -2355
		mu 0 4 1391 1383 1393 1392
		f 4 2362 -2341 -2360 -2357
		mu 0 4 1337 1381 1383 1391
		f 4 -2340 2363 2364 -2361
		mu 0 4 1383 1362 1394 1393
		f 4 -2306 -2346 2365 -2364
		mu 0 4 1362 1365 1386 1394
		f 4 -2343 2366 2367 2368
		mu 0 4 1385 1384 1395 1396
		f 4 2369 -2366 -2345 -2369
		mu 0 4 1396 1394 1386 1385
		f 4 -2348 2370 2371 -2367
		mu 0 4 1384 1387 1397 1395
		f 4 -2351 2372 2373 -2371
		mu 0 4 1387 1389 1398 1397
		f 4 -2356 2374 2375 -2373
		mu 0 4 1389 1392 1399 1398
		f 4 -2362 2376 2377 -2375
		mu 0 4 1392 1393 1400 1399
		f 4 -2365 2378 2379 -2377
		mu 0 4 1393 1394 1401 1400
		f 4 -2370 2380 2381 -2379
		mu 0 4 1394 1396 1402 1401
		f 4 -2368 2382 2383 -2381
		mu 0 4 1396 1395 1403 1402
		f 4 -2372 2384 2385 -2383
		mu 0 4 1395 1397 1404 1403
		f 4 -2374 -2376 2386 -2385
		mu 0 4 1397 1398 1399 1404
		f 4 -2382 -2384 2387 -2380
		mu 0 4 1401 1402 1403 1400
		f 4 -2386 -2387 -2378 -2388
		mu 0 4 1403 1404 1399 1400
		f 4 -2260 2388 -2337 -2363
		mu 0 4 1337 1340 1382 1381
		f 4 -2389 2389 2390 -2339
		mu 0 4 1382 1340 1405 1380
		f 4 -1483 2391 -1475 2392
		mu 0 4 869 868 863 862
		f 4 -2359 2393 2394 -1642
		mu 0 4 987 1390 1406 988
		f 4 -2259 2395 2396 -2390
		mu 0 4 1340 1339 1407 1405
		f 4 2397 2398 -2396 -2257
		mu 0 4 1338 1408 1407 1339
		f 4 -2177 2399 2400 2401
		mu 0 4 855 1298 1409 1410
		f 4 -2402 2402 -1457 -1464
		mu 0 4 855 1410 850 849
		f 4 -2266 2403 -1487 2404
		mu 0 4 1345 1344 866 871
		f 4 -1496 -2271 -2405 -1490
		mu 0 4 873 879 1345 871
		f 4 -2276 2405 -1480 -2404
		mu 0 4 1344 1349 867 866
		f 4 -2406 -2332 2406 -1482
		mu 0 4 867 1349 1379 868
		f 4 -2407 2407 -2179 -2392
		mu 0 4 868 1379 1298 863
		f 4 -2331 2408 -2400 -2408
		mu 0 4 1379 1378 1409 1298
		f 4 -2391 2409 -2409 -2335
		mu 0 4 1380 1405 1409 1378
		f 4 -2401 -2410 -2397 2410
		mu 0 4 1410 1409 1405 1407
		f 4 2411 -2403 -2411 -2399
		mu 0 4 1408 850 1410 1407
		f 4 2412 2413 2414 2415
		mu 0 4 1411 1412 1413 1414
		f 4 2416 2417 -2413 2418
		mu 0 4 1415 1416 1412 1411
		f 4 2419 2420 2421 -2416
		mu 0 4 1417 1418 1419 1420
		f 4 -2422 2422 2423 -2419
		mu 0 4 1420 1419 1421 1422
		f 4 2424 2425 2426 -2414
		mu 0 4 1412 1423 1424 1413
		f 4 2427 2428 -2425 -2418
		mu 0 4 1416 1425 1423 1412
		f 4 2429 2430 2431 -2426
		mu 0 4 1423 1426 1427 1424
		f 4 2432 2433 -2430 -2429
		mu 0 4 1425 1428 1426 1423
		f 4 2434 2435 2436 -2431
		mu 0 4 1426 1429 1430 1427
		f 4 2437 2438 -2435 -2434
		mu 0 4 1428 1431 1429 1426
		f 4 2439 2440 2441 -2436
		mu 0 4 1429 1432 1433 1430
		f 4 -1841 2442 -2440 2443
		mu 0 4 1108 1114 1432 1429
		f 4 -2439 2444 -1833 -2444
		mu 0 4 1429 1431 1109 1108
		f 4 2445 2446 2447 -2441
		mu 0 4 1432 1434 1435 1433
		f 4 2448 2449 -2446 -2443
		mu 0 4 1114 1436 1434 1432
		f 4 2450 -2421 2451 -2447
		mu 0 4 1434 1419 1418 1435
		f 4 2452 2453 -2451 -2450
		mu 0 4 1436 1437 1419 1434
		f 4 2454 2455 -2423 -2454
		mu 0 4 1437 1438 1421 1419
		f 4 -2415 2456 2457 2458
		mu 0 4 1414 1413 1439 1440
		f 4 2459 2460 -2420 -2459
		mu 0 4 1441 1442 1418 1417
		f 4 -2427 2461 2462 -2457
		mu 0 4 1413 1424 1443 1439
		f 4 -2432 2463 2464 -2462
		mu 0 4 1424 1427 1444 1443
		f 4 -2437 2465 2466 -2464
		mu 0 4 1427 1430 1445 1444
		f 4 -2442 2467 2468 -2466
		mu 0 4 1430 1433 1446 1445
		f 4 -2448 2469 2470 -2468
		mu 0 4 1433 1435 1447 1446
		f 4 -2452 -2461 2471 -2470
		mu 0 4 1435 1418 1442 1447
		f 4 -2458 2472 2473 2474
		mu 0 4 1440 1439 1448 1449
		f 4 2475 2476 -2460 -2475
		mu 0 4 1450 1451 1442 1441
		f 4 -2463 2477 2478 -2473
		mu 0 4 1439 1443 1452 1448
		f 4 -2465 2479 2480 -2478
		mu 0 4 1443 1444 1453 1452
		f 4 -2467 2481 2482 -2480
		mu 0 4 1444 1445 1454 1453
		f 4 -2469 2483 2484 -2482
		mu 0 4 1445 1446 1455 1454
		f 4 -2471 2485 2486 -2484
		mu 0 4 1446 1447 1456 1455
		f 4 -2472 -2477 2487 -2486
		mu 0 4 1447 1442 1451 1456
		f 4 -2474 2488 2489 2490
		mu 0 4 1449 1448 1457 1458
		f 4 2491 2492 -2476 -2491
		mu 0 4 1459 1460 1451 1450
		f 4 -2479 2493 2494 -2489
		mu 0 4 1448 1452 1461 1457
		f 4 -2481 2495 2496 -2494
		mu 0 4 1452 1453 1462 1461
		f 4 -2483 2497 2498 2499
		mu 0 4 1453 1454 1463 1464
		f 4 2500 2501 -2496 -2500
		mu 0 4 1464 1465 1462 1453
		f 4 -2485 2502 2503 -2498
		mu 0 4 1454 1455 1466 1463
		f 4 -2487 2504 2505 2506
		mu 0 4 1455 1456 1467 1468
		f 4 -2507 2507 2508 -2503
		mu 0 4 1455 1468 1469 1466
		f 4 -2488 -2493 2509 -2505
		mu 0 4 1456 1451 1460 1467
		f 4 -2490 2510 2511 2512
		mu 0 4 1458 1457 1470 1471
		f 4 2513 2514 -2492 -2513
		mu 0 4 1471 1472 1460 1459
		f 4 -2495 2515 2516 -2511
		mu 0 4 1457 1461 1473 1470
		f 4 -2497 2517 2518 -2516
		mu 0 4 1461 1462 1474 1473
		f 4 -2502 2519 2520 -2518
		mu 0 4 1462 1465 1475 1474
		f 4 -2506 2521 2522 2523
		mu 0 4 1468 1467 1476 1477
		f 4 2524 2525 -2508 -2524
		mu 0 4 1477 1478 1469 1468
		f 4 -2510 -2515 2526 -2522
		mu 0 4 1467 1460 1472 1476
		f 4 2527 2528 2529 2530
		mu 0 4 1479 1480 1481 1482
		f 4 2531 2532 -2528 2533
		mu 0 4 1483 1484 1480 1479
		f 4 -2531 2534 2535 2536
		mu 0 4 1479 1482 1485 1486
		f 4 2537 2538 -2534 -2537
		mu 0 4 1486 1487 1483 1479
		f 4 2539 2540 2541 -2529
		mu 0 4 1488 1489 1490 1491
		f 4 2542 2543 -2540 -2533
		mu 0 4 1492 1493 1489 1488
		f 4 2544 2545 2546 -2541
		mu 0 4 1489 1494 1495 1490
		f 4 2547 2548 -2545 -2544
		mu 0 4 1493 1496 1494 1489
		f 4 2549 2550 -2546 2551
		mu 0 4 1497 1498 1495 1494
		f 4 -2549 2552 2553 -2552
		mu 0 4 1494 1496 1499 1497
		f 4 2554 2555 2556 2557
		mu 0 4 1500 1501 1502 1503
		f 4 -2557 2558 2559 2560
		mu 0 4 1503 1502 1504 1505
		f 4 2561 2562 2563 -2561
		mu 0 4 1505 1506 1507 1503
		f 4 -2564 2564 2565 -2558
		mu 0 4 1503 1507 1508 1500
		f 4 2566 2567 2568 -2556
		mu 0 4 1501 1509 1510 1502
		f 4 -2569 2569 2570 -2559
		mu 0 4 1502 1510 1511 1504
		f 4 2571 2572 2573 -2568
		mu 0 4 1512 1513 1514 1515
		f 4 -2574 2574 2575 -2570
		mu 0 4 1515 1514 1516 1517
		f 4 2576 2577 2578 -2573
		mu 0 4 1513 1212 1518 1514
		f 4 -2579 2579 2580 -2575
		mu 0 4 1514 1518 1214 1516
		f 4 2581 2582 2583 2584
		mu 0 4 1519 1520 1521 1522
		f 4 2585 2586 -2582 2587
		mu 0 4 1523 1524 1520 1519
		f 4 -2585 2588 -1981 2589
		mu 0 4 1519 1522 1197 1196
		f 4 -2590 -1979 2590 -2588
		mu 0 4 1519 1196 1195 1523
		f 4 2591 2592 2593 -2583
		mu 0 4 1525 1526 1527 1528
		f 4 2594 2595 -2592 -2587
		mu 0 4 1529 1530 1526 1525
		f 4 2596 2597 2598 -2593
		mu 0 4 1526 1531 1506 1527
		f 4 2599 2600 -2597 -2596
		mu 0 4 1530 1532 1531 1526
		f 4 2601 2602 -2563 -2598
		mu 0 4 1531 1533 1507 1506
		f 4 2603 2604 -2602 -2601
		mu 0 4 1532 1534 1533 1531
		f 4 2605 2606 -2565 -2603
		mu 0 4 1533 1535 1508 1507
		f 4 2607 2608 -2606 -2605
		mu 0 4 1534 1536 1535 1533
		f 4 2609 2610 2611 -2607
		mu 0 4 1535 1537 1538 1508
		f 4 2612 2613 -2610 -2609
		mu 0 4 1536 1539 1537 1535
		f 4 2614 2615 2616 -2611
		mu 0 4 1537 1540 1541 1538
		f 4 2617 2618 -2615 -2614
		mu 0 4 1539 1542 1540 1537
		f 4 2619 2620 2621 -2616
		mu 0 4 1543 1544 1545 1546
		f 4 2622 2623 -2620 -2619
		mu 0 4 1547 1548 1549 1550
		f 4 -1990 2624 -2621 2625
		mu 0 4 1208 1207 1545 1544
		f 4 2626 -1988 -2626 -2624
		mu 0 4 1548 1202 1204 1549
		f 4 -2584 2627 -2576 2628
		mu 0 4 1522 1521 1517 1516
		f 4 -2581 -1998 -2589 -2629
		mu 0 4 1516 1214 1197 1522
		f 4 -2594 2629 -2571 -2628
		mu 0 4 1528 1527 1504 1511
		f 4 -2599 -2562 -2560 -2630
		mu 0 4 1527 1506 1505 1504
		f 4 -2612 2630 -2555 -2566
		mu 0 4 1508 1538 1501 1500
		f 4 -2617 2631 -2567 -2631
		mu 0 4 1538 1541 1509 1501
		f 4 -2622 2632 -2572 -2632
		mu 0 4 1546 1545 1513 1512
		f 4 -2625 -1995 -2577 -2633
		mu 0 4 1545 1207 1212 1513
		f 4 -1994 -1992 2633 -2578
		mu 0 4 1212 1211 1210 1518
		f 4 -2634 -1997 -1999 -2580
		mu 0 4 1518 1210 1213 1214
		f 4 -2530 2634 2635 2636
		mu 0 4 1482 1481 1551 1552
		f 4 -2637 2637 2638 -2535
		mu 0 4 1482 1552 1553 1485
		f 4 -2542 2639 2640 -2635
		mu 0 4 1491 1490 1554 1555
		f 4 -2547 -2551 2641 -2640
		mu 0 4 1490 1495 1498 1554
		f 4 2642 2643 -2532 2644
		mu 0 4 1556 1557 1484 1483
		f 4 2645 2646 -2645 -2539
		mu 0 4 1487 1558 1556 1483
		f 4 2647 2648 -2543 -2644
		mu 0 4 1559 1560 1493 1492
		f 4 2649 -2553 -2548 -2649
		mu 0 4 1560 1499 1496 1493
		f 4 2650 2651 -1984 2652
		mu 0 4 1561 1562 1195 1200
		f 4 -1986 2653 2654 -2653
		mu 0 4 1200 1202 1563 1561
		f 4 2655 2656 -2591 -2652
		mu 0 4 1562 1564 1523 1195
		f 4 -2627 2657 2658 -2654
		mu 0 4 1202 1548 1565 1563
		f 4 2659 2660 -2586 -2657
		mu 0 4 1564 1566 1524 1523
		f 4 -2623 2661 2662 -2658
		mu 0 4 1548 1547 1567 1565
		f 4 2663 2664 -2643 -2647
		mu 0 4 1558 1568 1557 1556
		f 4 -2636 2665 2666 -2638
		mu 0 4 1552 1551 1569 1553
		f 4 2667 2668 -2595 -2661
		mu 0 4 1570 1571 1530 1529
		f 4 -2641 2669 2670 -2666
		mu 0 4 1555 1554 1572 1573
		f 4 2671 2672 -2648 -2665
		mu 0 4 1574 1575 1560 1559
		f 4 -2618 2673 2674 -2662
		mu 0 4 1542 1539 1576 1577
		f 4 2675 2676 -2650 -2673
		mu 0 4 1575 1578 1499 1560
		f 4 2677 2678 -2674 -2613
		mu 0 4 1536 1579 1576 1539
		f 4 -2669 2679 2680 -2600
		mu 0 4 1530 1571 1580 1532
		f 4 -2642 2681 2682 -2670
		mu 0 4 1554 1498 1581 1572
		f 4 -2536 2683 -2651 2684
		mu 0 4 1486 1485 1562 1561
		f 4 -2655 2685 -2538 -2685
		mu 0 4 1561 1563 1487 1486
		f 4 -2639 2686 -2656 -2684
		mu 0 4 1485 1553 1564 1562
		f 4 -2659 2687 -2646 -2686
		mu 0 4 1563 1565 1558 1487
		f 4 -2663 2688 -2664 -2688
		mu 0 4 1565 1567 1568 1558
		f 4 -2667 2689 -2660 -2687
		mu 0 4 1553 1569 1566 1564
		f 4 -2671 2690 -2668 -2690
		mu 0 4 1573 1572 1571 1570
		f 4 -2675 2691 -2672 -2689
		mu 0 4 1577 1576 1575 1574
		f 4 -2679 2692 -2676 -2692
		mu 0 4 1576 1579 1578 1575
		f 4 -2683 2693 -2680 -2691
		mu 0 4 1572 1581 1580 1571
		f 4 2694 2695 -2682 -2550
		mu 0 4 1497 1582 1581 1498
		f 4 2696 -2604 -2681 2697
		mu 0 4 1583 1534 1532 1580
		f 4 -2694 -2696 2698 -2698
		mu 0 4 1580 1581 1582 1583
		f 4 -2697 2699 -2678 -2608
		mu 0 4 1534 1583 1579 1536
		f 4 -2699 2700 -2693 -2700
		mu 0 4 1583 1582 1578 1579
		f 4 -2677 -2701 -2695 -2554
		mu 0 4 1499 1578 1582 1497
		f 4 2701 2702 2703 2704
		mu 0 4 1584 1585 1586 1587
		f 4 -2704 2705 2706 2707
		mu 0 4 1587 1586 1588 1589
		f 4 2708 2709 2710 -2705
		mu 0 4 1590 1591 1592 1593
		f 4 2711 2712 -2709 2713
		mu 0 4 1594 1595 1591 1590
		f 4 -2708 2714 2715 -2714
		mu 0 4 1587 1589 1596 1597
		f 4 2716 2717 2718 -2703
		mu 0 4 1585 1598 1599 1586
		f 4 -2719 2719 2720 -2706
		mu 0 4 1586 1599 1600 1588
		f 4 2721 2722 2723 -2718
		mu 0 4 1598 1601 1602 1599
		f 4 -2724 2724 2725 -2720
		mu 0 4 1599 1602 1603 1600
		f 4 2726 2727 2728 -2723
		mu 0 4 1601 1604 1605 1602
		f 4 -2729 2729 2730 -2725
		mu 0 4 1602 1605 1606 1603
		f 4 2731 2732 2733 -2728
		mu 0 4 1607 1608 1609 1610
		f 4 -2734 2734 2735 -2730
		mu 0 4 1610 1609 1611 1612
		f 4 2736 2737 2738 -2733
		mu 0 4 1608 1613 1614 1609
		f 4 -2739 2739 2740 -2735
		mu 0 4 1609 1614 1615 1611
		f 4 2741 -2710 2742 -2738
		mu 0 4 1613 1592 1591 1614
		f 4 -2743 -2713 2743 2744
		mu 0 4 1614 1591 1595 1616
		f 4 2745 2746 -2740 -2745
		mu 0 4 1616 1617 1615 1614
		f 4 2747 2748 -2702 2749
		mu 0 4 1618 1619 1585 1584
		f 4 -2711 2750 2751 -2750
		mu 0 4 1593 1592 1620 1621
		f 4 2752 2753 -2717 -2749
		mu 0 4 1619 1622 1598 1585
		f 4 2754 2755 -2722 -2754
		mu 0 4 1622 1623 1601 1598
		f 4 2756 2757 -2727 -2756
		mu 0 4 1623 1624 1604 1601
		f 4 2758 2759 -2732 -2758
		mu 0 4 1625 1626 1608 1607
		f 4 2760 2761 -2737 -2760
		mu 0 4 1626 1627 1613 1608
		f 4 2762 -2751 -2742 -2762
		mu 0 4 1627 1620 1592 1613
		f 4 2763 2764 -2748 2765
		mu 0 4 1628 1629 1619 1618
		f 4 -2752 2766 2767 -2766
		mu 0 4 1621 1620 1630 1631
		f 4 2768 2769 -2753 -2765
		mu 0 4 1629 1632 1622 1619
		f 4 2770 2771 -2755 -2770
		mu 0 4 1632 1633 1623 1622
		f 4 2772 2773 -2757 -2772
		mu 0 4 1633 1634 1624 1623
		f 4 2774 2775 -2759 -2774
		mu 0 4 1635 1636 1626 1625
		f 4 2776 2777 -2761 -2776
		mu 0 4 1636 1637 1627 1626
		f 4 2778 -2767 -2763 -2778
		mu 0 4 1637 1630 1620 1627
		f 4 2779 2780 -2764 2781
		mu 0 4 1638 1639 1629 1628
		f 4 -2768 2782 2783 -2782
		mu 0 4 1631 1630 1640 1641
		f 4 2784 2785 -2769 -2781
		mu 0 4 1639 1642 1632 1629
		f 4 2786 2787 -2771 -2786
		mu 0 4 1642 1643 1633 1632
		f 4 2788 2789 -2773 -2788
		mu 0 4 1643 1644 1634 1633
		f 4 2790 2791 -2775 -2790
		mu 0 4 1645 1646 1636 1635
		f 4 2792 2793 -2777 -2792
		mu 0 4 1646 1647 1637 1636
		f 4 2794 -2783 -2779 -2794
		mu 0 4 1647 1640 1630 1637
		f 4 2795 -2785 -2780 2796
		mu 0 4 1648 1642 1639 1638
		f 4 -2784 -2795 2797 -2797
		mu 0 4 1641 1640 1647 1649
		f 4 2798 -2789 -2787 -2796
		mu 0 4 1648 1644 1643 1642
		f 4 -2798 -2793 -2791 -2799
		mu 0 4 1649 1647 1646 1645
		f 4 -2716 2799 -2417 2800
		mu 0 4 1597 1596 1416 1415
		f 4 -2424 -2456 2801 2802
		mu 0 4 1422 1421 1438 1650
		f 4 -2803 2803 -2712 -2801
		mu 0 4 1422 1650 1595 1594
		f 4 -2721 2804 -1831 2805
		mu 0 4 1588 1600 1104 1106
		f 4 -1836 2806 2807 -2806
		mu 0 4 1106 1110 1651 1588
		f 4 -2726 2808 -1829 -2805
		mu 0 4 1600 1603 1097 1104
		f 4 -2731 2809 -1824 -2809
		mu 0 4 1603 1606 1098 1097
		f 4 -2736 2810 -1826 -2810
		mu 0 4 1612 1611 1100 1099
		f 4 -2741 2811 -1844 -2811
		mu 0 4 1611 1615 1116 1100
		f 4 2812 2813 2814 2815
		mu 0 4 1116 1652 1653 1654
		f 4 -2747 2816 -2813 -2812
		mu 0 4 1615 1617 1652 1116
		f 4 -2816 2817 -1838 -1843
		mu 0 4 1116 1654 1113 1112
		f 4 -1835 -2445 -2438 2818
		mu 0 4 1110 1109 1431 1428
		f 4 2819 -2807 -2819 -2433
		mu 0 4 1425 1651 1110 1428
		f 4 -2428 -2800 2820 -2820
		mu 0 4 1425 1416 1596 1651
		f 4 -2814 2821 -2455 2822
		mu 0 4 1653 1652 1438 1437
		f 4 2823 -2815 -2823 -2453
		mu 0 4 1436 1654 1653 1437
		f 4 -2822 -2817 2824 -2802
		mu 0 4 1438 1652 1617 1650
		f 4 -1840 -2818 -2824 -2449
		mu 0 4 1114 1113 1654 1436
		f 4 -2821 -2715 -2707 -2808
		mu 0 4 1651 1596 1589 1588
		f 4 -2744 -2804 -2825 -2746
		mu 0 4 1616 1595 1650 1617
		f 4 2825 2826 -2288 -1499
		mu 0 4 877 1293 1355 880
		f 4 2827 2828 -2285 2829
		mu 0 4 1655 1656 1356 1355
		f 4 -2827 -2168 2830 -2830
		mu 0 4 1355 1293 1294 1655
		f 4 2831 2832 -2296 -2829
		mu 0 4 1656 1657 1361 1356
		f 4 2833 -1621 -2303 -2833
		mu 0 4 1657 974 973 1361
		f 4 -2166 -2826 -1493 -1509
		mu 0 4 886 1293 877 876
		f 4 -2170 2834 -2828 -2831
		mu 0 4 1294 1295 1656 1655
		f 4 -2172 2835 -2832 -2835
		mu 0 4 1295 1296 1657 1656
		f 4 -2173 -1623 -2834 -2836
		mu 0 4 1296 968 974 1657
		f 4 -1458 -2412 2836 -2250
		mu 0 4 845 850 1408 1335
		f 4 2837 2838 -2837 2839
		mu 0 4 1658 1659 1335 1408
		f 4 -2398 2840 2841 -2840
		mu 0 4 1408 1338 1660 1658
		f 4 2842 2843 -2251 -2839
		mu 0 4 1659 1661 1333 1335
		f 4 2844 2845 -2247 -2844
		mu 0 4 1661 1662 1334 1333
		f 4 2846 2847 -2263 -2846
		mu 0 4 1662 1663 1341 1334
		f 4 2848 -2841 -2262 -2848
		mu 0 4 1663 1660 1338 1341
		f 4 2849 2850 -2842 2851
		mu 0 4 1664 1665 1658 1660
		f 4 -2849 2852 2853 -2852
		mu 0 4 1660 1663 1666 1664
		f 4 2854 2855 -2838 -2851
		mu 0 4 1665 1667 1659 1658
		f 4 2856 2857 -2843 -2856
		mu 0 4 1667 1668 1661 1659
		f 4 2858 2859 -2845 -2858
		mu 0 4 1668 1669 1662 1661
		f 4 2860 -2853 -2847 -2860
		mu 0 4 1669 1666 1663 1662
		f 4 -2857 -2855 -2850 2861
		mu 0 4 1668 1667 1665 1664
		f 4 -2861 -2859 -2862 -2854
		mu 0 4 1666 1669 1668 1664
		f 4 2862 2863 -2326 -1633
		mu 0 4 980 1670 1374 978
		f 4 2864 2865 -2322 -2864
		mu 0 4 1670 1671 1375 1374
		f 4 2866 2867 -2329 -2866
		mu 0 4 1671 1672 1377 1375
		f 4 2868 -2394 -2352 -2868
		mu 0 4 1672 1406 1390 1377
		f 4 -2395 -2869 2869 -1644
		mu 0 4 988 1406 1672 984
		f 4 -2865 -2863 -1634 2870
		mu 0 4 1671 1670 980 981
		f 4 -2870 -2867 -2871 -1638
		mu 0 4 984 1672 1671 981
		f 4 -2519 2871 2872 2873
		mu 0 4 1473 1474 1673 1674
		f 4 -2873 2874 -2523 2875
		mu 0 4 1674 1673 1477 1476
		f 4 -2876 -2527 -2514 2876
		mu 0 4 1674 1476 1472 1471
		f 4 -2877 -2512 -2517 -2874
		mu 0 4 1674 1471 1470 1473
		f 4 -2499 2877 2878 -2501
		mu 0 4 1464 1463 1675 1465
		f 4 -2504 -2509 2879 -2878
		mu 0 4 1463 1466 1469 1675
		f 4 -2526 2880 2881 -2880
		mu 0 4 1469 1478 1676 1675
		f 4 -2875 2882 -2881 -2525
		mu 0 4 1477 1673 1676 1478
		f 4 2883 -2520 -2879 -2882
		mu 0 4 1676 1475 1465 1675
		f 4 -2872 -2521 -2884 -2883
		mu 0 4 1673 1474 1475 1676
		f 4 -2220 -2225 2884 2885
		mu 0 4 1322 1321 1324 1677
		f 4 2886 -2234 -2222 -2886
		mu 0 4 1677 1328 1323 1322
		f 4 -2227 -2229 2887 -2885
		mu 0 4 1324 1325 1326 1677
		f 4 -2231 -2233 -2887 -2888
		mu 0 4 1326 1327 1328 1677
		f 4 -1668 2888 -1707 2889
		mu 0 4 1004 1003 1678 1679
		f 4 -1714 2890 -1673 -2890
		mu 0 4 1679 1680 1007 1004
		f 4 -1679 2891 -1718 -2889
		mu 0 4 1003 1010 1681 1678
		f 4 -1684 2892 -1723 -2892
		mu 0 4 1010 1013 1682 1681
		f 4 -1689 2893 -1728 -2893
		mu 0 4 1013 1016 1683 1682
		f 4 -1694 2894 -1733 -2894
		mu 0 4 1016 1019 1684 1683
		f 4 -1699 2895 -1738 -2895
		mu 0 4 1019 1022 1685 1684
		f 4 -1702 -2891 -1742 -2896
		mu 0 4 1022 1007 1680 1685
		f 4 2896 2897 -1655 2898
		mu 0 4 1686 1687 995 993
		f 4 -1478 2899 2900 2901
		mu 0 4 865 864 1688 1689
		f 4 2902 -1017 2903 2904
		mu 0 4 1689 619 618 1690
		f 4 -1485 -2902 -2905 2905
		mu 0 4 870 865 1689 1690
		f 4 -2904 -1040 2906 2907
		mu 0 4 1690 618 632 1691
		f 4 -1488 -2906 -2908 2908
		mu 0 4 872 870 1690 1691
		f 4 -2907 -1039 2909 2910
		mu 0 4 1691 632 631 1692
		f 4 -1489 -2909 -2911 2911
		mu 0 4 873 872 1691 1692
		f 4 -2910 -1047 2912 2913
		mu 0 4 1692 631 635 1693
		f 4 -1497 -2912 -2914 2914
		mu 0 4 874 873 1692 1693
		f 4 -2913 -1060 2915 2916
		mu 0 4 1693 635 643 1694
		f 4 -1491 -2915 -2917 2917
		mu 0 4 875 874 1693 1694
		f 4 -2916 -1055 2918 2919
		mu 0 4 1694 643 642 1695
		f 4 -1501 -2918 -2920 2920
		mu 0 4 881 875 1694 1695
		f 4 -2919 -1054 2921 2922
		mu 0 4 1695 642 639 1696
		f 4 -1502 -2921 -2923 2923
		mu 0 4 882 881 1695 1696
		f 4 -2922 -1050 2924 2925
		mu 0 4 1696 639 638 1697
		f 4 -1504 -2924 -2926 2926
		mu 0 4 883 882 1696 1697
		f 4 -2925 -431 2927 2928
		mu 0 4 1698 257 247 1699
		f 4 -1510 -2927 -2929 2929
		mu 0 4 888 887 1698 1699
		f 4 -1528 2930 2931 2932
		mu 0 4 902 901 1700 1701
		f 4 2933 -394 2934 2935
		mu 0 4 1701 239 114 1702
		f 4 -1534 -2933 -2936 2936
		mu 0 4 905 902 1701 1702
		f 4 -2935 -177 2937 2938
		mu 0 4 1702 114 111 1703
		f 4 -1537 -2937 -2939 2939
		mu 0 4 907 905 1702 1703
		f 4 -2938 -173 2940 2941
		mu 0 4 1703 111 110 1704
		f 4 -1540 -2940 -2942 2942
		mu 0 4 909 907 1703 1704
		f 4 -2941 -230 2943 2944
		mu 0 4 1704 110 146 1705
		f 4 -1543 -2943 -2945 2945
		mu 0 4 911 909 1704 1705
		f 4 -1558 2946 2947 2948
		mu 0 4 923 926 1706 1707
		f 4 2949 -234 2950 2951
		mu 0 4 1708 149 148 1709
		f 4 -1552 -2949 -2952 2952
		mu 0 4 920 919 1710 1711
		f 4 -2951 -281 2953 2954
		mu 0 4 1709 148 177 1712
		f 4 -1559 -2953 -2955 2955
		mu 0 4 927 920 1711 1713
		f 4 -2954 -278 2956 2957
		mu 0 4 1712 177 176 1714
		f 4 -1565 -2956 -2958 2958
		mu 0 4 931 927 1713 1715
		f 4 -2957 -276 2959 2960
		mu 0 4 1716 174 126 1717
		f 4 -1568 -2959 -2961 2961
		mu 0 4 934 933 1718 1719
		f 4 -2960 -194 2962 2963
		mu 0 4 1717 126 125 1720
		f 4 -1571 -2962 -2964 2964
		mu 0 4 937 934 1719 1721
		f 4 -2963 -344 2965 2966
		mu 0 4 1720 125 211 1722
		f 4 -1574 -2965 -2967 2967
		mu 0 4 939 937 1721 1723
		f 4 -2966 -346 2968 2969
		mu 0 4 1722 211 212 1724
		f 4 -1577 -2968 -2970 2970
		mu 0 4 941 939 1723 1725
		f 4 -2969 -399 2971 2972
		mu 0 4 1724 212 241 1726
		f 4 -1580 -2971 -2973 2973
		mu 0 4 943 941 1725 1727
		f 4 -1598 2974 2975 2976
		mu 0 4 956 955 1728 1729
		f 4 2977 -425 2978 2979
		mu 0 4 1730 219 253 1731
		f 4 -1604 -2977 -2980 2980
		mu 0 4 959 956 1729 1732
		f 4 -2979 -444 2981 2982
		mu 0 4 1731 253 264 1733
		f 4 -1607 -2981 -2983 2983
		mu 0 4 961 959 1732 1734
		f 4 -1616 2984 2985 2986
		mu 0 4 970 969 1735 1736
		f 4 2987 -1225 2988 2989
		mu 0 4 1737 725 727 1738
		f 4 -1625 -2987 -2990 2990
		mu 0 4 975 970 1736 1739
		f 4 2991 -466 2992 2993
		mu 0 4 1740 281 278 1686
		f 4 -2994 -2899 -1652 2994
		mu 0 4 1740 1686 993 989
		f 4 2995 2996 -1640 2997
		mu 0 4 1741 1742 986 985
		f 4 2998 -549 -2992 2999
		mu 0 4 1742 329 281 1740
		f 4 -2995 -1646 -2997 -3000
		mu 0 4 1740 989 986 1742
		f 4 -2928 -412 3000 3001
		mu 0 4 1699 247 186 1743
		f 4 -1513 -2930 -3002 3002
		mu 0 4 891 888 1699 1743
		f 4 3003 -164 3004 3005
		mu 0 4 1744 99 102 1745
		f 4 3006 -1524 3007 -3006
		mu 0 4 1745 895 893 1744
		f 4 -3001 -294 -3004 3008
		mu 0 4 1743 186 99 1744
		f 4 -1518 -3003 -3009 -3008
		mu 0 4 893 891 1743 1744
		f 4 -2944 -255 3009 3010
		mu 0 4 1746 164 163 1747
		f 4 -1546 -2946 -3011 3011
		mu 0 4 914 913 1746 1747
		f 4 3012 -253 -2950 -2948
		mu 0 4 1706 162 161 1707
		f 4 3013 -262 -3013 3014
		mu 0 4 1748 165 162 1706
		f 4 -2947 -2139 3015 -3015
		mu 0 4 1706 926 917 1748
		f 4 -3010 -258 -3014 3016
		mu 0 4 1747 163 165 1748
		f 4 -1551 -3012 -3017 -3016
		mu 0 4 917 914 1747 1748
		f 4 -3005 -311 3017 3018
		mu 0 4 1745 102 195 1749
		f 4 -1519 -3007 -3019 3019
		mu 0 4 896 895 1745 1749
		f 4 3020 -719 -2934 -2932
		mu 0 4 1700 443 239 1701
		f 4 3021 -721 -3021 3022
		mu 0 4 1750 441 443 1700
		f 4 -2931 -1533 3023 -3023
		mu 0 4 1700 901 899 1750
		f 4 -3018 -714 -3022 3024
		mu 0 4 1749 195 441 1750
		f 4 -1527 -3020 -3025 -3024
		mu 0 4 899 896 1749 1750
		f 4 -2972 -403 3025 3026
		mu 0 4 1726 241 234 1751
		f 4 -1583 -2974 -3027 3027
		mu 0 4 945 943 1727 1752
		f 4 3028 -378 3029 3030
		mu 0 4 1753 230 228 1754
		f 4 3031 -1594 3032 -3031
		mu 0 4 1755 949 947 1756
		f 4 -3026 -386 -3029 3033
		mu 0 4 1751 234 230 1753
		f 4 -1586 -3028 -3034 -3033
		mu 0 4 947 945 1752 1756
		f 4 -3030 -374 3034 3035
		mu 0 4 1754 228 225 1757;
	setAttr ".fc[1500:1549]"
		f 4 -1589 -3032 -3036 3036
		mu 0 4 950 949 1755 1758
		f 4 3037 -357 -2978 -2976
		mu 0 4 1759 220 219 1730
		f 4 3038 -361 -3038 3039
		mu 0 4 1760 221 220 1759
		f 4 -2975 -1603 3040 -3040
		mu 0 4 1728 955 953 1761
		f 4 -3035 -368 -3039 3041
		mu 0 4 1757 225 221 1760
		f 4 -1595 -3037 -3042 -3041
		mu 0 4 953 950 1758 1761
		f 4 3042 -1467 3043 3044
		mu 0 4 1762 857 852 1763
		f 4 -1459 3045 3046 -3044
		mu 0 4 852 851 1764 1763
		f 4 3047 -447 3048 -3045
		mu 0 4 1763 267 266 1762
		f 4 3049 -1473 3050 3051
		mu 0 4 1765 861 858 1766
		f 4 -3049 -450 3052 3053
		mu 0 4 1762 266 269 1766
		f 4 -1469 -3043 -3054 -3051
		mu 0 4 858 857 1762 1766
		f 4 -2993 -460 3054 -2897
		mu 0 4 1686 278 277 1687
		f 4 3055 -1662 -2898 3056
		mu 0 4 1767 848 995 1687
		f 4 3057 -1131 3058 3059
		mu 0 4 1767 685 683 1768
		f 4 3060 -1455 -3056 -3060
		mu 0 4 1768 843 848 1767
		f 4 -3055 -1134 -3058 -3057
		mu 0 4 1687 277 685 1767
		f 4 -3053 -454 3061 -3052
		mu 0 4 1766 269 272 1765
		f 4 -2982 -1074 3062 3063
		mu 0 4 1769 656 655 1770
		f 4 -1610 -2984 -3064 3064
		mu 0 4 964 963 1771 1772
		f 4 3065 -1223 -2988 -2986
		mu 0 4 1773 721 725 1737
		f 4 3066 -1213 -3066 3067
		mu 0 4 1774 709 721 1773
		f 4 -2985 -1624 3068 -3068
		mu 0 4 1735 969 967 1775
		f 4 -3063 -1184 -3067 3069
		mu 0 4 1770 655 709 1774
		f 4 -1615 -3065 -3070 -3069
		mu 0 4 967 964 1772 1775
		f 4 3070 -1088 -2903 -2901
		mu 0 4 1688 665 619 1689
		f 4 -2900 -1484 3071 3072
		mu 0 4 1688 864 869 1776
		f 4 -3062 -1091 3073 3074
		mu 0 4 1765 272 667 1777
		f 4 -3074 -1101 3075 3076
		mu 0 4 1777 667 672 1776
		f 4 -1477 -3050 -3075 3077
		mu 0 4 862 861 1765 1777
		f 4 -3072 -2393 -3078 -3077
		mu 0 4 1776 869 862 1777
		f 4 -3076 -1104 -3071 -3073
		mu 0 4 1776 672 665 1688
		f 4 -3059 -1128 3078 3079
		mu 0 4 1768 683 681 1778
		f 4 -1449 -3061 -3080 3080
		mu 0 4 844 843 1768 1778
		f 4 3081 -1115 -3048 -3047
		mu 0 4 1764 676 267 1763
		f 4 3082 -1118 -3082 3083
		mu 0 4 1779 677 676 1764
		f 4 -3046 -1465 3084 -3084
		mu 0 4 1764 851 849 1779
		f 4 -3079 -1125 -3083 3085
		mu 0 4 1778 681 677 1779
		f 4 -1456 -3081 -3086 -3085
		mu 0 4 849 844 1778 1779
		f 4 -2989 -1242 3086 3087
		mu 0 4 1738 727 734 1780
		f 4 -1628 -2991 -3088 3088
		mu 0 4 977 975 1739 1781
		f 4 3089 -1635 3090 3091
		mu 0 4 1782 982 979 1783
		f 4 -3087 -1247 3092 3093
		mu 0 4 1780 734 737 1784
		f 4 -1631 -3089 -3094 -3091
		mu 0 4 979 977 1781 1783
		f 4 -3093 -1261 3094 -3092
		mu 0 4 1784 737 745 1785
		f 4 3095 -1258 -2999 -2996
		mu 0 4 1741 743 329 1742
		f 4 3096 -1270 -3096 3097
		mu 0 4 1786 747 743 1741
		f 4 -2998 -1645 3098 -3098
		mu 0 4 1741 985 983 1787
		f 4 -3095 -1266 -3097 3099
		mu 0 4 1785 745 747 1786
		f 4 -1639 -3090 -3100 -3099
		mu 0 4 983 982 1782 1787;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A23970D9-4CFF-23C1-B16B-22B9C4B5E594";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "35D2822D-43F6-B0E1-DDEA-C0A6FADAEA69";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "37ACF31A-4C70-09BA-3478-309F5080403A";
createNode displayLayerManager -n "layerManager";
	rename -uid "9C63C1D6-479D-F9C9-B889-A98130EE7A67";
createNode displayLayer -n "defaultLayer";
	rename -uid "DA35AC2D-4E72-8E54-9543-5E9C0E41E3C1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "305E3FD1-4F41-4378-A4BF-9097CE64A0F8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "27D69007-4895-C153-989B-8DAEA15FC622";
	setAttr ".g" yes;
createNode groupId -n "pasted__skinCluster2GroupId";
	rename -uid "0603622E-4374-7471-1B73-0E9720E6B93D";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId10";
	rename -uid "0BF0DB32-4FE1-7F18-E217-44B5AC19978F";
	setAttr ".ihi" 0;
createNode materialInfo -n "pasted__materialInfo3";
	rename -uid "7969A220-4876-AB26-1735-61A2A575F12A";
createNode shadingEngine -n "pasted__phong1SG";
	rename -uid "EA4A1C12-4B45-E7E7-966E-CD8C4645EC5A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "MAT_player_hair";
	rename -uid "284D8A0C-4238-C474-D363-A69746B306D7";
createNode materialInfo -n "pasted__materialInfo4";
	rename -uid "BB8A1402-4CAB-CCDC-1D4C-0E83F95A65B9";
createNode shadingEngine -n "pasted__phong2SG";
	rename -uid "397439A7-4033-C535-300D-45AF2959526E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode phong -n "MAT_player_body";
	rename -uid "A5EB29CC-4AD3-9CEC-B3F7-BDA2D3914910";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "747AFE91-4C58-8D0D-F41C-4086F27DC40A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 929\n                -height 742\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 929\n            -height 742\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 929\\n    -height 742\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 929\\n    -height 742\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DC5FD604-4375-D41F-E3A8-708D57DF0F42";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster1";
	rename -uid "CAA5D4CD-4326-CD63-0ECF-10AA416E2948";
	setAttr -s 1552 ".wl";
	setAttr -s 4 ".wl[0].w[5:8]"  0.030571352122869402 0.18045614415054526 
		0.77698559674199674 0.011986906984588664;
	setAttr -s 4 ".wl[1].w[5:8]"  0.027236898504852586 0.15928316627425665 
		0.80175906652916851 0.011720868691722348;
	setAttr -s 4 ".wl[2].w[5:8]"  0.021635861454834673 0.13622765258711703 
		0.83276826735600085 0.0093682186020472881;
	setAttr -s 4 ".wl[3].w[5:8]"  0.032786841898057036 0.15710505186159154 
		0.79077875485457838 0.01932935138577304;
	setAttr -s 4 ".wl[4].w[5:8]"  0.027913098575293716 0.14645487347293218 
		0.81006929115686777 0.015562736794906393;
	setAttr -s 4 ".wl[5].w[5:8]"  0.04326102512641819 0.18983197868512641 
		0.73975402962293613 0.027152966565519254;
	setAttr -s 4 ".wl[6].w[5:8]"  0.058571012334455969 0.21963764690918536 
		0.68100387885081759 0.040787461905541028;
	setAttr -s 4 ".wl[7].w[5:8]"  0.084124966617332236 0.24435181963191621 
		0.59723469032209098 0.074288523428660561;
	setAttr -s 4 ".wl[8].w[5:8]"  0.21065739117338117 0.19286615553617484 
		0.38687666019709938 0.20959979309334462;
	setAttr -s 4 ".wl[9].w[5:8]"  0.27814947652671324 0.16516763270464035 
		0.27853341424193329 0.27814947652671324;
	setAttr -s 4 ".wl[10].w[5:8]"  0.25820848760154841 0.19871343626194218 
		0.2855734476165982 0.25750462851991118;
	setAttr -s 4 ".wl[11].w[5:8]"  0.20613450389698454 0.2523639478666802 
		0.33536704433935077 0.20613450389698454;
	setAttr -s 4 ".wl[12].w[5:8]"  0.20988064697188699 0.2865553016114078 
		0.35889935347449492 0.14466469794221037;
	setAttr -s 4 ".wl[13].w";
	setAttr ".wl[13].w[5]" 0.25389437082697114;
	setAttr ".wl[13].w[6]" 0.24052338412065136;
	setAttr ".wl[13].w[8]" 0.25389437082697114;
	setAttr ".wl[13].w[17]" 0.25168787422540623;
	setAttr -s 4 ".wl[14].w";
	setAttr ".wl[14].w[5]" 0.31082053899299389;
	setAttr ".wl[14].w[6]" 0.070895612232451333;
	setAttr ".wl[14].w[8]" 0.30746330978156095;
	setAttr ".wl[14].w[17]" 0.31082053899299389;
	setAttr -s 4 ".wl[15].w";
	setAttr ".wl[15].w[5]" 0.32885704184466802;
	setAttr ".wl[15].w[6]" 0.014355477610664602;
	setAttr ".wl[15].w[8]" 0.32842167870264793;
	setAttr ".wl[15].w[17]" 0.32836580184201952;
	setAttr -s 4 ".wl[16].w";
	setAttr ".wl[16].w[5]" 0.33264338617761124;
	setAttr ".wl[16].w[6]" 0.0021976447527388364;
	setAttr ".wl[16].w[8]" 0.33264338617761124;
	setAttr ".wl[16].w[17]" 0.33251558289203875;
	setAttr -s 4 ".wl[17].w";
	setAttr ".wl[17].w[5]" 0.33302394796342427;
	setAttr ".wl[17].w[6]" 0.0021306153721237548;
	setAttr ".wl[17].w[8]" 0.33302394796342427;
	setAttr ".wl[17].w[17]" 0.33182148870102768;
	setAttr -s 4 ".wl[18].w";
	setAttr ".wl[18].w[5]" 0.33223692686985001;
	setAttr ".wl[18].w[6]" 0.0032892193904527551;
	setAttr ".wl[18].w[8]" 0.33223692686984757;
	setAttr ".wl[18].w[17]" 0.33223692686984979;
	setAttr -s 4 ".wl[19].w";
	setAttr ".wl[19].w[5]" 0.33151545279375483;
	setAttr ".wl[19].w[6]" 0.0055834260068116448;
	setAttr ".wl[19].w[8]" 0.33138566840567879;
	setAttr ".wl[19].w[17]" 0.33151545279375483;
	setAttr -s 4 ".wl[20].w";
	setAttr ".wl[20].w[5]" 0.32905272385603973;
	setAttr ".wl[20].w[6]" 0.012858812260355481;
	setAttr ".wl[20].w[8]" 0.32905272385603973;
	setAttr ".wl[20].w[17]" 0.32903574002756503;
	setAttr -s 4 ".wl[21].w";
	setAttr ".wl[21].w[5]" 0.32505529386460896;
	setAttr ".wl[21].w[6]" 0.024845005574234979;
	setAttr ".wl[21].w[8]" 0.32505529386460896;
	setAttr ".wl[21].w[17]" 0.32504440669654705;
	setAttr -s 4 ".wl[22].w[1:4]"  0.3075848157475668 0.30767090415528475 
		0.25151086490595354 0.13323341519119486;
	setAttr -s 4 ".wl[23].w[0:3]"  0.29561532408181024 0.3033581345257168 
		0.25381336915510982 0.14721317223736322;
	setAttr -s 4 ".wl[24].w";
	setAttr ".wl[24].w[0]" 0.28342697199021161;
	setAttr ".wl[24].w[1]" 0.23536742254301615;
	setAttr ".wl[24].w[26]" 0.24061061210478066;
	setAttr ".wl[24].w[30]" 0.24059499336199158;
	setAttr -s 4 ".wl[25].w";
	setAttr ".wl[25].w[0]" 0.33059032711103969;
	setAttr ".wl[25].w[1]" 0.14593576500828789;
	setAttr ".wl[25].w[26]" 0.26173695394033691;
	setAttr ".wl[25].w[30]" 0.26173695394033547;
	setAttr -s 4 ".wl[26].w";
	setAttr ".wl[26].w[0]" 0.32913876631069999;
	setAttr ".wl[26].w[1]" 0.12682480507714686;
	setAttr ".wl[26].w[26]" 0.2720287761323445;
	setAttr ".wl[26].w[30]" 0.27200765247980874;
	setAttr -s 4 ".wl[27].w";
	setAttr ".wl[27].w[0]" 0.33783860835170021;
	setAttr ".wl[27].w[1]" 0.11899424497643295;
	setAttr ".wl[27].w[26]" 0.27158942608964076;
	setAttr ".wl[27].w[30]" 0.27157772058222601;
	setAttr -s 4 ".wl[28].w";
	setAttr ".wl[28].w[0]" 0.42238391215738191;
	setAttr ".wl[28].w[14]" 0.015037752630354484;
	setAttr ".wl[28].w[26]" 0.43046561434865815;
	setAttr ".wl[28].w[27]" 0.1321127208636054;
	setAttr -s 4 ".wl[29].w";
	setAttr ".wl[29].w[0]" 0.13390579407205985;
	setAttr ".wl[29].w[30]" 0.48913501745024518;
	setAttr ".wl[29].w[31]" 0.35998773330218309;
	setAttr ".wl[29].w[32]" 0.016971455175511751;
	setAttr -s 4 ".wl[30].w";
	setAttr ".wl[30].w[0]" 0.091965865740960689;
	setAttr ".wl[30].w[26]" 0.52097109170431244;
	setAttr ".wl[30].w[27]" 0.37805925694685677;
	setAttr ".wl[30].w[28]" 0.0090037856078701885;
	setAttr -s 4 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.27835171080755255;
	setAttr ".wl[31].w[26]" 0.44757088939460971;
	setAttr ".wl[31].w[27]" 0.26323870481758854;
	setAttr ".wl[31].w[28]" 0.01083869498024927;
	setAttr -s 4 ".wl[32].w";
	setAttr ".wl[32].w[0]" 0.54180304428902382;
	setAttr ".wl[32].w[1]" 0.1023780409267239;
	setAttr ".wl[32].w[26]" 0.17791750963528416;
	setAttr ".wl[32].w[30]" 0.17790140514896813;
	setAttr -s 4 ".wl[33].w";
	setAttr ".wl[33].w[0]" 0.637592135629794;
	setAttr ".wl[33].w[1]" 0.19856949882464103;
	setAttr ".wl[33].w[26]" 0.081922465292148278;
	setAttr ".wl[33].w[30]" 0.081915900253416704;
	setAttr -s 4 ".wl[34].w";
	setAttr ".wl[34].w[0]" 0.58822441699157035;
	setAttr ".wl[34].w[1]" 0.22548830409299017;
	setAttr ".wl[34].w[26]" 0.093141861942281093;
	setAttr ".wl[34].w[30]" 0.093145416973158368;
	setAttr -s 4 ".wl[35].w";
	setAttr ".wl[35].w[0]" 0.57073338928944917;
	setAttr ".wl[35].w[1]" 0.28105822497961191;
	setAttr ".wl[35].w[26]" 0.074103414452521985;
	setAttr ".wl[35].w[30]" 0.074104971278416837;
	setAttr -s 4 ".wl[36].w";
	setAttr ".wl[36].w[0]" 0.44975374578582411;
	setAttr ".wl[36].w[1]" 0.44609256515290396;
	setAttr ".wl[36].w[26]" 0.052076844530635519;
	setAttr ".wl[36].w[30]" 0.052076844530636338;
	setAttr -s 4 ".wl[37].w[0:3]"  0.25035852853250229 0.31665435080400312 
		0.28921500857569449 0.1437721120878;
	setAttr -s 4 ".wl[38].w[1:4]"  0.29511594377504979 0.30015268033095671 
		0.26305634670697986 0.14167502918701369;
	setAttr -s 4 ".wl[39].w[2:5]"  0.29870756825478795 0.29906996111353151 
		0.25130255366226795 0.15091991696941259;
	setAttr -s 4 ".wl[40].w[3:6]"  0.25520559592447356 0.28011930673499108 
		0.27683990455478064 0.18783519278575481;
	setAttr -s 4 ".wl[41].w";
	setAttr ".wl[41].w[5]" 0.30122264802876891;
	setAttr ".wl[41].w[6]" 0.25432312194320211;
	setAttr ".wl[41].w[8]" 0.22223272522881046;
	setAttr ".wl[41].w[17]" 0.22222150479921854;
	setAttr -s 4 ".wl[42].w";
	setAttr ".wl[42].w[5]" 0.35492191665855766;
	setAttr ".wl[42].w[6]" 0.35492191665855766;
	setAttr ".wl[42].w[8]" 0.14578086939416304;
	setAttr ".wl[42].w[17]" 0.14437529728872167;
	setAttr -s 4 ".wl[43].w";
	setAttr ".wl[43].w[5]" 0.38795365695462442;
	setAttr ".wl[43].w[6]" 0.3879536569546243;
	setAttr ".wl[43].w[8]" 0.1120463430453755;
	setAttr ".wl[43].w[17]" 0.11204634304537575;
	setAttr -s 4 ".wl[44].w";
	setAttr ".wl[44].w[5]" 0.40433753666253536;
	setAttr ".wl[44].w[6]" 0.40433753666253536;
	setAttr ".wl[44].w[8]" 0.095662463337464573;
	setAttr ".wl[44].w[17]" 0.09566246333746474;
	setAttr -s 4 ".wl[45].w";
	setAttr ".wl[45].w[5]" 0.42271710205910829;
	setAttr ".wl[45].w[6]" 0.42271710205910817;
	setAttr ".wl[45].w[8]" 0.077282897940891757;
	setAttr ".wl[45].w[17]" 0.077282897940891868;
	setAttr -s 4 ".wl[46].w[5:8]"  0.38072210162336645 0.38773802195895585 
		0.19814307443300391 0.033396801984673735;
	setAttr -s 4 ".wl[47].w[5:8]"  0.16072177130732604 0.41302885267973188 
		0.41223206752394687 0.014017308488995284;
	setAttr -s 4 ".wl[48].w[5:8]"  0.11938939191807194 0.43319014739229739 
		0.43319014739229728 0.014230313297333467;
	setAttr -s 4 ".wl[49].w[5:8]"  0.11486962738274974 0.43345136013702656 
		0.43345136013702656 0.018227652343197152;
	setAttr -s 4 ".wl[50].w[5:8]"  0.1071878294034557 0.43582847114599288 
		0.43661423407212507 0.020369465378426373;
	setAttr -s 4 ".wl[51].w[5:8]"  0.079657864440928067 0.39013670716466203 
		0.51157979351197214 0.018625634882437795;
	setAttr -s 4 ".wl[52].w[5:8]"  0.051793165865546879 0.28712602775089169 
		0.6459398671455453 0.01514093923801629;
	setAttr -s 4 ".wl[53].w[5:8]"  0.038966060721581833 0.22773104915294842 
		0.72016464522614498 0.013138244899324782;
	setAttr -s 4 ".wl[54].w[5:8]"  0.029388049336724838 0.14276462668297307 
		0.81109748549003868 0.016749838490263257;
	setAttr -s 4 ".wl[55].w[5:8]"  0.023274007351290732 0.12872537835538481 
		0.83580082086881524 0.012199793424509199;
	setAttr -s 4 ".wl[56].w[5:8]"  0.04480082560721755 0.18690865264705331 
		0.73966845351804567 0.028622068227683532;
	setAttr -s 4 ".wl[57].w[5:8]"  0.056145379716157191 0.21000044430217343 
		0.69569451087079093 0.038159665110878489;
	setAttr -s 4 ".wl[58].w[5:8]"  0.080271983310773301 0.23506268308376818 
		0.61701614388203752 0.06764918972342103;
	setAttr -s 4 ".wl[59].w[5:8]"  0.23367996793700055 0.19462447786860454 
		0.3858616423641002 0.18583391183029477;
	setAttr -s 4 ".wl[60].w";
	setAttr ".wl[60].w[5]" 0.31405507878566702;
	setAttr ".wl[60].w[6]" 0.14270097719037211;
	setAttr ".wl[60].w[8]" 0.22918886523829374;
	setAttr ".wl[60].w[17]" 0.31405507878566702;
	setAttr -s 4 ".wl[61].w";
	setAttr ".wl[61].w[5]" 0.28905345979075525;
	setAttr ".wl[61].w[6]" 0.20379651375166327;
	setAttr ".wl[61].w[8]" 0.2180965666668262;
	setAttr ".wl[61].w[17]" 0.28905345979075525;
	setAttr -s 4 ".wl[62].w[5:8]"  0.22072358484183408 0.25723647605869593 
		0.34443461726604263 0.17760532183342745;
	setAttr -s 4 ".wl[63].w[5:8]"  0.3255017190469417 0.37791408667367138 
		0.22298187472843031 0.073602319550956585;
	setAttr -s 4 ".wl[64].w";
	setAttr ".wl[64].w[5]" 0.37678588771632937;
	setAttr ".wl[64].w[6]" 0.077200349763091689;
	setAttr ".wl[64].w[8]" 0.16922787480424958;
	setAttr ".wl[64].w[17]" 0.37678588771632937;
	setAttr -s 4 ".wl[65].w";
	setAttr ".wl[65].w[5]" 0.42270468383419385;
	setAttr ".wl[65].w[6]" 0.011741919325055054;
	setAttr ".wl[65].w[8]" 0.14284871300655733;
	setAttr ".wl[65].w[17]" 0.42270468383419385;
	setAttr -s 4 ".wl[66].w";
	setAttr ".wl[66].w[5]" 0.48108601921501964;
	setAttr ".wl[66].w[6]" 0.0014315974079179964;
	setAttr ".wl[66].w[8]" 0.036396364162042637;
	setAttr ".wl[66].w[17]" 0.48108601921501964;
	setAttr -s 4 ".wl[67].w";
	setAttr ".wl[67].w[5]" 0.49654344078837764;
	setAttr ".wl[67].w[6]" 0.00025214613532418536;
	setAttr ".wl[67].w[8]" 0.0066609722879202712;
	setAttr ".wl[67].w[17]" 0.49654344078837787;
	setAttr -s 4 ".wl[68].w";
	setAttr ".wl[68].w[5]" 0.49274635093923091;
	setAttr ".wl[68].w[6]" 0.0005885048007788549;
	setAttr ".wl[68].w[8]" 0.013918793320759402;
	setAttr ".wl[68].w[17]" 0.49274635093923091;
	setAttr -s 4 ".wl[69].w";
	setAttr ".wl[69].w[5]" 0.47791123552295722;
	setAttr ".wl[69].w[6]" 0.0019840002235896382;
	setAttr ".wl[69].w[8]" 0.042193528730496074;
	setAttr ".wl[69].w[17]" 0.47791123552295711;
	setAttr -s 4 ".wl[70].w";
	setAttr ".wl[70].w[5]" 0.42208896266459361;
	setAttr ".wl[70].w[6]" 0.012663957807444054;
	setAttr ".wl[70].w[8]" 0.14315811686336866;
	setAttr ".wl[70].w[17]" 0.42208896266459361;
	setAttr -s 4 ".wl[71].w";
	setAttr ".wl[71].w[5]" 0.39132772367849777;
	setAttr ".wl[71].w[6]" 0.025268270236538243;
	setAttr ".wl[71].w[8]" 0.19207628240646621;
	setAttr ".wl[71].w[17]" 0.39132772367849777;
	setAttr -s 4 ".wl[72].w[1:4]"  0.30808471597701897 0.30819052419678811 
		0.25148125508136659 0.13224350474482638;
	setAttr -s 4 ".wl[73].w";
	setAttr ".wl[73].w[0]" 0.32860323850900636;
	setAttr ".wl[73].w[1]" 0.25238578065381645;
	setAttr ".wl[73].w[26]" 0.090407742328170823;
	setAttr ".wl[73].w[30]" 0.32860323850900636;
	setAttr -s 4 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.36645501828524268;
	setAttr ".wl[74].w[1]" 0.17459006963761109;
	setAttr ".wl[74].w[26]" 0.092776976352409155;
	setAttr ".wl[74].w[30]" 0.36617793572473706;
	setAttr -s 4 ".wl[75].w";
	setAttr ".wl[75].w[0]" 0.39510085839064063;
	setAttr ".wl[75].w[1]" 0.11139566529992737;
	setAttr ".wl[75].w[26]" 0.10266599859091015;
	setAttr ".wl[75].w[30]" 0.3908374777185219;
	setAttr -s 4 ".wl[76].w";
	setAttr ".wl[76].w[0]" 0.45361201850402993;
	setAttr ".wl[76].w[23]" 0.012025293542526207;
	setAttr ".wl[76].w[30]" 0.46992639200531122;
	setAttr ".wl[76].w[31]" 0.064436295948132549;
	setAttr -s 4 ".wl[77].w";
	setAttr ".wl[77].w[0]" 0.45377128400037769;
	setAttr ".wl[77].w[23]" 0.0099743799204537152;
	setAttr ".wl[77].w[30]" 0.47791527026000863;
	setAttr ".wl[77].w[31]" 0.058339065819160027;
	setAttr -s 4 ".wl[78].w";
	setAttr ".wl[78].w[0]" 0.36069590350395281;
	setAttr ".wl[78].w[23]" 0.012696068176943045;
	setAttr ".wl[78].w[30]" 0.52451811194428533;
	setAttr ".wl[78].w[31]" 0.10208991637481875;
	setAttr -s 4 ".wl[79].w";
	setAttr ".wl[79].w[0]" 0.050280479694716051;
	setAttr ".wl[79].w[30]" 0.52919567366414511;
	setAttr ".wl[79].w[31]" 0.41326971892981945;
	setAttr ".wl[79].w[32]" 0.0072541277113194764;
	setAttr -s 4 ".wl[80].w";
	setAttr ".wl[80].w[0]" 0.12706736260880463;
	setAttr ".wl[80].w[30]" 0.53531234538612116;
	setAttr ".wl[80].w[31]" 0.32800083366540483;
	setAttr ".wl[80].w[32]" 0.0096194583396694375;
	setAttr -s 4 ".wl[81].w";
	setAttr ".wl[81].w[0]" 0.44308716995125019;
	setAttr ".wl[81].w[1]" 0.11100856409488659;
	setAttr ".wl[81].w[26]" 0.10172345964376997;
	setAttr ".wl[81].w[30]" 0.34418080631009323;
	setAttr -s 4 ".wl[82].w";
	setAttr ".wl[82].w[0]" 0.54162148462889959;
	setAttr ".wl[82].w[1]" 0.20980446808148911;
	setAttr ".wl[82].w[26]" 0.053127210071656959;
	setAttr ".wl[82].w[30]" 0.19544683721795431;
	setAttr -s 4 ".wl[83].w";
	setAttr ".wl[83].w[0]" 0.50403418111340348;
	setAttr ".wl[83].w[1]" 0.23133021908424894;
	setAttr ".wl[83].w[26]" 0.058647948528236425;
	setAttr ".wl[83].w[30]" 0.2059876512741112;
	setAttr -s 4 ".wl[84].w";
	setAttr ".wl[84].w[0]" 0.48362109569680128;
	setAttr ".wl[84].w[1]" 0.28413065485578742;
	setAttr ".wl[84].w[26]" 0.05327261652712291;
	setAttr ".wl[84].w[30]" 0.17897563292028842;
	setAttr -s 4 ".wl[85].w";
	setAttr ".wl[85].w[0]" 0.41509320960420804;
	setAttr ".wl[85].w[1]" 0.41091024345609523;
	setAttr ".wl[85].w[26]" 0.042645708726267197;
	setAttr ".wl[85].w[30]" 0.13135083821342958;
	setAttr -s 4 ".wl[86].w[0:3]"  0.26102552604145574 0.30927267464943103 
		0.28059817769374262 0.14910362161537064;
	setAttr -s 4 ".wl[87].w[1:4]"  0.29508337133645141 0.29771387896080093 
		0.26025850297242076 0.14694424673032691;
	setAttr -s 4 ".wl[88].w";
	setAttr ".wl[88].w[17]" 0.23670528248219211;
	setAttr ".wl[88].w[18]" 0.34136121375187811;
	setAttr ".wl[88].w[19]" 0.080572290014051778;
	setAttr ".wl[88].w[25]" 0.34136121375187811;
	setAttr -s 4 ".wl[89].w";
	setAttr ".wl[89].w[5]" 0.16545475964465464;
	setAttr ".wl[89].w[17]" 0.30779461844305511;
	setAttr ".wl[89].w[18]" 0.30779461844305511;
	setAttr ".wl[89].w[25]" 0.21895600346923527;
	setAttr -s 4 ".wl[90].w";
	setAttr ".wl[90].w[5]" 0.19252304346840149;
	setAttr ".wl[90].w[17]" 0.32286426589113731;
	setAttr ".wl[90].w[18]" 0.32286426589113709;
	setAttr ".wl[90].w[25]" 0.16174842474932422;
	setAttr -s 4 ".wl[91].w";
	setAttr ".wl[91].w[5]" 0.29347389808240371;
	setAttr ".wl[91].w[17]" 0.30763871011395294;
	setAttr ".wl[91].w[18]" 0.30385324427888616;
	setAttr ".wl[91].w[25]" 0.095034147524757223;
	setAttr -s 4 ".wl[92].w";
	setAttr ".wl[92].w[5]" 0.34456924764226626;
	setAttr ".wl[92].w[6]" 0.34456924764226626;
	setAttr ".wl[92].w[17]" 0.2479055165819867;
	setAttr ".wl[92].w[25]" 0.0629559881334808;
	setAttr -s 4 ".wl[93].w";
	setAttr ".wl[93].w[5]" 0.36868944800372921;
	setAttr ".wl[93].w[6]" 0.36868944800372921;
	setAttr ".wl[93].w[8]" 0.056166901847311893;
	setAttr ".wl[93].w[17]" 0.20645420214522969;
	setAttr -s 4 ".wl[94].w";
	setAttr ".wl[94].w[5]" 0.40542573907599899;
	setAttr ".wl[94].w[6]" 0.40542573907599899;
	setAttr ".wl[94].w[8]" 0.053625299634427935;
	setAttr ".wl[94].w[17]" 0.13552322221357413;
	setAttr -s 4 ".wl[95].w[5:8]"  0.36372384200119218 0.38128523638247308 
		0.22831970991688277 0.026671211699451979;
	setAttr -s 4 ".wl[96].w[5:8]"  0.15635731331066935 0.41592511990219955 
		0.41581132106157481 0.01190624572555642;
	setAttr -s 4 ".wl[97].w[5:8]"  0.12330379678084985 0.43161990049947591 
		0.43161990049947591 0.013456402220198463;
	setAttr -s 4 ".wl[98].w[5:8]"  0.11644030162971566 0.43332221476274974 
		0.43332221476274962 0.01691526884478502;
	setAttr -s 4 ".wl[99].w[5:8]"  0.10616072543789559 0.43160969064103188 
		0.44359999955970386 0.018629584361368603;
	setAttr -s 4 ".wl[100].w[5:8]"  0.074767502077681111 0.36961967966784282 
		0.53916283907159368 0.016449979182882359;
	setAttr -s 4 ".wl[101].w[5:8]"  0.046986873316734144 0.26246890642457621 
		0.6775791341714984 0.012965086087191281;
	setAttr -s 4 ".wl[102].w[5:8]"  0.033488911890550456 0.19727015700120157 
		0.75861922587866315 0.010621705229584801;
	setAttr -s 4 ".wl[103].w[5:8]"  0.0263077517366706 0.15717981667844569 
		0.80646361275857326 0.010048818826310443;
	setAttr -s 4 ".wl[104].w[5:8]"  0.023983259054368232 0.14218452952079005 
		0.82374900580598753 0.010083205618854217;
	setAttr -s 4 ".wl[105].w[5:8]"  0.019031879409464696 0.12025484476323843 
		0.85261997285818125 0.0080933029691156247;
	setAttr -s 4 ".wl[106].w";
	setAttr ".wl[106].w[17]" 0.018308556823544334;
	setAttr ".wl[106].w[18]" 0.79201473251731014;
	setAttr ".wl[106].w[19]" 0.080157445941597641;
	setAttr ".wl[106].w[25]" 0.10951926471754792;
	setAttr -s 4 ".wl[107].w";
	setAttr ".wl[107].w[17]" 0.022943753599110384;
	setAttr ".wl[107].w[18]" 0.77139724527343911;
	setAttr ".wl[107].w[19]" 0.070148189358387431;
	setAttr ".wl[107].w[25]" 0.13551081176906321;
	setAttr -s 4 ".wl[108].w";
	setAttr ".wl[108].w[17]" 0.036362847850630702;
	setAttr ".wl[108].w[18]" 0.69163895688849231;
	setAttr ".wl[108].w[19]" 0.092331379742983721;
	setAttr ".wl[108].w[25]" 0.17966681551789332;
	setAttr -s 4 ".wl[109].w";
	setAttr ".wl[109].w[18]" 0.72737829854682468;
	setAttr ".wl[109].w[19]" 0.10415756442974179;
	setAttr ".wl[109].w[24]" 0.039670214125503096;
	setAttr ".wl[109].w[25]" 0.12879392289793049;
	setAttr -s 4 ".wl[110].w";
	setAttr ".wl[110].w[18]" 0.8263649991948222;
	setAttr ".wl[110].w[19]" 0.08964347003546963;
	setAttr ".wl[110].w[24]" 0.020848930621656974;
	setAttr ".wl[110].w[25]" 0.063142600148051134;
	setAttr -s 4 ".wl[111].w";
	setAttr ".wl[111].w[18]" 0.66875222182158789;
	setAttr ".wl[111].w[19]" 0.19555461840184071;
	setAttr ".wl[111].w[24]" 0.041369956801002368;
	setAttr ".wl[111].w[25]" 0.094323202975568954;
	setAttr -s 4 ".wl[112].w";
	setAttr ".wl[112].w[18]" 0.66363769007276341;
	setAttr ".wl[112].w[19]" 0.20346630912782504;
	setAttr ".wl[112].w[24]" 0.033309021611171892;
	setAttr ".wl[112].w[25]" 0.099586979188239652;
	setAttr -s 4 ".wl[113].w";
	setAttr ".wl[113].w[17]" 0.026031093772379006;
	setAttr ".wl[113].w[18]" 0.70536369109399188;
	setAttr ".wl[113].w[19]" 0.13967779964954052;
	setAttr ".wl[113].w[25]" 0.12892741548408859;
	setAttr -s 4 ".wl[114].w";
	setAttr ".wl[114].w[18]" 0.73456217924733158;
	setAttr ".wl[114].w[19]" 0.22094640384241324;
	setAttr ".wl[114].w[24]" 0.023612188262453506;
	setAttr ".wl[114].w[25]" 0.020879228647801628;
	setAttr -s 4 ".wl[115].w";
	setAttr ".wl[115].w[18]" 0.76169378952588496;
	setAttr ".wl[115].w[19]" 0.18402436316510737;
	setAttr ".wl[115].w[24]" 0.030461753429801695;
	setAttr ".wl[115].w[25]" 0.02382009387920583;
	setAttr -s 4 ".wl[116].w";
	setAttr ".wl[116].w[18]" 0.63505518530287774;
	setAttr ".wl[116].w[19]" 0.22908785044138297;
	setAttr ".wl[116].w[24]" 0.085638463335423631;
	setAttr ".wl[116].w[25]" 0.050218500920315642;
	setAttr -s 4 ".wl[117].w";
	setAttr ".wl[117].w[18]" 0.64292228364284798;
	setAttr ".wl[117].w[19]" 0.24114121534935898;
	setAttr ".wl[117].w[24]" 0.086315229507767155;
	setAttr ".wl[117].w[25]" 0.02962127150002598;
	setAttr -s 4 ".wl[118].w";
	setAttr ".wl[118].w[18]" 0.68190849755337868;
	setAttr ".wl[118].w[19]" 0.25605495188850158;
	setAttr ".wl[118].w[24]" 0.048174773949094057;
	setAttr ".wl[118].w[25]" 0.013861776609025642;
	setAttr -s 4 ".wl[119].w";
	setAttr ".wl[119].w[18]" 0.60355660144628542;
	setAttr ".wl[119].w[19]" 0.33774949741510518;
	setAttr ".wl[119].w[24]" 0.043389711242074927;
	setAttr ".wl[119].w[25]" 0.015304189896534454;
	setAttr -s 4 ".wl[120].w";
	setAttr ".wl[120].w[18]" 0.63337364520959483;
	setAttr ".wl[120].w[19]" 0.32846163138828427;
	setAttr ".wl[120].w[24]" 0.024925727212341344;
	setAttr ".wl[120].w[25]" 0.01323899618977961;
	setAttr -s 4 ".wl[121].w";
	setAttr ".wl[121].w[18]" 0.65413457381489648;
	setAttr ".wl[121].w[19]" 0.3007406572049735;
	setAttr ".wl[121].w[24]" 0.025351076009620797;
	setAttr ".wl[121].w[25]" 0.019773692970509276;
	setAttr -s 4 ".wl[122].w";
	setAttr ".wl[122].w[18]" 0.59337065313077775;
	setAttr ".wl[122].w[19]" 0.3723642638423576;
	setAttr ".wl[122].w[24]" 0.027576246382718925;
	setAttr ".wl[122].w[25]" 0.006688836644145736;
	setAttr -s 4 ".wl[123].w";
	setAttr ".wl[123].w[18]" 0.60647400367859516;
	setAttr ".wl[123].w[19]" 0.33356126681054193;
	setAttr ".wl[123].w[24]" 0.050153284793156866;
	setAttr ".wl[123].w[25]" 0.0098114447177060759;
	setAttr -s 4 ".wl[124].w";
	setAttr ".wl[124].w[18]" 0.52659395659529296;
	setAttr ".wl[124].w[19]" 0.32893388189989292;
	setAttr ".wl[124].w[24]" 0.12672693396252424;
	setAttr ".wl[124].w[25]" 0.017745227542289917;
	setAttr -s 4 ".wl[125].w";
	setAttr ".wl[125].w[18]" 0.51961338541046587;
	setAttr ".wl[125].w[19]" 0.35388892707154102;
	setAttr ".wl[125].w[24]" 0.1173208943550261;
	setAttr ".wl[125].w[25]" 0.0091767931629669862;
	setAttr -s 4 ".wl[126].w";
	setAttr ".wl[126].w[18]" 0.48714641063734182;
	setAttr ".wl[126].w[19]" 0.39477776908310941;
	setAttr ".wl[126].w[24]" 0.10951932141238428;
	setAttr ".wl[126].w[25]" 0.0085564988671645754;
	setAttr -s 4 ".wl[127].w";
	setAttr ".wl[127].w[18]" 0.52492382440938612;
	setAttr ".wl[127].w[19]" 0.43385063577554528;
	setAttr ".wl[127].w[24]" 0.037327669027279978;
	setAttr ".wl[127].w[25]" 0.0038978707877885817;
	setAttr -s 4 ".wl[128].w";
	setAttr ".wl[128].w[18]" 0.49971628691639836;
	setAttr ".wl[128].w[19]" 0.45938444704830678;
	setAttr ".wl[128].w[24]" 0.034375725460618081;
	setAttr ".wl[128].w[25]" 0.0065235405746768248;
	setAttr -s 4 ".wl[129].w";
	setAttr ".wl[129].w[18]" 0.53880241527421791;
	setAttr ".wl[129].w[19]" 0.43149703754558927;
	setAttr ".wl[129].w[24]" 0.023894657454317604;
	setAttr ".wl[129].w[25]" 0.0058058897258751862;
	setAttr -s 4 ".wl[130].w";
	setAttr ".wl[130].w[18]" 0.47270428393057073;
	setAttr ".wl[130].w[19]" 0.4716835976473846;
	setAttr ".wl[130].w[24]" 0.051417768106451531;
	setAttr ".wl[130].w[25]" 0.0041943503155932637;
	setAttr -s 4 ".wl[131].w";
	setAttr ".wl[131].w[18]" 0.44203405020498632;
	setAttr ".wl[131].w[19]" 0.42688181818247745;
	setAttr ".wl[131].w[24]" 0.12337123400496892;
	setAttr ".wl[131].w[25]" 0.0077128976075672715;
	setAttr -s 4 ".wl[132].w";
	setAttr ".wl[132].w[18]" 0.3643667726006915;
	setAttr ".wl[132].w[19]" 0.44483256220521505;
	setAttr ".wl[132].w[24]" 0.18530795704149064;
	setAttr ".wl[132].w[25]" 0.0054927081526027453;
	setAttr -s 4 ".wl[133].w";
	setAttr ".wl[133].w[18]" 0.31849681409911001;
	setAttr ".wl[133].w[19]" 0.48005920844063443;
	setAttr ".wl[133].w[20]" 0.004222363199227714;
	setAttr ".wl[133].w[24]" 0.19722161426102783;
	setAttr -s 4 ".wl[134].w";
	setAttr ".wl[134].w[18]" 0.34472240700446499;
	setAttr ".wl[134].w[19]" 0.44364816892375297;
	setAttr ".wl[134].w[20]" 0.0078979426062014829;
	setAttr ".wl[134].w[24]" 0.20373148146558048;
	setAttr -s 4 ".wl[135].w";
	setAttr ".wl[135].w[18]" 0.45774416121611078;
	setAttr ".wl[135].w[19]" 0.45956347121207708;
	setAttr ".wl[135].w[24]" 0.079332469825382418;
	setAttr ".wl[135].w[25]" 0.0033598977464297072;
	setAttr -s 4 ".wl[136].w";
	setAttr ".wl[136].w[18]" 0.47541260702141014;
	setAttr ".wl[136].w[19]" 0.47541260702141014;
	setAttr ".wl[136].w[24]" 0.045743642508211155;
	setAttr ".wl[136].w[25]" 0.0034311434489684993;
	setAttr -s 4 ".wl[137].w";
	setAttr ".wl[137].w[18]" 0.48751485181029119;
	setAttr ".wl[137].w[19]" 0.48751485181029108;
	setAttr ".wl[137].w[24]" 0.023263719486564145;
	setAttr ".wl[137].w[25]" 0.0017065768928536068;
	setAttr -s 4 ".wl[138].w";
	setAttr ".wl[138].w[18]" 0.23766492551790511;
	setAttr ".wl[138].w[19]" 0.45401716927087321;
	setAttr ".wl[138].w[20]" 0.0078266510133419894;
	setAttr ".wl[138].w[24]" 0.30049125419787975;
	setAttr -s 4 ".wl[139].w";
	setAttr ".wl[139].w[18]" 0.13183408782596506;
	setAttr ".wl[139].w[19]" 0.43766834783892516;
	setAttr ".wl[139].w[20]" 0.012883675010162106;
	setAttr ".wl[139].w[24]" 0.41761388932494764;
	setAttr -s 4 ".wl[140].w";
	setAttr ".wl[140].w[18]" 0.070942016423513748;
	setAttr ".wl[140].w[19]" 0.45830808801540002;
	setAttr ".wl[140].w[20]" 0.012441807545686381;
	setAttr ".wl[140].w[24]" 0.45830808801539991;
	setAttr -s 4 ".wl[141].w";
	setAttr ".wl[141].w[18]" 0.062359481973107436;
	setAttr ".wl[141].w[19]" 0.46412896538459741;
	setAttr ".wl[141].w[20]" 0.009423579474005149;
	setAttr ".wl[141].w[24]" 0.46408797316828992;
	setAttr -s 4 ".wl[142].w";
	setAttr ".wl[142].w[18]" 0.11948399425578604;
	setAttr ".wl[142].w[19]" 0.46560669269863952;
	setAttr ".wl[142].w[20]" 0.012071057784095817;
	setAttr ".wl[142].w[24]" 0.40283825526147859;
	setAttr -s 4 ".wl[143].w";
	setAttr ".wl[143].w[18]" 0.22303680219133298;
	setAttr ".wl[143].w[19]" 0.47376418123845432;
	setAttr ".wl[143].w[20]" 0.0082789428226185489;
	setAttr ".wl[143].w[24]" 0.29492007374759421;
	setAttr -s 4 ".wl[144].w";
	setAttr ".wl[144].w[18]" 0.32283450750809312;
	setAttr ".wl[144].w[19]" 0.47252364786413881;
	setAttr ".wl[144].w[20]" 0.0055029042897598154;
	setAttr ".wl[144].w[24]" 0.19913894033800825;
	setAttr -s 4 ".wl[145].w";
	setAttr ".wl[145].w[18]" 0.33517814094095838;
	setAttr ".wl[145].w[19]" 0.46216901933157412;
	setAttr ".wl[145].w[20]" 0.0053779096695498957;
	setAttr ".wl[145].w[24]" 0.19727493005791757;
	setAttr -s 4 ".wl[146].w";
	setAttr ".wl[146].w[18]" 0.030315628547583812;
	setAttr ".wl[146].w[19]" 0.56572462329950923;
	setAttr ".wl[146].w[20]" 0.023931762953554581;
	setAttr ".wl[146].w[24]" 0.38002798519935238;
	setAttr -s 4 ".wl[147].w";
	setAttr ".wl[147].w[18]" 0.022471329875514656;
	setAttr ".wl[147].w[19]" 0.64964701820495008;
	setAttr ".wl[147].w[20]" 0.037945686735426448;
	setAttr ".wl[147].w[24]" 0.28993596518410891;
	setAttr -s 4 ".wl[148].w";
	setAttr ".wl[148].w[18]" 0.015568498022922249;
	setAttr ".wl[148].w[19]" 0.7334833227227886;
	setAttr ".wl[148].w[20]" 0.045095972641041884;
	setAttr ".wl[148].w[24]" 0.20585220661324724;
	setAttr -s 4 ".wl[149].w";
	setAttr ".wl[149].w[18]" 0.013065164850657581;
	setAttr ".wl[149].w[19]" 0.75713301786387854;
	setAttr ".wl[149].w[20]" 0.033606086292295077;
	setAttr ".wl[149].w[24]" 0.19619573099316881;
	setAttr -s 4 ".wl[150].w";
	setAttr ".wl[150].w[18]" 0.014596012999790752;
	setAttr ".wl[150].w[19]" 0.70462510492667707;
	setAttr ".wl[150].w[20]" 0.016407017886080309;
	setAttr ".wl[150].w[24]" 0.26437186418745195;
	setAttr -s 4 ".wl[151].w";
	setAttr ".wl[151].w[18]" 0.0332282833512361;
	setAttr ".wl[151].w[19]" 0.56692388054159515;
	setAttr ".wl[151].w[20]" 0.01429469893088875;
	setAttr ".wl[151].w[24]" 0.38555313717627998;
	setAttr -s 4 ".wl[152].w";
	setAttr ".wl[152].w[18]" 0.062733975354574867;
	setAttr ".wl[152].w[19]" 0.49329339484868395;
	setAttr ".wl[152].w[20]" 0.017337945004680794;
	setAttr ".wl[152].w[24]" 0.4266346847920604;
	setAttr -s 4 ".wl[153].w";
	setAttr ".wl[153].w[18]" 0.046582064764262077;
	setAttr ".wl[153].w[19]" 0.50429923821500733;
	setAttr ".wl[153].w[20]" 0.018425247526543325;
	setAttr ".wl[153].w[24]" 0.43069344949418736;
	setAttr -s 4 ".wl[154].w";
	setAttr ".wl[154].w[19]" 0.76753614643400192;
	setAttr ".wl[154].w[20]" 0.19135024535816586;
	setAttr ".wl[154].w[23]" 0.0066783520347308617;
	setAttr ".wl[154].w[24]" 0.034435256173101385;
	setAttr -s 4 ".wl[155].w";
	setAttr ".wl[155].w[19]" 0.76434465852149214;
	setAttr ".wl[155].w[20]" 0.20773197824233958;
	setAttr ".wl[155].w[23]" 0.0068877688914375191;
	setAttr ".wl[155].w[24]" 0.021035594344730877;
	setAttr -s 4 ".wl[156].w";
	setAttr ".wl[156].w[19]" 0.73426730848798838;
	setAttr ".wl[156].w[20]" 0.2257724590136789;
	setAttr ".wl[156].w[23]" 0.01420994567449534;
	setAttr ".wl[156].w[24]" 0.025750286823837416;
	setAttr -s 4 ".wl[157].w";
	setAttr ".wl[157].w[19]" 0.69597774814704971;
	setAttr ".wl[157].w[20]" 0.23190758404784317;
	setAttr ".wl[157].w[23]" 0.030499369799914296;
	setAttr ".wl[157].w[24]" 0.041615298005192869;
	setAttr -s 4 ".wl[158].w";
	setAttr ".wl[158].w[19]" 0.8904400221186094;
	setAttr ".wl[158].w[20]" 0.070633006569348039;
	setAttr ".wl[158].w[23]" 0.0096396017646679447;
	setAttr ".wl[158].w[24]" 0.029287369547374549;
	setAttr -s 4 ".wl[159].w";
	setAttr ".wl[159].w[19]" 0.96072824723276173;
	setAttr ".wl[159].w[20]" 0.018719307063878435;
	setAttr ".wl[159].w[23]" 0.0024343664238236974;
	setAttr ".wl[159].w[24]" 0.018118079279536153;
	setAttr -s 4 ".wl[160].w";
	setAttr ".wl[160].w[18]" 0.00493834545810565;
	setAttr ".wl[160].w[19]" 0.88848352947773424;
	setAttr ".wl[160].w[20]" 0.047586500156211235;
	setAttr ".wl[160].w[24]" 0.058991624907948813;
	setAttr -s 4 ".wl[161].w";
	setAttr ".wl[161].w[19]" 0.86894344846898086;
	setAttr ".wl[161].w[20]" 0.087362297514926038;
	setAttr ".wl[161].w[23]" 0.0043829694165445658;
	setAttr ".wl[161].w[24]" 0.03931128459954851;
	setAttr -s 4 ".wl[162].w";
	setAttr ".wl[162].w[19]" 0.4972564696677792;
	setAttr ".wl[162].w[20]" 0.4972564696677792;
	setAttr ".wl[162].w[23]" 0.0035761470481886115;
	setAttr ".wl[162].w[24]" 0.0019109136162529226;
	setAttr -s 4 ".wl[163].w";
	setAttr ".wl[163].w[19]" 0.49718527089301651;
	setAttr ".wl[163].w[20]" 0.49718527089301651;
	setAttr ".wl[163].w[23]" 0.0042420790834553487;
	setAttr ".wl[163].w[24]" 0.0013873791305116414;
	setAttr -s 4 ".wl[164].w[19:22]"  0.36465431803147602 0.3897181697396756 
		0.22194964658052463 0.023677865648323849;
	setAttr -s 4 ".wl[165].w[20:23]"  0.44466339737999094 0.44480820589312137 
		0.087867000301763698 0.022661396425124079;
	setAttr -s 4 ".wl[166].w[20:23]"  0.44811569884969493 0.45470551760502254 
		0.079839544233829191 0.017339239311453248;
	setAttr -s 4 ".wl[167].w";
	setAttr ".wl[167].w[19]" 0.77143610866890411;
	setAttr ".wl[167].w[20]" 0.21960025358175481;
	setAttr ".wl[167].w[23]" 0.0062252885336942726;
	setAttr ".wl[167].w[24]" 0.0027383492156467853;
	setAttr -s 4 ".wl[168].w";
	setAttr ".wl[168].w[19]" 0.68089188021095914;
	setAttr ".wl[168].w[20]" 0.31574836365231523;
	setAttr ".wl[168].w[23]" 0.0023998024309700963;
	setAttr ".wl[168].w[24]" 0.00095995370575565643;
	setAttr -s 4 ".wl[169].w";
	setAttr ".wl[169].w[19]" 0.54820623049830253;
	setAttr ".wl[169].w[20]" 0.44609667664700675;
	setAttr ".wl[169].w[23]" 0.0033984197239483246;
	setAttr ".wl[169].w[24]" 0.0022986731307423377;
	setAttr -s 4 ".wl[170].w";
	setAttr ".wl[170].w[0]" 0.01687777806492333;
	setAttr ".wl[170].w[23]" 0.042718046768321624;
	setAttr ".wl[170].w[30]" 0.61528093284082019;
	setAttr ".wl[170].w[31]" 0.32512324232593492;
	setAttr -s 4 ".wl[171].w";
	setAttr ".wl[171].w[0]" 0.029662273619123405;
	setAttr ".wl[171].w[23]" 0.039184266126931967;
	setAttr ".wl[171].w[30]" 0.57282238449288136;
	setAttr ".wl[171].w[31]" 0.35833107576106321;
	setAttr -s 4 ".wl[172].w";
	setAttr ".wl[172].w[0]" 0.028146453750374487;
	setAttr ".wl[172].w[23]" 0.015401308386677115;
	setAttr ".wl[172].w[30]" 0.53994919596801094;
	setAttr ".wl[172].w[31]" 0.41650304189493759;
	setAttr -s 4 ".wl[173].w";
	setAttr ".wl[173].w[0]" 0.02270719851519392;
	setAttr ".wl[173].w[30]" 0.49898008636664026;
	setAttr ".wl[173].w[31]" 0.46923920347350695;
	setAttr ".wl[173].w[32]" 0.0090735116446590217;
	setAttr -s 4 ".wl[174].w";
	setAttr ".wl[174].w[0]" 0.018378141959592781;
	setAttr ".wl[174].w[30]" 0.49927118847926183;
	setAttr ".wl[174].w[31]" 0.47632904441461621;
	setAttr ".wl[174].w[32]" 0.0060216251465292541;
	setAttr -s 4 ".wl[175].w";
	setAttr ".wl[175].w[0]" 0.021231933943518657;
	setAttr ".wl[175].w[30]" 0.51848880123578112;
	setAttr ".wl[175].w[31]" 0.45447397770371945;
	setAttr ".wl[175].w[32]" 0.0058052871169808591;
	setAttr -s 4 ".wl[176].w";
	setAttr ".wl[176].w[0]" 0.018339636799116044;
	setAttr ".wl[176].w[23]" 0.0097731285831710226;
	setAttr ".wl[176].w[30]" 0.54202901002514947;
	setAttr ".wl[176].w[31]" 0.42985822459256356;
	setAttr -s 4 ".wl[177].w";
	setAttr ".wl[177].w[0]" 0.0099676420377473561;
	setAttr ".wl[177].w[23]" 0.012666986374644614;
	setAttr ".wl[177].w[30]" 0.6191664185150284;
	setAttr ".wl[177].w[31]" 0.35819895307257971;
	setAttr -s 4 ".wl[178].w";
	setAttr ".wl[178].w[23]" 0.047094726275331004;
	setAttr ".wl[178].w[30]" 0.47218945434867504;
	setAttr ".wl[178].w[31]" 0.47652415650498586;
	setAttr ".wl[178].w[32]" 0.0041916628710081559;
	setAttr -s 4 ".wl[179].w";
	setAttr ".wl[179].w[0]" 0.0078872568496659023;
	setAttr ".wl[179].w[23]" 0.039397386109260968;
	setAttr ".wl[179].w[30]" 0.47635767852053662;
	setAttr ".wl[179].w[31]" 0.47635767852053662;
	setAttr -s 4 ".wl[180].w";
	setAttr ".wl[180].w[23]" 0.011508128235407802;
	setAttr ".wl[180].w[30]" 0.4899040664483244;
	setAttr ".wl[180].w[31]" 0.48990406644832429;
	setAttr ".wl[180].w[32]" 0.0086837388679435277;
	setAttr -s 4 ".wl[181].w[30:33]"  0.49110688629675731 0.49504484911058116 
		0.0073132318781495348 0.0065350327145118538;
	setAttr -s 4 ".wl[182].w[30:33]"  0.46602887072882859 0.52303794987168073 
		0.0066163796207027387 0.0043167997787879652;
	setAttr -s 4 ".wl[183].w";
	setAttr ".wl[183].w[23]" 0.0046348298633851568;
	setAttr ".wl[183].w[30]" 0.42873102298964982;
	setAttr ".wl[183].w[31]" 0.5558564937346655;
	setAttr ".wl[183].w[32]" 0.010777653412299528;
	setAttr -s 4 ".wl[184].w";
	setAttr ".wl[184].w[23]" 0.011588090021920969;
	setAttr ".wl[184].w[30]" 0.42679713216138476;
	setAttr ".wl[184].w[31]" 0.54982376228873131;
	setAttr ".wl[184].w[32]" 0.011791015527963022;
	setAttr -s 4 ".wl[185].w";
	setAttr ".wl[185].w[23]" 0.01274143094329395;
	setAttr ".wl[185].w[30]" 0.45744203825784946;
	setAttr ".wl[185].w[31]" 0.52652397409935869;
	setAttr ".wl[185].w[32]" 0.0032925566994979113;
	setAttr -s 4 ".wl[186].w";
	setAttr ".wl[186].w[23]" 0.034318218065498993;
	setAttr ".wl[186].w[30]" 0.38608331747176655;
	setAttr ".wl[186].w[31]" 0.57392200838565122;
	setAttr ".wl[186].w[32]" 0.0056764560770831921;
	setAttr -s 4 ".wl[187].w";
	setAttr ".wl[187].w[23]" 0.039026135571979731;
	setAttr ".wl[187].w[30]" 0.44861037021185046;
	setAttr ".wl[187].w[31]" 0.50251207920322172;
	setAttr ".wl[187].w[32]" 0.0098514150129481604;
	setAttr -s 4 ".wl[188].w[30:33]"  0.46310111772840928 0.51259827458236062 
		0.012414303598691024 0.011886304090539049;
	setAttr -s 4 ".wl[189].w[30:33]"  0.41637857404600287 0.56827784214979382 
		0.0084493861913508186 0.0068941976128525529;
	setAttr -s 4 ".wl[190].w[30:33]"  0.35611690893506232 0.62790451657991164 
		0.010259783873588956 0.0057187906114370577;
	setAttr -s 4 ".wl[191].w[30:33]"  0.32911072549839449 0.64211291044820695 
		0.021568170823182603 0.0072081932302158844;
	setAttr -s 4 ".wl[192].w";
	setAttr ".wl[192].w[23]" 0.016069304398488814;
	setAttr ".wl[192].w[30]" 0.37342631791848407;
	setAttr ".wl[192].w[31]" 0.58861132678240058;
	setAttr ".wl[192].w[32]" 0.021893050900626453;
	setAttr -s 4 ".wl[193].w";
	setAttr ".wl[193].w[23]" 0.016362889972810605;
	setAttr ".wl[193].w[30]" 0.32344398087707049;
	setAttr ".wl[193].w[31]" 0.6525300915741209;
	setAttr ".wl[193].w[32]" 0.007663037575998068;
	setAttr -s 4 ".wl[194].w";
	setAttr ".wl[194].w[23]" 0.027014150256161745;
	setAttr ".wl[194].w[30]" 0.22323608316953678;
	setAttr ".wl[194].w[31]" 0.74009174773823361;
	setAttr ".wl[194].w[32]" 0.0096580188360678807;
	setAttr -s 4 ".wl[195].w";
	setAttr ".wl[195].w[23]" 0.030632698190767506;
	setAttr ".wl[195].w[30]" 0.32654524236766913;
	setAttr ".wl[195].w[31]" 0.63017776944147397;
	setAttr ".wl[195].w[32]" 0.012644290000089414;
	setAttr -s 4 ".wl[196].w[30:33]"  0.3420648430651117 0.62296616312390185 
		0.01826770908740627 0.016701284723580241;
	setAttr -s 4 ".wl[197].w[30:33]"  0.28725061513435035 0.69468863284027194 
		0.010515145306439435 0.0075456067189383262;
	setAttr -s 4 ".wl[198].w[30:33]"  0.26001586518070541 0.71409205849839652 
		0.017837874232856824 0.0080542020880412686;
	setAttr -s 4 ".wl[199].w[30:33]"  0.26371391847228809 0.68097783444727233 
		0.043509732443846684 0.011798514636592889;
	setAttr -s 4 ".wl[200].w";
	setAttr ".wl[200].w[23]" 0.021336088615332875;
	setAttr ".wl[200].w[30]" 0.28814191021695301;
	setAttr ".wl[200].w[31]" 0.64113331696481402;
	setAttr ".wl[200].w[32]" 0.04938868420290015;
	setAttr -s 4 ".wl[201].w";
	setAttr ".wl[201].w[23]" 0.033981560021156015;
	setAttr ".wl[201].w[30]" 0.23776299948734905;
	setAttr ".wl[201].w[31]" 0.70108787836281583;
	setAttr ".wl[201].w[32]" 0.027167562128679081;
	setAttr -s 4 ".wl[202].w";
	setAttr ".wl[202].w[23]" 0.022160003318438419;
	setAttr ".wl[202].w[30]" 0.08450998740379638;
	setAttr ".wl[202].w[31]" 0.8596361380567108;
	setAttr ".wl[202].w[32]" 0.033693871221054474;
	setAttr -s 4 ".wl[203].w";
	setAttr ".wl[203].w[23]" 0.0027101320446356035;
	setAttr ".wl[203].w[30]" 0.027873906284446498;
	setAttr ".wl[203].w[31]" 0.96386575858041079;
	setAttr ".wl[203].w[32]" 0.0055502030905070845;
	setAttr -s 4 ".wl[204].w[30:33]"  0.050915812630049191 0.93377729873551674 
		0.0092796015741259379 0.0060272870603082567;
	setAttr -s 4 ".wl[205].w[30:33]"  0.066310172164448983 0.90862011338987736 
		0.017476868318536305 0.0075928461271373123;
	setAttr -s 4 ".wl[206].w[30:33]"  0.1158799441329863 0.80902571942061841 
		0.059965169007180151 0.015129167439215057;
	setAttr -s 4 ".wl[207].w[30:33]"  0.14832092247880774 0.6983856467865357 
		0.13115108189395558 0.022142348840700959;
	setAttr -s 4 ".wl[208].w";
	setAttr ".wl[208].w[23]" 0.02333667224961853;
	setAttr ".wl[208].w[30]" 0.15068194196968351;
	setAttr ".wl[208].w[31]" 0.6704426131509067;
	setAttr ".wl[208].w[32]" 0.15553877262979121;
	setAttr -s 4 ".wl[209].w";
	setAttr ".wl[209].w[23]" 0.026455678208772388;
	setAttr ".wl[209].w[30]" 0.11744997754421296;
	setAttr ".wl[209].w[31]" 0.77164828679127406;
	setAttr ".wl[209].w[32]" 0.084446057455740658;
	setAttr -s 4 ".wl[210].w[30:33]"  0.011778579408215226 0.75981838084762887 
		0.21692135963765016 0.011481680106505701;
	setAttr -s 4 ".wl[211].w[30:33]"  0.00055369255271585924 0.9931721074487776 
		0.0056707394720735714 0.00060346052643294097;
	setAttr -s 4 ".wl[212].w[30:33]"  5.4717975713012147e-005 0.9990865592759588 
		0.000778558490848586 8.0164257479624685e-005;
	setAttr -s 4 ".wl[213].w[30:33]"  0.0070609178248860057 0.88075610012830019 
		0.10385136921565882 0.0083316128311548832;
	setAttr -s 4 ".wl[214].w[30:33]"  0.023420053548894593 0.69095670255721686 
		0.26640969160473316 0.019213552289155333;
	setAttr -s 4 ".wl[215].w[30:33]"  0.038014471600712772 0.57685746759973167 
		0.35968619875075597 0.025441862048799512;
	setAttr -s 4 ".wl[216].w[30:33]"  0.036564715252358847 0.56034828474585896 
		0.37927241970170933 0.02381458030007292;
	setAttr -s 4 ".wl[217].w[30:33]"  0.025017794357243019 0.61658817868366278 
		0.33987750252890514 0.018516524430189071;
	setAttr -s 4 ".wl[218].w[30:33]"  0.0003714089513083943 0.98958027365066659 
		0.0094059849205245221 0.00064233247750066186;
	setAttr -s 4 ".wl[219].w[30:33]"  3.8274367245041045e-005 0.9987741024552903 
		0.0011091018423430164 7.8521335121666856e-005;
	setAttr -s 4 ".wl[220].w[30:33]"  0.0039332923924524834 0.81170216661880568 
		0.1769157599040368 0.0074487810847051819;
	setAttr -s 4 ".wl[221].w[30:33]"  0.012673721638812427 0.61613428375108392 
		0.35329472148357638 0.017897273126527277;
	setAttr -s 4 ".wl[222].w[30:33]"  0.030205815784163089 0.52701103459382725 
		0.41610582330874202 0.02667732631326776;
	setAttr -s 4 ".wl[223].w[30:33]"  0.027417793871914259 0.5146141260784175 
		0.43402904768118977 0.023939032368478563;
	setAttr -s 4 ".wl[224].w[30:33]"  0.016008409191660421 0.53274293424816321 
		0.43301078347336663 0.018237873086809707;
	setAttr -s 4 ".wl[225].w[30:33]"  0.006678559832284661 0.69879439840581858 
		0.28463213611852561 0.0098949056433711938;
	setAttr -s 4 ".wl[226].w[30:33]"  0.0033544301214204126 0.7742198304851895 
		0.21731051307288773 0.0051152263205023682;
	setAttr -s 4 ".wl[227].w[30:33]"  0.00012420612092793612 0.99489711477220588 
		0.0047540763291212974 0.00022460277774495483;
	setAttr -s 4 ".wl[228].w[30:33]"  1.8182945011754542e-005 0.99929031606651064 
		0.00065243800035913924 3.9062988118372687e-005;
	setAttr -s 4 ".wl[229].w[30:33]"  0.0034602773453959504 0.78646535563328468 
		0.20331651742691731 0.0067578495944019719;
	setAttr -s 4 ".wl[230].w[30:33]"  0.0096468284410466936 0.62365456385304197 
		0.35212652775655434 0.014572079949357046;
	setAttr -s 4 ".wl[231].w[30:33]"  0.019384555784070369 0.51393365816725511 
		0.44453764793911776 0.022144138109556722;
	setAttr -s 4 ".wl[232].w[30:33]"  0.021857206152858917 0.51182829667548413 
		0.44470321004135871 0.021611287130298251;
	setAttr -s 4 ".wl[233].w[30:33]"  0.0080369171143827665 0.54972200876748389 
		0.43057363514173008 0.011667438976403228;
	setAttr -s 4 ".wl[234].w";
	setAttr ".wl[234].w[5]" 0.38719888168531152;
	setAttr ".wl[234].w[17]" 0.49419408073068738;
	setAttr ".wl[234].w[18]" 0.064544337783068645;
	setAttr ".wl[234].w[25]" 0.054062699800932396;
	setAttr -s 4 ".wl[235].w";
	setAttr ".wl[235].w[5]" 0.40453925931793649;
	setAttr ".wl[235].w[17]" 0.56449385533316376;
	setAttr ".wl[235].w[18]" 0.019356027971736155;
	setAttr ".wl[235].w[25]" 0.011610857377163592;
	setAttr -s 4 ".wl[236].w";
	setAttr ".wl[236].w[17]" 0.34835469443488565;
	setAttr ".wl[236].w[18]" 0.39278871509729013;
	setAttr ".wl[236].w[19]" 0.0071698284243020011;
	setAttr ".wl[236].w[25]" 0.25168676204352208;
	setAttr -s 4 ".wl[237].w";
	setAttr ".wl[237].w[5]" 0.02108280965798956;
	setAttr ".wl[237].w[17]" 0.60662151014936871;
	setAttr ".wl[237].w[18]" 0.31359166084295975;
	setAttr ".wl[237].w[25]" 0.058704019349681981;
	setAttr -s 4 ".wl[238].w";
	setAttr ".wl[238].w[17]" 0.33742087665300047;
	setAttr ".wl[238].w[18]" 0.41281053024513981;
	setAttr ".wl[238].w[19]" 0.0053862501945863379;
	setAttr ".wl[238].w[25]" 0.24438234290727334;
	setAttr -s 4 ".wl[239].w";
	setAttr ".wl[239].w[5]" 0.0054757027372295394;
	setAttr ".wl[239].w[17]" 0.47308946913960664;
	setAttr ".wl[239].w[18]" 0.47308946913960653;
	setAttr ".wl[239].w[25]" 0.048345358983557345;
	setAttr -s 4 ".wl[240].w";
	setAttr ".wl[240].w[17]" 0.36053274925881235;
	setAttr ".wl[240].w[18]" 0.41728251842528458;
	setAttr ".wl[240].w[19]" 0.0043396504898051231;
	setAttr ".wl[240].w[25]" 0.21784508182609802;
	setAttr -s 4 ".wl[241].w";
	setAttr ".wl[241].w[5]" 0.0072359101669595017;
	setAttr ".wl[241].w[17]" 0.46435547027735324;
	setAttr ".wl[241].w[18]" 0.46435547027735324;
	setAttr ".wl[241].w[25]" 0.064053149278334151;
	setAttr -s 4 ".wl[242].w";
	setAttr ".wl[242].w[17]" 0.35994300320656036;
	setAttr ".wl[242].w[18]" 0.3867559967507414;
	setAttr ".wl[242].w[19]" 0.0090359396656977745;
	setAttr ".wl[242].w[25]" 0.24426506037700041;
	setAttr -s 4 ".wl[243].w";
	setAttr ".wl[243].w[5]" 0.027199736910731465;
	setAttr ".wl[243].w[17]" 0.42990742109758512;
	setAttr ".wl[243].w[18]" 0.42990742109758512;
	setAttr ".wl[243].w[25]" 0.11298542089409842;
	setAttr -s 4 ".wl[244].w";
	setAttr ".wl[244].w[5]" 0.30059287411023033;
	setAttr ".wl[244].w[17]" 0.32512915960446093;
	setAttr ".wl[244].w[18]" 0.31408991416132298;
	setAttr ".wl[244].w[25]" 0.060188052123985702;
	setAttr -s 4 ".wl[245].w";
	setAttr ".wl[245].w[5]" 0.19507079799486346;
	setAttr ".wl[245].w[17]" 0.36979702780825147;
	setAttr ".wl[245].w[18]" 0.36888839649293054;
	setAttr ".wl[245].w[25]" 0.066243777703954565;
	setAttr -s 4 ".wl[246].w";
	setAttr ".wl[246].w[5]" 0.14370975669055286;
	setAttr ".wl[246].w[17]" 0.48832338588878105;
	setAttr ".wl[246].w[18]" 0.33202565505508158;
	setAttr ".wl[246].w[25]" 0.035941202365584506;
	setAttr -s 4 ".wl[247].w";
	setAttr ".wl[247].w[5]" 0.08544967704038714;
	setAttr ".wl[247].w[17]" 0.50485526483896104;
	setAttr ".wl[247].w[18]" 0.37487652264778187;
	setAttr ".wl[247].w[25]" 0.034818535472869963;
	setAttr -s 4 ".wl[248].w";
	setAttr ".wl[248].w[5]" 0.15486212358775539;
	setAttr ".wl[248].w[17]" 0.747979757633495;
	setAttr ".wl[248].w[18]" 0.08364659676496812;
	setAttr ".wl[248].w[25]" 0.013511522013781377;
	setAttr -s 4 ".wl[249].w";
	setAttr ".wl[249].w[5]" 0.077317014546000942;
	setAttr ".wl[249].w[17]" 0.82754432580024684;
	setAttr ".wl[249].w[18]" 0.082465806250791654;
	setAttr ".wl[249].w[25]" 0.012672853402960486;
	setAttr -s 4 ".wl[250].w";
	setAttr ".wl[250].w[5]" 0.36298324447145319;
	setAttr ".wl[250].w[17]" 0.63644321533997028;
	setAttr ".wl[250].w[18]" 0.0004118733804919345;
	setAttr ".wl[250].w[25]" 0.00016166680808444445;
	setAttr -s 4 ".wl[251].w";
	setAttr ".wl[251].w[5]" 0.39380635903937339;
	setAttr ".wl[251].w[17]" 0.60486660770957512;
	setAttr ".wl[251].w[18]" 0.00094022266381264244;
	setAttr ".wl[251].w[25]" 0.00038681058723887132;
	setAttr -s 4 ".wl[252].w";
	setAttr ".wl[252].w[5]" 0.1615323580792779;
	setAttr ".wl[252].w[17]" 0.39559987393964025;
	setAttr ".wl[252].w[18]" 0.38764056971215194;
	setAttr ".wl[252].w[25]" 0.055227198268929856;
	setAttr -s 4 ".wl[253].w";
	setAttr ".wl[253].w[5]" 0.22905015541796428;
	setAttr ".wl[253].w[17]" 0.37041392976593079;
	setAttr ".wl[253].w[18]" 0.34788811921591517;
	setAttr ".wl[253].w[25]" 0.052647795600189812;
	setAttr -s 4 ".wl[254].w";
	setAttr ".wl[254].w[5]" 0.33096403309813766;
	setAttr ".wl[254].w[6]" 0.0072092170321215576;
	setAttr ".wl[254].w[8]" 0.33086271677160323;
	setAttr ".wl[254].w[17]" 0.33096403309813766;
	setAttr -s 4 ".wl[255].w";
	setAttr ".wl[255].w[5]" 0.45517467787253396;
	setAttr ".wl[255].w[6]" 0.0049743754552128757;
	setAttr ".wl[255].w[8]" 0.084676268799719318;
	setAttr ".wl[255].w[17]" 0.45517467787253385;
	setAttr -s 4 ".wl[256].w";
	setAttr ".wl[256].w[5]" 0.37823454540786688;
	setAttr ".wl[256].w[17]" 0.61574796349996552;
	setAttr ".wl[256].w[18]" 0.0041038324483686278;
	setAttr ".wl[256].w[25]" 0.001913658643799032;
	setAttr -s 4 ".wl[257].w";
	setAttr ".wl[257].w[5]" 0.023173646059544604;
	setAttr ".wl[257].w[17]" 0.81840832582804446;
	setAttr ".wl[257].w[18]" 0.14170333736510987;
	setAttr ".wl[257].w[25]" 0.016714690747301079;
	setAttr -s 4 ".wl[258].w";
	setAttr ".wl[258].w[5]" 0.014540432296247914;
	setAttr ".wl[258].w[17]" 0.48959801936815422;
	setAttr ".wl[258].w[18]" 0.46892206542970621;
	setAttr ".wl[258].w[25]" 0.026939482905891609;
	setAttr -s 4 ".wl[259].w";
	setAttr ".wl[259].w[5]" 0.095531059052784958;
	setAttr ".wl[259].w[17]" 0.40910719733741707;
	setAttr ".wl[259].w[18]" 0.40910719733741685;
	setAttr ".wl[259].w[25]" 0.086254546272381175;
	setAttr -s 4 ".wl[260].w";
	setAttr ".wl[260].w[5]" 0.034769027331346701;
	setAttr ".wl[260].w[17]" 0.45692928556821771;
	setAttr ".wl[260].w[18]" 0.45692928556821771;
	setAttr ".wl[260].w[25]" 0.051372401532217955;
	setAttr -s 4 ".wl[261].w";
	setAttr ".wl[261].w[0]" 0.47538561618695796;
	setAttr ".wl[261].w[23]" 0.0074821202021565737;
	setAttr ".wl[261].w[30]" 0.48596298936739368;
	setAttr ".wl[261].w[31]" 0.031169274243491807;
	setAttr -s 4 ".wl[262].w";
	setAttr ".wl[262].w[0]" 0.48025303221539489;
	setAttr ".wl[262].w[23]" 0.0079029071816131991;
	setAttr ".wl[262].w[30]" 0.4818936029711855;
	setAttr ".wl[262].w[31]" 0.029950457631806291;
	setAttr -s 4 ".wl[263].w";
	setAttr ".wl[263].w[0]" 0.49105705089748308;
	setAttr ".wl[263].w[23]" 0.0041721844737238455;
	setAttr ".wl[263].w[30]" 0.49223488252095837;
	setAttr ".wl[263].w[31]" 0.012535882107834823;
	setAttr -s 4 ".wl[264].w";
	setAttr ".wl[264].w[0]" 0.48107032010245154;
	setAttr ".wl[264].w[1]" 0.027471525289165057;
	setAttr ".wl[264].w[26]" 0.010387834505931797;
	setAttr ".wl[264].w[30]" 0.48107032010245154;
	setAttr -s 4 ".wl[265].w";
	setAttr ".wl[265].w[0]" 0.49439531686932259;
	setAttr ".wl[265].w[1]" 0.0089313928052836087;
	setAttr ".wl[265].w[26]" 0.0022779734560711556;
	setAttr ".wl[265].w[30]" 0.49439531686932259;
	setAttr -s 4 ".wl[266].w";
	setAttr ".wl[266].w[0]" 0.49288905771654029;
	setAttr ".wl[266].w[1]" 0.011254545573368408;
	setAttr ".wl[266].w[24]" 0.0029673389935510166;
	setAttr ".wl[266].w[30]" 0.49288905771654029;
	setAttr -s 4 ".wl[267].w";
	setAttr ".wl[267].w[0]" 0.4938684682587885;
	setAttr ".wl[267].w[1]" 0.01045661792222828;
	setAttr ".wl[267].w[24]" 0.0018064455601947552;
	setAttr ".wl[267].w[30]" 0.4938684682587885;
	setAttr -s 4 ".wl[268].w";
	setAttr ".wl[268].w[0]" 0.49051039167037647;
	setAttr ".wl[268].w[1]" 0.015426791868070657;
	setAttr ".wl[268].w[24]" 0.0035524247911767112;
	setAttr ".wl[268].w[30]" 0.49051039167037624;
	setAttr -s 4 ".wl[269].w";
	setAttr ".wl[269].w[0]" 0.46278298162349218;
	setAttr ".wl[269].w[1]" 0.065416886272872857;
	setAttr ".wl[269].w[26]" 0.009017150480142835;
	setAttr ".wl[269].w[30]" 0.46278298162349218;
	setAttr -s 4 ".wl[270].w";
	setAttr ".wl[270].w[0]" 0.45951840420893858;
	setAttr ".wl[270].w[1]" 0.071020872715367361;
	setAttr ".wl[270].w[24]" 0.009942318866755593;
	setAttr ".wl[270].w[30]" 0.45951840420893858;
	setAttr -s 4 ".wl[271].w";
	setAttr ".wl[271].w[0]" 0.45036272728887772;
	setAttr ".wl[271].w[1]" 0.18129845596676061;
	setAttr ".wl[271].w[26]" 0.027786929866883553;
	setAttr ".wl[271].w[30]" 0.34055188687747812;
	setAttr -s 4 ".wl[272].w";
	setAttr ".wl[272].w[0]" 0.44563675758263216;
	setAttr ".wl[272].w[1]" 0.18973805257413959;
	setAttr ".wl[272].w[26]" 0.028304804948391875;
	setAttr ".wl[272].w[30]" 0.3363203848948364;
	setAttr -s 4 ".wl[273].w";
	setAttr ".wl[273].w[0]" 0.45092254034730866;
	setAttr ".wl[273].w[1]" 0.063832785151461832;
	setAttr ".wl[273].w[26]" 0.034322134153920783;
	setAttr ".wl[273].w[30]" 0.45092254034730866;
	setAttr -s 4 ".wl[274].w";
	setAttr ".wl[274].w[0]" 0.47963278273828108;
	setAttr ".wl[274].w[1]" 0.030132185993133876;
	setAttr ".wl[274].w[26]" 0.010602248530304057;
	setAttr ".wl[274].w[30]" 0.47963278273828108;
	setAttr -s 4 ".wl[275].w";
	setAttr ".wl[275].w[0]" 0.4909119785578458;
	setAttr ".wl[275].w[1]" 0.014919658667404776;
	setAttr ".wl[275].w[26]" 0.003256384216903674;
	setAttr ".wl[275].w[30]" 0.4909119785578458;
	setAttr -s 4 ".wl[276].w";
	setAttr ".wl[276].w[0]" 0.48218246087056987;
	setAttr ".wl[276].w[1]" 0.02909582576145351;
	setAttr ".wl[276].w[24]" 0.0065392524974070606;
	setAttr ".wl[276].w[30]" 0.48218246087056965;
	setAttr -s 4 ".wl[277].w";
	setAttr ".wl[277].w[0]" 0.4460621506097005;
	setAttr ".wl[277].w[1]" 0.096839559328557576;
	setAttr ".wl[277].w[26]" 0.011036139452041382;
	setAttr ".wl[277].w[30]" 0.4460621506097005;
	setAttr -s 4 ".wl[278].w";
	setAttr ".wl[278].w[0]" 0.41389002585557177;
	setAttr ".wl[278].w[1]" 0.23814208303896295;
	setAttr ".wl[278].w[26]" 0.029499848022670958;
	setAttr ".wl[278].w[30]" 0.31846804308279447;
	setAttr -s 4 ".wl[279].w";
	setAttr ".wl[279].w[0]" 0.43233194753551679;
	setAttr ".wl[279].w[1]" 0.099558721641172854;
	setAttr ".wl[279].w[26]" 0.035777383287793584;
	setAttr ".wl[279].w[30]" 0.43233194753551679;
	setAttr -s 4 ".wl[280].w";
	setAttr ".wl[280].w[0]" 0.40755938061903246;
	setAttr ".wl[280].w[1]" 0.15094842799531982;
	setAttr ".wl[280].w[26]" 0.033932810766615237;
	setAttr ".wl[280].w[30]" 0.40755938061903246;
	setAttr -s 4 ".wl[281].w";
	setAttr ".wl[281].w[0]" 0.47112346686135381;
	setAttr ".wl[281].w[1]" 0.046479870314621613;
	setAttr ".wl[281].w[26]" 0.011273195962670688;
	setAttr ".wl[281].w[30]" 0.47112346686135381;
	setAttr -s 4 ".wl[282].w";
	setAttr ".wl[282].w[0]" 0.4792354774441871;
	setAttr ".wl[282].w[1]" 0.034359898207529438;
	setAttr ".wl[282].w[24]" 0.007169146904096443;
	setAttr ".wl[282].w[30]" 0.4792354774441871;
	setAttr -s 4 ".wl[283].w";
	setAttr ".wl[283].w[0]" 0.46424444176898244;
	setAttr ".wl[283].w[1]" 0.058051009133490948;
	setAttr ".wl[283].w[24]" 0.01346010732854417;
	setAttr ".wl[283].w[30]" 0.46424444176898244;
	setAttr -s 4 ".wl[284].w";
	setAttr ".wl[284].w[0]" 0.40803600718774036;
	setAttr ".wl[284].w[1]" 0.16645420194942959;
	setAttr ".wl[284].w[24]" 0.017473783675089692;
	setAttr ".wl[284].w[30]" 0.40803600718774036;
	setAttr -s 4 ".wl[285].w";
	setAttr ".wl[285].w[0]" 0.33938944846651609;
	setAttr ".wl[285].w[1]" 0.33796515309182185;
	setAttr ".wl[285].w[26]" 0.035550572090905778;
	setAttr ".wl[285].w[30]" 0.28709482635075628;
	setAttr -s 4 ".wl[286].w";
	setAttr ".wl[286].w[17]" 0.015340876280350886;
	setAttr ".wl[286].w[18]" 0.82631520396004454;
	setAttr ".wl[286].w[19]" 0.054053250062967455;
	setAttr ".wl[286].w[25]" 0.10429066969663713;
	setAttr -s 4 ".wl[287].w";
	setAttr ".wl[287].w[0]" 0.032585341532888154;
	setAttr ".wl[287].w[30]" 0.51341327085049593;
	setAttr ".wl[287].w[31]" 0.44706104185806828;
	setAttr ".wl[287].w[32]" 0.0069403457585476827;
	setAttr -s 4 ".wl[288].w";
	setAttr ".wl[288].w[0]" 0.043168440484587435;
	setAttr ".wl[288].w[30]" 0.52253224648792773;
	setAttr ".wl[288].w[31]" 0.42402483864940554;
	setAttr ".wl[288].w[32]" 0.010274474378079244;
	setAttr -s 4 ".wl[289].w";
	setAttr ".wl[289].w[0]" 0.061050317908309018;
	setAttr ".wl[289].w[23]" 0.017993866613805656;
	setAttr ".wl[289].w[30]" 0.59878975180617355;
	setAttr ".wl[289].w[31]" 0.32216606367171174;
	setAttr -s 4 ".wl[290].w";
	setAttr ".wl[290].w[0]" 0.092586585988352052;
	setAttr ".wl[290].w[23]" 0.035560396369167788;
	setAttr ".wl[290].w[30]" 0.66932279092880032;
	setAttr ".wl[290].w[31]" 0.20253022671367973;
	setAttr -s 4 ".wl[291].w";
	setAttr ".wl[291].w[0]" 0.053221145783269239;
	setAttr ".wl[291].w[23]" 0.023034094049779592;
	setAttr ".wl[291].w[30]" 0.80640855473422524;
	setAttr ".wl[291].w[31]" 0.11733620543272599;
	setAttr -s 4 ".wl[292].w";
	setAttr ".wl[292].w[0]" 0.036261227438725729;
	setAttr ".wl[292].w[23]" 0.012640807391591602;
	setAttr ".wl[292].w[30]" 0.78758815910564539;
	setAttr ".wl[292].w[31]" 0.16350980606403734;
	setAttr -s 4 ".wl[293].w";
	setAttr ".wl[293].w[0]" 0.046420131170329733;
	setAttr ".wl[293].w[23]" 0.013627638885825973;
	setAttr ".wl[293].w[30]" 0.59621384723396398;
	setAttr ".wl[293].w[31]" 0.34373838270988039;
	setAttr -s 4 ".wl[294].w";
	setAttr ".wl[294].w[0]" 0.045940540741599638;
	setAttr ".wl[294].w[30]" 0.56063364757768486;
	setAttr ".wl[294].w[31]" 0.38735479737428141;
	setAttr ".wl[294].w[32]" 0.0060710143064342317;
	setAttr -s 4 ".wl[295].w";
	setAttr ".wl[295].w[0]" 0.10747677402122972;
	setAttr ".wl[295].w[23]" 0.018901376017978262;
	setAttr ".wl[295].w[30]" 0.61259753010524709;
	setAttr ".wl[295].w[31]" 0.26102431985554481;
	setAttr -s 4 ".wl[296].w";
	setAttr ".wl[296].w[0]" 0.13153341536845808;
	setAttr ".wl[296].w[23]" 0.010959884815626448;
	setAttr ".wl[296].w[30]" 0.78847770175127518;
	setAttr ".wl[296].w[31]" 0.069028998064640315;
	setAttr -s 4 ".wl[297].w";
	setAttr ".wl[297].w[0]" 0.17385497033245151;
	setAttr ".wl[297].w[23]" 0.0069394524085900303;
	setAttr ".wl[297].w[30]" 0.79465648467308547;
	setAttr ".wl[297].w[31]" 0.02454909258587306;
	setAttr -s 4 ".wl[298].w";
	setAttr ".wl[298].w[0]" 0.18032964552459438;
	setAttr ".wl[298].w[23]" 0.021982850182679561;
	setAttr ".wl[298].w[30]" 0.69258852842657948;
	setAttr ".wl[298].w[31]" 0.10509897586614664;
	setAttr -s 4 ".wl[299].w";
	setAttr ".wl[299].w[0]" 0.12255667889533421;
	setAttr ".wl[299].w[23]" 0.018897692835226833;
	setAttr ".wl[299].w[30]" 0.63131652925978909;
	setAttr ".wl[299].w[31]" 0.22722909900964977;
	setAttr -s 4 ".wl[300].w";
	setAttr ".wl[300].w[0]" 0.084992668445514424;
	setAttr ".wl[300].w[23]" 0.013147582909380893;
	setAttr ".wl[300].w[30]" 0.54563246498917872;
	setAttr ".wl[300].w[31]" 0.35622728365592599;
	setAttr -s 4 ".wl[301].w";
	setAttr ".wl[301].w[0]" 0.3822005920482302;
	setAttr ".wl[301].w[23]" 0.010518341870840936;
	setAttr ".wl[301].w[30]" 0.5481706204732556;
	setAttr ".wl[301].w[31]" 0.059110445607673333;
	setAttr -s 4 ".wl[302].w";
	setAttr ".wl[302].w[0]" 0.36285151816138306;
	setAttr ".wl[302].w[23]" 0.017023372759645314;
	setAttr ".wl[302].w[30]" 0.51850825776344134;
	setAttr ".wl[302].w[31]" 0.10161685131553032;
	setAttr -s 4 ".wl[303].w";
	setAttr ".wl[303].w[0]" 0.37770813390769176;
	setAttr ".wl[303].w[24]" 0.0053587714413308157;
	setAttr ".wl[303].w[30]" 0.59586605904029488;
	setAttr ".wl[303].w[31]" 0.021067035610682603;
	setAttr -s 4 ".wl[304].w";
	setAttr ".wl[304].w[0]" 0.42788007164513531;
	setAttr ".wl[304].w[24]" 0.0012088466804274247;
	setAttr ".wl[304].w[30]" 0.56746248712201253;
	setAttr ".wl[304].w[31]" 0.0034485945524247927;
	setAttr -s 4 ".wl[305].w";
	setAttr ".wl[305].w[0]" 0.41971133232999114;
	setAttr ".wl[305].w[23]" 0.0069783578562553801;
	setAttr ".wl[305].w[30]" 0.5471654867123249;
	setAttr ".wl[305].w[31]" 0.026144823101428554;
	setAttr -s 4 ".wl[306].w";
	setAttr ".wl[306].w[0]" 0.45489710509567299;
	setAttr ".wl[306].w[23]" 0.0027109321341988492;
	setAttr ".wl[306].w[30]" 0.53511073100704409;
	setAttr ".wl[306].w[31]" 0.0072812317630840603;
	setAttr -s 4 ".wl[307].w";
	setAttr ".wl[307].w[0]" 0.29558795747861627;
	setAttr ".wl[307].w[23]" 0.012588499115919298;
	setAttr ".wl[307].w[30]" 0.63669761791364199;
	setAttr ".wl[307].w[31]" 0.055125925491822464;
	setAttr -s 4 ".wl[308].w";
	setAttr ".wl[308].w[0]" 0.24193136494803574;
	setAttr ".wl[308].w[23]" 0.01574329779517792;
	setAttr ".wl[308].w[30]" 0.61897091084379974;
	setAttr ".wl[308].w[31]" 0.12335442641298673;
	setAttr -s 4 ".wl[309].w";
	setAttr ".wl[309].w[0]" 0.21337307508407952;
	setAttr ".wl[309].w[23]" 0.015745648836075824;
	setAttr ".wl[309].w[30]" 0.56906535065698072;
	setAttr ".wl[309].w[31]" 0.20181592542286403;
	setAttr -s 4 ".wl[310].w";
	setAttr ".wl[310].w[0]" 0.28701415232507899;
	setAttr ".wl[310].w[14]" 0.017003014089883188;
	setAttr ".wl[310].w[26]" 0.47260215072917422;
	setAttr ".wl[310].w[27]" 0.22338068285586368;
	setAttr -s 4 ".wl[311].w";
	setAttr ".wl[311].w[0]" 0.3082038326879355;
	setAttr ".wl[311].w[23]" 0.00578039812272221;
	setAttr ".wl[311].w[30]" 0.66698988808745752;
	setAttr ".wl[311].w[31]" 0.019025881101884842;
	setAttr -s 4 ".wl[312].w";
	setAttr ".wl[312].w[17]" 0.04993931216192217;
	setAttr ".wl[312].w[18]" 0.60953157294146132;
	setAttr ".wl[312].w[19]" 0.031940465535076429;
	setAttr ".wl[312].w[25]" 0.30858864936154007;
	setAttr -s 4 ".wl[313].w";
	setAttr ".wl[313].w[17]" 0.045267118320237859;
	setAttr ".wl[313].w[18]" 0.63370187528914146;
	setAttr ".wl[313].w[19]" 0.026803032288792397;
	setAttr ".wl[313].w[25]" 0.29422797410182833;
	setAttr -s 4 ".wl[314].w";
	setAttr ".wl[314].w[17]" 0.050641507020292402;
	setAttr ".wl[314].w[18]" 0.5948342990059905;
	setAttr ".wl[314].w[19]" 0.034435862304249797;
	setAttr ".wl[314].w[25]" 0.32008833166946737;
	setAttr -s 4 ".wl[315].w";
	setAttr ".wl[315].w[17]" 0.078141083685021595;
	setAttr ".wl[315].w[18]" 0.5230360489080742;
	setAttr ".wl[315].w[19]" 0.065407108952452345;
	setAttr ".wl[315].w[25]" 0.33341575845445193;
	setAttr -s 4 ".wl[316].w";
	setAttr ".wl[316].w[5]" 0.14854047784201005;
	setAttr ".wl[316].w[17]" 0.54980407956650013;
	setAttr ".wl[316].w[18]" 0.17211891951759883;
	setAttr ".wl[316].w[25]" 0.12953652307389088;
	setAttr -s 4 ".wl[317].w";
	setAttr ".wl[317].w[5]" 0.12982851271159543;
	setAttr ".wl[317].w[17]" 0.76621309014414718;
	setAttr ".wl[317].w[18]" 0.072899084333411468;
	setAttr ".wl[317].w[25]" 0.031059312810845743;
	setAttr -s 4 ".wl[318].w";
	setAttr ".wl[318].w[5]" 0.15123847441715149;
	setAttr ".wl[318].w[17]" 0.83411293079042437;
	setAttr ".wl[318].w[18]" 0.011474123622711059;
	setAttr ".wl[318].w[25]" 0.0031744711697131883;
	setAttr -s 4 ".wl[319].w";
	setAttr ".wl[319].w[5]" 0.13812203009692811;
	setAttr ".wl[319].w[17]" 0.8506438958331175;
	setAttr ".wl[319].w[18]" 0.0088941168860277517;
	setAttr ".wl[319].w[25]" 0.0023399571839265486;
	setAttr -s 4 ".wl[320].w";
	setAttr ".wl[320].w[5]" 0.10296982644885408;
	setAttr ".wl[320].w[17]" 0.86965528993374697;
	setAttr ".wl[320].w[18]" 0.021044820903986173;
	setAttr ".wl[320].w[25]" 0.0063300627134127603;
	setAttr -s 4 ".wl[321].w";
	setAttr ".wl[321].w[17]" 0.091950777889290694;
	setAttr ".wl[321].w[18]" 0.5279471495090613;
	setAttr ".wl[321].w[19]" 0.0447253317057612;
	setAttr ".wl[321].w[25]" 0.33537674089588676;
	setAttr -s 4 ".wl[322].w";
	setAttr ".wl[322].w[17]" 0.03307459671207201;
	setAttr ".wl[322].w[18]" 0.71599997050903996;
	setAttr ".wl[322].w[19]" 0.068524560907134976;
	setAttr ".wl[322].w[25]" 0.18240087187175305;
	setAttr -s 4 ".wl[323].w[1:4]"  0.22790369833927965 0.28005166703616441 
		0.28005161887541963 0.21199301574913629;
	setAttr -s 4 ".wl[324].w[2:5]"  0.23737950936545574 0.27048147330458855 
		0.27010480102692247 0.22203421630303324;
	setAttr -s 4 ".wl[325].w";
	setAttr ".wl[325].w[5]" 0.3627163013741978;
	setAttr ".wl[325].w[8]" 0.23065865586556031;
	setAttr ".wl[325].w[17]" 0.3627163013741978;
	setAttr ".wl[325].w[25]" 0.043908741386044121;
	setAttr -s 4 ".wl[326].w";
	setAttr ".wl[326].w[16]" 0.058883730921912056;
	setAttr ".wl[326].w[17]" 0.29772898858120384;
	setAttr ".wl[326].w[18]" 0.33106264165059773;
	setAttr ".wl[326].w[25]" 0.31232463884628631;
	setAttr -s 4 ".wl[327].w";
	setAttr ".wl[327].w[5]" 0.28900675042715002;
	setAttr ".wl[327].w[17]" 0.37590981684267832;
	setAttr ".wl[327].w[18]" 0.1706598275314419;
	setAttr ".wl[327].w[25]" 0.16442360519872976;
	setAttr -s 4 ".wl[328].w";
	setAttr ".wl[328].w[17]" 0.11941819918416151;
	setAttr ".wl[328].w[18]" 0.44043998841208321;
	setAttr ".wl[328].w[19]" 0.013253221755410665;
	setAttr ".wl[328].w[25]" 0.42688859064834456;
	setAttr -s 4 ".wl[329].w";
	setAttr ".wl[329].w[17]" 0.13713371374467007;
	setAttr ".wl[329].w[18]" 0.44081694082184836;
	setAttr ".wl[329].w[19]" 0.016514250099273309;
	setAttr ".wl[329].w[25]" 0.40553509533420823;
	setAttr -s 4 ".wl[330].w";
	setAttr ".wl[330].w[17]" 0.12721689624271712;
	setAttr ".wl[330].w[18]" 0.43057556358170496;
	setAttr ".wl[330].w[19]" 0.011631976593873081;
	setAttr ".wl[330].w[25]" 0.43057556358170496;
	setAttr -s 4 ".wl[331].w";
	setAttr ".wl[331].w[17]" 0.18011160411875418;
	setAttr ".wl[331].w[18]" 0.40008136725173254;
	setAttr ".wl[331].w[19]" 0.019741713596764986;
	setAttr ".wl[331].w[25]" 0.40006531503274823;
	setAttr -s 4 ".wl[332].w";
	setAttr ".wl[332].w[17]" 0.33029533459927596;
	setAttr ".wl[332].w[18]" 0.33053464783936365;
	setAttr ".wl[332].w[19]" 0.026492495991344137;
	setAttr ".wl[332].w[25]" 0.31267752157001627;
	setAttr -s 4 ".wl[333].w";
	setAttr ".wl[333].w[17]" 0.037115119790741342;
	setAttr ".wl[333].w[18]" 0.68204236176352107;
	setAttr ".wl[333].w[19]" 0.067422199428629453;
	setAttr ".wl[333].w[25]" 0.21342031901710815;
	setAttr -s 4 ".wl[334].w";
	setAttr ".wl[334].w[0]" 0.44866729220930274;
	setAttr ".wl[334].w[1]" 0.086739518330824286;
	setAttr ".wl[334].w[26]" 0.015925897250570271;
	setAttr ".wl[334].w[30]" 0.44866729220930274;
	setAttr -s 4 ".wl[335].w";
	setAttr ".wl[335].w[0]" 0.45294987416461835;
	setAttr ".wl[335].w[1]" 0.077418421968324824;
	setAttr ".wl[335].w[24]" 0.016681829702438433;
	setAttr ".wl[335].w[30]" 0.45294987416461835;
	setAttr -s 4 ".wl[336].w";
	setAttr ".wl[336].w[0]" 0.41997969683375874;
	setAttr ".wl[336].w[1]" 0.12307507793379055;
	setAttr ".wl[336].w[25]" 0.036965528398692202;
	setAttr ".wl[336].w[30]" 0.41997969683375852;
	setAttr -s 4 ".wl[337].w";
	setAttr ".wl[337].w[0]" 0.34618798651015537;
	setAttr ".wl[337].w[1]" 0.23462348554993925;
	setAttr ".wl[337].w[25]" 0.073000541429750265;
	setAttr ".wl[337].w[30]" 0.34618798651015514;
	setAttr -s 4 ".wl[338].w[0:3]"  0.27534710467004048 0.29975019933012442 
		0.26805597103504941 0.15684672496478569;
	setAttr -s 4 ".wl[339].w";
	setAttr ".wl[339].w[18]" 0.57051425393490263;
	setAttr ".wl[339].w[19]" 0.17147120328115079;
	setAttr ".wl[339].w[24]" 0.072566230117514258;
	setAttr ".wl[339].w[25]" 0.18544831266643233;
	setAttr -s 4 ".wl[340].w";
	setAttr ".wl[340].w[0]" 0.40998893289815769;
	setAttr ".wl[340].w[1]" 0.13600637881594832;
	setAttr ".wl[340].w[25]" 0.044015755387736395;
	setAttr ".wl[340].w[30]" 0.40998893289815769;
	setAttr -s 4 ".wl[341].w";
	setAttr ".wl[341].w[5]" 0.31896672067073084;
	setAttr ".wl[341].w[6]" 0.30605551389816521;
	setAttr ".wl[341].w[8]" 0.18749379366879368;
	setAttr ".wl[341].w[17]" 0.1874839717623103;
	setAttr -s 4 ".wl[342].w";
	setAttr ".wl[342].w[5]" 0.24296153118754663;
	setAttr ".wl[342].w[17]" 0.31760301489411441;
	setAttr ".wl[342].w[18]" 0.31605039502926563;
	setAttr ".wl[342].w[25]" 0.1233850588890734;
	setAttr -s 4 ".wl[343].w";
	setAttr ".wl[343].w[5]" 0.12255758035208879;
	setAttr ".wl[343].w[17]" 0.37764391862331803;
	setAttr ".wl[343].w[18]" 0.37764391862331781;
	setAttr ".wl[343].w[25]" 0.12215458240127547;
	setAttr -s 4 ".wl[344].w";
	setAttr ".wl[344].w[5]" 0.079921814740256697;
	setAttr ".wl[344].w[17]" 0.38146482540718335;
	setAttr ".wl[344].w[18]" 0.38146482540718335;
	setAttr ".wl[344].w[25]" 0.15714853444537663;
	setAttr -s 4 ".wl[345].w";
	setAttr ".wl[345].w[17]" 0.35981035312415405;
	setAttr ".wl[345].w[18]" 0.36565561661827711;
	setAttr ".wl[345].w[19]" 0.018706045946434366;
	setAttr ".wl[345].w[25]" 0.25582798431113446;
	setAttr -s 4 ".wl[346].w";
	setAttr ".wl[346].w[17]" 0.25604028390078437;
	setAttr ".wl[346].w[18]" 0.35852899495512375;
	setAttr ".wl[346].w[19]" 0.033937648266280068;
	setAttr ".wl[346].w[25]" 0.35149307287781195;
	setAttr -s 4 ".wl[347].w";
	setAttr ".wl[347].w[17]" 0.16338999834444748;
	setAttr ".wl[347].w[18]" 0.39435987690554558;
	setAttr ".wl[347].w[19]" 0.064011806216464157;
	setAttr ".wl[347].w[25]" 0.37823831853354284;
	setAttr -s 4 ".wl[348].w";
	setAttr ".wl[348].w[17]" 0.10069880700433607;
	setAttr ".wl[348].w[18]" 0.46944317678363795;
	setAttr ".wl[348].w[19]" 0.13410908644786151;
	setAttr ".wl[348].w[25]" 0.2957489297641645;
	setAttr -s 4 ".wl[349].w";
	setAttr ".wl[349].w[0]" 0.41298861663094427;
	setAttr ".wl[349].w[1]" 0.14508617306197905;
	setAttr ".wl[349].w[25]" 0.028936593676132324;
	setAttr ".wl[349].w[30]" 0.41298861663094427;
	setAttr -s 4 ".wl[350].w";
	setAttr ".wl[350].w[18]" 0.51129524729330889;
	setAttr ".wl[350].w[19]" 0.15437860892203289;
	setAttr ".wl[350].w[24]" 0.093835702540883567;
	setAttr ".wl[350].w[25]" 0.24049044124377472;
	setAttr -s 4 ".wl[351].w";
	setAttr ".wl[351].w[0]" 0.34587367033730104;
	setAttr ".wl[351].w[1]" 0.2575433251044697;
	setAttr ".wl[351].w[25]" 0.050709334220928305;
	setAttr ".wl[351].w[30]" 0.34587367033730104;
	setAttr -s 4 ".wl[352].w";
	setAttr ".wl[352].w[5]" 0.26980284259649095;
	setAttr ".wl[352].w[17]" 0.72984967597628525;
	setAttr ".wl[352].w[18]" 0.00025153361582655698;
	setAttr ".wl[352].w[25]" 9.5947811397370823e-005;
	setAttr -s 4 ".wl[353].w";
	setAttr ".wl[353].w[5]" 0.12740956660270131;
	setAttr ".wl[353].w[17]" 0.86196103261715706;
	setAttr ".wl[353].w[18]" 0.0084649762708496317;
	setAttr ".wl[353].w[25]" 0.0021644245092920129;
	setAttr -s 4 ".wl[354].w";
	setAttr ".wl[354].w[5]" 0.17665197259316062;
	setAttr ".wl[354].w[17]" 0.7320504016506808;
	setAttr ".wl[354].w[18]" 0.079274488926866671;
	setAttr ".wl[354].w[25]" 0.012023136829291957;
	setAttr -s 4 ".wl[355].w";
	setAttr ".wl[355].w[5]" 0.18148956078870354;
	setAttr ".wl[355].w[17]" 0.48555637222503656;
	setAttr ".wl[355].w[18]" 0.30038311036156523;
	setAttr ".wl[355].w[25]" 0.03257095662469469;
	setAttr -s 4 ".wl[356].w";
	setAttr ".wl[356].w[5]" 0.3221037390622784;
	setAttr ".wl[356].w[17]" 0.33458379266827742;
	setAttr ".wl[356].w[18]" 0.29533432542013521;
	setAttr ".wl[356].w[25]" 0.04797814284930893;
	setAttr -s 4 ".wl[357].w";
	setAttr ".wl[357].w[5]" 0.36166562661971147;
	setAttr ".wl[357].w[6]" 0.3617015357378438;
	setAttr ".wl[357].w[7]" 0.22340995101214553;
	setAttr ".wl[357].w[25]" 0.05322288663029924;
	setAttr -s 4 ".wl[358].w";
	setAttr ".wl[358].w[5]" 0.35850775872320045;
	setAttr ".wl[358].w[17]" 0.64024004340373364;
	setAttr ".wl[358].w[18]" 0.00092515162134303413;
	setAttr ".wl[358].w[25]" 0.00032704625172298002;
	setAttr -s 4 ".wl[359].w";
	setAttr ".wl[359].w[5]" 0.26999988786941098;
	setAttr ".wl[359].w[17]" 0.7176567823088511;
	setAttr ".wl[359].w[18]" 0.0096905432549824928;
	setAttr ".wl[359].w[25]" 0.0026527865667554393;
	setAttr -s 4 ".wl[360].w[5:8]"  0.40341305979332531 0.40986933458167341 
		0.14875415306174802 0.037963452563253244;
	setAttr -s 4 ".wl[361].w[5:8]"  0.37991870769627262 0.3979002076069445 
		0.1961221538283042 0.026058930868478589;
	setAttr -s 4 ".wl[362].w[5:8]"  0.34228677282928927 0.38114827006845919 
		0.25339989866420676 0.023165058438044818;
	setAttr -s 4 ".wl[363].w[5:8]"  0.33098071292715059 0.36996394417850387 
		0.27288096249126437 0.026174380403081201;
	setAttr -s 4 ".wl[364].w[5:8]"  0.052392933593607985 0.20818310953915126 
		0.7041920090203555 0.035231947846885374;
	setAttr -s 4 ".wl[365].w[5:8]"  0.071105156991801213 0.23353247345534539 
		0.63942849680646274 0.055933872746390702;
	setAttr -s 4 ".wl[366].w[5:8]"  0.049940062056844994 0.19811183159401369 
		0.71914706606033552 0.032801040288805768;
	setAttr -s 4 ".wl[367].w[5:8]"  0.067583858296576246 0.22306528358448988 
		0.65815192303365166 0.051198935085282331;
	setAttr -s 4 ".wl[368].w[5:8]"  0.051234295914143531 0.18857118836197417 
		0.73098481150667149 0.02920970421721086;
	setAttr -s 4 ".wl[369].w[5:8]"  0.052600600025270498 0.19524272564252393 
		0.71904009715040496 0.033116577181800652;
	setAttr -s 4 ".wl[370].w[5:8]"  0.050758413236894791 0.1956750270550211 
		0.72091852655293298 0.03264803315515119;
	setAttr -s 4 ".wl[371].w[5:8]"  0.044703104586987931 0.17788505532396551 
		0.75171698018663846 0.025694859902408034;
	setAttr -s 4 ".wl[372].w[5:8]"  0.060770962279631795 0.21010321356600642 
		0.68691264781822214 0.042213176336139718;
	setAttr -s 4 ".wl[373].w[5:8]"  0.067526550964599863 0.21448520967435353 
		0.67118774074987275 0.046800498611173857;
	setAttr -s 4 ".wl[374].w[5:8]"  0.013648003434660601 0.0966425756480805 
		0.88583916690423048 0.0038702540130284139;
	setAttr -s 4 ".wl[375].w[5:8]"  0.016821666782603134 0.11116242227115351 
		0.86678388413532992 0.0052320268109133693;
	setAttr -s 4 ".wl[376].w[5:8]"  0.017914265327521939 0.11640036816020527 
		0.85968330005112747 0.0060020664611453436;
	setAttr -s 4 ".wl[377].w[5:8]"  0.017224369417611102 0.11273690603547748 
		0.86368827297745809 0.0063504515694533959;
	setAttr -s 4 ".wl[378].w[5:8]"  0.014727139446762063 0.10154191004823639 
		0.87804125859946669 0.0056896919055349597;
	setAttr -s 4 ".wl[379].w[5:8]"  0.012481270311452526 0.085967121865603471 
		0.89674088753297498 0.0048107202899689543;
	setAttr -s 4 ".wl[380].w[5:8]"  0.011804705149753101 0.076695153074683303 
		0.90730239353350972 0.0041977482420538868;
	setAttr -s 4 ".wl[381].w[5:8]"  0.012918972933820634 0.084468558023630985 
		0.89853549741143368 0.0040769716311146878;
	setAttr -s 4 ".wl[382].w[5:8]"  0.013176180162278247 0.094466476054708828 
		0.88862273426647465 0.0037346095165383159;
	setAttr -s 4 ".wl[383].w[5:8]"  0.016237192096922891 0.10890735800644231 
		0.86983368197189115 0.0050217679247436557;
	setAttr -s 4 ".wl[384].w[5:8]"  0.017330842652553621 0.11422133913905914 
		0.86268381307675868 0.0057640051316285544;
	setAttr -s 4 ".wl[385].w[5:8]"  0.015980491453842397 0.10773916100181943 
		0.87051125730544199 0.0057690902388962241;
	setAttr -s 4 ".wl[386].w[5:8]"  0.013011088092764762 0.094527306960252466 
		0.88769841409496286 0.0047631908520199811;
	setAttr -s 4 ".wl[387].w[5:8]"  0.011516433900198363 0.082303321861271983 
		0.90195436778996341 0.0042258764485661477;
	setAttr -s 4 ".wl[388].w[5:8]"  0.011134123876079134 0.074807033712305876 
		0.91018556369207382 0.0038732787195411944;
	setAttr -s 4 ".wl[389].w[5:8]"  0.012427662288265466 0.083034905427302227 
		0.90062392505675659 0.0039135072276757395;
	setAttr -s 4 ".wl[390].w[5:8]"  0.016156497470388088 0.10916706586275794 
		0.87019913386025982 0.0044773028065939972;
	setAttr -s 4 ".wl[391].w[5:8]"  0.019774036534803651 0.12554131525641626 
		0.84857996235262878 0.0061046858561513255;
	setAttr -s 4 ".wl[392].w[5:8]"  0.020719266297531673 0.13009753161914919 
		0.84220242870591877 0.0069807733774002508;
	setAttr -s 4 ".wl[393].w[5:8]"  0.020208903884384677 0.12700879455246347 
		0.84514716994318695 0.0076351316199648302;
	setAttr -s 4 ".wl[394].w[5:8]"  0.016623096726099539 0.10956952023193597 
		0.86706958023641301 0.0067378028055514209;
	setAttr -s 4 ".wl[395].w[5:8]"  0.013751199657570167 0.090336611300169761 
		0.89028853750037462 0.0056236515418854908;
	setAttr -s 4 ".wl[396].w[5:8]"  0.010830845607100674 0.070659043101571492 
		0.91466044803788993 0.0038496632534379435;
	setAttr -s 4 ".wl[397].w[5:8]"  0.012371842802772487 0.081139473641310633 
		0.90271649703740897 0.003772186518507917;
	setAttr -s 4 ".wl[398].w[5:8]"  0.022826025280771607 0.13963551447254346 
		0.82877708845500786 0.0087613717916770906;
	setAttr -s 4 ".wl[399].w[5:8]"  0.021528871515354389 0.13022842660127765 
		0.83931483958224262 0.0089278623011252393;
	setAttr -s 4 ".wl[400].w[5:8]"  0.015960977276019205 0.10221547483768949 
		0.8750446046704996 0.0067789432157917169;
	setAttr -s 4 ".wl[401].w[5:8]"  0.026525309310986053 0.13289027073592233 
		0.82607974657620653 0.014504673376885118;
	setAttr -s 4 ".wl[402].w[5:8]"  0.026639970697049577 0.16267040805336974 
		0.80196436776272761 0.0087252534868530376;
	setAttr -s 4 ".wl[403].w[5:8]"  0.025359413112261978 0.15726263142582056 
		0.81003913299760466 0.0073388224643128504;
	setAttr -s 4 ".wl[404].w[5:8]"  0.021169654634715162 0.13823848326936691 
		0.83523837016694036 0.0053534919289776519;
	setAttr -s 4 ".wl[405].w[5:8]"  0.014185760497966219 0.088580963095616264 
		0.89323147551875126 0.0040018008876662233;
	setAttr -s 4 ".wl[406].w[5:8]"  0.010099686404215257 0.06659807226742584 
		0.91963673489806186 0.0036655064302970768;
	setAttr -s 4 ".wl[407].w[5:8]"  0.02789464453626625 0.14860650780932327 
		0.80910485549089384 0.014393992163516646;
	setAttr -s 4 ".wl[408].w[5:8]"  0.023855079318654181 0.1309534127568521 
		0.83337762307866681 0.011813884845826902;
	setAttr -s 4 ".wl[409].w[5:8]"  0.02033993660149 0.11550976561315612 
		0.85457578324499517 0.0095745145403587553;
	setAttr -s 4 ".wl[410].w[5:8]"  0.015593396776469934 0.096052412336913626 
		0.88165636654161383 0.0066978243450026061;
	setAttr -s 4 ".wl[411].w[5:8]"  0.1925503444532139 0.30943954803897455 
		0.43589205327746627 0.062118054230345353;
	setAttr -s 4 ".wl[412].w[5:8]"  0.15621992028996304 0.2899345279272369 
		0.4995247668690132 0.054320784913786835;
	setAttr -s 4 ".wl[413].w[5:8]"  0.20573858747469229 0.41345512909149185 
		0.36272739898782319 0.018078884445992694;
	setAttr -s 4 ".wl[414].w[5:8]"  0.14476186824047133 0.38135995705943998 
		0.45835187682079287 0.01552629787929587;
	setAttr -s 4 ".wl[415].w[5:8]"  0.18988475908101513 0.4145988162585249 
		0.38131526119102516 0.014201163469434739;
	setAttr -s 4 ".wl[416].w[5:8]"  0.14725366164457304 0.39820491768879995 
		0.44101651755761079 0.013524903109016103;
	setAttr -s 4 ".wl[417].w[5:8]"  0.14778043578286998 0.42227781956354649 
		0.41908643741184742 0.010855307241736067;
	setAttr -s 4 ".wl[418].w[5:8]"  0.1064147281927704 0.41739556920204379 
		0.46695836855860184 0.0092313340465839562;
	setAttr -s 4 ".wl[419].w[5:8]"  0.093918619987649138 0.44189949760676234 
		0.45489842806929326 0.0092834543362953197;
	setAttr -s 4 ".wl[420].w[5:8]"  0.082780407694969263 0.42759151422924729 
		0.48068722329349944 0.0089408547822839666;
	setAttr -s 4 ".wl[421].w[5:8]"  0.091033730040527519 0.41928022774254309 
		0.4765199068936371 0.013166135323292302;
	setAttr -s 4 ".wl[422].w[5:8]"  0.073463480800174022 0.38455252809735702 
		0.53062910022548981 0.011354890876979145;
	setAttr -s 4 ".wl[423].w[5:8]"  0.10446550305112391 0.27043061964109111 
		0.58960985317908676 0.035494024128698266;
	setAttr -s 4 ".wl[424].w[5:8]"  0.070454332709129167 0.30424908327188949 
		0.61607474607718427 0.0092218379417971386;
	setAttr -s 4 ".wl[425].w[5:8]"  0.075113260715593627 0.33940462087992312 
		0.57669161158248095 0.0087905068220023863;
	setAttr -s 4 ".wl[426].w[5:8]"  0.081612820360435157 0.41249145065027798 
		0.49620896131124986 0.0096867676780369519;
	setAttr -s 4 ".wl[427].w[5:8]"  0.076987333486723791 0.39956507569018596 
		0.51299455270854954 0.010453038114540725;
	setAttr -s 4 ".wl[428].w[5:8]"  0.055923995329682119 0.3288587616352488 
		0.60587983698539194 0.0093374060496772514;
	setAttr -s 4 ".wl[429].w[5:8]"  0.032071905138267201 0.22504629035004037 
		0.73687149576556821 0.0060103087461243695;
	setAttr -s 4 ".wl[430].w[5:8]"  0.027958880387081626 0.18867293550415667 
		0.77824460228611703 0.0051235818226447495;
	setAttr -s 4 ".wl[431].w[5:8]"  0.034968775445393799 0.22559694898003801 
		0.73401759589726479 0.0054166796773033859;
	setAttr -s 4 ".wl[432].w[5:8]"  0.074682318447432672 0.38367023731808736 
		0.53371084033470328 0.0079366038997766373;
	setAttr -s 4 ".wl[433].w[5:8]"  0.078928376410210874 0.41468919511327251 
		0.4983770212567798 0.0080054072197368251;
	setAttr -s 4 ".wl[434].w[5:8]"  0.085155311463839631 0.40681401718409071 
		0.49756615540830618 0.010464515943763566;
	setAttr -s 4 ".wl[435].w[5:8]"  0.079028537815664712 0.39397400641236241 
		0.51594297961500879 0.011054476156964132;
	setAttr -s 4 ".wl[436].w[5:8]"  0.056951523936342188 0.32204927386525495 
		0.61132366513324032 0.0096755370651625226;
	setAttr -s 4 ".wl[437].w[5:8]"  0.034772133515469546 0.23499628248482424 
		0.72381673893060139 0.0064148450691048284;
	setAttr -s 4 ".wl[438].w[5:8]"  0.030659663570906943 0.20488754934442052 
		0.75902863362086026 0.0054241534638123029;
	setAttr -s 4 ".wl[439].w[5:8]"  0.038485598281896301 0.24443945272694143 
		0.71121556692071275 0.005859382070449632;
	setAttr -s 4 ".wl[440].w[5:8]"  0.065977974188093244 0.35862946458938333 
		0.56744166270801855 0.0079508985145049817;
	setAttr -s 4 ".wl[441].w[5:8]"  0.076995864096635877 0.40502889694651889 
		0.50969947723852971 0.0082757617183155906;
	setAttr -s 4 ".wl[442].w[5:8]"  0.077708847604737619 0.41028414726355683 
		0.50187415770794552 0.010132847423760014;
	setAttr -s 4 ".wl[443].w[5:8]"  0.094142350615850134 0.43416717229050811 
		0.46039158295348759 0.011298894140154217;
	setAttr -s 4 ".wl[444].w[5:8]"  0.086481008968516987 0.42716278699490068 
		0.47820354185138852 0.0081526621851938444;
	setAttr -s 4 ".wl[445].w[5:8]"  0.10561788706808262 0.43982099394269725 
		0.44595360505824344 0.0086075139309767269;
	setAttr -s 4 ".wl[446].w[5:8]"  0.080034298204838858 0.38505338481241952 
		0.52432162642548275 0.010590690557258739;
	setAttr -s 4 ".wl[447].w[5:8]"  0.076267272245347711 0.36904240550033218 
		0.5432603010457544 0.011430021208565755;
	setAttr -s 4 ".wl[448].w[5:8]"  0.056760452068948711 0.31358347590842361 
		0.62017304398551254 0.00948302803711518;
	setAttr -s 4 ".wl[449].w[5:8]"  0.039528137203832824 0.25221331358162108 
		0.70130274129713344 0.0069558079174126463;
	setAttr -s 4 ".wl[450].w[5:8]"  0.054271454431006734 0.33111504499606087 
		0.60748505659708563 0.0071284439758468017;
	setAttr -s 4 ".wl[451].w[5:8]"  0.060111556480225266 0.3581721513293139 
		0.57369122714216658 0.0080250650482942242;
	setAttr -s 4 ".wl[452].w[5:8]"  0.05351314805537731 0.33802157337388278 
		0.60087858908472502 0.0075866894860147941;
	setAttr -s 4 ".wl[453].w[5:8]"  0.046764745885186899 0.30810088008398867 
		0.63803910530866892 0.0070952687221555516;
	setAttr -s 4 ".wl[454].w[5:8]"  0.037917650919496351 0.24804970813649205 
		0.70760692241413792 0.0064257185298737477;
	setAttr -s 4 ".wl[455].w[5:8]"  0.047487407528463192 0.28416799005333571 
		0.66113836662119796 0.0072062357970030686;
	setAttr -s 4 ".wl[456].w[5:8]"  0.032584337228027165 0.19982453125064811 
		0.76235281344400974 0.0052383180773149822;
	setAttr -s 4 ".wl[457].w[5:8]"  0.030035119311452498 0.16404361637460782 
		0.80010926850339137 0.0058119958105483189;
	setAttr -s 4 ".wl[458].w[5:8]"  0.11846947666309987 0.23613607758021424 
		0.5269249690935861 0.11846947666309987;
	setAttr -s 4 ".wl[459].w[5:8]"  0.11353854852745458 0.24090110033573703 
		0.54375081424014937 0.10180953689665893;
	setAttr -s 4 ".wl[460].w[5:8]"  0.025831306215594239 0.17572587226713415 
		0.79286755086930683 0.0055752706479648452;
	setAttr -s 4 ".wl[461].w[5:8]"  0.019318680186436215 0.12676597401432854 
		0.84959956036926809 0.0043157854299671668;
	setAttr -s 4 ".wl[462].w[5:8]"  0.032168031788675673 0.19898299760178742 
		0.76061385271281901 0.0082351178967179153;
	setAttr -s 4 ".wl[463].w[5:8]"  0.017406272216150449 0.10216989540030914 
		0.87606325630677651 0.0043605760767638346;
	setAttr -s 4 ".wl[464].w[5:8]"  0.011107584859010812 0.070010320234865142 
		0.91542442060729368 0.0034576742988304174;
	setAttr -s 4 ".wl[465].w[5:8]"  0.028575889054132973 0.13612155223356395 
		0.82160611997961031 0.013696438732692809;
	setAttr -s 4 ".wl[466].w[5:8]"  0.27607275569525719 0.22896336658238103 
		0.32390437215909845 0.17105950556326341;
	setAttr -s 4 ".wl[467].w";
	setAttr ".wl[467].w[5]" 0.31761259119877122;
	setAttr ".wl[467].w[6]" 0.18300067005214835;
	setAttr ".wl[467].w[8]" 0.18177414755030913;
	setAttr ".wl[467].w[17]" 0.31761259119877122;
	setAttr -s 4 ".wl[468].w[5:8]"  0.20962666149009826 0.21722747291794078 
		0.43497456428146924 0.13817130131049171;
	setAttr -s 4 ".wl[469].w[5:8]"  0.088913808378768264 0.23401269322308144 
		0.60799444321370333 0.069079055184446889;
	setAttr -s 4 ".wl[470].w[5:8]"  0.058318636425151449 0.19865125731280647 
		0.71254797362436062 0.030482132637681542;
	setAttr -s 4 ".wl[471].w[5:8]"  0.19688470721940157 0.28864716317079564 
		0.4157338795146755 0.09873425009512736;
	setAttr -s 4 ".wl[472].w[5:8]"  0.21847862219884293 0.24963914016014677 
		0.41792185872602583 0.11396037891498451;
	setAttr -s 4 ".wl[473].w[5:8]"  0.13413018074313088 0.25319909699927035 
		0.53084449312437088 0.081826229133227943;
	setAttr -s 4 ".wl[474].w[5:8]"  0.14397269668979898 0.33924156417910767 
		0.49226867023191734 0.024517068899176021;
	setAttr -s 4 ".wl[475].w[5:8]"  0.17871848360742704 0.38303677304985162 
		0.41728221466365534 0.020962528679066009;
	setAttr -s 4 ".wl[476].w[5:8]"  0.074234001041969769 0.26533800088994897 
		0.64601498892431042 0.014413009143770809;
	setAttr -s 4 ".wl[477].w[5:8]"  0.031400840421439813 0.15591732011050044 
		0.80512849185066293 0.0075533476173968691;
	setAttr -s 4 ".wl[478].w[5:8]"  0.011417485315666774 0.07030317008387145 
		0.91428602035786255 0.003993324242599133;
	setAttr -s 4 ".wl[479].w[5:8]"  0.016702573656698604 0.095023594797616143 
		0.88333175809596376 0.0049420734497214337;
	setAttr -s 4 ".wl[480].w[20:23]"  0.0060275807726887006 0.23839804416822155 
		0.58100537190833446 0.17456900315075524;
	setAttr -s 4 ".wl[481].w[20:23]"  0.0066548203019151072 0.34277356999808406 
		0.54091519041878566 0.10965641928121518;
	setAttr -s 4 ".wl[482].w[20:23]"  0.010556932767864936 0.4635733773540141 
		0.46496513322971827 0.060904556648402726;
	setAttr -s 4 ".wl[483].w[20:23]"  0.014707907132125482 0.47333111201674921 
		0.47282657440428949 0.039134406446835725;
	setAttr -s 4 ".wl[484].w[20:23]"  0.026817812502713086 0.47226091429210798 
		0.46461009658389291 0.0363111766212861;
	setAttr -s 4 ".wl[485].w[20:23]"  0.015077186689508727 0.47461943713033133 
		0.47461943713033156 0.035683939049828285;
	setAttr -s 4 ".wl[486].w[20:23]"  0.014496075654437271 0.45932129052792914 
		0.45932129052792903 0.066861343289704597;
	setAttr -s 4 ".wl[487].w[20:23]"  0.0071103318042320266 0.37111859489665661 
		0.52059046289663857 0.10118061040247282;
	setAttr -s 4 ".wl[488].w[20:23]"  0.0036121575659658583 0.14436508966175926 
		0.60699075223450505 0.24503200053776986;
	setAttr -s 4 ".wl[489].w[20:23]"  0.0043457576582693388 0.20486107067252562 
		0.58884233411401576 0.20195083755518922;
	setAttr -s 4 ".wl[490].w[20:23]"  0.0072047766539426643 0.36715872704220354 
		0.49310887710882645 0.13252761919502731;
	setAttr -s 4 ".wl[491].w[20:23]"  0.006638689119004026 0.46114078704210193 
		0.4641632292377918 0.068057294601102339;
	setAttr -s 4 ".wl[492].w[20:23]"  0.0049304764941201524 0.47431222916855453 
		0.47431222916855453 0.046445065168770887;
	setAttr -s 4 ".wl[493].w[20:23]"  0.0051510483185357604 0.4714123002669513 
		0.47143256850915383 0.052004082905359142;
	setAttr -s 4 ".wl[494].w[20:23]"  0.0068886051426798513 0.40383672119095854 
		0.48186982032005932 0.10740485334630227;
	setAttr -s 4 ".wl[495].w[20:23]"  0.0061513314066554544 0.24235159570975773 
		0.542546907259015 0.20895016562457186;
	setAttr -s 4 ".wl[496].w[20:23]"  0.0022562159546207433 0.062879571315940005 
		0.53116742763026459 0.40369678509917473;
	setAttr -s 4 ".wl[497].w[20:23]"  0.0021703923467593766 0.06689526303076998 
		0.52982924222583172 0.40110510239663888;
	setAttr -s 4 ".wl[498].w[20:23]"  0.002461733122570291 0.1007242442887978 
		0.52637327679837831 0.3704407457902536;
	setAttr -s 4 ".wl[499].w[20:23]"  0.0032813661515704224 0.16666138527925109 
		0.50236245370113042 0.32769479486804814;
	setAttr -s 4 ".wl[500].w[20:23]"  0.0021908741661393547 0.16603317715715207 
		0.54379561646449104 0.28798033221221753;
	setAttr -s 4 ".wl[501].w[20:23]"  0.002552798610491265 0.16851784578631929 
		0.53481831845860595 0.29411103714458359;
	setAttr -s 4 ".wl[502].w[20:23]"  0.0035754100455208469 0.1477709502385208 
		0.51203949355653999 0.33661414615941837;
	setAttr -s 4 ".wl[503].w[20:23]"  0.0039269615339743991 0.10520384609622528 
		0.5052113457380023 0.38565784663179803;
	setAttr -s 4 ".wl[504].w[20:23]"  0.0024334349283970649 0.036426351722548198 
		0.48057010667452738 0.48057010667452738;
	setAttr -s 4 ".wl[505].w[20:23]"  0.0017633312225274599 0.027944035162254053 
		0.48514631680760928 0.48514631680760928;
	setAttr -s 4 ".wl[506].w[20:23]"  0.00097899784497571278 0.017994414514980139 
		0.49051329382002212 0.49051329382002212;
	setAttr -s 4 ".wl[507].w[20:23]"  0.00072264987803946558 0.014771757637189744 
		0.49225279624238544 0.49225279624238544;
	setAttr -s 4 ".wl[508].w[20:23]"  0.00040970463585366328 0.01115083136581637 
		0.49421973199916497 0.49421973199916497;
	setAttr -s 4 ".wl[509].w[20:23]"  0.0006350390557204325 0.01414593720250887 
		0.49260951187088536 0.49260951187088536;
	setAttr -s 4 ".wl[510].w[20:23]"  0.0012854821449124578 0.02510642147255919 
		0.48680404819126416 0.48680404819126416;
	setAttr -s 4 ".wl[511].w[20:23]"  0.0028097920653985141 0.043365796108043808 
		0.47691220591327882 0.47691220591327882;
	setAttr -s 4 ".wl[512].w[20:23]"  0.0051655972236107801 0.043555270708809109 
		0.47563956603379004 0.47563956603379004;
	setAttr -s 4 ".wl[513].w[20:23]"  0.0041395949170398997 0.037133693415263479 
		0.47936335583384837 0.47936335583384837;
	setAttr -s 4 ".wl[514].w[20:23]"  0.0027749636104645379 0.028194329102278412 
		0.48451535364362852 0.48451535364362852;
	setAttr -s 4 ".wl[515].w[20:23]"  0.0019773077800145917 0.02299460447640906 
		0.48751404387178821 0.48751404387178821;
	setAttr -s 4 ".wl[516].w[20:23]"  0.0024229442723779897 0.027788447352515972 
		0.48489430418755308 0.48489430418755297;
	setAttr -s 4 ".wl[517].w[20:23]"  0.0031637283592383211 0.033125433648752915 
		0.48185541899600437 0.48185541899600437;
	setAttr -s 4 ".wl[518].w[20:23]"  0.0048127888463904665 0.043281531987892245 
		0.47595283958285867 0.47595283958285867;
	setAttr -s 4 ".wl[519].w";
	setAttr ".wl[519].w[29]" 0.00035390393494634244;
	setAttr ".wl[519].w[31]" 0.0023224498386052767;
	setAttr ".wl[519].w[32]" 0.49866182311322427;
	setAttr ".wl[519].w[33]" 0.49866182311322416;
	setAttr -s 4 ".wl[520].w";
	setAttr ".wl[520].w[29]" 0.00036837955658879779;
	setAttr ".wl[520].w[31]" 0.0024351484315148272;
	setAttr ".wl[520].w[32]" 0.49859823600594821;
	setAttr ".wl[520].w[33]" 0.49859823600594821;
	setAttr -s 4 ".wl[521].w";
	setAttr ".wl[521].w[29]" 0.00056026148605926103;
	setAttr ".wl[521].w[31]" 0.0034587736243462701;
	setAttr ".wl[521].w[32]" 0.49799048244479727;
	setAttr ".wl[521].w[33]" 0.49799048244479727;
	setAttr -s 4 ".wl[522].w";
	setAttr ".wl[522].w[29]" 0.0010977821565250772;
	setAttr ".wl[522].w[31]" 0.0063207570101416017;
	setAttr ".wl[522].w[32]" 0.49629073041666666;
	setAttr ".wl[522].w[33]" 0.49629073041666666;
	setAttr -s 4 ".wl[523].w";
	setAttr ".wl[523].w[29]" 0.017506531054726281;
	setAttr ".wl[523].w[31]" 0.46860271283885152;
	setAttr ".wl[523].w[32]" 0.46860271283885152;
	setAttr ".wl[523].w[33]" 0.045288043267570632;
	setAttr -s 4 ".wl[524].w[30:33]"  0.015577225223273074 0.47218887800847004 
		0.47218887800847004 0.040045018759786888;
	setAttr -s 4 ".wl[525].w[30:33]"  0.015097995819056886 0.47342979750376801 
		0.47342979750376801 0.038042409173407066;
	setAttr -s 4 ".wl[526].w[30:33]"  0.016102726397868607 0.47272089180232341 
		0.4727208918023233 0.038455489997484681;
	setAttr -s 4 ".wl[527].w[30:33]"  0.00075508944684987548 0.49645594082188571 
		0.49645594082188571 0.0063330289093787894;
	setAttr -s 4 ".wl[528].w[30:33]"  0.00073761646821786896 0.49622985139500436 
		0.49622985139500436 0.0068026807417734094;
	setAttr -s 4 ".wl[529].w[30:33]"  0.00092494379650242653 0.4950989047526112 
		0.4950989047526112 0.0088772466982751097;
	setAttr -s 4 ".wl[530].w";
	setAttr ".wl[530].w[29]" 0.0014042048329066358;
	setAttr ".wl[530].w[31]" 0.49106249093974236;
	setAttr ".wl[530].w[32]" 0.49106249093974236;
	setAttr ".wl[530].w[33]" 0.016470813287608622;
	setAttr -s 4 ".wl[531].w";
	setAttr ".wl[531].w[29]" 0.0016783220759086382;
	setAttr ".wl[531].w[31]" 0.49124623040041343;
	setAttr ".wl[531].w[32]" 0.49124623040041332;
	setAttr ".wl[531].w[33]" 0.01582921712326469;
	setAttr -s 4 ".wl[532].w";
	setAttr ".wl[532].w[29]" 0.0045386184952065931;
	setAttr ".wl[532].w[31]" 0.48256993405695509;
	setAttr ".wl[532].w[32]" 0.48256993405695509;
	setAttr ".wl[532].w[33]" 0.030321513390883258;
	setAttr -s 4 ".wl[533].w";
	setAttr ".wl[533].w[29]" 0.0032640989797590881;
	setAttr ".wl[533].w[31]" 0.48791931871808947;
	setAttr ".wl[533].w[32]" 0.48791931871808936;
	setAttr ".wl[533].w[33]" 0.020897263584062076;
	setAttr -s 4 ".wl[534].w";
	setAttr ".wl[534].w[29]" 0.0023811461164515687;
	setAttr ".wl[534].w[31]" 0.49074797498574768;
	setAttr ".wl[534].w[32]" 0.49074797498574757;
	setAttr ".wl[534].w[33]" 0.016122903912053226;
	setAttr -s 4 ".wl[535].w";
	setAttr ".wl[535].w[29]" 0.0028396835606467803;
	setAttr ".wl[535].w[31]" 0.48970824875954932;
	setAttr ".wl[535].w[32]" 0.48970824875954932;
	setAttr ".wl[535].w[33]" 0.017743818920254575;
	setAttr -s 4 ".wl[536].w[30:33]"  0.0050901326916160689 0.48794486082105581 
		0.48794486082105581 0.019020145666272296;
	setAttr -s 4 ".wl[537].w[30:33]"  0.0046185699299482021 0.48819837282421952 
		0.48819837282421941 0.01898468442161292;
	setAttr -s 4 ".wl[538].w[30:33]"  0.0049390232871801137 0.48709146307457135 
		0.48709146307457135 0.020878050563677163;
	setAttr -s 4 ".wl[539].w[30:33]"  0.0064505091671374732 0.4817916198722712 
		0.4817916198722712 0.029966251088320062;
	setAttr -s 4 ".wl[540].w";
	setAttr ".wl[540].w[29]" 0.0068676112265010896;
	setAttr ".wl[540].w[31]" 0.48286027499051737;
	setAttr ".wl[540].w[32]" 0.48286027499051726;
	setAttr ".wl[540].w[33]" 0.027411838792464335;
	setAttr -s 4 ".wl[541].w";
	setAttr ".wl[541].w[29]" 0.01450724328248992;
	setAttr ".wl[541].w[31]" 0.4747817505913875;
	setAttr ".wl[541].w[32]" 0.4747817505913875;
	setAttr ".wl[541].w[33]" 0.03592925553473509;
	setAttr -s 4 ".wl[542].w";
	setAttr ".wl[542].w[29]" 0.013072195398540149;
	setAttr ".wl[542].w[31]" 0.47811062183088732;
	setAttr ".wl[542].w[32]" 0.47811062183088721;
	setAttr ".wl[542].w[33]" 0.030706560939685372;
	setAttr -s 4 ".wl[543].w";
	setAttr ".wl[543].w[29]" 0.011397333667746852;
	setAttr ".wl[543].w[31]" 0.48041301704415607;
	setAttr ".wl[543].w[32]" 0.48041301704415595;
	setAttr ".wl[543].w[33]" 0.027776632243941123;
	setAttr -s 4 ".wl[544].w";
	setAttr ".wl[544].w[29]" 0.012158330806275097;
	setAttr ".wl[544].w[31]" 0.47979833738081462;
	setAttr ".wl[544].w[32]" 0.4797983373808144;
	setAttr ".wl[544].w[33]" 0.028244994432095976;
	setAttr -s 4 ".wl[545].w[30:33]"  0.00066127222871112563 0.51011315473600516 
		0.48621489967796166 0.0030106733573220914;
	setAttr -s 4 ".wl[546].w[30:33]"  0.004473838129040327 0.49189790092211133 
		0.49189790092211133 0.01173036002673699;
	setAttr -s 4 ".wl[547].w[30:33]"  0.020687596995409275 0.47357184785176104 
		0.47357184785176104 0.032168707301068689;
	setAttr -s 4 ".wl[548].w[30:33]"  0.010568419293441449 0.48304168722984453 
		0.48304168722984453 0.023348206246869466;
	setAttr -s 4 ".wl[549].w[30:33]"  0.0019814433618315004 0.50437994796143326 
		0.48453515114746176 0.0091034575292734607;
	setAttr -s 4 ".wl[550].w[30:33]"  0.00035760786764229934 0.0034754747469314617 
		0.49808345869271314 0.49808345869271314;
	setAttr -s 4 ".wl[551].w";
	setAttr ".wl[551].w[29]" 0.00041007205942681664;
	setAttr ".wl[551].w[31]" 0.0041289145657456847;
	setAttr ".wl[551].w[32]" 0.49773050668741375;
	setAttr ".wl[551].w[33]" 0.49773050668741375;
	setAttr -s 4 ".wl[552].w";
	setAttr ".wl[552].w[29]" 0.00062557673701301288;
	setAttr ".wl[552].w[31]" 0.0059277562561624777;
	setAttr ".wl[552].w[32]" 0.4967233335034123;
	setAttr ".wl[552].w[33]" 0.4967233335034123;
	setAttr -s 4 ".wl[553].w";
	setAttr ".wl[553].w[29]" 0.0010486504129024114;
	setAttr ".wl[553].w[31]" 0.0096171017805899307;
	setAttr ".wl[553].w[32]" 0.49466712390325385;
	setAttr ".wl[553].w[33]" 0.49466712390325385;
	setAttr -s 4 ".wl[554].w";
	setAttr ".wl[554].w[29]" 0.00062657118756200719;
	setAttr ".wl[554].w[31]" 0.0026061625907412718;
	setAttr ".wl[554].w[32]" 0.49838363311084838;
	setAttr ".wl[554].w[33]" 0.49838363311084838;
	setAttr -s 4 ".wl[555].w";
	setAttr ".wl[555].w[29]" 0.00068494225934058223;
	setAttr ".wl[555].w[31]" 0.0028605562040383654;
	setAttr ".wl[555].w[32]" 0.49822725076831054;
	setAttr ".wl[555].w[33]" 0.49822725076831054;
	setAttr -s 4 ".wl[556].w";
	setAttr ".wl[556].w[29]" 0.0010247730013251766;
	setAttr ".wl[556].w[31]" 0.0039338278811260645;
	setAttr ".wl[556].w[32]" 0.49752069955877443;
	setAttr ".wl[556].w[33]" 0.49752069955877432;
	setAttr -s 4 ".wl[557].w";
	setAttr ".wl[557].w[29]" 0.0016730320067340934;
	setAttr ".wl[557].w[31]" 0.0062207957904595653;
	setAttr ".wl[557].w[32]" 0.49605308610140314;
	setAttr ".wl[557].w[33]" 0.49605308610140314;
	setAttr -s 4 ".wl[558].w[30:33]"  0.0012904595199154851 0.5046545760774096 
		0.46895947374688507 0.025095490655789851;
	setAttr -s 4 ".wl[559].w[30:33]"  0.0011241658477403771 0.558265778164725 
		0.42708798079511595 0.01352207519241877;
	setAttr -s 4 ".wl[560].w";
	setAttr ".wl[560].w[29]" 0.0023017861903667121;
	setAttr ".wl[560].w[31]" 0.44623369022537457;
	setAttr ".wl[560].w[32]" 0.51837904576255356;
	setAttr ".wl[560].w[33]" 0.033085477821705067;
	setAttr -s 4 ".wl[561].w[30:33]"  0.00083686070565167775 0.47354122999773152 
		0.50873956898123973 0.01688234031537704;
	setAttr -s 4 ".wl[562].w";
	setAttr ".wl[562].w[29]" 0.0077120135079237918;
	setAttr ".wl[562].w[31]" 0.23698214049667071;
	setAttr ".wl[562].w[32]" 0.63190836831316222;
	setAttr ".wl[562].w[33]" 0.12339747768224339;
	setAttr -s 4 ".wl[563].w";
	setAttr ".wl[563].w[29]" 0.00089359475169060152;
	setAttr ".wl[563].w[31]" 0.0038758187542826598;
	setAttr ".wl[563].w[32]" 0.49761529324701337;
	setAttr ".wl[563].w[33]" 0.49761529324701337;
	setAttr -s 4 ".wl[564].w[30:33]"  0.0010646167533786355 0.016753738408027234 
		0.49109082241929708 0.49109082241929708;
	setAttr -s 4 ".wl[565].w[30:33]"  0.00077120925250049005 0.4650276765252952 
		0.51660742651146918 0.017593687710735193;
	setAttr -s 4 ".wl[566].w[30:33]"  0.00099927028599532315 0.01700579649658775 
		0.49099746660870847 0.49099746660870847;
	setAttr -s 4 ".wl[567].w";
	setAttr ".wl[567].w[29]" 0.00098936968321326323;
	setAttr ".wl[567].w[31]" 0.0042599314167407008;
	setAttr ".wl[567].w[32]" 0.49737534945002299;
	setAttr ".wl[567].w[33]" 0.49737534945002299;
	setAttr -s 4 ".wl[568].w";
	setAttr ".wl[568].w[29]" 0.0069426101911698856;
	setAttr ".wl[568].w[31]" 0.24132865709183227;
	setAttr ".wl[568].w[32]" 0.63511348552333158;
	setAttr ".wl[568].w[33]" 0.11661524719366638;
	setAttr -s 4 ".wl[569].w";
	setAttr ".wl[569].w[29]" 0.0013729412891756525;
	setAttr ".wl[569].w[31]" 0.0054149165682621419;
	setAttr ".wl[569].w[32]" 0.49660607107128119;
	setAttr ".wl[569].w[33]" 0.49660607107128107;
	setAttr -s 4 ".wl[570].w";
	setAttr ".wl[570].w[29]" 0.0084599886489425211;
	setAttr ".wl[570].w[31]" 0.24204660126244018;
	setAttr ".wl[570].w[32]" 0.61705092592209643;
	setAttr ".wl[570].w[33]" 0.13244248416652094;
	setAttr -s 4 ".wl[571].w[30:33]"  0.00088376403012393827 0.46672454106221706 
		0.51196746434870855 0.020424230558950502;
	setAttr -s 4 ".wl[572].w";
	setAttr ".wl[572].w[23]" 0.0013479154353281083;
	setAttr ".wl[572].w[31]" 0.022654957007269379;
	setAttr ".wl[572].w[32]" 0.48799856377870132;
	setAttr ".wl[572].w[33]" 0.48799856377870121;
	setAttr -s 4 ".wl[573].w[30:33]"  0.020403161174969466 0.4818358712214833 
		0.4732012941241775 0.024559673479369791;
	setAttr -s 4 ".wl[574].w[30:33]"  0.019347139807300188 0.47411073960807909 
		0.47411073960807909 0.032431380976541642;
	setAttr -s 4 ".wl[575].w";
	setAttr ".wl[575].w[29]" 0.018037000311383521;
	setAttr ".wl[575].w[31]" 0.47218291905133447;
	setAttr ".wl[575].w[32]" 0.47218291905133425;
	setAttr ".wl[575].w[33]" 0.037597161585947891;
	setAttr -s 4 ".wl[576].w";
	setAttr ".wl[576].w[29]" 0.017045575333344207;
	setAttr ".wl[576].w[31]" 0.47296188803396777;
	setAttr ".wl[576].w[32]" 0.47296188803396777;
	setAttr ".wl[576].w[33]" 0.037030648598720253;
	setAttr -s 4 ".wl[577].w";
	setAttr ".wl[577].w[29]" 0.017646868998211104;
	setAttr ".wl[577].w[31]" 0.47208787960650839;
	setAttr ".wl[577].w[32]" 0.47208787960650839;
	setAttr ".wl[577].w[33]" 0.038177371788772126;
	setAttr -s 4 ".wl[578].w[30:33]"  0.012705388230955494 0.48173902101786936 
		0.48173902101786936 0.023816569733305766;
	setAttr -s 4 ".wl[579].w[30:33]"  0.012562514849110553 0.47758071015039016 
		0.47758071015039005 0.032276064850109233;
	setAttr -s 4 ".wl[580].w[30:33]"  0.012038137159530272 0.47739549166479078 
		0.47739549166479067 0.033170879510888304;
	setAttr -s 4 ".wl[581].w[30:33]"  0.01233424190595131 0.47651812741353916 
		0.47651812741353916 0.034629503266970403;
	setAttr -s 4 ".wl[582].w[30:33]"  0.021710617747744475 0.47887987248234953 
		0.47220944194752673 0.027200067822379069;
	setAttr -s 4 ".wl[583].w[30:33]"  0.012632624960817697 0.48633029403874206 
		0.4823165979466309 0.018720483053809394;
	setAttr -s 4 ".wl[584].w[30:33]"  0.00020689989271839736 0.0093550088916650419 
		0.90114747135058526 0.08929061986503127;
	setAttr -s 4 ".wl[585].w[30:33]"  0.0012640120523825327 0.065740440350113519 
		0.77116011820779828 0.16183542938970566;
	setAttr -s 4 ".wl[586].w";
	setAttr ".wl[586].w[29]" 0.0017913052110655413;
	setAttr ".wl[586].w[31]" 0.042730624423926639;
	setAttr ".wl[586].w[32]" 0.71595126354719296;
	setAttr ".wl[586].w[33]" 0.23952680681781494;
	setAttr -s 4 ".wl[587].w";
	setAttr ".wl[587].w[29]" 0.0056704899099682725;
	setAttr ".wl[587].w[31]" 0.062946385758685386;
	setAttr ".wl[587].w[32]" 0.61783743671106561;
	setAttr ".wl[587].w[33]" 0.31354568762028073;
	setAttr -s 4 ".wl[588].w[30:33]"  0.0027124159011254565 0.18552983754423569 
		0.61362711603346209 0.19813063052117677;
	setAttr -s 4 ".wl[589].w[30:33]"  0.0024297236110021512 0.17076024769009679 
		0.61782315904753315 0.20898686965136787;
	setAttr -s 4 ".wl[590].w";
	setAttr ".wl[590].w[29]" 0.0051896975943362166;
	setAttr ".wl[590].w[31]" 0.061016408662668394;
	setAttr ".wl[590].w[32]" 0.62105032228514212;
	setAttr ".wl[590].w[33]" 0.31274357145785331;
	setAttr -s 4 ".wl[591].w";
	setAttr ".wl[591].w[29]" 0.0063838654715978951;
	setAttr ".wl[591].w[31]" 0.065364832420874264;
	setAttr ".wl[591].w[32]" 0.59623742446746031;
	setAttr ".wl[591].w[33]" 0.33201387764006757;
	setAttr -s 4 ".wl[592].w[30:33]"  0.0026865150512627493 0.18197176910184393 
		0.59700582222675458 0.21833589362013875;
	setAttr -s 4 ".wl[593].w";
	setAttr ".wl[593].w[17]" 0.20165737513343188;
	setAttr ".wl[593].w[18]" 0.40210230452568624;
	setAttr ".wl[593].w[19]" 0.074614042725964808;
	setAttr ".wl[593].w[25]" 0.32162627761491702;
	setAttr -s 4 ".wl[594].w";
	setAttr ".wl[594].w[23]" 0.0015453574058693388;
	setAttr ".wl[594].w[31]" 0.027685198811904902;
	setAttr ".wl[594].w[32]" 0.48538472189111287;
	setAttr ".wl[594].w[33]" 0.48538472189111287;
	setAttr -s 4 ".wl[595].w[30:33]"  0.0028117696634847871 0.20592851008663687 
		0.57301238614461592 0.2182473341052624;
	setAttr -s 4 ".wl[596].w[30:33]"  0.001455168504059961 0.4491023180742213 
		0.50875460878445822 0.040687904637260512;
	setAttr -s 4 ".wl[597].w[30:33]"  0.012199090860171567 0.47393443027577353 
		0.47393443027577353 0.039932048588281366;
	setAttr -s 4 ".wl[598].w";
	setAttr ".wl[598].w[29]" 0.019822400401592874;
	setAttr ".wl[598].w[31]" 0.46822089716069742;
	setAttr ".wl[598].w[32]" 0.46822089716069742;
	setAttr ".wl[598].w[33]" 0.043735805277012235;
	setAttr -s 4 ".wl[599].w";
	setAttr ".wl[599].w[29]" 0.010545428452191568;
	setAttr ".wl[599].w[31]" 0.24143585724801478;
	setAttr ".wl[599].w[32]" 0.58152056567255117;
	setAttr ".wl[599].w[33]" 0.16649814862724252;
	setAttr -s 4 ".wl[600].w";
	setAttr ".wl[600].w[29]" 0.0072335802545279698;
	setAttr ".wl[600].w[31]" 0.077344849111929334;
	setAttr ".wl[600].w[32]" 0.56959666113999319;
	setAttr ".wl[600].w[33]" 0.34582490949354955;
	setAttr -s 4 ".wl[601].w";
	setAttr ".wl[601].w[29]" 0.002099167069614551;
	setAttr ".wl[601].w[31]" 0.0085773510118675872;
	setAttr ".wl[601].w[32]" 0.49466174095925897;
	setAttr ".wl[601].w[33]" 0.49466174095925897;
	setAttr -s 4 ".wl[602].w";
	setAttr ".wl[602].w[29]" 0.0016822735485965735;
	setAttr ".wl[602].w[31]" 0.010321138371798834;
	setAttr ".wl[602].w[32]" 0.4999851497157583;
	setAttr ".wl[602].w[33]" 0.48801143836384625;
	setAttr -s 4 ".wl[603].w";
	setAttr ".wl[603].w[29]" 0.0020501666771899477;
	setAttr ".wl[603].w[31]" 0.011342961420680097;
	setAttr ".wl[603].w[32]" 0.49527588451480753;
	setAttr ".wl[603].w[33]" 0.49133098738732239;
	setAttr -s 4 ".wl[604].w[30:33]"  1.3417383985440833e-005 0.00018583586949323552 
		0.49990037337326071 0.49990037337326071;
	setAttr -s 4 ".wl[605].w[30:33]"  0.00042745998698633786 0.0073525126473732126 
		0.51082026056080021 0.4813997668048402;
	setAttr -s 4 ".wl[606].w";
	setAttr ".wl[606].w[29]" 0.00014098328965325075;
	setAttr ".wl[606].w[31]" 0.0012054078172618662;
	setAttr ".wl[606].w[32]" 0.49932680444654243;
	setAttr ".wl[606].w[33]" 0.49932680444654243;
	setAttr -s 4 ".wl[607].w";
	setAttr ".wl[607].w[29]" 0.0015661478061238954;
	setAttr ".wl[607].w[31]" 0.0094333972599782816;
	setAttr ".wl[607].w[32]" 0.49879279571595525;
	setAttr ".wl[607].w[33]" 0.49020765921794257;
	setAttr -s 4 ".wl[608].w";
	setAttr ".wl[608].w[23]" 0.0024531311552023699;
	setAttr ".wl[608].w[31]" 0.063783093771009089;
	setAttr ".wl[608].w[32]" 0.52888081165063716;
	setAttr ".wl[608].w[33]" 0.40488296342315128;
	setAttr -s 4 ".wl[609].w";
	setAttr ".wl[609].w[23]" 0.0020795226359738017;
	setAttr ".wl[609].w[31]" 0.05719237557577727;
	setAttr ".wl[609].w[32]" 0.52788313128424369;
	setAttr ".wl[609].w[33]" 0.41284497050400526;
	setAttr -s 4 ".wl[610].w";
	setAttr ".wl[610].w[23]" 0.0022833004392033189;
	setAttr ".wl[610].w[31]" 0.064716617682739216;
	setAttr ".wl[610].w[32]" 0.5255994997510598;
	setAttr ".wl[610].w[33]" 0.4074005821269977;
	setAttr -s 4 ".wl[611].w";
	setAttr ".wl[611].w[23]" 0.0023017297882881554;
	setAttr ".wl[611].w[31]" 0.070870758990222049;
	setAttr ".wl[611].w[32]" 0.50962199034290478;
	setAttr ".wl[611].w[33]" 0.41720552087858492;
	setAttr -s 4 ".wl[612].w";
	setAttr ".wl[612].w[29]" 0.003060434746871672;
	setAttr ".wl[612].w[31]" 0.016906761379962866;
	setAttr ".wl[612].w[32]" 0.49038164248449906;
	setAttr ".wl[612].w[33]" 0.48965116138866643;
	setAttr -s 4 ".wl[613].w";
	setAttr ".wl[613].w[29]" 0.00035835047739116475;
	setAttr ".wl[613].w[31]" 0.0039211870535191175;
	setAttr ".wl[613].w[32]" 0.49786023123454487;
	setAttr ".wl[613].w[33]" 0.49786023123454487;
	setAttr -s 4 ".wl[614].w";
	setAttr ".wl[614].w[29]" 0.00044110385003724825;
	setAttr ".wl[614].w[31]" 0.0094463347430661614;
	setAttr ".wl[614].w[32]" 0.53593991250612083;
	setAttr ".wl[614].w[33]" 0.45417264890077574;
	setAttr -s 4 ".wl[615].w";
	setAttr ".wl[615].w[29]" 0.00095499876474245619;
	setAttr ".wl[615].w[31]" 0.056170813885411987;
	setAttr ".wl[615].w[32]" 0.74066669332918533;
	setAttr ".wl[615].w[33]" 0.20220749402066021;
	setAttr -s 4 ".wl[616].w";
	setAttr ".wl[616].w[29]" 0.0013318318180014549;
	setAttr ".wl[616].w[31]" 0.31535911821341384;
	setAttr ".wl[616].w[32]" 0.63595377009043008;
	setAttr ".wl[616].w[33]" 0.047355279878154598;
	setAttr -s 4 ".wl[617].w[20:23]"  0.028287962257772515 0.18271903964322914 
		0.40663626105109385 0.38235673704790452;
	setAttr -s 4 ".wl[618].w[20:23]"  0.16909673233374067 0.30783158302412827 
		0.281020292987464 0.24205139165466696;
	setAttr -s 4 ".wl[619].w[20:23]"  0.34077173392767118 0.34476039409652137 
		0.17416064013935553 0.14030723183645202;
	setAttr -s 4 ".wl[620].w[19:22]"  0.33493976271973697 0.33579354328478667 
		0.24234915965297696 0.086917534342499325;
	setAttr -s 4 ".wl[621].w";
	setAttr ".wl[621].w[19]" 0.46676956783105683;
	setAttr ".wl[621].w[20]" 0.46676956783105661;
	setAttr ".wl[621].w[23]" 0.060745212142171261;
	setAttr ".wl[621].w[24]" 0.0057156521957153986;
	setAttr -s 4 ".wl[622].w";
	setAttr ".wl[622].w[19]" 0.45195647177926196;
	setAttr ".wl[622].w[20]" 0.45195647177926196;
	setAttr ".wl[622].w[23]" 0.091073643310205427;
	setAttr ".wl[622].w[24]" 0.0050134131312706701;
	setAttr -s 4 ".wl[623].w[19:22]"  0.22771781116865319 0.32414736597205135 
		0.31861494441243676 0.12951987844685875;
	setAttr -s 4 ".wl[624].w[20:23]"  0.14530410995810034 0.30271461776802344 
		0.29311726283886713 0.2588640094350092;
	setAttr -s 4 ".wl[625].w[20:23]"  0.024355386306475876 0.12467968567340464 
		0.42548246401005974 0.42548246401005974;
	setAttr -s 4 ".wl[626].w[20:23]"  0.11832912107597272 0.22591379568926973 
		0.32788009163111714 0.32787699160364048;
	setAttr -s 4 ".wl[627].w[20:23]"  0.25965807979982219 0.2850853850321281 
		0.23033309538220534 0.22492343978584436;
	setAttr -s 4 ".wl[628].w[19:22]"  0.28797370253654264 0.29897162656038756 
		0.26629678969164394 0.14675788121142588;
	setAttr -s 4 ".wl[629].w";
	setAttr ".wl[629].w[19]" 0.43080912354163697;
	setAttr ".wl[629].w[20]" 0.4308091235416372;
	setAttr ".wl[629].w[23]" 0.13030616838418527;
	setAttr ".wl[629].w[24]" 0.0080755845325404304;
	setAttr -s 4 ".wl[630].w[19:22]"  0.29000226238128463 0.30091524442643924 
		0.26595666664803469 0.1431258265442415;
	setAttr -s 4 ".wl[631].w[20:23]"  0.2731095953397718 0.29642677427613801 
		0.21932124269265119 0.211142387691439;
	setAttr -s 4 ".wl[632].w[20:23]"  0.1186517911293766 0.2290911083030733 
		0.32633126229832093 0.32592583826922922;
	setAttr -s 4 ".wl[633].w[20:23]"  0.026284164862921271 0.10610980109012681 
		0.43380301702347601 0.43380301702347601;
	setAttr -s 4 ".wl[634].w[20:23]"  0.089928104376633844 0.18325905946200202 
		0.36340641808068225 0.36340641808068203;
	setAttr -s 4 ".wl[635].w[20:23]"  0.20424548918489235 0.2408864832513114 
		0.2774340137818983 0.27743401378189808;
	setAttr -s 4 ".wl[636].w[19:22]"  0.25412349698864745 0.27465174623292637 
		0.26551581446175992 0.20570894231666625;
	setAttr -s 4 ".wl[637].w[19:22]"  0.28282212319956879 0.28513605326048069 
		0.2536148487043271 0.17842697483562348;
	setAttr -s 4 ".wl[638].w[19:22]"  0.23972897978101834 0.26818173804845985 
		0.26778186712540836 0.2243074150451134;
	setAttr -s 4 ".wl[639].w[20:23]"  0.19928135943969369 0.24015676811108091 
		0.2802809362246127 0.2802809362246127;
	setAttr -s 4 ".wl[640].w[20:23]"  0.090915423214989355 0.1812765495283698 
		0.36390401362832042 0.36390401362832042;
	setAttr -s 4 ".wl[641].w[20:23]"  0.042118150229840036 0.12612266473732175 
		0.41587959251641915 0.41587959251641915;
	setAttr -s 4 ".wl[642].w[20:23]"  0.089681822293323138 0.17324486221141308 
		0.36853665774763189 0.36853665774763189;
	setAttr -s 4 ".wl[643].w[20:23]"  0.17646155624290427 0.21761610740179135 
		0.30296116817765217 0.30296116817765217;
	setAttr -s 4 ".wl[644].w[20:23]"  0.24958621394642763 0.25361033450854054 
		0.24840172577251587 0.24840172577251587;
	setAttr -s 4 ".wl[645].w[20:23]"  0.24877069325772028 0.24851245775728992 
		0.2513584244924949 0.2513584244924949;
	setAttr -s 4 ".wl[646].w[20:23]"  0.21380640275343285 0.23397389279177461 
		0.27610985222739626 0.27610985222739626;
	setAttr -s 4 ".wl[647].w[20:23]"  0.15101795858424727 0.20485316639340678 
		0.32206443751117297 0.32206443751117297;
	setAttr -s 4 ".wl[648].w[20:23]"  0.07781059349601116 0.16493282975949647 
		0.37862828837224627 0.37862828837224616;
	setAttr -s 4 ".wl[649].w[20:23]"  0.076226872141446522 0.16005523762442955 
		0.38185894511706198 0.38185894511706198;
	setAttr -s 4 ".wl[650].w[20:23]"  0.095615093435288165 0.17376500374965168 
		0.36530995140753009 0.36530995140753009;
	setAttr -s 4 ".wl[651].w[20:23]"  0.14168902262763794 0.19514109194961901 
		0.33158494271137151 0.33158494271137151;
	setAttr -s 4 ".wl[652].w[20:23]"  0.192849279317794 0.2186430182737189 
		0.29425385120424369 0.29425385120424347;
	setAttr -s 4 ".wl[653].w[20:23]"  0.1874268144031889 0.21459393268399529 
		0.29898962645640775 0.29898962645640798;
	setAttr -s 4 ".wl[654].w[20:23]"  0.17550928660045179 0.21123369761713401 
		0.3066285078912071 0.3066285078912071;
	setAttr -s 4 ".wl[655].w[20:23]"  0.1284138737027605 0.19113451186591632 
		0.34022580721566159 0.34022580721566159;
	setAttr -s 4 ".wl[656].w[20:23]"  0.085572285530795683 0.16867946804645351 
		0.37287412321137547 0.37287412321137536;
	setAttr -s 4 ".wl[657].w[20:23]"  0.022704655154917815 0.35218420192540656 
		0.44412262249762008 0.18098852042205554;
	setAttr -s 4 ".wl[658].w[20:23]"  0.42163044069110117 0.46100878539022178 
		0.092086575186655098 0.025274198732021934;
	setAttr -s 4 ".wl[659].w[19:22]"  0.31866091317550116 0.39037877629522966 
		0.26255235677023175 0.02840795375903752;
	setAttr -s 4 ".wl[660].w";
	setAttr ".wl[660].w[19]" 0.49561984784403146;
	setAttr ".wl[660].w[20]" 0.49561984784403146;
	setAttr ".wl[660].w[23]" 0.0076540472588694092;
	setAttr ".wl[660].w[24]" 0.0011062570530677275;
	setAttr -s 4 ".wl[661].w";
	setAttr ".wl[661].w[19]" 0.49552782686875452;
	setAttr ".wl[661].w[20]" 0.49552782686875452;
	setAttr ".wl[661].w[23]" 0.0070648619764329358;
	setAttr ".wl[661].w[24]" 0.0018794842860580879;
	setAttr -s 4 ".wl[662].w";
	setAttr ".wl[662].w[19]" 0.49594513877468488;
	setAttr ".wl[662].w[20]" 0.49594513877468488;
	setAttr ".wl[662].w[23]" 0.0064004025184277334;
	setAttr ".wl[662].w[24]" 0.0017093199322024768;
	setAttr -s 4 ".wl[663].w[19:22]"  0.32798787015641206 0.43832592395116665 
		0.21897295031906336 0.014713255573357847;
	setAttr -s 4 ".wl[664].w[20:23]"  0.060299761074907816 0.5240892418343468 
		0.37404753063158153 0.041563466459163763;
	setAttr -s 4 ".wl[665].w[20:23]"  0.080731711954589419 0.50317572284773593 
		0.37500121583945645 0.041091349358218232;
	setAttr -s 4 ".wl[666].w[20:23]"  0.18154008032509181 0.5168798415913326 
		0.26796799603529436 0.033612082048281235;
	setAttr -s 4 ".wl[667].w[20:23]"  0.19143079256233902 0.54616095561462563 
		0.22469480399135733 0.037713447831677953;
	setAttr -s 4 ".wl[668].w[20:23]"  0.23618799433015636 0.49999588806638956 
		0.22792643487477254 0.035889682728681684;
	setAttr -s 4 ".wl[669].w[20:23]"  0.052564267176686823 0.50872670265067466 
		0.37664920228502607 0.06205982788761253;
	setAttr -s 4 ".wl[670].w[20:23]"  0.019449411630342747 0.38822855067859874 
		0.4495728324992232 0.14274920519183534;
	setAttr -s 4 ".wl[671].w[20:23]"  0.012374104978722929 0.45203157147846668 
		0.45104562410968302 0.084548699433127344;
	setAttr -s 4 ".wl[672].w[20:23]"  0.15545250267818403 0.56430372290271746 
		0.22030121851323711 0.059942555905861443;
	setAttr -s 4 ".wl[673].w[20:23]"  0.15562778759653834 0.6228415286268455 
		0.17468724705735092 0.046843436719265247;
	setAttr -s 4 ".wl[674].w[20:23]"  0.42216770950792021 0.47575620515274075 
		0.074735210641921984 0.027340874697417035;
	setAttr -s 4 ".wl[675].w[20:23]"  0.35569021325140843 0.50277141252723745 
		0.10751427700294722 0.034024097218406782;
	setAttr -s 4 ".wl[676].w[20:23]"  0.22300747195384582 0.54274143071269942 
		0.18985862672815254 0.044392470605302256;
	setAttr -s 4 ".wl[677].w[20:23]"  0.43749951667450626 0.47568256177474239 
		0.067214179523779144 0.019603742026972251;
	setAttr -s 4 ".wl[678].w[20:23]"  0.15076352250705427 0.54987751693520581 
		0.2652238014485942 0.034135159109145607;
	setAttr -s 4 ".wl[679].w[20:23]"  0.4381633297339757 0.48785250967824978 
		0.061255932902143546 0.012728227685630998;
	setAttr -s 4 ".wl[680].w[19:22]"  0.21935374973545357 0.40606659421099467 
		0.35421245950028268 0.02036719655326906;
	setAttr -s 4 ".wl[681].w[19:22]"  0.25566501272278258 0.34758444169156844 
		0.31785512543292699 0.078895420152722093;
	setAttr -s 4 ".wl[682].w[19:22]"  0.31537120804160634 0.37635201655791733 
		0.26530059865987171 0.042976176740604492;
	setAttr -s 4 ".wl[683].w";
	setAttr ".wl[683].w[19]" 0.48414643531288731;
	setAttr ".wl[683].w[20]" 0.48414643531288754;
	setAttr ".wl[683].w[23]" 0.027554853422625647;
	setAttr ".wl[683].w[24]" 0.0041522759515994351;
	setAttr -s 4 ".wl[684].w[20:23]"  0.26895388409902271 0.42827689611810393 
		0.21284274350657342 0.089926476276299974;
	setAttr -s 4 ".wl[685].w";
	setAttr ".wl[685].w[19]" 0.48442862419127219;
	setAttr ".wl[685].w[20]" 0.48442862419127242;
	setAttr ".wl[685].w[23]" 0.028812877239507852;
	setAttr ".wl[685].w[24]" 0.0023298743779474342;
	setAttr -s 4 ".wl[686].w";
	setAttr ".wl[686].w[19]" 0.48550490508942151;
	setAttr ".wl[686].w[20]" 0.48550490508942151;
	setAttr ".wl[686].w[23]" 0.025954596705759916;
	setAttr ".wl[686].w[24]" 0.003035593115397093;
	setAttr -s 4 ".wl[687].w[20:23]"  0.4134624215267006 0.45524901899449971 
		0.090129757064466298 0.041158802414333492;
	setAttr -s 4 ".wl[688].w[20:23]"  0.17993125356622774 0.53525789606996943 
		0.20344007983153811 0.081370770532264686;
	setAttr -s 4 ".wl[689].w[20:23]"  0.069692121225278153 0.35911745400617157 
		0.35911981578011554 0.21207060898843472;
	setAttr -s 4 ".wl[690].w[20:23]"  0.019493829151922437 0.25446111529023996 
		0.45726557092679676 0.26877948463104079;
	setAttr -s 4 ".wl[691].w[20:23]"  0.15629080465633571 0.41259356523776192 
		0.26536570260823394 0.16574992749766848;
	setAttr -s 4 ".wl[692].w[20:23]"  0.036082950683753584 0.38687349184669906 
		0.40551258774043292 0.17153096972911447;
	setAttr -s 4 ".wl[693].w[20:23]"  0.12093899835282251 0.4958992704879619 
		0.30686436869704453 0.07629736246217092;
	setAttr -s 4 ".wl[694].w[20:23]"  0.3361495874486301 0.40873140520924744 
		0.15789160053094836 0.097227406811174158;
	setAttr -s 4 ".wl[695].w[5:8]"  0.20869349209586699 0.30119273143308511 
		0.38769085281145105 0.10242292365959696;
	setAttr -s 4 ".wl[696].w[5:8]"  0.22093657287347776 0.34671097766566894 
		0.37634676667513683 0.056005682785716507;
	setAttr -s 4 ".wl[697].w[5:8]"  0.21962016087584729 0.39340737561807382 
		0.35864242935115143 0.028330034154927498;
	setAttr -s 4 ".wl[698].w[5:8]"  0.20885562297738308 0.43283007325959832 
		0.34186089957381621 0.016453404189202478;
	setAttr -s 4 ".wl[699].w[5:8]"  0.22197973433016666 0.43341580973332511 
		0.32844670965313205 0.016157746283376136;
	setAttr -s 4 ".wl[700].w[5:8]"  0.20130440479961181 0.42107333254346735 
		0.36449715258209847 0.013125110074822321;
	setAttr -s 4 ".wl[701].w[5:8]"  0.15984002171530026 0.42049605770558901 
		0.40896295308852626 0.010700967490584501;
	setAttr -s 4 ".wl[702].w[5:8]"  0.13566896709048887 0.42779561181560916 
		0.42739064444263503 0.0091447766512668862;
	setAttr -s 4 ".wl[703].w[5:8]"  0.11217056450125115 0.43909880921306843 
		0.43909880921306843 0.0096318170726119989;
	setAttr -s 4 ".wl[704].w";
	setAttr ".wl[704].w[5]" 0.49183467262525987;
	setAttr ".wl[704].w[17]" 0.50600475354124397;
	setAttr ".wl[704].w[18]" 0.0015746250815523229;
	setAttr ".wl[704].w[25]" 0.00058594875194387889;
	setAttr -s 4 ".wl[705].w[5:8]"  0.33718319942736824 0.39022947824812904 
		0.21353599918586122 0.059051323138641622;
	setAttr -s 4 ".wl[706].w";
	setAttr ".wl[706].w[5]" 0.43746130650161846;
	setAttr ".wl[706].w[17]" 0.56026232360708106;
	setAttr ".wl[706].w[18]" 0.0016846705519980285;
	setAttr ".wl[706].w[25]" 0.00059169933930243457;
	setAttr -s 4 ".wl[707].w";
	setAttr ".wl[707].w[5]" 0.3664705448786017;
	setAttr ".wl[707].w[6]" 0.36583981885918676;
	setAttr ".wl[707].w[8]" 0.052300946677916405;
	setAttr ".wl[707].w[17]" 0.21538868958429513;
	setAttr -s 4 ".wl[708].w[5:8]"  0.35070638519410235 0.42893407942763007 
		0.19871149282760769 0.021648042550659882;
	setAttr -s 4 ".wl[709].w[5:8]"  0.30230657496281077 0.41471159512079792 
		0.26579214820565056 0.017189681710740805;
	setAttr -s 4 ".wl[710].w[5:8]"  0.28848223508059617 0.39630665328871373 
		0.29868958548375341 0.016521526146936753;
	setAttr -s 4 ".wl[711].w[5:8]"  0.27341541971834871 0.39467623267321572 
		0.31252040732513714 0.01938794028329844;
	setAttr -s 4 ".wl[712].w[5:8]"  0.26948529376449615 0.38617882711035217 
		0.32582011808029721 0.018515761044854494;
	setAttr -s 4 ".wl[713].w[5:8]"  0.2776205997583549 0.38382954951137338 
		0.32004820315874233 0.018501647571529306;
	setAttr -s 4 ".wl[714].w[5:8]"  0.029146333246187813 0.13618624842913157 
		0.82374777743407257 0.010919640890608083;
	setAttr -s 4 ".wl[715].w[5:8]"  0.018417714050821172 0.099685003859867546 
		0.87419929796351226 0.0076979841257989743;
	setAttr -s 4 ".wl[716].w[5:8]"  0.1546544034953353 0.21859391390866245 
		0.4720972791006669 0.1546544034953353;
	setAttr -s 4 ".wl[717].w[5:8]"  0.15715204956933634 0.22370672496695609 
		0.48559545609301275 0.13354576937069473;
	setAttr -s 4 ".wl[718].w[5:8]"  0.12980505218387012 0.2390480933809708 
		0.5344518712543187 0.096694983180840396;
	setAttr -s 4 ".wl[719].w[5:8]"  0.090001306613756063 0.23581826880938506 
		0.6224826630097674 0.051697761567091438;
	setAttr -s 4 ".wl[720].w[5:8]"  0.053251222201340334 0.19636995160731868 
		0.73174931819090583 0.018629508000435228;
	setAttr -s 4 ".wl[721].w[5:8]"  0.025460494678403053 0.13154834944927088 
		0.82955773420312595 0.013433421669200132;
	setAttr -s 4 ".wl[722].w[5:8]"  0.030748073627903685 0.15844907439246647 
		0.79358010601705864 0.017222745962571302;
	setAttr -s 4 ".wl[723].w[5:8]"  0.019864759994076008 0.11432653629864037 
		0.8559119339445338 0.0098967697627498474;
	setAttr -s 4 ".wl[724].w[5:8]"  0.017552458689758518 0.10046353023533876 
		0.87374067864978266 0.0082433324251201343;
	setAttr -s 4 ".wl[725].w[5:8]"  0.013878094884396851 0.085616280430307654 
		0.89437403501194657 0.0061315896733488817;
	setAttr -s 4 ".wl[726].w[5:8]"  0.016848410809352305 0.10300429159256504 
		0.8722417688964994 0.0079055287015831494;
	setAttr -s 4 ".wl[727].w[5:8]"  0.022038687444090484 0.12032907041146176 
		0.84639890539980289 0.011233336744644924;
	setAttr -s 4 ".wl[728].w[5:8]"  0.020325581661448707 0.11348766457249995 
		0.85646241779511634 0.0097243359709350448;
	setAttr -s 4 ".wl[729].w[5:8]"  0.016625635664053024 0.097829701152674184 
		0.87804549061596648 0.0074991725673063296;
	setAttr -s 4 ".wl[730].w[5:8]"  0.0099997019012532558 0.067645178895564123 
		0.91842959465974383 0.0039255245434387;
	setAttr -s 4 ".wl[731].w[5:8]"  0.013071037226593 0.084174355922234198 
		0.8971267024452424 0.0056279044059303635;
	setAttr -s 4 ".wl[732].w[5:8]"  0.013402760780187428 0.086855206065827334 
		0.89389449445497315 0.0058475386990121505;
	setAttr -s 4 ".wl[733].w[5:8]"  0.015711400259151624 0.098651668270689954 
		0.87846176965111311 0.0071751618190454124;
	setAttr -s 4 ".wl[734].w[5:8]"  0.018929135852865417 0.11120117962165628 
		0.86075913082388056 0.0091105537015977803;
	setAttr -s 4 ".wl[735].w[5:8]"  0.019488270329524628 0.11045628734431187 
		0.86075804538637346 0.0092973969397900213;
	setAttr -s 4 ".wl[736].w[5:8]"  0.016986735561945954 0.099978468405409082 
		0.87524307788548694 0.0077917181471580648;
	setAttr -s 4 ".wl[737].w[5:8]"  0.014102546632597558 0.090941782011397493 
		0.88878799892739646 0.0061676724286084412;
	setAttr -s 4 ".wl[738].w[5:8]"  0.014012889691643191 0.090770765000147149 
		0.88906529576149118 0.0061510495467185164;
	setAttr -s 4 ".wl[739].w[5:8]"  0.014869541264098599 0.095343138167188007 
		0.88315402291152401 0.0066332976571893808;
	setAttr -s 4 ".wl[740].w[5:8]"  0.015139775792698021 0.097452323713591943 
		0.88068697987993738 0.0067209206137726378;
	setAttr -s 4 ".wl[741].w[5:8]"  0.015907164271607918 0.09984803464118433 
		0.87716491471052527 0.0070798863766825121;
	setAttr -s 4 ".wl[742].w[5:8]"  0.015034875106981649 0.094826154973338281 
		0.883512348439767 0.0066266214799131085;
	setAttr -s 4 ".wl[743].w[5:8]"  0.18488809591089406 0.40873262930618004 
		0.39454243045565496 0.011836844327271031;
	setAttr -s 4 ".wl[744].w[5:8]"  0.2356584620331732 0.40601945351979357 
		0.34465724988659885 0.013664834560434396;
	setAttr -s 4 ".wl[745].w[5:8]"  0.25290698742303663 0.42235272735347423 
		0.30991082756754273 0.014829457655946343;
	setAttr -s 4 ".wl[746].w[5:8]"  0.27135321967974924 0.44663343649772402 
		0.26647642495917312 0.015536918863353625;
	setAttr -s 4 ".wl[747].w[5:8]"  0.1130866674107275 0.4371315841176493 
		0.4371315841176493 0.012650164353973982;
	setAttr -s 4 ".wl[748].w[5:8]"  0.10892937329987033 0.43380799991683433 
		0.4420319225708445 0.015230704212450917;
	setAttr -s 4 ".wl[749].w[5:8]"  0.095142556550756999 0.42450056574403378 
		0.46008056641202894 0.020276311293180298;
	setAttr -s 4 ".wl[750].w[5:8]"  0.090967386164741162 0.41149104300756062 
		0.47949215600772443 0.018049414819973807;
	setAttr -s 4 ".wl[751].w[5:8]"  0.09901194441338651 0.42120164445405661 
		0.46331798776149474 0.016468423371062156;
	setAttr -s 4 ".wl[752].w[5:8]"  0.085598663370909836 0.39940421542641424 
		0.50059687816207743 0.014400243040598613;
	setAttr -s 4 ".wl[753].w[5:8]"  0.070213907777606346 0.36039201412263538 
		0.55688225976176076 0.012511818337997549;
	setAttr -s 4 ".wl[754].w[5:8]"  0.053656904218964838 0.30915223888536669 
		0.6269508863921448 0.010239970503523599;
	setAttr -s 4 ".wl[755].w[5:8]"  0.038025371491634596 0.24490801257068645 
		0.70905528741238089 0.0080113285252980584;
	setAttr -s 4 ".wl[756].w[5:8]"  0.046567363822844134 0.26019480786826366 
		0.68167711714139867 0.011560711167493532;
	setAttr -s 4 ".wl[757].w[5:8]"  0.070749829912244461 0.3545100486779193 
		0.56002299060355132 0.014717130806284878;
	setAttr -s 4 ".wl[758].w[5:8]"  0.085343163914913672 0.39571819418569565 
		0.50286205314731258 0.016076588752078087;
	setAttr -s 4 ".wl[759].w[5:8]"  0.079733241611238334 0.38259483414818019 
		0.52301082265334575 0.01466110158723581;
	setAttr -s 4 ".wl[760].w[5:8]"  0.068805418616534261 0.35061261467232652 
		0.56714031702757928 0.013441649683559896;
	setAttr -s 4 ".wl[761].w[5:8]"  0.047064754279310249 0.27082809727564633 
		0.67157594257998199 0.010531205865061417;
	setAttr -s 4 ".wl[762].w[5:8]"  0.064562380537832656 0.34151113103825859 
		0.57730722024743997 0.016619268176468818;
	setAttr -s 4 ".wl[763].w[5:8]"  0.060589142127713838 0.31951611202029334 
		0.60505490303531095 0.014839842816681921;
	setAttr -s 4 ".wl[764].w[5:8]"  0.058665798563057335 0.30913388859232249 
		0.61873437049251878 0.013465942352101386;
	setAttr -s 4 ".wl[765].w[5:8]"  0.056676802633169196 0.30871111154159658 
		0.62269359956576886 0.011918486259465334;
	setAttr -s 4 ".wl[766].w[20:23]"  0.0096397098780546947 0.058970735158725807 
		0.46569477748160976 0.46569477748160976;
	setAttr -s 4 ".wl[767].w[20:23]"  0.00096304894367455081 0.015204054391235036 
		0.49191644833254516 0.49191644833254516;
	setAttr -s 4 ".wl[768].w[20:23]"  0.00082779379481258506 0.013849323733226733 
		0.49266144123598038 0.49266144123598038;
	setAttr -s 4 ".wl[769].w[20:23]"  0.00098271955449971064 0.015705208905165736 
		0.49165603577016714 0.49165603577016737;
	setAttr -s 4 ".wl[770].w[20:23]"  0.0021326336556847913 0.025207242829198687 
		0.48633006175755827 0.48633006175755827;
	setAttr -s 4 ".wl[771].w[20:23]"  0.0036062061479807672 0.034626058907343014 
		0.48088386747233813 0.48088386747233813;
	setAttr -s 4 ".wl[772].w[20:23]"  0.0038399108032947759 0.035434876285997306 
		0.48036260645535395 0.48036260645535395;
	setAttr -s 4 ".wl[773].w[20:23]"  0.0034272905695900201 0.032607986502691672 
		0.4819823614638592 0.4819823614638592;
	setAttr -s 4 ".wl[774].w[20:23]"  0.0019140121891597893 0.022778761972028074 
		0.48765361291940612 0.48765361291940601;
	setAttr -s 4 ".wl[775].w[20:23]"  0.001937258461486949 0.023272743602330264 
		0.48739499896809141 0.48739499896809141;
	setAttr -s 4 ".wl[776].w[20:23]"  0.0048996501126164762 0.040124332530980134 
		0.47748800867820174 0.47748800867820174;
	setAttr -s 4 ".wl[777].w[20:23]"  0.0065719909894328262 0.048693228960164495 
		0.47236739002520117 0.47236739002520139;
	setAttr -s 4 ".wl[778].w[20:23]"  0.0049065487780759476 0.0418721751507138 
		0.47661063803560516 0.47661063803560516;
	setAttr -s 4 ".wl[779].w[20:23]"  0.0064027349088550982 0.047965181852894681 
		0.4728160416191251 0.4728160416191251;
	setAttr -s 4 ".wl[780].w[20:23]"  0.0069562912348697927 0.050150158790293872 
		0.47144677498741822 0.47144677498741822;
	setAttr -s 4 ".wl[781].w[20:23]"  0.0081403131562658611 0.053480617963302959 
		0.46918953444021561 0.46918953444021561;
	setAttr -s 4 ".wl[782].w[20:23]"  0.0069953268186870917 0.048861819270967145 
		0.47207142695517285 0.47207142695517285;
	setAttr -s 4 ".wl[783].w[20:23]"  0.006948164538399677 0.048668009700575283 
		0.47219191288051254 0.47219191288051254;
	setAttr -s 4 ".wl[784].w[20:23]"  0.12248884673454073 0.18717943673871987 
		0.34516585826336971 0.34516585826336971;
	setAttr -s 4 ".wl[785].w[5:8]"  0.012808556513481057 0.089107118892392867 
		0.89404526626577918 0.0040390583283469355;
	setAttr -s 4 ".wl[786].w[5:8]"  0.014065107722300203 0.096908430780401525 
		0.88455286130945621 0.0044736001878420096;
	setAttr -s 4 ".wl[787].w[5:8]"  0.014237719159604331 0.097727284221299768 
		0.88329397780397922 0.0047410188151166327;
	setAttr -s 4 ".wl[788].w[5:8]"  0.013619970685558683 0.095512134603858281 
		0.88616509631839036 0.0047027983921926969;
	setAttr -s 4 ".wl[789].w[5:8]"  0.012352671531309537 0.087880217897342294 
		0.89545254192488133 0.0043145686464668223;
	setAttr -s 4 ".wl[790].w[5:8]"  0.011150093120258083 0.080174517557049782 
		0.90478947326615833 0.0038859160565337587;
	setAttr -s 4 ".wl[791].w[5:8]"  0.011056109880115893 0.078063344110908622 
		0.90717075048610563 0.0037097955228699128;
	setAttr -s 4 ".wl[792].w[5:8]"  0.011198989255408321 0.07922416286820555 
		0.90601801202486876 0.0035588358515174453;
	setAttr -s 4 ".wl[793].w[5:8]"  0.012833684498698275 0.088597230049721795 
		0.89424792524846175 0.0043211602031182099;
	setAttr -s 4 ".wl[794].w";
	setAttr ".wl[794].w[18]" 0.76386048291703179;
	setAttr ".wl[794].w[19]" 0.16563482257276352;
	setAttr ".wl[794].w[24]" 0.0239240403746479;
	setAttr ".wl[794].w[25]" 0.046580654135556745;
	setAttr -s 4 ".wl[795].w";
	setAttr ".wl[795].w[18]" 0.76211062832951459;
	setAttr ".wl[795].w[19]" 0.15359705114370154;
	setAttr ".wl[795].w[24]" 0.03340317247083157;
	setAttr ".wl[795].w[25]" 0.050889148055952238;
	setAttr -s 4 ".wl[796].w";
	setAttr ".wl[796].w[18]" 0.64786031559697788;
	setAttr ".wl[796].w[19]" 0.19095570069524295;
	setAttr ".wl[796].w[24]" 0.076537707316885278;
	setAttr ".wl[796].w[25]" 0.084646276390893962;
	setAttr -s 4 ".wl[797].w";
	setAttr ".wl[797].w[18]" 0.64636753197281926;
	setAttr ".wl[797].w[19]" 0.22252041563913569;
	setAttr ".wl[797].w[24]" 0.086552778780157671;
	setAttr ".wl[797].w[25]" 0.044559273607887376;
	setAttr -s 4 ".wl[798].w";
	setAttr ".wl[798].w[18]" 0.772654918558492;
	setAttr ".wl[798].w[19]" 0.16156766649120455;
	setAttr ".wl[798].w[24]" 0.033309756930075457;
	setAttr ".wl[798].w[25]" 0.032467658020227982;
	setAttr -s 4 ".wl[799].w";
	setAttr ".wl[799].w[18]" 0.64679784700753418;
	setAttr ".wl[799].w[19]" 0.24088555679301149;
	setAttr ".wl[799].w[24]" 0.046076386533509935;
	setAttr ".wl[799].w[25]" 0.066240209665944447;
	setAttr -s 4 ".wl[800].w";
	setAttr ".wl[800].w[18]" 0.66933278689337206;
	setAttr ".wl[800].w[19]" 0.24634029610330954;
	setAttr ".wl[800].w[24]" 0.031443114454887011;
	setAttr ".wl[800].w[25]" 0.052883802548431384;
	setAttr -s 4 ".wl[801].w";
	setAttr ".wl[801].w[18]" 0.68457247463877913;
	setAttr ".wl[801].w[19]" 0.23596632738626871;
	setAttr ".wl[801].w[24]" 0.028420283543392957;
	setAttr ".wl[801].w[25]" 0.051040914431559226;
	setAttr -s 4 ".wl[802].w";
	setAttr ".wl[802].w[18]" 0.76953109616443705;
	setAttr ".wl[802].w[19]" 0.17006447309514897;
	setAttr ".wl[802].w[24]" 0.022648901155810922;
	setAttr ".wl[802].w[25]" 0.037755529584603084;
	setAttr -s 4 ".wl[803].w";
	setAttr ".wl[803].w[18]" 0.77856384393313416;
	setAttr ".wl[803].w[19]" 0.15068345035482172;
	setAttr ".wl[803].w[24]" 0.030153113162033791;
	setAttr ".wl[803].w[25]" 0.040599592550010132;
	setAttr -s 4 ".wl[804].w";
	setAttr ".wl[804].w[18]" 0.64676907048853682;
	setAttr ".wl[804].w[19]" 0.20503678096583366;
	setAttr ".wl[804].w[24]" 0.079473842028878416;
	setAttr ".wl[804].w[25]" 0.068720306516751109;
	setAttr -s 4 ".wl[805].w";
	setAttr ".wl[805].w[18]" 0.65480203734353426;
	setAttr ".wl[805].w[19]" 0.21999967057450973;
	setAttr ".wl[805].w[24]" 0.083049110851210903;
	setAttr ".wl[805].w[25]" 0.042149181230745077;
	setAttr -s 4 ".wl[806].w";
	setAttr ".wl[806].w[18]" 0.79108290058374231;
	setAttr ".wl[806].w[19]" 0.15585951645082116;
	setAttr ".wl[806].w[24]" 0.029085854865704391;
	setAttr ".wl[806].w[25]" 0.023971728099732158;
	setAttr -s 4 ".wl[807].w";
	setAttr ".wl[807].w[18]" 0.66724515487040537;
	setAttr ".wl[807].w[19]" 0.2356043841540813;
	setAttr ".wl[807].w[24]" 0.041556008756597998;
	setAttr ".wl[807].w[25]" 0.055594452218915451;
	setAttr -s 4 ".wl[808].w";
	setAttr ".wl[808].w[18]" 0.69161423431544278;
	setAttr ".wl[808].w[19]" 0.23685642956608211;
	setAttr ".wl[808].w[24]" 0.027893283161610723;
	setAttr ".wl[808].w[25]" 0.043636052956864367;
	setAttr -s 4 ".wl[809].w";
	setAttr ".wl[809].w[18]" 0.70579881090663077;
	setAttr ".wl[809].w[19]" 0.22853516041195029;
	setAttr ".wl[809].w[24]" 0.025061736161498795;
	setAttr ".wl[809].w[25]" 0.040604292519920197;
	setAttr -s 4 ".wl[810].w[5:8]"  0.029306533294598168 0.14238389235742469 
		0.81094620867100342 0.017363365676973684;
	setAttr -s 4 ".wl[811].w[5:8]"  0.023345061952760045 0.12886331623003217 
		0.8351551142077297 0.012636507609478207;
	setAttr -s 4 ".wl[812].w[5:8]"  0.044776312737597315 0.18671823378564387 
		0.73875741085456159 0.029748042622197317;
	setAttr -s 4 ".wl[813].w[5:8]"  0.05592360083506865 0.20939891129657023 
		0.6950323587187448 0.039645129149616327;
	setAttr -s 4 ".wl[814].w[5:8]"  0.078484820840529795 0.23274056783926145 
		0.61947638607518418 0.069298225245024603;
	setAttr -s 4 ".wl[815].w[5:8]"  0.22315441272353434 0.18565888189823279 
		0.3680322926546985 0.22315441272353434;
	setAttr -s 4 ".wl[816].w";
	setAttr ".wl[816].w[5]" 0.31407215598230948;
	setAttr ".wl[816].w[6]" 0.14274564558614464;
	setAttr ".wl[816].w[8]" 0.31407215598230948;
	setAttr ".wl[816].w[17]" 0.2291100424492365;
	setAttr -s 4 ".wl[817].w";
	setAttr ".wl[817].w[5]" 0.28911560916223528;
	setAttr ".wl[817].w[6]" 0.20258663569134341;
	setAttr ".wl[817].w[8]" 0.28911560916223517;
	setAttr ".wl[817].w[17]" 0.2191821459841862;
	setAttr -s 4 ".wl[818].w[5:8]"  0.20903834618717992 0.24895309911620114 
		0.33297020850943909 0.20903834618717992;
	setAttr -s 4 ".wl[819].w[5:8]"  0.30409702059661314 0.35360699167256987 
		0.20870115846606208 0.13359482926475491;
	setAttr -s 4 ".wl[820].w";
	setAttr ".wl[820].w[5]" 0.37686199613176619;
	setAttr ".wl[820].w[6]" 0.077120908804084398;
	setAttr ".wl[820].w[8]" 0.37686199613176619;
	setAttr ".wl[820].w[17]" 0.16915509893238329;
	setAttr -s 4 ".wl[821].w";
	setAttr ".wl[821].w[5]" 0.42255987394551447;
	setAttr ".wl[821].w[6]" 0.011768953889257984;
	setAttr ".wl[821].w[8]" 0.42255987394551447;
	setAttr ".wl[821].w[17]" 0.14311129821971308;
	setAttr -s 4 ".wl[822].w";
	setAttr ".wl[822].w[5]" 0.48109698662918843;
	setAttr ".wl[822].w[6]" 0.0014284843490491288;
	setAttr ".wl[822].w[8]" 0.48109698662918843;
	setAttr ".wl[822].w[17]" 0.036377542392574111;
	setAttr -s 4 ".wl[823].w";
	setAttr ".wl[823].w[5]" 0.49650525926466271;
	setAttr ".wl[823].w[6]" 0.00025474048057400593;
	setAttr ".wl[823].w[8]" 0.49650525926466271;
	setAttr ".wl[823].w[17]" 0.0067347409901006329;
	setAttr -s 4 ".wl[824].w";
	setAttr ".wl[824].w[5]" 0.492729422549887;
	setAttr ".wl[824].w[6]" 0.00058963385651628097;
	setAttr ".wl[824].w[8]" 0.49272942254988689;
	setAttr ".wl[824].w[17]" 0.01395152104370985;
	setAttr -s 4 ".wl[825].w";
	setAttr ".wl[825].w[5]" 0.47791105416115787;
	setAttr ".wl[825].w[6]" 0.0019840260962296968;
	setAttr ".wl[825].w[8]" 0.47791105416115787;
	setAttr ".wl[825].w[17]" 0.042193865581454604;
	setAttr -s 4 ".wl[826].w";
	setAttr ".wl[826].w[5]" 0.42152461970639354;
	setAttr ".wl[826].w[6]" 0.012675505852758943;
	setAttr ".wl[826].w[8]" 0.42152461970639354;
	setAttr ".wl[826].w[17]" 0.14427525473445388;
	setAttr -s 4 ".wl[827].w";
	setAttr ".wl[827].w[5]" 0.39125566621729979;
	setAttr ".wl[827].w[6]" 0.025287114946906834;
	setAttr ".wl[827].w[8]" 0.39125566621729968;
	setAttr ".wl[827].w[17]" 0.1922015526184937;
	setAttr -s 4 ".wl[828].w[1:4]"  0.30820620197886189 0.30830053465747492 
		0.25136486953577258 0.1321283938278906;
	setAttr -s 4 ".wl[829].w";
	setAttr ".wl[829].w[0]" 0.32879371174954702;
	setAttr ".wl[829].w[1]" 0.25218789724421004;
	setAttr ".wl[829].w[26]" 0.32879371174954702;
	setAttr ".wl[829].w[30]" 0.090224679256695972;
	setAttr -s 4 ".wl[830].w";
	setAttr ".wl[830].w[0]" 0.36669845444671062;
	setAttr ".wl[830].w[1]" 0.1743483539042853;
	setAttr ".wl[830].w[26]" 0.36644272510898729;
	setAttr ".wl[830].w[30]" 0.092510466540016822;
	setAttr -s 4 ".wl[831].w";
	setAttr ".wl[831].w[0]" 0.39510916260823115;
	setAttr ".wl[831].w[1]" 0.11139382346517902;
	setAttr ".wl[831].w[26]" 0.39083744733400916;
	setAttr ".wl[831].w[30]" 0.10265956659258066;
	setAttr -s 4 ".wl[832].w";
	setAttr ".wl[832].w[0]" 0.45355463555236741;
	setAttr ".wl[832].w[14]" 0.011930415300174482;
	setAttr ".wl[832].w[26]" 0.47017222896455335;
	setAttr ".wl[832].w[27]" 0.064342720182904781;
	setAttr -s 4 ".wl[833].w";
	setAttr ".wl[833].w[0]" 0.45287685953396883;
	setAttr ".wl[833].w[14]" 0.010065859012639372;
	setAttr ".wl[833].w[26]" 0.47816527571039491;
	setAttr ".wl[833].w[27]" 0.05889200574299687;
	setAttr -s 4 ".wl[834].w";
	setAttr ".wl[834].w[0]" 0.35998725659304981;
	setAttr ".wl[834].w[14]" 0.012690184695943074;
	setAttr ".wl[834].w[26]" 0.52527963300331237;
	setAttr ".wl[834].w[27]" 0.1020429257076948;
	setAttr -s 4 ".wl[835].w";
	setAttr ".wl[835].w[0]" 0.051429974067702069;
	setAttr ".wl[835].w[26]" 0.5299260004811579;
	setAttr ".wl[835].w[27]" 0.41137145853319279;
	setAttr ".wl[835].w[28]" 0.0072725669179472367;
	setAttr -s 4 ".wl[836].w";
	setAttr ".wl[836].w[0]" 0.12851850747419666;
	setAttr ".wl[836].w[26]" 0.53423316304045565;
	setAttr ".wl[836].w[27]" 0.32753685089279388;
	setAttr ".wl[836].w[28]" 0.0097114785925537551;
	setAttr -s 4 ".wl[837].w";
	setAttr ".wl[837].w[0]" 0.44352035884460489;
	setAttr ".wl[837].w[1]" 0.11106137259402131;
	setAttr ".wl[837].w[26]" 0.34359810900764176;
	setAttr ".wl[837].w[30]" 0.101820159553732;
	setAttr -s 4 ".wl[838].w";
	setAttr ".wl[838].w[0]" 0.53903278482235928;
	setAttr ".wl[838].w[1]" 0.20948456249367781;
	setAttr ".wl[838].w[26]" 0.19737856885275146;
	setAttr ".wl[838].w[30]" 0.054104083831211548;
	setAttr -s 4 ".wl[839].w";
	setAttr ".wl[839].w[0]" 0.50456412622210822;
	setAttr ".wl[839].w[1]" 0.23126354480010106;
	setAttr ".wl[839].w[26]" 0.2056378058416389;
	setAttr ".wl[839].w[30]" 0.058534523136151866;
	setAttr -s 4 ".wl[840].w";
	setAttr ".wl[840].w[0]" 0.48394250096890551;
	setAttr ".wl[840].w[1]" 0.28350744576077808;
	setAttr ".wl[840].w[26]" 0.17924933382485178;
	setAttr ".wl[840].w[30]" 0.053300719445464613;
	setAttr -s 4 ".wl[841].w";
	setAttr ".wl[841].w[0]" 0.41508596698103861;
	setAttr ".wl[841].w[1]" 0.41090241380676601;
	setAttr ".wl[841].w[26]" 0.13135999098312687;
	setAttr ".wl[841].w[30]" 0.042651628229068497;
	setAttr -s 4 ".wl[842].w[0:3]"  0.26110311523438073 0.30929837343895561 
		0.28056241533492077 0.14903609599174286;
	setAttr -s 4 ".wl[843].w[1:4]"  0.29490641308128723 0.29756792254724818 
		0.26032987476901603 0.14719578960244861;
	setAttr -s 4 ".wl[844].w";
	setAttr ".wl[844].w[8]" 0.23681288322269786;
	setAttr ".wl[844].w[9]" 0.34134881050662869;
	setAttr ".wl[844].w[10]" 0.080489495764044725;
	setAttr ".wl[844].w[16]" 0.34134881050662869;
	setAttr -s 4 ".wl[845].w";
	setAttr ".wl[845].w[5]" 0.16545465490479908;
	setAttr ".wl[845].w[8]" 0.30779463602536133;
	setAttr ".wl[845].w[9]" 0.30779463602536156;
	setAttr ".wl[845].w[16]" 0.21895607304447789;
	setAttr -s 4 ".wl[846].w";
	setAttr ".wl[846].w[5]" 0.19252279348638773;
	setAttr ".wl[846].w[8]" 0.3228642697434343;
	setAttr ".wl[846].w[9]" 0.32286426974343452;
	setAttr ".wl[846].w[16]" 0.16174866702674331;
	setAttr -s 4 ".wl[847].w";
	setAttr ".wl[847].w[5]" 0.29347544001097442;
	setAttr ".wl[847].w[8]" 0.30763925492105404;
	setAttr ".wl[847].w[9]" 0.30385270373379158;
	setAttr ".wl[847].w[16]" 0.095032601334179859;
	setAttr -s 4 ".wl[848].w";
	setAttr ".wl[848].w[5]" 0.34457790678900202;
	setAttr ".wl[848].w[6]" 0.34457790678900202;
	setAttr ".wl[848].w[8]" 0.24789410856849242;
	setAttr ".wl[848].w[16]" 0.062950077853503442;
	setAttr -s 4 ".wl[849].w";
	setAttr ".wl[849].w[5]" 0.36868005410517707;
	setAttr ".wl[849].w[6]" 0.36868005410517696;
	setAttr ".wl[849].w[8]" 0.20655910781217005;
	setAttr ".wl[849].w[17]" 0.056080783977475943;
	setAttr -s 4 ".wl[850].w";
	setAttr ".wl[850].w[5]" 0.4054694113490166;
	setAttr ".wl[850].w[6]" 0.40546941134901648;
	setAttr ".wl[850].w[8]" 0.13540046124768249;
	setAttr ".wl[850].w[17]" 0.053660716054284442;
	setAttr -s 4 ".wl[851].w[5:8]"  0.35432072534912101 0.37142632736937714 
		0.22240062348636563 0.051852323795136261;
	setAttr -s 4 ".wl[852].w[5:8]"  0.15543502233353232 0.41316059353000806 
		0.41304157882681442 0.018362805309645135;
	setAttr -s 4 ".wl[853].w[5:8]"  0.12265664723322407 0.42950995612290194 
		0.42950995612290216 0.018323440520971682;
	setAttr -s 4 ".wl[854].w[5:8]"  0.11589668637447864 0.43126842049232839 
		0.43126842049232827 0.021566472640864726;
	setAttr -s 4 ".wl[855].w[5:8]"  0.10582357481908403 0.42999904971313829 
		0.44175364875946099 0.02242372670831674;
	setAttr -s 4 ".wl[856].w[5:8]"  0.074830094219213605 0.3695615811958588 
		0.53718191449671771 0.018426410088209964;
	setAttr -s 4 ".wl[857].w[5:8]"  0.046931479374425038 0.2621549850243366 
		0.67692792492216225 0.013985610679076166;
	setAttr -s 4 ".wl[858].w[5:8]"  0.033387661710722251 0.19671340060883549 
		0.75851402306851567 0.011384914611926629;
	setAttr -s 4 ".wl[859].w[5:8]"  0.026335923071195907 0.15731842893236542 
		0.80584905761449366 0.010496590381945062;
	setAttr -s 4 ".wl[860].w[5:8]"  0.023968029898738717 0.14211900734997615 
		0.8235038865959875 0.010409076155297649;
	setAttr -s 4 ".wl[861].w[5:8]"  0.019024530812420518 0.12021654104185107 
		0.85239053934700726 0.0083683887987211665;
	setAttr -s 4 ".wl[862].w";
	setAttr ".wl[862].w[8]" 0.01830516296364226;
	setAttr ".wl[862].w[9]" 0.79199204620501662;
	setAttr ".wl[862].w[10]" 0.080238812988953745;
	setAttr ".wl[862].w[16]" 0.10946397784238737;
	setAttr -s 4 ".wl[863].w";
	setAttr ".wl[863].w[8]" 0.02293055078345748;
	setAttr ".wl[863].w[9]" 0.77148932317493046;
	setAttr ".wl[863].w[10]" 0.070122146694639315;
	setAttr ".wl[863].w[16]" 0.13545797934697279;
	setAttr -s 4 ".wl[864].w";
	setAttr ".wl[864].w[8]" 0.036334265439596725;
	setAttr ".wl[864].w[9]" 0.69178644924679533;
	setAttr ".wl[864].w[10]" 0.092298314361060715;
	setAttr ".wl[864].w[16]" 0.17958097095254733;
	setAttr -s 4 ".wl[865].w";
	setAttr ".wl[865].w[9]" 0.72771771087994219;
	setAttr ".wl[865].w[10]" 0.10400600303608236;
	setAttr ".wl[865].w[15]" 0.039578007182695343;
	setAttr ".wl[865].w[16]" 0.12869827890128013;
	setAttr -s 4 ".wl[866].w";
	setAttr ".wl[866].w[9]" 0.8256006069609102;
	setAttr ".wl[866].w[10]" 0.090658531611358714;
	setAttr ".wl[866].w[15]" 0.021059066743524799;
	setAttr ".wl[866].w[16]" 0.062681794684206316;
	setAttr -s 4 ".wl[867].w";
	setAttr ".wl[867].w[9]" 0.66858453585522248;
	setAttr ".wl[867].w[10]" 0.19573676529295148;
	setAttr ".wl[867].w[15]" 0.041407015186085819;
	setAttr ".wl[867].w[16]" 0.094271683665740208;
	setAttr -s 4 ".wl[868].w";
	setAttr ".wl[868].w[9]" 0.66416558947587123;
	setAttr ".wl[868].w[10]" 0.20305173956723052;
	setAttr ".wl[868].w[15]" 0.033226619296144219;
	setAttr ".wl[868].w[16]" 0.099556051660753944;
	setAttr -s 4 ".wl[869].w";
	setAttr ".wl[869].w[8]" 0.02598711277356066;
	setAttr ".wl[869].w[9]" 0.70540089866221345;
	setAttr ".wl[869].w[10]" 0.13994833197885803;
	setAttr ".wl[869].w[16]" 0.12866365658536785;
	setAttr -s 4 ".wl[870].w";
	setAttr ".wl[870].w[9]" 0.73430729126213434;
	setAttr ".wl[870].w[10]" 0.22110732494993332;
	setAttr ".wl[870].w[15]" 0.023638210280452709;
	setAttr ".wl[870].w[16]" 0.020947173507479648;
	setAttr -s 4 ".wl[871].w";
	setAttr ".wl[871].w[9]" 0.76126764046231565;
	setAttr ".wl[871].w[10]" 0.1842796056578416;
	setAttr ".wl[871].w[15]" 0.030551534225822283;
	setAttr ".wl[871].w[16]" 0.023901219654020492;
	setAttr -s 4 ".wl[872].w";
	setAttr ".wl[872].w[9]" 0.63458974566814308;
	setAttr ".wl[872].w[10]" 0.22939154025715064;
	setAttr ".wl[872].w[15]" 0.085885843331113515;
	setAttr ".wl[872].w[16]" 0.050132870743592683;
	setAttr -s 4 ".wl[873].w";
	setAttr ".wl[873].w[9]" 0.64346611519691332;
	setAttr ".wl[873].w[10]" 0.24113689267295046;
	setAttr ".wl[873].w[15]" 0.085987727990996507;
	setAttr ".wl[873].w[16]" 0.029409264139139742;
	setAttr -s 4 ".wl[874].w";
	setAttr ".wl[874].w[9]" 0.68194723145053959;
	setAttr ".wl[874].w[10]" 0.25603290489237263;
	setAttr ".wl[874].w[15]" 0.048162193425335835;
	setAttr ".wl[874].w[16]" 0.013857670231751945;
	setAttr -s 4 ".wl[875].w";
	setAttr ".wl[875].w[9]" 0.60339679813983937;
	setAttr ".wl[875].w[10]" 0.33801173484796698;
	setAttr ".wl[875].w[15]" 0.043374643683444937;
	setAttr ".wl[875].w[16]" 0.015216823328748632;
	setAttr -s 4 ".wl[876].w";
	setAttr ".wl[876].w[9]" 0.63339156160436028;
	setAttr ".wl[876].w[10]" 0.32844974337159683;
	setAttr ".wl[876].w[15]" 0.024922262795631527;
	setAttr ".wl[876].w[16]" 0.013236432228411379;
	setAttr -s 4 ".wl[877].w";
	setAttr ".wl[877].w[9]" 0.6544530035928392;
	setAttr ".wl[877].w[10]" 0.30048773825671238;
	setAttr ".wl[877].w[15]" 0.025308466244320527;
	setAttr ".wl[877].w[16]" 0.019750791906127961;
	setAttr -s 4 ".wl[878].w";
	setAttr ".wl[878].w[9]" 0.59460076946548845;
	setAttr ".wl[878].w[10]" 0.3711518537361162;
	setAttr ".wl[878].w[15]" 0.027501106208117604;
	setAttr ".wl[878].w[16]" 0.0067462705902777888;
	setAttr -s 4 ".wl[879].w";
	setAttr ".wl[879].w[9]" 0.60529695178857879;
	setAttr ".wl[879].w[10]" 0.334512547259049;
	setAttr ".wl[879].w[15]" 0.050397001331738675;
	setAttr ".wl[879].w[16]" 0.0097934996206336944;
	setAttr -s 4 ".wl[880].w";
	setAttr ".wl[880].w[9]" 0.52771123713679757;
	setAttr ".wl[880].w[10]" 0.3279065700322526;
	setAttr ".wl[880].w[15]" 0.12642753846300434;
	setAttr ".wl[880].w[16]" 0.017954654367945563;
	setAttr -s 4 ".wl[881].w";
	setAttr ".wl[881].w[9]" 0.51930052312854214;
	setAttr ".wl[881].w[10]" 0.35414363170096841;
	setAttr ".wl[881].w[15]" 0.11739969020793002;
	setAttr ".wl[881].w[16]" 0.0091561549625594346;
	setAttr -s 4 ".wl[882].w";
	setAttr ".wl[882].w[9]" 0.48714733773588681;
	setAttr ".wl[882].w[10]" 0.39479364214838608;
	setAttr ".wl[882].w[15]" 0.10950589246952255;
	setAttr ".wl[882].w[16]" 0.0085531276462044656;
	setAttr -s 4 ".wl[883].w";
	setAttr ".wl[883].w[9]" 0.52448335527851597;
	setAttr ".wl[883].w[10]" 0.43410941875751663;
	setAttr ".wl[883].w[15]" 0.037498418934233203;
	setAttr ".wl[883].w[16]" 0.0039088070297342067;
	setAttr -s 4 ".wl[884].w";
	setAttr ".wl[884].w[9]" 0.4997089310189769;
	setAttr ".wl[884].w[10]" 0.45938331007874778;
	setAttr ".wl[884].w[15]" 0.034382308321073515;
	setAttr ".wl[884].w[16]" 0.0065254505812018266;
	setAttr -s 4 ".wl[885].w";
	setAttr ".wl[885].w[9]" 0.53859139755415519;
	setAttr ".wl[885].w[10]" 0.43171225292563775;
	setAttr ".wl[885].w[15]" 0.023898411311604122;
	setAttr ".wl[885].w[16]" 0.0057979382086029378;
	setAttr -s 4 ".wl[886].w";
	setAttr ".wl[886].w[9]" 0.47263870661836666;
	setAttr ".wl[886].w[10]" 0.47177170249823941;
	setAttr ".wl[886].w[15]" 0.051417299644113228;
	setAttr ".wl[886].w[16]" 0.0041722912392807825;
	setAttr -s 4 ".wl[887].w";
	setAttr ".wl[887].w[9]" 0.44205252048318089;
	setAttr ".wl[887].w[10]" 0.42694354103272386;
	setAttr ".wl[887].w[15]" 0.12330016385462535;
	setAttr ".wl[887].w[16]" 0.0077037746294698201;
	setAttr -s 4 ".wl[888].w";
	setAttr ".wl[888].w[9]" 0.36422380043573171;
	setAttr ".wl[888].w[10]" 0.44479063893116672;
	setAttr ".wl[888].w[15]" 0.1854874664228528;
	setAttr ".wl[888].w[16]" 0.0054980942102486087;
	setAttr -s 4 ".wl[889].w";
	setAttr ".wl[889].w[9]" 0.31848865379460195;
	setAttr ".wl[889].w[10]" 0.48004296687724973;
	setAttr ".wl[889].w[11]" 0.0042234222654422768;
	setAttr ".wl[889].w[15]" 0.19724495706270603;
	setAttr -s 4 ".wl[890].w";
	setAttr ".wl[890].w[9]" 0.34552576847916339;
	setAttr ".wl[890].w[10]" 0.44358067405738105;
	setAttr ".wl[890].w[11]" 0.0078753669490625716;
	setAttr ".wl[890].w[15]" 0.20301819051439304;
	setAttr -s 4 ".wl[891].w";
	setAttr ".wl[891].w[9]" 0.45774781514363566;
	setAttr ".wl[891].w[10]" 0.45957196099733832;
	setAttr ".wl[891].w[15]" 0.079321706814308654;
	setAttr ".wl[891].w[16]" 0.003358517044717364;
	setAttr -s 4 ".wl[892].w";
	setAttr ".wl[892].w[9]" 0.47542396737780407;
	setAttr ".wl[892].w[10]" 0.47542396737780407;
	setAttr ".wl[892].w[15]" 0.045715549387109831;
	setAttr ".wl[892].w[16]" 0.0034365158572820004;
	setAttr -s 4 ".wl[893].w";
	setAttr ".wl[893].w[9]" 0.487363583623309;
	setAttr ".wl[893].w[10]" 0.48736358362330889;
	setAttr ".wl[893].w[15]" 0.023546635142508536;
	setAttr ".wl[893].w[16]" 0.0017261976108735532;
	setAttr -s 4 ".wl[894].w";
	setAttr ".wl[894].w[9]" 0.23710911463294995;
	setAttr ".wl[894].w[10]" 0.4541387486442201;
	setAttr ".wl[894].w[11]" 0.0078233086229826249;
	setAttr ".wl[894].w[15]" 0.30092882809984739;
	setAttr -s 4 ".wl[895].w";
	setAttr ".wl[895].w[9]" 0.13178394049881434;
	setAttr ".wl[895].w[10]" 0.43775904449759145;
	setAttr ".wl[895].w[11]" 0.01285410111651381;
	setAttr ".wl[895].w[15]" 0.41760291388708043;
	setAttr -s 4 ".wl[896].w";
	setAttr ".wl[896].w[9]" 0.070980875058785975;
	setAttr ".wl[896].w[10]" 0.45831030483019669;
	setAttr ".wl[896].w[11]" 0.012398515280820616;
	setAttr ".wl[896].w[15]" 0.45831030483019669;
	setAttr -s 4 ".wl[897].w";
	setAttr ".wl[897].w[9]" 0.06239377777573249;
	setAttr ".wl[897].w[10]" 0.46413263913914687;
	setAttr ".wl[897].w[11]" 0.0093944086036855719;
	setAttr ".wl[897].w[15]" 0.4640791744814351;
	setAttr -s 4 ".wl[898].w";
	setAttr ".wl[898].w[9]" 0.11947260987669234;
	setAttr ".wl[898].w[10]" 0.46562506937060255;
	setAttr ".wl[898].w[11]" 0.012066260211277333;
	setAttr ".wl[898].w[15]" 0.40283606054142773;
	setAttr -s 4 ".wl[899].w";
	setAttr ".wl[899].w[9]" 0.22395273685818931;
	setAttr ".wl[899].w[10]" 0.47378043142698884;
	setAttr ".wl[899].w[11]" 0.0082529325706162254;
	setAttr ".wl[899].w[15]" 0.29401389914420573;
	setAttr -s 4 ".wl[900].w";
	setAttr ".wl[900].w[9]" 0.32287542708307615;
	setAttr ".wl[900].w[10]" 0.47234468275597369;
	setAttr ".wl[900].w[11]" 0.0055152504640312468;
	setAttr ".wl[900].w[15]" 0.19926463969691893;
	setAttr -s 4 ".wl[901].w";
	setAttr ".wl[901].w[9]" 0.33511150675273493;
	setAttr ".wl[901].w[10]" 0.46214021989485687;
	setAttr ".wl[901].w[11]" 0.0053820413313923976;
	setAttr ".wl[901].w[15]" 0.19736623202101583;
	setAttr -s 4 ".wl[902].w";
	setAttr ".wl[902].w[9]" 0.030261395838655294;
	setAttr ".wl[902].w[10]" 0.56656917391575068;
	setAttr ".wl[902].w[11]" 0.024073834087492276;
	setAttr ".wl[902].w[15]" 0.37909559615810168;
	setAttr -s 4 ".wl[903].w";
	setAttr ".wl[903].w[9]" 0.022477535951776404;
	setAttr ".wl[903].w[10]" 0.64933689139853668;
	setAttr ".wl[903].w[11]" 0.037787775709637331;
	setAttr ".wl[903].w[15]" 0.29039779694004969;
	setAttr -s 4 ".wl[904].w";
	setAttr ".wl[904].w[9]" 0.015558533772832247;
	setAttr ".wl[904].w[10]" 0.73357414985277136;
	setAttr ".wl[904].w[11]" 0.04506191635309896;
	setAttr ".wl[904].w[15]" 0.20580540002129746;
	setAttr -s 4 ".wl[905].w";
	setAttr ".wl[905].w[9]" 0.013011359670703979;
	setAttr ".wl[905].w[10]" 0.7580954993773088;
	setAttr ".wl[905].w[11]" 0.033769647657226703;
	setAttr ".wl[905].w[15]" 0.19512349329476056;
	setAttr -s 4 ".wl[906].w";
	setAttr ".wl[906].w[9]" 0.014657186030894337;
	setAttr ".wl[906].w[10]" 0.70374482685260298;
	setAttr ".wl[906].w[11]" 0.016423659070104169;
	setAttr ".wl[906].w[15]" 0.26517432804639846;
	setAttr -s 4 ".wl[907].w";
	setAttr ".wl[907].w[9]" 0.033175072228907219;
	setAttr ".wl[907].w[10]" 0.56692630954315171;
	setAttr ".wl[907].w[11]" 0.014244630493294762;
	setAttr ".wl[907].w[15]" 0.38565398773464632;
	setAttr -s 4 ".wl[908].w";
	setAttr ".wl[908].w[9]" 0.062427496944596955;
	setAttr ".wl[908].w[10]" 0.49383979844998854;
	setAttr ".wl[908].w[11]" 0.017381186838612093;
	setAttr ".wl[908].w[15]" 0.4263515177668023;
	setAttr -s 4 ".wl[909].w";
	setAttr ".wl[909].w[9]" 0.046563841493869433;
	setAttr ".wl[909].w[10]" 0.5043163873664509;
	setAttr ".wl[909].w[11]" 0.018413823094558242;
	setAttr ".wl[909].w[15]" 0.43070594804512152;
	setAttr -s 4 ".wl[910].w";
	setAttr ".wl[910].w[10]" 0.76752857421812248;
	setAttr ".wl[910].w[11]" 0.191344661850498;
	setAttr ".wl[910].w[14]" 0.0066790104105890731;
	setAttr ".wl[910].w[15]" 0.034447753520790408;
	setAttr -s 4 ".wl[911].w";
	setAttr ".wl[911].w[10]" 0.7643496057424789;
	setAttr ".wl[911].w[11]" 0.20772792555115327;
	setAttr ".wl[911].w[14]" 0.0068875426875655678;
	setAttr ".wl[911].w[15]" 0.021034926018802295;
	setAttr -s 4 ".wl[912].w";
	setAttr ".wl[912].w[10]" 0.73400697568789952;
	setAttr ".wl[912].w[11]" 0.22614613910146775;
	setAttr ".wl[912].w[14]" 0.014168656054684292;
	setAttr ".wl[912].w[15]" 0.025678229155948425;
	setAttr -s 4 ".wl[913].w";
	setAttr ".wl[913].w[10]" 0.70226890910515594;
	setAttr ".wl[913].w[11]" 0.2258029109365555;
	setAttr ".wl[913].w[14]" 0.029796344513243568;
	setAttr ".wl[913].w[15]" 0.042131835445045084;
	setAttr -s 4 ".wl[914].w";
	setAttr ".wl[914].w[10]" 0.89103775054856149;
	setAttr ".wl[914].w[11]" 0.070566577065475602;
	setAttr ".wl[914].w[14]" 0.009572059598848312;
	setAttr ".wl[914].w[15]" 0.028823612787114598;
	setAttr -s 4 ".wl[915].w";
	setAttr ".wl[915].w[10]" 0.96020510925752334;
	setAttr ".wl[915].w[11]" 0.018989314906833095;
	setAttr ".wl[915].w[14]" 0.0024749776298154651;
	setAttr ".wl[915].w[15]" 0.018330598205828174;
	setAttr -s 4 ".wl[916].w";
	setAttr ".wl[916].w[9]" 0.0049575364014087121;
	setAttr ".wl[916].w[10]" 0.8883314657485305;
	setAttr ".wl[916].w[11]" 0.047416753272816865;
	setAttr ".wl[916].w[15]" 0.059294244577243763;
	setAttr -s 4 ".wl[917].w";
	setAttr ".wl[917].w[10]" 0.86897866539636393;
	setAttr ".wl[917].w[11]" 0.087339003596149753;
	setAttr ".wl[917].w[14]" 0.0043815987959806403;
	setAttr ".wl[917].w[15]" 0.039300732211505693;
	setAttr -s 4 ".wl[918].w";
	setAttr ".wl[918].w[10]" 0.49727390244258868;
	setAttr ".wl[918].w[11]" 0.49727390244258868;
	setAttr ".wl[918].w[14]" 0.0035611693892211131;
	setAttr ".wl[918].w[15]" 0.0018910257256015324;
	setAttr -s 4 ".wl[919].w";
	setAttr ".wl[919].w[10]" 0.49718798549947435;
	setAttr ".wl[919].w[11]" 0.49718798549947435;
	setAttr ".wl[919].w[14]" 0.0042380789311252448;
	setAttr ".wl[919].w[15]" 0.0013859500699259816;
	setAttr -s 4 ".wl[920].w[10:13]"  0.36930091222465833 0.39083367143988174 
		0.21674516626454468 0.023120250070915272;
	setAttr -s 4 ".wl[921].w[11:14]"  0.44466678214318667 0.44481142531668788 
		0.087861946572048516 0.02265984596807687;
	setAttr -s 4 ".wl[922].w[11:14]"  0.44813194532064066 0.45471608971141991 
		0.079817847158754077 0.017334117809185406;
	setAttr -s 4 ".wl[923].w";
	setAttr ".wl[923].w[10]" 0.77744358148732173;
	setAttr ".wl[923].w[11]" 0.2136096328765788;
	setAttr ".wl[923].w[14]" 0.0061682871044810659;
	setAttr ".wl[923].w[15]" 0.0027784985316184397;
	setAttr -s 4 ".wl[924].w";
	setAttr ".wl[924].w[10]" 0.67773939070487066;
	setAttr ".wl[924].w[11]" 0.31894906313379084;
	setAttr ".wl[924].w[14]" 0.0023710845981037535;
	setAttr ".wl[924].w[15]" 0.00094046156323474082;
	setAttr -s 4 ".wl[925].w";
	setAttr ".wl[925].w[10]" 0.54852062991885919;
	setAttr ".wl[925].w[11]" 0.44580819698697027;
	setAttr ".wl[925].w[14]" 0.00338569080574722;
	setAttr ".wl[925].w[15]" 0.00228548228842334;
	setAttr -s 4 ".wl[926].w";
	setAttr ".wl[926].w[0]" 0.016866334273726417;
	setAttr ".wl[926].w[14]" 0.042664237342307842;
	setAttr ".wl[926].w[26]" 0.61537493226971818;
	setAttr ".wl[926].w[27]" 0.32509449611424757;
	setAttr -s 4 ".wl[927].w";
	setAttr ".wl[927].w[0]" 0.029627075236002623;
	setAttr ".wl[927].w[14]" 0.039239133304248698;
	setAttr ".wl[927].w[26]" 0.57286066276595993;
	setAttr ".wl[927].w[27]" 0.35827312869378874;
	setAttr -s 4 ".wl[928].w";
	setAttr ".wl[928].w[0]" 0.028145066222126432;
	setAttr ".wl[928].w[14]" 0.015400277802631503;
	setAttr ".wl[928].w[26]" 0.53995455514099155;
	setAttr ".wl[928].w[27]" 0.4165001008342506;
	setAttr -s 4 ".wl[929].w";
	setAttr ".wl[929].w[0]" 0.022706442689778408;
	setAttr ".wl[929].w[26]" 0.49898431567642898;
	setAttr ".wl[929].w[27]" 0.46923656556194016;
	setAttr ".wl[929].w[28]" 0.0090726760718524702;
	setAttr -s 4 ".wl[930].w";
	setAttr ".wl[930].w[0]" 0.018250948118603068;
	setAttr ".wl[930].w[26]" 0.49911777533311269;
	setAttr ".wl[930].w[27]" 0.4766195077293372;
	setAttr ".wl[930].w[28]" 0.0060117688189469656;
	setAttr -s 4 ".wl[931].w";
	setAttr ".wl[931].w[0]" 0.021554518173301462;
	setAttr ".wl[931].w[26]" 0.51961693207609772;
	setAttr ".wl[931].w[27]" 0.45303663756645596;
	setAttr ".wl[931].w[28]" 0.0057919121841449291;
	setAttr -s 4 ".wl[932].w";
	setAttr ".wl[932].w[0]" 0.018338368750407515;
	setAttr ".wl[932].w[14]" 0.0097696439170529559;
	setAttr ".wl[932].w[26]" 0.5419837851001067;
	setAttr ".wl[932].w[27]" 0.42990820223243281;
	setAttr -s 4 ".wl[933].w";
	setAttr ".wl[933].w[0]" 0.010070215314229853;
	setAttr ".wl[933].w[14]" 0.012609582945009072;
	setAttr ".wl[933].w[26]" 0.61803564010830503;
	setAttr ".wl[933].w[27]" 0.35928456163245609;
	setAttr -s 4 ".wl[934].w";
	setAttr ".wl[934].w[14]" 0.04704539415697713;
	setAttr ".wl[934].w[26]" 0.47221598933215003;
	setAttr ".wl[934].w[27]" 0.47654948488848958;
	setAttr ".wl[934].w[28]" 0.0041891316223832244;
	setAttr -s 4 ".wl[935].w";
	setAttr ".wl[935].w[0]" 0.0078842355804443973;
	setAttr ".wl[935].w[14]" 0.039373994158530747;
	setAttr ".wl[935].w[26]" 0.4763708851305124;
	setAttr ".wl[935].w[27]" 0.4763708851305124;
	setAttr -s 4 ".wl[936].w";
	setAttr ".wl[936].w[14]" 0.011497730795707754;
	setAttr ".wl[936].w[26]" 0.48991400173861255;
	setAttr ".wl[936].w[27]" 0.48991400173861255;
	setAttr ".wl[936].w[28]" 0.0086742657270671743;
	setAttr -s 4 ".wl[937].w[26:29]"  0.49112441326329026 0.49504857275761394 
		0.0073022310223047155 0.0065247829567910741;
	setAttr -s 4 ".wl[938].w[26:29]"  0.46711832895536998 0.52195806656327504 
		0.0066198126387031642 0.0043037918426518766;
	setAttr -s 4 ".wl[939].w";
	setAttr ".wl[939].w[14]" 0.0046327746126845256;
	setAttr ".wl[939].w[26]" 0.42848418452500731;
	setAttr ".wl[939].w[27]" 0.55608789294233152;
	setAttr ".wl[939].w[28]" 0.010795147919976565;
	setAttr -s 4 ".wl[940].w";
	setAttr ".wl[940].w[14]" 0.011592273800557076;
	setAttr ".wl[940].w[26]" 0.42692703162657641;
	setAttr ".wl[940].w[27]" 0.54959669510913001;
	setAttr ".wl[940].w[28]" 0.01188399946373658;
	setAttr -s 4 ".wl[941].w";
	setAttr ".wl[941].w[14]" 0.012831022328202222;
	setAttr ".wl[941].w[26]" 0.4568747941227021;
	setAttr ".wl[941].w[27]" 0.52699408941468151;
	setAttr ".wl[941].w[28]" 0.0033000941344142527;
	setAttr -s 4 ".wl[942].w";
	setAttr ".wl[942].w[14]" 0.034242810177789976;
	setAttr ".wl[942].w[26]" 0.38607301306935832;
	setAttr ".wl[942].w[27]" 0.57401535757955002;
	setAttr ".wl[942].w[28]" 0.0056688191733015912;
	setAttr -s 4 ".wl[943].w";
	setAttr ".wl[943].w[14]" 0.038941121218353338;
	setAttr ".wl[943].w[26]" 0.44865271799139389;
	setAttr ".wl[943].w[27]" 0.50257121155736051;
	setAttr ".wl[943].w[28]" 0.0098349492328920918;
	setAttr -s 4 ".wl[944].w[26:29]"  0.46310790698622772 0.5126147031042062 
		0.01240273707840807 0.011874652831157972;
	setAttr -s 4 ".wl[945].w[26:29]"  0.41593787860429454 0.568693696837962 
		0.0084603920051770903 0.0069080325525663509;
	setAttr -s 4 ".wl[946].w[26:29]"  0.35574324722779843 0.62827450695985743 
		0.010261715379240517 0.005720530433103636;
	setAttr -s 4 ".wl[947].w[26:29]"  0.32914489253353346 0.64207229270921806 
		0.021572921101768418 0.0072098936554801252;
	setAttr -s 4 ".wl[948].w";
	setAttr ".wl[948].w[14]" 0.016083747406917197;
	setAttr ".wl[948].w[26]" 0.37381780723183533;
	setAttr ".wl[948].w[27]" 0.58852971394834408;
	setAttr ".wl[948].w[28]" 0.021568731412903427;
	setAttr -s 4 ".wl[949].w";
	setAttr ".wl[949].w[14]" 0.016379335823909942;
	setAttr ".wl[949].w[26]" 0.32353341905783106;
	setAttr ".wl[949].w[27]" 0.65241994526143154;
	setAttr ".wl[949].w[28]" 0.0076672998568275029;
	setAttr -s 4 ".wl[950].w";
	setAttr ".wl[950].w[14]" 0.026987875098582199;
	setAttr ".wl[950].w[26]" 0.22346795780865628;
	setAttr ".wl[950].w[27]" 0.73991258588035724;
	setAttr ".wl[950].w[28]" 0.009631581212404209;
	setAttr -s 4 ".wl[951].w";
	setAttr ".wl[951].w[14]" 0.030554749108486268;
	setAttr ".wl[951].w[26]" 0.32672285924968475;
	setAttr ".wl[951].w[27]" 0.63009070219656704;
	setAttr ".wl[951].w[28]" 0.012631689445261917;
	setAttr -s 4 ".wl[952].w[26:29]"  0.3432310732941698 0.62191239690997391 
		0.018205567480505096 0.016650962315351181;
	setAttr -s 4 ".wl[953].w[26:29]"  0.28683085654825635 0.69511089697974993 
		0.010513135783918711 0.0075451106880750213;
	setAttr -s 4 ".wl[954].w[26:29]"  0.2591725351209157 0.71489540084892511 
		0.017861208510390122 0.0080708555197691739;
	setAttr -s 4 ".wl[955].w[26:29]"  0.26623637406505096 0.67865614324541057 
		0.043372745136026673 0.01173473755351187;
	setAttr -s 4 ".wl[956].w";
	setAttr ".wl[956].w[14]" 0.021318593233151505;
	setAttr ".wl[956].w[26]" 0.28805109445673538;
	setAttr ".wl[956].w[27]" 0.64126575129545349;
	setAttr ".wl[956].w[28]" 0.049364561014659643;
	setAttr -s 4 ".wl[957].w";
	setAttr ".wl[957].w[14]" 0.033925104237684918;
	setAttr ".wl[957].w[26]" 0.23764252102854544;
	setAttr ".wl[957].w[27]" 0.70128617021173034;
	setAttr ".wl[957].w[28]" 0.027146204522039332;
	setAttr -s 4 ".wl[958].w";
	setAttr ".wl[958].w[14]" 0.02211991319683522;
	setAttr ".wl[958].w[26]" 0.084449256476336762;
	setAttr ".wl[958].w[27]" 0.85977522609506885;
	setAttr ".wl[958].w[28]" 0.033655604231759194;
	setAttr -s 4 ".wl[959].w";
	setAttr ".wl[959].w[14]" 0.0026823796264060468;
	setAttr ".wl[959].w[26]" 0.027701852963328038;
	setAttr ".wl[959].w[27]" 0.96408713526003442;
	setAttr ".wl[959].w[28]" 0.0055286321502314838;
	setAttr -s 4 ".wl[960].w[26:29]"  0.050921521687781274 0.93376543940186463 
		0.0092832619484996652 0.0060297769618543294;
	setAttr -s 4 ".wl[961].w[26:29]"  0.067402025815559916 0.90733194465271028 
		0.017613117396680734 0.007652912135049132;
	setAttr -s 4 ".wl[962].w[26:29]"  0.11705483014732175 0.80857274379128574 
		0.059316006503590736 0.015056419557801834;
	setAttr -s 4 ".wl[963].w[26:29]"  0.14824049380558654 0.69857561635671162 
		0.13106030524923587 0.022123584588466038;
	setAttr -s 4 ".wl[964].w";
	setAttr ".wl[964].w[14]" 0.023310329523926844;
	setAttr ".wl[964].w[26]" 0.1507519025641324;
	setAttr ".wl[964].w[27]" 0.67029917791446825;
	setAttr ".wl[964].w[28]" 0.15563858999747249;
	setAttr -s 4 ".wl[965].w";
	setAttr ".wl[965].w[14]" 0.026414712662723959;
	setAttr ".wl[965].w[26]" 0.11740572115187339;
	setAttr ".wl[965].w[27]" 0.77181410728833566;
	setAttr ".wl[965].w[28]" 0.084365458897066981;
	setAttr -s 4 ".wl[966].w[26:29]"  0.011947184805454852 0.75554204575678974 
		0.22086471303824559 0.011646056399509786;
	setAttr -s 4 ".wl[967].w[26:29]"  0.00055290091826905936 0.99318231618006625 
		0.0056624182672847705 0.00060236463437995014;
	setAttr -s 4 ".wl[968].w[26:29]"  5.4453553502472184e-005 0.99909106566714212 
		0.00077475364730624885 7.9727132049264783e-005;
	setAttr -s 4 ".wl[969].w[26:29]"  0.0070582737772422379 0.88081357053284082 
		0.10380249566805318 0.0083256600218637837;
	setAttr -s 4 ".wl[970].w[26:29]"  0.023535540831399901 0.69167504908969413 
		0.26558043273290832 0.019208977345997785;
	setAttr -s 4 ".wl[971].w[26:29]"  0.038013373382251574 0.57650425094927349 
		0.36002401762715203 0.02545835804132305;
	setAttr -s 4 ".wl[972].w[26:29]"  0.036704135873622964 0.56078638527924796 
		0.37868295207938102 0.023826526767748095;
	setAttr -s 4 ".wl[973].w[26:29]"  0.025020895948154598 0.616572361003209 
		0.33988831508330886 0.018518427965327613;
	setAttr -s 4 ".wl[974].w[26:29]"  0.00036842718205705222 0.98978155969834503 
		0.0092190458196582427 0.00063096729993953238;
	setAttr -s 4 ".wl[975].w[26:29]"  3.7826344903292856e-005 0.99879140365639141 
		0.0010934457293718899 7.7324269333407946e-005;
	setAttr -s 4 ".wl[976].w[26:29]"  0.0039578168776707497 0.81217514952156544 
		0.17641347146766664 0.0074535621330971986;
	setAttr -s 4 ".wl[977].w[26:29]"  0.012733401545421047 0.61772694893232794 
		0.35169691349463539 0.017842736027615696;
	setAttr -s 4 ".wl[978].w[26:29]"  0.030149469649501787 0.52778891193172117 
		0.41549093201438203 0.026570686404395024;
	setAttr -s 4 ".wl[979].w[26:29]"  0.027410484159178818 0.51476407890018772 
		0.43390223917987297 0.023923197760760632;
	setAttr -s 4 ".wl[980].w[26:29]"  0.016042560964772912 0.53330852180127497 
		0.43242562804386891 0.018223289190083102;
	setAttr -s 4 ".wl[981].w[26:29]"  0.0067288047652681324 0.69980180563953298 
		0.2835556313598383 0.0099137582353606406;
	setAttr -s 4 ".wl[982].w[26:29]"  0.0033142553515659061 0.77171386217713778 
		0.21983560846476743 0.0051362740065288631;
	setAttr -s 4 ".wl[983].w[26:29]"  0.00013776040765075829 0.9944585618597841 
		0.0051556955802633409 0.00024798215230176798;
	setAttr -s 4 ".wl[984].w[26:29]"  2.0530830124542573e-005 0.99918466174637577 
		0.00074961996718978939 4.5187456309949786e-005;
	setAttr -s 4 ".wl[985].w[26:29]"  0.0035598016016764864 0.78565328949511881 
		0.20387574815190082 0.0069111607513039136;
	setAttr -s 4 ".wl[986].w[26:29]"  0.0095592867518923073 0.61893862222739227 
		0.35670603978352156 0.014796051237193898;
	setAttr -s 4 ".wl[987].w[26:29]"  0.01968064706885098 0.51338391379226411 
		0.44450417760779021 0.022431261531094728;
	setAttr -s 4 ".wl[988].w[26:29]"  0.022004995377627165 0.51153075678118465 
		0.44475657461093049 0.021707673230257764;
	setAttr -s 4 ".wl[989].w[26:29]"  0.0080460206250328441 0.5496595729133128 
		0.43061487535834919 0.011679531103305205;
	setAttr -s 4 ".wl[990].w";
	setAttr ".wl[990].w[5]" 0.38676456342888266;
	setAttr ".wl[990].w[8]" 0.49344578454926175;
	setAttr ".wl[990].w[9]" 0.065118327849838203;
	setAttr ".wl[990].w[16]" 0.054671324172017491;
	setAttr -s 4 ".wl[991].w";
	setAttr ".wl[991].w[5]" 0.40491118579449747;
	setAttr ".wl[991].w[8]" 0.56485130676012762;
	setAttr ".wl[991].w[9]" 0.018928777606762849;
	setAttr ".wl[991].w[16]" 0.011308729838612114;
	setAttr -s 4 ".wl[992].w";
	setAttr ".wl[992].w[8]" 0.34594490772440156;
	setAttr ".wl[992].w[9]" 0.39409780976815584;
	setAttr ".wl[992].w[10]" 0.0071434527082425694;
	setAttr ".wl[992].w[16]" 0.25281382979920003;
	setAttr -s 4 ".wl[993].w";
	setAttr ".wl[993].w[5]" 0.021073437349348686;
	setAttr ".wl[993].w[8]" 0.6066581085588314;
	setAttr ".wl[993].w[9]" 0.31357465630718295;
	setAttr ".wl[993].w[16]" 0.058693797784637007;
	setAttr -s 4 ".wl[994].w";
	setAttr ".wl[994].w[8]" 0.33684915984511421;
	setAttr ".wl[994].w[9]" 0.41287122218936467;
	setAttr ".wl[994].w[10]" 0.005391656595091443;
	setAttr ".wl[994].w[16]" 0.2448879613704297;
	setAttr -s 4 ".wl[995].w";
	setAttr ".wl[995].w[5]" 0.0054688930916901831;
	setAttr ".wl[995].w[8]" 0.4731061680915124;
	setAttr ".wl[995].w[9]" 0.4731061680915124;
	setAttr ".wl[995].w[16]" 0.048318770725285003;
	setAttr -s 4 ".wl[996].w";
	setAttr ".wl[996].w[8]" 0.36053172677631612;
	setAttr ".wl[996].w[9]" 0.41728753853643152;
	setAttr ".wl[996].w[10]" 0.0043392045631771127;
	setAttr ".wl[996].w[16]" 0.21784153012407523;
	setAttr -s 4 ".wl[997].w";
	setAttr ".wl[997].w[5]" 0.0072381461526209558;
	setAttr ".wl[997].w[8]" 0.4643185888631306;
	setAttr ".wl[997].w[9]" 0.4643185888631306;
	setAttr ".wl[997].w[16]" 0.064124676121117913;
	setAttr -s 4 ".wl[998].w";
	setAttr ".wl[998].w[8]" 0.35916441866070992;
	setAttr ".wl[998].w[9]" 0.38655106668063105;
	setAttr ".wl[998].w[10]" 0.0090828986259248248;
	setAttr ".wl[998].w[16]" 0.24520161603273427;
	setAttr -s 4 ".wl[999].w";
	setAttr ".wl[999].w[5]" 0.027210965024546025;
	setAttr ".wl[999].w[8]" 0.42987721554053943;
	setAttr ".wl[999].w[9]" 0.42987721554053931;
	setAttr ".wl[999].w[16]" 0.11303460389437525;
	setAttr -s 4 ".wl[1000].w";
	setAttr ".wl[1000].w[5]" 0.30134128350236561;
	setAttr ".wl[1000].w[8]" 0.32494715626973297;
	setAttr ".wl[1000].w[9]" 0.31367038429345973;
	setAttr ".wl[1000].w[16]" 0.060041175934441741;
	setAttr -s 4 ".wl[1001].w";
	setAttr ".wl[1001].w[5]" 0.19494439414007189;
	setAttr ".wl[1001].w[8]" 0.36981787802876231;
	setAttr ".wl[1001].w[9]" 0.36894016825303644;
	setAttr ".wl[1001].w[16]" 0.066297559578129425;
	setAttr -s 4 ".wl[1002].w";
	setAttr ".wl[1002].w[5]" 0.14382136543099341;
	setAttr ".wl[1002].w[8]" 0.48822482232610753;
	setAttr ".wl[1002].w[9]" 0.33199928314532201;
	setAttr ".wl[1002].w[16]" 0.035954529097577008;
	setAttr -s 4 ".wl[1003].w";
	setAttr ".wl[1003].w[5]" 0.085516289704732948;
	setAttr ".wl[1003].w[8]" 0.50490666730114664;
	setAttr ".wl[1003].w[9]" 0.37475244775558619;
	setAttr ".wl[1003].w[16]" 0.034824595238534269;
	setAttr -s 4 ".wl[1004].w";
	setAttr ".wl[1004].w[5]" 0.15516030626425126;
	setAttr ".wl[1004].w[8]" 0.74759118320092099;
	setAttr ".wl[1004].w[9]" 0.083721530849976453;
	setAttr ".wl[1004].w[16]" 0.013526979684851332;
	setAttr -s 4 ".wl[1005].w";
	setAttr ".wl[1005].w[5]" 0.076574718452596946;
	setAttr ".wl[1005].w[8]" 0.82799590902111164;
	setAttr ".wl[1005].w[9]" 0.08272231948029804;
	setAttr ".wl[1005].w[16]" 0.01270705304599321;
	setAttr -s 4 ".wl[1006].w";
	setAttr ".wl[1006].w[5]" 0.36382213819152687;
	setAttr ".wl[1006].w[8]" 0.63560222344120931;
	setAttr ".wl[1006].w[9]" 0.00041341119373156218;
	setAttr ".wl[1006].w[16]" 0.0001622271735321919;
	setAttr -s 4 ".wl[1007].w";
	setAttr ".wl[1007].w[5]" 0.39338124002721192;
	setAttr ".wl[1007].w[8]" 0.60529901049618096;
	setAttr ".wl[1007].w[9]" 0.0009347425740591648;
	setAttr ".wl[1007].w[16]" 0.00038500690254799068;
	setAttr -s 4 ".wl[1008].w";
	setAttr ".wl[1008].w[5]" 0.16575017008806631;
	setAttr ".wl[1008].w[8]" 0.38970102613333812;
	setAttr ".wl[1008].w[9]" 0.38602379040038204;
	setAttr ".wl[1008].w[16]" 0.058525013378213628;
	setAttr -s 4 ".wl[1009].w";
	setAttr ".wl[1009].w[5]" 0.23341043355914798;
	setAttr ".wl[1009].w[8]" 0.36609833414357296;
	setAttr ".wl[1009].w[9]" 0.34665387160080052;
	setAttr ".wl[1009].w[16]" 0.053837360696478639;
	setAttr -s 4 ".wl[1010].w";
	setAttr ".wl[1010].w[5]" 0.4551785275186328;
	setAttr ".wl[1010].w[6]" 0.0049735723804714771;
	setAttr ".wl[1010].w[8]" 0.45517852751863269;
	setAttr ".wl[1010].w[17]" 0.084669372582263022;
	setAttr -s 4 ".wl[1011].w";
	setAttr ".wl[1011].w[5]" 0.37773044939843015;
	setAttr ".wl[1011].w[8]" 0.61624946791821911;
	setAttr ".wl[1011].w[9]" 0.0041064377246539984;
	setAttr ".wl[1011].w[16]" 0.0019136449586968111;
	setAttr -s 4 ".wl[1012].w";
	setAttr ".wl[1012].w[5]" 0.023189354630656626;
	setAttr ".wl[1012].w[8]" 0.81832093647691495;
	setAttr ".wl[1012].w[9]" 0.1417648736352447;
	setAttr ".wl[1012].w[16]" 0.016724835257183716;
	setAttr -s 4 ".wl[1013].w";
	setAttr ".wl[1013].w[5]" 0.014820409455258499;
	setAttr ".wl[1013].w[8]" 0.48925138893483922;
	setAttr ".wl[1013].w[9]" 0.46884131937912837;
	setAttr ".wl[1013].w[16]" 0.027086882230773955;
	setAttr -s 4 ".wl[1014].w";
	setAttr ".wl[1014].w[5]" 0.095194008225493537;
	setAttr ".wl[1014].w[8]" 0.40949498415176006;
	setAttr ".wl[1014].w[9]" 0.40949498415176006;
	setAttr ".wl[1014].w[16]" 0.085816023470986366;
	setAttr -s 4 ".wl[1015].w";
	setAttr ".wl[1015].w[5]" 0.034711260875410675;
	setAttr ".wl[1015].w[8]" 0.45692792596261905;
	setAttr ".wl[1015].w[9]" 0.45692792596261894;
	setAttr ".wl[1015].w[16]" 0.051432887199351379;
	setAttr -s 4 ".wl[1016].w";
	setAttr ".wl[1016].w[0]" 0.47559339069871864;
	setAttr ".wl[1016].w[14]" 0.0074857135883647941;
	setAttr ".wl[1016].w[26]" 0.4858091080441117;
	setAttr ".wl[1016].w[27]" 0.031111787668804885;
	setAttr -s 4 ".wl[1017].w";
	setAttr ".wl[1017].w[0]" 0.48026615198319689;
	setAttr ".wl[1017].w[14]" 0.0078956859239024541;
	setAttr ".wl[1017].w[26]" 0.4819092129205465;
	setAttr ".wl[1017].w[27]" 0.029928949172354221;
	setAttr -s 4 ".wl[1018].w";
	setAttr ".wl[1018].w[0]" 0.4910791692597361;
	setAttr ".wl[1018].w[14]" 0.0041652372699792122;
	setAttr ".wl[1018].w[26]" 0.49223865264196637;
	setAttr ".wl[1018].w[27]" 0.012516940828318321;
	setAttr -s 4 ".wl[1019].w";
	setAttr ".wl[1019].w[0]" 0.48098950378771665;
	setAttr ".wl[1019].w[1]" 0.027595388083447043;
	setAttr ".wl[1019].w[26]" 0.48098950378771654;
	setAttr ".wl[1019].w[30]" 0.010425604341119773;
	setAttr -s 4 ".wl[1020].w";
	setAttr ".wl[1020].w[0]" 0.49436420917597806;
	setAttr ".wl[1020].w[1]" 0.0089781113086650974;
	setAttr ".wl[1020].w[26]" 0.49436420917597806;
	setAttr ".wl[1020].w[30]" 0.0022934703393788585;
	setAttr -s 4 ".wl[1021].w";
	setAttr ".wl[1021].w[0]" 0.49293633440211249;
	setAttr ".wl[1021].w[1]" 0.011197647927891526;
	setAttr ".wl[1021].w[15]" 0.0029296832678834075;
	setAttr ".wl[1021].w[26]" 0.49293633440211249;
	setAttr -s 4 ".wl[1022].w";
	setAttr ".wl[1022].w[0]" 0.4938330629012313;
	setAttr ".wl[1022].w[1]" 0.010510578153049297;
	setAttr ".wl[1022].w[15]" 0.0018232960444881454;
	setAttr ".wl[1022].w[26]" 0.4938330629012313;
	setAttr -s 4 ".wl[1023].w";
	setAttr ".wl[1023].w[0]" 0.49051121000372133;
	setAttr ".wl[1023].w[1]" 0.015424541892097972;
	setAttr ".wl[1023].w[15]" 0.0035530381004594074;
	setAttr ".wl[1023].w[26]" 0.49051121000372133;
	setAttr -s 4 ".wl[1024].w";
	setAttr ".wl[1024].w[0]" 0.46172257673843742;
	setAttr ".wl[1024].w[1]" 0.066681731865338753;
	setAttr ".wl[1024].w[15]" 0.0098731146577864387;
	setAttr ".wl[1024].w[26]" 0.46172257673843742;
	setAttr -s 4 ".wl[1025].w";
	setAttr ".wl[1025].w[0]" 0.45895589246515445;
	setAttr ".wl[1025].w[1]" 0.07164848447521116;
	setAttr ".wl[1025].w[15]" 0.01043973059447984;
	setAttr ".wl[1025].w[26]" 0.45895589246515445;
	setAttr -s 4 ".wl[1026].w";
	setAttr ".wl[1026].w[0]" 0.45067880996760912;
	setAttr ".wl[1026].w[1]" 0.1811241735990588;
	setAttr ".wl[1026].w[26]" 0.3405006347350113;
	setAttr ".wl[1026].w[30]" 0.027696381698320924;
	setAttr -s 4 ".wl[1027].w";
	setAttr ".wl[1027].w[0]" 0.44593871182397282;
	setAttr ".wl[1027].w[1]" 0.18941283994157349;
	setAttr ".wl[1027].w[26]" 0.33642039229329118;
	setAttr ".wl[1027].w[30]" 0.028228055941162577;
	setAttr -s 4 ".wl[1028].w";
	setAttr ".wl[1028].w[0]" 0.45084472613558957;
	setAttr ".wl[1028].w[1]" 0.063920689811007902;
	setAttr ".wl[1028].w[26]" 0.45084472613558946;
	setAttr ".wl[1028].w[30]" 0.034389857917813106;
	setAttr -s 4 ".wl[1029].w";
	setAttr ".wl[1029].w[0]" 0.47957030823447699;
	setAttr ".wl[1029].w[1]" 0.030221495646162364;
	setAttr ".wl[1029].w[26]" 0.47957030823447699;
	setAttr ".wl[1029].w[30]" 0.010637887884883727;
	setAttr -s 4 ".wl[1030].w";
	setAttr ".wl[1030].w[0]" 0.49098370758903886;
	setAttr ".wl[1030].w[1]" 0.014799480951809194;
	setAttr ".wl[1030].w[26]" 0.49098370758903886;
	setAttr ".wl[1030].w[30]" 0.0032331038701131107;
	setAttr -s 4 ".wl[1031].w";
	setAttr ".wl[1031].w[0]" 0.48214509288507285;
	setAttr ".wl[1031].w[1]" 0.029156502890256984;
	setAttr ".wl[1031].w[15]" 0.0065533113395970042;
	setAttr ".wl[1031].w[26]" 0.48214509288507307;
	setAttr -s 4 ".wl[1032].w";
	setAttr ".wl[1032].w[0]" 0.44606775867449178;
	setAttr ".wl[1032].w[1]" 0.09683341559429226;
	setAttr ".wl[1032].w[26]" 0.44606775867449178;
	setAttr ".wl[1032].w[30]" 0.01103106705672427;
	setAttr -s 4 ".wl[1033].w";
	setAttr ".wl[1033].w[0]" 0.41384759170342478;
	setAttr ".wl[1033].w[1]" 0.23813054889377766;
	setAttr ".wl[1033].w[26]" 0.31850957752293202;
	setAttr ".wl[1033].w[30]" 0.029512281879865564;
	setAttr -s 4 ".wl[1034].w";
	setAttr ".wl[1034].w[0]" 0.43232176812037987;
	setAttr ".wl[1034].w[1]" 0.099570828842478643;
	setAttr ".wl[1034].w[26]" 0.43232176812037987;
	setAttr ".wl[1034].w[30]" 0.035785634916761636;
	setAttr -s 4 ".wl[1035].w";
	setAttr ".wl[1035].w[0]" 0.40755636814810337;
	setAttr ".wl[1035].w[1]" 0.1509553348896738;
	setAttr ".wl[1035].w[26]" 0.40755636814810359;
	setAttr ".wl[1035].w[30]" 0.033931928814119112;
	setAttr -s 4 ".wl[1036].w";
	setAttr ".wl[1036].w[0]" 0.47110816938794992;
	setAttr ".wl[1036].w[1]" 0.046502177201480123;
	setAttr ".wl[1036].w[26]" 0.4711081693879498;
	setAttr ".wl[1036].w[30]" 0.011281484022620218;
	setAttr -s 4 ".wl[1037].w";
	setAttr ".wl[1037].w[0]" 0.47923421396454013;
	setAttr ".wl[1037].w[1]" 0.034361240941265254;
	setAttr ".wl[1037].w[15]" 0.0071703311296546493;
	setAttr ".wl[1037].w[26]" 0.47923421396454002;
	setAttr -s 4 ".wl[1038].w";
	setAttr ".wl[1038].w[0]" 0.46441949280802974;
	setAttr ".wl[1038].w[1]" 0.057752632189961794;
	setAttr ".wl[1038].w[15]" 0.013408382193978855;
	setAttr ".wl[1038].w[26]" 0.46441949280802963;
	setAttr -s 4 ".wl[1039].w";
	setAttr ".wl[1039].w[0]" 0.40788577155749461;
	setAttr ".wl[1039].w[1]" 0.16676467639091994;
	setAttr ".wl[1039].w[15]" 0.017463780494090864;
	setAttr ".wl[1039].w[26]" 0.40788577155749461;
	setAttr -s 4 ".wl[1040].w";
	setAttr ".wl[1040].w[0]" 0.34014592386331216;
	setAttr ".wl[1040].w[1]" 0.33906535817336897;
	setAttr ".wl[1040].w[26]" 0.28512422146809613;
	setAttr ".wl[1040].w[30]" 0.035664496495222783;
	setAttr -s 4 ".wl[1041].w";
	setAttr ".wl[1041].w[8]" 0.015350340926142481;
	setAttr ".wl[1041].w[9]" 0.82600993302894321;
	setAttr ".wl[1041].w[10]" 0.054632185261653574;
	setAttr ".wl[1041].w[16]" 0.1040075407832608;
	setAttr -s 4 ".wl[1042].w";
	setAttr ".wl[1042].w[0]" 0.03258306498593725;
	setAttr ".wl[1042].w[26]" 0.51341946514435655;
	setAttr ".wl[1042].w[27]" 0.44705779885540603;
	setAttr ".wl[1042].w[28]" 0.0069396710143002031;
	setAttr -s 4 ".wl[1043].w";
	setAttr ".wl[1043].w[0]" 0.04249968592547395;
	setAttr ".wl[1043].w[26]" 0.52189035181061083;
	setAttr ".wl[1043].w[27]" 0.42533819583318422;
	setAttr ".wl[1043].w[28]" 0.010271766430731051;
	setAttr -s 4 ".wl[1044].w";
	setAttr ".wl[1044].w[0]" 0.06090033257177585;
	setAttr ".wl[1044].w[14]" 0.017875355038807352;
	setAttr ".wl[1044].w[26]" 0.59798588624891658;
	setAttr ".wl[1044].w[27]" 0.3232384261405003;
	setAttr -s 4 ".wl[1045].w";
	setAttr ".wl[1045].w[0]" 0.092911486269842872;
	setAttr ".wl[1045].w[14]" 0.035414999404126929;
	setAttr ".wl[1045].w[26]" 0.66915291125039622;
	setAttr ".wl[1045].w[27]" 0.20252060307563391;
	setAttr -s 4 ".wl[1046].w";
	setAttr ".wl[1046].w[0]" 0.053587939676194407;
	setAttr ".wl[1046].w[14]" 0.023081828350391537;
	setAttr ".wl[1046].w[26]" 0.80618650453919838;
	setAttr ".wl[1046].w[27]" 0.1171437274342156;
	setAttr -s 4 ".wl[1047].w";
	setAttr ".wl[1047].w[0]" 0.03621494870071134;
	setAttr ".wl[1047].w[14]" 0.01261698940799973;
	setAttr ".wl[1047].w[26]" 0.78777626071972984;
	setAttr ".wl[1047].w[27]" 0.16339180117155908;
	setAttr -s 4 ".wl[1048].w";
	setAttr ".wl[1048].w[0]" 0.046957186330563283;
	setAttr ".wl[1048].w[14]" 0.01372410933991613;
	setAttr ".wl[1048].w[26]" 0.59776628562576661;
	setAttr ".wl[1048].w[27]" 0.34155241870375397;
	setAttr -s 4 ".wl[1049].w";
	setAttr ".wl[1049].w[0]" 0.04595443075255741;
	setAttr ".wl[1049].w[26]" 0.56068205579564412;
	setAttr ".wl[1049].w[27]" 0.38729372154338054;
	setAttr ".wl[1049].w[28]" 0.0060697919084178424;
	setAttr -s 4 ".wl[1050].w";
	setAttr ".wl[1050].w[0]" 0.1074767750926357;
	setAttr ".wl[1050].w[14]" 0.018901502207833428;
	setAttr ".wl[1050].w[26]" 0.61259658172168685;
	setAttr ".wl[1050].w[27]" 0.26102514097784407;
	setAttr -s 4 ".wl[1051].w";
	setAttr ".wl[1051].w[0]" 0.13153076987991891;
	setAttr ".wl[1051].w[14]" 0.010959406463280441;
	setAttr ".wl[1051].w[26]" 0.78848239560798628;
	setAttr ".wl[1051].w[27]" 0.069027428048814343;
	setAttr -s 4 ".wl[1052].w";
	setAttr ".wl[1052].w[0]" 0.17288111922227012;
	setAttr ".wl[1052].w[14]" 0.0068593922185358862;
	setAttr ".wl[1052].w[26]" 0.79591027091705979;
	setAttr ".wl[1052].w[27]" 0.024349217642134238;
	setAttr -s 4 ".wl[1053].w";
	setAttr ".wl[1053].w[0]" 0.18018663437124999;
	setAttr ".wl[1053].w[14]" 0.021989917676213139;
	setAttr ".wl[1053].w[26]" 0.69217929367311071;
	setAttr ".wl[1053].w[27]" 0.10564415427942622;
	setAttr -s 4 ".wl[1054].w";
	setAttr ".wl[1054].w[0]" 0.12309883962275099;
	setAttr ".wl[1054].w[14]" 0.018881179037846581;
	setAttr ".wl[1054].w[26]" 0.6313296560852919;
	setAttr ".wl[1054].w[27]" 0.22669032525411059;
	setAttr -s 4 ".wl[1055].w";
	setAttr ".wl[1055].w[0]" 0.084243390933457757;
	setAttr ".wl[1055].w[14]" 0.013099758148245875;
	setAttr ".wl[1055].w[26]" 0.54559460622146727;
	setAttr ".wl[1055].w[27]" 0.35706224469682918;
	setAttr -s 4 ".wl[1056].w";
	setAttr ".wl[1056].w[0]" 0.38152805639991683;
	setAttr ".wl[1056].w[14]" 0.010542020811133562;
	setAttr ".wl[1056].w[26]" 0.54841430909960587;
	setAttr ".wl[1056].w[27]" 0.059515613689343834;
	setAttr -s 4 ".wl[1057].w";
	setAttr ".wl[1057].w[0]" 0.36318605332858611;
	setAttr ".wl[1057].w[14]" 0.016942789017181638;
	setAttr ".wl[1057].w[26]" 0.51919733845110105;
	setAttr ".wl[1057].w[27]" 0.10067381920313127;
	setAttr -s 4 ".wl[1058].w";
	setAttr ".wl[1058].w[0]" 0.37724970610021064;
	setAttr ".wl[1058].w[15]" 0.005291444975893427;
	setAttr ".wl[1058].w[26]" 0.59663992564173096;
	setAttr ".wl[1058].w[27]" 0.020818923282164926;
	setAttr -s 4 ".wl[1059].w";
	setAttr ".wl[1059].w[0]" 0.42788079071445367;
	setAttr ".wl[1059].w[15]" 0.0012088714153948128;
	setAttr ".wl[1059].w[26]" 0.56746169289558512;
	setAttr ".wl[1059].w[27]" 0.00344864497456645;
	setAttr -s 4 ".wl[1060].w";
	setAttr ".wl[1060].w[0]" 0.42122386474483792;
	setAttr ".wl[1060].w[14]" 0.0068436109828527306;
	setAttr ".wl[1060].w[26]" 0.5464844687981365;
	setAttr ".wl[1060].w[27]" 0.0254480554741729;
	setAttr -s 4 ".wl[1061].w";
	setAttr ".wl[1061].w[0]" 0.4544386119257674;
	setAttr ".wl[1061].w[14]" 0.0027031209425176974;
	setAttr ".wl[1061].w[26]" 0.5356010253454353;
	setAttr ".wl[1061].w[27]" 0.0072572417862796536;
	setAttr -s 4 ".wl[1062].w";
	setAttr ".wl[1062].w[0]" 0.29568156233981757;
	setAttr ".wl[1062].w[14]" 0.012569818898468494;
	setAttr ".wl[1062].w[26]" 0.63679976299012098;
	setAttr ".wl[1062].w[27]" 0.054948855771592843;
	setAttr -s 4 ".wl[1063].w";
	setAttr ".wl[1063].w[0]" 0.24191891038279892;
	setAttr ".wl[1063].w[14]" 0.01572257279612815;
	setAttr ".wl[1063].w[26]" 0.61856615236935231;
	setAttr ".wl[1063].w[27]" 0.12379236445172072;
	setAttr -s 4 ".wl[1064].w";
	setAttr ".wl[1064].w[0]" 0.21336047934130717;
	setAttr ".wl[1064].w[14]" 0.015738733158683672;
	setAttr ".wl[1064].w[26]" 0.56912797455470776;
	setAttr ".wl[1064].w[27]" 0.20177281294530133;
	setAttr -s 4 ".wl[1065].w";
	setAttr ".wl[1065].w[0]" 0.30821519659314972;
	setAttr ".wl[1065].w[14]" 0.0057811747081817104;
	setAttr ".wl[1065].w[26]" 0.66697612380218141;
	setAttr ".wl[1065].w[27]" 0.019027504896487159;
	setAttr -s 4 ".wl[1066].w";
	setAttr ".wl[1066].w[8]" 0.049989922801868161;
	setAttr ".wl[1066].w[9]" 0.60925913419670163;
	setAttr ".wl[1066].w[10]" 0.031911516524264487;
	setAttr ".wl[1066].w[16]" 0.30883942647716567;
	setAttr -s 4 ".wl[1067].w";
	setAttr ".wl[1067].w[8]" 0.045824263580341668;
	setAttr ".wl[1067].w[9]" 0.63090308000108586;
	setAttr ".wl[1067].w[10]" 0.026648636462508247;
	setAttr ".wl[1067].w[16]" 0.29662401995606424;
	setAttr -s 4 ".wl[1068].w";
	setAttr ".wl[1068].w[8]" 0.050949726414895341;
	setAttr ".wl[1068].w[9]" 0.59276864884007463;
	setAttr ".wl[1068].w[10]" 0.033922228833202908;
	setAttr ".wl[1068].w[16]" 0.32235939591182705;
	setAttr -s 4 ".wl[1069].w";
	setAttr ".wl[1069].w[8]" 0.078260604825057548;
	setAttr ".wl[1069].w[9]" 0.52265726829450598;
	setAttr ".wl[1069].w[10]" 0.065166489856979468;
	setAttr ".wl[1069].w[16]" 0.333915637023457;
	setAttr -s 4 ".wl[1070].w";
	setAttr ".wl[1070].w[5]" 0.1473337540397186;
	setAttr ".wl[1070].w[8]" 0.54966964508559513;
	setAttr ".wl[1070].w[9]" 0.1729833460385394;
	setAttr ".wl[1070].w[16]" 0.13001325483614692;
	setAttr -s 4 ".wl[1071].w";
	setAttr ".wl[1071].w[5]" 0.12853862408317035;
	setAttr ".wl[1071].w[8]" 0.76350457776708647;
	setAttr ".wl[1071].w[9]" 0.075599689902404288;
	setAttr ".wl[1071].w[16]" 0.032357108247338916;
	setAttr -s 4 ".wl[1072].w";
	setAttr ".wl[1072].w[5]" 0.15105588986660581;
	setAttr ".wl[1072].w[8]" 0.83451670768191255;
	setAttr ".wl[1072].w[9]" 0.011296687341759194;
	setAttr ".wl[1072].w[16]" 0.0031307151097225115;
	setAttr -s 4 ".wl[1073].w";
	setAttr ".wl[1073].w[5]" 0.13812040288373842;
	setAttr ".wl[1073].w[8]" 0.8505159425433183;
	setAttr ".wl[1073].w[9]" 0.0089995153802710399;
	setAttr ".wl[1073].w[16]" 0.002364139192672329;
	setAttr -s 4 ".wl[1074].w";
	setAttr ".wl[1074].w[5]" 0.10274715122801148;
	setAttr ".wl[1074].w[8]" 0.86895219900005494;
	setAttr ".wl[1074].w[9]" 0.021733778586082806;
	setAttr ".wl[1074].w[16]" 0.0065668711858508054;
	setAttr -s 4 ".wl[1075].w";
	setAttr ".wl[1075].w[8]" 0.091939326446601286;
	setAttr ".wl[1075].w[9]" 0.52796589473536581;
	setAttr ".wl[1075].w[10]" 0.044720361701873809;
	setAttr ".wl[1075].w[16]" 0.33537441711615912;
	setAttr -s 4 ".wl[1076].w";
	setAttr ".wl[1076].w[8]" 0.03306925164285357;
	setAttr ".wl[1076].w[9]" 0.71598766798841029;
	setAttr ".wl[1076].w[10]" 0.068720395103030921;
	setAttr ".wl[1076].w[16]" 0.1822226852657052;
	setAttr -s 4 ".wl[1077].w";
	setAttr ".wl[1077].w[5]" 0.36271590781974095;
	setAttr ".wl[1077].w[8]" 0.36271590781974095;
	setAttr ".wl[1077].w[16]" 0.043909708327622282;
	setAttr ".wl[1077].w[17]" 0.2306584760328958;
	setAttr -s 4 ".wl[1078].w";
	setAttr ".wl[1078].w[8]" 0.29750757872289557;
	setAttr ".wl[1078].w[9]" 0.33105991052407857;
	setAttr ".wl[1078].w[16]" 0.3125045331749432;
	setAttr ".wl[1078].w[25]" 0.058927977578082665;
	setAttr -s 4 ".wl[1079].w";
	setAttr ".wl[1079].w[5]" 0.28983763002985991;
	setAttr ".wl[1079].w[8]" 0.37557644494987946;
	setAttr ".wl[1079].w[9]" 0.17040799033098675;
	setAttr ".wl[1079].w[16]" 0.16417793468927383;
	setAttr -s 4 ".wl[1080].w";
	setAttr ".wl[1080].w[8]" 0.11936143010776604;
	setAttr ".wl[1080].w[9]" 0.44049473720957011;
	setAttr ".wl[1080].w[10]" 0.013254632346427778;
	setAttr ".wl[1080].w[16]" 0.42688920033623612;
	setAttr -s 4 ".wl[1081].w";
	setAttr ".wl[1081].w[8]" 0.13712247069169678;
	setAttr ".wl[1081].w[9]" 0.4408256034349915;
	setAttr ".wl[1081].w[10]" 0.016509981757949321;
	setAttr ".wl[1081].w[16]" 0.40554194411536254;
	setAttr -s 4 ".wl[1082].w";
	setAttr ".wl[1082].w[8]" 0.12679793789676219;
	setAttr ".wl[1082].w[9]" 0.43077628309368576;
	setAttr ".wl[1082].w[10]" 0.011649495915866356;
	setAttr ".wl[1082].w[16]" 0.43077628309368576;
	setAttr -s 4 ".wl[1083].w";
	setAttr ".wl[1083].w[8]" 0.18038412164917678;
	setAttr ".wl[1083].w[9]" 0.39993657605472177;
	setAttr ".wl[1083].w[10]" 0.019762479819425579;
	setAttr ".wl[1083].w[16]" 0.39991682247667593;
	setAttr -s 4 ".wl[1084].w";
	setAttr ".wl[1084].w[8]" 0.32815227198892238;
	setAttr ".wl[1084].w[9]" 0.33169269266205681;
	setAttr ".wl[1084].w[10]" 0.026439681489004069;
	setAttr ".wl[1084].w[16]" 0.31371535386001664;
	setAttr -s 4 ".wl[1085].w";
	setAttr ".wl[1085].w[8]" 0.037144051057009755;
	setAttr ".wl[1085].w[9]" 0.68188497380213142;
	setAttr ".wl[1085].w[10]" 0.067648109587582383;
	setAttr ".wl[1085].w[16]" 0.21332286555327645;
	setAttr -s 4 ".wl[1086].w";
	setAttr ".wl[1086].w[0]" 0.44861719995692562;
	setAttr ".wl[1086].w[1]" 0.086848441173033017;
	setAttr ".wl[1086].w[26]" 0.44861719995692584;
	setAttr ".wl[1086].w[30]" 0.015917158913115421;
	setAttr -s 4 ".wl[1087].w";
	setAttr ".wl[1087].w[0]" 0.45295018503174178;
	setAttr ".wl[1087].w[1]" 0.077419737560042695;
	setAttr ".wl[1087].w[15]" 0.016679892376473791;
	setAttr ".wl[1087].w[26]" 0.45295018503174178;
	setAttr -s 4 ".wl[1088].w";
	setAttr ".wl[1088].w[0]" 0.41997985775928603;
	setAttr ".wl[1088].w[1]" 0.12307463865614943;
	setAttr ".wl[1088].w[16]" 0.036965645825278594;
	setAttr ".wl[1088].w[26]" 0.41997985775928603;
	setAttr -s 4 ".wl[1089].w";
	setAttr ".wl[1089].w[0]" 0.34617496836242495;
	setAttr ".wl[1089].w[1]" 0.23464582911712165;
	setAttr ".wl[1089].w[16]" 0.073004234158028453;
	setAttr ".wl[1089].w[26]" 0.34617496836242495;
	setAttr -s 4 ".wl[1090].w[0:3]"  0.27507721118920681 0.29962326371221909 
		0.2681791717413966 0.15712035335717739;
	setAttr -s 4 ".wl[1091].w";
	setAttr ".wl[1091].w[9]" 0.57039025687198341;
	setAttr ".wl[1091].w[10]" 0.17120711989253087;
	setAttr ".wl[1091].w[15]" 0.07237442739420924;
	setAttr ".wl[1091].w[16]" 0.18602819584127642;
	setAttr -s 4 ".wl[1092].w";
	setAttr ".wl[1092].w[0]" 0.41055409623772759;
	setAttr ".wl[1092].w[1]" 0.13513369419786636;
	setAttr ".wl[1092].w[16]" 0.04375811332667856;
	setAttr ".wl[1092].w[26]" 0.41055409623772759;
	setAttr -s 4 ".wl[1093].w";
	setAttr ".wl[1093].w[5]" 0.24296203997880664;
	setAttr ".wl[1093].w[8]" 0.31760313051470312;
	setAttr ".wl[1093].w[9]" 0.31605028756738485;
	setAttr ".wl[1093].w[16]" 0.12338454193910543;
	setAttr -s 4 ".wl[1094].w";
	setAttr ".wl[1094].w[5]" 0.12257926919054707;
	setAttr ".wl[1094].w[8]" 0.37762821147820053;
	setAttr ".wl[1094].w[9]" 0.37762821147820053;
	setAttr ".wl[1094].w[16]" 0.12216430785305196;
	setAttr -s 4 ".wl[1095].w";
	setAttr ".wl[1095].w[5]" 0.080340128909075284;
	setAttr ".wl[1095].w[8]" 0.38082445556423422;
	setAttr ".wl[1095].w[9]" 0.38082445556423422;
	setAttr ".wl[1095].w[16]" 0.15801095996245623;
	setAttr -s 4 ".wl[1096].w";
	setAttr ".wl[1096].w[8]" 0.36020790632029814;
	setAttr ".wl[1096].w[9]" 0.36591374253544817;
	setAttr ".wl[1096].w[10]" 0.018595179758192887;
	setAttr ".wl[1096].w[16]" 0.25528317138606088;
	setAttr -s 4 ".wl[1097].w";
	setAttr ".wl[1097].w[8]" 0.25721836246948387;
	setAttr ".wl[1097].w[9]" 0.35818293516222888;
	setAttr ".wl[1097].w[10]" 0.03386410400940499;
	setAttr ".wl[1097].w[16]" 0.35073459835888232;
	setAttr -s 4 ".wl[1098].w";
	setAttr ".wl[1098].w[8]" 0.16339854052943295;
	setAttr ".wl[1098].w[9]" 0.3943574804511038;
	setAttr ".wl[1098].w[10]" 0.063981851979085208;
	setAttr ".wl[1098].w[16]" 0.37826212704037804;
	setAttr -s 4 ".wl[1099].w";
	setAttr ".wl[1099].w[8]" 0.10066221191625317;
	setAttr ".wl[1099].w[9]" 0.46962796364407239;
	setAttr ".wl[1099].w[10]" 0.13371407016204132;
	setAttr ".wl[1099].w[16]" 0.29599575427763319;
	setAttr -s 4 ".wl[1100].w";
	setAttr ".wl[1100].w[0]" 0.4129881624612457;
	setAttr ".wl[1100].w[1]" 0.14508770026909212;
	setAttr ".wl[1100].w[16]" 0.028935974808416549;
	setAttr ".wl[1100].w[26]" 0.4129881624612457;
	setAttr -s 4 ".wl[1101].w";
	setAttr ".wl[1101].w[9]" 0.51194541255045212;
	setAttr ".wl[1101].w[10]" 0.1543208106836641;
	setAttr ".wl[1101].w[15]" 0.093636707891481402;
	setAttr ".wl[1101].w[16]" 0.24009706887440246;
	setAttr -s 4 ".wl[1102].w";
	setAttr ".wl[1102].w[0]" 0.34478200564493688;
	setAttr ".wl[1102].w[1]" 0.25924693065075199;
	setAttr ".wl[1102].w[16]" 0.051189058059374209;
	setAttr ".wl[1102].w[26]" 0.34478200564493688;
	setAttr -s 4 ".wl[1103].w";
	setAttr ".wl[1103].w[5]" 0.27023500399777711;
	setAttr ".wl[1103].w[8]" 0.72941668103143187;
	setAttr ".wl[1103].w[9]" 0.00025213468362778751;
	setAttr ".wl[1103].w[16]" 9.6180287163151633e-005;
	setAttr -s 4 ".wl[1104].w";
	setAttr ".wl[1104].w[5]" 0.12736895376067864;
	setAttr ".wl[1104].w[8]" 0.86200595239857269;
	setAttr ".wl[1104].w[9]" 0.0084615651240717328;
	setAttr ".wl[1104].w[16]" 0.0021635287166770017;
	setAttr -s 4 ".wl[1105].w";
	setAttr ".wl[1105].w[5]" 0.1757782042970778;
	setAttr ".wl[1105].w[8]" 0.7326783134075;
	setAttr ".wl[1105].w[9]" 0.079504657041413337;
	setAttr ".wl[1105].w[16]" 0.012038825254008909;
	setAttr -s 4 ".wl[1106].w";
	setAttr ".wl[1106].w[5]" 0.18146281954454188;
	setAttr ".wl[1106].w[8]" 0.48558735015596799;
	setAttr ".wl[1106].w[9]" 0.30038259997284694;
	setAttr ".wl[1106].w[16]" 0.032567230326643215;
	setAttr -s 4 ".wl[1107].w";
	setAttr ".wl[1107].w[5]" 0.3214493387950999;
	setAttr ".wl[1107].w[8]" 0.33460005971242662;
	setAttr ".wl[1107].w[9]" 0.29583372357153886;
	setAttr ".wl[1107].w[16]" 0.048116877920934595;
	setAttr -s 4 ".wl[1108].w[5:8]"  0.29174880358384503 0.29176997433295254 
		0.17995680214975196 0.23652441993345041;
	setAttr -s 4 ".wl[1109].w";
	setAttr ".wl[1109].w[5]" 0.35861112220762031;
	setAttr ".wl[1109].w[8]" 0.64012911351103075;
	setAttr ".wl[1109].w[9]" 0.0009308057702018238;
	setAttr ".wl[1109].w[16]" 0.00032895851114720596;
	setAttr -s 4 ".wl[1110].w";
	setAttr ".wl[1110].w[5]" 0.2646319962199572;
	setAttr ".wl[1110].w[8]" 0.7231747698715304;
	setAttr ".wl[1110].w[9]" 0.0095705165553042985;
	setAttr ".wl[1110].w[16]" 0.0026227173532081781;
	setAttr -s 4 ".wl[1111].w[5:8]"  0.30137518921124762 0.30618933072756033 
		0.11108219223243918 0.28135328782875291;
	setAttr -s 4 ".wl[1112].w[5:8]"  0.32325348476127258 0.33846419800227517 
		0.16664411769606063 0.17163819954039161;
	setAttr -s 4 ".wl[1113].w[5:8]"  0.31643744134888346 0.35242822479527802 
		0.23440839333278149 0.096725940523057038;
	setAttr -s 4 ".wl[1114].w[5:8]"  0.31031155659633786 0.34694359600816777 
		0.25606666064593708 0.086678186749557351;
	setAttr -s 4 ".wl[1115].w[5:8]"  0.050307310331794593 0.19894975665763429 
		0.71629736243517983 0.034445570575391361;
	setAttr -s 4 ".wl[1116].w[5:8]"  0.067173805787765994 0.2223089056875458 
		0.65707348123743825 0.053443807287249963;
	setAttr -s 4 ".wl[1117].w[5:8]"  0.050626816152342671 0.18677698272164744 
		0.72717967188700594 0.035416529239003958;
	setAttr -s 4 ".wl[1118].w[5:8]"  0.052522828739988432 0.19455677402193758 
		0.71514508767390861 0.03777530956416545;
	setAttr -s 4 ".wl[1119].w[5:8]"  0.05065214803817758 0.19514403127302829 
		0.71873437432934328 0.035469446359450887;
	setAttr -s 4 ".wl[1120].w[5:8]"  0.044697825353247511 0.17747037826320675 
		0.74759348173336571 0.030238314650180037;
	setAttr -s 4 ".wl[1121].w[5:8]"  0.060393491482709394 0.20914056938879141 
		0.68419723823204437 0.046268700896454816;
	setAttr -s 4 ".wl[1122].w[5:8]"  0.066953947461157529 0.21272995784309454 
		0.66556183573153982 0.054754258964208137;
	setAttr -s 4 ".wl[1123].w[5:8]"  0.013623233198614417 0.096483532860930532 
		0.88512150712842252 0.004771726812032499;
	setAttr -s 4 ".wl[1124].w[5:8]"  0.016759516240892308 0.11096288486788936 
		0.86612332431733552 0.006154274573882834;
	setAttr -s 4 ".wl[1125].w[5:8]"  0.017886024547729865 0.1163434907192981 
		0.85898217462812665 0.0067883101048453335;
	setAttr -s 4 ".wl[1126].w[5:8]"  0.017215436134248984 0.11277244023926196 
		0.86309719814003905 0.0069149254864500007;
	setAttr -s 4 ".wl[1127].w[5:8]"  0.014726549540669598 0.10157550793152093 
		0.87766079106028261 0.0060371514675267683;
	setAttr -s 4 ".wl[1128].w[5:8]"  0.012519110401309744 0.086094510264965063 
		0.89609147543135803 0.0052949039023671932;
	setAttr -s 4 ".wl[1129].w[5:8]"  0.011753706175738609 0.076463975577367976 
		0.90678331004414814 0.0049990082027452382;
	setAttr -s 4 ".wl[1130].w[5:8]"  0.012849347547378527 0.08413783339562951 
		0.89794771686101227 0.0050651021959797256;
	setAttr -s 4 ".wl[1131].w[5:8]"  0.013215151989276018 0.094515531757024235 
		0.8876524659368793 0.0046168503168204427;
	setAttr -s 4 ".wl[1132].w[5:8]"  0.016116783586418174 0.10840658411308887 
		0.86960751463073438 0.005869117669758654;
	setAttr -s 4 ".wl[1133].w[5:8]"  0.017324412820209908 0.11421210098759155 
		0.86193679188460648 0.0065266943075921614;
	setAttr -s 4 ".wl[1134].w[5:8]"  0.015974176394757393 0.10770302140823362 
		0.87002385642618096 0.0062989457708279885;
	setAttr -s 4 ".wl[1135].w[5:8]"  0.01300587078178317 0.094496444457901868 
		0.88740666078177421 0.0050910239785408153;
	setAttr -s 4 ".wl[1136].w[5:8]"  0.011561188676619238 0.082488046996048101 
		0.9012675189705851 0.0046832453567475655;
	setAttr -s 4 ".wl[1137].w[5:8]"  0.0111429667803818 0.07483569036400721 
		0.90941596764508892 0.004605375210522099;
	setAttr -s 4 ".wl[1138].w[5:8]"  0.012418339605987675 0.08297081234892198 
		0.8997792463197698 0.0048316017253206148;
	setAttr -s 4 ".wl[1139].w[5:8]"  0.016137132477901932 0.10902349210318954 
		0.86915875354010919 0.0056806218787993574;
	setAttr -s 4 ".wl[1140].w[5:8]"  0.01974686565687479 0.12541033852994604 
		0.84760655054686695 0.007236245266312182;
	setAttr -s 4 ".wl[1141].w[5:8]"  0.020693003360572806 0.12996013234770903 
		0.84150153828073637 0.0078453260109816684;
	setAttr -s 4 ".wl[1142].w[5:8]"  0.020208270075887425 0.12696413111047178 
		0.84461391507276351 0.0082136837408773155;
	setAttr -s 4 ".wl[1143].w[5:8]"  0.016619159046908902 0.10954125056393206 
		0.86675976696655144 0.0070798234226076527;
	setAttr -s 4 ".wl[1144].w[5:8]"  0.013759184685519279 0.090350360530049106 
		0.8897517902906793 0.00613866449375235;
	setAttr -s 4 ".wl[1145].w[5:8]"  0.010825648536762475 0.070639323755348982 
		0.91386954349305671 0.0046654842148317254;
	setAttr -s 4 ".wl[1146].w[5:8]"  0.012361848214035281 0.081044844526017956 
		0.90173916586566427 0.0048541413942824888;
	setAttr -s 4 ".wl[1147].w[5:8]"  0.022812500233727901 0.13955831573426988 
		0.82834505967040017 0.0092841243616018834;
	setAttr -s 4 ".wl[1148].w[5:8]"  0.021375445037985375 0.1296032837376021 
		0.83973285342077575 0.0092884178036368135;
	setAttr -s 4 ".wl[1149].w[5:8]"  0.015942883346411755 0.10222226659376116 
		0.87463896355570525 0.0071958865041217793;
	setAttr -s 4 ".wl[1150].w[5:8]"  0.026139594709510237 0.13168099446850245 
		0.82712623003760899 0.015053180784378352;
	setAttr -s 4 ".wl[1151].w[5:8]"  0.026622034141493806 0.16254380017929682 
		0.80127361467735803 0.0095605510018513806;
	setAttr -s 4 ".wl[1152].w[5:8]"  0.025299634570188152 0.15698170084655255 
		0.80901198761813875 0.008706676965120539;
	setAttr -s 4 ".wl[1153].w[5:8]"  0.021025595876565738 0.13758845890291838 
		0.83430781472627136 0.0070781304942445491;
	setAttr -s 4 ".wl[1154].w[5:8]"  0.014158067776244737 0.088421144295112455 
		0.89184071815667842 0.0055800697719643258;
	setAttr -s 4 ".wl[1155].w[5:8]"  0.010081975692606368 0.066505089203944323 
		0.9189949140848479 0.0044180210186014106;
	setAttr -s 4 ".wl[1156].w[5:8]"  0.02382625456343716 0.13081968690864662 
		0.83313348430530254 0.012220574222613675;
	setAttr -s 4 ".wl[1157].w[5:8]"  0.020353827607261104 0.1154537226472352 
		0.85393303674961707 0.010259412995886613;
	setAttr -s 4 ".wl[1158].w[5:8]"  0.015578003174794627 0.0959767864311349 
		0.88109150947761361 0.0073537009164568821;
	setAttr -s 4 ".wl[1159].w[5:8]"  0.18041957283953189 0.29063203474016369 
		0.41118925654585448 0.11775913587445004;
	setAttr -s 4 ".wl[1160].w[5:8]"  0.1481426664367389 0.27493160581343945 
		0.47366132716747117 0.10326440058235038;
	setAttr -s 4 ".wl[1161].w[5:8]"  0.19719148650079693 0.39679171302370231 
		0.34835482896177233 0.057661971513728233;
	setAttr -s 4 ".wl[1162].w[5:8]"  0.14119906627976192 0.37124433337252921 
		0.44572774508046442 0.041828855267244489;
	setAttr -s 4 ".wl[1163].w[5:8]"  0.18370153437661618 0.40188151755585705 
		0.36969172812116219 0.044725219946364657;
	setAttr -s 4 ".wl[1164].w[5:8]"  0.14353561678820537 0.38807744442214681 
		0.42983445929591613 0.038552479493731674;
	setAttr -s 4 ".wl[1165].w[5:8]"  0.14513836047768527 0.414955404022535 
		0.41182301855679709 0.028083216942982558;
	setAttr -s 4 ".wl[1166].w[5:8]"  0.10509987730278662 0.41197729975958225 
		0.46094350933604983 0.021979313601581209;
	setAttr -s 4 ".wl[1167].w[5:8]"  0.092688313175372919 0.43826125287298751 
		0.4519664952582324 0.017083938693407196;
	setAttr -s 4 ".wl[1168].w[5:8]"  0.082024682943568031 0.42403635330085587 
		0.47733601028093026 0.016602953474645937;
	setAttr -s 4 ".wl[1169].w[5:8]"  0.090332713547909158 0.41603593746853174 
		0.472832965033811 0.020798383949748062;
	setAttr -s 4 ".wl[1170].w[5:8]"  0.07299325833537354 0.38206895119078615 
		0.52720154329889468 0.017736247174945645;
	setAttr -s 4 ".wl[1171].w[5:8]"  0.10183048552828231 0.26365573646504648 
		0.57477325210457186 0.059740525902099349;
	setAttr -s 4 ".wl[1172].w[5:8]"  0.069753133125865119 0.30101701949362702 
		0.60949829504372932 0.01973155233677858;
	setAttr -s 4 ".wl[1173].w[5:8]"  0.074349055268314285 0.33608345264160205 
		0.56990367564060451 0.019663816449479114;
	setAttr -s 4 ".wl[1174].w[5:8]"  0.080773533297772107 0.40928055200669339 
		0.49194643665330939 0.017999478042225046;
	setAttr -s 4 ".wl[1175].w[5:8]"  0.076439852992729179 0.39658965608567459 
		0.50905785088779587 0.017912640033800428;
	setAttr -s 4 ".wl[1176].w[5:8]"  0.055673447459032209 0.32725647365990074 
		0.60287594050842175 0.014194138372645411;
	setAttr -s 4 ".wl[1177].w[5:8]"  0.032070450085625188 0.2246940984526242 
		0.73455718540743731 0.0086782660543133494;
	setAttr -s 4 ".wl[1178].w[5:8]"  0.027876774005729271 0.18809662321509898 
		0.77579938153334183 0.008227221245829839;
	setAttr -s 4 ".wl[1179].w[5:8]"  0.034784116061541748 0.22455587195158663 
		0.73089260626622865 0.0097674057206428386;
	setAttr -s 4 ".wl[1180].w[5:8]"  0.074010043969481826 0.38021969434786085 
		0.52891156446037602 0.016858697222281303;
	setAttr -s 4 ".wl[1181].w[5:8]"  0.078374873802505768 0.41126832316417289 
		0.49421084844728697 0.016145954586034433;
	setAttr -s 4 ".wl[1182].w[5:8]"  0.084363926840769848 0.40289990746688636 
		0.49265836833221843 0.020077797360125344;
	setAttr -s 4 ".wl[1183].w[5:8]"  0.078328619259095622 0.39056941233426384 
		0.5118534378374926 0.019248530569148017;
	setAttr -s 4 ".wl[1184].w[5:8]"  0.056677116342026393 0.31976906542725819 
		0.60842070131042569 0.015133116920289704;
	setAttr -s 4 ".wl[1185].w[5:8]"  0.034618729535694823 0.23464116284517045 
		0.7212953950818628 0.0094447125372719536;
	setAttr -s 4 ".wl[1186].w[5:8]"  0.030538226985155612 0.20411007510917095 
		0.75651438685356998 0.0088373110521034089;
	setAttr -s 4 ".wl[1187].w[5:8]"  0.0383373468508309 0.24329270532779734 
		0.70773650466551119 0.010633443155860524;
	setAttr -s 4 ".wl[1188].w[5:8]"  0.065099626957399265 0.35468966192464874 
		0.56421722323656798 0.015993487881384043;
	setAttr -s 4 ".wl[1189].w[5:8]"  0.076781974970715997 0.40109330202512605 
		0.50535609548858695 0.016768627515571063;
	setAttr -s 4 ".wl[1190].w[5:8]"  0.077319226148248668 0.40713361815598981 
		0.4983158725774432 0.017231283118318372;
	setAttr -s 4 ".wl[1191].w[5:8]"  0.093431928139366099 0.43032709139915842 
		0.45679864917941032 0.019442331282065156;
	setAttr -s 4 ".wl[1192].w[5:8]"  0.085968931602792828 0.42371891437743148 
		0.47352588612881308 0.01678626789096261;
	setAttr -s 4 ".wl[1193].w[5:8]"  0.10431093981355964 0.43582563375550687 
		0.44178030227645509 0.018083124154478339;
	setAttr -s 4 ".wl[1194].w[5:8]"  0.078934005121751846 0.38091353978578579 
		0.51979720604112134 0.020355249051341076;
	setAttr -s 4 ".wl[1195].w[5:8]"  0.075571871524628909 0.36587223386586271 
		0.53807035464905018 0.020485539960458259;
	setAttr -s 4 ".wl[1196].w[5:8]"  0.056506161086789741 0.31142983688318343 
		0.61637357207546661 0.015690429954560312;
	setAttr -s 4 ".wl[1197].w[5:8]"  0.039387746612467488 0.25124529215556918 
		0.69841922545218893 0.010947735779774488;
	setAttr -s 4 ".wl[1198].w[5:8]"  0.054261509286815765 0.32919263209932897 
		0.60313762758068268 0.013408231033172562;
	setAttr -s 4 ".wl[1199].w[5:8]"  0.0597715742713354 0.35570703226000411 
		0.57021670168015548 0.014304691788505072;
	setAttr -s 4 ".wl[1200].w[5:8]"  0.053260421712518047 0.33618925048575354 
		0.59773610854154879 0.012814219260179661;
	setAttr -s 4 ".wl[1201].w[5:8]"  0.046688750538629718 0.3066164108049067 
		0.63514922719636913 0.011545611460094474;
	setAttr -s 4 ".wl[1202].w[5:8]"  0.037784877740559844 0.24717851979645619 
		0.7046638407763588 0.010372761686625199;
	setAttr -s 4 ".wl[1203].w[5:8]"  0.047189426188389762 0.28250943530473649 
		0.65735128859601588 0.012949849910857786;
	setAttr -s 4 ".wl[1204].w[5:8]"  0.032368360316115924 0.19878499207219835 
		0.75924254549658377 0.009604102115101992;
	setAttr -s 4 ".wl[1205].w[5:8]"  0.029716053964310062 0.16255703137606595 
		0.79744263205350263 0.010284282606121386;
	setAttr -s 4 ".wl[1206].w[5:8]"  0.11222788967996582 0.2381083845710836 
		0.53743583606898471 0.11222788967996582;
	setAttr -s 4 ".wl[1207].w[5:8]"  0.025729647461534822 0.17500505108179498 
		0.79150054535794068 0.0077647560987295361;
	setAttr -s 4 ".wl[1208].w[5:8]"  0.019300098857810019 0.12663632124445401 
		0.84752657104699358 0.0065370088507423658;
	setAttr -s 4 ".wl[1209].w[5:8]"  0.032135478071327661 0.19882006735860136 
		0.75901852095236433 0.010025933617706692;
	setAttr -s 4 ".wl[1210].w[5:8]"  0.017324306421671001 0.10179524587104759 
		0.87410394007942471 0.0067765076278567789;
	setAttr -s 4 ".wl[1211].w[5:8]"  0.011102471582868621 0.069983711719902239 
		0.91424657418006339 0.004667242517165833;
	setAttr -s 4 ".wl[1212].w[5:8]"  0.029104412660878112 0.13749744138731448 
		0.81638598640501536 0.017012159546792069;
	setAttr -s 4 ".wl[1213].w[5:8]"  0.25026423291454747 0.20681077769885833 
		0.29266075647204665 0.25026423291454747;
	setAttr -s 4 ".wl[1214].w";
	setAttr ".wl[1214].w[5]" 0.317600209284429;
	setAttr ".wl[1214].w[6]" 0.18294347425433491;
	setAttr ".wl[1214].w[8]" 0.317600209284429;
	setAttr ".wl[1214].w[17]" 0.18185610717680706;
	setAttr -s 4 ".wl[1215].w[5:8]"  0.19562028614262192 0.20275179985829714 
		0.40600762785645905 0.19562028614262192;
	setAttr -s 4 ".wl[1216].w[5:8]"  0.087465328524434269 0.23019977610503481 
		0.59809206472937959 0.084242830641151289;
	setAttr -s 4 ".wl[1217].w[5:8]"  0.05765289223664162 0.19651557192609628 
		0.70554969156752723 0.040281844269734753;
	setAttr -s 4 ".wl[1218].w[5:8]"  0.18147077126328831 0.26707197306602676 
		0.38585874390319352 0.16559851176749138;
	setAttr -s 4 ".wl[1219].w[5:8]"  0.19842777385418134 0.22542268230705903 
		0.37742142226133107 0.19872812157742853;
	setAttr -s 4 ".wl[1220].w[5:8]"  0.12746111179911879 0.24061455927816461 
		0.50446321712359776 0.12746111179911879;
	setAttr -s 4 ".wl[1221].w[5:8]"  0.13957494931974856 0.32888629470469827 
		0.47722930153240967 0.054309454443143605;
	setAttr -s 4 ".wl[1222].w[5:8]"  0.17308125641992592 0.37082689784902612 
		0.40454882598414726 0.051543019746900579;
	setAttr -s 4 ".wl[1223].w[5:8]"  0.072310221565258209 0.26002468833354886 
		0.64100810460209179 0.026656985499101164;
	setAttr -s 4 ".wl[1224].w[5:8]"  0.031261004030502554 0.15520087940888508 
		0.80134843390746147 0.012189682653150916;
	setAttr -s 4 ".wl[1225].w[5:8]"  0.011464860774763989 0.070504321075992846 
		0.91280568229701231 0.0052251358522308281;
	setAttr -s 4 ".wl[1226].w[5:8]"  0.016663423009250628 0.09480740905921517 
		0.88141066475975449 0.0071185031717797354;
	setAttr -s 4 ".wl[1227].w[11:14]"  0.0061030195626251768 0.23897977411372123 
		0.57959351045082519 0.17532369587282834;
	setAttr -s 4 ".wl[1228].w[11:14]"  0.0066806125089056076 0.34170261464488172 
		0.54071633657037388 0.11090043627583879;
	setAttr -s 4 ".wl[1229].w[11:14]"  0.010594980756951835 0.46345726017206412 
		0.46486028240895833 0.061087476662025769;
	setAttr -s 4 ".wl[1230].w[11:14]"  0.014529306286091146 0.47338573734356998 
		0.47305249657073856 0.039032459799600315;
	setAttr -s 4 ".wl[1231].w[11:14]"  0.026580744320733252 0.47225504233204085 
		0.4649207722856652 0.036243441061560647;
	setAttr -s 4 ".wl[1232].w[11:14]"  0.015105689819302827 0.4745582645174799 
		0.4745582645174799 0.035777781145737458;
	setAttr -s 4 ".wl[1233].w[11:14]"  0.014633286869036829 0.45939591010870595 
		0.45939591010870595 0.066574892913551273;
	setAttr -s 4 ".wl[1234].w[11:14]"  0.0070546736027322357 0.37084047463489106 
		0.52120344275280883 0.10090140900956793;
	setAttr -s 4 ".wl[1235].w[11:14]"  0.0035993209063007897 0.14250082400430023 
		0.60587079491342177 0.24802906017597712;
	setAttr -s 4 ".wl[1236].w[11:14]"  0.0043708104657055559 0.20999645808010312 
		0.58990486424706468 0.19572786720712676;
	setAttr -s 4 ".wl[1237].w[11:14]"  0.0072482778019650066 0.36909315479979043 
		0.49233810642616233 0.13132046097208208;
	setAttr -s 4 ".wl[1238].w[11:14]"  0.0066116496114959752 0.4612245907258804 
		0.46428108988810829 0.067882669774515431;
	setAttr -s 4 ".wl[1239].w[11:14]"  0.0049471145248312573 0.47442477985849452 
		0.47442477985849441 0.046203325758179835;
	setAttr -s 4 ".wl[1240].w[11:14]"  0.0051375466898660955 0.47124401165076252 
		0.47130692984046157 0.052311511818909841;
	setAttr -s 4 ".wl[1241].w[11:14]"  0.0068475021822385221 0.40361575972034863 
		0.48268118233228385 0.10685555576512899;
	setAttr -s 4 ".wl[1242].w[11:14]"  0.0060223796947174411 0.24046877547061885 
		0.54487389163342492 0.20863495320123882;
	setAttr -s 4 ".wl[1243].w[11:14]"  0.002272601105621636 0.062913064365239663 
		0.53012176830915958 0.40469256621997912;
	setAttr -s 4 ".wl[1244].w[11:14]"  0.0021780995330118315 0.068781415671901047 
		0.53467326097643209 0.39436722381865508;
	setAttr -s 4 ".wl[1245].w[11:14]"  0.0024510255323607023 0.10054299719567668 
		0.5267784896352391 0.37022748763672353;
	setAttr -s 4 ".wl[1246].w[11:14]"  0.0033149205717940113 0.17040306310052386 
		0.50338069214914583 0.32290132417853629;
	setAttr -s 4 ".wl[1247].w[11:14]"  0.0021699832768313212 0.16551152462405702 
		0.5451059473064922 0.28721254479261948;
	setAttr -s 4 ".wl[1248].w[11:14]"  0.0025249689829857785 0.16781029796625471 
		0.53582723582913627 0.29383749722162328;
	setAttr -s 4 ".wl[1249].w[11:14]"  0.0035690293577565918 0.14802484610694097 
		0.51282802065239486 0.33557810388290754;
	setAttr -s 4 ".wl[1250].w[11:14]"  0.0039022412810551244 0.10484311899025153 
		0.505543593759886 0.3857110459688074;
	setAttr -s 4 ".wl[1251].w[11:14]"  0.0023914222932591325 0.036313369621612523 
		0.48064760404256418 0.48064760404256418;
	setAttr -s 4 ".wl[1252].w[11:14]"  0.0017303972791056852 0.02775364346345793 
		0.48525797962871814 0.48525797962871814;
	setAttr -s 4 ".wl[1253].w[11:14]"  0.00097070205804516486 0.017881579060465464 
		0.49057385944074472 0.49057385944074472;
	setAttr -s 4 ".wl[1254].w[11:14]"  0.00073456436917102908 0.014965190485129457 
		0.49215012257284979 0.49215012257284979;
	setAttr -s 4 ".wl[1255].w[11:14]"  0.00040848272374772841 0.011134761943253808 
		0.49422837766649924 0.49422837766649924;
	setAttr -s 4 ".wl[1256].w[11:14]"  0.00063355909209799721 0.014150995089936256 
		0.49260772290898291 0.49260772290898291;
	setAttr -s 4 ".wl[1257].w[11:14]"  0.0012777530576818829 0.024986235852239021 
		0.48686800554503956 0.48686800554503956;
	setAttr -s 4 ".wl[1258].w[11:14]"  0.0027693887554986456 0.042866020498996703 
		0.47718229537275231 0.47718229537275231;
	setAttr -s 4 ".wl[1259].w[11:14]"  0.0051653823219276491 0.043554043180741901 
		0.47564028724866519 0.47564028724866519;
	setAttr -s 4 ".wl[1260].w[11:14]"  0.0042213466092951724 0.037648013933148324 
		0.47906531972877825 0.47906531972877825;
	setAttr -s 4 ".wl[1261].w[11:14]"  0.0027766348706024691 0.028207012987973151 
		0.48450817607071217 0.48450817607071217;
	setAttr -s 4 ".wl[1262].w[11:14]"  0.0019766986210670284 0.022990953638045191 
		0.48751617387044394 0.48751617387044394;
	setAttr -s 4 ".wl[1263].w[11:14]"  0.0024241336592382046 0.02779988547182604 
		0.48488799043446795 0.48488799043446784;
	setAttr -s 4 ".wl[1264].w[11:14]"  0.0031388100751683439 0.032974456199648554 
		0.48194336686259159 0.48194336686259159;
	setAttr -s 4 ".wl[1265].w[11:14]"  0.0048108021720637932 0.043269019017015117 
		0.47596008940546058 0.47596008940546058;
	setAttr -s 4 ".wl[1266].w";
	setAttr ".wl[1266].w[27]" 0.002308264740350468;
	setAttr ".wl[1266].w[28]" 0.49867013486963913;
	setAttr ".wl[1266].w[29]" 0.49867013486963901;
	setAttr ".wl[1266].w[33]" 0.00035146552037149944;
	setAttr -s 4 ".wl[1267].w";
	setAttr ".wl[1267].w[27]" 0.0024515731509690392;
	setAttr ".wl[1267].w[28]" 0.49858829059380666;
	setAttr ".wl[1267].w[29]" 0.49858829059380666;
	setAttr ".wl[1267].w[33]" 0.0003718456614176678;
	setAttr -s 4 ".wl[1268].w";
	setAttr ".wl[1268].w[27]" 0.003404107162163173;
	setAttr ".wl[1268].w[28]" 0.49802268633358154;
	setAttr ".wl[1268].w[29]" 0.49802268633358154;
	setAttr ".wl[1268].w[33]" 0.0005505201706737389;
	setAttr -s 4 ".wl[1269].w";
	setAttr ".wl[1269].w[27]" 0.0062263018450667762;
	setAttr ".wl[1269].w[28]" 0.49634913167719302;
	setAttr ".wl[1269].w[29]" 0.49634913167719291;
	setAttr ".wl[1269].w[33]" 0.0010754348005474032;
	setAttr -s 4 ".wl[1270].w";
	setAttr ".wl[1270].w[27]" 0.46864661057953516;
	setAttr ".wl[1270].w[28]" 0.46864661057953516;
	setAttr ".wl[1270].w[29]" 0.045230650923973804;
	setAttr ".wl[1270].w[33]" 0.017476127916955884;
	setAttr -s 4 ".wl[1271].w[26:29]"  0.015577208893889402 0.47218897148954325 
		0.47218897148954314 0.040044848127024274;
	setAttr -s 4 ".wl[1272].w[26:29]"  0.015148948592615426 0.47338043261874768 
		0.47338043261874757 0.038090186169889399;
	setAttr -s 4 ".wl[1273].w[26:29]"  0.016090405902094058 0.47275802910671 
		0.47275802910671 0.038393535884485991;
	setAttr -s 4 ".wl[1274].w[26:29]"  0.00075114371844083722 0.49647471125677706 
		0.49647471125677706 0.0062994337680051171;
	setAttr -s 4 ".wl[1275].w[26:29]"  0.00075463071885082159 0.49614971932267155 
		0.49614971932267143 0.0069459306358061199;
	setAttr -s 4 ".wl[1276].w[26:29]"  0.00093297626815034304 0.49504966878704776 
		0.49504966878704798 0.0089676861577537969;
	setAttr -s 4 ".wl[1277].w";
	setAttr ".wl[1277].w[27]" 0.49108838225749063;
	setAttr ".wl[1277].w[28]" 0.49108838225749085;
	setAttr ".wl[1277].w[29]" 0.016423470674147522;
	setAttr ".wl[1277].w[33]" 0.0013997648108709378;
	setAttr -s 4 ".wl[1278].w";
	setAttr ".wl[1278].w[27]" 0.49124632369000726;
	setAttr ".wl[1278].w[28]" 0.49124632369000726;
	setAttr ".wl[1278].w[29]" 0.015829049991232948;
	setAttr ".wl[1278].w[33]" 0.0016783026287526068;
	setAttr -s 4 ".wl[1279].w";
	setAttr ".wl[1279].w[27]" 0.48261837354618881;
	setAttr ".wl[1279].w[28]" 0.48261837354618881;
	setAttr ".wl[1279].w[29]" 0.030235695316550657;
	setAttr ".wl[1279].w[33]" 0.0045275575910716818;
	setAttr -s 4 ".wl[1280].w";
	setAttr ".wl[1280].w[27]" 0.48794987823878772;
	setAttr ".wl[1280].w[28]" 0.48794987823878772;
	setAttr ".wl[1280].w[29]" 0.020850117232545266;
	setAttr ".wl[1280].w[33]" 0.0032501262898793335;
	setAttr -s 4 ".wl[1281].w";
	setAttr ".wl[1281].w[27]" 0.4907126929416365;
	setAttr ".wl[1281].w[28]" 0.4907126929416365;
	setAttr ".wl[1281].w[29]" 0.016185680025987362;
	setAttr ".wl[1281].w[33]" 0.0023889340907396754;
	setAttr -s 4 ".wl[1282].w";
	setAttr ".wl[1282].w[27]" 0.48972494172435416;
	setAttr ".wl[1282].w[28]" 0.48972494172435416;
	setAttr ".wl[1282].w[29]" 0.01773368617695634;
	setAttr ".wl[1282].w[33]" 0.0028164303743353791;
	setAttr -s 4 ".wl[1283].w[26:29]"  0.0050635980563560144 0.48802804371405395 
		0.48802804371405384 0.018880314515536213;
	setAttr -s 4 ".wl[1284].w[26:29]"  0.0046247278413253518 0.48815968958137523 
		0.48815968958137546 0.019055892995923859;
	setAttr -s 4 ".wl[1285].w[26:29]"  0.0049373731378321937 0.48709445075883573 
		0.48709445075883562 0.020873725344496524;
	setAttr -s 4 ".wl[1286].w[26:29]"  0.0064343792335106956 0.48185668620370703 
		0.48185668620370703 0.029852248359075247;
	setAttr -s 4 ".wl[1287].w";
	setAttr ".wl[1287].w[27]" 0.4829357434869182;
	setAttr ".wl[1287].w[28]" 0.48293574348691809;
	setAttr ".wl[1287].w[29]" 0.027288667348820458;
	setAttr ".wl[1287].w[33]" 0.0068398456773433565;
	setAttr -s 4 ".wl[1288].w";
	setAttr ".wl[1288].w[27]" 0.47498812957011538;
	setAttr ".wl[1288].w[28]" 0.47498812957011538;
	setAttr ".wl[1288].w[29]" 0.03568781997176864;
	setAttr ".wl[1288].w[33]" 0.014335920888000654;
	setAttr -s 4 ".wl[1289].w";
	setAttr ".wl[1289].w[27]" 0.47805375278476531;
	setAttr ".wl[1289].w[28]" 0.47805375278476531;
	setAttr ".wl[1289].w[29]" 0.030783396821896868;
	setAttr ".wl[1289].w[33]" 0.013109097608572443;
	setAttr -s 4 ".wl[1290].w";
	setAttr ".wl[1290].w[27]" 0.4803264696698481;
	setAttr ".wl[1290].w[28]" 0.4803264696698481;
	setAttr ".wl[1290].w[29]" 0.027867915353611761;
	setAttr ".wl[1290].w[33]" 0.011479145306692119;
	setAttr -s 4 ".wl[1291].w";
	setAttr ".wl[1291].w[27]" 0.47981515776725292;
	setAttr ".wl[1291].w[28]" 0.47981515776725292;
	setAttr ".wl[1291].w[29]" 0.028225162923866971;
	setAttr ".wl[1291].w[33]" 0.012144521541627182;
	setAttr -s 4 ".wl[1292].w[26:29]"  0.00065701505418508421 0.51053288270936259 
		0.48581024923594679 0.0029998530005054297;
	setAttr -s 4 ".wl[1293].w[26:29]"  0.0044714412964009702 0.49190163512430801 
		0.49190163512430801 0.011725288454983026;
	setAttr -s 4 ".wl[1294].w[26:29]"  0.020696545501727164 0.47360445557451591 
		0.47360445557451591 0.032094543349241028;
	setAttr -s 4 ".wl[1295].w[26:29]"  0.010565575701694002 0.48304526383079971 
		0.48304526383079971 0.023343896636706624;
	setAttr -s 4 ".wl[1296].w[26:29]"  0.0019792075576604779 0.50437837588527779 
		0.48454797233606939 0.0090944442209923999;
	setAttr -s 4 ".wl[1297].w[26:29]"  0.00035354967266881457 0.0034410509197163519 
		0.49810269970380744 0.49810269970380744;
	setAttr -s 4 ".wl[1298].w";
	setAttr ".wl[1298].w[27]" 0.0041368010353883856;
	setAttr ".wl[1298].w[28]" 0.49772610185232136;
	setAttr ".wl[1298].w[29]" 0.49772610185232136;
	setAttr ".wl[1298].w[33]" 0.00041099525996892843;
	setAttr -s 4 ".wl[1299].w";
	setAttr ".wl[1299].w[27]" 0.0059391488500319233;
	setAttr ".wl[1299].w[28]" 0.49671783537998881;
	setAttr ".wl[1299].w[29]" 0.49671783537998859;
	setAttr ".wl[1299].w[33]" 0.00062518038999072572;
	setAttr -s 4 ".wl[1300].w";
	setAttr ".wl[1300].w[27]" 0.0095508352428105153;
	setAttr ".wl[1300].w[28]" 0.49470457963077752;
	setAttr ".wl[1300].w[29]" 0.49470457963077752;
	setAttr ".wl[1300].w[33]" 0.0010400054956343969;
	setAttr -s 4 ".wl[1301].w";
	setAttr ".wl[1301].w[27]" 0.0025973438510512115;
	setAttr ".wl[1301].w[28]" 0.4983895612744747;
	setAttr ".wl[1301].w[29]" 0.4983895612744747;
	setAttr ".wl[1301].w[33]" 0.00062353359999932497;
	setAttr -s 4 ".wl[1302].w";
	setAttr ".wl[1302].w[27]" 0.0028630495659026783;
	setAttr ".wl[1302].w[28]" 0.49822553635410488;
	setAttr ".wl[1302].w[29]" 0.49822553635410488;
	setAttr ".wl[1302].w[33]" 0.00068587772588756023;
	setAttr -s 4 ".wl[1303].w";
	setAttr ".wl[1303].w[27]" 0.0038925715264402426;
	setAttr ".wl[1303].w[28]" 0.49754919511904361;
	setAttr ".wl[1303].w[29]" 0.49754919511904361;
	setAttr ".wl[1303].w[33]" 0.0010090382354725129;
	setAttr -s 4 ".wl[1304].w";
	setAttr ".wl[1304].w[27]" 0.0062052215322307676;
	setAttr ".wl[1304].w[28]" 0.49606384770325701;
	setAttr ".wl[1304].w[29]" 0.49606384770325701;
	setAttr ".wl[1304].w[33]" 0.001667083061255248;
	setAttr -s 4 ".wl[1305].w[26:29]"  0.0012909255130176755 0.50278734094147648 
		0.47071922507448016 0.025202508471025759;
	setAttr -s 4 ".wl[1306].w[26:29]"  0.0011234149842775218 0.55841896269784241 
		0.42694913288719588 0.013508489430684167;
	setAttr -s 4 ".wl[1307].w";
	setAttr ".wl[1307].w[27]" 0.43797651847847507;
	setAttr ".wl[1307].w[28]" 0.52532981283150038;
	setAttr ".wl[1307].w[29]" 0.034374365291375469;
	setAttr ".wl[1307].w[33]" 0.0023193033986491623;
	setAttr -s 4 ".wl[1308].w[26:29]"  0.00083451187180120265 0.47394351398561491 
		0.508477053956786 0.016744920185797849;
	setAttr -s 4 ".wl[1309].w";
	setAttr ".wl[1309].w[27]" 0.23627853875300636;
	setAttr ".wl[1309].w[28]" 0.63308721908480459;
	setAttr ".wl[1309].w[29]" 0.12302198659238119;
	setAttr ".wl[1309].w[33]" 0.0076122555698079656;
	setAttr -s 4 ".wl[1310].w";
	setAttr ".wl[1310].w[27]" 0.0039024680038132857;
	setAttr ".wl[1310].w[28]" 0.49759762354264919;
	setAttr ".wl[1310].w[29]" 0.49759762354264919;
	setAttr ".wl[1310].w[33]" 0.00090228491088842908;
	setAttr -s 4 ".wl[1311].w[26:29]"  0.0010632197961802142 0.016743417231931561 
		0.4910966814859441 0.4910966814859441;
	setAttr -s 4 ".wl[1312].w[26:29]"  0.00077021952167675685 0.46491986295024595 
		0.51672507387347877 0.01758484365459841;
	setAttr -s 4 ".wl[1313].w[26:29]"  0.0010167536314369596 0.017207298224001591 
		0.4908879740722808 0.4908879740722808;
	setAttr -s 4 ".wl[1314].w";
	setAttr ".wl[1314].w[27]" 0.0042676991305940241;
	setAttr ".wl[1314].w[28]" 0.49737003583092865;
	setAttr ".wl[1314].w[29]" 0.49737003583092865;
	setAttr ".wl[1314].w[33]" 0.00099222920754871093;
	setAttr -s 4 ".wl[1315].w";
	setAttr ".wl[1315].w[27]" 0.24142285327660795;
	setAttr ".wl[1315].w[28]" 0.63494420422916087;
	setAttr ".wl[1315].w[29]" 0.11667784924499008;
	setAttr ".wl[1315].w[33]" 0.0069550932492410027;
	setAttr -s 4 ".wl[1316].w";
	setAttr ".wl[1316].w[27]" 0.0054063804075634124;
	setAttr ".wl[1316].w[28]" 0.49661213266500154;
	setAttr ".wl[1316].w[29]" 0.49661213266500143;
	setAttr ".wl[1316].w[33]" 0.0013693542624337103;
	setAttr -s 4 ".wl[1317].w";
	setAttr ".wl[1317].w[27]" 0.24209574272207232;
	setAttr ".wl[1317].w[28]" 0.61696466621460677;
	setAttr ".wl[1317].w[29]" 0.13247138015766907;
	setAttr ".wl[1317].w[33]" 0.0084682109056518386;
	setAttr -s 4 ".wl[1318].w[26:29]"  0.00088417255497835929 0.46677325762030647 
		0.5119175748509518 0.02042499497376335;
	setAttr -s 4 ".wl[1319].w";
	setAttr ".wl[1319].w[14]" 0.0013071153046750237;
	setAttr ".wl[1319].w[27]" 0.022147826035878764;
	setAttr ".wl[1319].w[28]" 0.48827252932972309;
	setAttr ".wl[1319].w[29]" 0.48827252932972309;
	setAttr -s 4 ".wl[1320].w[26:29]"  0.020406569173506743 0.48183473500042329 
		0.47319697366643337 0.024561722159636534;
	setAttr -s 4 ".wl[1321].w[26:29]"  0.019314463754217134 0.4741341399562734 
		0.4741341399562734 0.032417256333236104;
	setAttr -s 4 ".wl[1322].w";
	setAttr ".wl[1322].w[27]" 0.47221633721613526;
	setAttr ".wl[1322].w[28]" 0.47221633721613526;
	setAttr ".wl[1322].w[29]" 0.037561433220175904;
	setAttr ".wl[1322].w[33]" 0.018005892347553631;
	setAttr -s 4 ".wl[1323].w";
	setAttr ".wl[1323].w[27]" 0.4726918974785006;
	setAttr ".wl[1323].w[28]" 0.47269189747850049;
	setAttr ".wl[1323].w[29]" 0.037315213684937384;
	setAttr ".wl[1323].w[33]" 0.017300991358061547;
	setAttr -s 4 ".wl[1324].w";
	setAttr ".wl[1324].w[27]" 0.47206804779062628;
	setAttr ".wl[1324].w[28]" 0.47206804779062628;
	setAttr ".wl[1324].w[29]" 0.03819642255455092;
	setAttr ".wl[1324].w[33]" 0.017667481864196519;
	setAttr -s 4 ".wl[1325].w[26:29]"  0.012327700882052678 0.48209281425160816 
		0.48209281425160805 0.023486670614731107;
	setAttr -s 4 ".wl[1326].w[26:29]"  0.01254310997925975 0.4776106100072432 
		0.4776106100072432 0.032235670006253818;
	setAttr -s 4 ".wl[1327].w[26:29]"  0.01199705173129712 0.47743067576720954 
		0.47743067576720954 0.033141596734283879;
	setAttr -s 4 ".wl[1328].w[26:29]"  0.012324464054511933 0.47652806357410765 
		0.47652806357410765 0.034619408797272821;
	setAttr -s 4 ".wl[1329].w[26:29]"  0.021699304501693644 0.47888590167324591 
		0.4722227155768991 0.027192078248161399;
	setAttr -s 4 ".wl[1330].w[26:29]"  0.01263974297698355 0.48632718755032101 
		0.4823065696656661 0.018726499807029371;
	setAttr -s 4 ".wl[1331].w[26:29]"  0.00020679324540786131 0.0093509800437275182 
		0.90118409070682381 0.089258136004040742;
	setAttr -s 4 ".wl[1332].w[26:29]"  0.0012725895941340794 0.066279607668666682 
		0.77049456617142642 0.16195323656577285;
	setAttr -s 4 ".wl[1333].w";
	setAttr ".wl[1333].w[27]" 0.043289278691649058;
	setAttr ".wl[1333].w[28]" 0.71430885330674798;
	setAttr ".wl[1333].w[29]" 0.24056233824043066;
	setAttr ".wl[1333].w[33]" 0.0018395297611721608;
	setAttr -s 4 ".wl[1334].w";
	setAttr ".wl[1334].w[27]" 0.062884649091090775;
	setAttr ".wl[1334].w[28]" 0.61812264243816095;
	setAttr ".wl[1334].w[29]" 0.3133384096459923;
	setAttr ".wl[1334].w[33]" 0.0056542988247559461;
	setAttr -s 4 ".wl[1335].w[26:29]"  0.0026776827529511786 0.18538236571835218 
		0.61448523074962502 0.19745472077907159;
	setAttr -s 4 ".wl[1336].w[26:29]"  0.0024367749516834886 0.1707025119298328 
		0.61746845436928099 0.20939225874920273;
	setAttr -s 4 ".wl[1337].w";
	setAttr ".wl[1337].w[27]" 0.061639041449116909;
	setAttr ".wl[1337].w[28]" 0.62137762129631857;
	setAttr ".wl[1337].w[29]" 0.31175257146197699;
	setAttr ".wl[1337].w[33]" 0.0052307657925875556;
	setAttr -s 4 ".wl[1338].w";
	setAttr ".wl[1338].w[27]" 0.06548229367070664;
	setAttr ".wl[1338].w[28]" 0.59654324365093259;
	setAttr ".wl[1338].w[29]" 0.33158723297761911;
	setAttr ".wl[1338].w[33]" 0.0063872297007416604;
	setAttr -s 4 ".wl[1339].w[26:29]"  0.0026894486668733496 0.18207066039120559 
		0.59687015342165683 0.2183697375202642;
	setAttr -s 4 ".wl[1340].w";
	setAttr ".wl[1340].w[8]" 0.20098447842700543;
	setAttr ".wl[1340].w[9]" 0.40266004558006174;
	setAttr ".wl[1340].w[10]" 0.074659241433954152;
	setAttr ".wl[1340].w[16]" 0.32169623455897861;
	setAttr -s 4 ".wl[1341].w";
	setAttr ".wl[1341].w[14]" 0.0015347808252791746;
	setAttr ".wl[1341].w[27]" 0.027652675893283851;
	setAttr ".wl[1341].w[28]" 0.48540627164071865;
	setAttr ".wl[1341].w[29]" 0.48540627164071842;
	setAttr -s 4 ".wl[1342].w[26:29]"  0.002812827518912295 0.20596359254810717 
		0.57294820459782225 0.21827537533515828;
	setAttr -s 4 ".wl[1343].w[26:29]"  0.0014505809838604709 0.4491748680993442 
		0.50882083052970972 0.04055372038708558;
	setAttr -s 4 ".wl[1344].w[26:29]"  0.012193913614467157 0.47394398336296828 
		0.47394398336296817 0.039918119659596414;
	setAttr -s 4 ".wl[1345].w";
	setAttr ".wl[1345].w[27]" 0.46826279941841564;
	setAttr ".wl[1345].w[28]" 0.46826279941841553;
	setAttr ".wl[1345].w[29]" 0.043688193072053544;
	setAttr ".wl[1345].w[33]" 0.019786208091115261;
	setAttr -s 4 ".wl[1346].w";
	setAttr ".wl[1346].w[27]" 0.24169740883435284;
	setAttr ".wl[1346].w[28]" 0.58163336550625122;
	setAttr ".wl[1346].w[29]" 0.16613914014599351;
	setAttr ".wl[1346].w[33]" 0.010530085513402489;
	setAttr -s 4 ".wl[1347].w";
	setAttr ".wl[1347].w[27]" 0.077322193528407329;
	setAttr ".wl[1347].w[28]" 0.56965503763942205;
	setAttr ".wl[1347].w[29]" 0.34579429922355365;
	setAttr ".wl[1347].w[33]" 0.0072284696086169784;
	setAttr -s 4 ".wl[1348].w";
	setAttr ".wl[1348].w[27]" 0.008575252311999822;
	setAttr ".wl[1348].w[28]" 0.49466192991745794;
	setAttr ".wl[1348].w[29]" 0.49466192991745817;
	setAttr ".wl[1348].w[33]" 0.0021008878530839434;
	setAttr -s 4 ".wl[1349].w";
	setAttr ".wl[1349].w[27]" 0.010332706180009733;
	setAttr ".wl[1349].w[28]" 0.4999693724188366;
	setAttr ".wl[1349].w[29]" 0.48801310678358728;
	setAttr ".wl[1349].w[33]" 0.0016848146175663977;
	setAttr -s 4 ".wl[1350].w";
	setAttr ".wl[1350].w[27]" 0.011484613089728443;
	setAttr ".wl[1350].w[28]" 0.4950396738755824;
	setAttr ".wl[1350].w[29]" 0.49138415846723749;
	setAttr ".wl[1350].w[33]" 0.0020915545674517573;
	setAttr -s 4 ".wl[1351].w[26:29]"  1.347304954700689e-005 0.00018709514900130462 
		0.49989971590072591 0.49989971590072591;
	setAttr -s 4 ".wl[1352].w[26:29]"  0.00042673081905841734 0.007340571089645918 
		0.51085892335383321 0.48137377473746257;
	setAttr -s 4 ".wl[1353].w";
	setAttr ".wl[1353].w[27]" 0.0012055128902128452;
	setAttr ".wl[1353].w[28]" 0.49932674460544063;
	setAttr ".wl[1353].w[29]" 0.49932674460544052;
	setAttr ".wl[1353].w[33]" 0.00014099789890604733;
	setAttr -s 4 ".wl[1354].w";
	setAttr ".wl[1354].w[27]" 0.0093509105003917268;
	setAttr ".wl[1354].w[28]" 0.49860051186105753;
	setAttr ".wl[1354].w[29]" 0.49049370542989174;
	setAttr ".wl[1354].w[33]" 0.0015548722086590524;
	setAttr -s 4 ".wl[1355].w";
	setAttr ".wl[1355].w[14]" 0.0024591833807233857;
	setAttr ".wl[1355].w[27]" 0.06386000046937361;
	setAttr ".wl[1355].w[28]" 0.52871527652274231;
	setAttr ".wl[1355].w[29]" 0.40496553962716075;
	setAttr -s 4 ".wl[1356].w";
	setAttr ".wl[1356].w[14]" 0.0020808371752512912;
	setAttr ".wl[1356].w[27]" 0.057210156259109739;
	setAttr ".wl[1356].w[28]" 0.52783234715529037;
	setAttr ".wl[1356].w[29]" 0.41287665941034868;
	setAttr -s 4 ".wl[1357].w";
	setAttr ".wl[1357].w[14]" 0.0023163609029134367;
	setAttr ".wl[1357].w[27]" 0.065193894369413918;
	setAttr ".wl[1357].w[28]" 0.52446717290763722;
	setAttr ".wl[1357].w[29]" 0.40802257182003543;
	setAttr -s 4 ".wl[1358].w";
	setAttr ".wl[1358].w[14]" 0.0023001622296717492;
	setAttr ".wl[1358].w[27]" 0.070840778558562925;
	setAttr ".wl[1358].w[28]" 0.50966391761108287;
	setAttr ".wl[1358].w[29]" 0.41719514160068244;
	setAttr -s 4 ".wl[1359].w";
	setAttr ".wl[1359].w[27]" 0.016700996175474131;
	setAttr ".wl[1359].w[28]" 0.49037704516511954;
	setAttr ".wl[1359].w[29]" 0.48988508397291719;
	setAttr ".wl[1359].w[33]" 0.0030368746864891964;
	setAttr -s 4 ".wl[1360].w";
	setAttr ".wl[1360].w[27]" 0.0038469912894744879;
	setAttr ".wl[1360].w[28]" 0.49789909020510253;
	setAttr ".wl[1360].w[29]" 0.49789909020510242;
	setAttr ".wl[1360].w[33]" 0.00035482830032060395;
	setAttr -s 4 ".wl[1361].w";
	setAttr ".wl[1361].w[27]" 0.0098403363891714779;
	setAttr ".wl[1361].w[28]" 0.53961632157851169;
	setAttr ".wl[1361].w[29]" 0.45009434579452179;
	setAttr ".wl[1361].w[33]" 0.00044899623779505297;
	setAttr -s 4 ".wl[1362].w";
	setAttr ".wl[1362].w[27]" 0.056186873868693685;
	setAttr ".wl[1362].w[28]" 0.74060388468550287;
	setAttr ".wl[1362].w[29]" 0.20225379713105074;
	setAttr ".wl[1362].w[33]" 0.0009554443147527298;
	setAttr -s 4 ".wl[1363].w";
	setAttr ".wl[1363].w[27]" 0.29153852613051412;
	setAttr ".wl[1363].w[28]" 0.65586920421059225;
	setAttr ".wl[1363].w[29]" 0.051360234164252221;
	setAttr ".wl[1363].w[33]" 0.0012320354946414105;
	setAttr -s 4 ".wl[1364].w[11:14]"  0.028951530288901916 0.18114406903966784 
		0.40517089700031184 0.38473350367111842;
	setAttr -s 4 ".wl[1365].w[11:14]"  0.17181303877823753 0.30899773198594493 
		0.27926250010767995 0.23992672912813762;
	setAttr -s 4 ".wl[1366].w[11:14]"  0.34081410223250846 0.3447256653499603 
		0.17413011804657574 0.14033011437095555;
	setAttr -s 4 ".wl[1367].w[10:13]"  0.33690652805058335 0.33739108125521078 
		0.24024206853215943 0.085460322162046368;
	setAttr -s 4 ".wl[1368].w";
	setAttr ".wl[1368].w[10]" 0.46679626851057032;
	setAttr ".wl[1368].w[11]" 0.46679626851057032;
	setAttr ".wl[1368].w[14]" 0.06070493187404423;
	setAttr ".wl[1368].w[15]" 0.0057025311048151152;
	setAttr -s 4 ".wl[1369].w";
	setAttr ".wl[1369].w[10]" 0.45191471498092756;
	setAttr ".wl[1369].w[11]" 0.45191471498092778;
	setAttr ".wl[1369].w[14]" 0.091165957931947358;
	setAttr ".wl[1369].w[15]" 0.0050046121061972041;
	setAttr -s 4 ".wl[1370].w[10:13]"  0.22942360409579965 0.3247917128383439 
		0.31802254619030518 0.12776213687555127;
	setAttr -s 4 ".wl[1371].w[11:14]"  0.14581992160039176 0.30225927258289942 
		0.29284434038640361 0.25907646543030532;
	setAttr -s 4 ".wl[1372].w[11:14]"  0.024355703348984292 0.12464456257508727 
		0.42549986703796422 0.42549986703796422;
	setAttr -s 4 ".wl[1373].w[11:14]"  0.11833118036827739 0.22591899670016127 
		0.32787649743813579 0.32787332549342563;
	setAttr -s 4 ".wl[1374].w[11:14]"  0.25964677066232661 0.28507244727251907 
		0.2303431837066911 0.22493759835846328;
	setAttr -s 4 ".wl[1375].w[10:13]"  0.28797743826961258 0.29896816045720109 
		0.26629040875903154 0.14676399251415487;
	setAttr -s 4 ".wl[1376].w";
	setAttr ".wl[1376].w[10]" 0.43084990887782765;
	setAttr ".wl[1376].w[11]" 0.43084990887782765;
	setAttr ".wl[1376].w[14]" 0.13023515123322393;
	setAttr ".wl[1376].w[15]" 0.0080650310111208736;
	setAttr -s 4 ".wl[1377].w[10:13]"  0.29090885073274569 0.30131034022929132 
		0.26549672601857954 0.14228408301938356;
	setAttr -s 4 ".wl[1378].w[11:14]"  0.27308234872295711 0.2962543592772775 
		0.21937742780805267 0.21128586419171277;
	setAttr -s 4 ".wl[1379].w[11:14]"  0.11865901452603778 0.22909861326346939 
		0.32632422758870722 0.32591814462178559;
	setAttr -s 4 ".wl[1380].w[11:14]"  0.026419827889313938 0.10637175992165038 
		0.43360420609451789 0.43360420609451789;
	setAttr -s 4 ".wl[1381].w[11:14]"  0.089867443791056545 0.18371142280511907 
		0.36321056670191237 0.36321056670191215;
	setAttr -s 4 ".wl[1382].w[11:14]"  0.20424151633696783 0.24088012548111873 
		0.27743917909095678 0.27743917909095678;
	setAttr -s 4 ".wl[1383].w[10:13]"  0.25412653785397366 0.27465072324981088 
		0.2655129186304459 0.20570982026576956;
	setAttr -s 4 ".wl[1384].w[10:13]"  0.28282211224787879 0.28513607795877183 
		0.25361491313366963 0.1784268966596797;
	setAttr -s 4 ".wl[1385].w[10:13]"  0.23972819821404814 0.26818162309574978 
		0.26778224309810977 0.22430793559209239;
	setAttr -s 4 ".wl[1386].w[11:14]"  0.1992818692703239 0.24015691813480136 
		0.2802806062974374 0.2802806062974374;
	setAttr -s 4 ".wl[1387].w[11:14]"  0.090914379284623245 0.18127681154707048 
		0.36390440458415318 0.36390440458415318;
	setAttr -s 4 ".wl[1388].w[11:14]"  0.041966008698107765 0.12588467596255049 
		0.416074657669671 0.41607465766967078;
	setAttr -s 4 ".wl[1389].w[11:14]"  0.089267102955464209 0.17286872489738772 
		0.36893208607357403 0.36893208607357403;
	setAttr -s 4 ".wl[1390].w[11:14]"  0.17646184007580865 0.21761684943951887 
		0.30296065524233629 0.30296065524233617;
	setAttr -s 4 ".wl[1391].w[11:14]"  0.24958614675983595 0.25361040873529722 
		0.24840172225243337 0.24840172225243337;
	setAttr -s 4 ".wl[1392].w[11:14]"  0.24877085282553596 0.24851399150922515 
		0.25135757783261947 0.25135757783261947;
	setAttr -s 4 ".wl[1393].w[11:14]"  0.21380694700522343 0.23397296837272108 
		0.27611004231102759 0.27611004231102781;
	setAttr -s 4 ".wl[1394].w[11:14]"  0.15101823432440378 0.20485277203467833 
		0.32206449682045896 0.32206449682045896;
	setAttr -s 4 ".wl[1395].w[11:14]"  0.078583739751031376 0.16554125549511195 
		0.3779375023769283 0.3779375023769283;
	setAttr -s 4 ".wl[1396].w[11:14]"  0.076228383843228331 0.16005646772681456 
		0.38185757421497851 0.38185757421497851;
	setAttr -s 4 ".wl[1397].w[11:14]"  0.095612458168501127 0.17376305303127346 
		0.36531224440011267 0.36531224440011267;
	setAttr -s 4 ".wl[1398].w[11:14]"  0.14258718424365674 0.19548821678582345 
		0.3309622994852599 0.3309622994852599;
	setAttr -s 4 ".wl[1399].w[11:14]"  0.19260763088506921 0.2184795163392346 
		0.29445642638784808 0.29445642638784808;
	setAttr -s 4 ".wl[1400].w[11:14]"  0.18742702628652985 0.21459385674089329 
		0.2989895584862885 0.29898955848628839;
	setAttr -s 4 ".wl[1401].w[11:14]"  0.1760410343429914 0.21155413408322063 
		0.30620241578689383 0.30620241578689406;
	setAttr -s 4 ".wl[1402].w[11:14]"  0.12887766194790334 0.19126826187969909 
		0.33992703808619879 0.33992703808619879;
	setAttr -s 4 ".wl[1403].w[11:14]"  0.085577720422753828 0.16867570747389074 
		0.37287328605167769 0.37287328605167769;
	setAttr -s 4 ".wl[1404].w[11:14]"  0.022713389546403537 0.35226521467114563 
		0.44407582853252192 0.18094556724992897;
	setAttr -s 4 ".wl[1405].w[11:14]"  0.4218556123925486 0.46094182981480797 
		0.091954138358420437 0.025248419434222992;
	setAttr -s 4 ".wl[1406].w[10:13]"  0.31524659492885188 0.39002891835604431 
		0.26585448968785658 0.028869997027247331;
	setAttr -s 4 ".wl[1407].w";
	setAttr ".wl[1407].w[10]" 0.49570469016848118;
	setAttr ".wl[1407].w[11]" 0.49570469016848118;
	setAttr ".wl[1407].w[14]" 0.0074889767647932856;
	setAttr ".wl[1407].w[15]" 0.0011016428982443553;
	setAttr -s 4 ".wl[1408].w";
	setAttr ".wl[1408].w[10]" 0.49551909851194342;
	setAttr ".wl[1408].w[11]" 0.49551909851194342;
	setAttr ".wl[1408].w[14]" 0.007077530757395918;
	setAttr ".wl[1408].w[15]" 0.0018842722187172676;
	setAttr -s 4 ".wl[1409].w";
	setAttr ".wl[1409].w[10]" 0.49594534217321506;
	setAttr ".wl[1409].w[11]" 0.49594534217321506;
	setAttr ".wl[1409].w[14]" 0.0064009153797079024;
	setAttr ".wl[1409].w[15]" 0.0017084002738620122;
	setAttr -s 4 ".wl[1410].w[10:13]"  0.32711921276505085 0.43779566010223497 
		0.22019154700173788 0.014893580130976164;
	setAttr -s 4 ".wl[1411].w[11:14]"  0.057552369119205658 0.52235975605954099 
		0.3781805408055649 0.041907334015688337;
	setAttr -s 4 ".wl[1412].w[11:14]"  0.081666611097476513 0.5037156870581605 
		0.37353990777188673 0.041077794072476227;
	setAttr -s 4 ".wl[1413].w[11:14]"  0.18153802624048221 0.51688659157535988 
		0.26796452352544603 0.033610858658711891;
	setAttr -s 4 ".wl[1414].w[11:14]"  0.19099085027145682 0.54611411684086719 
		0.22505426916664836 0.037840763721027702;
	setAttr -s 4 ".wl[1415].w[11:14]"  0.23618808357505269 0.49999898600599602 
		0.22792400621980638 0.035888924199144884;
	setAttr -s 4 ".wl[1416].w[11:14]"  0.052570012011177981 0.50843113359679581 
		0.37682313083400693 0.062175723558019258;
	setAttr -s 4 ".wl[1417].w[11:14]"  0.02008579383361846 0.38234167032448524 
		0.44846915311567276 0.14910338272622367;
	setAttr -s 4 ".wl[1418].w[11:14]"  0.012553274106315661 0.45156984306451553 
		0.4504684559513617 0.085408426877807142;
	setAttr -s 4 ".wl[1419].w[11:14]"  0.15616497571013957 0.56430998690655132 
		0.21977531744028575 0.059749719943023319;
	setAttr -s 4 ".wl[1420].w[11:14]"  0.15796796980160235 0.62217704016086484 
		0.17326941211594254 0.046585577921590363;
	setAttr -s 4 ".wl[1421].w[11:14]"  0.42218964794864688 0.47578792861389557 
		0.074699888772281203 0.027322534665176472;
	setAttr -s 4 ".wl[1422].w[11:14]"  0.35569158032882942 0.50277627721543872 
		0.10751005931384987 0.03402208314188207;
	setAttr -s 4 ".wl[1423].w[11:14]"  0.22450742088661182 0.54287525221439747 
		0.188602481616093 0.044014845282897681;
	setAttr -s 4 ".wl[1424].w[11:14]"  0.43750149712329245 0.47568738119177245 
		0.06720928335910914 0.019601838325825908;
	setAttr -s 4 ".wl[1425].w[11:14]"  0.15280453367575922 0.55025400877614128 
		0.26285470480376966 0.034086752744329908;
	setAttr -s 4 ".wl[1426].w[11:14]"  0.43817828406865694 0.48788934027802766 
		0.061214649785142086 0.012717725868173359;
	setAttr -s 4 ".wl[1427].w[10:13]"  0.22203636706304061 0.40582388590729485 
		0.35194699174371158 0.020192755285953018;
	setAttr -s 4 ".wl[1428].w[10:13]"  0.25127045320098179 0.34727750441506039 
		0.32057673753208882 0.080875304851869001;
	setAttr -s 4 ".wl[1429].w[10:13]"  0.31533041928351635 0.3767117922679582 
		0.26523657333744199 0.042721215111083448;
	setAttr -s 4 ".wl[1430].w";
	setAttr ".wl[1430].w[10]" 0.48417070375151067;
	setAttr ".wl[1430].w[11]" 0.48417070375151056;
	setAttr ".wl[1430].w[14]" 0.027513352784042239;
	setAttr ".wl[1430].w[15]" 0.0041452397129366006;
	setAttr -s 4 ".wl[1431].w[11:14]"  0.26950644167691196 0.42825597381765651 
		0.2124645590804462 0.089773025424985359;
	setAttr -s 4 ".wl[1432].w";
	setAttr ".wl[1432].w[10]" 0.48442687200328283;
	setAttr ".wl[1432].w[11]" 0.48442687200328283;
	setAttr ".wl[1432].w[14]" 0.028816013762103861;
	setAttr ".wl[1432].w[15]" 0.0023302422313305855;
	setAttr -s 4 ".wl[1433].w";
	setAttr ".wl[1433].w[10]" 0.48592879010211593;
	setAttr ".wl[1433].w[11]" 0.48592879010211593;
	setAttr ".wl[1433].w[14]" 0.025129856919339659;
	setAttr ".wl[1433].w[15]" 0.0030125628764284271;
	setAttr -s 4 ".wl[1434].w[11:14]"  0.4141977176022425 0.45443827218149402 
		0.090090156712818045 0.041273853503445507;
	setAttr -s 4 ".wl[1435].w[11:14]"  0.1852663471371821 0.52959014778832392 
		0.20245153506714123 0.082691970007352886;
	setAttr -s 4 ".wl[1436].w[11:14]"  0.069670298081311727 0.35906156963048319 
		0.35914524323447772 0.21212288905372728;
	setAttr -s 4 ".wl[1437].w[11:14]"  0.019404886226566598 0.25629857374579756 
		0.45808079047875944 0.26621574954887639;
	setAttr -s 4 ".wl[1438].w[11:14]"  0.16246023810217064 0.41209150738119682 
		0.26124051797439657 0.1642077365422358;
	setAttr -s 4 ".wl[1439].w[11:14]"  0.036916124629399076 0.38533797872287257 
		0.40405613838939003 0.17368975825833832;
	setAttr -s 4 ".wl[1440].w[11:14]"  0.11894330629787407 0.49511030295611991 
		0.30893627958730446 0.077010111158701613;
	setAttr -s 4 ".wl[1441].w[11:14]"  0.33674559628941353 0.41082486615994479 
		0.15684598098796063 0.095583556562681124;
	setAttr -s 4 ".wl[1442].w[5:8]"  0.20054232130219019 0.28936111279900045 
		0.37232293418263596 0.13777363171617341;
	setAttr -s 4 ".wl[1443].w[5:8]"  0.21390242822771374 0.33593579224979386 
		0.36491795583527475 0.085243823687217696;
	setAttr -s 4 ".wl[1444].w[5:8]"  0.21419059086825359 0.38378807746361682 
		0.34934070554290181 0.052680626125227857;
	setAttr -s 4 ".wl[1445].w[5:8]"  0.20311489196516086 0.42160758035951318 
		0.33290572180316047 0.042371805872165512;
	setAttr -s 4 ".wl[1446].w[5:8]"  0.21377728866980963 0.41779351397398057 
		0.31655621747149304 0.051872979884716834;
	setAttr -s 4 ".wl[1447].w[5:8]"  0.19554186447267649 0.40898627031019008 
		0.3540381979607185 0.04143366725641498;
	setAttr -s 4 ".wl[1448].w[5:8]"  0.15672199362794423 0.41340502202891927 
		0.40229386843450526 0.027579115908631317;
	setAttr -s 4 ".wl[1449].w[5:8]"  0.13432375297620297 0.42349443603722198 
		0.42309349989424788 0.019088311092327153;
	setAttr -s 4 ".wl[1450].w[5:8]"  0.11119907952525625 0.4357951935734754 
		0.43579519357347529 0.017210533327793123;
	setAttr -s 4 ".wl[1451].w";
	setAttr ".wl[1451].w[5]" 0.49161825203287302;
	setAttr ".wl[1451].w[8]" 0.5062091772240811;
	setAttr ".wl[1451].w[9]" 0.0015836890561812874;
	setAttr ".wl[1451].w[16]" 0.00058888168686464077;
	setAttr -s 4 ".wl[1452].w[5:8]"  0.30655089077368103 0.35517453109696406 
		0.19454705217895932 0.14372752595039562;
	setAttr -s 4 ".wl[1453].w";
	setAttr ".wl[1453].w[5]" 0.43742389844025442;
	setAttr ".wl[1453].w[8]" 0.56030002118976063;
	setAttr ".wl[1453].w[9]" 0.0016844447932469839;
	setAttr ".wl[1453].w[16]" 0.00059163557673789352;
	setAttr -s 4 ".wl[1454].w";
	setAttr ".wl[1454].w[5]" 0.36650923829067061;
	setAttr ".wl[1454].w[6]" 0.36587407526953714;
	setAttr ".wl[1454].w[8]" 0.21532563601758861;
	setAttr ".wl[1454].w[17]" 0.05229105042220368;
	setAttr -s 4 ".wl[1455].w[5:8]"  0.32119317938985026 0.39286109918453921 
		0.18219927138926761 0.10374645003634285;
	setAttr -s 4 ".wl[1456].w[5:8]"  0.28685668538383313 0.39057248003588257 
		0.24856749480970533 0.074003339770578977;
	setAttr -s 4 ".wl[1457].w[5:8]"  0.27841793497876349 0.37992479542797175 
		0.28541911111365242 0.056238158479612423;
	setAttr -s 4 ".wl[1458].w[5:8]"  0.26667749580089861 0.38137103339476991 
		0.32133373971244689 0.030617731091884575;
	setAttr -s 4 ".wl[1459].w[5:8]"  0.27008856005899329 0.3734959265800939 
		0.31151095853215333 0.044904554828759401;
	setAttr -s 4 ".wl[1460].w[5:8]"  0.029083093337474698 0.13577898261019195 
		0.82011466142555289 0.015023262626780476;
	setAttr -s 4 ".wl[1461].w[5:8]"  0.018383724649426041 0.099495673259898526 
		0.87247930188587197 0.009641300204803506;
	setAttr -s 4 ".wl[1462].w[5:8]"  0.1559685451685513 0.21742390891428687 
		0.47063900074861059 0.1559685451685513;
	setAttr -s 4 ".wl[1463].w[5:8]"  0.12549743776697497 0.2314456043616267 
		0.51755952010442341 0.12549743776697497;
	setAttr -s 4 ".wl[1464].w[5:8]"  0.087978344906432984 0.23051541996178146 
		0.60849508760135418 0.073011147530431267;
	setAttr -s 4 ".wl[1465].w[5:8]"  0.052464591263297652 0.19410800589344074 
		0.72582694767263156 0.027600455170630062;
	setAttr -s 4 ".wl[1466].w[5:8]"  0.025469723311406903 0.13155445854333306 
		0.82836639763416975 0.0146094205110903;
	setAttr -s 4 ".wl[1467].w[5:8]"  0.01984009584375403 0.11425750124785712 
		0.85549711809594609 0.01040528481244268;
	setAttr -s 4 ".wl[1468].w[5:8]"  0.017512702579773044 0.10026289339716152 
		0.87293560337709886 0.0092888006459665527;
	setAttr -s 4 ".wl[1469].w[5:8]"  0.013874454975604097 0.085574653649161392 
		0.89363197716532039 0.0069189142099141867;
	setAttr -s 4 ".wl[1470].w[5:8]"  0.016737702966863416 0.10253976160782766 
		0.87241180976015353 0.0083107256651553142;
	setAttr -s 4 ".wl[1471].w[5:8]"  0.022049540710897868 0.12037613136669947 
		0.84568998091836356 0.011884347004038976;
	setAttr -s 4 ".wl[1472].w[5:8]"  0.020313163190170215 0.11341825341265227 
		0.85577297223212845 0.0104956111650491;
	setAttr -s 4 ".wl[1473].w[5:8]"  0.016601494935440133 0.097721888291776193 
		0.8773837218197188 0.0082928949530648929;
	setAttr -s 4 ".wl[1474].w[5:8]"  0.009994129606607758 0.067606506304028549 
		0.91788031416768079 0.0045190499216829442;
	setAttr -s 4 ".wl[1475].w[5:8]"  0.013053701885743842 0.084052315776037348 
		0.8966943596510214 0.0061996226871973955;
	setAttr -s 4 ".wl[1476].w[5:8]"  0.013397278963727249 0.086815848563994644 
		0.89342659325256968 0.0063602792197082914;
	setAttr -s 4 ".wl[1477].w[5:8]"  0.01579489563284453 0.098962689193891229 
		0.87756523000054476 0.0076771851727194997;
	setAttr -s 4 ".wl[1478].w[5:8]"  0.018929494994354555 0.11119788564938579 
		0.86027835085229065 0.0095942685039690084;
	setAttr -s 4 ".wl[1479].w[5:8]"  0.019429006981041046 0.11028235438728974 
		0.86030287348985346 0.0099857651418158323;
	setAttr -s 4 ".wl[1480].w[5:8]"  0.016925259118920819 0.099732556813789106 
		0.87484372595437221 0.0084984581129178317;
	setAttr -s 4 ".wl[1481].w[5:8]"  0.014099534400329608 0.09091678500810714 
		0.88833809809549436 0.0066455824960689426;
	setAttr -s 4 ".wl[1482].w[5:8]"  0.01403537231494811 0.090843738829761086 
		0.88849465713683173 0.0066262317184591028;
	setAttr -s 4 ".wl[1483].w[5:8]"  0.014866194778707553 0.095348965723801887 
		0.88272767841381228 0.0070571610836782329;
	setAttr -s 4 ".wl[1484].w[5:8]"  0.015147032172956884 0.097455452416424851 
		0.88028344179059215 0.0071140736200261557;
	setAttr -s 4 ".wl[1485].w[5:8]"  0.015898005229913286 0.099797007767863183 
		0.87676913983827987 0.0075358471639435263;
	setAttr -s 4 ".wl[1486].w[5:8]"  0.015022497400309797 0.094758265217185403 
		0.88308152483941393 0.0071377125430907825;
	setAttr -s 4 ".wl[1487].w[5:8]"  0.18248036862334821 0.4033367685716685 
		0.3893832616220107 0.024799601182972673;
	setAttr -s 4 ".wl[1488].w[5:8]"  0.22909405643520545 0.39459261544339302 
		0.33510151650924885 0.041211811612152691;
	setAttr -s 4 ".wl[1489].w[5:8]"  0.24290113671417812 0.40574062899747459 
		0.2976612568407942 0.053696977447553224;
	setAttr -s 4 ".wl[1490].w[5:8]"  0.25962801762527871 0.42829558500812293 
		0.25670891757290265 0.05536747979369553;
	setAttr -s 4 ".wl[1491].w[5:8]"  0.11160280451012035 0.43371634026175465 
		0.43371837443287742 0.020962480795247616;
	setAttr -s 4 ".wl[1492].w[5:8]"  0.1080006606768741 0.43023467220967609 
		0.43859751575607664 0.023167151357373076;
	setAttr -s 4 ".wl[1493].w[5:8]"  0.090147349788987377 0.40902972580673985 
		0.48010852470894538 0.020714399695327387;
	setAttr -s 4 ".wl[1494].w[5:8]"  0.09836735835438952 0.41846334837004523 
		0.46030584880159942 0.022863444473965818;
	setAttr -s 4 ".wl[1495].w[5:8]"  0.085037783542603829 0.39677468919190445 
		0.49730136045902545 0.020886166806466211;
	setAttr -s 4 ".wl[1496].w[5:8]"  0.070110169263017191 0.3591405516530774 
		0.55270138902273391 0.018047890061171426;
	setAttr -s 4 ".wl[1497].w[5:8]"  0.053488518989007854 0.30800071384504224 
		0.6243108881859567 0.014199878979993129;
	setAttr -s 4 ".wl[1498].w[5:8]"  0.037934694039957931 0.24429805121668802 
		0.70728230633224509 0.010484948411108915;
	setAttr -s 4 ".wl[1499].w[5:8]"  0.046462923171182773 0.25961350664789085 
		0.68015581695924909 0.013767753221677337;
	setAttr -s 4 ".wl[1500].w[5:8]"  0.070506997181739597 0.35330839717702689 
		0.558050569222583 0.018134036418650582;
	setAttr -s 4 ".wl[1501].w[5:8]"  0.084972993827576129 0.39390867119884054 
		0.50043039314348481 0.02068794183009862;
	setAttr -s 4 ".wl[1502].w[5:8]"  0.079329158905852862 0.38075946718107168 
		0.52002577845822728 0.019885595454848144;
	setAttr -s 4 ".wl[1503].w[5:8]"  0.068335776366795151 0.34854879422221208 
		0.56529006188172481 0.017825367529267947;
	setAttr -s 4 ".wl[1504].w[5:8]"  0.047180483957518775 0.27123335283474365 
		0.66819536539882296 0.013390797808914711;
	setAttr -s 4 ".wl[1505].w[5:8]"  0.060496313410039179 0.31905004116981006 
		0.60418500558050026 0.016268639839650486;
	setAttr -s 4 ".wl[1506].w[5:8]"  0.058506783428432248 0.30828166559761305 
		0.61702024606574546 0.016191304908209303;
	setAttr -s 4 ".wl[1507].w[5:8]"  0.0567584998695259 0.30827403156414201 
		0.61944909406053061 0.015518374505801491;
	setAttr -s 4 ".wl[1508].w[11:14]"  0.0096350258698550111 0.058947955756024864 
		0.46570850918706003 0.46570850918706003;
	setAttr -s 4 ".wl[1509].w[11:14]"  0.00095116766624420862 0.015103889412744752 
		0.49197247146050566 0.49197247146050543;
	setAttr -s 4 ".wl[1510].w[11:14]"  0.00083678298020156911 0.013923349126483936 
		0.49261993394665726 0.49261993394665726;
	setAttr -s 4 ".wl[1511].w[11:14]"  0.00098403184137871237 0.015696809498119732 
		0.49165957933025078 0.49165957933025078;
	setAttr -s 4 ".wl[1512].w[11:14]"  0.0021116654323447984 0.025021900456244965 
		0.48643321705570519 0.48643321705570508;
	setAttr -s 4 ".wl[1513].w[11:14]"  0.0036482688231667679 0.034897430284152681 
		0.48072715044634023 0.48072715044634023;
	setAttr -s 4 ".wl[1514].w[11:14]"  0.0038456338007619023 0.035467194217741686 
		0.48034358599074817 0.48034358599074817;
	setAttr -s 4 ".wl[1515].w[11:14]"  0.0034338248202443787 0.032627610029264696 
		0.48196928257524546 0.48196928257524546;
	setAttr -s 4 ".wl[1516].w[11:14]"  0.0019176317073696068 0.022801380903739444 
		0.48764049369444545 0.48764049369444545;
	setAttr -s 4 ".wl[1517].w[11:14]"  0.0018882855887438533 0.022862419985309464 
		0.48762464721297338 0.48762464721297338;
	setAttr -s 4 ".wl[1518].w[11:14]"  0.0049041199017265348 0.04014075760389433 
		0.4774775612471896 0.4774775612471896;
	setAttr -s 4 ".wl[1519].w[11:14]"  0.0065720495083521476 0.048693542980003085 
		0.47236720375582242 0.47236720375582242;
	setAttr -s 4 ".wl[1520].w[11:14]"  0.0049195270170761555 0.041949146345740089 
		0.4765656633185919 0.4765656633185919;
	setAttr -s 4 ".wl[1521].w[11:14]"  0.0063982300701883026 0.047942343509590417 
		0.47282971321011064 0.47282971321011064;
	setAttr -s 4 ".wl[1522].w[11:14]"  0.0069665592442990504 0.050186169539894854 
		0.47142363560790312 0.47142363560790301;
	setAttr -s 4 ".wl[1523].w[11:14]"  0.008122929939621288 0.053407134234844125 
		0.46923496791276731 0.46923496791276731;
	setAttr -s 4 ".wl[1524].w[11:14]"  0.00703644550162445 0.04902941820465815 
		0.47196706814685868 0.47196706814685868;
	setAttr -s 4 ".wl[1525].w[11:14]"  0.0070326595476382925 0.04901165726270959 
		0.47197784159482609 0.47197784159482609;
	setAttr -s 4 ".wl[1526].w[11:14]"  0.12267597346315581 0.18727798274909516 
		0.34502302189387452 0.34502302189387452;
	setAttr -s 4 ".wl[1527].w[5:8]"  0.012725397013103931 0.088551159872930857 
		0.89396595822710334 0.004757484886861966;
	setAttr -s 4 ".wl[1528].w[5:8]"  0.014049596783104495 0.096816920596336731 
		0.88391949376600909 0.0052139888545497228;
	setAttr -s 4 ".wl[1529].w[5:8]"  0.014200951345842708 0.0974576420143278 
		0.88294597315531687 0.0053954334845126789;
	setAttr -s 4 ".wl[1530].w[5:8]"  0.013503816105102626 0.094781849336284085 
		0.88651153425056861 0.0052028003080447352;
	setAttr -s 4 ".wl[1531].w[5:8]"  0.012307287171601082 0.087572942528704317 
		0.8953219447532228 0.0047978255464718863;
	setAttr -s 4 ".wl[1532].w[5:8]"  0.011194766382461082 0.080354434765083416 
		0.90405320743715512 0.004397591415300493;
	setAttr -s 4 ".wl[1533].w[5:8]"  0.011040615761800637 0.077971120649339407 
		0.90668224959076515 0.0043060139980948004;
	setAttr -s 4 ".wl[1534].w[5:8]"  0.011189947621919032 0.079165892181794331 
		0.90541262103715403 0.0042315391591326605;
	setAttr -s 4 ".wl[1535].w[5:8]"  0.01301062478321755 0.089643144034636482 
		0.89231242693724577 0.005033804244900201;
	setAttr -s 4 ".wl[1536].w";
	setAttr ".wl[1536].w[9]" 0.76366774231164114;
	setAttr ".wl[1536].w[10]" 0.16601354878341126;
	setAttr ".wl[1536].w[15]" 0.023944205665398666;
	setAttr ".wl[1536].w[16]" 0.046374503239549031;
	setAttr -s 4 ".wl[1537].w";
	setAttr ".wl[1537].w[9]" 0.7627961466632609;
	setAttr ".wl[1537].w[10]" 0.15309555297512842;
	setAttr ".wl[1537].w[15]" 0.033269156762411496;
	setAttr ".wl[1537].w[16]" 0.050839143599199117;
	setAttr -s 4 ".wl[1538].w";
	setAttr ".wl[1538].w[9]" 0.64781834499105695;
	setAttr ".wl[1538].w[10]" 0.1909681823365986;
	setAttr ".wl[1538].w[15]" 0.07655150273562529;
	setAttr ".wl[1538].w[16]" 0.084661969936719053;
	setAttr -s 4 ".wl[1539].w";
	setAttr ".wl[1539].w[9]" 0.64648935213638425;
	setAttr ".wl[1539].w[10]" 0.22243512095256501;
	setAttr ".wl[1539].w[15]" 0.086501380152785967;
	setAttr ".wl[1539].w[16]" 0.044574146758264863;
	setAttr -s 4 ".wl[1540].w";
	setAttr ".wl[1540].w[9]" 0.77305173182029019;
	setAttr ".wl[1540].w[10]" 0.16119911130438161;
	setAttr ".wl[1540].w[15]" 0.033230100421484679;
	setAttr ".wl[1540].w[16]" 0.032519056453843585;
	setAttr -s 4 ".wl[1541].w";
	setAttr ".wl[1541].w[9]" 0.64730586181238214;
	setAttr ".wl[1541].w[10]" 0.2404465263764505;
	setAttr ".wl[1541].w[15]" 0.045962962912198028;
	setAttr ".wl[1541].w[16]" 0.066284648898969428;
	setAttr -s 4 ".wl[1542].w";
	setAttr ".wl[1542].w[9]" 0.66958001730056571;
	setAttr ".wl[1542].w[10]" 0.24604306381935809;
	setAttr ".wl[1542].w[15]" 0.03141691020703466;
	setAttr ".wl[1542].w[16]" 0.052960008673041514;
	setAttr -s 4 ".wl[1543].w";
	setAttr ".wl[1543].w[9]" 0.68487723016960211;
	setAttr ".wl[1543].w[10]" 0.23549276904807762;
	setAttr ".wl[1543].w[15]" 0.028399404320256092;
	setAttr ".wl[1543].w[16]" 0.051230596462064161;
	setAttr -s 4 ".wl[1544].w";
	setAttr ".wl[1544].w[9]" 0.76949053709253634;
	setAttr ".wl[1544].w[10]" 0.17011458060928217;
	setAttr ".wl[1544].w[15]" 0.022649746094679919;
	setAttr ".wl[1544].w[16]" 0.03774513620350145;
	setAttr -s 4 ".wl[1545].w";
	setAttr ".wl[1545].w[9]" 0.77919937906237513;
	setAttr ".wl[1545].w[10]" 0.15019403185853075;
	setAttr ".wl[1545].w[15]" 0.030043099138232141;
	setAttr ".wl[1545].w[16]" 0.040563489940862042;
	setAttr -s 4 ".wl[1546].w";
	setAttr ".wl[1546].w[9]" 0.64692949907644415;
	setAttr ".wl[1546].w[10]" 0.20478898414219107;
	setAttr ".wl[1546].w[15]" 0.079377419444222372;
	setAttr ".wl[1546].w[16]" 0.068904097337142367;
	setAttr -s 4 ".wl[1547].w";
	setAttr ".wl[1547].w[9]" 0.65486398268300927;
	setAttr ".wl[1547].w[10]" 0.21996158797955456;
	setAttr ".wl[1547].w[15]" 0.083023557537145146;
	setAttr ".wl[1547].w[16]" 0.042150871800291069;
	setAttr -s 4 ".wl[1548].w";
	setAttr ".wl[1548].w[9]" 0.79155509828231541;
	setAttr ".wl[1548].w[10]" 0.15553985038684537;
	setAttr ".wl[1548].w[15]" 0.028986148535519635;
	setAttr ".wl[1548].w[16]" 0.023918902795319621;
	setAttr -s 4 ".wl[1549].w";
	setAttr ".wl[1549].w[9]" 0.6674783026086949;
	setAttr ".wl[1549].w[10]" 0.23535794839568602;
	setAttr ".wl[1549].w[15]" 0.041506483328895095;
	setAttr ".wl[1549].w[16]" 0.055657265666723917;
	setAttr -s 4 ".wl[1550].w";
	setAttr ".wl[1550].w[9]" 0.69152481707146851;
	setAttr ".wl[1550].w[10]" 0.23693767710995176;
	setAttr ".wl[1550].w[15]" 0.027903743826125114;
	setAttr ".wl[1550].w[16]" 0.043633761992454605;
	setAttr -s 4 ".wl[1551].w";
	setAttr ".wl[1551].w[9]" 0.70581490831709615;
	setAttr ".wl[1551].w[10]" 0.2285222351699237;
	setAttr ".wl[1551].w[15]" 0.025059890652713288;
	setAttr ".wl[1551].w[16]" 0.04060296586026696;
	setAttr -s 34 ".pm";
	setAttr ".pm[0]" -type "matrix" 3.6517246464672361e-016 -4.1808834253754954e-016 1.0000000000000002 -0
		 0.99723053934136585 0.074372383348450533 -4.1808834253754954e-016 0 -0.074372383348450657 0.99723053934136585 3.6517246464672361e-016 -0
		 -99.723053934136573 -7.4372383348450537 5.2114513403884345e-014 1;
	setAttr ".pm[1]" -type "matrix" 3.6517246464672361e-016 -4.1808834253754954e-016 1.0000000000000002 -0
		 0.99723053934136585 0.074372383348450533 -4.1808834253754954e-016 0 -0.074372383348450657 0.99723053934136585 3.6517246464672361e-016 -0
		 -115.79039649723148 -7.4372383348450439 5.0059631525901936e-014 1;
	setAttr ".pm[2]" -type "matrix" 3.6517246464672361e-016 -4.1808834253754954e-016 1.0000000000000002 -0
		 0.99723053934136585 0.074372383348450533 -4.1808834253754954e-016 0 -0.074372383348450657 0.99723053934136585 3.6517246464672361e-016 -0
		 -131.85323581020427 -7.4372383348450413 4.8004749647919514e-014 1;
	setAttr ".pm[3]" -type "matrix" 3.6517246464672361e-016 -4.1808834253754954e-016 1.0000000000000002 -0
		 0.99723053934136585 0.074372383348450533 -4.1808834253754954e-016 0 -0.074372383348450657 0.99723053934136585 3.6517246464672361e-016 -0
		 -145.43119276844078 -7.4372383348450342 4.5949867769937111e-014 1;
	setAttr ".pm[4]" -type "matrix" 3.6517246464672361e-016 -4.1808834253754954e-016 1.0000000000000002 -0
		 0.99723053934136585 0.074372383348450533 -4.1808834253754954e-016 0 -0.074372383348450657 0.99723053934136585 3.6517246464672361e-016 -0
		 -161.33459013347667 -7.4372383348450262 4.3894985891954715e-014 1;
	setAttr ".pm[5]" -type "matrix" 3.6517246464672361e-016 -4.1808834253754954e-016 1.0000000000000002 -0
		 0.99723053934136585 0.074372383348450533 -4.1808834253754954e-016 0 -0.074372383348450657 0.99723053934136585 3.6517246464672361e-016 -0
		 -177.76845548557304 -7.4372383348450217 4.1840104013972325e-014 1;
	setAttr ".pm[6]" -type "matrix" 1.0000000000000002 1.1989423949928756e-016 -3.1686039280850818e-016 -0
		 -8.5021435150002566e-017 1 7.7715611723760978e-016 0 3.6517246464672331e-016 -7.9103390504542404e-016 1 -0
		 5.9028652916080369e-009 -201.01121319482598 8.211432186526789 1;
	setAttr ".pm[7]" -type "matrix" 1.0000000000000002 1.1989423949928756e-016 -3.1686039280850818e-016 -0
		 -8.5021435150002566e-017 1 7.7715611723760978e-016 0 3.6517246464672331e-016 -7.9103390504542404e-016 1 -0
		 5.9028652916080211e-009 -218.5797312381091 1.2602652726531962 1;
	setAttr ".pm[8]" -type "matrix" 0.98055261259645599 -0.1945767708921565 0.025621361389412425 -0
		 -0.19464066771933008 -0.9808746150603419 4.6033431407022129e-011 0 0.025131342981204827 -0.0049869589338515236 -0.99967171903608121 -0
		 29.203897413555485 177.77194214246674 10.537584202256138 1;
	setAttr ".pm[9]" -type "matrix" 0.46699007658480474 -0.88399156193951689 -0.021890335562817408 -0
		 -0.88245340425776897 -0.46747456281389432 0.052378644845332542 0 -0.056535455116178031 -0.0051431062299769218 -0.99838734505857718 -0
		 138.59603289543037 123.27839018045503 -30.69405473822016 1;
	setAttr ".pm[10]" -type "matrix" 0.12360985129949968 -0.99119283154312587 0.047511844409966107 -0
		 -0.87920777298618291 -0.13159361118575702 -0.45790480824705126 0 0.46012421864361008 0.014828762342591641 -0.88773070873153548 -0
		 104.78880877057242 93.086899255285999 26.185964222584186 1;
	setAttr ".pm[11]" -type "matrix" 0.067694674115107129 -0.99741998974610202 -0.02389131958130675 -0
		 -0.88314057506985366 -0.048762816931651451 -0.46656715738484961 0 0.46419840129166562 0.052683505386192174 -0.88416304633166232 -0
		 51.996658267103328 87.178484745748122 32.84520994230958 1;
	setAttr ".pm[12]" -type "matrix" -0.91082137028118371 0.24503777469930876 0.332206141438594 -0
		 -0.36087182782392818 -0.8634083677312363 -0.35255852622607275 0 0.20043940561208382 -0.44100167743682556 0.87483802225085139 -0
		 92.649791896047319 37.372228408431774 -4.4273520775164474 1;
	setAttr ".pm[13]" -type "matrix" -0.47642244751575352 0.86464705373664408 0.15939612281244797 -0
		 -0.84106601882804144 -0.50102215499645053 0.20392339781266386 0 0.25618275405625685 -0.036908978138853174 0.96592345652070022 -0
		 80.894498113487117 -27.002790581747135 -26.737183735929616 1;
	setAttr ".pm[14]" -type "matrix" -0.47642244751575352 0.86464705373664408 0.15939612281244797 -0
		 -0.84106601882804144 -0.50102215499645053 0.20392339781266386 0 0.25618275405625685 -0.036908978138853174 0.96592345652070022 -0
		 74.259498113487155 -27.002790581747121 -26.737183735929634 1;
	setAttr ".pm[15]" -type "matrix" 0.12360985129949968 -0.99119283154312587 0.047511844409966107 -0
		 -0.87920777298618291 -0.13159361118575702 -0.45790480824705126 0 0.46012421864361008 0.014828762342591641 -0.88773070873153548 -0
		 84.788808770572373 93.086899255285999 26.685964222584182 1;
	setAttr ".pm[16]" -type "matrix" 0.46699007658480474 -0.88399156193951689 -0.021890335562817408 -0
		 -0.88245340425776897 -0.46747456281389432 0.052378644845332542 0 -0.056535455116178031 -0.0051431062299769218 -0.99838734505857718 -0
		 118.09603289543033 123.27839018045501 -31.194054738220153 1;
	setAttr ".pm[17]" -type "matrix" 0.98055261259645599 -0.19457677089215611 0.025621361389412692 -0
		 0.19464066771932959 0.9808746150603419 -4.603628502714011e-011 0 -0.025131342981204643 0.004986958933854411 0.99967171903608132 -0
		 -29.203897413555399 -177.77194214246674 -10.537584202255626 1;
	setAttr ".pm[18]" -type "matrix" 0.46699007658480518 -0.88399156193951633 -0.021890335562817175 -0
		 0.8824534042577683 0.46747456281389482 -0.052378644845335345 0 0.056535455116180397 0.0051431062299786175 0.99838734505857707 -0
		 -138.59603289543028 -123.27839018045512 30.694054738220661 1;
	setAttr ".pm[19]" -type "matrix" 0.12360985129950006 -0.99119283154312565 0.047511844409966621 -0
		 0.87920777298618402 0.13159361118575769 0.45790480824704866 -0 -0.4601242186436077 -0.014828762342590805 0.88773070873153692 -0
		 -104.78880877057263 -93.086899255286127 -26.185964222583706 1;
	setAttr ".pm[20]" -type "matrix" 0.067694674115107503 -0.9974199897461018 -0.023891319581306268 -0
		 0.88314057506985466 0.048762816931652207 0.46656715738484683 0 -0.46419840129166312 -0.052683505386191626 0.88416304633166354 -0
		 -51.996658267103534 -87.178484745748278 -32.845209942309111 1;
	setAttr ".pm[21]" -type "matrix" -0.91082137028118348 0.24503777469930926 0.33220614143859389 -0
		 0.36087182782392913 0.86340836773123442 0.35255852622607486 0 -0.2004394056120824 0.44100167743682783 -0.87483802225085039 0
		 -92.649791896047489 -37.372228408431496 4.427352077516038 1;
	setAttr ".pm[22]" -type "matrix" -0.47642244751575308 0.86464705373664452 0.15939612281244753 -0
		 0.84106601882804233 0.50102215499644975 -0.20392339781266108 0 -0.25618275405625435 0.036908978138854229 -0.96592345652070111 0
		 -80.894498113487288 27.002790581747281 26.737183735929126 1;
	setAttr ".pm[23]" -type "matrix" -0.47642244751575308 0.86464705373664452 0.15939612281244753 -0
		 0.84106601882804233 0.50102215499644975 -0.20392339781266108 0 -0.25618275405625435 0.036908978138854229 -0.96592345652070111 0
		 -74.259498113487325 27.002790581747266 26.73718373592914 1;
	setAttr ".pm[24]" -type "matrix" 0.12360985129950006 -0.99119283154312565 0.047511844409966621 -0
		 0.87920777298618402 0.13159361118575769 0.45790480824704866 -0 -0.4601242186436077 -0.014828762342590805 0.88773070873153692 -0
		 -84.788808770572587 -93.086899255286141 -26.685964222583696 1;
	setAttr ".pm[25]" -type "matrix" 0.46699007658480518 -0.88399156193951633 -0.021890335562817175 -0
		 0.8824534042577683 0.46747456281389482 -0.052378644845335345 0 0.056535455116180397 0.0051431062299786175 0.99838734505857707 -0
		 -118.09603289543026 -123.27839018045509 31.194054738220657 1;
	setAttr ".pm[26]" -type "matrix" 0.022920019775720602 -0.00010340749517676051 -0.99973729649361898 -0
		 -0.99230312112651564 -0.12172733860661805 -0.022736992728263364 0 -0.12169300923247772 0.99256357194017542 -0.0028926045883212181 -0
		 101.12788455446945 5.6304563082022163 23.42278936575228 1;
	setAttr ".pm[27]" -type "matrix" 0.022920019775720602 -0.00010340749517676051 -0.99973729649361898 -0
		 -0.99230312112651564 -0.12172733860661805 -0.022736992728263364 0 -0.12169300923247772 0.99256357194017542 -0.0028926045883212181 -0
		 58.12788455446946 1.6304563082022305 23.422789365752283 1;
	setAttr ".pm[28]" -type "matrix" 0.080841488330688605 0.073557291359190327 0.99400904354657627 -0
		 -0.14543515148362082 -0.98572928147007388 0.084772639250103726 0 0.98605946599452921 -0.1514170021509843 -0.068990006393632439 -0
		 4.0191588228080475 9.7505697712957922 -24.350188214071594 1;
	setAttr ".pm[29]" -type "matrix" 0.080841488330688605 0.073557291359190327 0.99400904354657627 -0
		 -0.14543515148362082 -0.98572928147007388 0.084772639250103726 0 0.98605946599452921 -0.1514170021509843 -0.068990006393632439 -0
		 -21.371889608588436 9.7505697712957797 -24.350188214071583 1;
	setAttr ".pm[30]" -type "matrix" 0.022920019775721584 -0.00010340749517636192 -0.99973729649361887 -0
		 0.99230312112651586 0.12172733860661859 0.02273699272826455 -0 0.12169300923247819 -0.99256357194017497 0.0028926045883211115 -0
		 -101.12788455446993 -5.630456308202346 -23.422789365752426 1;
	setAttr ".pm[31]" -type "matrix" 0.022920019775721584 -0.00010340749517636192 -0.99973729649361887 -0
		 0.99230312112651586 0.12172733860661859 0.02273699272826455 -0 0.12169300923247819 -0.99256357194017497 0.0028926045883211115 -0
		 -58.127884554469915 -1.63045630820238 -23.422789365752422 1;
	setAttr ".pm[32]" -type "matrix" 0.080841488330689021 0.073557291359191271 0.99400904354657593 -0
		 0.14543515148362129 0.98572928147007388 -0.084772639250104961 0 -0.98605946599452865 0.15141700215098472 0.068990006393632494 -0
		 -4.0191588228082393 -9.7505697712962291 24.35018821407176 1;
	setAttr ".pm[33]" -type "matrix" 0.080841488330689021 0.073557291359191271 0.99400904354657593 -0
		 0.14543515148362129 0.98572928147007388 -0.084772639250104961 0 -0.98605946599452865 0.15141700215098472 0.068990006393632494 -0
		 21.371889608588255 -9.7505697712962274 24.35018821407176 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 34 ".ma";
	setAttr -s 34 ".dpf[0:33]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 34 ".lw";
	setAttr -s 34 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
	setAttr -s 34 ".ifcl";
	setAttr -s 34 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "BB199BDD-4A08-91C7-6A9D-1095250D9C2D";
createNode objectSet -n "skinCluster1Set";
	rename -uid "31F2F3C2-4252-5E0D-358F-398EBB0DB38A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "2D45BD37-4EA1-01AE-4C1E-A094CD3C633B";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "4FFBD09B-494D-894D-FDE4-7EBD6E4F811D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "709D10C3-4790-6DA4-CE0A-06A0D0F2D47B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "B088EB5C-4F07-3CDD-5E60-27B0767B0E35";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "B4D60CBF-4417-CB80-A5BB-8EA86A2E3490";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "31B97D90-4FEC-998E-82DB-EBAB1E6ECE97";
	setAttr -s 34 ".wm";
	setAttr -s 34 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 1.110223024625156e-016 1.1102230246251565e-016
		 -2.2204460492503126e-016 0 -1.0305679150129387e-014 100 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0.48104771505837901 0.51825967992610855 0.48104771505837901 0.51825967992610888 1
		 1 1 no;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.067342563094897 -8.8817841970012523e-015
		 2.054881877982409e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.062839312972798 -1.7763568394002505e-015
		 2.0548818779824027e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.577956958236513 -6.2172489379008766e-015
		 2.0548818779824153e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.903397365035829 -7.1054273576010019e-015
		 2.0548818779824153e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.433865352096404 -4.4408920985006262e-015
		 2.0548818779823901e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 5.5511151231257827e-016 -1.1102230246251568e-016
		 1.1102230246251563e-016 0 23.296768844781724 -0.67624627791762304 -5.9028904016871513e-009 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.48104771505837923 -0.51825967992610844 -0.48104771505837912 0.51825967992610866 1
		 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4889251025954498e-023
		 17.56851804328312 6.9511669138735925 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -9.24018609786748e-011 6.8018346550915474e-010
		 8.7018658944911734e-009 0 0.99433940658110487 16.61111085903665 5.6843452974303403 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.46269079127537421 -0.52259597297937743 0.56998140056200342 0.43351111140094561 1
		 1 1 no;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -3.4694469519536142e-018 9.7578195523695418e-019
		 1.2197274440461927e-019 0 36.04582306110931 -8.6672619706945628 33.821871590812783 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0068247773555355513 -0.034699506664343335 0.42973424398100318 0.90226262595841467 1
		 1 1 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 1 73.85127637392921 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.046502722937341201 0.25922998634693489 0.17033568948049335 0.94953834247342839 1
		 1 1 no;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -2.7931758468657802e-017 -4.3368086899420177e-018
		 1.2483232763454974e-016 2 57.75755214475361 0.99600779066413536 -0.079547367951464054 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.035986634578784954 0.0012272797481803952 0.028073778128886909 0.99895711564495238 1
		 1 1 no;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3711206162339948 7.6420414708618409
		 -0.49062617668342767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.74036602073843261 0.51022562419524176 0.25421759918964898 0.35623219957320768 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.584000000000017 6.3948846218409017e-014
		 -1.2434497875801753e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.27476492681501158 -0.10706181698546297 0.3068172401628998 0.90493380060363204 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.6349999999999625 -1.7763568394002505e-014
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.000000000000043 0
		 -0.49999999999999201 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.500000000000014 2.8421709430404007e-014
		 0.49999999999999645 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -9.24018609786748e-011 6.8018346550915474e-010
		 8.7018658944911734e-009 0 0.99433940658110487 16.611110859036661 -5.6843452974303927 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.52259597297937654 -0.4626907912753746 -0.43351111140094495 0.56998140056200441 1
		 1 1 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 -3.4694469519536142e-018 9.7578195523695418e-019
		 1.2197274440461927e-019 0 -36.04582306110931 8.6672619706945628 -33.821871590812783 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0068247773555355513 -0.034699506664343342 0.42973424398100307 0.90226262595841467 1
		 1 1 no;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 1 -73.85127637392921 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.046502722937341187 0.25922998634693489 0.17033568948049335 0.94953834247342839 1
		 1 1 no;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -2.7931758468657802e-017 -4.3368086899420177e-018
		 1.2483232763454974e-016 2 -57.75755214475361 -0.99600779066413536 0.079547367951464054 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.035986634578784989 0.0012272797481803939 0.028073778128886916 0.99895711564495238 1
		 1 1 no;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3711206162339948 -7.6420414708618409
		 0.49062617668342767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.74036602073843261 0.51022562419524176 0.25421759918964898 0.35623219957320768 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.584000000000017 -6.3948846218409017e-014
		 1.2434497875801753e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.27476492681501163 -0.10706181698546292 0.3068172401628998 0.90493380060363204 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6349999999999625 1.7763568394002505e-014
		 -1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.000000000000043 0
		 0.49999999999999201 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.500000000000014 -2.8421709430404007e-014
		 -0.49999999999999645 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 -4.3368086899420173e-019 3.4965520062657518e-018
		 2.7755575615628914e-017 0 1.0584482720485937 6.8835065530517987 21.099365234375007 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.098070593286560856 0.99511346437440562 -0.0011754954675464303 -0.011400436991458608 1
		 1 1 no;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 43 3.9999999999999858
		 -3.5527136788005057e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 1.3877787807814457e-017 -7.7037197775489451e-034
		 1.1102230246251565e-016 3 47 -3.9999999999999947 -1.7763568394002498e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.71623256215635756 -0.69623906159180815 0.04653084287125242 -0.0098471662110754636 1
		 1 1 no;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 25.391048431396484 1.2434497875801753e-014
		 -1.0658141036401503e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 4.3368086899420168e-019 0 0 0 1.0584482720490485
		 6.8835065530518307 -21.099365234374996 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.99511346437440562 -0.09807059328656112 -0.01140043699145879 0.0011754954675467358 1
		 1 1 no;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -43 -3.9999999999999662
		 -3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 1.3877787807814457e-017 -7.7037197775489451e-034
		 1.1102230246251565e-016 3 -47 4.0000000000000373 7.1054273576010019e-015 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.71623256215635756 -0.69623906159180815 0.04653084287125242 -0.0098471662110754636 1
		 1 1 no;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 -25.391048431396491 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr -s 34 ".m";
	setAttr -s 34 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "8BEF9C29-41FD-E540-53C5-E081BE83737B";
	setAttr -s 98 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".wl[82].w[0]"  1;
	setAttr ".wl[83].w[0]"  1;
	setAttr ".wl[84].w[0]"  1;
	setAttr ".wl[85].w[0]"  1;
	setAttr ".wl[86].w[0]"  1;
	setAttr ".wl[87].w[0]"  1;
	setAttr ".wl[88].w[0]"  1;
	setAttr ".wl[89].w[0]"  1;
	setAttr ".wl[90].w[0]"  1;
	setAttr ".wl[91].w[0]"  1;
	setAttr ".wl[92].w[0]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[0]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" 1.0000000000000002 1.1989423949928756e-016 -3.1686039280850818e-016 -0
		 -8.5021435150002566e-017 1 7.7715611723760978e-016 0 3.6517246464672331e-016 -7.9103390504542404e-016 1 -0
		 5.9028652916080211e-009 -218.5797312381091 1.2602652726531962 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -13.472423858723005 9.9443779405656443 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
createNode tweak -n "tweak2";
	rename -uid "B1A37734-4FD5-AF50-019F-A7A9D6AEA64A";
createNode objectSet -n "skinCluster2Set";
	rename -uid "92E5958D-45AD-C324-323C-0CAAFF48ADF1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "374A7A7F-47A8-EACE-EA7D-5A95AF2098C5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "99CD0A23-4108-4F77-3BB7-4C92A1F25D79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "E4D7502E-4A6F-BD9F-2732-8A82A0127ECE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "21E7AE04-487F-0BC9-2FB6-ED88661F7318";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "95D93066-4434-87D3-D015-1B934091B7EC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
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
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mayaHardware2";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "pelvis_result_JNT.s" "spine1_result_JNT.is";
connectAttr "spine1_result_JNT.s" "spine2_result_JNT.is";
connectAttr "spine2_result_JNT.s" "spine3_result_JNT.is";
connectAttr "spine3_result_JNT.s" "spine4_result_JNT.is";
connectAttr "spine4_result_JNT.s" "spine5_result_JNT.is";
connectAttr "spine5_result_JNT.s" "neck_result_JNT.is";
connectAttr "neck_result_JNT.s" "head_result_JNT.is";
connectAttr "head_result_JNT.s" "jaw_result_JNT.is";
connectAttr "head_result_JNT.s" "left_eye_result_JNT.is";
connectAttr "head_result_JNT.s" "right_eye_result_JNT.is";
connectAttr "spine5_result_JNT.s" "left_clavicle_result_JNT.is";
connectAttr "left_clavicle_result_JNT.s" "left_upperArm_result_JNT.is";
connectAttr "left_upperArm_result_JNT.s" "left_forearm_result_JNT.is";
connectAttr "left_forearm_result_JNT.s" "left_hand_result_JNT.is";
connectAttr "left_hand_result_JNT.s" "left_thumb1_result_JNT.is";
connectAttr "left_thumb1_result_JNT.s" "left_thumb2_result_JNT.is";
connectAttr "left_thumb2_result_JNT.s" "left_thumb3_result_JNT.is";
connectAttr "left_forearm_result_JNT.s" "left_forearmTwist_result_JNT.is";
connectAttr "left_upperArm_result_JNT.s" "left_upperArmTwist_result_JNT.is";
connectAttr "spine5_result_JNT.s" "right_clavicle_result_JNT.is";
connectAttr "right_clavicle_result_JNT.s" "right_upperArm_result_JNT.is";
connectAttr "right_upperArm_result_JNT.s" "right_forearm_result_JNT.is";
connectAttr "right_forearm_result_JNT.s" "right_hand_result_JNT.is";
connectAttr "right_hand_result_JNT.s" "right_thumb1_result_JNT.is";
connectAttr "right_thumb1_result_JNT.s" "right_thumb2_result_JNT.is";
connectAttr "right_thumb2_result_JNT.s" "right_thumb3_result_JNT.is";
connectAttr "right_forearm_result_JNT.s" "right_forearmTwist_result_JNT.is";
connectAttr "right_upperArm_result_JNT.s" "right_upperArmTwist_result_JNT.is";
connectAttr "pelvis_result_JNT.s" "left_thigh_result_JNT.is";
connectAttr "left_thigh_result_JNT.s" "left_shin_result_JNT.is";
connectAttr "left_shin_result_JNT.s" "left_foot_result_JNT.is";
connectAttr "left_foot_result_JNT.s" "left_ball_result_JNT.is";
connectAttr "pelvis_result_JNT.s" "right_thigh_result_JNT.is";
connectAttr "right_thigh_result_JNT.s" "right_shin_result_JNT.is";
connectAttr "right_shin_result_JNT.s" "right_foot_result_JNT.is";
connectAttr "right_foot_result_JNT.s" "right_ball_result_JNT.is";
connectAttr "pasted__skinCluster2GroupId.id" "player_hair_GEOShape.iog.og[1].gid"
		;
connectAttr "pasted__groupId10.id" "player_hair_GEOShape.iog.og[2].gid";
connectAttr "skinCluster2GroupId.id" "player_hair_GEOShape.iog.og[3].gid";
connectAttr "skinCluster2Set.mwc" "player_hair_GEOShape.iog.og[3].gco";
connectAttr "groupId4.id" "player_hair_GEOShape.iog.og[4].gid";
connectAttr "tweakSet2.mwc" "player_hair_GEOShape.iog.og[4].gco";
connectAttr "skinCluster2.og[0]" "player_hair_GEOShape.i";
connectAttr "tweak2.vl[0].vt[0]" "player_hair_GEOShape.twl";
connectAttr "skinCluster1GroupId.id" "player_body_GEOShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "player_body_GEOShape.iog.og[0].gco";
connectAttr "groupId2.id" "player_body_GEOShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "player_body_GEOShape.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "player_body_GEOShape.i";
connectAttr "tweak1.vl[0].vt[0]" "player_body_GEOShape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pasted__phong1SG.msg" "pasted__materialInfo3.sg";
connectAttr "MAT_player_hair.msg" "pasted__materialInfo3.m";
connectAttr "MAT_player_hair.oc" "pasted__phong1SG.ss";
connectAttr "player_hair_GEOShape.iog" "pasted__phong1SG.dsm" -na;
connectAttr "pasted__phong2SG.msg" "pasted__materialInfo4.sg";
connectAttr "MAT_player_body.msg" "pasted__materialInfo4.m";
connectAttr "MAT_player_body.oc" "pasted__phong2SG.ss";
connectAttr "player_body_GEOShape.iog" "pasted__phong2SG.dsm" -na;
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "pelvis_result_JNT.wm" "skinCluster1.ma[0]";
connectAttr "spine1_result_JNT.wm" "skinCluster1.ma[1]";
connectAttr "spine2_result_JNT.wm" "skinCluster1.ma[2]";
connectAttr "spine3_result_JNT.wm" "skinCluster1.ma[3]";
connectAttr "spine4_result_JNT.wm" "skinCluster1.ma[4]";
connectAttr "spine5_result_JNT.wm" "skinCluster1.ma[5]";
connectAttr "neck_result_JNT.wm" "skinCluster1.ma[6]";
connectAttr "head_result_JNT.wm" "skinCluster1.ma[7]";
connectAttr "left_clavicle_result_JNT.wm" "skinCluster1.ma[8]";
connectAttr "left_upperArm_result_JNT.wm" "skinCluster1.ma[9]";
connectAttr "left_forearm_result_JNT.wm" "skinCluster1.ma[10]";
connectAttr "left_hand_result_JNT.wm" "skinCluster1.ma[11]";
connectAttr "left_thumb1_result_JNT.wm" "skinCluster1.ma[12]";
connectAttr "left_thumb2_result_JNT.wm" "skinCluster1.ma[13]";
connectAttr "left_thumb3_result_JNT.wm" "skinCluster1.ma[14]";
connectAttr "left_forearmTwist_result_JNT.wm" "skinCluster1.ma[15]";
connectAttr "left_upperArmTwist_result_JNT.wm" "skinCluster1.ma[16]";
connectAttr "right_clavicle_result_JNT.wm" "skinCluster1.ma[17]";
connectAttr "right_upperArm_result_JNT.wm" "skinCluster1.ma[18]";
connectAttr "right_forearm_result_JNT.wm" "skinCluster1.ma[19]";
connectAttr "right_hand_result_JNT.wm" "skinCluster1.ma[20]";
connectAttr "right_thumb1_result_JNT.wm" "skinCluster1.ma[21]";
connectAttr "right_thumb2_result_JNT.wm" "skinCluster1.ma[22]";
connectAttr "right_thumb3_result_JNT.wm" "skinCluster1.ma[23]";
connectAttr "right_forearmTwist_result_JNT.wm" "skinCluster1.ma[24]";
connectAttr "right_upperArmTwist_result_JNT.wm" "skinCluster1.ma[25]";
connectAttr "left_thigh_result_JNT.wm" "skinCluster1.ma[26]";
connectAttr "left_shin_result_JNT.wm" "skinCluster1.ma[27]";
connectAttr "left_foot_result_JNT.wm" "skinCluster1.ma[28]";
connectAttr "left_ball_result_JNT.wm" "skinCluster1.ma[29]";
connectAttr "right_thigh_result_JNT.wm" "skinCluster1.ma[30]";
connectAttr "right_shin_result_JNT.wm" "skinCluster1.ma[31]";
connectAttr "right_foot_result_JNT.wm" "skinCluster1.ma[32]";
connectAttr "right_ball_result_JNT.wm" "skinCluster1.ma[33]";
connectAttr "pelvis_result_JNT.liw" "skinCluster1.lw[0]";
connectAttr "spine1_result_JNT.liw" "skinCluster1.lw[1]";
connectAttr "spine2_result_JNT.liw" "skinCluster1.lw[2]";
connectAttr "spine3_result_JNT.liw" "skinCluster1.lw[3]";
connectAttr "spine4_result_JNT.liw" "skinCluster1.lw[4]";
connectAttr "spine5_result_JNT.liw" "skinCluster1.lw[5]";
connectAttr "neck_result_JNT.liw" "skinCluster1.lw[6]";
connectAttr "head_result_JNT.liw" "skinCluster1.lw[7]";
connectAttr "left_clavicle_result_JNT.liw" "skinCluster1.lw[8]";
connectAttr "left_upperArm_result_JNT.liw" "skinCluster1.lw[9]";
connectAttr "left_forearm_result_JNT.liw" "skinCluster1.lw[10]";
connectAttr "left_hand_result_JNT.liw" "skinCluster1.lw[11]";
connectAttr "left_thumb1_result_JNT.liw" "skinCluster1.lw[12]";
connectAttr "left_thumb2_result_JNT.liw" "skinCluster1.lw[13]";
connectAttr "left_thumb3_result_JNT.liw" "skinCluster1.lw[14]";
connectAttr "left_forearmTwist_result_JNT.liw" "skinCluster1.lw[15]";
connectAttr "left_upperArmTwist_result_JNT.liw" "skinCluster1.lw[16]";
connectAttr "right_clavicle_result_JNT.liw" "skinCluster1.lw[17]";
connectAttr "right_upperArm_result_JNT.liw" "skinCluster1.lw[18]";
connectAttr "right_forearm_result_JNT.liw" "skinCluster1.lw[19]";
connectAttr "right_hand_result_JNT.liw" "skinCluster1.lw[20]";
connectAttr "right_thumb1_result_JNT.liw" "skinCluster1.lw[21]";
connectAttr "right_thumb2_result_JNT.liw" "skinCluster1.lw[22]";
connectAttr "right_thumb3_result_JNT.liw" "skinCluster1.lw[23]";
connectAttr "right_forearmTwist_result_JNT.liw" "skinCluster1.lw[24]";
connectAttr "right_upperArmTwist_result_JNT.liw" "skinCluster1.lw[25]";
connectAttr "left_thigh_result_JNT.liw" "skinCluster1.lw[26]";
connectAttr "left_shin_result_JNT.liw" "skinCluster1.lw[27]";
connectAttr "left_foot_result_JNT.liw" "skinCluster1.lw[28]";
connectAttr "left_ball_result_JNT.liw" "skinCluster1.lw[29]";
connectAttr "right_thigh_result_JNT.liw" "skinCluster1.lw[30]";
connectAttr "right_shin_result_JNT.liw" "skinCluster1.lw[31]";
connectAttr "right_foot_result_JNT.liw" "skinCluster1.lw[32]";
connectAttr "right_ball_result_JNT.liw" "skinCluster1.lw[33]";
connectAttr "pelvis_result_JNT.obcc" "skinCluster1.ifcl[0]";
connectAttr "spine1_result_JNT.obcc" "skinCluster1.ifcl[1]";
connectAttr "spine2_result_JNT.obcc" "skinCluster1.ifcl[2]";
connectAttr "spine3_result_JNT.obcc" "skinCluster1.ifcl[3]";
connectAttr "spine4_result_JNT.obcc" "skinCluster1.ifcl[4]";
connectAttr "spine5_result_JNT.obcc" "skinCluster1.ifcl[5]";
connectAttr "neck_result_JNT.obcc" "skinCluster1.ifcl[6]";
connectAttr "head_result_JNT.obcc" "skinCluster1.ifcl[7]";
connectAttr "left_clavicle_result_JNT.obcc" "skinCluster1.ifcl[8]";
connectAttr "left_upperArm_result_JNT.obcc" "skinCluster1.ifcl[9]";
connectAttr "left_forearm_result_JNT.obcc" "skinCluster1.ifcl[10]";
connectAttr "left_hand_result_JNT.obcc" "skinCluster1.ifcl[11]";
connectAttr "left_thumb1_result_JNT.obcc" "skinCluster1.ifcl[12]";
connectAttr "left_thumb2_result_JNT.obcc" "skinCluster1.ifcl[13]";
connectAttr "left_thumb3_result_JNT.obcc" "skinCluster1.ifcl[14]";
connectAttr "left_forearmTwist_result_JNT.obcc" "skinCluster1.ifcl[15]";
connectAttr "left_upperArmTwist_result_JNT.obcc" "skinCluster1.ifcl[16]";
connectAttr "right_clavicle_result_JNT.obcc" "skinCluster1.ifcl[17]";
connectAttr "right_upperArm_result_JNT.obcc" "skinCluster1.ifcl[18]";
connectAttr "right_forearm_result_JNT.obcc" "skinCluster1.ifcl[19]";
connectAttr "right_hand_result_JNT.obcc" "skinCluster1.ifcl[20]";
connectAttr "right_thumb1_result_JNT.obcc" "skinCluster1.ifcl[21]";
connectAttr "right_thumb2_result_JNT.obcc" "skinCluster1.ifcl[22]";
connectAttr "right_thumb3_result_JNT.obcc" "skinCluster1.ifcl[23]";
connectAttr "right_forearmTwist_result_JNT.obcc" "skinCluster1.ifcl[24]";
connectAttr "right_upperArmTwist_result_JNT.obcc" "skinCluster1.ifcl[25]";
connectAttr "left_thigh_result_JNT.obcc" "skinCluster1.ifcl[26]";
connectAttr "left_shin_result_JNT.obcc" "skinCluster1.ifcl[27]";
connectAttr "left_foot_result_JNT.obcc" "skinCluster1.ifcl[28]";
connectAttr "left_ball_result_JNT.obcc" "skinCluster1.ifcl[29]";
connectAttr "right_thigh_result_JNT.obcc" "skinCluster1.ifcl[30]";
connectAttr "right_shin_result_JNT.obcc" "skinCluster1.ifcl[31]";
connectAttr "right_foot_result_JNT.obcc" "skinCluster1.ifcl[32]";
connectAttr "right_ball_result_JNT.obcc" "skinCluster1.ifcl[33]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "player_body_GEOShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "player_body_GEOShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "player_body_GEOShapeOrig1.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "pelvis_result_JNT.msg" "bindPose1.m[0]";
connectAttr "spine1_result_JNT.msg" "bindPose1.m[1]";
connectAttr "spine2_result_JNT.msg" "bindPose1.m[2]";
connectAttr "spine3_result_JNT.msg" "bindPose1.m[3]";
connectAttr "spine4_result_JNT.msg" "bindPose1.m[4]";
connectAttr "spine5_result_JNT.msg" "bindPose1.m[5]";
connectAttr "neck_result_JNT.msg" "bindPose1.m[6]";
connectAttr "head_result_JNT.msg" "bindPose1.m[7]";
connectAttr "left_clavicle_result_JNT.msg" "bindPose1.m[8]";
connectAttr "left_upperArm_result_JNT.msg" "bindPose1.m[9]";
connectAttr "left_forearm_result_JNT.msg" "bindPose1.m[10]";
connectAttr "left_hand_result_JNT.msg" "bindPose1.m[11]";
connectAttr "left_thumb1_result_JNT.msg" "bindPose1.m[12]";
connectAttr "left_thumb2_result_JNT.msg" "bindPose1.m[13]";
connectAttr "left_thumb3_result_JNT.msg" "bindPose1.m[14]";
connectAttr "left_forearmTwist_result_JNT.msg" "bindPose1.m[15]";
connectAttr "left_upperArmTwist_result_JNT.msg" "bindPose1.m[16]";
connectAttr "right_clavicle_result_JNT.msg" "bindPose1.m[17]";
connectAttr "right_upperArm_result_JNT.msg" "bindPose1.m[18]";
connectAttr "right_forearm_result_JNT.msg" "bindPose1.m[19]";
connectAttr "right_hand_result_JNT.msg" "bindPose1.m[20]";
connectAttr "right_thumb1_result_JNT.msg" "bindPose1.m[21]";
connectAttr "right_thumb2_result_JNT.msg" "bindPose1.m[22]";
connectAttr "right_thumb3_result_JNT.msg" "bindPose1.m[23]";
connectAttr "right_forearmTwist_result_JNT.msg" "bindPose1.m[24]";
connectAttr "right_upperArmTwist_result_JNT.msg" "bindPose1.m[25]";
connectAttr "left_thigh_result_JNT.msg" "bindPose1.m[26]";
connectAttr "left_shin_result_JNT.msg" "bindPose1.m[27]";
connectAttr "left_foot_result_JNT.msg" "bindPose1.m[28]";
connectAttr "left_ball_result_JNT.msg" "bindPose1.m[29]";
connectAttr "right_thigh_result_JNT.msg" "bindPose1.m[30]";
connectAttr "right_shin_result_JNT.msg" "bindPose1.m[31]";
connectAttr "right_foot_result_JNT.msg" "bindPose1.m[32]";
connectAttr "right_ball_result_JNT.msg" "bindPose1.m[33]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[5]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[10]" "bindPose1.p[15]";
connectAttr "bindPose1.m[9]" "bindPose1.p[16]";
connectAttr "bindPose1.m[5]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[19]" "bindPose1.p[24]";
connectAttr "bindPose1.m[18]" "bindPose1.p[25]";
connectAttr "bindPose1.m[0]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[0]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "pelvis_result_JNT.bps" "bindPose1.wm[0]";
connectAttr "spine1_result_JNT.bps" "bindPose1.wm[1]";
connectAttr "spine2_result_JNT.bps" "bindPose1.wm[2]";
connectAttr "spine3_result_JNT.bps" "bindPose1.wm[3]";
connectAttr "spine4_result_JNT.bps" "bindPose1.wm[4]";
connectAttr "spine5_result_JNT.bps" "bindPose1.wm[5]";
connectAttr "neck_result_JNT.bps" "bindPose1.wm[6]";
connectAttr "head_result_JNT.bps" "bindPose1.wm[7]";
connectAttr "left_clavicle_result_JNT.bps" "bindPose1.wm[8]";
connectAttr "left_upperArm_result_JNT.bps" "bindPose1.wm[9]";
connectAttr "left_forearm_result_JNT.bps" "bindPose1.wm[10]";
connectAttr "left_hand_result_JNT.bps" "bindPose1.wm[11]";
connectAttr "left_thumb1_result_JNT.bps" "bindPose1.wm[12]";
connectAttr "left_thumb2_result_JNT.bps" "bindPose1.wm[13]";
connectAttr "left_thumb3_result_JNT.bps" "bindPose1.wm[14]";
connectAttr "left_forearmTwist_result_JNT.bps" "bindPose1.wm[15]";
connectAttr "left_upperArmTwist_result_JNT.bps" "bindPose1.wm[16]";
connectAttr "right_clavicle_result_JNT.bps" "bindPose1.wm[17]";
connectAttr "right_upperArm_result_JNT.bps" "bindPose1.wm[18]";
connectAttr "right_forearm_result_JNT.bps" "bindPose1.wm[19]";
connectAttr "right_hand_result_JNT.bps" "bindPose1.wm[20]";
connectAttr "right_thumb1_result_JNT.bps" "bindPose1.wm[21]";
connectAttr "right_thumb2_result_JNT.bps" "bindPose1.wm[22]";
connectAttr "right_thumb3_result_JNT.bps" "bindPose1.wm[23]";
connectAttr "right_forearmTwist_result_JNT.bps" "bindPose1.wm[24]";
connectAttr "right_upperArmTwist_result_JNT.bps" "bindPose1.wm[25]";
connectAttr "left_thigh_result_JNT.bps" "bindPose1.wm[26]";
connectAttr "left_shin_result_JNT.bps" "bindPose1.wm[27]";
connectAttr "left_foot_result_JNT.bps" "bindPose1.wm[28]";
connectAttr "left_ball_result_JNT.bps" "bindPose1.wm[29]";
connectAttr "right_thigh_result_JNT.bps" "bindPose1.wm[30]";
connectAttr "right_shin_result_JNT.bps" "bindPose1.wm[31]";
connectAttr "right_foot_result_JNT.bps" "bindPose1.wm[32]";
connectAttr "right_ball_result_JNT.bps" "bindPose1.wm[33]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "head_result_JNT.wm" "skinCluster2.ma[0]";
connectAttr "head_result_JNT.liw" "skinCluster2.lw[0]";
connectAttr "head_result_JNT.obcc" "skinCluster2.ifcl[0]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "player_hair_GEOShape.iog.og[3]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "player_hair_GEOShape.iog.og[4]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "player_hair_GEOShapeOrig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "pasted__phong1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong2SG.pa" ":renderPartition.st" -na;
connectAttr "MAT_player_hair.msg" ":defaultShaderList1.s" -na;
connectAttr "MAT_player_body.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of MAYA_playerCharacter.ma
