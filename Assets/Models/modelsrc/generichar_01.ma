//Maya ASCII 2017 scene
//Name: generichar_01.ma
//Last modified: Mon, Jan 30, 2017 01:29:11 PM
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
	rename -uid "59656406-42BF-AB10-F89F-3CAEA1878F23";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 49.045821693549037 110.11609243786152 172.781787368035 ;
	setAttr ".r" -type "double3" 710.66164857489969 -19424.599999998973 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EFBA898A-4DA5-58C0-9895-76AF8CA5C35A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 168.8207829401878;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 65.572587956437161 106.08783598157682 -0.40483277633781789 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "52232B67-466B-5375-B42F-32B142C25094";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -55.00104483666648 200 -13.697285512812885 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0F3510AC-4408-B286-6971-5F9374E4BB0A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 100.1;
	setAttr ".ow" 88.129018958423245;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "EEE966CC-48DA-9EBF-89BD-ED82A58A6837";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.6470113909866413 106.23996379676834 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "955B96CB-4125-61D1-8EF0-55AA529F6EC6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 100.1;
	setAttr ".ow" 373.82949813176515;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "26076A60-46DF-9BF3-4A36-3699C21F2231";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 105.05301510747067 -19.432520008524339 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BE695FC0-41B9-96CA-8BAE-F9BA54687F5D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 100.1;
	setAttr ".ow" 114.61363134079436;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "bip_pelvis";
	rename -uid "D7971D3C-409F-BAA4-900E-AE8F0F83F8BD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 108.98060759190794 -9.0580902060991431 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -4.2303505368182428 90 ;
	setAttr ".bps" -type "matrix" 0 0.99727554179989486 0.073766481058313085 0 -1.6653345369377353e-016 -0.073766481058313182 0.99727554179989486 0
		 1 -1.6653345369377353e-016 0 0 0 108.98060759190794 -9.0580902060991431 1;
createNode joint -n "bip_spine_0" -p "bip_pelvis";
	rename -uid "0ECC4B94-4338-57AF-909E-A7A2B650A95C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 12.292734548815412 0 2.4651903288156619e-032 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.1926900781690568 ;
	setAttr ".bps" -type "matrix" 1.2175420164210098e-017 0.99999978397901945 0.00065729895390931325 0
		 -1.6608777902964792e-016 -0.0006572989539094104 0.99999978397901945 0 1 -1.6653345369377353e-016 0 0
		 2.4651903288156619e-032 121.23985109928012 -8.1512984358490801 1;
createNode joint -n "bip_spine_1" -p "bip_spine_0";
	rename -uid "51079E7A-4675-611A-6927-A19CD3B814B7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 11.925338715140578 -1.3524648471114308e-014 -2.6496970510336154e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.8223378526235168 ;
	setAttr ".bps" -type "matrix" 3.181895692491242e-017 0.99299713736270634 -0.11813841538412009 0
		 -1.6346542502739463e-016 0.11813841538412 0.99299713736270634 0 1 -1.6653345369377353e-016 0 0
		 -2.5045010415762551e-015 133.16518723829734 -8.1434599231866169 1;
createNode joint -n "bip_spine_2" -p "bip_spine_1";
	rename -uid "EABE5BC4-4774-2766-77EA-C5A6602F0189";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 13.621104657890088 -8.710326554688334e-015 -7.5082817369024768e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 10.352263162811687 ;
	setAttr ".bps" -type "matrix" 1.9263206705112573e-018 0.99806209151230796 0.0622258908018027 0
		 -1.6652231228232019e-016 -0.062225890801802797 0.99806209151230796 0 1 -1.6653345369377353e-016 0 0
		 -2.8219198728873728e-015 146.69090517130002 -9.7526356432510184 1;
createNode joint -n "bip_spine_3" -p "bip_spine_2";
	rename -uid "AF232DEA-4C25-1A24-7114-B1A8381E6182";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 12.418562317338168 -2.6874671464015534e-015 4.6446429872733937e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 4.7763058151957534 ;
	setAttr ".bps" -type "matrix" -1.1945973103566208e-017 0.98941491428370509 0.14511418742827695 0
		 -1.661044398135856e-016 -0.14511418742827706 0.98941491428370509 0 1 -1.6653345369377353e-016 0 0
		 1.8466452476759418e-015 159.08540145131849 -8.9798795405769543 1;
createNode joint -n "bip_neck" -p "bip_spine_3";
	rename -uid "49CA85FD-4626-F9F4-B84A-97BC3AF634F1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 9.0575133125432146 -6.0449484428235628e-015 3.979767074892431e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 9.0101330522282819 ;
	setAttr ".bps" -type "matrix" -3.781204119225651e-017 0.95447997803502971 0.29827499313594802 0
		 -1.6218397189627373e-016 -0.29827499313594813 0.95447997803502971 0 1 -1.6653345369377353e-016 0 0
		 5.71821151215154e-015 168.04704020907195 -7.6655058561064511 1;
createNode joint -n "bip_head" -p "bip_neck";
	rename -uid "5AB62918-4009-0061-0C2C-C3B09A17C524";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 10.283639695207304 -0.084198278446209238 4.241588495708819e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -17.400000000000006 ;
	setAttr ".bps" -type "matrix" 1.2417848837930762e-017 0.99999967805990819 -0.00080242138593034085 0
		 -1.6606982937732703e-016 0.00080242138593022982 0.99999967805990819 0 1 -1.6653345369377353e-016 0 0
		 9.5846102113240905e-015 177.88768264039919 -4.6785188675678553 1;
createNode joint -n "bip_eye_L" -p "bip_head";
	rename -uid "881B4365-4B38-C2C9-6482-B0A85FAAA7E5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.9146461094658775 7.8083867730053296 3.3655934333801185 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.2417848837930762e-017 0.99999967805990819 -0.00080242138593034085 0
		 -1.6606982937732703e-016 0.00080242138593022982 0.99999967805990819 0 1 -1.6653345369377353e-016 0 0
		 3.365593433380127 179.80859375 3.128329038619996 1;
createNode joint -n "bip_jaw" -p "bip_head";
	rename -uid "4209325B-4D38-E964-77B4-F0824B88BF9F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -4.5769985338335175 7.2837727592679489 1.266451375279426e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 17.27 ;
	setAttr ".bps" -type "matrix" -3.7443960419724298e-017 0.95515428509939437 0.29610858085551228 0
		 -1.6226934715855094e-016 -0.29610858085551239 0.95515428509939437 0 1 -1.6653345369377353e-016 0 0
		 9.5846102113240905e-015 173.31653023511728 2.6089242282685428 1;
createNode joint -n "bip_eye_R" -p "bip_head";
	rename -uid "FD80D622-4A19-541C-FC6B-8F855E3D52F2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.9146461094658775 7.8083867730053296 -3.3655986785888756 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.2417848837930762e-017 0.99999967805990819 -0.00080242138593034085 0
		 -1.6606982937732703e-016 0.00080242138593022982 0.99999967805990819 0 1 -1.6653345369377353e-016 0 0
		 -3.3655986785888672 179.80859375 3.128329038619996 1;
createNode joint -n "bip_collar_L" -p "bip_spine_3";
	rename -uid "BF46BF2A-43A3-AA6E-DCF8-A78BA5D9A789";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.59395090030946562 0.56062930297515479 7.3809033113502247 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 74.339924550002209 245.81522625412427 6.0009401398902193 ;
	setAttr ".bps" -type "matrix" 0.91222902029898745 -0.39690767118379394 -0.10150130580345848 0
		 -0.39447330935744784 -0.91785854060168659 0.043891999830558664 0 -0.11058491185027425 -1.1473180885595666e-015 -0.99386667982736387 0
		 7.3809033113502265 158.41638230645034 -8.5113752490995598 1;
createNode joint -n "bip_upperArm_L" -p "bip_collar_L";
	rename -uid "EC4D2940-4F45-3CFF-1084-7EB6C0B4ADE0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 13.453415281681558 0.14977596628546166 -3.3914458877414111 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".jo" -type "double3" 3.5109656233928677 3.6784953452997642 20.335638539921099 ;
	setAttr ".bps" -type "matrix" 0.72390057317992607 -0.68971892111435151 -0.015992811092169032 0
		 -0.68955066340363214 -0.72407721263471314 0.015233933922514625 0 -0.022087162547175271 7.8620712642196353e-016 -0.99975604886923053 0
		 19.969459276892046 152.93914542769767 -6.4996954367558946 1;
createNode joint -n "bip_lowerArm_L" -p "bip_upperArm_L";
	rename -uid "F83F0E66-4598-8A54-08BB-55A0394F542A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 32.112019046853547 -6.2702943212966179e-015 3.771907852972606e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.7745995944169612 6.0745269271690248 0.092909937276468541 ;
	setAttr ".bps" -type "matrix" 0.72106041179410552 -0.68701286848862486 0.089917746159180453 0
		 -0.6817326367209976 -0.72664524943815056 -0.085013490096598129 0 0.12374366477824718 -1.9361977864706126e-016 -0.9923142170841095 0
		 43.215368270874038 130.79087829589832 -7.0132568911603608 1;
createNode joint -n "bip_hand_L" -p "bip_lowerArm_L";
	rename -uid "C4E6A6B2-472E-AA90-8800-68B06302DE5C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 22.687434268798086 -2.5577411398647267e-014 -8.5669327983151336e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.72106041179410552 -0.68701286848862486 0.089917746159180453 0
		 -0.6817326367209976 -0.72664524943815056 -0.085013490096598129 0 0.12374366477824718 -1.9361977864706126e-016 -0.9923142170841095 0
		 59.574378967285305 115.20431900024424 -4.9732539355754719 1;
createNode joint -n "bip_index_0_L" -p "bip_hand_L";
	rename -uid "81A34B74-4196-0E25-2971-40A313DF9924";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 13.026595989532563 -0.5061364786013911 -3.8324188443038949 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.0285497977529086 2.9973572882452264 1.9422327604104692 ;
	setAttr ".bps" -type "matrix" 0.69011616050571523 -0.71027252492573856 0.13875383001728767 0
		 -0.69633738554758051 -0.70392680041011135 -0.14000466118363186 0 0.19711400380898847 1.3998206325507245e-016 -0.98038057380916643 0
		 68.838153839111328 106.62266159057612 0.044060349464428938 1;
createNode joint -n "bip_index_1_L" -p "bip_index_0_L";
	rename -uid "00C4783D-471C-E773-D236-AD9EC9ACE9B1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.7139445180142681 2.9073965457371287e-014 -4.163336342344337e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.7904008528046118 -4.2079170154778831 3.5384674387027637 ;
	setAttr ".bps" -type "matrix" 0.65854602777831639 -0.75033575715868717 0.057561973789135634 0
		 -0.74748575712521803 -0.66105692003722372 -0.065335988290064442 0 0.087075669347646059 -1.4290729602069036e-015 -0.99620170036376665 0
		 71.40120697021456 103.98474884033199 0.55938437581061806 1;
createNode joint -n "bip_index_2_L" -p "bip_index_1_L";
	rename -uid "808B1AF1-4EDC-28A0-23E7-848186989ABF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 3.7194550870052137 -1.4179629692634421e-014 -2.7200464103316335e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.65854602777831639 -0.75033575715868717 0.057561973789135634 0
		 -0.74748575712521803 -0.66105692003722372 -0.065335988290064442 0 0.087075669347646059 -1.4290729602069036e-015 -0.99620170036376665 0
		 73.850639343261705 101.19390869140621 0.77348355203868302 1;
createNode joint -n "bip_middle_0_L" -p "bip_hand_L";
	rename -uid "C48397EE-4158-CC10-400A-1EB7A7FB0439";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 12.324370719313798 -0.52841545417950897 -0.60968195854957585 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.2761684614060682 -4.2223721577475581 2.0477541045298189 ;
	setAttr ".bps" -type "matrix" 0.7034611831162102 -0.71060497651963406 0.013525205886512529 0
		 -0.71047367028263064 -0.70359119333994724 -0.013660032562071642 0 0.019223102867888253 2.1805449877700733e-015 -0.9998152190860724 0
		 68.74578857421875 107.12128829956049 -3.2151557803153699 1;
createNode joint -n "bip_middle_1_L" -p "bip_middle_0_L";
	rename -uid "0336C22C-43BD-AF80-E6A0-4B8D502F4518";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 6.0762451731499185 1.8041124150158794e-015 4.9960036108132044e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.7154938795903969 -0.68000024656283242 1.174972542835808 ;
	setAttr ".bps" -type "matrix" 0.688924142113298 -0.72483214213898139 0.0013755492256897085 0
		 -0.72483069731275995 -0.68892551536593294 -0.0014472425097308023 0 0.0019966588477423435 1.5973543246445785e-015 -0.99999800667473637 0
		 73.020191192626953 102.80347824096675 -3.1329733133315898 1;
createNode joint -n "bip_middle_2_L" -p "bip_middle_1_L";
	rename -uid "2F069EA6-4FA5-44CB-0B2D-F6BA9B9A727A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 4.1107750525717064 1.333156675331626e-014 -1.6028844918025698e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.688924142113298 -0.72483214213898139 0.0013755492256897085 0
		 -0.72483069731275995 -0.68892551536593294 -0.0014472425097308023 0 0.0019966588477423435 1.5973543246445785e-015 -0.99999800667473637 0
		 75.852203369140653 99.823856353759709 -3.1273187398910385 1;
createNode joint -n "bip_ring_0_L" -p "bip_hand_L";
	rename -uid "879BBDCD-4598-A4A4-EAE1-7EA290E1FCDA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 11.669588810443503 0.018879194398223831 2.8836544928452312 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.4399208322158561 -6.1464915201089712 3.1171380309316103 ;
	setAttr ".bps" -type "matrix" 0.69224614525106276 -0.72133887105434424 -0.021575622611852266 0
		 -0.72098876578096827 -0.69258229338183686 0.02247145993457772 0 -0.031152431729808791 3.0830834203740824e-016 -0.99951464521402589 0
		 68.33282089233424 107.173442840576 -6.7870471477507959 1;
createNode joint -n "bip_ring_1_L" -p "bip_ring_0_L";
	rename -uid "7BBA7C04-4049-E8D4-B147-84B332A9D7F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 5.7150847996824092 1.5404344466674047e-014 -8.8817841970012523e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.032160647463412566 0.030774864129016841 0.09627105001509477 ;
	setAttr ".bps" -type "matrix" 0.69105036256779317 -0.72250145721355319 -0.021000969482723005 0
		 -0.72216805588231048 -0.69136939787952201 0.021946633884748788 0 -0.030375902588819673 -2.1634130666574867e-013 -0.99953854580096868 0
		 72.289066314697322 103.05093002319325 -6.9103536605834757 1;
createNode joint -n "bip_ring_2_L" -p "bip_ring_1_L";
	rename -uid "2F308A46-4BFC-CE0F-4FC5-1086912E8852";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 4.0691518055467251 1.6830715529664233e-013 -4.98212582300539e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.69105036256779317 -0.72250145721355319 -0.021000969482723005 0
		 -0.72216805588231048 -0.69136939787952201 0.021946633884748788 0 -0.030375902588819673 -2.1634130666574867e-013 -0.99953854580096868 0
		 75.101055145263658 100.11096191406246 -6.9958097934722758 1;
createNode joint -n "bip_pinky_0_L" -p "bip_hand_L";
	rename -uid "07708641-4FBD-A95A-7748-A98A23EF6C5D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 11.054049253394776 0.94548630848559867 6.0170833587205834 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -11.429744902995424 -10.585328500070394 4.3471617217696901 ;
	setAttr ".bps" -type "matrix" 0.67868662694018733 -0.72752076318711278 -0.10048881303006937 0
		 -0.71967487194795599 -0.68608566457231956 0.10655768182093592 0 -0.1464668600716354 6.4611687025000492e-016 -0.98921557756676903 0
		 67.645023345947266 106.92301177978507 -10.030515193939191 1;
createNode joint -n "bip_pinky_1_L" -p "bip_pinky_0_L";
	rename -uid "1AD3E911-400D-E542-E01C-21A606C60795";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 4.6964530680789949 2.8282931552325863e-014 2.6645352591003757e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.1946971252490108 3.6915659583389093 2.04196488692995 ;
	setAttr ".bps" -type "matrix" 0.66068881598201701 -0.74994573150782684 -0.032736649637238158 0
		 -0.74902681595185783 -0.66149935736415566 0.037113733197171483 0 -0.049488558488827578 4.1406555437012075e-016 -0.99877469059778357 0
		 70.832443237304673 103.50624465942376 -10.502456188201876 1;
createNode joint -n "bip_pinky_2_L" -p "bip_pinky_1_L";
	rename -uid "3E06E0FF-425B-A05C-0C52-71B658B1B3C7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 3.5333112866736096 -6.8001160258290838e-016 1.8596235662471372e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.66068881598201701 -0.74994573150782684 -0.032736649637238158 0
		 -0.74902681595185783 -0.66149935736415566 0.037113733197171483 0 -0.049488558488827578 4.1406555437012075e-016 -0.99877469059778357 0
		 73.166862487792955 100.85645294189446 -10.618124961853011 1;
createNode joint -n "bip_thumb_0_L" -p "bip_hand_L";
	rename -uid "5DA52C6B-4AFF-ADFB-FDA5-A6A12A2AF541";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 4.5913505870629221 0.23760903777621517 -4.1039611166198595 ;
	setAttr ".jo" -type "double3" 34.696485834969181 47.115097959644174 -0.017194414848672637 ;
	setAttr ".bps" -type "matrix" 0.40017113440462482 -0.46738294453736146 0.78829959174472597 0
		 -0.21156282163502488 -0.88405496613931567 -0.41675891033814833 0 0.89168617556354557 -3.3037790064653525e-016 -0.45265413320642267 0
		 62.21519508777412 111.87734458466555 -0.50819105015773047 1;
createNode joint -n "bip_thumb_1_L" -p "bip_thumb_0_L";
	rename -uid "A09FA0F1-4E3B-5C0F-287E-1D80A24DB8A8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.8549323986350812 -1.2656542480726785e-014 -2.6645352591003757e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -11.184701925243539 -10.51503768697507 19.429885556275686 ;
	setAttr ".bps" -type "matrix" 0.46457557306074204 -0.72250846541145963 0.51200688894199575 0
		 -0.48550505873511096 -0.6913620740312405 -0.5350731917540239 0 0.74057705531423224 8.0544043308250007e-016 -0.67197144667173225 0
		 63.757827758789063 110.07561492919902 2.5306505858898278 1;
createNode joint -n "bip_thumb_2_L" -p "bip_thumb_1_L";
	rename -uid "75D6C0BA-44FE-8DC1-9FFE-A2BD3A5869E7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 3.9876028457374528 -1.936971942470116e-014 2.0589588391178631e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.46457557306074204 -0.72250846541145963 0.51200688894199575 0
		 -0.48550505873511096 -0.6913620740312405 -0.5350731917540239 0 0.74057705531423224 8.0544043308250007e-016 -0.67197144667173225 0
		 65.610370635986214 107.19453811645489 4.5723307132721072 1;
createNode joint -n "bip_collar_R" -p "bip_spine_3";
	rename -uid "45675B61-47CE-6E6A-0125-0BB02F5D764B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.59432984943637734 0.5606800804532881 -7.3809000000000013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -105.66007544999781 -65.815226254124283 6.0009401398902185 ;
	setAttr ".bps" -type "matrix" 0.91222902029898767 0.39690767118379316 0.10150130580345842 0
		 -0.39447330935744729 0.91785854060168703 -0.043891999830559081 0 -0.11058491185027458 1.6282394730033247e-015 0.99386667982736387 0
		 -7.3808999999999996 158.41599999999994 -8.5113800000000133 1;
createNode joint -n "bip_upperArm_R" -p "bip_collar_R";
	rename -uid "94350F8E-4BBD-3EF9-1C2E-1388ABAA0EEE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -13.453361413150745 -0.1495411829173463 3.3914509437934743 ;
	setAttr ".jo" -type "double3" 3.5109656233926096 3.6784953452997522 20.33563853992111 ;
	setAttr ".bps" -type "matrix" 0.72390057317992651 0.68971892111435096 0.015992811092169046 0
		 -0.68955066340363169 0.7240772126347137 -0.015233933922519503 0 -0.022087162547178879 2.7528748768809347e-015 0.99975604886923053 0
		 -19.969500000000007 152.93900000000002 -6.4997000000000051 1;
createNode joint -n "bip_lowerArm_R" -p "bip_upperArm_R";
	rename -uid "6AE39A65-45D4-8DE5-20DD-F6A556D7390C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -32.111828266988418 0.00018720008608852368 1.2553981179053153e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.7745995944173485 6.0745269271690319 0.092909937276487983 ;
	setAttr ".bps" -type "matrix" 0.72106041179410596 0.68701286848862408 -0.08991774615918055 0
		 -0.68173263672099704 0.72664524943815112 0.085013490096599947 0 0.12374366477824829 -1.2177652748224579e-015 0.9923142170841095 0
		 -43.215400000000017 130.791 -7.0132600000000043 1;
createNode joint -n "bip_hand_R" -p "bip_lowerArm_R";
	rename -uid "B75BB420-47C4-D9AD-4741-598226E1F748";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -22.687729959014149 -0.00032692894166075348 8.3138864042098248e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.72106041179410596 0.68701286848862408 -0.08991774615918055 0
		 -0.68173263672099704 0.72664524943815112 0.085013490096599947 0 0.12374366477824829 -1.2177652748224579e-015 0.9923142170841095 0
		 -59.57440000000004 115.20400000000004 -4.9732500000000002 1;
createNode joint -n "bip_index_0_R" -p "bip_hand_R";
	rename -uid "CAC71316-4061-3807-F2C2-698BB27BBD48";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -13.026162101236359 0.50663097412783031 3.8324117804398004 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.0285497977526674 2.9973572882452215 1.9422327604104788 ;
	setAttr ".bps" -type "matrix" 0.69011616050571567 0.71027252492573811 -0.13875383001728761 0
		 -0.69633738554758084 0.70392680041011169 0.14000466118362959 0 0.19711400380898664 1.2905398776483619e-015 0.98038057380916699 0
		 -68.838200000000043 106.62300000000005 0.044060299999994612 1;
createNode joint -n "bip_index_1_R" -p "bip_index_0_R";
	rename -uid "2AAD37D2-4C1F-88AF-5B3D-498C7766D918";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.7139697772039142 -9.8460305039793639e-005 1.015294102657549e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.7904008528045328 -4.2079170154779026 3.5384674387027415 ;
	setAttr ".bps" -type "matrix" 0.65854602777831694 0.75033575715868661 -0.057561973789135412 0
		 -0.74748575712521781 0.66105692003722416 0.065335988290063429 0 0.087075669347644963 1.8029821950395929e-015 0.99620170036376698 0
		 -71.401200000000031 103.98500000000004 0.55938399999999244 1;
createNode joint -n "bip_index_2_R" -p "bip_index_1_R";
	rename -uid "6A1A64DF-4242-7429-6BE2-67B0FDC6BCDD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -3.7195537572583532 -0.00012981522847610449 3.6395477573947232e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4787793334710986e-006 0 0 ;
	setAttr ".bps" -type "matrix" 0.65854602777831694 0.75033575715868661 -0.057561973789135412 0
		 -0.7474857548778322 0.66105692003722394 0.065336014001599205 0 0.087075688639929621 -1.7061591911366317e-008 0.99620169867747299 0
		 -73.850600000000028 101.19400000000005 0.77348399999999473 1;
createNode joint -n "bip_middle_0_R" -p "bip_hand_R";
	rename -uid "DCCA36F1-43AE-D21A-F8DD-C7898A7E2487";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -12.324341967067017 0.52843052001833257 0.6096750547661749 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.2761684614061553 -4.2223721577474924 2.0477541045297794 ;
	setAttr ".bps" -type "matrix" 0.70346118311621109 0.71060497651963273 -0.013525205886513778 0
		 -0.71047367028262987 0.70359119333994835 0.013660032562071878 0 0.0192231028678891 -1.5302683680869261e-015 0.99981521908607263 0
		 -68.74580000000006 107.12100000000005 -3.215160000000004 1;
createNode joint -n "bip_middle_1_R" -p "bip_middle_0_R";
	rename -uid "6C23F91D-4D36-9CCC-E695-469AAA5BA560";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -6.0763784063954986 -0.00013539850955623933 7.5819581857317075e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.71549387959091204 -0.68000024656287683 1.1749725428357822 ;
	setAttr ".bps" -type "matrix" 0.68892414211329922 0.72483214213897973 -0.001375549225690182 0
		 -0.72483069731275895 0.68892551536593427 0.0014472425097220628 0 0.0019966588477361366 4.7219021187525696e-015 0.99999800667473671 0
		 -73.020200000000031 102.80300000000005 -3.1329700000000034 1;
createNode joint -n "bip_middle_2_R" -p "bip_middle_1_R";
	rename -uid "2048F286-4F78-BF2D-049E-C380DF3E1532";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -4.1103883769642167 0.00035070888326060867 -4.5491190934221493e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.68892414211329922 0.72483214213897973 -0.001375549225690182 0
		 -0.72483069731275895 0.68892551536593427 0.0014472425097220628 0 0.0019966588477361366 4.7219021187525696e-015 0.99999800667473671 0
		 -75.852200000000025 99.823900000000066 -3.1273200000000054 1;
createNode joint -n "bip_ring_0_R" -p "bip_hand_R";
	rename -uid "73A3D567-4F67-03D7-25FC-08B73C219599";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -11.669643049506124 -0.018998341117807627 -2.8836560405409664 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -6.4399208322160355 -6.146491520108925 3.1171380309315859 ;
	setAttr ".bps" -type "matrix" 0.69224614525106354 0.72133887105434324 0.021575622611851433 0
		 -0.7209887657809676 0.69258229338183774 -0.02247145993457908 0 -0.031152431729809402 1.2393657473600035e-015 0.99951464521402589 0
		 -68.332800000000063 107.17300000000004 -6.787050000000006 1;
createNode joint -n "bip_ring_1_R" -p "bip_ring_0_R";
	rename -uid "6891072E-434B-4683-F8F7-5A842B393092";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -5.7147525252108125 0.00039437174922341001 8.2098977500777437e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.032160647452068952 0.0307748641278629 0.096271050011677892 ;
	setAttr ".bps" -type "matrix" 0.69105036256783636 0.72250145721351089 0.021000969482743645 0
		 -0.72216805588226263 0.69136939787956597 -0.021946633884946751 0 -0.030375902588977179 3.4017007179055633e-013 0.99953854580096391 0
		 -72.289100000000033 103.05100000000004 -6.9103500000000047 1;
createNode joint -n "bip_ring_2_R" -p "bip_ring_1_R";
	rename -uid "90DD0A23-4270-828A-1B5A-83A4B6FF0335";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -4.0691826466004706 -1.3897293172249192e-005 -3.5260449475771338e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.69105036256783636 0.72250145721351089 0.021000969482743645 0
		 -0.72216805588226263 0.69136939787956597 -0.021946633884946751 0 -0.030375902588977179 3.4017007179055633e-013 0.99953854580096391 0
		 -75.101100000000045 100.11100000000006 -6.995810000000005 1;
createNode joint -n "bip_pinky_0_R" -p "bip_hand_R";
	rename -uid "95C5D6E3-414C-1226-DF30-2989FA0838A0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -11.053807201616294 -0.94529236546786422 -6.017066695307939 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -11.429744902995584 -10.585328500070384 4.3471617217696927 ;
	setAttr ".bps" -type "matrix" 0.678686626940188 0.7275207631871119 0.10048881303006922 0
		 -0.71967487194795543 0.68608566457232034 -0.10655768182093682 0 -0.14646686007163617 2.4223171891531219e-016 0.98921557756676914 0
		 -67.645000000000053 106.92300000000004 -10.030500000000005 1;
createNode joint -n "bip_pinky_1_R" -p "bip_pinky_0_R";
	rename -uid "47FA5B85-487A-F391-C6C8-B3AA52C5ED24";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -4.6966149222696885 -0.000167803177205883 -6.1282819177947007e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.1946971252489211 3.6915659583388276 2.0419648869299176 ;
	setAttr ".bps" -type "matrix" 0.66068881598201801 0.74994573150782562 0.032736649637239476 0
		 -0.74902681595185694 0.66149935736415688 -0.037113733197173898 0 -0.049488558488830464 2.5495937022029756e-016 0.99877469059778368 0
		 -70.83240000000005 103.50600000000007 -10.5025 1;
createNode joint -n "bip_pinky_2_R" -p "bip_pinky_1_R";
	rename -uid "06FF7F04-4751-0962-8AD0-D2A57F71257F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -3.5335185861038454 -7.984761781187899e-005 7.2685559063145888e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.66068881598201801 0.74994573150782562 0.032736649637239476 0
		 -0.74902681595185694 0.66149935736415688 -0.037113733197173898 0 -0.049488558488830464 2.5495937022029756e-016 0.99877469059778368 0
		 -73.166900000000069 100.85600000000005 -10.618100000000007 1;
createNode joint -n "bip_thumb_0_R" -p "bip_hand_R";
	rename -uid "8517F6AF-47F6-72E0-591E-C2990CAE9A83";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -4.5913561906752989 -0.23763894875067137 4.1039592558729545 ;
	setAttr ".jo" -type "double3" 34.696485834969089 47.11509795964416 -0.017194414848773105 ;
	setAttr ".bps" -type "matrix" 0.40017113440462532 0.46738294453736123 -0.78829959174472608 0
		 -0.21156282163502385 0.88405496613931556 0.41675891033814888 0 0.89168617556354579 -1.180959086716463e-015 0.45265413320642256 0
		 -62.215200000000053 111.87700000000004 -0.50819100000000272 1;
createNode joint -n "bip_thumb_1_R" -p "bip_thumb_0_R";
	rename -uid "F708C28A-4BCD-11F4-AFC4-7FB5979F29BB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.854577794721493 0.00063787848816332371 2.8844382846671124e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -11.184701925243685 -10.515037686975068 19.429885556275647 ;
	setAttr ".bps" -type "matrix" 0.46457557306074315 0.72250846541145863 -0.51200688894199609 0
		 -0.48550505873511191 0.69136207403124117 0.53507319175402224 0 0.74057705531423124 -2.6477334924868626e-016 0.6719714466717337 0
		 -63.757800000000017 110.07600000000004 2.5306500000000067 1;
createNode joint -n "bip_thumb_2_R" -p "bip_thumb_1_R";
	rename -uid "A2701D2D-4484-2092-54AC-3BAA96ACAAF3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -3.9875738205178308 8.0770669015350904e-005 -4.2389434412370974e-005 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.46457557306074315 0.72250846541145863 -0.51200688894199609 0
		 -0.48550505873511191 0.69136207403124117 0.53507319175402224 0 0.74057705531423124 -2.6477334924868626e-016 0.6719714466717337 0
		 -65.610400000000027 107.19500000000004 4.5723299999999956 1;
createNode joint -n "bip_hip_L" -p "bip_pelvis";
	rename -uid "D1404985-4C38-E5D7-4F9A-669639AEF51C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.3207970097423782 1.5441819082728911 11.795719746574477 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 164.45449033177252 ;
	setAttr ".bps" -type "matrix" -4.4631581289536719e-017 -0.98056278143031828 0.19620558522539211 0
		 1.6044130749520743e-016 -0.19620558522539203 -0.98056278143031828 0 1 -1.6653345369377353e-016 0 0
		 11.795719746574477 106.55222463112233 -7.6893123855480505 1;
createNode joint -n "bip_knee_L" -p "bip_hip_L";
	rename -uid "6B6142CC-4253-BC50-4C58-2C8E9963E1B6";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 46.098366081171079 2.3316610977541483 1.0658141036401503e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.8336615504292966 -1.5178988662508295 32.884166686992693 ;
	setAttr ".bps" -type "matrix" 0.02648923412426692 -0.92964914623117245 -0.36749256507739358 0
		 0.066836640868209674 0.36844601356460971 -0.92724344081034193 0 0.99741224371518711 8.9728298507143699e-016 0.071894478835556233 0
		 11.795719746574486 60.89239763694404 -0.93089558202419109 1;
createNode joint -n "bip_foot_L" -p "bip_knee_L";
	rename -uid "383D4BB5-46ED-784D-1B71-9BA1FA155139";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 52.996240248650253 -6.2637803734820618 0.28734008090145591 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.7191837843428317 -6.1529311114198846 -59.954842500281849 ;
	setAttr ".bps" -type "matrix" 0.062568961416732974 -0.7798786418471958 0.62279565594005648 0
		 -0.077957819837620373 -0.62593075015577693 -0.7759724700887215 0 0.99499130819992421 5.1626859041957664e-016 -0.099961475612375464 0
		 13.067496037728343 9.3166232278705223 -14.577912419105708 1;
createNode joint -n "bip_toe_L" -p "bip_foot_L";
	rename -uid "06B70C61-4C7D-CE26-DB3A-65A4C52BBF61";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 10.410994508901096 -6.7215024319050407 -3.024859686730566e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.7369352177608235 -0.013931567834296232 -141.38813675662973 ;
	setAttr ".bps" -type "matrix" -3.0980534977687046e-015 0.9999970415785393 -0.0024324543509414097 0
		 -5.4956039718945249e-015 0.0024324543509413638 0.9999970415785393 0 1 2.9422956265316351e-015 5.3290705182007514e-015 0
		 14.242894827090172 5.4045060293663232 -2.8782894201536209 1;
createNode joint -n "bip_toe2_0_L" -p "bip_toe_L";
	rename -uid "4727FADC-486C-54E0-E3E1-9BA619AB96F4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.0016062281109432419 6.4464136197773767 0.87582332018769371 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0677369192654966 -4.3357457099404542 103.98820239928024 ;
	setAttr ".bps" -type "matrix" 0.075600836386198814 -0.23867605086088603 0.96815197995106106 0
		 -0.018581117400612149 -0.97109924453963614 -0.23795167435992728 0 0.9969650222619908 9.9139710355905723e-016 -0.077850782822963066 0
		 15.11871814727783 5.4185804128646771 3.5681090354919203 1;
createNode joint -n "bip_hip_R" -p "bip_pelvis";
	rename -uid "62C9E5F4-4024-8935-B1C2-42A79DDF2B77";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.320797009742364 1.5441819082728916 -11.795719746574477 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.4905426535450575e-016 -9.9177329389028347e-015 
		-15.545509668227483 ;
	setAttr ".bps" -type "matrix" 4.4631581289536737e-017 0.98056278143031805 -0.19620558522539228 0
		 -1.6044130749520739e-016 0.19620558522539217 0.98056278143031805 0 1 -1.6653345369377353e-016 0 0
		 -11.795719746574477 106.55222463112234 -7.6893123855480496 1;
createNode joint -n "bip_knee_R" -p "bip_hip_R";
	rename -uid "73AA6BBA-4C88-DE21-1232-B8BB04D4180C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -46.098366081171079 -2.3316610977541483 -1.0658141036401503e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.8336615504292957 -1.5178988662508306 32.884166686992721 ;
	setAttr ".bps" -type "matrix" 0.026489234124266833 0.92964914623117234 0.36749256507739353 0
		 0.066836640868209354 -0.36844601356460971 0.92724344081034171 0 0.99741224371518711 -1.2381616138560125e-015 -0.071894478835556191 0
		 -11.795719746574489 60.892397636944061 -0.93089558202418132 1;
createNode joint -n "bip_foot_R" -p "bip_knee_R";
	rename -uid "B091DFD8-4CD1-2D7C-1D5D-8A8C18B03114";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -52.996240248650253 6.2637803734820618 -0.28734008090145591 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.7191837843428273 -6.152931111419881 -59.954842500281849 ;
	setAttr ".bps" -type "matrix" 0.062568961416733168 0.77987864184719569 -0.62279565594005648 0
		 -0.07795781983762054 0.62593075015577682 0.77597247008872139 0 0.99499130819992421 -8.7986796122629928e-016 0.099961475612375394 0
		 -13.067496037728345 9.3166232278705507 -14.577912419105695 1;
createNode joint -n "bip_toe_R" -p "bip_foot_R";
	rename -uid "AD8E751E-46DF-1E66-8FF4-5C99B83C905E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -10.410994508901096 6.7215024319050407 3.024859686730566e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.7369352177608235 -0.013931567834296232 -141.38813675662973 ;
	setAttr ".bps" -type "matrix" -3.139686861192148e-015 -0.99999704157853919 0.0024324543509415208 0
		 -5.2458037913538647e-015 -0.0024324543509412718 -0.99999704157853908 0 1.0000000000000002 -3.2971349462473779e-015 -5.3707038816241948e-015 0
		 -14.242894827090177 5.4045060293663525 -2.8782894201536084 1;
createNode joint -n "bip_toe2_0_R" -p "bip_toe_R";
	rename -uid "39444EC2-4C28-0E78-E235-C8BBEE300574";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.0016062281109432419 -6.4464136197773767 -0.87582332018769371 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0677369192654964 -4.3357457099404533 103.98820239928024 ;
	setAttr ".bps" -type "matrix" 0.075600836386199077 0.23867605086088606 -0.96815197995106084 0
		 -0.01858111740061217 0.97109924453963614 0.23795167435992712 0 0.99696502226199102 -1.3454034393277015e-015 0.077850782822962983 0
		 -15.118718147277837 5.4185804128647064 3.5681090354919318 1;
createNode transform -n "eyes_GEO";
	rename -uid "BDE8C243-4F26-FD3D-B2C6-8C955C767199";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "eyes_GEOShape" -p "eyes_GEO";
	rename -uid "55B02937-451C-EA1C-AE97-2B91FAFD0A1F";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.45262999646365643 0.54970498383045197 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
	setAttr ".vnm" 0;
	setAttr ".vcs" 2;
createNode mesh -n "eyes_GEOShapeOrig" -p "eyes_GEO";
	rename -uid "07C3647B-4981-B972-ACD5-F7AE0DC4D427";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 228 ".uvst[0].uvsp[0:227]" -type "float2" 1.088569999 0.91610003
		 1.083760023 0.89775002 1.10634005 0.89796001 1.10672998 0.92065001 1.081599951 0.87440002
		 1.10501003 0.87443 1.12963998 0.87440997 1.12980998 0.89906001 1.13001001 0.92251003
		 1.08355999 0.85113001 1.10607004 0.85088998 1.088230014 0.83301002 1.10627997 0.82828999
		 1.12945998 0.82625002 1.12951005 0.84974003 1.15295005 0.85097998 1.15433002 0.87436002
		 1.15263999 0.82835001 1.17066002 0.83324999 1.17563999 0.85119998 1.17786002 0.87431997
		 1.15330005 0.89775997 1.15316999 0.92022997 1.17589998 0.89739001 1.17118001 0.91523999
		 1.65556002 0.65516001 1.67374003 0.58781999 1.75700998 0.61031002 1.70313001 0.70354003
		 1.68188 0.5 1.77225995 0.5 1.87381005 0.5 1.84518003 0.64499998 1.76645994 0.76327997
		 1.67471004 0.41259 1.75726998 0.39155999 1.65532005 0.34549001 1.70316994 0.29813999
		 1.76315999 0.23867001 1.84363997 0.35459 1.030779958 0.87410003 1.038859963 0.83565998
		 1.06171 0.84551001 1.057669997 0.87443 1.060250044 0.80501997 1.075880051 0.82064003
		 1.059030056 0.94392997 1.038269997 0.91255999 1.061640024 0.90342999 1.075839996
		 0.92816001 1.19779003 0.90324003 1.18339002 0.92804003 1.20185006 0.87421 1.22874999
		 0.87450999 1.22062004 0.91341001 1.19923997 0.94483 1.19778001 0.84509999 1.18325996
		 0.82064003 1.20034003 0.80348003 1.22114003 0.83565003 1.12618995 0.5 1.15529001
		 0.35284001 1.24340999 0.38872001 1.22774994 0.5 1.23412001 0.23153 1.29769003 0.29584
		 1.34595001 0.34424999 1.32602 0.41113001 1.31835997 0.5 1.23142004 0.76107001 1.15366006
		 0.64217001 1.2421 0.60821998 1.29523003 0.70188999 1.32553995 0.58642 1.34353006
		 0.6566 1.41088998 0.58802003 1.41205001 0.67417002 1.40652001 0.5 1.5 0.5 1.5 0.59316999
		 1.5 0.68172002 1.41263998 0.41137001 1.41229999 0.32536 1.5 0.31816 1.5 0.40689999
		 1.58808005 0.41207001 1.59347999 0.5 1.58741999 0.32659 1.58824003 0.58923 1.58655
		 0.6749 1.10072005 0.8064 1.090880036 0.78356999 1.12940001 0.77539998 1.12967002
		 0.80229002 1.61029994 0.24353001 1.64768004 0.15736 1.5 0.22769 1.5 0.12616 1.39180005
		 0.24262001 1.35511994 0.15615 1.15875006 0.80623001 1.16812003 0.78285003 1.10072994
		 0.9425 1.12977004 0.94647998 1.12934995 0.97338003 1.090510011 0.96530998 1.15877998
		 0.94239002 1.16795003 0.96574003 1.5 0.87383997 1.35494995 0.84464002 1.38977003
		 0.75652999 1.5 0.77222002 1.64739001 0.84372997 1.60898995 0.75748003 0.17084 0.91671997
		 0.15259001 0.92093003 0.15341 0.89826 0.17598 0.89846998 0.15516999 0.87475997 0.17857
		 0.87515998 0.12992001 0.89893001 0.13054 0.87427998 0.12928 0.92237002 0.15454 0.85121
		 0.17704 0.85185999 0.15475 0.82859999 0.1727 0.83364999 0.13112999 0.84961998 0.13161001
		 0.82612997 0.10586 0.87378001 0.10766 0.85043001 0.10839 0.82780999 0.084980004 0.85022998
		 0.090290003 0.83238 0.082330003 0.87330002 0.10617 0.91965997 0.10646 0.89718997
		 0.083870001 0.89640999 0.088249996 0.91434997 0.34353 0.6566 0.29523 0.70188999 0.2421
		 0.60821998 0.32554001 0.58642 0.22775 0.5 0.31836 0.5 0.15366 0.64217001 0.12619001
		 0.5 0.23142 0.76107001 0.24341001 0.38872001 0.32602 0.41113001 0.29769 0.29584 0.34595001
		 0.34424999 0.15528999 0.35284001 0.23412 0.23153 0.22939 0.87579 0.2025 0.87563002
		 0.19899 0.84662998 0.22202 0.83721 0.18528 0.82151997 0.20118999 0.80618 0.19986001
		 0.94509 0.18334 0.92900997 0.198 0.90455002 0.2212 0.91411 0.075819999 0.92692 0.061870001
		 0.90184999 0.058350001 0.87274998 0.038860001 0.91159999 0.03145 0.87256998 0.059659999
		 0.94341999 0.06295 0.84372002 0.077919997 0.81954002 0.03977 0.83385003 0.061159998
		 0.80206001 0.87380999 0.5 0.77226001 0.5 0.75726998 0.39155999 0.84364003 0.35459
		 0.70317 0.29813999 0.76315999 0.23867001 0.67470998 0.41259 0.65531999 0.34549001
		 0.68188 0.5 0.76646 0.76327997 0.70313001 0.70354003 0.75700998 0.61031002 0.84517998
		 0.64499998 0.67374003 0.58781999 0.65556002 0.65516001 0.58655 0.6749 0.58824003
		 0.58923 0.59347999 0.5 0.5 0.59316999 0.5 0.5 0.5 0.68172002 0.58807999 0.41207001
		 0.58741999 0.32659 0.5 0.40689999 0.5 0.31816 0.40652001 0.5 0.41264001 0.41137001
		 0.41229999 0.32536 0.41205001 0.67417002 0.41089001 0.58802003 0.16069999 0.80681998
		 0.17095999 0.78416997 0.13184001 0.80217999 0.13259999 0.77530003 0.35512 0.15615
		 0.39179999 0.24262001 0.5 0.22769 0.5 0.12616 0.64767998 0.15736 0.6103 0.24353001
		 0.10269 0.80558997 0.09375 0.78202999 0.15819 0.9429 0.12909 0.94634002 0.16799 0.96588999
		 0.12901001 0.97324997 0.10016 0.94172001 0.090559997 0.96490002 0.5 0.87383997 0.5
		 0.77222002 0.60899001 0.75748003 0.64739001 0.84372997 0.38977 0.75652999 0.35495001
		 0.84464002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 196 ".vt";
	setAttr ".vt[0:165]"  -4.33905172 181.73873901 5.058428764 -5.038411617 181.48139954 4.80110836
		 -3.36559868 181.85801697 5.177742 -2.39214802 181.73873901 5.058428764 -1.69280005 181.48139954 4.80110836
		 -4.42529774 180.86828613 5.60843849 -3.36559868 180.94866943 5.7923193 -2.30591059 180.86828613 5.60843849
		 -4.50569487 179.80859375 5.7923193 -3.36559868 179.80859375 6.025560379 -2.2255044 179.80859375 5.7923193
		 -5.29571152 180.78201294 5.058428764 -5.41501617 179.80859375 5.177742 -1.43548679 180.78201294 5.058428764
		 -1.31615782 179.80859375 5.177742 -4.42529774 182.28871155 4.18802738 -3.36559868 182.47259521 4.2684412
		 -2.30591059 182.28871155 4.18802738 -5.29571152 181.73873901 4.10179138 -4.50569487 182.47259521 3.12832451
		 -3.36559868 182.70584106 3.12832451 -2.2255044 182.47259521 3.12832451 -5.41501617 181.85801697 3.12832451
		 -1.43548679 181.73873901 4.10179138 -1.31615782 181.85801697 3.12832451 -5.8457098 180.86828613 4.18802738
		 -6.029589653 179.80859375 4.2684412 -6.029589653 180.94866943 3.12832451 -6.26283836 179.80859375 3.12832451
		 -0.88547564 180.86828613 4.18802738 -0.70160675 179.80859375 4.2684412 -0.70160675 180.94866943 3.12832451
		 -0.46833944 179.80859375 3.12832451 2.39214516 181.73873901 5.058428764 1.6927886 181.48139954 4.80110836
		 3.36558914 181.85801697 5.177742 4.33904123 181.73873901 5.058428764 5.038409233 181.48139954 4.80110836
		 2.30590582 180.86828613 5.60843849 2.2254982 179.80859375 5.7923193 1.43548155 180.78201294 5.058428764
		 1.31615448 179.80859375 5.177742 3.36558914 180.94866943 5.7923193 4.42529011 180.86828613 5.60843849
		 3.36558914 179.80859375 6.025560379 4.50569391 179.80859375 5.7923193 5.29571056 180.78201294 5.058428764
		 5.41501141 179.80859375 5.177742 2.30590582 182.28871155 4.18802738 1.43548155 181.73873901 4.10179138
		 2.2254982 182.47259521 3.12832451 1.31615448 181.85801697 3.12832451 3.36558914 182.47259521 4.2684412
		 4.42529011 182.28871155 4.18802738 5.29571056 181.73873901 4.10179138 3.36558914 182.70584106 3.12832451
		 4.50569391 182.47259521 3.12832451 5.41501141 181.85801697 3.12832451 0.88547659 180.86828613 4.18802738
		 0.70160246 179.80859375 4.2684412 0.70160246 180.94866943 3.12832451 0.46833849 179.80859375 3.12832451
		 5.84570408 180.86828613 4.18802738 6.029587746 179.80859375 4.2684412 6.029587746 180.94866943 3.12832451
		 6.2628336 179.80859375 3.12832451 -4.42529774 178.74888611 5.60843849 -3.36559868 178.66848755 5.7923193
		 -2.30591059 178.74888611 5.60843849 -5.29571152 178.83514404 5.058428764 -1.43548679 178.83514404 5.058428764
		 -4.33905172 177.87849426 5.058428764 -5.038411617 178.13577271 4.80110836 -2.39214802 177.87849426 5.058428764
		 -3.36559868 177.75915527 5.177742 -1.69280005 178.13577271 4.80110836 -5.8457098 178.74888611 4.18802738
		 -6.029589653 178.66848755 3.12832451 -0.88547564 178.74888611 4.18802738 -0.70160675 178.66848755 3.12832451
		 -5.29571152 177.87849426 4.10179138 -4.42529774 177.32844543 4.18802738 -3.36559868 177.14460754 4.2684412
		 -2.30591059 177.32844543 4.18802738 -5.41501617 177.75915527 3.12832451 -4.50569487 177.14460754 3.12832451
		 -2.2255044 177.14460754 3.12832451 -3.36559868 176.91131592 3.12832451 -1.43548679 177.87849426 4.10179138
		 -1.31615782 177.75915527 3.12832451 2.30590582 178.74888611 5.60843849 1.43548155 178.83514404 5.058428764
		 3.36558914 178.66848755 5.7923193 4.42529011 178.74888611 5.60843849 5.29571056 178.83514404 5.058428764
		 2.39214516 177.87849426 5.058428764 1.6927886 178.13577271 4.80110836 4.33904123 177.87849426 5.058428764
		 3.36558914 177.75915527 5.177742 5.038409233 178.13577271 4.80110836 0.88547659 178.74888611 4.18802738
		 0.70160246 178.66848755 3.12832451 5.84570408 178.74888611 4.18802738 6.029587746 178.66848755 3.12832451
		 1.43548155 177.87849426 4.10179138 2.30590582 177.32844543 4.18802738 1.31615448 177.75915527 3.12832451
		 2.2254982 177.14460754 3.12832451 5.29571056 177.87849426 4.10179138 3.36558914 177.14460754 4.2684412
		 4.42529011 177.32844543 4.18802738 5.41501141 177.75915527 3.12832451 4.50569391 177.14460754 3.12832451
		 3.36558914 176.91131592 3.12832451 -4.42529774 182.28871155 2.068637848 -3.36559868 182.47259521 1.98822403
		 -2.30591059 182.28871155 2.068637848 -5.29571152 181.73873901 2.15487289 -1.43548679 181.73873901 2.15487289
		 -5.8457098 180.86828613 2.068637848 -6.029589653 179.80859375 1.98822403 -0.88547564 180.86828613 2.068637848
		 -0.70160675 179.80859375 1.98822403 -4.33905172 181.73873901 1.19822884 -5.038411617 181.48139954 1.45555496
		 -2.39214802 181.73873901 1.19822884 -3.36559868 181.85801697 1.078922272 -1.69280005 181.48139954 1.45555496
		 -5.29571152 180.78201294 1.19822884 -5.41501617 179.80859375 1.078922272 -4.42529774 180.86828613 0.64821434
		 -3.36559868 180.94866943 0.464324 -2.30591059 180.86828613 0.64821434 -4.50569487 179.80859375 0.464324
		 -2.2255044 179.80859375 0.464324 -3.36559868 179.80859375 0.23108959 -1.43548679 180.78201294 1.19822884
		 -1.31615782 179.80859375 1.078922272 2.30590582 182.28871155 2.068637848 1.43548155 181.73873901 2.15487289
		 3.36558914 182.47259521 1.98822403 4.42529011 182.28871155 2.068637848 5.29571056 181.73873901 2.15487289
		 0.88547659 180.86828613 2.068637848 0.70160246 179.80859375 1.98822403 5.84570408 180.86828613 2.068637848
		 6.029587746 179.80859375 1.98822403 2.39214516 181.73873901 1.19822884 1.6927886 181.48139954 1.45555496
		 4.33904123 181.73873901 1.19822884 3.36558914 181.85801697 1.078922272 5.038409233 181.48139954 1.45555496
		 1.43548155 180.78201294 1.19822884 1.31615448 179.80859375 1.078922272 2.30590582 180.86828613 0.64821434
		 2.2254982 179.80859375 0.464324 5.29571056 180.78201294 1.19822884 5.41501141 179.80859375 1.078922272
		 3.36558914 180.94866943 0.464324 4.42529011 180.86828613 0.64821434 4.50569391 179.80859375 0.464324
		 3.36558914 179.80859375 0.23108959 -5.8457098 178.74888611 2.068637848 -0.88547564 178.74888611 2.068637848
		 -5.29571152 177.87849426 2.15487289 -4.42529774 177.32844543 2.068637848;
	setAttr ".vt[166:195]" -3.36559868 177.14460754 1.98822403 -2.30591059 177.32844543 2.068637848
		 -1.43548679 177.87849426 2.15487289 -5.29571152 178.83514404 1.19822884 -4.42529774 178.74888611 0.64821434
		 -3.36559868 178.66848755 0.464324 -2.30591059 178.74888611 0.64821434 -1.43548679 178.83514404 1.19822884
		 -5.038411617 178.13577271 1.45555496 -4.33905172 177.87849426 1.19822884 -2.39214802 177.87849426 1.19822884
		 -3.36559868 177.75915527 1.078922272 -1.69280005 178.13577271 1.45555496 0.88547659 178.74888611 2.068637848
		 5.84570408 178.74888611 2.068637848 1.43548155 177.87849426 2.15487289 2.30590582 177.32844543 2.068637848
		 5.29571056 177.87849426 2.15487289 3.36558914 177.14460754 1.98822403 4.42529011 177.32844543 2.068637848
		 1.43548155 178.83514404 1.19822884 2.30590582 178.74888611 0.64821434 5.29571056 178.83514404 1.19822884
		 3.36558914 178.66848755 0.464324 4.42529011 178.74888611 0.64821434 1.6927886 178.13577271 1.45555496
		 2.39214516 177.87849426 1.19822884 4.33904123 177.87849426 1.19822884 3.36558914 177.75915527 1.078922272
		 5.038409233 178.13577271 1.45555496;
	setAttr -s 384 ".ed";
	setAttr ".ed[0:165]"  127 136 1 136 132 1 132 125 1 125 127 1 136 137 1 137 134 1
		 134 132 1 134 135 1 135 131 1 131 132 1 131 126 1 126 125 1 137 173 1 173 172 1 172 134 1
		 173 178 1 178 176 1 176 172 1 176 177 1 177 171 1 171 172 1 171 135 1 171 170 1 170 133 1
		 133 135 1 177 175 1 175 170 1 175 174 1 174 169 1 169 170 1 169 129 1 129 133 1 131 130 1
		 130 123 1 123 126 1 133 130 1 129 128 1 128 130 1 128 124 1 124 123 1 4 13 1 13 29 1
		 29 23 1 23 4 1 13 14 1 14 30 1 30 29 1 30 32 1 32 31 1 31 29 1 31 24 1 24 23 1 14 70 1
		 70 78 1 78 30 1 70 75 1 75 88 1 88 78 1 88 89 1 89 79 1 79 78 1 79 32 1 79 163 1
		 163 122 1 122 32 1 89 168 1 168 163 1 168 178 1 173 163 1 137 122 1 31 121 1 121 118 1
		 118 24 1 122 121 1 136 121 1 127 118 1 128 119 1 119 117 1 117 124 1 129 120 1 120 119 1
		 120 28 1 28 27 1 27 119 1 27 22 1 22 117 1 169 162 1 162 120 1 174 164 1 164 162 1
		 164 84 1 84 77 1 77 162 1 77 28 1 77 76 1 76 26 1 26 28 1 84 80 1 80 76 1 80 72 1
		 72 69 1 69 76 1 69 12 1 12 26 1 27 25 1 25 18 1 18 22 1 26 25 1 12 11 1 11 25 1 11 1 1
		 1 18 1 11 5 1 5 0 1 0 1 1 12 8 1 8 5 1 8 9 1 9 6 1 6 5 1 6 2 1 2 0 1 69 66 1 66 8 1
		 72 71 1 71 66 1 71 74 1 74 67 1 67 66 1 67 9 1 67 68 1 68 10 1 10 9 1 74 73 1 73 68 1
		 73 75 1 70 68 1 14 10 1 6 7 1 7 3 1 3 2 1 10 7 1 13 7 1 4 3 1 168 167 1 167 176 1
		 89 86 1 86 167 1 86 87 1 87 166 1 166 167 1 166 177 1 88 83 1 83 86 1 73 83 1 74 82 1
		 82 83 1 82 87 1 82 81 1 81 85 1 85 87 1 71 81 1 80 81 1 84 85 1 166 165 1 165 175 1;
	setAttr ".ed[166:331]" 85 165 1 164 165 1 125 116 1 116 118 1 126 115 1 115 116 1
		 115 20 1 20 21 1 21 116 1 21 24 1 123 114 1 114 115 1 117 114 1 22 19 1 19 114 1
		 19 20 1 19 15 1 15 16 1 16 20 1 18 15 1 0 15 1 2 16 1 21 17 1 17 23 1 16 17 1 3 17 1
		 148 147 1 147 154 1 154 152 1 152 148 1 154 155 1 155 153 1 153 152 1 154 158 1 158 161 1
		 161 155 1 147 150 1 150 158 1 155 187 1 187 186 1 186 153 1 187 192 1 192 191 1 191 186 1
		 187 189 1 189 194 1 194 192 1 161 189 1 161 160 1 160 190 1 190 189 1 190 193 1 193 194 1
		 190 188 1 188 195 1 195 193 1 160 157 1 157 188 1 150 149 1 149 159 1 159 158 1 159 160 1
		 159 156 1 156 157 1 149 151 1 151 156 1 34 49 1 49 58 1 58 40 1 40 34 1 58 59 1 59 41 1
		 41 40 1 58 60 1 60 61 1 61 59 1 49 51 1 51 60 1 59 100 1 100 91 1 91 41 1 100 104 1
		 104 96 1 96 91 1 100 101 1 101 106 1 106 104 1 61 101 1 61 144 1 144 179 1 179 101 1
		 179 181 1 181 106 1 179 186 1 191 181 1 144 153 1 51 139 1 139 143 1 143 60 1 143 144 1
		 143 152 1 139 148 1 151 142 1 142 145 1 145 156 1 145 146 1 146 157 1 145 64 1 64 65 1
		 65 146 1 142 57 1 57 64 1 146 180 1 180 188 1 180 183 1 183 195 1 180 103 1 103 111 1
		 111 183 1 65 103 1 65 63 1 63 102 1 102 103 1 102 108 1 108 111 1 102 94 1 94 99 1
		 99 108 1 63 47 1 47 94 1 57 54 1 54 62 1 62 64 1 62 63 1 62 46 1 46 47 1 54 37 1
		 37 46 1 37 36 1 36 43 1 43 46 1 43 45 1 45 47 1 43 42 1 42 44 1 44 45 1 36 35 1 35 42 1
		 45 93 1 93 94 1 93 97 1 97 99 1 93 92 1 92 98 1 98 97 1 44 92 1 44 39 1 39 90 1 90 92 1
		 90 95 1 95 98 1 90 91 1 96 95 1 39 41 1 35 33 1 33 38 1;
	setAttr ".ed[332:383]" 38 42 1 38 39 1 38 40 1 33 34 1 192 182 1 182 181 1
		 182 107 1 107 106 1 182 184 1 184 113 1 113 107 1 194 184 1 107 105 1 105 104 1 105 95 1
		 105 109 1 109 98 1 113 109 1 113 112 1 112 110 1 110 109 1 110 97 1 110 108 1 112 111 1
		 193 185 1 185 184 1 185 112 1 185 183 1 139 138 1 138 147 1 138 140 1 140 150 1 138 50 1
		 50 55 1 55 140 1 51 50 1 140 141 1 141 149 1 141 142 1 141 56 1 56 57 1 55 56 1 55 52 1
		 52 53 1 53 56 1 53 54 1 53 36 1 52 35 1 49 48 1 48 50 1 48 52 1 48 33 1;
	setAttr -s 196 ".n";
	setAttr ".n[0:165]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr ".n[166:195]" -type "float3"  1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020
		 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020 1e+020;
	setAttr -s 192 -ch 768 ".fc[0:191]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 -7 7 8 9
		mu 0 4 2 5 6 7
		f 4 -3 -10 10 11
		mu 0 4 3 2 7 8
		f 4 12 13 14 -6
		mu 0 4 4 9 10 5
		f 4 15 16 17 -14
		mu 0 4 9 11 12 10
		f 4 -18 18 19 20
		mu 0 4 10 12 13 14
		f 4 -15 -21 21 -8
		mu 0 4 5 10 14 6
		f 4 -22 22 23 24
		mu 0 4 6 14 15 16
		f 4 -20 25 26 -23
		mu 0 4 14 13 17 15
		f 4 -27 27 28 29
		mu 0 4 15 17 18 19
		f 4 -24 -30 30 31
		mu 0 4 16 15 19 20
		f 4 -11 32 33 34
		mu 0 4 8 7 21 22
		f 4 -9 -25 35 -33
		mu 0 4 7 6 16 21
		f 4 -36 -32 36 37
		mu 0 4 21 16 20 23
		f 4 -34 -38 38 39
		mu 0 4 22 21 23 24
		f 4 40 41 42 43
		mu 0 4 25 26 27 28
		f 4 44 45 46 -42
		mu 0 4 26 29 30 27
		f 4 -47 47 48 49
		mu 0 4 27 30 31 32
		f 4 -43 -50 50 51
		mu 0 4 28 27 32 33
		f 4 52 53 54 -46
		mu 0 4 29 34 35 30
		f 4 55 56 57 -54
		mu 0 4 34 36 37 35
		f 4 -58 58 59 60
		mu 0 4 35 37 38 39
		f 4 -55 -61 61 -48
		mu 0 4 30 35 39 31
		f 4 -62 62 63 64
		mu 0 4 40 41 42 43
		f 4 -60 65 66 -63
		mu 0 4 41 44 45 42
		f 4 -67 67 -16 68
		mu 0 4 42 45 11 9
		f 4 -64 -69 -13 69
		mu 0 4 43 42 9 4
		f 4 -51 70 71 72
		mu 0 4 46 47 48 49
		f 4 -49 -65 73 -71
		mu 0 4 47 40 43 48
		f 4 -74 -70 -5 74
		mu 0 4 48 43 4 1
		f 4 -72 -75 -1 75
		mu 0 4 49 48 1 0
		f 4 -39 76 77 78
		mu 0 4 24 23 50 51
		f 4 -37 79 80 -77
		mu 0 4 23 20 52 50
		f 4 -81 81 82 83
		mu 0 4 50 52 53 54
		f 4 -78 -84 84 85
		mu 0 4 51 50 54 55
		f 4 -31 86 87 -80
		mu 0 4 20 19 56 52
		f 4 -29 88 89 -87
		mu 0 4 19 18 57 56
		f 4 -90 90 91 92
		mu 0 4 56 57 58 59
		f 4 -88 -93 93 -82
		mu 0 4 52 56 59 53
		f 4 -94 94 95 96
		mu 0 4 60 61 62 63
		f 4 -92 97 98 -95
		mu 0 4 61 64 65 62
		f 4 -99 99 100 101
		mu 0 4 62 65 66 67
		f 4 -96 -102 102 103
		mu 0 4 63 62 67 68
		f 4 -85 104 105 106
		mu 0 4 69 70 71 72
		f 4 -83 -97 107 -105
		mu 0 4 70 60 63 71
		f 4 -108 -104 108 109
		mu 0 4 71 63 68 73
		f 4 -106 -110 110 111
		mu 0 4 72 71 73 74
		f 4 -111 112 113 114
		mu 0 4 74 73 75 76
		f 4 -109 115 116 -113
		mu 0 4 73 68 77 75
		f 4 -117 117 118 119
		mu 0 4 75 77 78 79
		f 4 -114 -120 120 121
		mu 0 4 76 75 79 80
		f 4 -103 122 123 -116
		mu 0 4 68 67 81 77
		f 4 -101 124 125 -123
		mu 0 4 67 66 82 81
		f 4 -126 126 127 128
		mu 0 4 81 82 83 84
		f 4 -124 -129 129 -118
		mu 0 4 77 81 84 78
		f 4 -130 130 131 132
		mu 0 4 78 84 85 86
		f 4 -128 133 134 -131
		mu 0 4 84 83 87 85
		f 4 -135 135 -56 136
		mu 0 4 85 87 36 34
		f 4 -132 -137 -53 137
		mu 0 4 86 85 34 29
		f 4 -121 138 139 140
		mu 0 4 80 79 88 89
		f 4 -119 -133 141 -139
		mu 0 4 79 78 86 88
		f 4 -142 -138 -45 142
		mu 0 4 88 86 29 26
		f 4 -140 -143 -41 143
		mu 0 4 89 88 26 25
		f 4 -68 144 145 -17
		mu 0 4 11 45 90 12
		f 4 -66 146 147 -145
		mu 0 4 45 44 91 90
		f 4 -148 148 149 150
		mu 0 4 90 91 92 93
		f 4 -146 -151 151 -19
		mu 0 4 12 90 93 13
		f 4 -59 152 153 -147
		mu 0 4 38 37 94 95
		f 4 -57 -136 154 -153
		mu 0 4 37 36 87 94
		f 4 -155 -134 155 156
		mu 0 4 94 87 83 96
		f 4 -154 -157 157 -149
		mu 0 4 95 94 96 97
		f 4 -158 158 159 160
		mu 0 4 97 96 98 99
		f 4 -156 -127 161 -159
		mu 0 4 96 83 82 98
		f 4 -162 -125 -100 162
		mu 0 4 98 82 66 65
		f 4 -160 -163 -98 163
		mu 0 4 99 98 65 64
		f 4 -152 164 165 -26
		mu 0 4 13 93 100 17
		f 4 -150 -161 166 -165
		mu 0 4 93 92 101 100
		f 4 -167 -164 -91 167
		mu 0 4 100 101 58 57
		f 4 -166 -168 -89 -28
		mu 0 4 17 100 57 18
		f 4 -4 168 169 -76
		mu 0 4 0 3 102 49
		f 4 -12 170 171 -169
		mu 0 4 3 8 103 102
		f 4 -172 172 173 174
		mu 0 4 102 103 104 105
		f 4 -170 -175 175 -73
		mu 0 4 49 102 105 46
		f 4 -35 176 177 -171
		mu 0 4 8 22 106 103
		f 4 -40 -79 178 -177
		mu 0 4 22 24 51 106
		f 4 -179 -86 179 180
		mu 0 4 106 51 55 107
		f 4 -178 -181 181 -173
		mu 0 4 103 106 107 104
		f 4 -182 182 183 184
		mu 0 4 108 109 110 111
		f 4 -180 -107 185 -183
		mu 0 4 109 69 72 110
		f 4 -186 -112 -115 186
		mu 0 4 110 72 74 76
		f 4 -184 -187 -122 187
		mu 0 4 111 110 76 80
		f 4 -176 188 189 -52
		mu 0 4 33 112 113 28
		f 4 -174 -185 190 -189
		mu 0 4 112 108 111 113
		f 4 -191 -188 -141 191
		mu 0 4 113 111 80 89
		f 4 -190 -192 -144 -44
		mu 0 4 28 113 89 25
		f 4 192 193 194 195
		mu 0 4 114 115 116 117
		f 4 -195 196 197 198
		mu 0 4 117 116 118 119
		f 4 199 200 201 -197
		mu 0 4 116 120 121 118
		f 4 202 203 -200 -194
		mu 0 4 115 122 120 116
		f 4 -198 204 205 206
		mu 0 4 119 118 123 124
		f 4 -206 207 208 209
		mu 0 4 124 123 125 126
		f 4 210 211 212 -208
		mu 0 4 123 127 128 125
		f 4 -202 213 -211 -205
		mu 0 4 118 121 127 123
		f 4 214 215 216 -214
		mu 0 4 121 129 130 127
		f 4 -217 217 218 -212
		mu 0 4 127 130 131 128
		f 4 219 220 221 -218
		mu 0 4 130 132 133 131
		f 4 222 223 -220 -216
		mu 0 4 129 134 132 130
		f 4 224 225 226 -204
		mu 0 4 122 135 136 120
		f 4 -227 227 -215 -201
		mu 0 4 120 136 129 121
		f 4 228 229 -223 -228
		mu 0 4 136 137 134 129
		f 4 230 231 -229 -226
		mu 0 4 135 138 137 136
		f 4 232 233 234 235
		mu 0 4 139 140 141 142
		f 4 -235 236 237 238
		mu 0 4 142 141 143 144
		f 4 239 240 241 -237
		mu 0 4 141 145 146 143
		f 4 242 243 -240 -234
		mu 0 4 140 147 145 141
		f 4 -238 244 245 246
		mu 0 4 144 143 148 149
		f 4 -246 247 248 249
		mu 0 4 149 148 150 151
		f 4 250 251 252 -248
		mu 0 4 148 152 153 150
		f 4 -242 253 -251 -245
		mu 0 4 143 146 152 148
		f 4 254 255 256 -254
		mu 0 4 154 155 156 157
		f 4 -257 257 258 -252
		mu 0 4 157 156 158 159
		f 4 259 -210 260 -258
		mu 0 4 156 124 126 158
		f 4 261 -207 -260 -256
		mu 0 4 155 119 124 156
		f 4 262 263 264 -244
		mu 0 4 160 161 162 163
		f 4 -265 265 -255 -241
		mu 0 4 163 162 155 154
		f 4 266 -199 -262 -266
		mu 0 4 162 117 119 155
		f 4 267 -196 -267 -264
		mu 0 4 161 114 117 162
		f 4 268 269 270 -232
		mu 0 4 138 164 165 137
		f 4 -271 271 272 -230
		mu 0 4 137 165 166 134
		f 4 273 274 275 -272
		mu 0 4 165 167 168 166
		f 4 276 277 -274 -270
		mu 0 4 164 169 167 165
		f 4 -273 278 279 -224
		mu 0 4 134 166 170 132
		f 4 -280 280 281 -221
		mu 0 4 132 170 171 133
		f 4 282 283 284 -281
		mu 0 4 170 172 173 171
		f 4 -276 285 -283 -279
		mu 0 4 166 168 172 170
		f 4 286 287 288 -286
		mu 0 4 174 175 176 177
		f 4 -289 289 290 -284
		mu 0 4 177 176 178 179
		f 4 291 292 293 -290
		mu 0 4 176 180 181 178
		f 4 294 295 -292 -288
		mu 0 4 175 182 180 176
		f 4 296 297 298 -278
		mu 0 4 183 184 185 186
		f 4 -299 299 -287 -275
		mu 0 4 186 185 175 174
		f 4 300 301 -295 -300
		mu 0 4 185 187 182 175
		f 4 302 303 -301 -298
		mu 0 4 184 188 187 185
		f 4 304 305 306 -304
		mu 0 4 188 189 190 187
		f 4 -307 307 308 -302
		mu 0 4 187 190 191 182
		f 4 309 310 311 -308
		mu 0 4 190 192 193 191
		f 4 312 313 -310 -306
		mu 0 4 189 194 192 190
		f 4 -309 314 315 -296
		mu 0 4 182 191 195 180
		f 4 -316 316 317 -293
		mu 0 4 180 195 196 181
		f 4 318 319 320 -317
		mu 0 4 195 197 198 196
		f 4 -312 321 -319 -315
		mu 0 4 191 193 197 195
		f 4 322 323 324 -322
		mu 0 4 193 199 200 197
		f 4 -325 325 326 -320
		mu 0 4 197 200 201 198
		f 4 327 -250 328 -326
		mu 0 4 200 149 151 201
		f 4 329 -247 -328 -324
		mu 0 4 199 144 149 200
		f 4 330 331 332 -314
		mu 0 4 194 202 203 192
		f 4 -333 333 -323 -311
		mu 0 4 192 203 199 193
		f 4 334 -239 -330 -334
		mu 0 4 203 142 144 199
		f 4 335 -236 -335 -332
		mu 0 4 202 139 142 203
		f 4 -209 336 337 -261
		mu 0 4 126 125 204 158
		f 4 -338 338 339 -259
		mu 0 4 158 204 205 159
		f 4 340 341 342 -339
		mu 0 4 204 206 207 205
		f 4 -213 343 -341 -337
		mu 0 4 125 128 206 204
		f 4 -340 344 345 -253
		mu 0 4 153 208 209 150
		f 4 -346 346 -329 -249
		mu 0 4 150 209 201 151
		f 4 347 348 -327 -347
		mu 0 4 209 210 198 201
		f 4 -343 349 -348 -345
		mu 0 4 208 211 210 209
		f 4 350 351 352 -350
		mu 0 4 211 212 213 210
		f 4 -353 353 -321 -349
		mu 0 4 210 213 196 198
		f 4 354 -294 -318 -354
		mu 0 4 213 178 181 196
		f 4 355 -291 -355 -352
		mu 0 4 212 179 178 213
		f 4 -219 356 357 -344
		mu 0 4 128 131 214 206
		f 4 -358 358 -351 -342
		mu 0 4 206 214 215 207
		f 4 359 -285 -356 -359
		mu 0 4 214 171 173 215
		f 4 -222 -282 -360 -357
		mu 0 4 131 133 171 214
		f 4 -268 360 361 -193
		mu 0 4 114 161 216 115
		f 4 -362 362 363 -203
		mu 0 4 115 216 217 122
		f 4 364 365 366 -363
		mu 0 4 216 218 219 217
		f 4 -263 367 -365 -361
		mu 0 4 161 160 218 216
		f 4 -364 368 369 -225
		mu 0 4 122 217 220 135
		f 4 -370 370 -269 -231
		mu 0 4 135 220 164 138
		f 4 371 372 -277 -371
		mu 0 4 220 221 169 164
		f 4 -367 373 -372 -369
		mu 0 4 217 219 221 220
		f 4 374 375 376 -374
		mu 0 4 222 223 224 225
		f 4 -377 377 -297 -373
		mu 0 4 225 224 184 183
		f 4 378 -305 -303 -378
		mu 0 4 224 189 188 184
		f 4 379 -313 -379 -376
		mu 0 4 223 194 189 224
		f 4 -243 380 381 -368
		mu 0 4 147 140 226 227
		f 4 -382 382 -375 -366
		mu 0 4 227 226 223 222
		f 4 383 -331 -380 -383
		mu 0 4 226 202 194 223
		f 4 -233 -336 -384 -381
		mu 0 4 140 139 202 226;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "generichar_GEO";
	rename -uid "D1524B7E-4A00-4858-3007-C78809949712";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "generichar_GEOShape" -p "generichar_GEO";
	rename -uid "74EE445A-4373-8424-0F75-D79B28BF10D9";
	setAttr -k off ".v";
	setAttr -s 7 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33277891576290131 0.019248604774475098 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "generichar_GEOShapeOrig" -p "generichar_GEO";
	rename -uid "04F73B0B-4481-8F42-910B-549086CD31A1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 2363 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.60289007 0.75476152 0.59199321
		 0.74314612 0.60935563 0.72919661 0.62224668 0.74124992 0.6340785 0.75356066 0.61537993
		 0.76896143 0.57963467 0.72884279 0.59709865 0.71702445 0.56904876 0.71582794 0.5846954
		 0.70468789 0.5612964 0.69807595 0.58206356 0.68577129 0.55501455 0.68097335 0.65975934
		 0.77950478 0.62888128 0.78433812 0.64882439 0.76816708 0.63422829 0.71296698 0.64598125
		 0.725609 0.65516025 0.73837847 0.62385732 0.70109499 0.6164065 0.6886003 0.60749727
		 0.67132729 0.67750984 0.75525981 0.66398317 0.74792832 0.64806938 0.72466415 0.6383006
		 0.71263564 0.093633533 0.053857714 0.11211207 0.049541473 0.12977247 0.04689946 0.65648365
		 0.73613822 0.6290583 0.69958091 0.073481232 0.062475078 0.61948001 0.68539071 0.056683149
		 0.077504799 0.6099478 0.66938066 0.046969838 0.096360527 0.60337365 0.65234143 0.037794486
		 0.11485831 0.66566277 0.74489361 0.14492576 0.043676678 0.10227596 0.034929842 0.12828979
		 0.033888858 0.084351845 0.045244329 0.14473183 0.030907989 0.026380245 0.10854729
		 0.035515476 0.08229766 0.052311294 0.066922992 0.06795156 0.055265084 0.0084766299
		 0.10150876 0.013313426 0.078304455 0.029278876 0.05073037 0.044219553 0.048003927
		 0.014921368 0.0478178 0.14175873 0.011216744 0.12739158 0.014872634 0.10441194 0.01356219
		 0.067804493 0.032405034 0.074210741 0.020570651 0.075450003 0.0065561137 0.057350274
		 0.041521452 0.048791215 0.031662539 0.05106914 0.023610864 0.050611723 0.01253279
		 0.039465729 0.030907111 0.029069463 0.026161524 0.047315717 0.0023414225 0.040982179
		 0.02223241 0.036073919 0.016179793 0.031161822 0.0093872063 0.02073553 0.020562422
		 0.84334499 0.15573786 0.86529672 0.14813228 0.89032221 0.13021471 0.83004683 0.14984962
		 0.82728541 0.13535471 0.8406263 0.11580674 0.86556971 0.097602926 0.89006466 0.088701084
		 0.90475357 0.094840549 0.9065786 0.1100576 0.84348428 0.15275075 0.86394382 0.14536321
		 0.8881374 0.12800682 0.83229953 0.14797446 0.83025599 0.13589153 0.84290063 0.11790822
		 0.86697179 0.10035124 0.88998747 0.091700986 0.90248615 0.096674465 0.90365106 0.10929915
		 0.85280913 0.13291739 0.87821484 0.11461021 0.076142691 0.7547729 0.056777757 0.74127609
		 0.069661543 0.72921377 0.087033294 0.74315047 0.063660599 0.76898062 0.044953611
		 0.75359499 0.081911303 0.71703285 0.099384345 0.72883934 0.094307102 0.70468748 0.10996353
		 0.71581799 0.096924491 0.68576896 0.11770539 0.69806081 0.1030872 0.66661829 0.037007213
		 0.79975551 0.030216966 0.76821184 0.050168078 0.78436589 0.033030618 0.72565603 0.044775367
		 0.71300608 0.023860468 0.73843122 0.055138186 0.70112646 0.062579468 0.68862599 0.071474552
		 0.67134625 0.079114273 0.65168935 0.015044319 0.74798697 0.030941626 0.72471315 0.49704209
		 0.049527548 0.51551843 0.053842422 0.040702328 0.71267837 0.022535278 0.73619235
		 0.47938368 0.046885826 0.53566688 0.062454082 0.049935285 0.69961745 0.55245048 0.077482909
		 0.059502643 0.68541986 0.56214517 0.096338712 0.069022097 0.66940206 0.57129878 0.11484233
		 0.00085019233 0.75153023 0.57816696 0.12923405 0.013362288 0.74495375 0.5068776 0.034918018
		 0.48086643 0.033876736 0.52480012 0.045230962 0.58950007 0.12388742 0.58271986 0.10854534
		 0.57361716 0.082291476 0.55683422 0.066911273 0.54119998 0.055250756 0.59582382 0.078311026
		 0.60062987 0.10152604 0.57987523 0.050725155 0.56493276 0.04799955 0.59422773 0.047807172
		 0.60704201 0.11566009 0.48176482 0.014862891 0.50474185 0.013553771 0.53493923 0.020565607
		 0.54134607 0.032398824 0.53369856 0.006552679 0.55180025 0.041515157 0.55807668 0.023609664
		 0.56035638 0.031660531 0.55853081 0.012532816 0.5696795 0.030905247 0.58007145 0.026157226
		 0.56182241 0.0023415254 0.57306612 0.016176777 0.56816119 0.0222302 0.57797319 0.0093827322
		 0.58839983 0.02055027 0.96081907 0.14203118 0.98276985 0.14963676 0.9357934 0.12411439
		 0.996068 0.14374921 0.99882984 0.12925446 0.98548937 0.10970613 0.96054602 0.091502234
		 0.93605042 0.082599975 0.92136145 0.088740088 0.91953665 0.10395721 0.96217179 0.13926204
		 0.98263073 0.14664963 0.93797815 0.12190637 0.99381548 0.14187387 0.99585927 0.12979113
		 0.98321486 0.11180749 0.95914376 0.094250455 0.93612766 0.085599877 0.92362899 0.090573855
		 0.92246413 0.10319871 0.97330618 0.12681623 0.94790018 0.10850913 0.80869734 0.047669426
		 0.80066693 0.038285159 0.81040525 0.028744595 0.81776786 0.037437852 0.81696939 0.056810807
		 0.82529187 0.045995481 0.82619071 0.065430537 0.83340371 0.054333683 0.83612901 0.072195314
		 0.84279895 0.060608622 0.77914256 0.011360505 0.85246104 0.064464346 0.78584498 0.019999051
		 0.79730755 0.012638335 0.79306769 0.028692562 0.8035571 0.020045474 0.79665494 0.059660316
		 0.7877599 0.049655594 0.80617088 0.069586873 0.81646627 0.07895758 0.82808256 0.086606823
		 0.7634114 0.018207263 0.77142787 0.029016828 0.77956009 0.039178897 0.78417927 0.07231877
		 0.77459729 0.061875306 0.79433829 0.083043762 0.8055687 0.092996173 0.81835383 0.10209779
		 0.74694151 0.028420998 0.75610292 0.040146008 0.76518202 0.051246755 0.5049262 0.44131356
		 0.50335103 0.40189898 0.53618884 0.39900768 0.53638738 0.43772089 0.51136839 0.49224776
		 0.53376716 0.47702485 0.53212309 0.35566092 0.47747332 0.34168977 0.53850496 0.31774721
		 0.49925065 0.29774705 0.54107231 0.28158313 0.54624367 0.57616132 0.46181679 0.21660879
		 0.48655152 0.59682864 0.49589324 0.58249956 0.52683353 0.59856874 0.18615013 0.91793329
		 0.1646436 0.93348259 0.26079446 0.76647967 0.17022999 0.89607048 0.20492159 0.90314382
		 0.18658657 0.88170975 0.2224424 0.88566476 0.20187482 0.86417764 0.25029114 0.78956872
		 0.27615815 0.80319804 0.23841715 0.75767285 0.1580078 0.87577623 0.17040174 0.86214769
		 0.22289716 0.92262405 0.20337437 0.93853831 0.24269661 0.90560818 0.21593755 0.95283514
		 0.23660535 0.93648517;
	setAttr ".uvst[0].uvsp[250:499]" 0.25736657 0.91808742 0.2611658 0.88542169
		 0.27978852 0.90132141 0.30553204 0.88679987 0.28986907 0.91033453 0.29598296 0.87760252
		 0.62368196 0.12771928 0.64439946 0.12726414 0.26964194 0.92888445 0.60249245 0.12718791
		 0.2446993 0.94639176 0.22849755 0.9650293 0.41955617 0.018313169 0.33673677 0.010151923
		 0.20758548 0.98000598 0.37069234 0.0064755082 0.60318291 0.1487608 0.41054213 0.061718106
		 0.62457472 0.14904487 0.64461213 0.14961934 0.6652686 0.14921296 0.32722497 0.87283963
		 0.40986425 0.16616434 0.49262172 0.65466875 0.50176597 0.62777632 0.41717458 0.19574612
		 0.37782833 0.18724158 0.37379503 0.15779829 0.40639907 0.1401628 0.3701596 0.13201118
		 0.43847987 0.14655554 0.45698702 0.66955 0.47606683 0.60955745 0.46375108 0.64129436
		 0.38576561 0.63200682 0.39447504 0.60166305 0.45091709 0.6005187 0.43074405 0.63371146
		 0.42247209 0.66359687 0.38094091 0.66194451 0.44147089 0.25423402 0.42620355 0.22144607
		 0.42375749 0.29774827 0.3852272 0.24225152 0.38205191 0.20883125 0.37751588 0.2869758
		 0.35260567 0.38395861 0.34364003 0.38007125 0.34743172 0.37015581 0.3597348 0.37566188
		 0.36091003 0.39450946 0.37192979 0.38890728 0.36401948 0.4073686 0.37717864 0.40545577
		 0.36229381 0.41532838 0.37546352 0.41655272 0.35789871 0.42186731 0.37150428 0.42888856
		 0.39162269 0.44749177 0.39943674 0.42206684 0.36974081 0.36544999 0.35258949 0.35803378
		 0.38835388 0.38270953 0.39831749 0.40562347 0.36694056 0.32098413 0.39849189 0.33357745
		 0.43718711 0.36367941 0.45904195 0.4057833 0.46111292 0.43849066 0.46594709 0.51413858
		 0.43585509 0.48767459 0.41689017 0.46546161 0.42892236 0.43095088 0.38311124 0.35191205
		 0.35939494 0.34196165 0.41128331 0.37482989 0.4274863 0.40651602 0.38771093 0.51820725
		 0.37629795 0.49904397 0.3646293 0.47902396 0.34759587 0.42942965 0.35572773 0.44615832
		 0.18254197 0.84064138 0.20140275 0.82891738 0.21731798 0.84683812 0.24163204 0.81053621
		 0.22121713 0.79974353 0.22357276 0.77814394 0.20718737 0.79596436 0.21345386 0.81545645
		 0.2007007 0.80508864 0.19477609 0.81526166 0.18967985 0.79753584 0.18380575 0.81445169
		 0.22218569 0.74919838 0.14560527 0.86021799 0.20759574 0.76293731 0.15642604 0.84785026
		 0.164841 0.83001101 0.17127196 0.80899274 0.17956281 0.79066443 0.20182939 0.78589237
		 0.19202305 0.7761724 0.10716497 0.83470166 0.094861135 0.85277206 0.16593081 0.70712012
		 0.086583763 0.81938446 0.11991986 0.8175025 0.098992534 0.80356336 0.13114229 0.80053794
		 0.11257344 0.78539765 0.14015706 0.7863344 0.12209903 0.77255261 0.15230951 0.76919389
		 0.13405375 0.75680435 0.16358714 0.7554847 0.14507224 0.7412672 0.17691612 0.73839998
		 0.15578471 0.725169 0.12844923 0.84830904 0.2085613 0.73490024 0.19426475 0.75125366
		 0.13956024 0.83425182 0.14914253 0.81629002 0.15751429 0.79952991 0.16841061 0.78285235
		 0.18030797 0.76736867 0.54662532 0.53671807 0.53341305 0.55110574 0.48399836 0.54968637
		 0.4606182 0.58199126 0.51845241 0.52885658 0.53934294 0.5116381 0.78649849 0.091565892
		 0.79817265 0.10220113 0.77638137 0.080722764 0.23889051 0.86636358 0.26603633 0.82484066
		 0.23107673 0.82945889 0.2771844 0.86265779 0.29019931 0.83932823 0.25372115 0.84578586
		 0.76660973 0.070062108 0.75616109 0.059731688 0.74629098 0.048817709 0.81115645 0.11248502
		 0.73688674 0.036877766 0.31901503 0.85968363 0.30796719 0.8516202 0.30006811 0.81625831
		 0.31979609 0.79522038 0.30858371 0.79176921 0.31668824 0.82404208 0.32748181 0.8299433
		 0.11080003 0.13812338 0.11203378 0.14036696 0.8603971 0.050751649 0.10731566 0.14101966
		 0.10940826 0.136049 0.1058324 0.13874297 0.10753733 0.13407166 0.10401785 0.13655061
		 0.86604112 0.038863491 0.86884338 0.041821666 0.86435664 0.0416888 0.86736441 0.044722758
		 0.86236161 0.044179063 0.8654741 0.047323178 0.85994405 0.046078891 0.86305016 0.049326658
		 0.11254859 0.13675649 0.11369646 0.1390027 0.11115074 0.13467875 0.10920817 0.13276628
		 0.86454296 0.037421539 0.86285764 0.040181272 0.86084098 0.042617265 0.85843354 0.044456005
		 0.11418074 0.1353438 0.11530656 0.13765243 0.11277705 0.13322422 0.1107977 0.13135988
		 0.86310017 0.035894115 0.86143959 0.038621239 0.85940349 0.041033961 0.85699493 0.042887855
		 0.11727899 0.13246647 0.11847496 0.13476697 0.11582798 0.1303879 0.11389965 0.12858535
		 0.86018693 0.032880604 0.85863274 0.035530474 0.85665011 0.037910465 0.85425043 0.039731156
		 0.12000579 0.12984118 0.12123495 0.13197143 0.1185497 0.12792307 0.11676693 0.12618421
		 0.85738373 0.03024745 0.85600066 0.032804292 0.85411322 0.035116449 0.85176814 0.03680509
		 0.12147248 0.12849972 0.12270951 0.13043778 0.12001693 0.12668933 0.11829299 0.12495208
		 0.85582083 0.028833017 0.85452467 0.03141059 0.8526848 0.033629529 0.85041821 0.035189047
		 0.12279087 0.12726009 0.12403071 0.12896729 0.12137741 0.12558001 0.11975741 0.12379482
		 0.8542676 0.027469937 0.85310978 0.030124906 0.85137081 0.032299541 0.84919667 0.033750068
		 0.12448132 0.12541136 0.12572682 0.12670414 0.12323415 0.12400162 0.12193131 0.12227672
		 0.85166013 0.025900979 0.85101181 0.028475113 0.84962481 0.030536639 0.84766471 0.031751439
		 0.097192407 0.12333879 0.099690557 0.12516786 0.87318766 0.039296597 0.094959259
		 0.12846072 0.094582915 0.12178617 0.092243552 0.12693071 0.091603518 0.12068743 0.089173913
		 0.12562947 0.88438201 0.028901642 0.086095154 0.12441574 0.88133413 0.031097522 0.88324392
		 0.036058322 0.87803942 0.032880601 0.87998188 0.03799035 0.87461102 0.033915557 0.87646955
		 0.038942933 0.098277688 0.12104107 0.10074645 0.12293097 0.095620394 0.11949008 0.092614889
		 0.11843705 0.88341188 0.026679834 0.8804211 0.028842915 0.8737334 0.031549819 0.099297822
		 0.11880373;
	setAttr ".uvst[0].uvsp[500:749]" 0.86952388 0.029640632 0.096637487 0.11720263
		 0.093568802 0.11616051 0.88256842 0.024384852 0.10137016 0.11408846 0.86777389 0.024833363
		 0.098709822 0.11254634 0.095650315 0.11144671 0.88062954 0.019598311 0.10308516 0.10991878
		 0.10552573 0.11158237 0.10049713 0.10854983 0.097631216 0.10742448 0.87865061 0.015404937
		 0.87597585 0.01763068 0.87771648 0.021775335 0.87109149 0.024527943 0.86955702 0.020298544
		 0.10386258 0.10811195 0.10628372 0.10965104 0.87511367 0.015783994 0.87765539 0.013527785
		 0.098467112 0.10566506 0.87958413 0.026552143 0.87285614 0.029280413 0.87286299 0.019412914
		 0.87446529 0.023538582 0.87712711 0.03056718 0.87625569 0.028285969 0.87212485 0.017540667
		 0.86891127 0.018374646 0.8742761 0.014027803 0.87139988 0.015785372 0.87023008 0.012999853
		 0.87271321 0.011267939 0.86829752 0.016588248 0.8674342 0.013608588 0.10694766 0.10778973
		 0.10798043 0.1044931 0.096441746 0.10285185 0.87460136 0.0087992121 0.10127938 0.10682546
		 0.10454911 0.10642037 0.10564554 0.10355333 0.10328239 0.10252441 0.10200274 0.1052296
		 0.10082537 0.10119395 0.099284708 0.10399317 0.071393907 0.12119137 0.068231404 0.12041382
		 0.90568024 0.026237415 0.072019041 0.11553081 0.074381113 0.12183931 0.074899793
		 0.11589032 0.077270687 0.12209965 0.077615201 0.11612054 0.89233214 0.032313619 0.080391765
		 0.11622485 0.89539045 0.032490958 0.89537978 0.026647655 0.89882565 0.032402735 0.89870095
		 0.026578359 0.90240246 0.032045078 0.90220731 0.026401654 0.90562081 0.023587784
		 0.072187722 0.11286559 0.075153768 0.11318409 0.077958822 0.11344016 0.080767274
		 0.11362611 0.89531964 0.023973938 0.89861292 0.023926837 0.90209323 0.023798721 0.90557933
		 0.021254674 0.072375894 0.11054537 0.075376153 0.11085003 0.078201652 0.11114182
		 0.081013083 0.11135986 0.89524692 0.021701714 0.89854789 0.021663198 0.90205026 0.021500563
		 0.90544081 0.016378853 0.07287246 0.10574308 0.075821877 0.10611165 0.078615546 0.10638176
		 0.081362486 0.10656255 0.89514273 0.016992416 0.89845479 0.01693194 0.90194839 0.016711567
		 0.90502816 0.0113799 0.073451698 0.10094193 0.076290429 0.10134233 0.078967929 0.10157424
		 0.081595063 0.10167509 0.8950702 0.012202704 0.89832085 0.012171148 0.90169877 0.011852719
		 0.90477717 0.008999059 0.073705435 0.098721869 0.076523244 0.099203534 0.079167902
		 0.099397175 0.081741154 0.099411316 0.89506775 0.0099902814 0.89823598 0.0099894032
		 0.90153426 0.0096006813 0.90455157 0.0070647025 0.073933423 0.096980534 0.076715112
		 0.097553104 0.079293549 0.097744405 0.081804097 0.097668044 0.89508021 0.0083503239
		 0.89815944 0.0083571253 0.9013688 0.0078692334 0.90369588 0.0039649871 0.07446444
		 0.094090991 0.077110529 0.09483061 0.079507232 0.095026001 0.081781209 0.094825737
		 0.89522225 0.0058805584 0.8980155 0.0059591793 0.90090954 0.0052716238 0.055540264
		 0.12544547 0.052461982 0.12629651 0.92280757 0.036545973 0.054662764 0.12238553 0.058379769
		 0.12474872 0.057298899 0.12164309 0.06095314 0.12415562 0.059815645 0.12113819 0.91015917
		 0.034145467 0.062302768 0.12064553 0.91232049 0.035971869 0.91379732 0.033147812
		 0.91506386 0.037485771 0.91651082 0.034604914 0.91837889 0.038527973 0.91963136 0.035688724
		 0.92353159 0.034988854 0.054122269 0.12071171 0.056741953 0.11991434 0.059279919
		 0.11944968 0.061819792 0.11902819 0.91460097 0.031579658 0.91732305 0.033010039 0.92037529
		 0.034107715 0.92440665 0.033176165 0.053565919 0.11878883 0.05618 0.11795605 0.058713019
		 0.11750832 0.061258137 0.11716739 0.9154731 0.029755363 0.91819537 0.031194687 0.92124623
		 0.032317735 0.92602772 0.029334666 0.052490056 0.11475293 0.05506444 0.11393762 0.057542384
		 0.11347825 0.060033321 0.11317069 0.91731578 0.02600456 0.91999829 0.027439432 0.92297947
		 0.028562065 0.92792588 0.024946904 0.051352799 0.11028482 0.053865194 0.10954163
		 0.056262732 0.10903092 0.058671355 0.10870637 0.91933268 0.021823332 0.92191941 0.023296192
		 0.92488337 0.024310766 0.92865676 0.022948921 0.050847709 0.10838064 0.053376079
		 0.10767554 0.055768788 0.10712509 0.058121681 0.10673431 0.92025006 0.020021548 0.92276275
		 0.021469599 0.92564243 0.022431716 0.92926073 0.021284286 0.05043453 0.10677273 0.052954197
		 0.10613558 0.055301189 0.10554813 0.057574213 0.10502616 0.92103404 0.018558849 0.92346132
		 0.019988643 0.92628241 0.020899141 0.929923 0.018416196 0.049844682 0.10406188 0.052196741
		 0.10357564 0.054327607 0.1029237 0.056376278 0.1021113 0.92244077 0.016314615 0.92457217
		 0.017745603 0.92717856 0.01843481 0.046262443 0.15202561 0.043839514 0.1549052 0.94028711
		 0.065798298 0.043006301 0.15032028 0.047686458 0.14881162 0.044324398 0.1474762 0.04791069
		 0.14532761 0.044833899 0.14439604 0.92818141 0.055617053 0.044862509 0.14083658 0.9304446
		 0.058979854 0.93270206 0.056775119 0.93274128 0.062427234 0.93513888 0.059991822
		 0.93526256 0.065847717 0.93768942 0.063085705 0.9418422 0.063918084 0.040774465 0.1493943
		 0.042095959 0.14658761 0.042727113 0.14357279 0.043005109 0.14016686 0.93432063 0.055357695
		 0.93676448 0.058427311 0.93933845 0.061367072 0.94359756 0.06207088 0.038441539 0.14848892
		 0.039675832 0.14568482 0.040307522 0.14262976 0.04069531 0.13916746 0.93612975 0.053748146
		 0.93851185 0.056827016 0.94109362 0.059652701 0.94621861 0.059200585 0.034829855
		 0.14719261 0.036016047 0.14442405 0.03659755 0.14131835 0.03673321 0.13783199 0.9389177
		 0.051564932 0.94096708 0.054630592 0.94351882 0.057177637 0.94856679 0.051909626
		 0.028395414 0.14359392 0.031151772 0.14557134 0.9482522 0.055648696 0.94540751 0.054605063
		 0.94666338 0.052179754 0.032229722 0.1431213 0.029093087 0.14212535 0.032621205 0.14043128
		 0.029288769 0.14050257 0.032255769 0.13749106 0.028567135 0.13888171 0.94174945 0.0498855
		 0.94452018 0.049093563 0.94312608 0.052694775 0.94503146 0.051060069 0.92872232 0.013340688
		 0.049834013 0.099340342;
	setAttr ".uvst[0].uvsp[750:999]" 0.049633384 0.10146037 0.92982852 0.015594435
		 0.92768514 0.016198222 0.92775536 0.014191795 0.051430821 0.10121207 0.050820172
		 0.099260509 0.053080618 0.10056661 0.051682889 0.09890762 0.054636955 0.099560983
		 0.052413106 0.098097146 0.92393231 0.014512355 0.92545176 0.013310658 0.92552775
		 0.015852261 0.9264003 0.014169147 0.89975047 6.2741077e-005 0.076540589 0.089519344
		 0.075447142 0.091402113 0.90196407 0.0014399287 0.90014428 0.0031276317 0.8991909
		 0.0014426633 0.077551842 0.092135623 0.077709436 0.090047494 0.079523206 0.092294879
		 0.078952849 0.0900653 0.081351221 0.092014909 0.08010006 0.089630261 0.89561021 0.0037390594
		 0.89630032 0.0019344619 0.89788693 0.0039444943 0.89780384 0.0021014004 0.86508435
		 0.010259206 0.10639232 0.10085572 0.10644746 0.098826118 0.10755777 0.098676123 0.86707085
		 0.01091479 0.86711293 0.0087926723 0.10449511 0.1000809 0.105277 0.098463669 0.10261786
		 0.098873898 0.10425884 0.097665042 0.87193263 0.0067984276 0.8694247 0.0062736212
		 0.87097657 0.0090829125 0.86935008 0.0076331696 0.86919802 0.010578269 0.86837226
		 0.0085905455 0.84514046 0.030110102 0.12556958 0.12380103 0.12613541 0.12240122 0.12697995
		 0.12281714 0.84676456 0.030154288 0.8462764 0.02875394 0.12457502 0.1227271 0.12552315
		 0.12172907 0.12369639 0.12131447 0.12501067 0.12087046 0.84935874 0.025430894 0.84754139
		 0.025733992 0.84933537 0.027536158 0.84791601 0.027020326 0.84838194 0.029285565
		 0.84735483 0.028223109 0.10014784 0.13853838 0.098685324 0.13636337 0.87460661 0.043703709
		 0.093364358 0.13366899 0.87071252 0.047521442 0.87752116 0.04398451 0.083813548 0.1285602
		 0.88565862 0.040768873 0.89452189 0.038266137 0.89163607 0.037372377 0.086134553
		 0.13029355 0.077604353 0.12791528 0.90879607 0.036818359 0.062863886 0.12725888 0.91025776
		 0.039050594 0.070279419 0.12637462 0.067523837 0.12504284 0.90313482 0.03744461 0.066893578
		 0.12965535 0.90740228 0.038428903 0.073922992 0.1276798 0.081387937 0.13038015 0.081016302
		 0.13226286 0.089798331 0.13219354 0.09489584 0.13820773 0.87383568 0.046204846 0.10202676
		 0.14129315 0.059853852 0.12813465 0.056500793 0.1289192 0.10373622 0.14396626 0.86285394
		 0.054240812 0.86592126 0.052894112 0.86888701 0.050695293 0.87551492 0.048509058
		 0.88185275 0.043362502 0.89052403 0.043088283 0.89880264 0.038708847 0.90625751 0.041561466
		 0.9131099 0.041196421 0.91701877 0.042028259 0.053178728 0.12966968 0.062327504 0.13198633
		 0.07342875 0.13362037 0.087098956 0.13762407 0.097236097 0.14312159 0.077989936 0.13912585
		 0.082249105 0.1440343 0.09024173 0.14441983 0.099651814 0.14685827 0.065890431 0.13695763
		 0.057611406 0.13293597 0.92000234 0.046084333 0.91604292 0.047211342 0.8842932 0.050396558
		 0.89198548 0.052546855 0.89843959 0.047157913 0.90454787 0.051329572 0.91002703 0.047688004
		 0.8736617 0.055109888 0.87966031 0.056160502 0.8685832 0.057487693 0.86436963 0.058700565
		 0.058441937 0.13758722 0.92034644 0.049534924 0.89336538 0.061040938 0.88770801 0.061842125
		 0.88243145 0.063351765 0.89918619 0.060291838 0.90462977 0.059440263 0.91042197 0.058066871
		 0.87740582 0.064637244 0.87143344 0.065518722 0.88311732 0.076640569 0.88531137 0.070832618
		 0.89009321 0.071502253 0.8945055 0.069430985 0.90124559 0.07463567 0.90540618 0.067667976
		 0.91035736 0.06766814 0.9165675 0.050806496 0.92121345 0.053290185 0.057966411 0.14213032
		 0.069092453 0.14304005 0.078465223 0.14897846 0.81672019 0.020502716 0.90458918 0.088492118
		 0.89239973 0.079481617 0.88579637 0.0886226 0.87860221 0.090293966 0.87430924 0.077231154
		 0.085641146 0.17914617 0.07436347 0.17910075 0.063846231 0.18048792 0.91544682 0.090632603
		 0.91309607 0.076729953 0.91788596 0.067049928 0.91495371 0.064441919 0.92768818 0.062429149
		 0.92471492 0.056907095 0.051106095 0.14578761 0.93039554 0.065527238 0.93278229 0.06914667
		 0.046514034 0.15756036 0.049802184 0.15440965 0.051493943 0.15042029 0.055955768
		 0.14614479 0.92372525 0.055821758 0.05638057 0.15277527 0.062532842 0.17359336 0.074668467
		 0.16813506 0.92283827 0.086363658 0.92170769 0.077357627 0.92256457 0.068133593 0.92656958
		 0.06856554 0.92901272 0.068747401 0.92676967 0.075407155 0.93022686 0.072533503 0.048893571
		 0.16132501 0.050893307 0.16703068 0.053855777 0.15823263 0.060134947 0.16476437 0.062779367
		 0.15588233 0.071033359 0.15171289 0.064805567 0.14931676 0.069941163 0.15742826 0.068394303
		 0.16442862 0.077484787 0.15797116 0.092085958 0.16859213 0.092270017 0.15094796 0.087086499
		 0.15777655 0.098178387 0.15563066 0.32302541 0.3801195 0.31406975 0.38405249 0.30691713
		 0.37574977 0.31920603 0.37020579 0.29688236 0.36555499 0.31401387 0.35809192 0.29475859
		 0.38901743 0.30579433 0.39459693 0.27831671 0.38285968 0.31111264 0.44620442 0.29529443
		 0.42897427 0.30888289 0.42189109 0.3192057 0.42944646 0.27522221 0.44763735 0.30229253
		 0.47910029 0.65133673 0.028745322 0.64397395 0.037438799 0.63789588 0.028196499 0.16066478
		 0.12371764 0.15444572 0.10962581 0.16329058 0.11447121 0.16989325 0.12361106 0.65818506
		 0.020045981 0.1725719 0.11163048 0.63644975 0.045996644 0.52413684 0.14535828 0.14259666
		 0.11171973 0.62833768 0.054335058 0.62313801 0.046325732 0.51380897 0.13609396 0.52456522
		 0.13634074 0.13398603 0.11234722 0.61894226 0.060610157 0.61243445 0.051393855 0.50167161
		 0.13063683 0.60927987 0.064465985 0.66034693 5.5511151e-017 0.48425272 0.13109566
		 0.66443473 0.012638655 0.65547848 0.006418596 0.18137901 0.11222091 0.66107529 0.038286127
		 0.6530447 0.047670633 0.66867471 0.028693289 0.64477247 0.056812249 0.63555086 0.065432198
		 0.62561238 0.072197147 0.61497563 0.076759391 0.6758976 0.019999556 0.67398268 0.049656853
		 0.6650874 0.059661828 0.68218267 0.039179888 0.65557122 0.069588631 0.64527559 0.078959577
		 0.63365901 0.086609021 0.6209479 0.093145445 0.69031513 0.029017562;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.68714565 0.061876871 0.67756337 0.072320595
		 0.6965611 0.051248051 0.66740412 0.083045863 0.65617341 0.092998527 0.64338797 0.10210038
		 0.62990117 0.11097441 0.70564044 0.040147021 0.69513339 0.070063874 0.6853615 0.080724806
		 0.70558232 0.059733197 0.67524409 0.091568209 0.66356963 0.10220371 0.65058553 0.11248787
		 0.63716346 0.12220473 0.71545267 0.048818942 0.1305238 0.39954221 0.13042754 0.43824813
		 0.10922599 0.43518221 0.1087994 0.39913115 0.10853469 0.36090189 0.13447088 0.35619289
		 0.13314688 0.47753751 0.10862973 0.47053128 0.12765574 0.51215768 0.10382599 0.50304991
		 0.12043229 0.5372501 0.088567287 0.53198016 0.090308756 0.56852102 0.1008631 0.29309165
		 0.12798142 0.31830311 0.10533315 0.32623994 0.20769073 0.40611535 0.20570658 0.43882364
		 0.16189879 0.44175994 0.16336966 0.40234774 0.18908215 0.3420797 0.22943066 0.36395922
		 0.23108861 0.4879356 0.20106038 0.51447338 0.26873901 0.54232097 0.27930623 0.5183441
		 0.16717842 0.29820296 0.22482851 0.25453949 0.24267261 0.29799873 0.26804128 0.33375666
		 0.28888172 0.28710088 0.29955688 0.32107723 0.28103665 0.24239832 0.18063894 0.59719646
		 0.15669113 0.61669046 0.14035946 0.59903115 0.17126703 0.58289397 0.18309063 0.55005968
		 0.20654279 0.58230174 0.12090218 0.57668203 0.23999423 0.22171474 0.269032 0.58686715
		 0.26658636 0.56855941 0.23652445 0.63394237 0.20352972 0.64159721 0.19115022 0.60989702
		 0.21628356 0.60080242 0.27273598 0.60181892 0.28151387 0.63215274 0.17468536 0.6550318
		 0.21073031 0.20071083 0.25615782 0.16639552 0.24894203 0.19599372 0.28410685 0.20897269
		 0.29220051 0.15792045 0.28826156 0.18737325 0.17827585 0.67983472 0.25953919 0.14038688
		 0.21034893 0.66983163 0.24485092 0.6638 0.28638029 0.66204584 0.37047517 0.79177803
		 0.47567216 0.93856025 0.49289834 0.91795564 0.51440573 0.9335044 0.35926318 0.79522657
		 0.46310779 0.9528566 0.40289244 0.80321538 0.37898105 0.81626976 0.36235967 0.82404894
		 0.35156482 0.82994699 0.47145945 0.98002738 0.4561483 0.92264575 0.47412574 0.90316653
		 0.44243893 0.93650597 0.43634757 0.90562898 0.45660368 0.88568753 0.42167649 0.91810685
		 0.41787755 0.88544077 0.44015467 0.86638582 0.3992534 0.9013381 0.38305894 0.87761599
		 0.40185913 0.86267453 0.42532408 0.84580678 0.38884589 0.83934224 0.41301042 0.82485998
		 0.37107635 0.85163009 0.36002734 0.8596909 0.50882077 0.89609283 0.5295437 0.90778142
		 0.42875931 0.78959179 0.49246278 0.88173324 0.47717318 0.8642019 0.46172881 0.84686285
		 0.44796976 0.82948345 0.43741539 0.81056029 0.52104515 0.87579805 0.53768599 0.88487715
		 0.45547512 0.77817184 0.50864953 0.86217093 0.49650738 0.84066647 0.47764477 0.82894373
		 0.46559298 0.81548333 0.4578298 0.79977083 0.53345025 0.8602379 0.54581463 0.87119108
		 0.47144955 0.76296729 0.52262706 0.84787226 0.51420939 0.83003509 0.48427108 0.81528896
		 0.49524173 0.81447864 0.50777549 0.80901885 0.47834584 0.80511665 0.47185898 0.79599267
		 0.47721627 0.78592163 0.48702112 0.7762022 0.55060917 0.84832442 0.56238681 0.86429971
		 0.48477665 0.75128478 0.5394941 0.83427048 0.52990758 0.8163116 0.5215323 0.79955423
		 0.48936605 0.79756433 0.49948221 0.79069263 0.51063287 0.78287947 0.49873379 0.7673983
		 0.49117708 0.72081602 0.57189488 0.83470905 0.59247518 0.81938142 0.60554057 0.83688945
		 0.5232411 0.72519732 0.50211889 0.73843098 0.55913383 0.81751484 0.58005965 0.8035664
		 0.54790592 0.80055463 0.56647152 0.7854073 0.53888702 0.78635466 0.55694109 0.77256662
		 0.5267303 0.76921844 0.54498106 0.75682378 0.51545006 0.75551265 0.5339579 0.74129134
		 0.24999917 0.46567485 0.29067302 0.4991512 0.23787816 0.43120009 0.23924899 0.40676489
		 0.2553654 0.37504017 0.28347394 0.3520498 0.307163 0.34203511 0.32879212 0.010163188
		 0.29482305 0.006591022 0.45054701 0.96505034 0.24599423 0.01858294 0.43434447 0.94641215
		 0.20404051 0.029504299 0.40940034 0.92890286 0.74939895 0.12771374 0.38917217 0.9103502
		 0.72867972 0.12725496 0.37350896 0.88681203 0.70656073 0.1238336 0.7284658 0.14960986
		 0.70780981 0.14920324 0.74850267 0.14903903 0.21644366 0.074184299 0.25514448 0.061958551
		 0.29130131 0.41665471 0.30446899 0.41538107 0.26734161 0.42223781 0.28955516 0.40556854
		 0.30272043 0.40744081 0.26841608 0.40579483 0.19528928 0.085743941 0.46901911 0.10352217
		 0.47259894 0.10646883 0.19283286 0.089232996 0.47668383 0.10936088 0.47368091 0.11251432
		 0.18976578 0.087886639 0.19263642 0.084319375 0.18710425 0.092479788 0.47050238 0.10124527
		 0.47430834 0.10379545 0.47909945 0.10562379 0.47231692 0.099052675 0.47618723 0.1010404
		 0.48143938 0.10070948 0.47432241 0.096958749 0.18428357 0.07953658 0.18185213 0.081198573
		 0.18832232 0.079716407 0.18497486 0.082514897 0.18017316 0.083502501 0.19021259 0.082316339
		 0.18680027 0.085688256 0.1820263 0.090102427 0.19822916 0.082426019 0.46553442 0.10062584
		 0.19574192 0.081071608 0.46692616 0.098551288 0.46879715 0.09657374 0.47100863 0.094621554
		 0.19132935 0.076682582 0.19332442 0.079172306 0.19971377 0.08072114 0.46378571 0.099258952
		 0.19725208 0.079448685 0.46518353 0.097181022 0.46712616 0.095268331 0.46943599 0.093414597
		 0.19282793 0.075175084 0.19484468 0.077610508 0.20118903 0.079135492 0.46215338 0.09784624
		 0.19869033 0.077880464 0.46355703 0.09572646 0.46553648 0.093861908 0.4678781 0.092102252
		 0.19424556 0.073615067 0.19628175 0.076027177 0.2039759 0.07590849 0.45905483 0.09496884
		 0.20143397 0.074723594 0.46050584 0.092890091 0.4624342 0.091087341 0.46467602 0.089350253
		 0.19705144 0.070524238 0.19903423 0.072903581 0.20638669 0.07279855 0.45632777 0.092343487
		 0.20391543 0.071797326 0.45778385 0.090425208 0.45956665 0.088686168 0.46165356 0.087024219;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.19968261 0.067797907 0.20157029 0.07010939
		 0.20763144 0.071034089 0.4548609 0.091002002 0.20526485 0.070181154 0.45631644 0.089191437
		 0.45804042 0.087454014 0.46005517 0.085744783 0.20115805 0.066404074 0.20299821 0.068622336
		 0.20874697 0.069438823 0.45354235 0.089762352 0.20648594 0.068742044 0.45495585 0.08808212
		 0.4565759 0.086296745 0.45843416 0.084418796 0.20257246 0.065118231 0.20431171 0.067292199
		 0.21004604 0.067103155 0.45185173 0.087913573 0.20801726 0.066743255 0.45309898 0.086503707
		 0.45440179 0.084778644 0.4557353 0.082706265 0.20466973 0.063468151 0.20605706 0.065529086
		 0.21054077 0.065101445 0.45076337 0.086303182 0.20891689 0.065146059 0.45175791 0.085229151
		 0.45263657 0.083816402 0.45334762 0.081943363 0.20634572 0.062528886 0.2072995 0.06427785
		 0.21039721 0.06337557 0.45019743 0.084903315 0.2094046 0.063745737 0.45080972 0.084231094
		 0.45132214 0.083372422 0.45138678 0.082094453 0.20776479 0.062012754 0.20832622 0.063215248
		 0.18250027 0.074291274 0.48137543 0.09096165 0.48297054 0.096170373 0.18108141 0.078697801
		 0.17816727 0.078978553 0.17921881 0.073937625 0.48409137 0.089431718 0.48653674 0.094694823
		 0.48923665 0.10012548 0.48716119 0.088130422 0.49020064 0.09279456 0.49531892 0.094763458
		 0.49024004 0.086916454 0.16779111 0.073266961 0.16565526 0.075550802 0.1724453 0.071053341
		 0.17003091 0.07576333 0.16516615 0.078082457 0.17570692 0.07298515 0.17383625 0.078356631
		 0.17139608 0.085389808 0.18441968 0.069302492 0.47914231 0.0858391 0.18107714 0.068910889
		 0.48175219 0.08428672 0.48473185 0.083188131 0.48800936 0.082299262 0.1743549 0.066093162
		 0.17764917 0.067876041 0.18527226 0.06691388 0.47805721 0.083541021 0.18195471 0.066545449
		 0.48071489 0.081990369 0.48372066 0.080937594 0.48703313 0.080186851 0.17526782 0.063838832
		 0.17856139 0.065562911 0.18616369 0.064636528 0.47703734 0.081303298 0.18283188 0.06427633
		 0.47969809 0.079702616 0.48276708 0.078660838 0.48614031 0.077953838 0.17610471 0.061548345
		 0.17943271 0.063281983 0.18791352 0.059829865 0.47496566 0.0765872 0.18459636 0.059524454
		 0.4776265 0.075045615 0.48068634 0.073946476 0.48400328 0.073118068 0.17797218 0.056772131
		 0.18122296 0.058535188 0.18937995 0.055431873 0.47325149 0.072416775 0.18613067 0.055295587
		 0.47584003 0.071048424 0.4787063 0.069923647 0.48181659 0.069011696 0.17971265 0.052627996
		 0.18282507 0.054410037 0.18994427 0.053395849 0.47247446 0.070609592 0.18677633 0.053371925
		 0.47505814 0.069323748 0.47787085 0.068163939 0.48085842 0.067186549 0.18057474 0.050781541
		 0.18356313 0.052538026 0.19045994 0.051493783 0.47178832 0.068917692 0.18739006 0.051585753
		 0.47433519 0.067727596 0.47705364 0.066491768 0.47989696 0.065350957 0.18141222 0.049025573
		 0.18428807 0.050782949 0.19095825 0.04821885 0.47069266 0.066050142 0.18825328 0.048606463
		 0.47305626 0.065021873 0.47798356 0.062204145 0.1829749 0.046266057 0.47551367 0.063691981
		 0.18545774 0.04799778 0.19060287 0.045257509 0.46994662 0.063352145 0.18861659 0.045912996
		 0.47184417 0.062577859 0.47372177 0.061371304 0.47542378 0.05966353 0.1847114 0.044081312
		 0.18648967 0.045576498 0.18960641 0.043190997 0.46989205 0.06132241 0.18857454 0.043791138
		 0.47106269 0.060960293 0.47208107 0.060161907 0.47263044 0.058860756 0.18633766 0.042631757
		 0.18731537 0.043589026 0.1493928 0.071170896 0.50605613 0.088873088 0.50494015 0.08369083
		 0.50810492 0.082907833 0.14829022 0.073423184 0.50944263 0.092153221 0.15328974 0.06704022
		 0.15255716 0.072439142 0.14943473 0.076555446 0.5024119 0.090179555 0.50195146 0.084339961
		 0.50290728 0.096120007 0.49872974 0.090415515 0.49906078 0.084599897 0.16405445 0.072367355
		 0.16335879 0.067309372 0.16116898 0.073260911 0.16030087 0.067486525 0.15688875 0.073703423
		 0.1568661 0.067398094 0.15725151 0.082151443 0.50430769 0.07803712 0.5074842 0.077569433
		 0.15348536 0.061397418 0.50142825 0.078392446 0.49871308 0.078619599 0.16331518 0.061621439
		 0.16031201 0.061644044 0.1569913 0.061574455 0.50414282 0.075362988 0.50738221 0.075014293
		 0.15359971 0.058794782 0.50117642 0.075683571 0.49837133 0.07593666 0.16337185 0.05895162
		 0.16037245 0.058970701 0.15707958 0.058923267 0.50395513 0.073047079 0.50719655 0.072695777
		 0.15364295 0.056496881 0.50095642 0.073348425 0.49813122 0.0736361 0.16346537 0.056666557
		 0.16044539 0.056698795 0.15714483 0.056659915 0.5034706 0.068246432 0.50667304 0.067808956
		 0.15374546 0.05170843 0.50052059 0.06860856 0.49772671 0.068872482 0.16351102 0.051918153
		 0.16055018 0.051990148 0.15723857 0.05192925 0.50290513 0.063444555 0.50594962 0.062903844
		 0.15399572 0.046850175 0.50006521 0.063837454 0.49738705 0.064062297 0.16346821 0.047055386
		 0.16062339 0.047201071 0.15737318 0.04716906 0.50265795 0.06122404 0.5057072 0.060550373
		 0.15416056 0.044598427 0.49983862 0.061697822 0.49719334 0.061884101 0.16339442 0.044760149
		 0.16062622 0.044988934 0.15745834 0.044987597 0.50243521 0.059482124 0.5054217 0.058595177
		 0.15432627 0.042867206 0.49965164 0.060046714 0.49707255 0.06023065 0.163294 0.04302467
		 0.16061398 0.043349184 0.15753514 0.043355528 0.50191283 0.056591008 0.5045107 0.055403922
		 0.15478586 0.040269978 0.49926436 0.057322863 0.49686697 0.057511225 0.16290101 0.040301498
		 0.16047238 0.040879708 0.15767942 0.040957894 0.50093824 0.053899117 0.50307506 0.052494936
		 0.15555137 0.038126361 0.49883121 0.054626379 0.49685922 0.054779772 0.16189596 0.037831187
		 0.1600848 0.038738418 0.1578083 0.038943477 0.49985045 0.052012976 0.50077718 0.05092562
		 0.15650493 0.036441747 0.49867991 0.052537642 0.49743634 0.052551717 0.16034123 0.035944499
		 0.15939502 0.036933936 0.15789168 0.037100621 0.13502397 0.077402629 0.51983577 0.091415532
		 0.52079582 0.087941416 0.5238744 0.088792063 0.52256089 0.096071698 0.51872557 0.095432773;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.13731495 0.073522002 0.13867481 0.077021919
		 0.13965045 0.082204461 0.51648235 0.090631381 0.51795602 0.087245017 0.51400918 0.094483741
		 0.51347208 0.08975596 0.51538241 0.086652242 0.14689668 0.071812846 0.14553379 0.069140255
		 0.14543508 0.074044771 0.14337268 0.07096637 0.14258321 0.076190278 0.14062963 0.072480023
		 0.14566553 0.082681201 0.5216729 0.084881142 0.52454376 0.085823454 0.13606274 0.070683055
		 0.51903653 0.084139027 0.51651955 0.083634466 0.14418748 0.066424429 0.14189617 0.068142623
		 0.13918296 0.069599472 0.52221322 0.083207123 0.5250349 0.084241495 0.13531893 0.069102213
		 0.51959324 0.08241009 0.51705509 0.081945769 0.14340222 0.064876154 0.14109267 0.066574641
		 0.13837086 0.068004765 0.52276933 0.081284046 0.52556837 0.082377538 0.13444817 0.067312419
		 0.52015495 0.0804516 0.5176217 0.080004215 0.14251603 0.063085161 0.14022069 0.064750537
		 0.13749868 0.066189602 0.52384466 0.077247731 0.52656227 0.078328498 0.13271526 0.063557155
		 0.52126998 0.07643275 0.51879185 0.075973719 0.14061375 0.059327994 0.13837832 0.061000139
		 0.13569614 0.062434752 0.52498132 0.072779171 0.52764636 0.073761657 0.13081174 0.059306312
		 0.52246863 0.072036311 0.52007091 0.071525924 0.13845439 0.05511868 0.13636184 0.056819357
		 0.13377534 0.058291957 0.52548617 0.070874803 0.52816337 0.071739532 0.1300528 0.05742747
		 0.5229575 0.070170037 0.52056456 0.069619901 0.13745531 0.053304378 0.13544463 0.055017766
		 0.13293219 0.056465559 0.52589917 0.069266729 0.52855843 0.069944493 0.12941298 0.05589506
		 0.52337921 0.06862992 0.52103198 0.068042777 0.13658872 0.051809564 0.13466078 0.05355522
		 0.13223372 0.054984763 0.5264886 0.066555627 0.52902234 0.066817202 0.12851702 0.053431001
		 0.52413636 0.066069707 0.52200526 0.065418035 0.13483532 0.049460128 0.1332543 0.051311214
		 0.13112308 0.052741963 0.52669954 0.063953929 0.52885205 0.063742854 0.12801056 0.051194672
		 0.52490193 0.063705869 0.52325195 0.063060619 0.13261972 0.047706813 0.13176298 0.049509127
		 0.13016768 0.050848819 0.52649862 0.061833791 0.52752781 0.061435133 0.12794042 0.049188487
		 0.52551234 0.061754104 0.52464956 0.061401319 0.13027586 0.04716856 0.13024375 0.048307531
		 0.12929533 0.049165882 0.12002639 0.10760248 0.52653813 0.1169069 0.5300777 0.11452195
		 0.53250158 0.11740116 0.12272948 0.11219966 0.52248472 0.12073088 0.12043287 0.1008385
		 0.1229128 0.1041371 0.12546793 0.10752357 0.52484548 0.11291758 0.52865285 0.11130807
		 0.51995891 0.11527354 0.52523249 0.1082845 0.52842784 0.10782387 0.52038276 0.10864247
		 0.12800638 0.097420432 0.12529933 0.10051812 0.12295389 0.097418457 0.12525035 0.093971521
		 0.12912479 0.10355611 0.12668197 0.10373793 0.53333378 0.11281569 0.53540373 0.11556545
		 0.11800636 0.098076791 0.53201479 0.10997176 0.53150451 0.10689154 0.52894729 0.1037343
		 0.12532954 0.088803314 0.12299322 0.091767028 0.12055663 0.094983317 0.53556556 0.111889
		 0.53741032 0.11462767 0.11635757 0.096358344 0.53424317 0.10908252 0.53361112 0.10606771
		 0.12363122 0.087578855 0.12137482 0.090349756 0.11893123 0.093418971 0.53789842 0.11098281
		 0.53967214 0.11374787 0.11460263 0.094644159 0.53666317 0.10817894 0.53603047 0.1051239
		 0.12175112 0.085837953 0.11956599 0.088740386 0.11718412 0.091818854 0.54150999 0.10968515
		 0.54322523 0.11228659 0.11217774 0.092169367 0.54032278 0.10691685 0.5397402 0.10381116
		 0.11853855 0.083283134 0.1167784 0.086557403 0.11472922 0.089622661 0.54518777 0.10806236
		 0.54680151 0.11031514 0.11028931 0.089597084 0.54410881 0.10561261 0.54371631 0.10292258
		 0.11447295 0.081740037 0.11394701 0.084878139 0.11257052 0.087687053 0.54794359 0.10608373
		 0.54936093 0.10741255 0.10903364 0.087172054 0.54724526 0.10461535 0.54704899 0.10299256
		 0.11065886 0.082047172 0.11117664 0.084086262 0.11066537 0.086052522 0.48609439 0.10692175
		 0.17602845 0.091152988 0.1637048 0.0875398 0.49834645 0.10162638 0.51044655 0.099456072
		 0.15114398 0.086322471 0.50724506 0.1055395 0.49408758 0.10653552 0.48406664 0.11345042
		 0.51789558 0.10008454 0.13534741 0.084527686 0.19019508 0.10133635 0.18425438 0.1005099
		 0.17828268 0.099628612 0.17325768 0.098343343 0.16798173 0.096833915 0.16232498 0.096032798
		 0.15650491 0.095283747 0.15106197 0.094432198 0.14527053 0.093058884 0.51837158 0.10462795
		 0.49787229 0.11147954 0.50530505 0.11421319 0.50639802 0.11992878 0.49885386 0.12047262
		 0.5115329 0.11181602 0.51356012 0.11838178 0.48925132 0.12027898 0.1379405 0.090137936
		 0.52269387 0.1034968 0.13912581 0.08579921 0.13423412 0.094953395 0.13097931 0.091899045
		 0.1319689 0.09081383 0.16559684 0.10649282 0.161185 0.10442181 0.17037807 0.10582326
		 0.15028565 0.10265892 0.14533505 0.10265902 0.14073928 0.099433124 0.13780738 0.10204079
		 0.1331293 0.10312427 0.50794584 0.1269294 0.51620591 0.12726405 0.52544856 0.12952912
		 0.12892465 0.11039692 0.3336165 0.58524364 0.33357483 0.57294101 0.33361968 0.60271335
		 0.40054828 0.56839067 0.39814433 0.58670348 0.33312157 0.23373562 0.33325809 0.27991021
		 0.33307162 0.20478988 0.33295262 0.15140736 0.33301544 0.1835452 0.33573529 0.63239503
		 0.33353657 0.55227184 0.39833531 0.54215741 0.40005317 0.55529922 0.3335517 0.5603531
		 0.26705161 0.55546701 0.3332614 0.31706411 0.33275074 0 0.33953029 0.79120421 0.68626595
		 0.14873761 0.33952183 0.86150736 0.33563289 0.6623894 0.33340186 0.43399432 0.33342791
		 0.4511238 0.33332872 0.37894359 0.33331215 0.36833662 0.33330369 0.35566086 0.33326912
		 0.33877325 0.33351949 0.52973634 0.33348754 0.5081957 0.33345267 0.4875724 0.33952248
		 0.84284031 0.33952871 0.82570255 0.58677661 0.49465764 0.58077341 0.46423662 0.60198998
		 0.45802206 0.60837889 0.48706621 0.78252816 0.095520392 0.79383111 0.10684067;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.59854555 0.42864981 0.57802671 0.43178171
		 0.77211237 0.085278094 0.57841021 0.39803246 0.59884125 0.39833164 0.7623266 0.074395239
		 0.59957671 0.33641312 0.59952891 0.36628851 0.57956946 0.36303926 0.58069581 0.33115354
		 0.7407428 0.052680932 0.75143135 0.063342445 0.60058475 0.52378553 0.62140292 0.51705807
		 0.80701303 0.11759087 0.5852887 0.29991144 0.60437942 0.30652305 0.82166982 0.12729833
		 0.088772416 0.43241647 0.088299334 0.39867678 0.68963057 0.085280247 0.69941664 0.074397124
		 0.067868829 0.3990294 0.068245351 0.42933783 0.087044835 0.36369485 0.71031213 0.063344046
		 0.067094445 0.36699688 0.0861094 0.46487018 0.67921454 0.095522806 0.064877629 0.45871019
		 0.08018133 0.49529901 0.66791129 0.10684337 0.058561265 0.48776245 0.066442192 0.52445501
		 0.65472907 0.11759385 0.045608222 0.51777947 0.0811463 0.30059302 0.72968566 0.040180586
		 0.028521478 0.54500979 0.08582902 0.33181852 0.72100097 0.052682262 0.066963315 0.33712804
		 0.14462645 0.69403398 0.06764736 0.80243862 0.081146017 0.7861535 0.093541346 0.77104408
		 0.10533488 0.7565828 0.11687364 0.74231809 0.12702072 0.7278356 0.13627118 0.71221942
		 0.61140817 0.80242389 0.53437984 0.6940611 0.5427438 0.71224231 0.5979014 0.78614646
		 0.58549893 0.77104402 0.57369882 0.75658923 0.56215394 0.74233073 0.55200082 0.72785354
		 0.55791181 0.39854026 0.55758047 0.43460029 0.55826718 0.46995553 0.56315058 0.502469
		 0.57847744 0.531367 0.59965634 0.55804157 0.5611757 0.32562569 0.55807215 0.36030245
		 0.18654063 0.52684188 0.15558368 0.49270102 0.14858729 0.52932 0.1336773 0.55160093
		 0.050644875 0.09806893 0.12866649 0.047301937 0.078275383 0.088345155 0.15847214
		 0.034999568 0.18830478 0.042003814 0.10616702 0.097088955 0.20971641 0.062034104
		 0.12656194 0.12118876 0.94746804 0.049198363 0.54955572 0.10424583 0.92145967 0.059961766
		 0.91775292 0.055145718 0.13534975 0.097388811 0.13129172 0.098850489 0.91501927 0.05923919
		 0.14067376 0.094230995 0.92034394 0.062397443 0.92440242 0.063859344 0.36973074 0.053564131
		 0.33958411 0.068724453 0.33284244 0.067312837 0.32612193 0.068740964 0.29592919 0.053675592
		 0.29575276 0.13212365 0.33279887 0.12428147 0.48049513 0.52647287 0.14377147 0.56011087
		 0.15792605 0.57127243 0.14782035 0.58348382 0.13611245 0.57262504 0.51540792 0.5478403
		 0.52333802 0.55964309 0.50920856 0.57084256 0.49923158 0.55862474 0.15167534 0.5482915
		 0.16787636 0.55903333 0.53102452 0.57214171 0.51934022 0.58303326 0.45297104 1 0.05364418
		 0.14099985 0.054159164 0.13716279 0.051614344 0.14357845 0.050472498 0.1428317 0.047390401
		 0.14123841 0.13448042 0.088282548 0.52217853 0.099659495 0.52472389 0.1060753 0.52586555
		 0.1053283 0.1275133 0.090609141 0.026782632 0.14175682 0.94503802 0.047054231 0.026978672
		 0.14492327 0.10822912 0.084191017 0.54777002 0.1013713 0.10713048 0.086901933 0.92702925
		 0.012304991 0.04880482 0.098941855 0.92541969 0.012171547 0.52568746 0.060562421
		 0.12697358 0.048337452 0.52391917 0.060590897 0.89722365 5.5511151e-017 0.075617254
		 0.088429272 0.89535415 0.00094475551 0.49811912 0.050833493 0.15594561 0.035061903
		 0.49629042 0.052113194 0.86738271 0.0070051341 0.10370982 0.09636382 0.86608094 0.0081924498
		 0.47017297 0.059585243 0.18626305 0.041272376 0.46878177 0.061172038 0.84596413 0.027042188
		 0.124946 0.11959258 0.84528357 0.028383989 0.44977084 0.083690792 0.20813899 0.060726475
		 0.44935286 0.085319296 0.45540035 0.20034668 0.51053864 0.61627346 0.16548717 0.62816876
		 0.20436513 0.21698582 0.062075019 0.30725458 0.047864497 0.5517906 0.56554979 0.29246065
		 0.61922473 0.55107921 0.15582508 0.2663967 0.12530822 0.2821525 0.51308995 0.70715147
		 0.62465328 0.81895447 0.073526122 0.83689862 0.054410838 0.81897658 0.72485709 0.036878698
		 0.032867074 0.31755012 0 0.52822912 0.64007187 0.12730156 0.82457817 0.12220164 0.66703779
		 0.52740157 0.63362515 0.31673944 0.73205829 0.040179573 0.036332011 0.34387934 0.037652016
		 0.37115291 0.016633034 0.50384218 0.067448914 0.55870324 0.027578115 0.47811347 0.032985032
		 0.4507907 0.036478639 0.42460641 0.038178205 0.39906436 0.63023573 0.3430815 0.65034938
		 0.50304973 0.63934374 0.47734016 0.62854171 0.39828739 0.62899154 0.37036484 0.47743604
		 0.9867416 0.2016091 0.98671943 0.33449328 0.78491801 0.52744782 0.12382261 0.12706955
		 0.11743383 0.13285553 0.12135217 0.19131738 0.093692362 0.47815821 0.11813384 0.54408067
		 0.099982023 0.10744495 0.090640552 0.53960329 0.10032462 0.10947829 0.094192035 0.53564167
		 0.1016615 0.11209893 0.097062014 0.53333223 0.10266165 0.11385409 0.09890902 0.53147507
		 0.10333189 0.11540894 0.10078903 0.11761898 0.10382934 0.52982712 0.12005715 0.52169538
		 0.062055156 0.12586747 0.050590891 0.51995635 0.064605892 0.12577288 0.053412303
		 0.51875877 0.067521103 0.126435 0.056280065 0.51821148 0.069229446 0.12703887 0.057944518
		 0.51766205 0.071201712 0.12776954 0.059942279 0.51630068 0.07566651 0.12966739 0.064329565
		 0.51507634 0.079663642 0.13128814 0.068170644 0.51451498 0.081524633 0.13216303 0.069983147
		 0.51403219 0.083142146 0.1328869 0.071540102 0.51299053 0.086007804 0.13397986 0.074320801
		 0.51158464 0.088703737 0.50984585 0.089924879 0.52315813 0.092165589 0.13569152 0.081077464
		 0.49503195 0.054494306 0.15373206 0.036438573 0.49459347 0.057304189 0.15200007 0.038963053
		 0.49456209 0.060146932 0.15114404 0.042062264 0.49461991 0.061890841 0.15091816 0.04399636
		 0.49475959 0.064155824 0.15066683 0.046376891 0.49497941 0.069046341 0.15025347 0.051375236
		 0.49531963 0.073848166 0.15011431 0.056250542 0.4955627 0.076117367 0.15007254 0.058583435
		 0.4959363 0.078720301 0.15001287 0.06123282 0.49628592 0.08444009 0.1498082 0.066635311
		 0.49611706 0.089666486 0.49494696 0.092880696;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.50881219 0.087539524 0.18375541 0.041797098
		 0.46798897 0.06373065 0.181087 0.043797616 0.46835732 0.066989131 0.17900427 0.046689365
		 0.46938923 0.070286296 0.17803335 0.04852559 0.47005269 0.072147965 0.17703822 0.050402503
		 0.47081026 0.0740797 0.17505947 0.054595351 0.47251546 0.078440398 0.17312078 0.059381295
		 0.47459054 0.083237946 0.17227742 0.061675992 0.47558793 0.085430488 0.17130741 0.06389752
		 0.47664374 0.08766786 0.16946822 0.068800502 0.4788712 0.092524208 0.49252149 0.091060884
		 0.48057905 0.096804224 0.48049477 0.099483021 0.20632179 0.060423881 0.44963318 0.087180056
		 0.20402089 0.060894486 0.45060626 0.089206487 0.20141412 0.062463865 0.45230255 0.091469698
		 0.19986148 0.063827112 0.45362389 0.092940226 0.19829914 0.065241672 0.4550986 0.094473928
		 0.1954969 0.06787499 0.45785886 0.097269528 0.19258471 0.070888542 0.46102756 0.10015505
		 0.19114241 0.072415933 0.46263784 0.10150534 0.18964474 0.073857829 0.46430066 0.10286962
		 0.18684325 0.076815806 0.46756706 0.10586441 0.47764972 0.098865189 0.47073638 0.10896203
		 0.58420533 0.85277444 0.4704814 0.73493117 0.45686293 0.74922717 0.44063628 0.75769806
		 0.41826311 0.76649988 0.39317179 0.77927095 0.4878754 0.96567106 0.3445707 0.78492004
		 0.49647227 0.95460171 0.22185011 0.17171642 0.18761265 0.24336824 0.71480209 0.028421715
		 0.69833177 0.018207723 0.6826002 0.011360792 0.67044747 0.006195914 0.17708662 0.12528217
		 0.65072411 0.012276814 0.60112101 0.055531383 0.49069923 0.14164971 0.18440679 0.12909044
		 0.18746239 0.11646519 0.50197786 0.14160314 0.51249629 0.14298911 0.63020933 0.036793478
		 0.14024615 0.12562066 0.15110254 0.12348055 0.64502162 0.020503236 0.10265476 0.15001135
		 0.86549205 0.066345401 0.86061966 0.055529963 0.8013953 5.5511151e-017 0.87128127
		 0.094102807 0.86822516 0.08147604 0.051777363 0.17384166 0.92862499 0.082444921 0.93566906
		 0.072612494 0.93296558 0.077210173 0.83153212 0.03679255 0.052206874 0.18285854 0.93807679
		 0.068838939 0.8238458 0.028195785 0.79129505 0.0061957575 0.89502585 0.088729188
		 0.81101787 0.012276503 0.10559881 0.14645921 0.92067009 0.042409115 0.053776383 0.13357536
		 0.92171437 0.039326966 0.10876775 0.14336167 0.90629965 0.036176402 0.066490114 0.12742744
		 0.87140375 0.044542693 0.095840335 0.13698135 0.095755756 0.13430288 0.080216646
		 0.12716624 0.89003491 0.040556293 0.88789874 0.038272213 0.064751089 0.12620649 0.9058845
		 0.031640418 0.080044746 0.12194058 0.88622141 0.033805221 0.097463191 0.13002343
		 0.1229853 0.11944158 0.12059778 0.12020452 0.84563577 0.032111902 0.12669975 0.1246778
		 0.10091633 0.097165816 0.098355949 0.099705644 0.86472887 0.013220907 0.10834974
		 0.10123491 0.89379895 0.0028314393 0.89279336 0.0053019086 0.071870387 0.092896149
		 0.073314786 0.089991584 0.9230755 0.012709795 0.92085963 0.014463254 0.047311187
		 0.10432381 0.047480941 0.10124963 0.9412235 0.04674701 0.93715733 0.048290245 0.033115685
		 0.14979458 0.029538989 0.14782465 0.93394434 0.050845332 0.036668956 0.15125446 0.932064
		 0.052586425 0.038930774 0.15213341 0.93036544 0.053811021 0.040937304 0.15307046
		 0.91910589 0.016812922 0.047775447 0.10745084 0.91823918 0.018307889 0.048170805
		 0.1092457 0.9172399 0.020122381 0.048688054 0.11126763 0.91508013 0.024332143 0.049772739
		 0.11583403 0.91317749 0.02808971 0.050767243 0.11988267 0.91229117 0.029880898 0.051300883
		 0.12174642 0.91150576 0.031429335 0.051792264 0.1233282 0.89239991 0.0080253752 0.070949852
		 0.096084714 0.89229923 0.0097610662 0.070658505 0.09803921 0.89222509 0.012056604
		 0.07040906 0.10039224 0.89218158 0.016920036 0.069671094 0.10529724 0.89222658 0.021669136
		 0.069131672 0.11018386 0.89231986 0.023954567 0.06893152 0.11249871 0.89237624 0.026624812
		 0.068849742 0.11508417 0.87668437 0.011691329 0.095479846 0.10468717 0.86574292 0.018398548
		 0.86522722 0.016496241 0.094521224 0.10651207 0.86630732 0.020434823 0.10381979 0.11594224
		 0.10174406 0.12073889 0.089302599 0.11768627 0.090195715 0.11545332 0.87041545 0.031918272
		 0.088326097 0.11979865 0.87126809 0.034307182 0.11789918 0.12191706 0.84693551 0.034447495
		 0.11627835 0.12324303 0.84805155 0.036042646 0.11468005 0.12452245 0.84929681 0.037806995
		 0.11165792 0.12684846 0.85170841 0.040916715 0.10845613 0.12960042 0.85449612 0.044143487
		 0.10689843 0.13091274 0.85597175 0.045729004 0.10532588 0.13211969 0.85745668 0.047433797
		 0.18257475 0.95457995 0.28588733 0.77925676 0.19117069 0.96564937 0.83184028 0.11097159
		 0.13324395 0.87117368 0.11667643 0.86428821 0.18785606 0.72078359 0.14136896 0.8848573
		 0.44418836 0.17137766 0.14950837 0.90776032 0.47865078 0.24295342 0.51050752 0.26590332
		 0.57681882 0.56791902 0.84079331 0.093143076 0.8467654 0.076757446 0.63855195 0.54425079
		 0.64205128 0.79971927 0.063344836 0.12351087 0.092333674 0.11061793 0.1020124 0.13445689
		 0.12397549 0.68095362 0.63387007 0.45002082 0.63031006 0.42383474 0.80626363 0.006418433
		 0.84930658 0.051392548 0.83860326 0.046324559 0.075582139 0.65235728 0.0015227729
		 0.75532848 0.57954264 0.005257342 0.59182823 0.021170143 0.59768099 0.047342952 0.56083041
		 5.5511151e-017 0.53484684 0.0027299775 0.50542325 0.009519211 0.48336023 0.012097953
		 0.60909337 0.11170456 0.47057262 0.0081646945 0.4673993 0.011207057 0.60252148 0.099743932
		 0.5990265 0.07788419 0.46442619 0.030895947 0.012802234 0.7446667 0.46423209 0.043663204
		 0.02272475 0.73539931 0.074925691 0.65321326 0 0.75108749 0.067919768 0.67050409
		 0.057533439 0.68621498 0.047834199 0.69894117 0.039585594 0.71076596 0.031055417
		 0.72295552 0.019289704 0.77955717 0.59984106 0.65167665 0.6781795 0.75146091 0.017305182
		 0.021185862 0.029588617 0.0052636638 0.011466844 0.047355566 0.048307385 5.5511151e-017
		 0.074301101 0.0027328979 0.10373046 0.0095270304 0.12579603 0.012107315;
	setAttr ".uvst[0].uvsp[2250:2362]" 0.13858514 0.008173978 0 0.11167742 0.0065869652
		 0.099724405 0.0020468454 0.11563563 0.010111124 0.07787282 0.019580746 0.12388325
		 0.66622257 0.74460608 0.030908393 0.12924382 0.65629363 0.73534518 0.67902929 0.75101751
		 0.60403079 0.65319681 0.6110509 0.67048168 0.62144971 0.68618393 0.63115853 0.69890243
		 0.63941568 0.71072185 0.64795429 0.72290635 0.57588488 0.66662556 0.40129533 0.088582814
		 0.60623479 0.1610148 0.6256941 0.16155118 0.64469039 0.16276568 0.6651125 0.16368622
		 0.68612868 0.16407955 0.7079652 0.16367269 0.72838527 0.16275644 0.74738103 0.16154534
		 0.22062692 0.099793911 0.26447684 0.088794112 0.046264529 0.42758098 0.046560287
		 0.39974391 0.046437681 0.37010702 0.045550585 0.34033099 0.038488686 0.31002456 0.0067061186
		 0.53468567 0.026641607 0.50800985 0.039626658 0.48059461 0.044292867 0.45419618 0.62052655
		 0.4268328 0.62015623 0.39898932 0.62019789 0.36934584 0.62100315 0.339562 0.66034734
		 0.53387451 0.62797749 0.30923229 0.64035058 0.50724053 0.62730002 0.47984707 0.62256747
		 0.4534516 0.33278915 0.085460663 0.31786036 0.088793635 0.26271531 0.10338038 0.22441049
		 0.11308312 0.21686086 0.7062161 0.25166658 0.7027365 0.29042554 0.70312464 0.33426535
		 0.70437193 0.37694097 0.70305485 0.41572729 0.70255852 0.45054793 0.70595276 0.48678568
		 0.714652 0.4031038 0.1031639 0.3479133 0.088750243 0.60693109 0.16779971 0.62566185
		 0.16855425 0.64420342 0.17016327 0.6643765 0.17164254 0.68626744 0.17233926 0.70869768
		 0.17162919 0.72887027 0.17015415 0.74741179 0.16854846 0.44143933 0.11274433 0.1806435
		 0.71499467 0.48908079 0.67948449 0.22747894 0.14688185 0.66958326 0.13081044 0.68641657
		 0.12891525 0.70349467 0.1308049 0.72586364 0.13290203 0.74804521 0.13263786 0.20647341
		 0.036428452 0.25217471 0.024621189 0.29799226 0.016173363 0.32898372 0.019254327
		 0.33277407 0.019794524 0.33657411 0.019242883 0.36755413 0.016067922 0.41339573 0.024371922
		 0.60112101 0.13052988 0.62503451 0.132644 0.64721471 0.13291192 0.22607344 0.99997848
		 0.23092742 0.99559307 0.66651464 0.12384033 0.68653375 0.11978883 0.35181561 0.87284553
		 0.4481169 0.99561405 0.43665725 0.9793033 0.41508433 0.95708823 0.39546818 0.9382875
		 0.37843317 0.91762346 0.36480123 0.89530438 0.24238689 0.97928262 0.2639586 0.95706874
		 0.28357339 0.93827003 0.30060744 0.91760874 0.31423897 0.89529324 0.45913306 0.036033809
		 0.46154341 0.029101074 0.77195966 0.13052893 0.77058899 0.12718689 0.44518027 0.09944278
		 0.76614243 0.16779774 0.76684022 0.16101289 0.76989436 0.14875925 0.44928154 0.073820353;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt";
	setAttr ".pt[17]" -type "float3" 0.18706776 0 0.053586606 ;
	setAttr ".pt[18]" -type "float3" 0.51890582 0 0.098736554 ;
	setAttr ".pt[109]" -type "float3" -0.18706776 0 0.053586606 ;
	setAttr ".pt[110]" -type "float3" -0.51890582 0 0.098736554 ;
	setAttr ".pt[1832]" -type "float3" -4.2800512 -1.1827035 -0.2460297 ;
	setAttr ".pt[1833]" -type "float3" 4.1291862 -1.2780232 -0.19717021 ;
	setAttr ".pt[1834]" -type "float3" -1.7065275 -0.99998403 0.077706397 ;
	setAttr ".pt[1835]" -type "float3" -0.082492158 -1.3676835 -1.341525 ;
	setAttr ".pt[1836]" -type "float3" 1.6492281 -1.0501423 0.14733702 ;
	setAttr ".pt[1885]" -type "float3" -0.14962889 1.3927623 0.15646563 ;
	setAttr ".pt[1886]" -type "float3" 2.2768793 1.0148945 0.57968831 ;
	setAttr ".pt[1898]" -type "float3" -2.7747002 1.3268466 0.72641051 ;
	setAttr ".pt[1903]" -type "float3" 0.44616213 -0.27047715 -0.084629074 ;
	setAttr ".pt[1904]" -type "float3" 0.8349998 -0.44355154 0 ;
	setAttr ".pt[1906]" -type "float3" 0.15621647 0.55330509 0.094244391 ;
	setAttr ".pt[1907]" -type "float3" 1.5367908 -1.8769399 -0.42992231 ;
	setAttr ".pt[1908]" -type "float3" 0 -1.7166617 -0.73675525 ;
	setAttr ".pt[1909]" -type "float3" -1.5367908 -1.8769399 -0.42992231 ;
	setAttr ".pt[1910]" -type "float3" -0.15621647 0.55330509 0.094244391 ;
	setAttr ".pt[1912]" -type "float3" -0.8349998 -0.44355154 0 ;
	setAttr ".pt[1913]" -type "float3" -0.44616213 -0.27047715 -0.084629074 ;
	setAttr -s 1915 ".vt";
	setAttr ".vt[0:165]"  20.89038849 25.19491196 -13.011507988 19.014318466 25.43218994 -8.83414841
		 14.011474609 25.84597588 -6.80616236 9.50025654 26.26994705 -8.31210232 6.83250332 25.65938759 -13.1145916
		 8.56330872 25.16932869 -18.075037003 13.88414383 25.19906998 -20.55322456 19.16903687 25.19615364 -18.18734169
		 20.57969475 18.22659111 -13.62098885 18.30574417 19.19312096 -9.17105007 14.11753464 20.082603455 -6.92549419
		 9.56638432 20.98418617 -8.73657417 7.57220602 18.64774132 -13.23276615 9.69651222 17.59466743 -18.52588463
		 13.82169342 17.32946014 -20.59762764 19.12221718 17.57624054 -18.34527016 20.42046356 10.17457962 -13.59449577
		 18.85070229 10.94392967 -8.49867439 14.86874771 11.29602432 -5.12112713 10.30643749 11.070084572 -6.88459682
		 8.47190475 10.19078922 -12.65287399 10.73572731 9.43983078 -18.44262886 15.061130524 9.094882965 -20.66519547
		 19.0020122528 9.36651516 -18.45339584 20.022766113 10.41738033 -13.20446301 18.65361786 9.78717804 -17.47925377
		 15.054608345 9.44751263 -19.36273193 11.24413395 9.70155239 -17.35835457 9.41133785 10.61765289 -12.42081261
		 10.96517944 11.61863899 -7.60343218 15.27376747 11.9556427 -6.25605917 18.78167725 11.42130089 -8.99810982
		 9.28305817 6.75398397 -9.22508144 10.93737602 6.12822008 -16.64840508 14.72970963 6.019096851 -19.3103447
		 18.62540245 6.12966013 -17.049526215 20.67383003 6.58522177 -10.21739674 19.083806992 9.5718441 -6.071609974
		 15.43029022 10.67834091 -4.04234314 11.33381557 9.98607254 -4.90256119 19.066518784 7.93851185 0.01101017
		 15.53514481 9.27556133 0.88340569 11.68065357 8.36382103 1.07581234 20.86566162 4.73526001 -1.028044701
		 18.76115608 3.94471693 6.78792095 17.5152092 6.88018084 6.16454029 15.3909359 8.17504406 5.18093681
		 12.84424973 7.073781013 6.93547535 11.031572342 3.96954298 7.85042858 9.44075394 4.91630316 0.23212337
		 14.97321892 6.076348782 9.28530788 14.72328186 3.60201812 10.65279293 9.050930023 0.85477901 -9.37617111
		 10.8956604 0.85477799 -16.20572281 14.44708443 0.85477799 -18.94624519 18.32974434 0.85477901 -16.78660774
		 20.85417938 0.85477901 -10.27376175 21.12434959 0.85477799 -1.32635593 18.85421562 0.85477698 6.73362827
		 10.97887135 0.85477698 7.41341114 9.077299118 0.85477799 -0.43128967 14.77441025 0.85477602 10.31216717
		 9.95414734 0.85477298 -9.34701443 11.34477329 0.85477197 -15.59475327 14.48282242 0.85477197 -17.77296829
		 17.8793087 0.85477197 -15.97103405 19.84803391 0.85477197 -9.80278778 20.057834625 0.85477298 -1.15946007
		 18.36755562 0.85477298 5.91776848 11.61623478 0.854774 6.14054012 10.056282043 0.85477298 -0.77947998
		 14.92334747 0.854774 8.39461231 9.95415783 -0.046007998 -9.34701633 11.3447752 -0.046007 -15.59474754
		 14.48282242 -0.046007998 -17.77295303 17.87930489 -0.046007 -15.97102928 19.84802055 -0.046007998 -9.80278778
		 20.057825089 -0.046007998 -1.15945911 18.3675518 -0.046007 5.9177618 11.61623764 -0.046007 6.14053249
		 10.056292534 -0.046007998 -0.77947998 14.92335129 -0.046007998 8.39459324 14.68833542 -0.046011001 -10.10786629
		 14.85390091 -0.046011001 -0.74363708 18.60108376 9.81238747 -17.738554 19.86408234 10.55787945 -13.72186661
		 18.40584755 11.26068878 -9.56814671 15.04151535 11.61510086 -6.81231499 10.9944849 11.31878376 -8.12073326
		 9.38070107 10.53891945 -12.86825752 11.33170033 9.73784637 -17.65621376 15.14107132 9.40732574 -19.55087471
		 -20.89038849 25.19491196 -13.011507988 -19.014318466 25.43218994 -8.83414841 -14.011474609 25.84597588 -6.80616236
		 -9.50025654 26.26994705 -8.31210232 -6.83250332 25.65938759 -13.1145916 -8.56330872 25.16932869 -18.075037003
		 -13.88414383 25.19906998 -20.55322456 -19.16903687 25.19615364 -18.18734169 -20.57969475 18.22659111 -13.62098885
		 -18.30574417 19.19312096 -9.17105007 -14.11753464 20.082603455 -6.92549419 -9.56638432 20.98418617 -8.73657417
		 -7.57220602 18.64774132 -13.23276615 -9.69651222 17.59466743 -18.52588463 -13.82169342 17.32946014 -20.59762764
		 -19.12221718 17.57624054 -18.34527016 -20.42046356 10.17457962 -13.59449577 -18.85070229 10.94392967 -8.49867439
		 -14.86874771 11.29602432 -5.12112713 -10.30643749 11.070084572 -6.88459682 -8.47190475 10.19078922 -12.65287399
		 -10.73572731 9.43983078 -18.44262886 -15.061130524 9.094882965 -20.66519547 -19.0020122528 9.36651516 -18.45339584
		 -20.022766113 10.41738033 -13.20446301 -18.65361786 9.78717804 -17.47925377 -15.054608345 9.44751263 -19.36273193
		 -11.24413395 9.70155239 -17.35835457 -9.41133785 10.61765289 -12.42081261 -10.96517944 11.61863899 -7.60343218
		 -15.27376747 11.9556427 -6.25605917 -18.78167725 11.42130089 -8.99810982 -9.28305817 6.75398397 -9.22508144
		 -10.93737602 6.12822008 -16.64840508 -14.72970963 6.019096851 -19.3103447 -18.62540245 6.12966013 -17.049526215
		 -20.67383003 6.58522177 -10.21739674 -19.083806992 9.5718441 -6.071609974 -15.43029022 10.67834091 -4.04234314
		 -11.33381557 9.98607254 -4.90256119 -19.066518784 7.93851185 0.01101017 -15.53514481 9.27556133 0.88340569
		 -11.68065357 8.36382103 1.07581234 -20.86566162 4.73526001 -1.028044701 -18.76115608 3.94471693 6.78792095
		 -17.5152092 6.88018084 6.16454029 -15.3909359 8.17504406 5.18093681 -12.84424973 7.073781013 6.93547535
		 -11.031572342 3.96954298 7.85042858 -9.44075394 4.91630316 0.23212337 -14.97321892 6.076348782 9.28530788
		 -14.72328186 3.60201812 10.65279293 -9.050930023 0.85477901 -9.37617111 -10.8956604 0.85477799 -16.20572281
		 -14.44708443 0.85477799 -18.94624519 -18.32974434 0.85477901 -16.78660774 -20.85417938 0.85477901 -10.27376175
		 -21.12434959 0.85477799 -1.32635593 -18.85421562 0.85477698 6.73362827 -10.97887135 0.85477698 7.41341114
		 -9.077299118 0.85477799 -0.43128967 -14.77441025 0.85477602 10.31216717 -9.95414734 0.85477298 -9.34701443
		 -11.34477329 0.85477197 -15.59475327 -14.48282242 0.85477197 -17.77296829 -17.8793087 0.85477197 -15.97103405
		 -19.84803391 0.85477197 -9.80278778 -20.057834625 0.85477298 -1.15946007 -18.36755562 0.85477298 5.91776848
		 -11.61623478 0.854774 6.14054012 -10.056282043 0.85477298 -0.77947998 -14.92334747 0.854774 8.39461231
		 -9.95415783 -0.046007998 -9.34701633 -11.3447752 -0.046007 -15.59474754;
	setAttr ".vt[166:331]" -14.48282242 -0.046007998 -17.77295303 -17.87930489 -0.046007 -15.97102928
		 -19.84802055 -0.046007998 -9.80278778 -20.057825089 -0.046007998 -1.15945911 -18.3675518 -0.046007 5.9177618
		 -11.61623764 -0.046007 6.14053249 -10.056292534 -0.046007998 -0.77947998 -14.92335129 -0.046007998 8.39459324
		 -14.68833542 -0.046011001 -10.10786629 -14.85390091 -0.046011001 -0.74363708 -18.60108376 9.81238747 -17.738554
		 -19.86408234 10.55787945 -13.72186661 -18.40584755 11.26068878 -9.56814671 -15.04151535 11.61510086 -6.81231499
		 -10.9944849 11.31878376 -8.12073326 -9.38070107 10.53891945 -12.86825752 -11.33170033 9.73784637 -17.65621376
		 -15.14107132 9.40732574 -19.55087471 0.00094 164.14564514 -12.1630497 -0.011612719 146.70533752 -18.03972435
		 -0.00079000002 138.57046509 8.5896101 0.0034099999 155.50413513 7.15568018 -0.00044999999 161.47265625 1.33080006
		 -2.96089005 164.15162659 -11.87553024 -8.05347538 163.85447693 -8.34827995 -4.30151987 161.94342041 1.089664936
		 -61.56874847 117.14456177 -5.37087011 -61.59019089 117.36992645 -2.28173995 -59.70223999 115.89855957 0.20821001
		 -57.5352211 114.06967926 -1.98376 -57.71393967 113.3117218 -5.27810001 -58.24388123 112.93643951 -8.74223995
		 -59.80849457 114.68731689 -9.33198738 -61.11117172 116.1006012 -8.13389015 -59.62845993 119.51522827 -4.98092985
		 -59.0022583008 119.26381683 -1.85345995 -56.92126083 117.4196167 -0.47066 -55.037521362 115.47978973 -2.15294003
		 -54.59436035 114.55354309 -5.19246006 -55.61194992 115.23268127 -7.98936987 -57.3291893 116.647789 -9.27608967
		 -58.93920898 118.3964386 -7.85828018 -56.68544006 122.28417969 -4.84589005 -56.012710571 121.91578674 -1.34944999
		 -53.66102982 119.59744263 0.097609997 -51.62102127 117.39620972 -1.98872995 -51.07516861 116.4225235 -5.28668022
		 -52.13816071 117.081390381 -8.44456005 -54.25949097 119.039901733 -9.74176979 -56.12649155 121.20082092 -8.15606022
		 -53.27455902 125.93609619 -4.94944 -52.46767044 125.43144989 -1.011849999 -49.73942184 122.63477325 0.58837003
		 -47.30619812 119.78050995 -1.51252997 -46.6221199 118.47802734 -5.49504995 -47.89384079 119.45385742 -9.40923023
		 -50.50683975 122.063011169 -10.91825008 -52.47586823 124.57144165 -8.62714005 -49.91804886 129.96307373 -5.14334011
		 -48.71144867 129.12698364 -1.066290021 -45.70325851 126.093521118 0.4725 -42.93803024 122.89903259 -1.36521006
		 -42.097618103 121.51864624 -5.81973982 -43.39194107 122.65661621 -10.3375597 -46.33832932 125.74841309 -11.49724007
		 -48.56134033 128.30130005 -8.88282013 -47.56216049 132.40588379 -5.24405003 -46.047229767 131.21206665 -1.42075002
		 -43.21950912 128.34823608 0.094810002 -40.22967911 125.24851227 -1.45456004 -39.30302048 124.034660339 -6.11336994
		 -40.63360977 125.27645111 -10.67895031 -43.61301041 128.48710632 -11.52388 -46.17927933 130.94146729 -9.076169968
		 -46.12825012 133.49926758 -5.32045984 -44.57236099 132.31964111 -1.60878003 -42.10237122 129.52003479 0.35730001
		 -39.081558228 126.76441956 -1.63726997 -37.97581863 125.43540955 -6.14303017 -39.28459167 126.28749847 -11.024080276
		 -42.068721771 129.74739075 -11.48001003 -45.19866943 132.28874207 -9.59171009 -38.93043137 140.57371521 -5.82005978
		 -37.71081161 139.57310486 -0.73043001 -34.37392044 136.29086304 2.011980057 -30.73295021 132.44694519 0.88546997
		 -30.064390182 131.071960449 -4.61545992 -31.41509056 131.46653748 -10.17308044 -34.53316116 134.79722595 -13.1637001
		 -37.39656067 138.71105957 -10.88306046 -31.74142838 148.54685974 -5.75843525 -30.72347641 147.0098876953 -0.458565
		 -20.46129417 143.60733032 4.87720776 -24.41065788 136.023406982 -4.16068983 -23.89870453 136.47817993 -8.86766624
		 -25.23883057 139.4230957 -13.23322487 -25.31480408 147.69430542 -12.9346447 -10.12888432 143.28237915 9.10237312
		 0.00165 142.75178528 9.55140972 -9.70914459 138.23857117 8.028053284 -24.69530869 137.11056519 -0.31253612
		 -15.3164959 146.60041809 -17.62299156 -0.0027300001 132.81318665 8.12450981 -8.34186459 132.43960571 6.062785149
		 -17.55258179 136.26052856 -3.91280365 -18.56742477 136.58682251 -9.57579041 -8.98813438 135.023101807 6.77331829
		 -0.0047800001 136.27116394 7.41800022 -14.61929989 132.35429382 0.83696997 -15.66825008 131.99957275 -3.36608005
		 -14.93808556 131.13223267 -8.71817493 -0.00055209885 137.66879272 -16.19634056 0.0035699999 128.47148132 -14.47152996
		 -7.44805527 147.036956787 -18.43281174 -7.85335541 138.2487793 -17.91265106 -6.46361017 128.6546936 -15.8016901
		 0.0052028615 122.7929306 -15.38048649 -5.99855089 123.72415161 -15.25840473 -14.076669693 126.12388611 -8.68435001
		 -14.92876816 126.74738312 -3.38814402 -12.91166878 126.97045898 1.84489036 -7.55839396 127.048057556 6.33553553
		 -0.32959932 127.12171936 8.25674057 -4.25438976 86.35311127 -9.88696957 -9.04885006 86.55207062 -15.77632999
		 -16.01761055 87.61663818 -17.15476036 -21.1800499 89.24565125 -11.81597042 -21.74379921 90.062507629 -3.86883998
		 -16.6850605 89.41855621 2.48544002 -9.10120964 87.50813293 3.036849976 -3.75076008 85.72551727 -1.98117006
		 -4.83002996 78.59568024 -9.91477013 -9.23353004 78.78166199 -16.59629059 -16.90078926 79.54312134 -17.43963051
		 -21.89150047 80.48065186 -11.32973957 -21.57316017 80.91983032 -3.47739005 -9.49228954 79.61950684 2.90911007
		 -4.091370106 78.64185333 -2.05727005 -5.68121004 70.53827667 -9.47296047 -10.23927975 70.7678299 -15.20349979
		 -17.097320557 71.17198181 -15.50224972 -21.49811935 71.75720978 -9.52484989 -20.64611053 72.30883026 -2.35528994
		 -15.78884983 72.33107758 2.28098011 -9.26054001 71.61979675 2.96951008 -4.46518993 70.56311035 -1.90804005
		 -7.54276991 64.018600464 -8.46827984 -11.5903101 64.45703125 -12.38875961 -16.69289017 64.55229187 -12.10692024
		 -19.86149979 63.68447876 -6.17404985 -18.29117966 65.48577118 -0.93563002 -14.48711967 65.66156006 2.29928994
		 -9.51257992 64.82393646 3.19193006 -5.6365099 62.36421967 -1.38212001 -8.18546963 58.8601799 -8.65542984
		 -12.61816978 59.48273087 -9.10918045 -16.55765915 59.57138062 -10.087770462 -20.13797951 58.10092163 -7.18964005
		 -18.7614994 55.098659515 -2.3605001 -14.068189621 53.35425186 0.21275 -8.62106991 53.88582993 0.19965
		 -5.43602991 56.63740921 -3.97761989 -6.15931845 47.32007599 -13.97232533 -11.95696354 47.97034073 -16.81899834
		 -18.229599 47.56752777 -15.44745827 -21.04463768 45.98066711 -10.24455357;
	setAttr ".vt[332:497]" -19.52225113 44.61130142 -5.71257067 -14.063670158 43.80706406 -2.93493581
		 -8.96248627 44.30128098 -3.58041191 -4.99021578 45.91622162 -8.18664074 -6.55874014 39.86606216 -15.81671429
		 -12.19689083 40.46792603 -18.86461639 -18.04006958 40.31070328 -17.56242752 -21.17938423 39.14493179 -11.70666027
		 -19.79120064 38.29847717 -7.21460629 -14.55203533 37.88433456 -4.70436668 -9.061436653 38.0084533691 -5.6267848
		 -5.52942467 38.86343384 -9.95586014 -7.38696241 32.50224686 -17.18490791 -12.86490917 32.83097839 -20.00081634521
		 -18.7206459 32.74540329 -18.16666031 -21.049198151 32.24515533 -13.013906479 -19.11869812 31.80862427 -7.94368744
		 -14.14777279 31.83733749 -6.028573036 -9.208992 31.93209457 -7.28003597 -6.060157776 32.22706223 -11.49905682
		 -3.31703997 90.30451965 -10.25123978 -8.41827774 91.93070221 -15.9848299 -15.33156013 93.35224152 -17.1620903
		 -21.0032463074 95.23700714 -12.081648827 -21.037389755 97.76953888 -4.23367977 -15.5591898 96.82202148 1.88495004
		 -8.40589046 93.72731018 2.53108907 -6.63491011 101.78549194 3.34186983 0.00046000001 100.48885345 3.19990993
		 -5.85258484 156.60522461 6.21073484 0.00021 147.27859497 9.48826981 -9.25774002 148.45727539 9.3674593
		 -18.21625137 150.65470886 5.81474113 -25.17724037 154.57600403 0.33486 -25.6717205 156.15382385 -5.073400021
		 -20.6485405 155.78134155 -12.11356544 -12.40279007 154.75230408 -15.97745991 -6.29596996 154.33041382 -17.47385979
		 -0.0032200001 154.065734863 -17.2697506 -0.00018 96.30874634 -11.73694038 -1.59399128 95.53875732 -13.6668644
		 -7.39308167 96.074043274 -18.52544403 -14.61510277 96.87828064 -18.34431648 -20.22867203 100.12051392 -12.41574955
		 -19.67966461 101.7169342 -4.78257465 -14.5297451 100.62413025 0.91691995 -7.18342209 97.70602417 1.74614239
		 -0.094858907 106.34774017 5.38134861 -7.15026855 107.039710999 4.58726835 -13.27256393 108.31958771 1.41247833
		 -17.23192978 109.36883545 -4.07799387 -17.37470818 109.62675476 -11.42184639 -13.11897755 108.24477386 -16.98173332
		 -13.76524734 104.06401825 0.86057109 -18.48586082 105.42308044 -4.62903023 -19.28976631 105.01309967 -12.029666901
		 -14.71068382 103.2424469 -17.84739494 -0.00017 102.61837006 -16.80584908 -0.73021007 102.06729126 -18.48208237
		 -6.2729826 101.50016785 -20.15675354 -13.84898949 121.65794373 -9.052064896 -14.75283241 122.060653687 -3.47438455
		 -16.11070633 137.62841797 -15.66117668 -11.6558094 129.71057129 -13.4470396 -10.85797501 124.9794693 -13.011791229
		 -10.72038269 120.67780304 -13.25777435 -0.31814262 121.66705322 7.99015951 -7.20511818 121.82148743 6.13875008
		 -12.41127205 122.0070953369 1.90723586 -7.82247019 163.3092804 -1.12153995 -8.76403999 163.81700134 -3.22515988
		 -5.55412006 164.11732483 -10.93439007 -9.10659027 163.77775574 -5.24704981 0.0011 165.91618347 1.50886464
		 -3.41373491 166.18331909 0.4459987 -5.76111984 166.42384338 -1.33140004 -6.77128983 166.37799072 -2.93381
		 -7.12584019 166.22900391 -4.7627902 -6.41819477 166.24987793 -7.60879469 0.00062000001 166.44851685 -11.21154976
		 -2.43581009 166.40342712 -10.92527008 -4.5204401 166.35066223 -10.020680428 -0.00105 161.56340027 -13.61707973
		 -3.87810993 161.63835144 -13.41442966 -7.45363998 161.77920532 -12.41631985 -11.39645958 161.79550171 -9.36867523
		 -13.55615997 161.75961304 -5.18704987 -13.8011198 161.57519531 -2.18031001 -11.4686451 159.41958618 1.56639493
		 0.0011699999 158.3513031 -15.59199047 -5.10936022 158.52026367 -15.44151974 -9.95164967 158.86685181 -14.25570965
		 -15.96016979 159.18106079 -10.53808498 -19.71096039 159.63716125 -4.97587013 -19.5808506 158.59573364 -0.59249997
		 -16.057695389 155.84457397 4.50617027 -7.7177 152.81808472 8.59376526 0.00145 151.68458557 9.13416958
		 -17.1338501 61.31510162 0.89629 -18.12634087 58.75260162 -0.71581 -14.30405998 60.60264969 3.18934989
		 -10.69752979 60.60908127 3.67418003 -9.22027969 57.61222076 2.19650006 -14.14011002 56.66754913 2.023829937
		 -6.76152992 54.25645065 -11.66882038 -12.18476009 54.78903198 -13.56784344 -17.60538864 54.79340363 -13.34577465
		 -20.81703377 52.61680984 -8.73752022 -19.011007309 50.58681488 -4.093298912 -14.27453899 49.54082108 -1.041109681
		 -8.64260006 49.86265182 -1.50917995 -4.90134001 51.89883041 -6.045839787 -16.95734024 80.57331085 2.78976011
		 -2.6278801 92.84860229 -1.59693003 0.00012 95.82624817 0.55448997 0.00104 92.76460266 -2.86229992
		 -68.13803101 105.76096344 -11.44353008 -67.79498291 105.031028748 -10.99448013 -67.86766052 104.66133118 -10.10260963
		 -68.40249634 104.88732147 -9.26552963 -68.93312836 105.46012878 -9.020580292 -69.22001648 106.21736145 -9.36820984
		 -69.10954285 106.75328064 -10.28973961 -68.67897797 106.50257874 -11.17387962 -69.18476105 104.80046082 -11.46881008
		 -68.87290955 104.14253998 -11.10533047 -68.85328674 103.8288269 -10.35482025 -69.1282196 103.99086761 -9.56354046
		 -69.61237335 104.6102066 -9.19556046 -69.99269867 105.35977173 -9.59739017 -70.021537781 105.74639893 -10.44861031
		 -69.65770721 105.4770813 -11.23258972 -70.17819214 103.89186096 -11.52906036 -69.89557648 103.3024292 -11.18344021
		 -69.85678864 103.057250977 -10.51972961 -69.9936676 103.17080688 -9.77130032 -70.42073059 103.76683807 -9.33907986
		 -70.86396027 104.53166962 -9.70349979 -70.98143005 104.9030304 -10.57853985 -70.61923218 104.55799103 -11.34358978
		 -70.64922333 103.43862152 -11.57303047 -70.35636139 102.85720825 -11.23458004 -70.24199677 102.5670929 -10.58874989
		 -70.39276123 102.72724152 -9.84475994 -70.82418823 103.34490204 -9.43498039 -71.3021698 104.10572052 -9.74652004
		 -71.42941284 104.44882965 -10.62948036 -71.088310242 104.10211182 -11.39984989 -71.067359924 102.97344971 -11.61355972
		 -70.74742126 102.37174988 -11.28011036 -70.5945816 102.050689697 -10.61485004 -70.76422119 102.24414063 -9.84939957
		 -71.21469879 102.89154816 -9.48721981 -71.67983246 103.62731171 -9.80338955 -71.82434082 103.96495056 -10.64776993
		 -71.49645996 103.62283325 -11.39404011 -71.8939209 102.064468384 -11.59632969 -71.56092072 101.45729065 -11.29312038
		 -71.4083786 101.14640045 -10.64066029 -71.60462952 101.38745117 -9.93630028 -72.013633728 101.99701691 -9.56095028
		 -72.44728851 102.69358826 -9.87633991 -72.6267395 103.04283905 -10.6703701 -72.32644653 102.7188797 -11.41287041
		 -72.6531601 101.25543213 -11.53967953 -72.33538055 100.68403625 -11.27680016;
	setAttr ".vt[498:663]" -72.21263123 100.42460632 -10.67576981 -72.39208221 100.66277313 -10.063779831
		 -72.74677277 101.21246338 -9.68021011 -73.19848633 101.88516235 -9.90927029 -73.38594055 102.21260071 -10.69855976
		 -73.082740784 101.88459015 -11.41578007 -73.051269531 100.81172943 -11.51618958 -72.73220062 100.26553345 -11.28687
		 -72.56732178 99.97789001 -10.70625973 -72.73439026 100.19988251 -10.066379547 -73.1248703 100.77493286 -9.72045994
		 -73.58415222 101.43041992 -9.96179962 -73.77133179 101.72615051 -10.72955036 -73.46549988 101.3980484 -11.39641953
		 -73.39347076 100.40045166 -11.51144981 -73.090766907 99.8830719 -11.30815983 -72.92031097 99.57221222 -10.74709034
		 -73.069252014 99.74693298 -10.061739922 -73.49049377 100.34236145 -9.72929955 -73.91854858 100.98065186 -10.034879684
		 -74.087097168 101.25692749 -10.76519012 -73.77394104 100.93946838 -11.3674202 -73.88075256 99.8620224 -11.48571968
		 -73.65052032 99.42072296 -11.28063965 -73.53749084 99.11921692 -10.79736996 -73.68058777 99.20982361 -10.15421009
		 -74.068901062 99.76239014 -9.83570957 -74.41295624 100.36920166 -10.14540958 -74.49075317 100.61209869 -10.81503963
		 -74.19937134 100.33740234 -11.34484959 -74.60655975 99.27893066 -11.18855953 -74.5317688 99.066009521 -11.043129921
		 -74.5526123 98.94863129 -10.80214024 -74.64530182 98.94046021 -10.51229 -74.83811188 99.19898224 -10.3342104
		 -75.0012130737 99.5717926 -10.47155952 -74.98944092 99.71543884 -10.8848896 -74.77780151 99.56317139 -11.18914032
		 -69.3234024 105.63311005 -8.11878014 -68.97570038 105.07775116 -7.80264997 -68.6836319 104.61937714 -6.83225012
		 -69.098899841 104.90345764 -5.75222015 -69.65570831 105.53076172 -5.4854598 -70.089500427 106.31218719 -5.84336996
		 -70.13777161 106.82434845 -6.98984003 -69.76072693 106.32460022 -7.98047018 -70.43225861 104.58400726 -8.11884975
		 -70.041023254 103.87460327 -7.74547005 -69.87478638 103.49613953 -6.89937019 -70.11540985 103.73123932 -5.94856977
		 -70.66226959 104.47219849 -5.55572987 -71.17115021 105.31593323 -5.97359991 -71.2939682 105.71434784 -6.99796009
		 -70.95072174 105.3534317 -7.92406988 -71.60179901 103.47815704 -8.11279011 -71.19893646 102.74452972 -7.76056004
		 -71.057830811 102.41060638 -6.95705986 -71.25395203 102.66425323 -6.095980167 -71.74134827 103.40750885 -5.65573978
		 -72.29901886 104.29476929 -5.99951982 -72.52639008 104.74173737 -7.02823019 -72.12631226 104.28607941 -7.93058014
		 -72.12879181 102.96408844 -8.10945988 -71.72189331 102.23094177 -7.76862001 -71.55845642 101.89578247 -6.97462988
		 -71.74503326 102.16333771 -6.13380003 -72.22453308 102.91362762 -5.71324015 -72.78472137 103.78134918 -6.046030045
		 -73.028411865 104.20836639 -7.049890041 -72.64959717 103.77140808 -7.93922997 -72.60977173 102.44441986 -8.11130047
		 -72.18202209 101.68856049 -7.79996014 -71.95719147 101.29634094 -6.98767996 -72.18022156 101.59832001 -6.092559814
		 -72.69625092 102.38906097 -5.6949501 -73.22463989 103.22657013 -6.095860004 -73.13227081 103.24890137 -7.94773006
		 -73.6317215 101.37056732 -8.085029602 -73.22013855 100.62619019 -7.80506992 -73.012413025 100.23265839 -7.023550034
		 -73.23856354 100.54068756 -6.15011978 -73.7229538 101.30503082 -5.73437023 -74.21601105 102.116539 -6.1518302
		 -74.45977783 102.54223633 -7.078919888 -74.14420319 102.1629715 -7.94702005 -74.56494141 100.44486237 -8.091930389
		 -74.18625641 99.75737762 -7.78984022 -74.042098999 99.44760895 -7.063630104 -74.22924042 99.71575165 -6.29148006
		 -74.65570068 100.39785004 -5.85140991 -75.16607666 101.21159363 -6.1568799 -75.39820862 101.61878967 -7.096380234
		 -75.064468384 101.22299957 -7.94812012 -74.97572327 100.033691406 -8.09183979 -74.58753967 99.3508606 -7.81087017
		 -74.41378784 99.026031494 -7.080729961 -74.60858917 99.29089355 -6.2859602 -75.063430786 99.98542023 -5.89981985
		 -75.57991791 100.77601624 -6.19380999 -75.80786133 101.16999054 -7.11035013 -75.47914124 100.79318237 -7.95488977
		 -75.34020996 99.63691711 -8.10173988 -74.95684052 98.9666214 -7.82652998 -75.448349 99.57109833 -5.91470003
		 -75.93312073 100.32756042 -6.26245022 -75.97750092 99.0024490356 -8.10299015 -75.64411926 98.37747955 -7.82790995
		 -75.48854065 98.01309967 -7.14807987 -75.69300079 98.23355103 -6.35839987 -76.13510132 98.90216064 -6.0052900314
		 -76.53321075 99.61566162 -6.3719101 -76.69275665 99.9539032 -7.17212009 -76.39060211 99.63999176 -7.88665009
		 -77.016616821 98.20580292 -7.65651989 -76.90361786 97.91970062 -7.55006981 -76.90119171 97.7013092 -7.25272989
		 -77.0048065186 97.76029968 -6.87673998 -77.18923187 98.092201233 -6.71201992 -77.39527893 98.46795654 -6.81343985
		 -77.41426849 98.63413239 -7.23462009 -77.22055054 98.50557709 -7.57141018 -73.48432159 103.65686035 -7.064400196
		 -76.15695953 100.71279144 -7.13258982 -75.82106018 100.35398865 -7.92262983 -74.98506165 98.8898468 -6.29778004
		 -74.7851181 98.63948822 -7.097879887 -70.18321991 105.36495209 -1.81035995 -69.53523254 104.88591766 -2.18667006
		 -69.087333679 104.68544769 -3.18912005 -69.37151337 105.029426575 -4.15672016 -69.88890076 105.53082275 -4.43654013
		 -70.46852875 106.14295959 -4.26254988 -70.9004364 106.62130737 -3.26472998 -70.74617767 106.11556244 -2.12779999
		 -71.23722839 104.37142944 -1.92203999 -70.59352112 103.790802 -2.3162601 -70.3341217 103.61923218 -3.17498994
		 -70.54524994 103.8741684 -3.97960997 -71.091239929 104.41680145 -4.29273987 -71.74017334 105.024406433 -4.097469807
		 -72.15966797 105.39160919 -3.24101996 -71.90229034 105.058479309 -2.27150989 -72.41575623 103.27072906 -2.02779007
		 -71.81095123 102.69709778 -2.39281011 -71.61660767 102.53212738 -3.16940999 -71.83624268 102.75817108 -3.87616992
		 -72.3417511 103.24859619 -4.23965979 -72.96910858 103.85269928 -4.054150105 -73.39839172 104.26039124 -3.24885011
		 -73.13361359 103.97779083 -2.26493001 -72.95281982 102.73477936 -2.023210049 -72.30963135 102.12062836 -2.35659003
		 -72.088256836 101.91845703 -3.17572999 -72.36348724 102.1847229 -3.90815997 -72.89553833 102.70187378 -4.24344015
		 -73.51261139 103.3008194 -4.052360058 -73.94023132 103.70732117 -3.26876998 -73.67378235 103.43289185 -2.2973001
		 -73.40431213 102.23970032 -2.024149895 -72.75982666 101.62110138 -2.3545301 -72.51985168 101.39835358 -3.1802001
		 -72.81569672 101.69631195 -3.90740991 -73.34767151 102.21855164 -4.25304985 -73.96427155 102.81542969 -4.057960033
		 -74.37371826 103.20182037 -3.27910995 -74.098503113 102.91870117 -2.34697008;
	setAttr ".vt[664:829]" -74.35614014 101.22203064 -2.023979902 -73.73645782 100.62541199 -2.3798399
		 -73.50601196 100.41835785 -3.18378997 -73.78845215 100.71777344 -3.88242006 -74.2947998 101.22177124 -4.23042011
		 -74.90248871 101.8028717 -4.042660236 -75.31838989 102.18238068 -3.27119994 -75.041893005 101.89543915 -2.34745002
		 -75.33289337 100.2124176 -2.07314992 -74.75550079 99.67134857 -2.4444201 -74.55854034 99.50057983 -3.18653989
		 -74.79544067 99.7513504 -3.8463099 -75.26895142 100.2170105 -4.19043016 -75.8538208 100.766922 -4.011020184
		 -76.292099 101.15168762 -3.26999998 -76.0036392212 100.85723114 -2.37558007 -75.77823639 99.73654175 -2.07487011
		 -75.1775589 99.18266296 -2.41850996 -74.98493195 99.024803162 -3.18585992 -75.23899078 99.29110718 -3.84057999
		 -75.70928955 99.74858856 -4.18227005 -76.28981018 100.28243256 -4.0023198128 -76.70926666 100.63459015 -3.26938009
		 -76.43110657 100.35414124 -2.39778996 -76.12873077 99.35301971 -2.051599979 -75.52693176 98.79714203 -2.41167998
		 -75.32453918 98.65019989 -3.18758988 -75.57324982 98.93981171 -3.83107996 -76.033287048 99.39425659 -4.17206001
		 -76.61115265 99.91763306 -3.99963999 -77.02117157 100.24060059 -3.26918006 -76.76679993 99.9690094 -2.40065002
		 -76.72499847 98.75138092 -2.087349892 -76.16464996 98.18343353 -2.44797993 -75.96042633 98.067779541 -3.22010994
		 -76.16481018 98.40219116 -3.82060003 -76.5634079 98.85453796 -4.12323999 -77.085952759 99.35591125 -3.96768999
		 -77.45075989 99.63259125 -3.27481008 -77.27091217 99.37407684 -2.45274997 -77.75993347 97.97646332 -2.6694901
		 -77.53128052 97.61997986 -2.86763 -77.42276001 97.53424835 -3.25628996 -77.4285965 97.78314209 -3.55929995
		 -77.56450653 98.081809998 -3.70825005 -77.83371735 98.40222168 -3.6939199 -78.06690979 98.5640564 -3.26393008
		 -78.037139893 98.39187622 -2.7581799 -69.41716003 105.63329315 1.62825 -68.93972015 104.95301056 1.070309997
		 -68.87248993 104.68578339 0.088 -69.3286438 105.034729004 -0.66360003 -69.77726746 105.4695816 -0.92338997
		 -70.13960266 106.11868286 -0.71482003 -70.22572327 106.66931152 0.15203001 -69.97570038 106.41304779 1.20261002
		 -70.21115112 104.90455627 1.64734995 -69.75 104.25617981 1.15272999 -69.67205048 104.044998169 0.31088001
		 -69.89985657 104.25650787 -0.42043999 -70.33750153 104.79476166 -0.70477998 -70.81755829 105.42843628 -0.49788001
		 -71.036201477 105.82430267 0.31292 -70.784729 105.60334778 1.25395 -70.90673065 104.28549194 1.65371001
		 -70.49414825 103.69593048 1.17470002 -70.4286499 103.52532959 0.43134001 -70.55625916 103.65460205 -0.27182001
		 -70.95870972 104.16484833 -0.61646998 -71.44464111 104.80370331 -0.38874 -71.70271301 105.19657135 0.39862999
		 -71.46114349 104.97145081 1.30546999 -71.27539063 103.93518066 1.68659997 -70.83776093 103.32962799 1.23602998
		 -70.72070313 103.10993958 0.48745 -70.90112305 103.29319 -0.21253 -71.31175995 103.8110199 -0.56503999
		 -71.79654694 104.44982147 -0.32255 -72.089103699 104.85817719 0.44983 -71.84931183 104.63082886 1.36286998
		 -71.67105103 103.51038361 1.71562004 -71.21283722 102.89369202 1.28576005 -71.061958313 102.64051056 0.53297001
		 -71.28278351 102.86466217 -0.1583 -71.70030212 103.39637756 -0.49090001 -72.18360138 104.028289795 -0.26324001
		 -72.50942993 104.44519806 0.493 -72.26435852 104.21070099 1.41215003 -72.48261261 102.60983276 1.71818995
		 -72.025131226 102.002456665 1.34282994 -71.87892151 101.75424957 0.61921 -72.10655212 101.99720764 -0.02788
		 -72.50995636 102.51701355 -0.33985999 -72.99607849 103.13800049 -0.17750999 -73.27388 103.50273132 0.56485999
		 -73.019882202 103.25051117 1.39287996 -73.38635254 101.60964966 1.71974003 -72.93512726 101.027832031 1.38046002
		 -72.81548309 100.81517029 0.70392001 -73.026580811 101.045921326 0.10594 -73.40061951 101.52622223 -0.23027
		 -73.87985992 102.12390137 -0.06129 -74.22244263 102.52555084 0.64168 -73.96903992 102.27626801 1.50339997
		 -73.76345825 101.16236115 1.73839998 -73.27523041 100.56130981 1.43728995 -73.12586975 100.33155823 0.72430998
		 -73.36875153 100.58798981 0.1004 -73.77033997 101.088890076 -0.19153 -74.23957062 101.66156006 -0.00141
		 -74.58509064 102.040657043 0.67341 -74.33998871 101.80097198 1.49532998 -74.072250366 100.78220367 1.76852
		 -73.58870697 100.18029785 1.47367001 -73.42902374 99.94136047 0.74883002 -73.6727066 100.21488953 0.11881
		 -74.075042725 100.72200775 -0.14977001 -74.5304718 101.27674866 0.048810001 -74.84744263 101.6230011 0.70130002
		 -74.60050964 101.38507843 1.46664 -74.63539124 100.20172119 1.78132999 -74.2201767 99.63114166 1.48442996
		 -74.081237793 99.40531158 0.81496 -74.2729187 99.65171814 0.21204001 -74.63063812 100.14450073 -0.05102
		 -75.031028748 100.68415833 0.13792001 -75.26776886 100.98941803 0.76120001 -75.070999146 100.77275085 1.46788001
		 -75.69133759 99.42085266 1.39335001 -75.51952362 99.21092987 1.20386004 -75.47566986 99.13504791 0.92881
		 -75.5197525 99.2052536 0.67267001 -75.64724731 99.44445038 0.52258998 -75.83158112 99.75547791 0.53490001
		 -75.98413086 99.94387054 0.88727999 -75.89974976 99.78427124 1.32246006 -62.4149704 109.0091094971 3.71471
		 -62.79666901 108.57511139 2.61030006 -63.78567123 108.33666229 2.038589954 -65.014900208 108.26059723 2.042109966
		 -65.17623138 109.89086914 3.9402101 -64.29019928 109.8860321 4.55756998 -63.12712097 109.61408997 4.59990978
		 -63.30981827 108.054870605 4.27686977 -63.45080185 107.56111145 3.29355001 -64.27645111 107.48686218 2.64655995
		 -65.3123703 107.71954346 2.54310989 -66.049888611 108.38394928 3.16641998 -65.92208099 108.97496796 4.19032001
		 -65.046112061 109.10140991 5.0035400391 -63.91611099 108.68495178 5.06306982 -64.07019043 107.28231049 4.76364994
		 -64.19374084 106.89933014 3.86755991 -64.83799744 106.88095093 3.22303009 -65.67378998 107.2062912 3.10240006
		 -66.36598969 107.76834106 3.55386996 -66.40447235 108.31539154 4.51635981 -65.63571167 108.39540863 5.40552998
		 -64.57659149 107.89562988 5.52952003 -64.50395203 106.77433777 5.082320213 -64.65881348 106.47258759 4.22637987
		 -65.23767853 106.48513031 3.59170008 -66.0051498413 106.79682159 3.40263009 -66.62019348 107.3434906 3.86876988
		 -66.72982025 107.86653137 4.77499008 -66.0065307617 107.89221191 5.64687014;
	setAttr ".vt[830:995]" -65.016456604 107.37670898 5.75452995 -64.92163849 106.23018646 5.39369011
		 -65.050300598 105.90444946 4.53059006 -65.62490082 105.90769196 3.85165 -66.4240799 106.2508316 3.62438989
		 -67.033210754 106.83943176 4.11588001 -67.093780518 107.34274292 5.056940079 -66.38658142 107.36125183 5.92995977
		 -65.41837311 106.8405304 6.047440052 -65.53153229 105.44139099 5.85179996 -65.68253326 105.082626343 5.017310143
		 -66.25343323 105.055801392 4.33181 -67.072761536 105.39382172 4.03278017 -67.64855957 106.047210693 4.54200983
		 -67.6267395 106.57118225 5.48512983 -66.91738892 106.60762787 6.34441996 -65.97499847 106.078651428 6.50105
		 -67.048469543 104.29309845 6.55880022 -67.19982147 103.94612122 6.12189007 -67.57299042 103.90631866 5.75688982
		 -68.0042114258 104.14665985 5.59747982 -68.30877686 104.58374023 5.82149982 -68.20011902 105.041137695 6.30956984
		 -67.73365021 105.16539001 6.81212997 -67.20265961 104.79402161 6.87894011 -66.2515564 104.73686218 6.2814002
		 -66.38529968 104.26998901 5.58188009 -66.94374084 104.17913055 4.93732977 -67.70462036 104.56108093 4.69927979
		 -68.15274811 105.24195099 5.13368988 -68.017341614 105.77909088 5.91105986 -67.36183167 105.85767365 6.60606003
		 -66.59806061 105.3746109 6.77203989 -75.22248077 99.74002075 1.68880999 -74.91861725 99.26087952 1.41700995
		 -74.82185364 99.070320129 0.88442999 -74.94921112 99.26927948 0.39265999 -75.20635986 99.68962097 0.14206
		 -75.50566101 100.18379974 0.27179 -75.66178894 100.45503998 0.82440001 -75.52728271 100.2588501 1.43399
		 -77.31298065 98.27243805 -2.31518006 -76.90093994 97.6775589 -2.56803012 -76.72377014 97.59803009 -3.26829004
		 -76.83299255 97.95173645 -3.78395009 -77.1004715 98.40474701 -3.98177004 -77.48049164 98.85131073 -3.8466301
		 -77.77600861 99.082710266 -3.27242994 -77.69486237 98.85031128 -2.58904004 -76.59471893 98.51318359 -7.96471024
		 -76.36891174 97.98374176 -7.7708602 -76.28633881 97.61087036 -7.22285986 -76.46336365 97.76338959 -6.53165007
		 -76.79785919 98.37798309 -6.26610994 -77.064979553 98.99092865 -6.55953979 -77.10883331 99.24507141 -7.2017498
		 -76.89031219 99.016860962 -7.76801014 -74.28530884 99.51251221 -11.37946033 -74.14093781 99.16677094 -11.18992996
		 -74.11057281 98.945961 -10.81163025 -74.24317169 98.97863007 -10.32409 -74.53543091 99.41342926 -10.047860146
		 -74.79537201 99.94535828 -10.2778101 -74.79460907 100.14591217 -10.85888004 -74.53124237 99.91230011 -11.29454994
		 -68.19319153 106.080749512 -8.5306797 -68.59953308 106.11522675 -8.56379032 -68.64826965 106.93253326 -8.55622959
		 -69.19670105 106.93683624 -5.016329765 -69.093849182 106.20905304 -4.95905018 -68.60379028 106.064659119 -4.97743988
		 -68.96395111 105.89367676 -1.52054 -69.56887054 105.9021225 -1.42202997 -69.67279816 106.84136963 -1.54024005
		 -67.83972168 105.79141998 -3.18120003 -67.46208954 105.78618622 -6.70063019 -67.064590454 105.65293884 -9.47148037
		 -68.13288116 105.6254425 -0.39712 -67.98718262 105.76976013 0.93352002 -66.57525635 105.96437073 -10.6073103
		 -66.87081146 106.77098846 -11.47492981 -67.56851196 107.80052948 -11.19466019 -68.13092041 108.32704163 -9.81873989
		 -68.99967957 108.65496826 -6.95784998 -69.44882965 108.57234192 -3.36801004 -69.0021514893 108.2508316 -0.34819001
		 -68.84185028 107.60858917 1.19876003 -68.45648956 106.52596283 1.59307003 -67.079071045 106.59966278 -1.33051002
		 -66.68370056 106.50564575 -4.55907822 -66.15213776 106.59719086 -8.041589737 -65.76702118 107.025558472 -5.95200777
		 -65.62492371 107.38047028 -2.40553284 -64.45200348 107.95478821 -5.25363445 -64.70768738 107.22647095 -9.18453979
		 -66.88226318 106.66268158 0.69933999 -67.48126984 107.31169128 1.56808996 -67.067070007 109.22277069 1.56711996
		 -68.48233795 109.30925751 -1.78535998 -68.17008209 109.32202911 -5.088039875 -67.5996933 109.11170197 -8.36692047
		 -66.59545898 111.070007324 -6.64099979 -66.61579895 111.10704041 -5.0017199516 -66.14161682 110.73641968 -8.091239929
		 -66.87306976 111.2607193 -3.36303997 -66.93361664 111.012130737 -1.83942997 -67.069892883 110.53591156 -0.24013001
		 -66.0036315918 110.55686188 -9.59261036 -65.60559845 109.67565918 -11.062339783 -64.75540161 108.13475037 -11.17010975
		 -65.81497192 107.45400238 0.62496001 -65.78842163 111.76818085 1.019729972 -64.93623352 113.32331085 -6.37715006
		 -65.24033356 113.076530457 -4.95421982 -64.7837677 112.6129837 -7.68884993 -64.67411041 114.73828125 -3.06024003
		 -65.64924622 112.99060059 -1.68164003 -65.54696655 112.88516998 -0.21247999 -63.7723999 113.72570801 -8.68758965
		 -62.82598114 112.22686768 -10.82406044 -63.41270065 115.11620331 -5.93610001 -63.55379105 114.61370087 0.55383998
		 -64.94226074 111.97763062 1.72972 -64.86070251 108.12725067 0.90332943 -64.10951233 108.41175079 -1.51103878
		 -62.44746399 109.43605804 -5.4139142 -61.15597916 110.97605896 -10.2288599 -60.20610809 111.45491028 -4.97530985
		 -58.48579407 112.39066315 -1.38303018 -59.78347015 113.53398132 1.38890004 -62.1853714 113.36353302 2.54343009
		 -64.26096344 111.59358978 2.87377 -63.83422089 111.11296844 3.85523009 -63.55561066 110.62155914 4.30145979
		 -62.40964127 110.63342285 4.088759899 -61.43307114 110.12232971 3.0036599636 -61.83118057 109.5116272 1.49272001
		 -63.15008163 108.81555939 0.74039924 -62.45614624 109.33708191 -1.099341393 -62.31138611 109.54891968 -3.20019984
		 -60.59540939 110.64852905 -2.97164989 -60.25904083 110.60639954 -0.48219001 -60.36783981 111.64279175 2.15885997
		 -61.95204163 111.9412384 3.57751012 -62.7868309 108.74015045 -8.22286987 2.96089005 164.15162659 -11.87553024
		 8.05347538 163.85447693 -8.34827995 4.30151987 161.94342041 1.089664936 61.56874847 117.14456177 -5.37087011
		 61.59019089 117.36992645 -2.28173995 59.70223999 115.89855957 0.20821001 57.5352211 114.06967926 -1.98376
		 57.71393967 113.3117218 -5.27810001 58.24388123 112.93643951 -8.74223995 59.80849457 114.68731689 -9.33198738
		 61.11117172 116.1006012 -8.13389015 59.62845993 119.51522827 -4.98092985 59.0022583008 119.26381683 -1.85345995
		 56.92126083 117.4196167 -0.47066 55.037521362 115.47978973 -2.15294003 54.59436035 114.55354309 -5.19246006
		 55.61194992 115.23268127 -7.98936987 57.3291893 116.647789 -9.27608967 58.93920898 118.3964386 -7.85828018
		 56.68544006 122.28417969 -4.84589005 56.012710571 121.91578674 -1.34944999;
	setAttr ".vt[996:1161]" 53.66102982 119.59744263 0.097609997 51.62102127 117.39620972 -1.98872995
		 51.07516861 116.4225235 -5.28668022 52.13816071 117.081390381 -8.44456005 54.25949097 119.039901733 -9.74176979
		 56.12649155 121.20082092 -8.15606022 53.27455902 125.93609619 -4.94944 52.46767044 125.43144989 -1.011849999
		 49.73942184 122.63477325 0.58837003 47.30619812 119.78050995 -1.51252997 46.6221199 118.47802734 -5.49504995
		 47.89384079 119.45385742 -9.40923023 50.50683975 122.063011169 -10.91825008 52.47586823 124.57144165 -8.62714005
		 49.91804886 129.96307373 -5.14334011 48.71144867 129.12698364 -1.066290021 45.70325851 126.093521118 0.4725
		 42.93803024 122.89903259 -1.36521006 42.097618103 121.51864624 -5.81973982 43.39194107 122.65661621 -10.3375597
		 46.33832932 125.74841309 -11.49724007 48.56134033 128.30130005 -8.88282013 47.56216049 132.40588379 -5.24405003
		 46.047229767 131.21206665 -1.42075002 43.21950912 128.34823608 0.094810002 40.22967911 125.24851227 -1.45456004
		 39.30302048 124.034660339 -6.11336994 40.63360977 125.27645111 -10.67895031 43.61301041 128.48710632 -11.52388
		 46.17927933 130.94146729 -9.076169968 46.12825012 133.49926758 -5.32045984 44.57236099 132.31964111 -1.60878003
		 42.10237122 129.52003479 0.35730001 39.081558228 126.76441956 -1.63726997 37.97581863 125.43540955 -6.14303017
		 39.28459167 126.28749847 -11.024080276 42.068721771 129.74739075 -11.48001003 45.19866943 132.28874207 -9.59171009
		 38.93043137 140.57371521 -5.82005978 37.71081161 139.57310486 -0.73043001 34.37392044 136.29086304 2.011980057
		 30.73295021 132.44694519 0.88546997 30.064390182 131.071960449 -4.61545992 31.41509056 131.46653748 -10.17308044
		 34.53316116 134.79722595 -13.1637001 37.39656067 138.71105957 -10.88306046 31.74142838 148.54685974 -5.75843525
		 30.72347641 147.0098876953 -0.458565 20.46129417 143.60733032 4.87720776 24.41065788 136.023406982 -4.16068983
		 23.89870453 136.47817993 -8.86766624 25.23883057 139.4230957 -13.23322487 25.31480408 147.69430542 -12.9346447
		 10.12888432 143.28237915 9.10237312 9.70914459 138.23857117 8.028053284 24.69530869 137.11056519 -0.31253612
		 15.3164959 146.60041809 -17.62299156 8.34186459 132.43960571 6.062785149 17.55258179 136.26052856 -3.91280365
		 18.56742477 136.58682251 -9.57579041 8.98813438 135.023101807 6.77331829 14.61929989 132.35429382 0.83696997
		 15.66825008 131.99957275 -3.36608005 14.93808556 131.13223267 -8.71817493 7.44805527 147.036956787 -18.43281174
		 7.85335541 138.2487793 -17.91265106 6.46361017 128.6546936 -15.8016901 5.99855089 123.72415161 -15.25840473
		 14.076669693 126.12388611 -8.68435001 14.92876816 126.74738312 -3.38814402 12.91166878 126.97045898 1.84489036
		 7.55839396 127.048057556 6.33553553 4.25438976 86.35311127 -9.88696957 9.04885006 86.55207062 -15.77632999
		 16.01761055 87.61663818 -17.15476036 21.1800499 89.24565125 -11.81597042 21.74379921 90.062507629 -3.86883998
		 16.6850605 89.41855621 2.48544002 9.10120964 87.50813293 3.036849976 3.75076008 85.72551727 -1.98117006
		 4.83002996 78.59568024 -9.91477013 9.23353004 78.78166199 -16.59629059 16.90078926 79.54312134 -17.43963051
		 21.89150047 80.48065186 -11.32973957 21.57316017 80.91983032 -3.47739005 9.49228954 79.61950684 2.90911007
		 4.091370106 78.64185333 -2.05727005 5.68121004 70.53827667 -9.47296047 10.23927975 70.7678299 -15.20349979
		 17.097320557 71.17198181 -15.50224972 21.49811935 71.75720978 -9.52484989 20.64611053 72.30883026 -2.35528994
		 15.78884983 72.33107758 2.28098011 9.26054001 71.61979675 2.96951008 4.46518993 70.56311035 -1.90804005
		 7.54276991 64.018600464 -8.46827984 11.5903101 64.45703125 -12.38875961 16.69289017 64.55229187 -12.10692024
		 19.86149979 63.68447876 -6.17404985 18.29117966 65.48577118 -0.93563002 14.48711967 65.66156006 2.29928994
		 9.51257992 64.82393646 3.19193006 5.6365099 62.36421967 -1.38212001 8.18546963 58.8601799 -8.65542984
		 12.61816978 59.48273087 -9.10918045 16.55765915 59.57138062 -10.087770462 20.13797951 58.10092163 -7.18964005
		 18.7614994 55.098659515 -2.3605001 14.068189621 53.35425186 0.21275 8.62106991 53.88582993 0.19965
		 5.43602991 56.63740921 -3.97761989 6.15931845 47.32007599 -13.97232533 11.95696354 47.97034073 -16.81899834
		 18.229599 47.56752777 -15.44745827 21.04463768 45.98066711 -10.24455357 19.52225113 44.61130142 -5.71257067
		 14.063670158 43.80706406 -2.93493581 8.96248627 44.30128098 -3.58041191 4.99021578 45.91622162 -8.18664074
		 6.55874014 39.86606216 -15.81671429 12.19689083 40.46792603 -18.86461639 18.04006958 40.31070328 -17.56242752
		 21.17938423 39.14493179 -11.70666027 19.79120064 38.29847717 -7.21460629 14.55203533 37.88433456 -4.70436668
		 9.061436653 38.0084533691 -5.6267848 5.52942467 38.86343384 -9.95586014 7.38696241 32.50224686 -17.18490791
		 12.86490917 32.83097839 -20.00081634521 18.7206459 32.74540329 -18.16666031 21.049198151 32.24515533 -13.013906479
		 19.11869812 31.80862427 -7.94368744 14.14777279 31.83733749 -6.028573036 9.208992 31.93209457 -7.28003597
		 6.060157776 32.22706223 -11.49905682 3.31703997 90.30451965 -10.25123978 8.41827774 91.93070221 -15.9848299
		 15.33156013 93.35224152 -17.1620903 21.0032463074 95.23700714 -12.081648827 21.037389755 97.76953888 -4.23367977
		 15.5591898 96.82202148 1.88495004 8.40589046 93.72731018 2.53108907 6.63491011 101.78549194 3.34186983
		 5.85258484 156.60522461 6.21073484 9.25774002 148.45727539 9.3674593 18.21625137 150.65470886 5.81474113
		 25.17724037 154.57600403 0.33486 25.6717205 156.15382385 -5.073400021 20.6485405 155.78134155 -12.11356544
		 12.40279007 154.75230408 -15.97745991 6.29596996 154.33041382 -17.47385979 1.59399128 95.53875732 -13.6668644
		 7.39308167 96.074043274 -18.52544403 14.61510277 96.87828064 -18.34431648 20.22867203 100.12051392 -12.41574955
		 19.67966461 101.7169342 -4.78257465 14.5297451 100.62413025 0.91691995 7.18342209 97.70602417 1.74614239
		 7.15026855 107.039710999 4.58726835 13.27256393 108.31958771 1.41247821 17.23192978 109.36883545 -4.07799387
		 17.37470818 109.62675476 -11.42184639 13.11897659 108.24477386 -16.98173332 13.76524734 104.06401825 0.86057103
		 18.48586082 105.42308044 -4.62903023 19.28976631 105.01309967 -12.029666901;
	setAttr ".vt[1162:1327]" 14.71068382 103.2424469 -17.84739494 0.73021007 102.06729126 -18.48208237
		 6.2729826 101.50016785 -20.15675354 5.65845585 119.41764832 -15.64989471 13.84898949 121.65794373 -9.052064896
		 14.75283241 122.060653687 -3.47438431 16.11070633 137.62841797 -15.66117668 11.6558094 129.71057129 -13.4470396
		 10.85797501 124.9794693 -13.011791229 10.72038269 120.67780304 -13.25777435 7.20511818 121.82148743 6.13875008
		 12.41127205 122.0070953369 1.90723598 7.82247019 163.3092804 -1.12153995 8.76403999 163.81700134 -3.22515988
		 5.55412006 164.11732483 -10.93439007 9.10659027 163.77775574 -5.24704981 3.41373491 166.18331909 0.4459987
		 5.76111984 166.42384338 -1.33140004 6.77128983 166.37799072 -2.93381 7.12584019 166.22900391 -4.7627902
		 6.41819477 166.24987793 -7.60879469 2.43581009 166.40342712 -10.92527008 4.5204401 166.35066223 -10.020680428
		 3.87810993 161.63835144 -13.41442966 7.45363998 161.77920532 -12.41631985 11.39645958 161.79550171 -9.36867523
		 13.55615997 161.75961304 -5.18704987 13.8011198 161.57519531 -2.18031001 11.4686451 159.41958618 1.56639493
		 5.10936022 158.52026367 -15.44151974 9.95164967 158.86685181 -14.25570965 15.96016979 159.18106079 -10.53808498
		 19.71096039 159.63716125 -4.97587013 19.5808506 158.59573364 -0.59249997 16.057695389 155.84457397 4.50617027
		 7.7177 152.81808472 8.59376526 17.1338501 61.31510162 0.89629 18.12634087 58.75260162 -0.71581
		 14.30405998 60.60264969 3.18934989 10.69752979 60.60908127 3.67418003 9.22027969 57.61222076 2.19650006
		 14.14011002 56.66754913 2.023829937 6.76152992 54.25645065 -11.66882038 12.18476009 54.78903198 -13.56784344
		 17.60538864 54.79340363 -13.34577465 20.81703377 52.61680984 -8.73752022 19.011007309 50.58681488 -4.093298912
		 14.27453899 49.54082108 -1.041109681 8.64260006 49.86265182 -1.50917995 4.90134001 51.89883041 -6.045839787
		 16.95734024 80.57331085 2.78976011 2.6278801 92.84860229 -1.59693003 68.13803101 105.76096344 -11.44353008
		 67.79498291 105.031028748 -10.99448013 67.86766052 104.66133118 -10.10260963 68.40249634 104.88732147 -9.26552963
		 68.93312836 105.46012878 -9.020580292 69.22001648 106.21736145 -9.36820984 69.10954285 106.75328064 -10.28973961
		 68.67897797 106.50257874 -11.17387962 69.18476105 104.80046082 -11.46881008 68.87290955 104.14253998 -11.10533047
		 68.85328674 103.8288269 -10.35482025 69.1282196 103.99086761 -9.56354046 69.61237335 104.6102066 -9.19556046
		 69.99269867 105.35977173 -9.59739017 70.021537781 105.74639893 -10.44861031 69.65770721 105.4770813 -11.23258972
		 70.17819214 103.89186096 -11.52906036 69.89557648 103.3024292 -11.18344021 69.85678864 103.057250977 -10.51972961
		 69.9936676 103.17080688 -9.77130032 70.42073059 103.76683807 -9.33907986 70.86396027 104.53166962 -9.70349979
		 70.98143005 104.9030304 -10.57853985 70.61923218 104.55799103 -11.34358978 70.64922333 103.43862152 -11.57303047
		 70.35636139 102.85720825 -11.23458004 70.24199677 102.5670929 -10.58874989 70.39276123 102.72724152 -9.84475994
		 70.82418823 103.34490204 -9.43498039 71.3021698 104.10572052 -9.74652004 71.42941284 104.44882965 -10.62948036
		 71.088310242 104.10211182 -11.39984989 71.067359924 102.97344971 -11.61355972 70.74742126 102.37174988 -11.28011036
		 70.5945816 102.050689697 -10.61485004 70.76422119 102.24414063 -9.84939957 71.21469879 102.89154816 -9.48721981
		 71.67983246 103.62731171 -9.80338955 71.82434082 103.96495056 -10.64776993 71.49645996 103.62283325 -11.39404011
		 71.8939209 102.064468384 -11.59632969 71.56092072 101.45729065 -11.29312038 71.4083786 101.14640045 -10.64066029
		 71.60462952 101.38745117 -9.93630028 72.013633728 101.99701691 -9.56095028 72.44728851 102.69358826 -9.87633991
		 72.6267395 103.04283905 -10.6703701 72.32644653 102.7188797 -11.41287041 72.6531601 101.25543213 -11.53967953
		 72.33538055 100.68403625 -11.27680016 72.21263123 100.42460632 -10.67576981 72.39208221 100.66277313 -10.063779831
		 72.74677277 101.21246338 -9.68021011 73.19848633 101.88516235 -9.90927029 73.38594055 102.21260071 -10.69855976
		 73.082740784 101.88459015 -11.41578007 73.051269531 100.81172943 -11.51618958 72.73220062 100.26553345 -11.28687
		 72.56732178 99.97789001 -10.70625973 72.73439026 100.19988251 -10.066379547 73.1248703 100.77493286 -9.72045994
		 73.58415222 101.43041992 -9.96179962 73.77133179 101.72615051 -10.72955036 73.46549988 101.3980484 -11.39641953
		 73.39347076 100.40045166 -11.51144981 73.090766907 99.8830719 -11.30815983 72.92031097 99.57221222 -10.74709034
		 73.069252014 99.74693298 -10.061739922 73.49049377 100.34236145 -9.72929955 73.91854858 100.98065186 -10.034879684
		 74.087097168 101.25692749 -10.76519012 73.77394104 100.93946838 -11.3674202 73.88075256 99.8620224 -11.48571968
		 73.65052032 99.42072296 -11.28063965 73.53749084 99.11921692 -10.79736996 73.68058777 99.20982361 -10.15421009
		 74.068901062 99.76239014 -9.83570957 74.41295624 100.36920166 -10.14540958 74.49075317 100.61209869 -10.81503963
		 74.19937134 100.33740234 -11.34484959 74.60655975 99.27893066 -11.18855953 74.5317688 99.066009521 -11.043129921
		 74.5526123 98.94863129 -10.80214024 74.64530182 98.94046021 -10.51229 74.83811188 99.19898224 -10.3342104
		 75.0012130737 99.5717926 -10.47155952 74.98944092 99.71543884 -10.8848896 74.77780151 99.56317139 -11.18914032
		 69.3234024 105.63311005 -8.11878014 68.97570038 105.07775116 -7.80264997 68.6836319 104.61937714 -6.83225012
		 69.098899841 104.90345764 -5.75222015 69.65570831 105.53076172 -5.4854598 70.089500427 106.31218719 -5.84336996
		 70.13777161 106.82434845 -6.98984003 69.76072693 106.32460022 -7.98047018 70.43225861 104.58400726 -8.11884975
		 70.041023254 103.87460327 -7.74547005 69.87478638 103.49613953 -6.89937019 70.11540985 103.73123932 -5.94856977
		 70.66226959 104.47219849 -5.55572987 71.17115021 105.31593323 -5.97359991 71.2939682 105.71434784 -6.99796009
		 70.95072174 105.3534317 -7.92406988 71.60179901 103.47815704 -8.11279011 71.19893646 102.74452972 -7.76056004
		 71.057830811 102.41060638 -6.95705986 71.25395203 102.66425323 -6.095980167 71.74134827 103.40750885 -5.65573978
		 72.29901886 104.29476929 -5.99951982 72.52639008 104.74173737 -7.02823019 72.12631226 104.28607941 -7.93058014
		 72.12879181 102.96408844 -8.10945988 71.72189331 102.23094177 -7.76862001;
	setAttr ".vt[1328:1493]" 71.55845642 101.89578247 -6.97462988 71.74503326 102.16333771 -6.13380003
		 72.22453308 102.91362762 -5.71324015 72.78472137 103.78134918 -6.046030045 73.028411865 104.20836639 -7.049890041
		 72.64959717 103.77140808 -7.93922997 72.60977173 102.44441986 -8.11130047 72.18202209 101.68856049 -7.79996014
		 71.95719147 101.29634094 -6.98767996 72.18022156 101.59832001 -6.092559814 72.69625092 102.38906097 -5.6949501
		 73.22463989 103.22657013 -6.095860004 73.13227081 103.24890137 -7.94773006 73.6317215 101.37056732 -8.085029602
		 73.22013855 100.62619019 -7.80506992 73.012413025 100.23265839 -7.023550034 73.23856354 100.54068756 -6.15011978
		 73.7229538 101.30503082 -5.73437023 74.21601105 102.116539 -6.1518302 74.45977783 102.54223633 -7.078919888
		 74.14420319 102.1629715 -7.94702005 74.56494141 100.44486237 -8.091930389 74.18625641 99.75737762 -7.78984022
		 74.042098999 99.44760895 -7.063630104 74.22924042 99.71575165 -6.29148006 74.65570068 100.39785004 -5.85140991
		 75.16607666 101.21159363 -6.1568799 75.39820862 101.61878967 -7.096380234 75.064468384 101.22299957 -7.94812012
		 74.97572327 100.033691406 -8.09183979 74.58753967 99.3508606 -7.81087017 74.41378784 99.026031494 -7.080729961
		 74.60858917 99.29089355 -6.2859602 75.063430786 99.98542023 -5.89981985 75.57991791 100.77601624 -6.19380999
		 75.80786133 101.16999054 -7.11035013 75.47914124 100.79318237 -7.95488977 75.34020996 99.63691711 -8.10173988
		 74.95684052 98.9666214 -7.82652998 75.448349 99.57109833 -5.91470003 75.93312073 100.32756042 -6.26245022
		 75.97750092 99.0024490356 -8.10299015 75.64411926 98.37747955 -7.82790995 75.48854065 98.01309967 -7.14807987
		 75.69300079 98.23355103 -6.35839987 76.13510132 98.90216064 -6.0052900314 76.53321075 99.61566162 -6.3719101
		 76.69275665 99.9539032 -7.17212009 76.39060211 99.63999176 -7.88665009 77.016616821 98.20580292 -7.65651989
		 76.90361786 97.91970062 -7.55006981 76.90119171 97.7013092 -7.25272989 77.0048065186 97.76029968 -6.87673998
		 77.18923187 98.092201233 -6.71201992 77.39527893 98.46795654 -6.81343985 77.41426849 98.63413239 -7.23462009
		 77.22055054 98.50557709 -7.57141018 73.48432159 103.65686035 -7.064400196 76.15695953 100.71279144 -7.13258982
		 75.82106018 100.35398865 -7.92262983 74.98506165 98.8898468 -6.29778004 74.7851181 98.63948822 -7.097879887
		 70.18321991 105.36495209 -1.81035995 69.53523254 104.88591766 -2.18667006 69.087333679 104.68544769 -3.18912005
		 69.37151337 105.029426575 -4.15672016 69.88890076 105.53082275 -4.43654013 70.46852875 106.14295959 -4.26254988
		 70.9004364 106.62130737 -3.26472998 70.74617767 106.11556244 -2.12779999 71.23722839 104.37142944 -1.92203999
		 70.59352112 103.790802 -2.3162601 70.3341217 103.61923218 -3.17498994 70.54524994 103.8741684 -3.97960997
		 71.091239929 104.41680145 -4.29273987 71.74017334 105.024406433 -4.097469807 72.15966797 105.39160919 -3.24101996
		 71.90229034 105.058479309 -2.27150989 72.41575623 103.27072906 -2.02779007 71.81095123 102.69709778 -2.39281011
		 71.61660767 102.53212738 -3.16940999 71.83624268 102.75817108 -3.87616992 72.3417511 103.24859619 -4.23965979
		 72.96910858 103.85269928 -4.054150105 73.39839172 104.26039124 -3.24885011 73.13361359 103.97779083 -2.26493001
		 72.95281982 102.73477936 -2.023210049 72.30963135 102.12062836 -2.35659003 72.088256836 101.91845703 -3.17572999
		 72.36348724 102.1847229 -3.90815997 72.89553833 102.70187378 -4.24344015 73.51261139 103.3008194 -4.052360058
		 73.94023132 103.70732117 -3.26876998 73.67378235 103.43289185 -2.2973001 73.40431213 102.23970032 -2.024149895
		 72.75982666 101.62110138 -2.3545301 72.51985168 101.39835358 -3.1802001 72.81569672 101.69631195 -3.90740991
		 73.34767151 102.21855164 -4.25304985 73.96427155 102.81542969 -4.057960033 74.37371826 103.20182037 -3.27910995
		 74.098503113 102.91870117 -2.34697008 74.35614014 101.22203064 -2.023979902 73.73645782 100.62541199 -2.3798399
		 73.50601196 100.41835785 -3.18378997 73.78845215 100.71777344 -3.88242006 74.2947998 101.22177124 -4.23042011
		 74.90248871 101.8028717 -4.042660236 75.31838989 102.18238068 -3.27119994 75.041893005 101.89543915 -2.34745002
		 75.33289337 100.2124176 -2.07314992 74.75550079 99.67134857 -2.4444201 74.55854034 99.50057983 -3.18653989
		 74.79544067 99.7513504 -3.8463099 75.26895142 100.2170105 -4.19043016 75.8538208 100.766922 -4.011020184
		 76.292099 101.15168762 -3.26999998 76.0036392212 100.85723114 -2.37558007 75.77823639 99.73654175 -2.07487011
		 75.1775589 99.18266296 -2.41850996 74.98493195 99.024803162 -3.18585992 75.23899078 99.29110718 -3.84057999
		 75.70928955 99.74858856 -4.18227005 76.28981018 100.28243256 -4.0023198128 76.70926666 100.63459015 -3.26938009
		 76.43110657 100.35414124 -2.39778996 76.12873077 99.35301971 -2.051599979 75.52693176 98.79714203 -2.41167998
		 75.32453918 98.65019989 -3.18758988 75.57324982 98.93981171 -3.83107996 76.033287048 99.39425659 -4.17206001
		 76.61115265 99.91763306 -3.99963999 77.02117157 100.24060059 -3.26918006 76.76679993 99.9690094 -2.40065002
		 76.72499847 98.75138092 -2.087349892 76.16464996 98.18343353 -2.44797993 75.96042633 98.067779541 -3.22010994
		 76.16481018 98.40219116 -3.82060003 76.5634079 98.85453796 -4.12323999 77.085952759 99.35591125 -3.96768999
		 77.45075989 99.63259125 -3.27481008 77.27091217 99.37407684 -2.45274997 77.75993347 97.97646332 -2.6694901
		 77.53128052 97.61997986 -2.86763 77.42276001 97.53424835 -3.25628996 77.4285965 97.78314209 -3.55929995
		 77.56450653 98.081809998 -3.70825005 77.83371735 98.40222168 -3.6939199 78.06690979 98.5640564 -3.26393008
		 78.037139893 98.39187622 -2.7581799 69.41716003 105.63329315 1.62825 68.93972015 104.95301056 1.070309997
		 68.87248993 104.68578339 0.088 69.3286438 105.034729004 -0.66360003 69.77726746 105.4695816 -0.92338997
		 70.13960266 106.11868286 -0.71482003 70.22572327 106.66931152 0.15203001 69.97570038 106.41304779 1.20261002
		 70.21115112 104.90455627 1.64734995 69.75 104.25617981 1.15272999 69.67205048 104.044998169 0.31088001
		 69.89985657 104.25650787 -0.42043999 70.33750153 104.79476166 -0.70477998 70.81755829 105.42843628 -0.49788001
		 71.036201477 105.82430267 0.31292 70.784729 105.60334778 1.25395;
	setAttr ".vt[1494:1659]" 70.90673065 104.28549194 1.65371001 70.49414825 103.69593048 1.17470002
		 70.4286499 103.52532959 0.43134001 70.55625916 103.65460205 -0.27182001 70.95870972 104.16484833 -0.61646998
		 71.44464111 104.80370331 -0.38874 71.70271301 105.19657135 0.39862999 71.46114349 104.97145081 1.30546999
		 71.27539063 103.93518066 1.68659997 70.83776093 103.32962799 1.23602998 70.72070313 103.10993958 0.48745
		 70.90112305 103.29319 -0.21253 71.31175995 103.8110199 -0.56503999 71.79654694 104.44982147 -0.32255
		 72.089103699 104.85817719 0.44983 71.84931183 104.63082886 1.36286998 71.67105103 103.51038361 1.71562004
		 71.21283722 102.89369202 1.28576005 71.061958313 102.64051056 0.53297001 71.28278351 102.86466217 -0.1583
		 71.70030212 103.39637756 -0.49090001 72.18360138 104.028289795 -0.26324001 72.50942993 104.44519806 0.493
		 72.26435852 104.21070099 1.41215003 72.48261261 102.60983276 1.71818995 72.025131226 102.002456665 1.34282994
		 71.87892151 101.75424957 0.61921 72.10655212 101.99720764 -0.02788 72.50995636 102.51701355 -0.33985999
		 72.99607849 103.13800049 -0.17750999 73.27388 103.50273132 0.56485999 73.019882202 103.25051117 1.39287996
		 73.38635254 101.60964966 1.71974003 72.93512726 101.027832031 1.38046002 72.81548309 100.81517029 0.70392001
		 73.026580811 101.045921326 0.10594 73.40061951 101.52622223 -0.23027 73.87985992 102.12390137 -0.06129
		 74.22244263 102.52555084 0.64168 73.96903992 102.27626801 1.50339997 73.76345825 101.16236115 1.73839998
		 73.27523041 100.56130981 1.43728995 73.12586975 100.33155823 0.72430998 73.36875153 100.58798981 0.1004
		 73.77033997 101.088890076 -0.19153 74.23957062 101.66156006 -0.00141 74.58509064 102.040657043 0.67341
		 74.33998871 101.80097198 1.49532998 74.072250366 100.78220367 1.76852 73.58870697 100.18029785 1.47367001
		 73.42902374 99.94136047 0.74883002 73.6727066 100.21488953 0.11881 74.075042725 100.72200775 -0.14977001
		 74.5304718 101.27674866 0.048810001 74.84744263 101.6230011 0.70130002 74.60050964 101.38507843 1.46664
		 74.63539124 100.20172119 1.78132999 74.2201767 99.63114166 1.48442996 74.081237793 99.40531158 0.81496
		 74.2729187 99.65171814 0.21204001 74.63063812 100.14450073 -0.05102 75.031028748 100.68415833 0.13792001
		 75.26776886 100.98941803 0.76120001 75.070999146 100.77275085 1.46788001 75.69133759 99.42085266 1.39335001
		 75.51952362 99.21092987 1.20386004 75.47566986 99.13504791 0.92881 75.5197525 99.2052536 0.67267001
		 75.64724731 99.44445038 0.52258998 75.83158112 99.75547791 0.53490001 75.98413086 99.94387054 0.88727999
		 75.89974976 99.78427124 1.32246006 62.4149704 109.0091094971 3.71471 62.79666901 108.57511139 2.61030006
		 63.78567123 108.33666229 2.038589954 65.014900208 108.26059723 2.042109966 65.17623138 109.89086914 3.9402101
		 64.29019928 109.8860321 4.55756998 63.12712097 109.61408997 4.59990978 63.30981827 108.054870605 4.27686977
		 63.45080185 107.56111145 3.29355001 64.27645111 107.48686218 2.64655995 65.3123703 107.71954346 2.54310989
		 66.049888611 108.38394928 3.16641998 65.92208099 108.97496796 4.19032001 65.046112061 109.10140991 5.0035400391
		 63.91611099 108.68495178 5.06306982 64.07019043 107.28231049 4.76364994 64.19374084 106.89933014 3.86755991
		 64.83799744 106.88095093 3.22303009 65.67378998 107.2062912 3.10240006 66.36598969 107.76834106 3.55386996
		 66.40447235 108.31539154 4.51635981 65.63571167 108.39540863 5.40552998 64.57659149 107.89562988 5.52952003
		 64.50395203 106.77433777 5.082320213 64.65881348 106.47258759 4.22637987 65.23767853 106.48513031 3.59170008
		 66.0051498413 106.79682159 3.40263009 66.62019348 107.3434906 3.86876988 66.72982025 107.86653137 4.77499008
		 66.0065307617 107.89221191 5.64687014 65.016456604 107.37670898 5.75452995 64.92163849 106.23018646 5.39369011
		 65.050300598 105.90444946 4.53059006 65.62490082 105.90769196 3.85165 66.4240799 106.2508316 3.62438989
		 67.033210754 106.83943176 4.11588001 67.093780518 107.34274292 5.056940079 66.38658142 107.36125183 5.92995977
		 65.41837311 106.8405304 6.047440052 65.53153229 105.44139099 5.85179996 65.68253326 105.082626343 5.017310143
		 66.25343323 105.055801392 4.33181 67.072761536 105.39382172 4.03278017 67.64855957 106.047210693 4.54200983
		 67.6267395 106.57118225 5.48512983 66.91738892 106.60762787 6.34441996 65.97499847 106.078651428 6.50105
		 67.048469543 104.29309845 6.55880022 67.19982147 103.94612122 6.12189007 67.57299042 103.90631866 5.75688982
		 68.0042114258 104.14665985 5.59747982 68.30877686 104.58374023 5.82149982 68.20011902 105.041137695 6.30956984
		 67.73365021 105.16539001 6.81212997 67.20265961 104.79402161 6.87894011 66.2515564 104.73686218 6.2814002
		 66.38529968 104.26998901 5.58188009 66.94374084 104.17913055 4.93732977 67.70462036 104.56108093 4.69927979
		 68.15274811 105.24195099 5.13368988 68.017341614 105.77909088 5.91105986 67.36183167 105.85767365 6.60606003
		 66.59806061 105.3746109 6.77203989 75.22248077 99.74002075 1.68880999 74.91861725 99.26087952 1.41700995
		 74.82185364 99.070320129 0.88442999 74.94921112 99.26927948 0.39265999 75.20635986 99.68962097 0.14206
		 75.50566101 100.18379974 0.27179 75.66178894 100.45503998 0.82440001 75.52728271 100.2588501 1.43399
		 77.31298065 98.27243805 -2.31518006 76.90093994 97.6775589 -2.56803012 76.72377014 97.59803009 -3.26829004
		 76.83299255 97.95173645 -3.78395009 77.1004715 98.40474701 -3.98177004 77.48049164 98.85131073 -3.8466301
		 77.77600861 99.082710266 -3.27242994 77.69486237 98.85031128 -2.58904004 76.59471893 98.51318359 -7.96471024
		 76.36891174 97.98374176 -7.7708602 76.28633881 97.61087036 -7.22285986 76.46336365 97.76338959 -6.53165007
		 76.79785919 98.37798309 -6.26610994 77.064979553 98.99092865 -6.55953979 77.10883331 99.24507141 -7.2017498
		 76.89031219 99.016860962 -7.76801014 74.28530884 99.51251221 -11.37946033 74.14093781 99.16677094 -11.18992996
		 74.11057281 98.945961 -10.81163025 74.24317169 98.97863007 -10.32409 74.53543091 99.41342926 -10.047860146
		 74.79537201 99.94535828 -10.2778101 74.79460907 100.14591217 -10.85888004;
	setAttr ".vt[1660:1825]" 74.53124237 99.91230011 -11.29454994 68.19319153 106.080749512 -8.5306797
		 68.59953308 106.11522675 -8.56379032 68.64826965 106.93253326 -8.55622959 69.19670105 106.93683624 -5.016329765
		 69.093849182 106.20905304 -4.95905018 68.60379028 106.064659119 -4.97743988 68.96395111 105.89367676 -1.52054
		 69.56887054 105.9021225 -1.42202997 69.67279816 106.84136963 -1.54024005 67.83972168 105.79141998 -3.18120003
		 67.46208954 105.78618622 -6.70063019 67.064590454 105.65293884 -9.47148037 68.13288116 105.6254425 -0.39712
		 67.98718262 105.76976013 0.93352002 66.57525635 105.96437073 -10.6073103 66.87081146 106.77098846 -11.47492981
		 67.56851196 107.80052948 -11.19466019 68.13092041 108.32704163 -9.81873989 68.99967957 108.65496826 -6.95784998
		 69.44882965 108.57234192 -3.36801004 69.0021514893 108.2508316 -0.34819001 68.84185028 107.60858917 1.19876003
		 68.45648956 106.52596283 1.59307003 67.079071045 106.59966278 -1.33051002 66.68370056 106.50564575 -4.55907822
		 66.15213776 106.59719086 -8.041589737 65.76702118 107.025558472 -5.95200777 65.62492371 107.38047028 -2.40553284
		 64.45200348 107.95478821 -5.25363445 64.70768738 107.22647095 -9.18453979 66.88226318 106.66268158 0.69933999
		 67.48126984 107.31169128 1.56808996 67.067070007 109.22277069 1.56711996 68.48233795 109.30925751 -1.78535998
		 68.17008209 109.32202911 -5.088039875 67.5996933 109.11170197 -8.36692047 66.59545898 111.070007324 -6.64099979
		 66.61579895 111.10704041 -5.0017199516 66.14161682 110.73641968 -8.091239929 66.87306976 111.2607193 -3.36303997
		 66.93361664 111.012130737 -1.83942997 67.069892883 110.53591156 -0.24013001 66.0036315918 110.55686188 -9.59261036
		 65.60559845 109.67565918 -11.062339783 64.75540161 108.13475037 -11.17010975 65.81497192 107.45400238 0.62496001
		 65.78842163 111.76818085 1.019729972 64.93623352 113.32331085 -6.37715006 65.24033356 113.076530457 -4.95421982
		 64.7837677 112.6129837 -7.68884993 64.67411041 114.73828125 -3.06024003 65.64924622 112.99060059 -1.68164003
		 65.54696655 112.88516998 -0.21247999 63.7723999 113.72570801 -8.68758965 62.82598114 112.22686768 -10.82406044
		 63.41270065 115.11620331 -5.93610001 63.55379105 114.61370087 0.55383998 64.94226074 111.97763062 1.72972
		 64.86070251 108.12725067 0.90332943 64.10951233 108.41175079 -1.51103878 62.44746399 109.43605804 -5.4139142
		 61.15597916 110.97605896 -10.2288599 60.20610809 111.45491028 -4.97530985 58.48579407 112.39066315 -1.38303018
		 59.78347015 113.53398132 1.38890004 62.1853714 113.36353302 2.54343009 64.26096344 111.59358978 2.87377
		 63.83422089 111.11296844 3.85523009 63.55561066 110.62155914 4.30145979 62.40964127 110.63342285 4.088759899
		 61.43307114 110.12232971 3.0036599636 61.83118057 109.5116272 1.49272001 63.15008163 108.81555939 0.74039924
		 62.45614624 109.33708191 -1.099341393 62.31138611 109.54891968 -3.20019984 60.59540939 110.64852905 -2.97164989
		 60.25904083 110.60639954 -0.48219001 60.36783981 111.64279175 2.15885997 61.95204163 111.9412384 3.57751012
		 62.7868309 108.74015045 -8.22286987 -37.0071601868 127.85910034 -0.47922 -40.2257309 131.13832092 1.55989003
		 -42.94458008 134.42201233 -1.027349949 -44.63832092 135.82237244 -5.53769016 -43.53182983 134.43359375 -10.59498978
		 -40.031620026 131.26579285 -12.43476963 -35.51367188 126.36279297 -5.70081997 -36.82287979 127.67951965 -10.84224987
		 44.63832092 135.82237244 -5.53769016 42.94458008 134.42201233 -1.027349949 43.53182983 134.43359375 -10.59498978
		 40.2257309 131.13832092 1.55989003 37.0071601868 127.85910034 -0.47922 35.51367188 126.36279297 -5.70081997
		 36.82287979 127.67951965 -10.84224987 40.031620026 131.26579285 -12.43476963 -35.99898148 143.46954346 -6.0096502304
		 -34.90314102 142.29176331 -0.73642999 -31.20795059 139.27223206 2.4770999 -27.75486755 135.17929077 0.89836717
		 -26.54297638 134.17366028 -3.14441156 -27.86969948 133.42001343 -10.10846996 -31.20223999 136.78033447 -13.94379997
		 -34.15839005 141.97094727 -11.92125988 35.99898148 143.46954346 -6.0096502304 34.90314102 142.29176331 -0.73642999
		 31.20795059 139.27223206 2.4770999 27.75486755 135.17929077 0.89836717 26.54297638 134.17366028 -3.14441156
		 27.86969948 133.42001343 -10.10846996 31.20223999 136.78033447 -13.94379997 34.15839005 141.97094727 -11.92125988
		 -37.27619171 133.61575317 1.61580002 -40.34378052 136.94871521 -0.83315003 -41.79399872 138.13261414 -5.71842003
		 -40.3757515 136.27824402 -10.51414967 -37.28733063 132.99841309 -12.56894016 -34.10168076 129.49099731 -10.52466011
		 -32.99629974 128.85671997 -5.14534998 -33.98006821 130.10180664 0.057410002 37.27619171 133.61575317 1.61580002
		 40.34378052 136.94871521 -0.83315003 41.79399872 138.13261414 -5.71842003 40.3757515 136.27824402 -10.51414967
		 37.28733063 132.99841309 -12.56894016 34.10168076 129.49099731 -10.52466011 32.99629974 128.85671997 -5.14534998
		 33.98006821 130.10180664 0.057410002 15.30933952 135.16169739 0.61180001 15.9437685 134.35510254 -3.95262265
		 15.41315937 133.71232605 -9.10332108 13.39995003 133.24745178 -14.65141964 7.16913986 132.1985321 -17.02256012
		 0.00019999999 132.31791687 -15.20514965 -7.16913986 132.1985321 -17.02256012 -13.39995003 133.24745178 -14.65141964
		 -15.41315937 133.71232605 -9.10332108 -15.9437685 134.35510254 -3.95262265 -15.30933952 135.16169739 0.61180001
		 3.22345996 90.13166046 -1.98119998 -3.22345996 90.13166046 -1.98119998 74.71805573 99.23904419 -10.83347988
		 -74.71805573 99.23904419 -10.83347988 77.14157104 98.13833618 -7.24424553 -77.14157104 98.13833618 -7.24424553
		 77.72040558 98.010101318 -3.25982022 -77.72040558 98.010101318 -3.25982022 75.66399384 99.43461609 0.91342819
		 -75.66399384 99.43461609 0.91342819 67.64135742 104.44210052 6.20593357 -67.64135742 104.44210052 6.20593357
		 65.43332672 108.85961914 2.45531988 65.50894165 108.76340485 1.97723567 66.46916199 108.2531662 1.50754559
		 -65.43332672 108.85961914 2.45531988 -65.50894165 108.76340485 1.97723567 -66.46916199 108.2531662 1.50754559
		 65.99129486 110.035354614 2.47270298 -65.99129486 110.035354614 2.47270298 68.030105591 108.34687805 1.367239
		 -68.030105591 108.34687805 1.367239 66.51846313 110.41814423 0.89571899 -66.51846313 110.41814423 0.89571899
		 65.64910889 110.71585846 2.26936889 -65.64910889 110.71585846 2.26936889;
	setAttr ".vt[1826:1914]" 65.073783875 110.56602478 3.2522521 -65.073783875 110.56602478 3.2522521
		 -63.65326691 108.64533997 -3.31141901 63.65326691 108.64533997 -3.31141901 0.02216641 118.19228363 -16.092388153
		 -5.65845537 119.41764832 -15.64989471 -1.041257381 109.06817627 -18.18935585 1.041257381 109.06817627 -18.18935585
		 -6.50379276 106.72813416 -19.33306122 0.0018131398 108.71476746 -17.57683372 6.50379276 106.72813416 -19.33306122
		 27.424263 140.76672363 2.15034747 -27.424263 140.76672363 2.15034747 19.74923325 137.91868591 1.13822341
		 -21.21070862 140.65081787 3.21522045 -19.74923325 137.91868591 1.13822341 22.55894661 136.43780518 -4.29179859
		 20.00026893616 136.67337036 -4.15640879 22.29613876 136.51367188 -6.70905495 19.71891594 136.63284302 -6.80015087
		 20.25643158 137.061553955 -1.56313586 22.78230095 136.74053955 -2.085940599 -20.25643158 137.061553955 -1.56313586
		 -20.00026893616 136.67337036 -4.15640879 -22.55894661 136.43780518 -4.29179859 -22.78230095 136.74053955 -2.085940599
		 -22.29613876 136.51367188 -6.70905495 -19.71891594 136.63284302 -6.80015087 -9.91901398 140.76046753 8.5652132
		 0.00067400013 141.07925415 9.16668987 9.91901398 140.76046753 8.5652132 21.21070862 140.65081787 3.21522045
		 -10.8096447 112.11776733 -15.40428257 -16.13959694 113.65100861 -10.24899483 -16.10317421 113.50079346 -3.56122208
		 -12.78884029 112.82227325 1.91650498 -6.99709797 112.015525818 5.48223019 -0.13882264 111.63144684 6.58997202
		 6.99709797 112.015525818 5.48223019 12.78884029 112.82227325 1.91650498 16.10317421 113.50079346 -3.56122208
		 16.13959694 113.65100861 -10.24899483 10.8096447 112.11776733 -15.40428257 45.85019684 132.15620422 -0.4302693
		 47.71990967 133.64065552 -5.16090155 46.5484314 132.14511108 -10.5281868 42.73369598 128.86027527 -12.67317963
		 39.28562927 124.80618286 -11.49458122 37.77934265 123.55833435 -5.72803497 39.27483749 125.18391418 -0.13128901
		 42.86473846 128.65612793 2.18953466 -45.85126877 132.15620422 -0.4302693 -47.7209816 133.64065552 -5.16090155
		 -46.54950714 132.14511108 -10.5281868 -42.73477173 128.86027527 -12.67317963 -39.28670502 124.80618286 -11.49458122
		 -37.7804184 123.55833435 -5.72803497 -39.27591324 125.18391418 -0.13128901 -42.86581421 128.65612793 2.18953466
		 0.014863048 111.76786041 -17.25043488 2.39079261 112.31893158 -17.27561378 10.92145824 114.5517807 -14.7298851
		 15.26306248 115.82846832 -9.90921593 15.63299942 115.87620544 -3.45565963 12.60907173 115.39129639 2.041100025
		 7.051730156 114.79281616 5.72211266 -0.09119314 114.47636414 7.0011534691 -7.051730156 114.79281616 5.72211266
		 -12.60907173 115.39129639 2.041100025 -15.63299942 115.87620544 -3.45565963 -15.26306248 115.82846832 -9.90921593
		 -10.92145824 114.5517807 -14.7298851 -2.39079261 112.31893158 -17.27561378 -6.53900862 100.54582977 5.80328655
		 -0.047199454 99.39515686 6.18062496 6.53875065 100.54582977 5.80328655 14.20716572 102.60484314 2.53048468
		 19.22969055 103.99837494 -3.82295251 19.77747536 103.91038513 -12.35460663 14.66535664 102.086158752 -18.93807411
		 5.95525455 100.20044708 -21.63490295 0.61445475 101.88262939 -20.0040969849 0.00082156988 101.99700165 -20.064460754
		 -0.61471319 101.88262939 -20.0040969849 -5.955513 100.20044708 -21.63490295 -14.66561508 102.086158752 -18.93807411
		 -19.77773285 103.91038513 -12.35460663 -19.22994995 103.99837494 -3.82295251 -14.20742416 102.60484314 2.53048468;
	setAttr -s 3820 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 9 1 9 8 1 8 0 1 8 15 1 15 7 1 7 0 1 1 2 1 2 10 1
		 10 9 1 2 3 1 3 11 1 11 10 1 3 4 1 4 12 1 12 11 1 4 5 1 5 13 1 13 12 1 5 6 1 6 14 1
		 14 13 1 6 7 1 15 14 1 9 17 1 17 16 0 16 8 1 16 23 0 23 15 1 10 18 1 18 17 0 11 19 1
		 19 18 0 12 20 1 20 19 0 13 21 1 21 20 0 14 22 1 22 21 0 23 22 0 85 86 0 86 31 1 31 24 1
		 24 85 0 24 25 1 25 84 0 84 85 0 86 87 0 87 30 1 30 31 1 87 88 0 88 29 1 29 30 1 88 89 0
		 89 28 0 28 29 0 89 90 1 90 27 1 27 28 1 90 91 1 91 26 1 26 27 0 91 84 1 25 26 0 36 35 1
		 35 25 1 24 36 1 31 37 1 37 36 1 35 34 1 34 26 1 34 33 1 33 27 1 33 32 1 32 28 1 32 39 1
		 39 29 1 39 38 1 38 30 1 38 37 1 33 53 1 53 52 0 52 32 1 49 42 1 42 39 1 32 49 1 52 60 0
		 60 49 1 34 54 1 54 53 0 35 55 1 55 54 0 36 56 1 56 55 0 37 40 1 40 43 1 43 36 1 43 57 1
		 57 56 0 38 41 1 41 40 1 42 41 1 41 46 1 46 45 1 45 40 1 45 44 1 44 43 1 42 47 1 47 46 1
		 49 48 1 48 47 1 44 58 1 58 57 0 45 50 1 50 51 1 51 44 1 51 61 1 61 58 0 47 50 1 48 51 1
		 60 59 0 59 48 1 59 61 0 53 63 1 63 62 0 62 52 1 62 70 0 70 60 1 54 64 1 64 63 0 55 65 1
		 65 64 0 56 66 1 66 65 0 57 67 1 67 66 0 58 68 1 68 67 0 61 71 1 71 68 0 70 69 0 69 59 1
		 69 71 0 63 73 1 73 72 0 72 62 1 72 80 0 80 70 1 64 74 1 74 73 0 65 75 1 75 74 0 66 76 1
		 76 75 0 67 77 1 77 76 0 68 78 1 78 77 0 71 81 1 81 78 0 80 79 0 79 69 1 79 81 0 74 82 1
		 82 72 1 82 83 1;
	setAttr ".ed[166:331]" 83 80 1 76 82 1 77 83 1 81 83 1 84 23 1 16 85 1 17 86 1
		 18 87 1 19 88 1 20 89 1 21 90 1 22 91 1 92 100 1 100 101 1 101 93 1 93 92 1 92 99 1
		 99 107 1 107 100 1 101 102 1 102 94 1 94 93 1 102 103 1 103 95 1 95 94 1 103 104 1
		 104 96 1 96 95 1 104 105 1 105 97 1 97 96 1 105 106 1 106 98 1 98 97 1 106 107 1
		 99 98 1 100 108 1 108 109 0 109 101 1 107 115 1 115 108 0 109 110 0 110 102 1 110 111 0
		 111 103 1 111 112 0 112 104 1 112 113 0 113 105 1 113 114 0 114 106 1 114 115 0 177 116 0
		 116 123 1 123 178 1 178 177 0 177 176 0 176 117 1 117 116 1 123 122 1 122 179 1 179 178 0
		 122 121 1 121 180 1 180 179 0 121 120 0 120 181 0 181 180 0 120 119 1 119 182 1 182 181 1
		 119 118 0 118 183 1 183 182 1 118 117 0 176 183 1 128 116 1 117 127 1 127 128 1 128 129 1
		 129 123 1 118 126 1 126 127 1 119 125 1 125 126 1 120 124 1 124 125 1 121 131 1 131 124 1
		 122 130 1 130 131 1 129 130 1 124 144 1 144 145 0 145 125 1 141 124 1 131 134 1 134 141 1
		 141 152 1 152 144 0 145 146 0 146 126 1 146 147 0 147 127 1 147 148 0 148 128 1 128 135 1
		 135 132 1 132 129 1 148 149 0 149 135 1 132 133 1 133 130 1 133 134 1 132 137 1 137 138 1
		 138 133 1 135 136 1 136 137 1 138 139 1 139 134 1 139 140 1 140 141 1 149 150 0 150 136 1
		 136 143 1 143 142 1 142 137 1 150 153 0 153 143 1 142 139 1 143 140 1 140 151 1 151 152 0
		 153 151 0 144 154 1 154 155 0 155 145 1 152 162 1 162 154 0 155 156 0 156 146 1 156 157 0
		 157 147 1 157 158 0 158 148 1 158 159 0 159 149 1 159 160 0 160 150 1 160 163 0 163 153 1
		 151 161 1 161 162 0 163 161 0 154 164 1 164 165 0 165 155 1 162 172 1 172 164 0 165 166 0
		 166 156 1 166 167 0 167 157 1 167 168 0 168 158 1;
	setAttr ".ed[332:497]" 168 169 0 169 159 1 169 170 0 170 160 1 170 173 0 173 163 1
		 161 171 1 171 172 0 173 171 0 164 174 1 174 166 1 172 175 1 175 174 1 174 168 1 175 169 1
		 175 173 1 177 108 1 115 176 1 178 109 1 179 110 1 180 111 1 181 112 1 182 113 1 183 114 1
		 184 975 1 186 1050 1 187 361 1 188 405 1 189 412 1 190 403 1 191 401 1 192 200 1
		 193 201 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 207 1 200 208 1 201 209 1
		 202 210 1 203 211 1 204 212 1 205 213 1 206 214 1 207 215 1 208 209 1 209 210 1 210 211 1
		 211 212 1 212 213 1 213 214 1 214 215 1 215 223 1 216 217 1 217 218 1 218 219 1 219 220 1
		 220 221 1 221 222 1 222 223 1 223 231 1 224 225 1 225 226 1 226 227 1 227 228 1 228 229 1
		 229 230 1 230 231 1 231 239 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1
		 238 239 1 239 247 1 240 241 1 241 242 1 242 243 1 243 1883 1 244 1882 1 245 1881 1
		 246 247 1 247 1879 1 248 1757 1 249 1758 1 250 1759 1 251 1760 1 252 1761 1 253 1762 1
		 254 1763 1 255 1764 1 256 257 1 257 1758 1 259 260 1 260 261 1 261 262 1 262 1764 1
		 263 1854 1 264 1049 1 265 272 1 266 1760 1 262 267 1 267 394 1 268 1053 1 270 271 0
		 1841 1799 1 273 1056 1 274 269 1 275 276 1 276 284 1 277 280 1 278 281 1 279 280 1
		 280 1795 1 281 283 1 269 272 1 272 1799 1 282 283 1 283 396 1 285 286 1 286 287 1
		 287 399 1 288 1067 1 289 290 1 290 291 1 291 299 1 292 300 1 293 356 1 294 357 1
		 295 302 1 296 303 1 297 298 1 298 305 1 299 306 1 300 307 1 301 308 1 302 303 1 303 311 1
		 304 305 1 305 306 1 306 307 1 307 315 1 308 316 1 309 310 1 310 311 1 311 319 1 312 313 1
		 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 319 327 1 320 321 1 321 322 1
		 322 323 1 323 324 1 324 431 1 325 435 1 326 434 1 327 443 1;
	setAttr ".ed[498:663]" 328 329 1 329 337 1 330 338 1 331 339 1 332 340 1 333 341 1
		 334 342 1 335 343 1 336 337 1 337 338 1 338 339 1 339 340 1 340 341 1 341 342 1 342 343 1
		 343 351 1 344 97 1 345 98 1 346 99 1 347 92 1 348 93 1 349 94 1 350 95 1 351 96 1
		 352 353 1 353 354 1 354 355 1 355 356 1 356 376 1 357 377 1 358 378 1 359 1899 1
		 360 1900 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1 367 368 1 368 369 1
		 369 422 1 370 1146 1 371 1147 1 372 390 1 373 391 1 374 388 1 375 387 1 376 386 1
		 377 385 1 379 1154 1 384 1911 1 359 385 1 385 386 1 386 387 1 387 388 1 388 391 1
		 389 1163 1 390 391 1 384 383 1 383 382 1 382 381 1 381 380 1 379 1863 1 392 397 1
		 393 400 1 394 1796 1 395 396 1 396 397 1 400 399 1 398 1172 1 401 402 1 402 404 1
		 403 413 1 404 190 1 405 406 0 406 407 0 407 408 0 408 409 0 409 410 0 411 1183 0
		 412 413 0 413 410 0 414 415 1 415 416 1 416 417 1 417 418 1 418 419 1 419 420 1 420 427 1
		 421 422 1 422 423 1 423 424 1 424 425 1 425 426 1 426 427 1 427 428 1 429 428 1 430 432 1
		 431 435 1 432 433 1 433 434 1 434 435 1 436 437 1 437 438 1 438 439 1 439 440 1 440 441 1
		 441 442 1 442 443 1 378 446 1 446 1153 1 447 1213 1 448 449 1 449 450 1 450 451 1
		 451 459 1 452 460 1 453 461 1 454 455 1 455 463 1 456 464 1 457 465 1 458 466 1 459 467 1
		 460 468 1 461 469 1 462 470 1 463 471 1 464 465 1 465 466 1 466 467 1 467 468 1 468 469 1
		 469 470 1 470 471 1 471 479 1 472 473 1 473 474 1 474 475 1 475 476 1 476 477 1 477 478 1
		 478 479 1 479 487 1 480 481 1 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1 486 487 1
		 487 495 1 488 489 1 489 490 1 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1 495 503 1
		 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1 501 502 1;
	setAttr ".ed[664:829]" 502 503 1 503 511 1 504 505 1 505 506 1 506 507 1 507 508 1
		 508 509 1 509 510 1 510 511 1 511 519 1 512 513 1 513 514 1 514 515 1 515 516 1 516 517 1
		 517 518 1 518 519 1 519 527 1 520 521 1 521 522 1 522 523 1 523 524 1 524 525 1 525 526 1
		 526 527 1 527 894 1 536 537 1 537 545 1 538 539 1 539 540 1 540 541 1 541 549 1 542 543 1
		 543 551 1 544 552 1 545 553 1 546 554 1 547 555 1 548 556 1 549 557 1 550 558 1 551 559 1
		 552 553 1 553 554 1 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 567 1 560 561 1
		 561 562 1 562 563 1 563 564 1 564 565 1 565 573 1 566 567 1 567 574 1 568 569 1 569 570 1
		 570 571 1 571 572 1 572 579 1 573 580 1 574 582 1 575 576 1 576 577 1 577 578 1 578 579 1
		 579 587 1 580 588 1 581 589 1 582 590 1 583 584 1 584 585 1 585 586 1 586 587 1 587 588 1
		 588 596 1 589 590 1 590 598 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1 596 597 1
		 597 598 1 598 621 1 599 621 1 600 604 1 601 602 1 602 620 1 603 610 1 604 605 1 605 623 1
		 606 622 1 607 608 1 608 609 1 609 620 1 610 621 1 620 621 1 622 623 1 624 625 1 625 633 1
		 626 634 1 627 628 1 628 629 1 629 637 1 630 638 1 631 639 1 632 633 1 633 641 1 634 642 1
		 635 643 1 636 644 1 637 645 1 638 646 1 639 647 1 640 641 1 641 642 1 642 643 1 643 644 1
		 644 645 1 645 646 1 646 647 1 647 655 1 648 649 1 649 650 1 650 651 1 651 652 1 652 653 1
		 653 654 1 654 655 1 655 663 1 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1
		 662 663 1 663 671 1 664 665 1 665 666 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1
		 671 679 1 672 673 1 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 687 1
		 680 681 1 681 682 1 682 683 1 683 684 1 684 685 1 685 686 1 686 687 1;
	setAttr ".ed[830:995]" 687 695 1 688 689 1 689 690 1 690 691 1 691 692 1 692 693 1
		 693 694 1 694 695 1 695 703 1 696 697 1 697 698 1 698 699 1 699 700 1 700 701 1 701 702 1
		 702 703 1 703 878 1 704 705 1 712 719 1 713 714 1 714 715 1 715 716 1 716 724 1 717 725 1
		 718 726 1 719 727 1 720 721 1 721 729 1 722 730 1 723 731 1 724 732 1 725 733 1 726 734 1
		 727 735 1 728 729 1 729 730 1 730 731 1 731 732 1 732 733 1 733 734 1 734 735 1 735 743 1
		 736 737 1 737 738 1 738 739 1 739 740 1 740 741 1 741 742 1 742 743 1 743 751 1 744 745 1
		 745 746 1 746 747 1 747 748 1 748 749 1 749 750 1 750 751 1 751 759 1 752 753 1 753 754 1
		 754 755 1 755 756 1 756 757 1 757 758 1 758 759 1 759 767 1 760 761 1 761 762 1 762 763 1
		 763 764 1 764 765 1 765 766 1 766 767 1 767 775 1 768 769 1 769 770 1 770 771 1 771 772 1
		 772 773 1 773 774 1 774 775 1 775 783 1 776 777 1 777 778 1 778 779 1 779 780 1 780 781 1
		 781 782 1 782 783 1 783 791 1 784 785 1 785 786 1 786 787 1 787 788 1 788 789 1 789 790 1
		 790 791 1 791 870 1 792 793 1 800 806 1 801 808 1 802 809 1 803 1815 1 805 813 1
		 806 814 1 807 808 1 808 816 1 809 817 1 810 818 1 811 819 1 812 820 1 813 821 1 814 822 1
		 815 816 1 816 817 1 817 818 1 818 819 1 819 820 1 820 821 1 821 822 1 822 830 1 823 824 1
		 824 825 1 825 826 1 826 827 1 827 828 1 828 829 1 829 830 1 830 838 1 831 832 1 832 833 1
		 833 834 1 834 835 1 835 836 1 836 837 1 837 838 1 838 846 1 839 840 1 840 841 1 841 842 1
		 842 843 1 843 844 1 844 845 1 845 846 1 846 862 1 847 848 1 855 856 1 856 857 1 857 858 1
		 858 859 1 859 860 1 860 861 1 861 862 1 863 864 1 864 865 1 865 866 1 866 867 1 867 868 1
		 868 869 1 869 870 1 871 872 1 872 873 1 873 874 1 874 875 1 875 876 1 876 877 1;
	setAttr ".ed[996:1161]" 877 878 1 879 880 1 880 881 1 881 882 1 882 883 1 883 884 1
		 884 885 1 885 886 1 887 888 1 888 889 1 889 890 1 890 891 1 891 892 1 892 893 1 893 894 1
		 895 896 0 896 897 0 897 913 1 898 899 0 899 900 0 900 904 1 901 902 0 902 903 0 903 914 1
		 904 919 1 905 919 1 906 920 1 907 918 1 908 917 1 909 910 1 910 911 1 911 912 1 912 930 1
		 913 929 1 914 929 1 915 928 1 916 917 1 917 926 1 918 925 1 919 921 1 920 921 1 921 923 1
		 922 940 1 923 955 1 924 974 1 925 926 1 928 935 1 929 932 1 930 933 1 931 932 1 932 934 1
		 933 937 1 934 935 1 935 936 1 936 947 1 937 938 1 938 949 1 939 956 1 940 953 1 941 947 1
		 942 943 1 943 945 1 944 948 1 945 946 1 946 947 1 947 951 1 948 950 1 949 956 1 951 952 1
		 953 967 1 968 954 1 955 969 1 956 974 1 957 958 1 958 959 1 959 960 1 960 961 1 962 963 1
		 963 964 1 964 973 1 965 972 1 966 967 1 967 968 1 968 971 1 969 970 1 970 971 1 971 972 1
		 972 973 1 975 1176 1 976 1176 1 978 979 1 979 987 1 980 988 1 981 989 1 982 990 1
		 983 991 1 984 992 1 985 993 1 986 987 1 987 988 1 988 989 1 989 990 1 990 991 1 991 992 1
		 992 993 1 993 1001 1 994 995 1 995 996 1 996 997 1 997 998 1 998 999 1 999 1000 1
		 1000 1001 1 1001 1009 1 1002 1003 1 1003 1004 1 1004 1005 1 1005 1006 1 1006 1007 1
		 1007 1008 1 1008 1009 1 1009 1017 1 1010 1011 1 1011 1012 1 1012 1013 1 1013 1014 1
		 1014 1015 1 1015 1016 1 1016 1017 1 1017 1025 1 1018 1019 1 1019 1020 1 1020 1021 1
		 1021 1022 1 1022 1023 1 1023 1024 1 1024 1025 1 1025 1033 1 1026 1027 1 1027 1869 1
		 1028 1876 1 1029 1875 1 1030 1874 1 1031 1873 1 1032 1872 1 1033 1871 1 1034 1035 1
		 1035 1766 1 1036 1767 1 1037 1768 1 1038 1769 1 1039 1770 1 1040 1771 1 1041 1772 1
		 1045 1046 1 1042 1043 1 1043 1044 1 1049 1856 1 1048 1047 1 1048 1144 1 1052 1168 1
		 1054 1055 0 1047 1046 1 1839 1050 1 1057 1058 1 1058 1065 1;
	setAttr ".ed[1162:1327]" 1059 1064 1 1060 1061 1 1061 1793 1 1062 1063 1 1049 1140 1
		 1053 1056 1 1056 1789 1 1063 1170 1 1064 1065 1 1065 1066 1 1066 1067 1 1067 1172 1
		 1068 1069 1 1069 1077 1 1070 1078 1 1071 1079 1 1072 1080 1 1073 1136 1 1074 1081 1
		 1075 1082 1 1076 1077 1 1077 1078 1 1078 1079 1 1079 1080 1 1080 1212 1 1081 1212 1
		 1082 1090 1 1083 1084 1 1084 1085 1 1085 1086 1 1086 1087 1 1087 1088 1 1088 1212 1
		 1089 1090 1 1090 1098 1 1091 1092 1 1092 1093 1 1093 1094 1 1094 1095 1 1095 1096 1
		 1096 1097 1 1097 1098 1 1098 1106 1 1099 1100 1 1100 1101 1 1101 1102 1 1102 1103 1
		 1103 1199 1 1104 1203 1 1105 1106 1 1106 1211 1 1107 1108 1 1108 1116 1 1109 1117 1
		 1110 1118 1 1111 1119 1 1112 1120 1 1113 1121 1 1114 1122 1 1115 1116 1 1116 1117 1
		 1117 1118 1 1118 1119 1 1119 1120 1 1120 1121 1 1121 1122 1 1122 1130 1 1123 5 1
		 1124 6 1 1125 7 1 1126 0 1 1127 1 1 1128 2 1 1129 3 1 1130 4 1 1131 1132 1 1132 1133 1
		 1133 1134 1 1134 1135 1 1135 1136 1 1136 1137 1 1137 1800 1 977 1178 1 1140 1141 1
		 1141 1142 1 1142 1143 1 1143 1144 1 1144 1145 1 1145 1146 1 1146 1191 1 1147 1148 1
		 1154 1901 1 1155 1902 1 1156 1903 1 1157 1904 1 1158 1905 1 1138 1159 1 1159 1160 1
		 1160 1161 1 1161 1162 1 1162 1164 1 1163 1164 1 1154 1864 1 1166 1167 1 1168 1792 1
		 1169 1170 1 1170 1171 1 1167 1173 1 1173 1172 1 1174 1179 1 1175 1180 1 1176 1184 1
		 1177 1181 1 976 1182 1 1178 1179 0 1179 1180 0 1180 1181 0 1181 1182 0 1183 1184 0
		 1184 1182 0 1185 1186 1 1186 1187 1 1187 1188 1 1188 1189 1 1189 1190 1 1190 1139 1
		 1191 1192 1 1192 1193 1 1193 1194 1 1194 1195 1 1195 1196 1 1196 1197 1 1198 1199 1
		 1199 1203 1 1200 1201 1 1201 1202 1 1202 1203 1 1204 1205 1 1205 1206 1 1206 1207 1
		 1207 1208 1 1208 1209 1 1209 1210 1 1210 1211 1 1153 1213 1 1213 1800 1 1214 1215 1
		 1215 1223 1 1216 1224 1 1217 1225 1 1218 1226 1 1219 1227 1 1220 1228 1 1221 1229 1
		 1222 1223 1 1223 1224 1 1224 1225 1 1225 1226 1 1226 1227 1 1227 1228 1 1228 1229 1
		 1229 1237 1 1230 1231 1 1231 1232 1 1232 1233 1 1233 1234 1;
	setAttr ".ed[1328:1493]" 1234 1235 1 1235 1236 1 1236 1237 1 1237 1245 1 1238 1239 1
		 1239 1240 1 1240 1241 1 1241 1242 1 1242 1243 1 1243 1244 1 1244 1245 1 1245 1253 1
		 1246 1247 1 1247 1248 1 1248 1249 1 1249 1250 1 1250 1251 1 1251 1252 1 1252 1253 1
		 1253 1261 1 1254 1255 1 1255 1256 1 1256 1257 1 1257 1258 1 1258 1259 1 1259 1260 1
		 1260 1261 1 1261 1269 1 1262 1263 1 1263 1264 1 1264 1265 1 1265 1266 1 1266 1267 1
		 1267 1268 1 1268 1269 1 1269 1277 1 1270 1271 1 1271 1272 1 1272 1273 1 1273 1274 1
		 1274 1275 1 1275 1276 1 1276 1277 1 1277 1285 1 1278 1279 1 1279 1280 1 1280 1281 1
		 1281 1282 1 1282 1283 1 1283 1284 1 1284 1285 1 1285 1293 1 1286 1287 1 1287 1288 1
		 1288 1289 1 1289 1290 1 1290 1291 1 1291 1292 1 1292 1293 1 1293 1660 1 1294 1295 1
		 1302 1303 1 1303 1311 1 1304 1312 1 1305 1313 1 1306 1314 1 1307 1315 1 1308 1316 1
		 1309 1317 1 1310 1311 1 1311 1312 1 1312 1313 1 1313 1314 1 1314 1315 1 1315 1316 1
		 1316 1317 1 1317 1325 1 1318 1319 1 1319 1320 1 1320 1321 1 1321 1322 1 1322 1323 1
		 1323 1324 1 1324 1325 1 1325 1333 1 1326 1327 1 1327 1328 1 1328 1329 1 1329 1330 1
		 1330 1331 1 1331 1332 1 1332 1333 1 1333 1340 1 1334 1335 1 1335 1336 1 1336 1337 1
		 1337 1338 1 1338 1339 1 1339 1385 1 1340 1385 1 1341 1342 1 1342 1343 1 1343 1344 1
		 1344 1345 1 1345 1346 1 1346 1347 1 1347 1385 1 1348 1356 1 1349 1350 1 1350 1351 1
		 1351 1352 1 1352 1353 1 1353 1354 1 1354 1355 1 1355 1356 1 1356 1364 1 1357 1358 1
		 1358 1359 1 1359 1360 1 1360 1361 1 1361 1362 1 1362 1363 1 1363 1364 1 1364 1387 1
		 1365 1366 1 1366 1389 1 1367 1388 1 1368 1386 1 1369 1370 1 1370 1371 1 1371 1389 1
		 1372 1388 1 1373 1374 1 1374 1375 1 1375 1386 1 1376 1387 1 1377 1378 1 1386 1387 1
		 1388 1389 1 1390 1391 1 1391 1399 1 1392 1400 1 1393 1401 1 1394 1402 1 1395 1403 1
		 1396 1404 1 1397 1405 1 1398 1399 1 1399 1400 1 1400 1401 1 1401 1402 1 1402 1403 1
		 1403 1404 1 1404 1405 1 1405 1413 1 1406 1407 1 1407 1408 1 1408 1409 1 1409 1410 1
		 1410 1411 1 1411 1412 1 1412 1413 1 1413 1421 1 1414 1415 1 1415 1416 1 1416 1417 1;
	setAttr ".ed[1494:1659]" 1417 1418 1 1418 1419 1 1419 1420 1 1420 1421 1 1421 1429 1
		 1422 1423 1 1423 1424 1 1424 1425 1 1425 1426 1 1426 1427 1 1427 1428 1 1428 1429 1
		 1429 1437 1 1430 1431 1 1431 1432 1 1432 1433 1 1433 1434 1 1434 1435 1 1435 1436 1
		 1436 1437 1 1437 1445 1 1438 1439 1 1439 1440 1 1440 1441 1 1441 1442 1 1442 1443 1
		 1443 1444 1 1444 1445 1 1445 1453 1 1446 1447 1 1447 1448 1 1448 1449 1 1449 1450 1
		 1450 1451 1 1451 1452 1 1452 1453 1 1453 1461 1 1454 1455 1 1455 1456 1 1456 1457 1
		 1457 1458 1 1458 1459 1 1459 1460 1 1460 1461 1 1461 1469 1 1462 1463 1 1463 1464 1
		 1464 1465 1 1465 1466 1 1466 1467 1 1467 1468 1 1468 1469 1 1469 1644 1 1470 1471 1
		 1478 1479 1 1479 1487 1 1480 1488 1 1481 1489 1 1482 1490 1 1483 1491 1 1484 1492 1
		 1485 1493 1 1486 1487 1 1487 1488 1 1488 1489 1 1489 1490 1 1490 1491 1 1491 1492 1
		 1492 1493 1 1493 1501 1 1494 1495 1 1495 1496 1 1496 1497 1 1497 1498 1 1498 1499 1
		 1499 1500 1 1500 1501 1 1501 1509 1 1502 1503 1 1503 1504 1 1504 1505 1 1505 1506 1
		 1506 1507 1 1507 1508 1 1508 1509 1 1509 1517 1 1510 1511 1 1511 1512 1 1512 1513 1
		 1513 1514 1 1514 1515 1 1515 1516 1 1516 1517 1 1517 1525 1 1518 1519 1 1519 1520 1
		 1520 1521 1 1521 1522 1 1522 1523 1 1523 1524 1 1524 1525 1 1525 1533 1 1526 1527 1
		 1527 1528 1 1528 1529 1 1529 1530 1 1530 1531 1 1531 1532 1 1532 1533 1 1533 1541 1
		 1534 1535 1 1535 1536 1 1536 1537 1 1537 1538 1 1538 1539 1 1539 1540 1 1540 1541 1
		 1541 1549 1 1542 1543 1 1543 1544 1 1544 1545 1 1545 1546 1 1546 1547 1 1547 1548 1
		 1548 1549 1 1549 1557 1 1550 1551 1 1551 1552 1 1552 1553 1 1553 1554 1 1554 1555 1
		 1555 1556 1 1556 1557 1 1557 1636 1 1558 1559 1 1566 1567 1 1567 1574 1 1568 1575 1
		 1569 1576 1 1570 1571 1 1571 1579 1 1572 1580 1 1573 1574 1 1574 1575 1 1575 1576 1
		 1576 1577 1 1578 1579 1 1579 1580 1 1580 1588 1 1581 1582 1 1582 1583 1 1583 1584 1
		 1584 1585 1 1585 1586 1 1586 1587 1 1587 1588 1 1588 1596 1 1589 1590 1 1590 1591 1
		 1591 1592 1 1592 1593 1 1593 1594 1 1594 1595 1 1595 1596 1 1596 1604 1 1597 1598 1;
	setAttr ".ed[1660:1825]" 1598 1599 1 1599 1600 1 1600 1601 1 1601 1602 1 1602 1603 1
		 1603 1604 1 1604 1612 1 1605 1606 1 1606 1607 1 1607 1608 1 1608 1609 1 1609 1610 1
		 1610 1611 1 1611 1612 1 1612 1628 1 1613 1614 1 1621 1622 1 1622 1623 1 1623 1624 1
		 1624 1625 1 1625 1626 1 1626 1627 1 1627 1628 1 1629 1630 1 1630 1631 1 1631 1632 1
		 1632 1633 1 1633 1634 1 1634 1635 1 1635 1636 1 1637 1638 1 1638 1639 1 1639 1640 1
		 1640 1641 1 1641 1642 1 1642 1643 1 1643 1644 1 1645 1646 1 1646 1647 1 1647 1648 1
		 1648 1649 1 1649 1650 1 1650 1651 1 1651 1652 1 1653 1654 1 1654 1655 1 1655 1656 1
		 1656 1657 1 1657 1658 1 1658 1659 1 1659 1660 1 1661 1672 1 1662 1663 0 1663 1678 1
		 1664 1665 0 1665 1666 0 1666 1671 1 1667 1668 0 1668 1669 0 1669 1680 1 1670 1685 1
		 1671 1686 1 1672 1675 1 1673 1674 1 1674 1683 1 1675 1676 1 1676 1677 1 1677 1678 1
		 1678 1696 1 1679 1696 1 1680 1695 1 1681 1682 1 1682 1683 1 1683 1692 1 1684 1688 1
		 1685 1688 1 1686 1687 1 1687 1689 1 1688 1706 1 1689 1690 1 1690 1705 1 1691 1692 1
		 1694 1701 1 1695 1698 1 1696 1699 1 1697 1698 1 1698 1700 1 1699 1703 1 1700 1701 1
		 1701 1702 1 1702 1713 1 1703 1704 1 1704 1705 1 1705 1722 1 1706 1719 1 1707 1713 1
		 1708 1709 1 1709 1711 1 1710 1714 1 1711 1716 1 1712 1713 1 1713 1717 1 1714 1716 1
		 1715 1722 1 1717 1726 1 1719 1733 1 1721 1740 1 1722 1723 1 1723 1724 1 1724 1725 1
		 1725 1726 1 1726 1727 1 1728 1729 1 1729 1730 1 1730 1731 1 1731 1732 1 1732 1733 1
		 1733 1734 1 1734 1735 1 1735 1736 1 1736 1737 1 1737 1738 1 1738 1739 1 1741 1742 1
		 1742 1773 1 1743 1774 1 1744 1775 1 1745 1746 1 1746 1777 1 1747 1779 1 1748 1778 1
		 1749 1750 1 1750 1752 1 1751 1756 1 1752 1753 1 1753 1754 1 1754 1755 1 1755 1756 1
		 1756 1785 1 1757 1758 1 1758 1759 1 1759 1760 1 1760 1761 1 1761 1762 1 1762 1763 1
		 1763 1764 1 1765 1766 1 1766 1767 1 1767 1768 1 1768 1769 1 1769 1770 1 1770 1771 1
		 1771 1772 1 1773 1780 1 1774 1775 1 1775 1776 1 1776 1777 1 1777 1778 1 1778 1779 1
		 1779 1780 1 1781 1782 1 1782 1783 1 1783 1784 1 1784 1785 1 1785 1786 1 1786 1787 1;
	setAttr ".ed[1826:1991]" 1787 1788 1 1789 1790 1 1790 1791 1 1791 1792 1 1792 1793 1
		 1793 1794 1 1794 1795 1 1795 1796 1 1796 1797 1 1797 1798 1 1798 1799 1 1055 1168 1
		 1061 277 1 394 271 1 377 376 1 376 375 1 375 374 1 374 373 1 373 372 1 200 201 1
		 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 200 207 1 208 215 1 208 216 1
		 209 217 1 210 218 1 211 219 1 212 220 1 213 221 1 214 222 1 216 223 1 216 224 1 217 225 1
		 218 226 1 219 227 1 220 228 1 221 229 1 222 230 1 224 231 1 256 1757 1 257 258 1
		 1757 1764 1 256 262 1 261 1763 1 260 1762 1 260 271 0 270 1798 1 271 1797 1 297 304 1
		 298 299 1 299 300 1 304 311 1 297 303 1 304 312 1 305 313 1 306 314 1 290 298 1 291 292 1
		 290 353 1 291 354 1 292 355 1 292 293 1 356 357 1 355 375 1 354 374 1 353 373 1 383 1912 1
		 382 1913 1 381 1914 1 269 287 1 284 396 1 276 395 1 281 395 1 284 392 1 382 1860 1
		 284 285 1 275 285 1 274 286 1 274 275 1 380 1862 1 392 393 1 381 1861 1 285 393 1
		 286 400 1 261 394 1 267 279 1 280 394 1 189 403 1 190 410 1 404 409 1 402 408 1 401 407 1
		 401 420 1 402 419 1 403 416 1 189 415 1 190 417 1 404 418 1 279 369 1 267 368 1 262 367 1
		 256 366 1 257 365 1 419 426 1 416 423 1 415 422 1 368 423 1 417 424 1 367 424 1 418 425 1
		 366 425 1 365 426 1 364 427 1 263 363 1 363 428 1 428 361 1 420 361 1 191 406 1 307 308 1
		 310 318 1 312 319 1 318 433 1 317 432 1 316 430 1 432 435 1 430 431 1 312 320 1 313 321 1
		 320 327 1 314 322 1 315 323 1 315 431 1 324 325 1 325 326 1 326 327 1 319 434 1 328 336 1
		 329 330 1 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 336 343 1 328 335 1 329 437 1
		 328 436 1 321 437 1 320 436 1 436 443 1 335 443 1 322 438 1 330 438 1 323 439 1 331 439 1
		 324 440 1 332 440 1 325 441 1 333 441 1 326 442 1 334 442 1;
	setAttr ".ed[1992:2157]" 259 1761 1 270 1841 0 259 266 1 1841 265 1 226 234 1
		 227 235 1 225 233 1 300 301 1 293 301 1 302 310 1 309 317 1 293 294 1 308 309 1 294 295 1
		 294 444 1 302 444 1 309 444 1 301 444 1 224 232 1 232 239 1 230 238 1 228 236 1 229 237 1
		 377 378 1 357 358 1 295 358 1 295 296 1 352 372 1 289 352 1 289 297 1 289 296 1 359 378 1
		 358 1801 1 296 1801 1 445 1801 1 352 1801 1 456 457 1 457 458 1 458 459 1 459 460 1
		 460 461 1 461 462 1 462 463 1 456 463 1 464 471 1 464 472 1 465 473 1 466 474 1 467 475 1
		 468 476 1 469 477 1 470 478 1 472 479 1 472 480 1 473 481 1 474 482 1 475 483 1 476 484 1
		 477 485 1 478 486 1 480 487 1 480 488 1 481 489 1 482 490 1 483 491 1 484 492 1 485 493 1
		 486 494 1 488 495 1 488 496 1 489 497 1 490 498 1 491 499 1 492 500 1 493 501 1 494 502 1
		 496 503 1 496 504 1 497 505 1 498 506 1 499 507 1 500 508 1 501 509 1 502 510 1 504 511 1
		 504 512 1 505 513 1 506 514 1 507 515 1 508 516 1 509 517 1 510 518 1 512 519 1 512 520 1
		 513 521 1 514 522 1 515 523 1 516 524 1 517 525 1 518 526 1 520 527 1 544 545 1 545 546 1
		 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 544 551 1 552 559 1 552 560 1 553 561 1
		 554 562 1 555 563 1 556 564 1 557 565 1 560 567 1 560 568 1 561 569 1 562 570 1 563 571 1
		 564 572 1 568 575 1 569 576 1 570 577 1 571 578 1 575 583 1 576 584 1 577 585 1 578 586 1
		 579 580 1 575 582 1 583 590 1 583 591 1 584 592 1 587 595 1 586 594 1 572 573 1 568 574 1
		 588 589 1 580 581 1 565 566 1 558 566 1 573 619 1 566 619 1 581 619 1 574 619 1 581 582 1
		 589 597 1 591 598 1 596 602 1 597 620 1 602 608 1 609 610 1 599 603 1 591 599 1 595 601 1
		 601 607 1 585 593 1 599 600 1 592 600 1 603 604 1 600 623 1 593 623 1 605 606 1 601 622 1;
	setAttr ".ed[2158:2323]" 606 607 1 594 622 1 632 640 1 633 634 1 634 635 1 635 636 1
		 636 637 1 637 638 1 638 639 1 640 647 1 632 639 1 640 648 1 641 649 1 642 650 1 643 651 1
		 644 652 1 645 653 1 646 654 1 648 655 1 648 656 1 649 657 1 650 658 1 651 659 1 652 660 1
		 653 661 1 654 662 1 656 663 1 656 664 1 657 665 1 658 666 1 659 667 1 660 668 1 661 669 1
		 662 670 1 664 671 1 664 672 1 665 673 1 666 674 1 667 675 1 668 676 1 669 677 1 670 678 1
		 672 679 1 672 680 1 673 681 1 674 682 1 675 683 1 676 684 1 677 685 1 678 686 1 680 687 1
		 680 688 1 681 689 1 682 690 1 683 691 1 684 692 1 685 693 1 686 694 1 688 695 1 688 696 1
		 689 697 1 690 698 1 691 699 1 692 700 1 693 701 1 694 702 1 696 703 1 720 728 1 721 722 1
		 722 723 1 723 724 1 724 725 1 725 726 1 726 727 1 728 735 1 720 727 1 728 736 1 729 737 1
		 730 738 1 731 739 1 732 740 1 733 741 1 734 742 1 736 743 1 736 744 1 737 745 1 738 746 1
		 739 747 1 740 748 1 741 749 1 742 750 1 744 751 1 744 752 1 745 753 1 746 754 1 747 755 1
		 748 756 1 749 757 1 750 758 1 752 759 1 752 760 1 753 761 1 754 762 1 755 763 1 756 764 1
		 757 765 1 758 766 1 760 767 1 760 768 1 761 769 1 762 770 1 763 771 1 764 772 1 765 773 1
		 766 774 1 768 775 1 768 776 1 769 777 1 770 778 1 771 779 1 772 780 1 773 781 1 774 782 1
		 776 783 1 776 784 1 777 785 1 778 786 1 779 787 1 780 788 1 781 789 1 782 790 1 784 791 1
		 807 815 1 808 809 1 809 810 1 810 811 1 811 812 1 812 813 1 813 814 1 815 822 1 807 814 1
		 815 823 1 816 824 1 817 825 1 818 826 1 819 827 1 820 828 1 821 829 1 823 830 1 823 831 1
		 824 832 1 825 833 1 826 834 1 827 835 1 828 836 1 829 837 1 831 838 1 831 839 1 832 840 1
		 833 841 1 834 842 1 835 843 1 836 844 1 837 845 1 839 846 1 848 849 1;
	setAttr ".ed[2324:2489]" 849 850 1 850 851 1 851 852 1 852 853 1 853 854 1 847 854 1
		 848 856 1 847 855 1 840 856 1 839 855 1 855 862 1 854 862 1 841 857 1 849 857 1 842 858 1
		 850 858 1 843 859 1 851 859 1 844 860 1 852 860 1 845 861 1 853 861 1 793 794 1 794 795 1
		 795 796 1 796 797 1 797 798 1 798 799 1 792 799 1 793 864 1 792 863 1 785 864 1 784 863 1
		 863 870 1 799 870 1 786 865 1 794 865 1 787 866 1 795 866 1 788 867 1 796 867 1 789 868 1
		 797 868 1 790 869 1 798 869 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1
		 704 711 1 705 872 1 704 871 1 697 872 1 696 871 1 871 878 1 711 878 1 698 873 1 706 873 1
		 699 874 1 707 874 1 700 875 1 708 875 1 701 876 1 709 876 1 702 877 1 710 877 1 611 612 1
		 612 613 1 613 614 1 614 615 1 615 616 1 616 617 1 617 618 1 611 618 1 612 880 1 611 879 1
		 603 879 1 604 880 1 610 886 1 879 886 1 618 886 1 605 881 1 613 881 1 606 882 1 614 882 1
		 607 883 1 615 883 1 608 884 1 616 884 1 609 885 1 617 885 1 528 529 1 529 530 1 530 531 1
		 531 532 1 532 533 1 533 534 1 534 535 1 528 535 1 529 888 1 528 887 1 520 887 1 521 888 1
		 887 894 1 535 894 1 522 889 1 530 889 1 523 890 1 531 890 1 524 891 1 532 891 1 525 892 1
		 533 892 1 526 893 1 534 893 1 451 452 1 536 544 1 452 453 1 536 543 1 540 548 1 628 636 1
		 539 547 1 627 635 1 715 723 1 716 717 1 624 632 1 624 631 1 715 901 1 716 902 1 625 626 1
		 626 627 1 540 899 1 539 900 1 628 899 1 627 900 1 538 546 1 537 538 1 537 895 1 536 896 1
		 452 896 1 451 895 1 450 458 1 624 902 1 625 901 1 714 722 1 713 721 1 449 457 1 448 456 1
		 448 455 1 454 462 1 453 454 1 453 897 1 543 897 1 542 550 1 541 542 1 541 898 1 629 898 1
		 629 630 1 630 631 1 631 903 1 717 903 1 717 718 1 718 719 1 712 720 1;
	setAttr ".ed[2490:2655]" 712 713 1 901 907 1 714 907 1 901 904 1 626 904 1 900 905 1
		 538 905 1 895 905 1 895 906 1 450 906 1 905 920 1 906 909 1 449 909 1 904 918 1 907 908 1
		 713 908 1 712 917 1 719 916 1 542 913 1 898 913 1 898 914 1 630 914 1 914 928 1 903 915 1
		 718 915 1 915 916 1 897 912 1 913 930 1 454 912 1 455 911 1 448 910 1 908 925 1 913 931 1
		 931 933 1 914 934 1 915 936 1 912 937 1 911 938 1 937 948 1 933 944 1 931 942 1 932 943 1
		 942 944 1 934 945 1 935 946 1 916 1821 1 925 940 1 927 1817 1 919 922 1 918 922 1
		 922 923 1 192 193 1 192 950 1 945 950 1 193 945 1 942 950 1 192 199 1 199 948 1 198 206 1
		 948 949 1 198 949 1 197 205 1 196 204 1 195 203 1 194 202 1 193 194 1 945 951 1 194 951 1
		 941 952 1 803 810 1 804 812 1 952 961 1 804 805 1 805 806 1 800 807 1 800 801 1 801 802 1
		 802 803 1 803 953 1 802 967 1 953 954 1 954 922 1 196 957 1 195 958 1 194 959 1 951 960 1
		 804 962 1 805 963 1 961 962 1 962 973 1 806 964 1 960 973 1 964 965 1 800 965 1 959 972 1
		 965 966 1 801 966 1 958 971 1 966 971 1 968 969 1 957 970 1 955 957 1 197 956 1 923 924 1
		 920 924 1 955 974 1 909 924 1 938 939 1 910 939 1 924 939 1 956 957 1 975 1183 1
		 1176 1186 1 975 1185 1 976 1187 1 977 1174 1 1174 1190 1 978 986 1 979 1711 1 978 1716 1
		 978 985 1 986 993 1 985 1714 1 979 980 1 980 1717 1 1711 1717 1 980 981 1 981 1724 1
		 980 1725 1 981 982 1 982 1723 1 982 983 1 983 1722 1 983 984 1 984 1715 1 984 985 1
		 1714 1715 1 987 995 1 986 994 1 994 1001 1 988 996 1 989 997 1 990 998 1 991 999 1
		 992 1000 1 995 1003 1 994 1002 1 1002 1009 1 996 1004 1 997 1005 1 998 1006 1 999 1007 1
		 1000 1008 1 1003 1011 1 1002 1010 1 1010 1017 1 1004 1012 1 1005 1013 1 1006 1014 1
		 1007 1015 1 1008 1016 1 1011 1019 1 1010 1018 1 1018 1025 1 1012 1020 1 1013 1021 1;
	setAttr ".ed[2656:2821]" 1014 1022 1 1015 1023 1 1016 1024 1 1034 1765 1 1034 1041 1
		 1765 1772 1 1035 1036 1 1036 1037 1 1037 1038 1 1038 1039 1 1039 1040 1 1040 1041 1
		 1042 1048 1 1045 1051 1 1043 1142 1 1042 1143 1 1050 1056 1 1048 1052 1 1047 1168 1
		 1052 1145 1 1052 1060 1 1060 1146 1 1053 1067 1 1054 1790 1 1054 1839 0 1839 1789 1
		 1055 1791 1 1046 1055 0 1057 1066 1 1057 1053 1 1058 1059 1 1064 1170 1 1059 1169 1
		 1061 1168 1 1062 1169 1 1063 1165 1 1064 1166 1 1166 1171 1 1065 1167 1 1066 1173 1
		 1068 1076 1 1069 1132 1 1068 1131 1 1076 1082 1 1068 1075 1 1131 1800 1 1213 1147 1
		 1131 1147 1 1069 1070 1 1070 1133 1 1070 1071 1 1071 1134 1 1071 1072 1 1072 1135 1
		 1072 1073 1 1073 1212 1 1073 1074 1 1074 1137 1 1074 1075 1 1081 1082 1 1137 1153 1
		 1077 1084 1 1076 1083 1 1083 1090 1 1078 1085 1 1079 1086 1 1080 1087 1 1081 1089 1
		 1088 1089 1 1084 1092 1 1083 1091 1 1091 1098 1 1085 1093 1 1086 1094 1 1087 1095 1
		 1088 1096 1 1089 1097 1 1092 1100 1 1091 1099 1 1099 1106 1 1093 1101 1 1094 1102 1
		 1095 1198 1 1094 1199 1 1096 1200 1 1198 1200 1 1097 1201 1 1098 1202 1 1105 1202 1
		 1100 1205 1 1099 1204 1 1204 1211 1 1101 1206 1 1102 1207 1 1103 1208 1 1103 1104 1
		 1104 1209 1 1104 1105 1 1105 1210 1 1107 1115 1 1108 1205 1 1107 1204 1 1115 1122 1
		 1107 1114 1 1114 1211 1 1108 1109 1 1109 1206 1 1109 1110 1 1110 1207 1 1110 1111 1
		 1111 1208 1 1111 1112 1 1112 1209 1 1112 1113 1 1113 1210 1 1113 1114 1 1148 1149 1
		 1149 1150 1 1150 1151 1 1151 1152 1 1152 1153 1 1153 1138 1 1197 1139 1 1140 1197 1
		 1141 1196 1 1142 1195 1 1143 1194 1 1144 1193 1 1145 1192 1 1148 1164 1 1147 1163 1
		 1149 1162 1 1150 1161 1 1151 1160 1 1152 1159 1 1154 1155 1 1155 1156 1 1156 1157 1
		 1157 1158 1 1156 1866 1 1155 1865 1 1174 1175 1 1175 1189 1 1175 1177 1 1177 1188 1
		 1177 976 1 1186 1192 1 1185 1191 1 1187 1193 1 1188 1194 1 1189 1195 1 1190 1196 1
		 1200 1203 1 1214 1222 1 1215 1675 1 1214 1676 1 1214 1221 1 1222 1229 1 1221 1677 1
		 1215 1216 1 1216 1672 1 1216 1217 1 1217 1661 1 1217 1218 1 1218 1662 1 1661 1662 0;
	setAttr ".ed[2822:2987]" 1218 1219 1 1219 1663 1 1219 1220 1 1220 1678 1 1220 1221 1
		 1223 1231 1 1222 1230 1 1230 1237 1 1224 1232 1 1225 1233 1 1226 1234 1 1227 1235 1
		 1228 1236 1 1231 1239 1 1230 1238 1 1238 1245 1 1232 1240 1 1233 1241 1 1234 1242 1
		 1235 1243 1 1236 1244 1 1239 1247 1 1238 1246 1 1246 1253 1 1240 1248 1 1241 1249 1
		 1242 1250 1 1243 1251 1 1244 1252 1 1247 1255 1 1246 1254 1 1254 1261 1 1248 1256 1
		 1249 1257 1 1250 1258 1 1251 1259 1 1252 1260 1 1255 1263 1 1254 1262 1 1262 1269 1
		 1256 1264 1 1257 1265 1 1258 1266 1 1259 1267 1 1260 1268 1 1263 1271 1 1262 1270 1
		 1270 1277 1 1264 1272 1 1265 1273 1 1266 1274 1 1267 1275 1 1268 1276 1 1271 1279 1
		 1270 1278 1 1278 1285 1 1272 1280 1 1273 1281 1 1274 1282 1 1275 1283 1 1276 1284 1
		 1279 1287 1 1278 1286 1 1286 1293 1 1280 1288 1 1281 1289 1 1282 1290 1 1283 1291 1
		 1284 1292 1 1287 1654 1 1286 1653 1 1653 1660 1 1288 1655 1 1289 1656 1 1290 1657 1
		 1291 1658 1 1292 1659 1 1295 1654 1 1294 1653 1 1294 1301 1 1301 1660 1 1295 1296 1
		 1296 1655 1 1296 1297 1 1297 1656 1 1297 1298 1 1298 1657 1 1298 1299 1 1299 1658 1
		 1299 1300 1 1300 1659 1 1300 1301 1 1302 1310 1 1303 1661 1 1302 1662 1 1302 1309 1
		 1310 1317 1 1309 1663 1 1303 1304 1 1304 1671 1 1661 1671 1 1304 1305 1 1305 1666 1
		 1305 1306 1 1306 1665 1 1306 1307 1 1307 1664 1 1307 1308 1 1308 1679 1 1664 1679 1
		 1308 1309 1 1663 1679 1 1311 1319 1 1310 1318 1 1318 1325 1 1312 1320 1 1313 1321 1
		 1314 1322 1 1315 1323 1 1316 1324 1 1319 1327 1 1318 1326 1 1326 1333 1 1320 1328 1
		 1321 1329 1 1322 1330 1 1323 1331 1 1324 1332 1 1327 1335 1 1326 1334 1 1334 1340 1
		 1328 1336 1 1329 1337 1 1330 1338 1 1331 1339 1 1332 1385 1 1335 1342 1 1334 1341 1
		 1340 1348 1 1341 1348 1 1336 1343 1 1337 1344 1 1338 1345 1 1339 1346 1 1347 1348 1
		 1342 1350 1 1341 1349 1 1349 1356 1 1343 1351 1 1344 1352 1 1345 1353 1 1346 1354 1
		 1347 1355 1 1350 1358 1 1349 1357 1 1357 1364 1 1351 1359 1 1352 1360 1 1353 1361 1
		 1354 1362 1 1355 1363 1 1358 1366 1 1357 1365 1 1365 1387 1 1359 1389 1 1360 1388 1;
	setAttr ".ed[2988:3153]" 1361 1367 1 1367 1368 1 1362 1368 1 1363 1386 1 1366 1370 1
		 1365 1369 1 1369 1376 1 1368 1374 1 1367 1373 1 1372 1373 1 1370 1646 1 1369 1645 1
		 1376 1652 1 1645 1652 1 1371 1647 1 1371 1372 1 1372 1648 1 1373 1649 1 1374 1650 1
		 1375 1651 1 1375 1376 1 1378 1646 1 1377 1645 1 1377 1384 1 1384 1652 1 1378 1379 1
		 1379 1647 1 1379 1380 1 1380 1648 1 1380 1381 1 1381 1649 1 1381 1382 1 1382 1650 1
		 1382 1383 1 1383 1651 1 1383 1384 1 1390 1398 1 1391 1667 1 1390 1668 1 1398 1405 1
		 1390 1397 1 1397 1669 1 1391 1392 1 1667 1670 1 1392 1670 1 1392 1393 1 1666 1670 1
		 1393 1666 1 1393 1394 1 1394 1665 1 1394 1395 1 1395 1664 1 1395 1396 1 1664 1680 1
		 1396 1680 1 1396 1397 1 1399 1407 1 1398 1406 1 1406 1413 1 1400 1408 1 1401 1409 1
		 1402 1410 1 1403 1411 1 1404 1412 1 1407 1415 1 1406 1414 1 1414 1421 1 1408 1416 1
		 1409 1417 1 1410 1418 1 1411 1419 1 1412 1420 1 1415 1423 1 1414 1422 1 1422 1429 1
		 1416 1424 1 1417 1425 1 1418 1426 1 1419 1427 1 1420 1428 1 1423 1431 1 1422 1430 1
		 1430 1437 1 1424 1432 1 1425 1433 1 1426 1434 1 1427 1435 1 1428 1436 1 1431 1439 1
		 1430 1438 1 1438 1445 1 1432 1440 1 1433 1441 1 1434 1442 1 1435 1443 1 1436 1444 1
		 1439 1447 1 1438 1446 1 1446 1453 1 1440 1448 1 1441 1449 1 1442 1450 1 1443 1451 1
		 1444 1452 1 1447 1455 1 1446 1454 1 1454 1461 1 1448 1456 1 1449 1457 1 1450 1458 1
		 1451 1459 1 1452 1460 1 1455 1463 1 1454 1462 1 1462 1469 1 1456 1464 1 1457 1465 1
		 1458 1466 1 1459 1467 1 1460 1468 1 1463 1638 1 1462 1637 1 1637 1644 1 1464 1639 1
		 1465 1640 1 1466 1641 1 1467 1642 1 1468 1643 1 1471 1638 1 1470 1637 1 1470 1477 1
		 1477 1644 1 1471 1472 1 1472 1639 1 1472 1473 1 1473 1640 1 1473 1474 1 1474 1641 1
		 1474 1475 1 1475 1642 1 1475 1476 1 1476 1643 1 1476 1477 1 1478 1486 1 1479 1674 1
		 1478 1683 1 1486 1493 1 1478 1485 1 1485 1682 1 1479 1480 1 1480 1673 1 1480 1481 1
		 1667 1673 1 1481 1667 1 1481 1482 1 1482 1668 1 1482 1483 1 1483 1669 1 1483 1484 1
		 1669 1681 1 1484 1681 1 1484 1485 1 1487 1495 1 1486 1494 1 1494 1501 1 1488 1496 1;
	setAttr ".ed[3154:3319]" 1489 1497 1 1490 1498 1 1491 1499 1 1492 1500 1 1495 1503 1
		 1494 1502 1 1502 1509 1 1496 1504 1 1497 1505 1 1498 1506 1 1499 1507 1 1500 1508 1
		 1503 1511 1 1502 1510 1 1510 1517 1 1504 1512 1 1505 1513 1 1506 1514 1 1507 1515 1
		 1508 1516 1 1511 1519 1 1510 1518 1 1518 1525 1 1512 1520 1 1513 1521 1 1514 1522 1
		 1515 1523 1 1516 1524 1 1519 1527 1 1518 1526 1 1526 1533 1 1520 1528 1 1521 1529 1
		 1522 1530 1 1523 1531 1 1524 1532 1 1527 1535 1 1526 1534 1 1534 1541 1 1528 1536 1
		 1529 1537 1 1530 1538 1 1531 1539 1 1532 1540 1 1535 1543 1 1534 1542 1 1542 1549 1
		 1536 1544 1 1537 1545 1 1538 1546 1 1539 1547 1 1540 1548 1 1543 1551 1 1542 1550 1
		 1550 1557 1 1544 1552 1 1545 1553 1 1546 1554 1 1547 1555 1 1548 1556 1 1551 1630 1
		 1550 1629 1 1629 1636 1 1552 1631 1 1553 1632 1 1554 1633 1 1555 1634 1 1556 1635 1
		 1559 1630 1 1558 1629 1 1558 1565 1 1565 1636 1 1559 1560 1 1560 1631 1 1560 1561 1
		 1561 1632 1 1561 1562 1 1562 1633 1 1562 1563 1 1563 1634 1 1563 1564 1 1564 1635 1
		 1564 1565 1 1566 1573 1 1567 1732 1 1566 1731 1 1573 1580 1 1566 1572 1 1572 1730 1
		 1567 1568 1 1568 1733 1 1568 1569 1 1569 1719 1 1569 1812 1 1570 1578 1 1571 1729 1
		 1570 1728 1 1577 1578 1 1727 1728 1 1571 1572 1 1574 1582 1 1573 1581 1 1581 1588 1
		 1575 1583 1 1576 1584 1 1577 1585 1 1578 1586 1 1579 1587 1 1582 1590 1 1581 1589 1
		 1589 1596 1 1583 1591 1 1584 1592 1 1585 1593 1 1586 1594 1 1587 1595 1 1590 1598 1
		 1589 1597 1 1597 1604 1 1591 1599 1 1592 1600 1 1593 1601 1 1594 1602 1 1595 1603 1
		 1598 1606 1 1597 1605 1 1605 1612 1 1599 1607 1 1600 1608 1 1601 1609 1 1602 1610 1
		 1603 1611 1 1606 1622 1 1605 1621 1 1621 1628 1 1607 1623 1 1608 1624 1 1609 1625 1
		 1610 1626 1 1611 1627 1 1614 1622 1 1613 1621 1 1613 1620 1 1620 1628 1 1614 1615 1
		 1615 1623 1 1615 1616 1 1616 1624 1 1616 1617 1 1617 1625 1 1617 1618 1 1618 1626 1
		 1618 1619 1 1619 1627 1 1619 1620 1 1672 1686 1 1679 1695 1 1671 1685 1 1673 1684 1
		 1670 1684 1 1680 1694 1 1681 1694 1 1685 1687 1 1686 1690 1 1675 1690 1 1674 1691 1;
	setAttr ".ed[3320:3485]" 1684 1691 1 1676 1705 1 1677 1704 1 1678 1703 1 1679 1697 1
		 1697 1699 1 1680 1700 1 1682 1820 1 1681 1702 1 1691 1706 1 1688 1689 1 1689 1721 1
		 1688 1720 1 1720 1719 1 1690 1740 1 1722 1740 1 1693 1814 1 1707 1718 1 1698 1709 1
		 1697 1708 1 1699 1710 1 1708 1710 1 1700 1711 1 1703 1714 1 1711 1712 1 1701 1712 1
		 1704 1715 1 1717 1718 1 1708 1716 1 1718 1727 1 1720 1734 1 1721 1735 1 1721 1723 1
		 1723 1736 1 1724 1737 1 1725 1738 1 1726 1739 1 1728 1739 1 1730 1739 1 1731 1738 1
		 1732 1737 1 1734 1737 1 186 273 1 268 273 1 186 265 1 272 273 1 185 1060 1 185 279 1
		 185 277 1 277 1794 1 278 282 1 278 1062 1 282 1063 1 268 269 1 268 288 1 263 264 1
		 186 1855 1 185 370 1 371 389 1 360 1138 1 287 288 1 288 398 1 398 399 1 380 379 1
		 405 1178 0 188 977 1 184 411 1 411 412 0 184 189 1 184 414 1 414 1185 1 369 370 1
		 370 421 1 421 1191 1 414 421 1 264 362 1 362 429 1 362 1140 1 429 1197 1 187 429 1
		 187 1139 1 188 191 1 187 188 1 359 360 1 360 446 1 446 447 1 389 390 1 378 445 1
		 445 447 1 445 372 1 371 372 1 447 371 1 1741 1780 1 242 1884 1 1742 1743 1 1773 1774 1
		 241 1877 1 1743 1744 1 240 1878 1 1745 1776 1 246 1880 1 1744 1745 1 240 247 1 1741 1747 1
		 243 244 1 1747 1748 1 244 245 1 1746 1748 1 245 246 1 1035 1782 1 1034 1783 1 1026 1870 1
		 1041 1784 1 1026 1033 1 1749 1751 1 1036 1781 1 1027 1028 1 1037 1788 1 1781 1788 1
		 1028 1029 1 1038 1787 1 1029 1030 1 1039 1786 1 1030 1031 1 1040 1785 1 1031 1032 1
		 1032 1033 1 234 242 1 233 241 1 1019 1027 1 1020 1028 1 232 240 1 1018 1026 1 238 246 1
		 1024 1032 1 237 245 1 1023 1031 1 235 243 1 1021 1029 1 236 244 1 1022 1030 1 344 345 1
		 337 345 1 336 344 1 345 346 1 338 346 1 346 347 1 339 347 1 347 348 1 340 348 1 348 349 1
		 341 349 1 349 350 1 342 350 1 350 351 1 344 351 1 1123 1124 1 1116 1124 1 1115 1123 1
		 1123 1130 1 1124 1125 1 1117 1125 1 1125 1126 1 1118 1126 1 1126 1127 1 1119 1127 1;
	setAttr ".ed[3486:3651]" 1127 1128 1 1120 1128 1 1128 1129 1 1121 1129 1 1129 1130 1
		 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 248 255 1 1043 1766 1
		 1042 1765 1 1044 1857 1 1051 1768 1 1045 1769 1 1046 1770 1 1047 1771 1 1048 1772 1
		 250 1773 1 249 1774 1 248 1775 1 255 1776 1 254 1777 1 253 1778 1 252 1779 1 251 1780 1
		 1752 1781 1 1750 1782 1 1749 1783 1 1751 1784 1 1755 1786 1 1754 1787 1 1753 1788 1
		 1057 1789 1 1058 1790 1 1059 1791 1 1169 1792 1 1062 1793 1 278 1794 1 281 1795 1
		 395 1796 1 276 1797 1 275 1798 1 274 1799 1 1136 1152 1 1135 1151 1 1134 1150 1 1133 1149 1
		 1132 1148 1 1075 1800 1 1049 1044 1 263 258 1 1044 1141 1 258 364 1 1300 1802 1 534 1803 1
		 1802 1296 1 1294 1802 1 1802 1298 1 1803 530 1 528 1803 1 1803 532 1 1379 1804 1
		 613 1805 1 1804 1383 1 1377 1804 1 1804 1381 1 1805 617 1 611 1805 1 1805 615 1 1476 1806 1
		 710 1807 1 1806 1472 1 1474 1806 1 1806 1470 1 1807 706 1 708 1807 1 1807 704 1 1564 1808 1
		 798 1809 1 1808 1560 1 1562 1808 1 1808 1558 1 1809 794 1 796 1809 1 1809 792 1 1615 1810 1
		 849 1811 1 1810 1619 1 1613 1810 1 1810 1617 1 1811 853 1 847 1811 1 1811 851 1 1813 1719 1
		 1814 1706 1 1577 1812 1 1812 1813 1 1813 1814 1 1814 1692 1 1816 953 1 1817 940 1
		 811 1815 1 1815 1816 1 1816 1817 1 1817 926 1 1570 1812 1 804 1815 1 1813 1818 1
		 1818 1693 1 1816 1819 1 1819 927 1 1818 1570 1 1819 804 1 1820 1693 1 1692 1820 1
		 1821 927 1 926 1821 1 1820 1702 1 1821 936 1 1693 1822 1 1822 1702 1 927 1823 1 1823 936 1
		 1822 1707 1 1823 941 1 1818 1824 1 1824 1822 1 1819 1825 1 1825 1823 1 1824 1718 1
		 1825 952 1 1824 1826 1 1826 1727 1 1825 1827 1 1827 961 1 1826 1570 1 1827 804 1
		 923 1828 1 1689 1829 1 1828 954 1 1828 969 1 1829 1720 1 1829 1735 1 282 1830 1 283 1831 1
		 1164 1906 1 391 1910 1 1834 1832 1 1832 1909 1 1835 1908 1 1833 1907 1 1836 1833 1
		 384 1834 1 1832 1835 1 1835 1833 1 1836 1158 1 1831 1830 1 1830 1165 1 1165 1886 1
		 1831 1898 1 1171 1165 1 397 1831 1;
	setAttr ".ed[3652:3817]" 191 361 1 977 1139 1 1841 1840 1 1837 1767 1 1051 1837 1
		 1837 1043 1 1838 1759 1 266 1838 1 1838 257 1 1857 1837 1 1857 1839 1 1839 1051 0
		 1840 1838 1 1841 266 0 1045 1842 1 1842 1843 1 1055 1845 0 1843 1845 1 1046 1844 1
		 1844 1845 1 1842 1844 1 1054 1843 1 1051 1847 0 1846 1847 0 1846 1843 1 1842 1847 0
		 1839 1846 1 1841 1848 1 1848 1849 1 270 1849 1 259 1850 1 266 1851 0 1850 1851 0
		 1850 1849 1 1848 1851 0 260 1852 1 1850 1852 1 1852 1853 1 1849 1853 1 271 1853 1
		 1840 258 1 1854 265 1 1855 264 1 1856 1050 1 1840 1854 1 1854 1855 1 1855 1856 1
		 1856 1857 1 392 1896 1 1166 1888 1 1158 1868 1 384 1858 1 1858 1897 1 1859 383 1
		 1860 1895 1 1861 1894 1 1862 1893 1 1863 1892 1 1864 1891 1 1865 1890 1 1866 1889 1
		 1867 1157 1 1868 1887 1 1858 1859 1 1859 1860 1 1860 1861 1 1861 1862 1 1862 1863 1
		 1863 1864 1 1864 1865 1 1865 1866 1 1866 1867 1 1867 1868 1 1868 1833 1 1858 1832 1
		 1869 1750 1 1870 1749 1 1871 1751 1 1872 1756 1 1873 1755 1 1874 1754 1 1875 1753 1
		 1876 1752 1 1869 1870 1 1870 1871 1 1871 1872 1 1872 1873 1 1873 1874 1 1874 1875 1
		 1875 1876 1 1876 1869 1 1877 1743 1 1878 1744 1 1879 1745 1 1880 1746 1 1881 1748 1
		 1882 1747 1 1883 1741 1 1884 1742 1 1877 1878 1 1878 1879 1 1879 1880 1 1880 1881 1
		 1881 1882 1 1882 1883 1 1883 1884 1 1884 1877 1 1885 1835 1 1886 1833 1 1888 1867 1
		 1896 1859 1 1898 1832 1 1885 1886 1 1886 1887 1 1887 1888 1 1888 1889 1 1889 1890 1
		 1890 1891 1 1891 1892 1 1892 1893 1 1893 1894 1 1894 1895 1 1895 1896 1 1896 1897 1
		 1897 1898 1 1898 1885 1 1830 1885 1 1887 1171 1 1889 1167 1 1890 1173 1 1891 1172 1
		 1892 398 1 1893 399 1 1894 400 1 1895 393 1 1897 397 1 1899 380 1 1900 379 1 1901 1138 1
		 1902 1159 1 1903 1160 1 1904 1161 1 1905 1162 1 1906 1836 1 1907 1163 1 1908 389 1
		 1909 390 1 1910 1834 1 1911 388 1 1912 387 1 1913 386 1 1914 385 1 1899 1900 1 1900 1901 1
		 1901 1902 1 1902 1903 1 1903 1904 1 1904 1905 1 1905 1906 1 1906 1907 1 1907 1908 1
		 1908 1909 1 1909 1910 1 1910 1911 1 1911 1912 1 1912 1913 1;
	setAttr ".ed[3818:3819]" 1913 1914 1 1914 1899 1;
	setAttr -s 1906 -ch 7624 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -4
		mu 0 4 3 4 5 0
		f 4 7 8 9 -2
		mu 0 4 1 6 7 2
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 -12
		mu 0 4 8 10 11 9
		f 4 16 17 18 -15
		mu 0 4 10 12 2266 11
		f 4 19 20 21 -18
		mu 0 4 2205 14 15 13
		f 4 22 -6 23 -21
		mu 0 4 14 5 4 15
		f 4 -3 24 25 26
		mu 0 4 3 2 16 17
		f 4 27 28 -5 -27
		mu 0 4 17 18 4 3
		f 4 -10 29 30 -25
		mu 0 4 2 7 19 16
		f 4 -13 31 32 -30
		mu 0 4 7 9 20 19
		f 4 -16 33 34 -32
		mu 0 4 9 11 21 20
		f 4 -19 35 36 -34
		mu 0 4 11 2266 2241 21
		f 4 -22 37 38 -36
		mu 0 4 13 15 23 22
		f 4 -24 -29 39 -38
		mu 0 4 15 4 18 23
		f 4 40 41 42 43
		mu 0 4 24 25 2264 2265
		f 4 44 45 46 -44
		mu 0 4 2265 2258 29 24
		f 4 47 48 49 -42
		mu 0 4 25 30 2263 2264
		f 4 50 51 52 -49
		mu 0 4 30 32 2262 2263
		f 4 53 54 55 -52
		mu 0 4 32 34 2261 2262
		f 4 56 57 58 -55
		mu 0 4 34 36 2260 2261
		f 4 59 60 61 -58
		mu 0 4 2242 38 2256 2259
		f 4 62 -46 63 -61
		mu 0 4 38 29 2258 2256
		f 4 64 65 -45 66
		mu 0 4 40 41 28 27
		f 4 -43 67 68 -67
		mu 0 4 27 26 42 40
		f 4 69 70 -64 -66
		mu 0 4 41 43 39 28
		f 4 71 72 -62 -71
		mu 0 4 2255 44 37 2257
		f 4 73 74 -59 -73
		mu 0 4 44 45 35 37
		f 4 75 76 -56 -75
		mu 0 4 45 46 33 35
		f 4 77 78 -53 -77
		mu 0 4 46 47 31 33
		f 4 79 -68 -50 -79
		mu 0 4 47 42 26 31
		f 4 -74 80 81 82
		mu 0 4 45 44 48 49
		f 4 83 84 -76 85
		mu 0 4 50 51 46 45
		f 4 86 87 -86 -83
		mu 0 4 49 52 50 45
		f 4 -72 88 89 -81
		mu 0 4 44 2255 2253 48
		f 4 -70 90 91 -89
		mu 0 4 43 41 54 53
		f 4 -65 92 93 -91
		mu 0 4 41 40 55 54
		f 4 -69 94 95 96
		mu 0 4 40 42 56 57
		f 4 -97 97 98 -93
		mu 0 4 40 57 58 55
		f 4 -80 99 100 -95
		mu 0 4 42 47 59 56
		f 4 -78 -85 101 -100
		mu 0 4 47 46 51 59
		f 4 -101 102 103 104
		mu 0 4 56 59 60 61
		f 4 105 106 -96 -105
		mu 0 4 61 62 57 56
		f 4 -102 107 108 -103
		mu 0 4 59 51 63 60
		f 4 109 110 -108 -84
		mu 0 4 50 64 63 51
		f 4 -107 111 112 -98
		mu 0 4 57 62 65 58
		f 4 -106 113 114 115
		mu 0 4 62 61 66 67
		f 4 -116 116 117 -112
		mu 0 4 62 67 68 65
		f 4 -104 -109 118 -114
		mu 0 4 61 60 63 66
		f 4 -111 119 -115 -119
		mu 0 4 63 64 67 66
		f 4 -110 -88 120 121
		mu 0 4 64 50 52 69
		f 4 122 -117 -120 -122
		mu 0 4 69 68 67 64
		f 4 -82 123 124 125
		mu 0 4 49 48 2252 2254
		f 4 126 127 -87 -126
		mu 0 4 2254 2245 52 49
		f 4 -90 128 129 -124
		mu 0 4 48 2253 2251 2252
		f 4 -92 130 131 -129
		mu 0 4 53 54 2249 2250
		f 4 -94 132 133 -131
		mu 0 4 54 55 2248 2249
		f 4 -99 134 135 -133
		mu 0 4 55 58 2247 2248
		f 4 -113 136 137 -135
		mu 0 4 58 65 2246 2247
		f 4 -118 138 139 -137
		mu 0 4 65 68 2244 2246
		f 4 -121 -128 140 141
		mu 0 4 69 52 2245 2243
		f 4 142 -139 -123 -142
		mu 0 4 2243 2244 68 69
		f 4 -125 143 144 145
		mu 0 4 71 70 80 81
		f 4 146 147 -127 -146
		mu 0 4 81 82 72 71
		f 4 -130 148 149 -144
		mu 0 4 70 73 83 80
		f 4 -132 150 151 -149
		mu 0 4 73 74 84 83
		f 4 -134 152 153 -151
		mu 0 4 74 75 85 84
		f 4 -136 154 155 -153
		mu 0 4 75 76 86 85
		f 4 -138 156 157 -155
		mu 0 4 76 77 87 86
		f 4 -140 158 159 -157
		mu 0 4 77 78 88 87
		f 4 -141 -148 160 161
		mu 0 4 79 72 82 89
		f 4 162 -159 -143 -162
		mu 0 4 89 88 78 79
		f 4 -145 -150 163 164
		mu 0 4 81 80 83 90
		f 4 165 166 -147 -165
		mu 0 4 90 91 82 81
		f 4 -152 -154 167 -164
		mu 0 4 83 84 85 90
		f 4 -156 168 -166 -168
		mu 0 4 85 86 91 90
		f 4 -158 -160 169 -169
		mu 0 4 86 87 88 91
		f 4 -161 -167 -170 -163
		mu 0 4 89 82 91 88
		f 4 -47 170 -28 171
		mu 0 4 24 29 18 17
		f 4 -26 172 -41 -172
		mu 0 4 17 16 25 24
		f 4 -31 173 -48 -173
		mu 0 4 16 19 30 25
		f 4 -33 174 -51 -174
		mu 0 4 19 20 32 30
		f 4 -35 175 -54 -175
		mu 0 4 20 21 34 32
		f 4 -37 176 -57 -176
		mu 0 4 21 2241 36 34
		f 4 -39 177 -60 -177
		mu 0 4 22 23 38 2242
		f 4 -40 -171 -63 -178
		mu 0 4 23 18 29 38
		f 4 178 179 180 181
		mu 0 4 92 93 94 95
		f 4 -179 182 183 184
		mu 0 4 93 92 96 97
		f 4 -181 185 186 187
		mu 0 4 95 94 98 99
		f 4 -187 188 189 190
		mu 0 4 99 98 100 101
		f 4 -190 191 192 193
		mu 0 4 101 100 102 103
		f 4 -193 194 195 196
		mu 0 4 103 102 104 2209
		f 4 -196 197 198 199
		mu 0 4 105 2240 106 107
		f 4 -199 200 -184 201
		mu 0 4 107 106 97 96
		f 4 202 203 204 -180
		mu 0 4 93 108 109 94
		f 4 -203 -185 205 206
		mu 0 4 108 93 97 110
		f 4 -205 207 208 -186
		mu 0 4 94 109 111 98
		f 4 -209 209 210 -189
		mu 0 4 98 111 112 100
		f 4 -211 211 212 -192
		mu 0 4 100 112 113 102
		f 4 -213 213 214 -195
		mu 0 4 102 113 114 104
		f 4 -215 215 216 -198
		mu 0 4 2240 2216 115 106
		f 4 -217 217 -206 -201
		mu 0 4 106 115 110 97
		f 4 218 219 220 221
		mu 0 4 116 2239 2238 119
		f 4 -219 222 223 224
		mu 0 4 2239 116 120 2232
		f 4 -221 225 226 227
		mu 0 4 119 2238 2237 123
		f 4 -227 228 229 230
		mu 0 4 123 2237 2236 125
		f 4 -230 231 232 233
		mu 0 4 125 2236 2235 127
		f 4 -233 234 235 236
		mu 0 4 127 2235 2233 2215
		f 4 -236 237 238 239
		mu 0 4 129 2234 2230 131
		f 4 -239 240 -224 241
		mu 0 4 131 2230 2232 120
		f 4 242 -225 243 244
		mu 0 4 132 117 121 133
		f 4 -243 245 246 -220
		mu 0 4 117 132 134 118
		f 4 -244 -241 247 248
		mu 0 4 133 121 2231 2229
		f 4 -248 -238 249 250
		mu 0 4 135 130 128 136
		f 4 -250 -235 251 252
		mu 0 4 136 128 126 137
		f 4 -252 -232 253 254
		mu 0 4 137 126 124 138
		f 4 -254 -229 255 256
		mu 0 4 138 124 122 139
		f 4 -256 -226 -247 257
		mu 0 4 139 122 118 134
		f 4 258 259 260 -253
		mu 0 4 137 140 141 136
		f 4 261 -255 262 263
		mu 0 4 142 137 138 143
		f 4 -259 -262 264 265
		mu 0 4 140 137 142 144
		f 4 -261 266 267 -251
		mu 0 4 136 141 145 135
		f 4 -268 268 269 -249
		mu 0 4 2229 2226 146 133
		f 4 -270 270 271 -245
		mu 0 4 133 146 147 132
		f 4 272 273 274 -246
		mu 0 4 132 148 149 134
		f 4 -272 275 276 -273
		mu 0 4 132 147 150 148
		f 4 -275 277 278 -258
		mu 0 4 134 149 151 139
		f 4 -279 279 -263 -257
		mu 0 4 139 151 143 138
		f 4 280 281 282 -278
		mu 0 4 149 152 153 151
		f 4 -281 -274 283 284
		mu 0 4 152 149 148 154
		f 4 -283 285 286 -280
		mu 0 4 151 153 155 143
		f 4 -264 -287 287 288
		mu 0 4 142 143 155 156
		f 4 -277 289 290 -284
		mu 0 4 148 150 157 154
		f 4 291 292 293 -285
		mu 0 4 154 158 159 152
		f 4 -291 294 295 -292
		mu 0 4 154 157 160 158
		f 4 -294 296 -286 -282
		mu 0 4 152 159 155 153
		f 4 -297 -293 297 -288
		mu 0 4 155 159 158 156
		f 4 298 299 -265 -289
		mu 0 4 156 161 144 142
		f 4 -299 -298 -296 300
		mu 0 4 161 156 158 160
		f 4 301 302 303 -260
		mu 0 4 140 2228 2227 141
		f 4 -302 -266 304 305
		mu 0 4 2228 140 144 2219
		f 4 -304 306 307 -267
		mu 0 4 141 2227 2224 145
		f 4 -308 308 309 -269
		mu 0 4 2226 2225 2223 146
		f 4 -310 310 311 -271
		mu 0 4 146 2223 2222 147
		f 4 -312 312 313 -276
		mu 0 4 147 2222 2221 150
		f 4 -314 314 315 -290
		mu 0 4 150 2221 2220 157
		f 4 -316 316 317 -295
		mu 0 4 157 2220 2217 160
		f 4 318 319 -305 -300
		mu 0 4 161 2218 2219 144
		f 4 -319 -301 -318 320
		mu 0 4 2218 161 160 2217
		f 4 321 322 323 -303
		mu 0 4 162 172 173 163
		f 4 -322 -306 324 325
		mu 0 4 172 162 164 174
		f 4 -324 326 327 -307
		mu 0 4 163 173 175 165
		f 4 -328 328 329 -309
		mu 0 4 165 175 176 166
		f 4 -330 330 331 -311
		mu 0 4 166 176 177 167
		f 4 -332 332 333 -313
		mu 0 4 167 177 178 168
		f 4 -334 334 335 -315
		mu 0 4 168 178 179 169
		f 4 -336 336 337 -317
		mu 0 4 169 179 180 170
		f 4 338 339 -325 -320
		mu 0 4 171 181 174 164
		f 4 -339 -321 -338 340
		mu 0 4 181 171 170 180
		f 4 341 342 -327 -323
		mu 0 4 172 182 175 173
		f 4 -342 -326 343 344
		mu 0 4 182 172 174 183
		f 4 -343 345 -331 -329
		mu 0 4 175 182 177 176
		f 4 -346 -345 346 -333
		mu 0 4 177 182 183 178
		f 4 -347 347 -337 -335
		mu 0 4 178 183 180 179
		f 4 -341 -348 -344 -340
		mu 0 4 181 180 183 174
		f 4 348 -207 349 -223
		mu 0 4 116 108 110 120
		f 4 -349 -222 350 -204
		mu 0 4 108 116 119 109
		f 4 -351 -228 351 -208
		mu 0 4 109 119 123 111
		f 4 -352 -231 352 -210
		mu 0 4 111 123 125 112
		f 4 -353 -234 353 -212
		mu 0 4 112 125 127 113
		f 4 -354 -237 354 -214
		mu 0 4 113 127 2215 114
		f 4 -355 -240 355 -216
		mu 0 4 2216 129 131 115
		f 4 -356 -242 -350 -218
		mu 0 4 115 131 120 110
		f 4 -380 -372 1845 372
		mu 0 4 184 185 186 187
		f 4 -381 -373 1846 373
		mu 0 4 188 184 187 189
		f 4 -382 -374 1847 374
		mu 0 4 190 188 189 191
		f 4 -383 -375 1848 375
		mu 0 4 192 190 191 193
		f 4 -384 -376 1849 376
		mu 0 4 2203 192 193 195
		f 4 -385 -377 1850 377
		mu 0 4 196 194 2087 197
		f 4 -386 -378 1851 378
		mu 0 4 198 196 197 199
		f 4 -1853 371 1853 -379
		mu 0 4 199 186 185 198
		f 4 -388 -1855 379 1855
		mu 0 4 200 201 185 184
		f 4 -389 -1856 380 1856
		mu 0 4 202 200 184 188
		f 4 -390 -1857 381 1857
		mu 0 4 203 202 188 190
		f 4 -391 -1858 382 1858
		mu 0 4 204 203 190 192
		f 4 -392 -1859 383 1859
		mu 0 4 2202 204 192 2203
		f 4 -393 -1860 384 1860
		mu 0 4 206 205 194 196
		f 4 -394 -1861 385 386
		mu 0 4 207 206 196 198
		f 4 -1854 1854 1861 -387
		mu 0 4 198 185 201 207
		f 4 -396 -1863 387 1863
		mu 0 4 208 209 201 200
		f 4 -397 -1864 388 1864
		mu 0 4 210 208 200 202
		f 4 -398 -1865 389 1865
		mu 0 4 211 210 202 203
		f 4 -399 -1866 390 1866
		mu 0 4 212 211 203 204
		f 4 -400 -1867 391 1867
		mu 0 4 2192 212 204 2202
		f 4 -401 -1868 392 1868
		mu 0 4 214 213 205 206
		f 4 -402 -1869 393 394
		mu 0 4 215 214 206 207
		f 4 -1862 1862 1869 -395
		mu 0 4 207 201 209 215
		f 4 -428 1870 1799 -429
		mu 0 4 216 217 218 219
		f 4 3660 428 1800 -3659
		mu 0 4 220 216 219 221
		f 4 -1873 -1871 1873 432
		mu 0 4 222 218 217 223
		f 4 1805 -433 -432 1874
		mu 0 4 224 222 223 225
		f 4 1804 -1875 -431 1875
		mu 0 4 226 224 225 2200
		f 4 1835 -1878 440 1878
		mu 0 4 1900 229 230 231
		f 4 -468 1879 474 -469
		mu 0 4 232 233 2198 235
		f 4 -1881 468 475 -470
		mu 0 4 236 232 235 237
		f 4 -1882 469 476 -471
		mu 0 4 238 236 237 239
		f 4 -1883 -1880 1883 473
		mu 0 4 240 234 2190 241
		f 4 -475 1884 482 -1886
		mu 0 4 235 2198 2196 243
		f 4 -476 1885 483 -1887
		mu 0 4 237 235 243 244
		f 4 -461 1887 1880 -462
		mu 0 4 245 246 232 236
		f 4 -1889 461 1881 -463
		mu 0 4 247 245 236 238
		f 4 -1890 460 1890 -524
		mu 0 4 248 246 245 249
		f 4 -1891 1888 1891 -525
		mu 0 4 249 245 247 250
		f 4 -1892 1892 463 -526
		mu 0 4 250 247 251 252
		f 4 1840 -527 1893 527
		mu 0 4 253 254 252 255
		f 4 -546 -1841 546 550
		mu 0 4 2352 254 253 2353
		f 4 1841 -1895 525 526
		mu 0 4 254 258 250 252
		f 4 -545 -1842 545 551
		mu 0 4 2351 258 254 2352
		f 4 1842 -1896 524 1894
		mu 0 4 258 260 249 250
		f 4 1843 -1897 523 1895
		mu 0 4 260 261 248 249
		f 4 -544 -1843 544 552
		mu 0 4 2350 260 258 2351
		f 4 -542 -1845 542 -556
		mu 0 4 2339 264 261 2349
		f 4 -543 -1844 543 553
		mu 0 4 2349 261 260 2350
		f 4 -557 548 3816 -1898
		mu 0 4 2362 267 2334 2354
		f 4 -558 1897 3817 -1899
		mu 0 4 268 266 2335 2336
		f 4 -559 1898 3818 -1900
		mu 0 4 269 268 2336 2337
		f 4 -560 1899 3819 3788
		mu 0 4 270 269 2337 2322
		f 4 -1902 -446 1902 564
		mu 0 4 272 2197 1899 275
		f 4 450 454 -565 -1904
		mu 0 4 276 277 272 275
		f 4 -1905 1901 565 -562
		mu 0 4 280 2197 272 278
		f 4 444 445 1906 -1908
		mu 0 4 282 274 273 283
		f 4 -1901 -444 1908 456
		mu 0 4 284 285 286 287
		f 4 1909 1907 455 -1909
		mu 0 4 286 282 283 287
		f 4 -1907 1904 1911 -1914
		mu 0 4 283 273 2320 281
		f 4 -1915 -456 1913 562
		mu 0 4 288 287 283 281
		f 4 566 -458 -457 1914
		mu 0 4 288 289 284 287
		f 4 1839 -1877 430 1915
		mu 0 4 290 2199 2200 225
		f 4 1834 -1879 -1840 563
		mu 0 4 291 228 2199 290
		f 4 -1916 431 437 438
		mu 0 4 290 225 223 292
		f 4 449 1833 -564 -1918
		mu 0 4 293 294 291 290
		f 4 1917 -439 1916 448
		mu 0 4 293 290 292 295
		f 4 -579 -361 1918 570
		mu 0 4 296 297 298 299
		f 4 -580 -571 -362 1919
		mu 0 4 300 296 299 301
		f 4 576 -1920 -572 1920
		mu 0 4 302 300 301 303
		f 4 575 -1921 -570 1921
		mu 0 4 304 302 303 305
		f 4 574 -1922 -569 1922
		mu 0 4 306 304 305 307
		f 4 -1924 568 1924 585
		mu 0 4 308 307 305 309
		f 4 -1926 -1919 1926 581
		mu 0 4 310 299 298 311
		f 4 -1928 361 1925 582
		mu 0 4 312 301 299 310
		f 4 -1929 571 1927 583
		mu 0 4 313 303 301 312
		f 4 -1925 569 1928 584
		mu 0 4 309 305 303 313
		f 4 -1930 -1917 1930 537
		mu 0 4 314 295 292 315
		f 4 -1931 -438 1931 536
		mu 0 4 315 292 223 316
		f 4 -1932 -1874 1932 535
		mu 0 4 316 223 217 317
		f 4 -1933 427 1933 534
		mu 0 4 317 217 216 318
		f 4 -1934 1871 3542 533
		mu 0 4 318 216 319 320
		f 4 -587 -586 1934 592
		mu 0 4 321 308 309 322
		f 4 -1936 -582 1936 588
		mu 0 4 323 310 311 324
		f 4 -538 1937 -589 -539
		mu 0 4 314 315 323 324
		f 4 -1939 -583 1935 589
		mu 0 4 325 312 310 323
		f 4 -537 1939 -590 -1938
		mu 0 4 315 316 325 323
		f 4 -1941 -584 1938 590
		mu 0 4 326 313 312 325
		f 4 -536 1941 -591 -1940
		mu 0 4 316 317 326 325
		f 4 -1935 -585 1940 591
		mu 0 4 322 309 313 326
		f 4 -535 1942 -592 -1942
		mu 0 4 317 318 322 326
		f 4 -534 1943 -593 -1943
		mu 0 4 318 320 321 322
		f 4 -1944 -533 1945 -594
		mu 0 4 321 320 327 328
		f 4 586 593 1946 -1948
		mu 0 4 308 321 328 329
		f 4 573 -1923 -363 1948
		mu 0 4 330 306 307 331
		f 4 -477 1886 484 -478
		mu 0 4 239 237 244 332
		f 4 485 -479 -1950 477
		mu 0 4 332 333 334 239
		f 4 -481 1950 488 -482
		mu 0 4 240 335 336 337
		f 4 -1952 -1885 1882 481
		mu 0 4 337 242 234 240
		f 4 -1953 -488 1953 597
		mu 0 4 338 336 339 340
		f 4 -487 1954 595 -1954
		mu 0 4 339 333 341 340
		f 4 -1956 -596 1956 596
		mu 0 4 342 340 341 343
		f 4 -483 1957 490 -1959
		mu 0 4 243 2196 2193 345
		f 4 1951 489 -1960 -1958
		mu 0 4 242 337 346 344
		f 4 -484 1958 491 -1961
		mu 0 4 244 243 345 347
		f 4 492 -1962 -485 1960
		mu 0 4 347 348 332 244
		f 4 -1963 1961 493 494
		mu 0 4 343 332 348 349
		f 4 -1955 -486 1962 -1957
		mu 0 4 341 333 332 343
		f 4 -597 -495 1963 495
		mu 0 4 342 343 349 350
		f 4 599 -496 1964 496
		mu 0 4 351 342 350 352
		f 4 1965 -490 1966 -497
		mu 0 4 352 346 337 351
		f 4 -599 -598 1955 -600
		mu 0 4 351 338 340 342
		f 4 -489 1952 598 -1967
		mu 0 4 337 336 338 351
		f 4 -499 1967 506 -500
		mu 0 4 353 354 1911 356
		f 4 -1969 499 507 -501
		mu 0 4 357 353 356 358
		f 4 -1970 500 508 -502
		mu 0 4 359 357 358 360
		f 4 -1971 501 509 -503
		mu 0 4 361 359 360 362
		f 4 -1972 502 510 -504
		mu 0 4 363 361 362 364
		f 4 -1973 503 511 -505
		mu 0 4 365 363 364 366
		f 4 -1974 504 512 -506
		mu 0 4 367 365 366 368
		f 4 -1975 -1968 1975 505
		mu 0 4 368 355 2195 367
		f 4 498 1976 -601 -1978
		mu 0 4 354 353 369 2194
		f 4 -1979 -491 1979 600
		mu 0 4 369 345 2193 2194
		f 4 -1980 1959 497 -1981
		mu 0 4 370 344 346 371
		f 4 1980 -1982 -1976 1977
		mu 0 4 370 371 367 2195
		f 4 -1983 -492 1978 601
		mu 0 4 372 347 345 369
		f 4 1968 1983 -602 -1977
		mu 0 4 353 357 372 369
		f 4 -1985 -493 1982 602
		mu 0 4 373 348 347 372
		f 4 1969 1985 -603 -1984
		mu 0 4 357 359 373 372
		f 4 -1987 -494 1984 603
		mu 0 4 374 349 348 373
		f 4 1970 1987 -604 -1986
		mu 0 4 359 361 374 373
		f 4 -1989 -1964 1986 604
		mu 0 4 375 350 349 374
		f 4 1971 1989 -605 -1988
		mu 0 4 361 363 375 374
		f 4 -1991 -1965 1988 605
		mu 0 4 376 352 350 375
		f 4 1972 1991 -606 -1990
		mu 0 4 363 365 376 375
		f 4 -498 -1966 1990 606
		mu 0 4 371 346 352 376
		f 4 1973 1981 -607 -1992
		mu 0 4 365 367 371 376
		f 4 1803 -1876 -430 1992
		mu 0 4 377 2201 227 378
		f 4 -1994 1877 1836 -442
		mu 0 4 379 230 229 380
		f 4 436 1802 -1993 1994
		mu 0 4 381 382 377 378
		f 4 -1997 397 1997 -406
		mu 0 4 383 210 211 384
		f 4 -1999 396 1996 -405
		mu 0 4 385 208 210 383
		f 4 -1893 462 1999 -2001
		mu 0 4 251 247 238 386
		f 4 480 -474 -473 2001
		mu 0 4 335 240 241 387
		f 4 -2000 470 1949 -472
		mu 0 4 386 238 239 334
		f 4 487 -1951 -480 2002
		mu 0 4 339 336 335 388
		f 4 -1894 -464 2003 464
		mu 0 4 255 252 251 389
		f 4 -2005 478 486 -2003
		mu 0 4 388 334 333 339
		f 4 -466 -2006 2006 -2008
		mu 0 4 387 390 389 391
		f 4 -2009 479 -2002 2007
		mu 0 4 391 388 335 387
		f 4 -2007 -2004 2000 2009
		mu 0 4 391 389 251 386
		f 4 -2010 471 2004 2008
		mu 0 4 391 386 334 388
		f 4 -2011 395 1998 -404
		mu 0 4 392 209 208 385
		f 4 -403 -1870 2010 2011
		mu 0 4 393 215 209 392
		f 4 -2013 401 402 -410
		mu 0 4 394 214 215 393
		f 4 -1998 398 2013 -407
		mu 0 4 384 211 212 395
		f 4 -2014 399 2014 -408
		mu 0 4 395 212 2192 1917
		f 4 -2015 400 2012 -409
		mu 0 4 396 213 214 394
		f 4 549 -547 2015 -2024
		mu 0 4 271 2353 253 397
		f 4 -2016 -528 2016 528
		mu 0 4 397 253 255 398
		f 4 -465 2005 2017 -2017
		mu 0 4 255 389 390 398
		f 4 -2019 465 472 -467
		mu 0 4 399 390 387 241
		f 4 522 1896 1844 -2020
		mu 0 4 2191 248 261 264
		f 4 459 1889 -523 -2021
		mu 0 4 2189 246 248 2191
		f 4 467 -1888 -460 2021
		mu 0 4 233 232 246 2189
		f 4 2022 466 -1884 -2022
		mu 0 4 401 399 241 2190
		f 4 -2025 -2018 2018 2025
		mu 0 4 402 398 390 399
		f 4 -3408 -529 2024 -2027
		mu 0 4 403 397 398 402
		f 4 2027 -2026 -2023 2020
		mu 0 4 400 402 399 401
		f 4 -627 -619 2028 619
		mu 0 4 404 405 2094 407
		f 4 -628 -620 2029 620
		mu 0 4 408 404 407 409
		f 4 -629 -621 2030 621
		mu 0 4 410 408 409 411
		f 4 -630 -622 2031 622
		mu 0 4 2187 410 411 2208
		f 4 -631 -623 2032 623
		mu 0 4 414 412 413 415
		f 4 -632 -624 2033 624
		mu 0 4 416 414 415 417
		f 4 -633 -625 2034 625
		mu 0 4 418 416 417 419
		f 4 -2036 618 2036 -626
		mu 0 4 419 406 2188 418
		f 4 -635 -2038 626 2038
		mu 0 4 420 421 405 404
		f 4 -636 -2039 627 2039
		mu 0 4 422 420 404 408
		f 4 -637 -2040 628 2040
		mu 0 4 423 422 408 410
		f 4 -638 -2041 629 2041
		mu 0 4 2185 423 410 2187
		f 4 -639 -2042 630 2042
		mu 0 4 425 424 412 414
		f 4 -640 -2043 631 2043
		mu 0 4 426 425 414 416
		f 4 -641 -2044 632 633
		mu 0 4 427 426 416 418
		f 4 -2037 2037 2044 -634
		mu 0 4 418 2188 2186 427
		f 4 -643 -2046 634 2046
		mu 0 4 428 429 421 420
		f 4 -644 -2047 635 2047
		mu 0 4 430 428 420 422
		f 4 -645 -2048 636 2048
		mu 0 4 431 430 422 423
		f 4 -646 -2049 637 2049
		mu 0 4 2183 431 423 2185
		f 4 -647 -2050 638 2050
		mu 0 4 433 432 424 425
		f 4 -648 -2051 639 2051
		mu 0 4 434 433 425 426
		f 4 -649 -2052 640 641
		mu 0 4 435 434 426 427
		f 4 -2045 2045 2052 -642
		mu 0 4 427 2186 2184 435
		f 4 -651 -2054 642 2054
		mu 0 4 436 437 429 428
		f 4 -652 -2055 643 2055
		mu 0 4 438 436 428 430
		f 4 -653 -2056 644 2056
		mu 0 4 439 438 430 431
		f 4 -654 -2057 645 2057
		mu 0 4 2181 439 431 2183
		f 4 -655 -2058 646 2058
		mu 0 4 441 440 432 433
		f 4 -656 -2059 647 2059
		mu 0 4 442 441 433 434
		f 4 -657 -2060 648 649
		mu 0 4 443 442 434 435
		f 4 -2053 2053 2060 -650
		mu 0 4 435 2184 2182 443
		f 4 -659 -2062 650 2062
		mu 0 4 444 445 437 436
		f 4 -660 -2063 651 2063
		mu 0 4 446 444 436 438
		f 4 -661 -2064 652 2064
		mu 0 4 447 446 438 439
		f 4 -662 -2065 653 2065
		mu 0 4 2179 447 439 2181
		f 4 -663 -2066 654 2066
		mu 0 4 449 448 440 441
		f 4 -664 -2067 655 2067
		mu 0 4 450 449 441 442
		f 4 -665 -2068 656 657
		mu 0 4 451 450 442 443
		f 4 -2061 2061 2068 -658
		mu 0 4 443 2182 2180 451
		f 4 -667 -2070 658 2070
		mu 0 4 452 453 445 444
		f 4 -668 -2071 659 2071
		mu 0 4 454 452 444 446
		f 4 -669 -2072 660 2072
		mu 0 4 455 454 446 447
		f 4 -670 -2073 661 2073
		mu 0 4 2177 455 447 2179
		f 4 -671 -2074 662 2074
		mu 0 4 457 456 448 449
		f 4 -672 -2075 663 2075
		mu 0 4 458 457 449 450
		f 4 -673 -2076 664 665
		mu 0 4 459 458 450 451
		f 4 -2069 2069 2076 -666
		mu 0 4 451 2180 2178 459
		f 4 -675 -2078 666 2078
		mu 0 4 460 461 453 452
		f 4 -676 -2079 667 2079
		mu 0 4 462 460 452 454
		f 4 -677 -2080 668 2080
		mu 0 4 463 462 454 455
		f 4 -678 -2081 669 2081
		mu 0 4 2175 463 455 2177
		f 4 -679 -2082 670 2082
		mu 0 4 465 464 456 457
		f 4 -680 -2083 671 2083
		mu 0 4 466 465 457 458
		f 4 -681 -2084 672 673
		mu 0 4 467 466 458 459
		f 4 -2077 2077 2084 -674
		mu 0 4 459 2178 2176 467
		f 4 -683 -2086 674 2086
		mu 0 4 468 469 461 460
		f 4 -684 -2087 675 2087
		mu 0 4 470 468 460 462
		f 4 -685 -2088 676 2088
		mu 0 4 471 470 462 463
		f 4 -686 -2089 677 2089
		mu 0 4 2109 471 463 2175
		f 4 -687 -2090 678 2090
		mu 0 4 473 472 464 465
		f 4 -688 -2091 679 2091
		mu 0 4 474 473 465 466
		f 4 -689 -2092 680 681
		mu 0 4 475 474 466 467
		f 4 -2085 2085 2092 -682
		mu 0 4 467 2176 2110 475
		f 4 -707 -699 2093 699
		mu 0 4 476 477 2107 479
		f 4 -708 -700 2094 700
		mu 0 4 480 476 479 481
		f 4 -709 -701 2095 701
		mu 0 4 482 480 481 483
		f 4 -710 -702 2096 702
		mu 0 4 2173 482 483 485
		f 4 -711 -703 2097 703
		mu 0 4 486 484 2106 487
		f 4 -712 -704 2098 704
		mu 0 4 488 486 487 489
		f 4 -713 -705 2099 705
		mu 0 4 490 488 489 491
		f 4 -2101 698 2101 -706
		mu 0 4 491 478 2174 490
		f 4 -715 -2103 706 2103
		mu 0 4 492 493 477 476
		f 4 -716 -2104 707 2104
		mu 0 4 494 492 476 480
		f 4 -717 -2105 708 2105
		mu 0 4 495 494 480 482
		f 4 -718 -2106 709 2106
		mu 0 4 2170 495 482 2173
		f 4 -719 -2107 710 2107
		mu 0 4 497 496 484 486
		f 4 -2102 2102 2108 -714
		mu 0 4 490 2174 2172 498
		f 4 -723 -2110 714 2110
		mu 0 4 499 2169 493 492
		f 4 -724 -2111 715 2111
		mu 0 4 501 499 492 494
		f 4 -725 -2112 716 2112
		mu 0 4 502 501 494 495
		f 4 -726 -2113 717 2113
		mu 0 4 2171 502 495 2170
		f 4 -730 -2115 722 2115
		mu 0 4 504 2168 2169 499
		f 4 -731 -2116 723 2116
		mu 0 4 506 504 499 501
		f 4 -732 -2117 724 2117
		mu 0 4 507 506 501 502
		f 4 -733 -2118 725 726
		mu 0 4 2207 507 502 2171
		f 4 -738 -2119 729 2119
		mu 0 4 509 510 2168 504
		f 4 -739 -2120 730 2120
		mu 0 4 511 509 504 506
		f 4 -740 -2121 731 2121
		mu 0 4 512 511 506 507
		f 4 -741 -2122 732 733
		mu 0 4 2166 512 507 2207
		f 4 -742 -734 2122 734
		mu 0 4 514 513 508 515
		f 4 -2124 2118 2124 -737
		mu 0 4 516 505 2167 517
		f 4 -746 -2126 737 2126
		mu 0 4 518 519 510 509
		f 4 -750 -2128 741 742
		mu 0 4 520 521 513 514
		f 4 740 2127 -749 -2129
		mu 0 4 512 2166 2163 522
		f 4 -2130 -2114 718 719
		mu 0 4 523 503 496 497
		f 4 -2131 2114 2123 -729
		mu 0 4 524 500 505 516
		f 4 -2132 -735 2132 735
		mu 0 4 525 514 515 526
		f 4 -2123 -727 2129 727
		mu 0 4 515 508 503 523
		f 4 -2134 -2108 711 2134
		mu 0 4 527 497 486 488
		f 4 712 713 -721 -2135
		mu 0 4 488 490 498 527
		f 4 -2109 2109 2130 -722
		mu 0 4 498 2172 500 524
		f 4 -2136 -720 2133 2136
		mu 0 4 528 523 497 527
		f 4 -2133 -728 2135 -2138
		mu 0 4 526 515 523 528
		f 4 -2139 728 -2140 2137
		mu 0 4 528 524 516 526
		f 4 2139 736 -744 -736
		mu 0 4 526 516 517 525
		f 4 -2137 720 721 2138
		mu 0 4 528 527 498 524
		f 4 -751 -743 2131 2140
		mu 0 4 529 520 514 525
		f 4 -752 -2141 743 744
		mu 0 4 530 529 525 517
		f 4 -2125 2125 2141 -745
		mu 0 4 517 2167 2164 530
		f 4 -2143 750 2143 -757
		mu 0 4 531 520 529 532
		f 4 -763 -2145 756 -764
		mu 0 4 533 534 531 532
		f 4 -2144 751 752 -766
		mu 0 4 532 529 530 535
		f 4 -2146 763 765 -765
		mu 0 4 536 533 532 535
		f 4 -754 2146 757 764
		mu 0 4 535 2165 2114 536
		f 4 -753 -2142 2147 753
		mu 0 4 535 530 2164 2165
		f 4 749 2142 -756 -2149
		mu 0 4 521 520 531 2162
		f 4 755 2144 -762 -2150
		mu 0 4 2162 531 534 540
		f 4 739 2128 -748 -2151
		mu 0 4 511 512 522 541
		f 4 -747 -2127 738 2150
		mu 0 4 541 518 509 511
		f 4 -2152 -2148 745 2152
		mu 0 4 542 537 519 518
		f 4 -2154 -2147 2151 754
		mu 0 4 543 538 537 542
		f 4 -759 -755 2154 -760
		mu 0 4 544 543 542 545
		f 4 -2153 746 2155 -2155
		mu 0 4 542 518 541 545
		f 4 -2157 759 -767 -761
		mu 0 4 546 544 545 547
		f 4 -2158 2149 -2159 760
		mu 0 4 547 539 2113 546
		f 4 -2156 747 2159 766
		mu 0 4 545 541 522 547
		f 4 -2160 748 2148 2157
		mu 0 4 547 522 2163 539
		f 4 -776 2160 783 -777
		mu 0 4 548 549 2161 551
		f 4 -2162 776 784 -778
		mu 0 4 552 548 551 553
		f 4 -2163 777 785 -779
		mu 0 4 554 552 553 555
		f 4 -2164 778 786 -780
		mu 0 4 2105 554 555 557
		f 4 -2165 779 787 -781
		mu 0 4 558 556 2160 559
		f 4 -2166 780 788 -782
		mu 0 4 560 558 559 561
		f 4 -2167 781 789 -783
		mu 0 4 562 560 561 563
		f 4 -2168 -2161 2168 782
		mu 0 4 563 550 2104 562
		f 4 -784 2169 791 -2171
		mu 0 4 551 2161 2159 565
		f 4 -785 2170 792 -2172
		mu 0 4 553 551 565 566
		f 4 -786 2171 793 -2173
		mu 0 4 555 553 566 567
		f 4 -787 2172 794 -2174
		mu 0 4 557 555 567 568
		f 4 -788 2173 795 -2175
		mu 0 4 559 2160 2158 569
		f 4 -789 2174 796 -2176
		mu 0 4 561 559 569 570
		f 4 -790 2175 797 -791
		mu 0 4 563 561 570 571
		f 4 -2177 -2170 2167 790
		mu 0 4 571 564 550 563
		f 4 -792 2177 799 -2179
		mu 0 4 565 2159 2157 573
		f 4 -793 2178 800 -2180
		mu 0 4 566 565 573 574
		f 4 -794 2179 801 -2181
		mu 0 4 567 566 574 575
		f 4 -795 2180 802 -2182
		mu 0 4 568 567 575 576
		f 4 -796 2181 803 -2183
		mu 0 4 569 2158 2156 577
		f 4 -797 2182 804 -2184
		mu 0 4 570 569 577 578
		f 4 -798 2183 805 -799
		mu 0 4 571 570 578 579
		f 4 -2185 -2178 2176 798
		mu 0 4 579 572 564 571
		f 4 -800 2185 807 -2187
		mu 0 4 573 2157 2155 581
		f 4 -801 2186 808 -2188
		mu 0 4 574 573 581 582
		f 4 -802 2187 809 -2189
		mu 0 4 575 574 582 583
		f 4 -803 2188 810 -2190
		mu 0 4 576 575 583 584;
	setAttr ".fc[500:999]"
		f 4 -804 2189 811 -2191
		mu 0 4 577 2156 2154 585
		f 4 -805 2190 812 -2192
		mu 0 4 578 577 585 586
		f 4 -806 2191 813 -807
		mu 0 4 579 578 586 587
		f 4 -2193 -2186 2184 806
		mu 0 4 587 580 572 579
		f 4 -808 2193 815 -2195
		mu 0 4 581 2155 2153 589
		f 4 -809 2194 816 -2196
		mu 0 4 582 581 589 590
		f 4 -810 2195 817 -2197
		mu 0 4 583 582 590 591
		f 4 -811 2196 818 -2198
		mu 0 4 584 583 591 592
		f 4 -812 2197 819 -2199
		mu 0 4 585 2154 2152 593
		f 4 -813 2198 820 -2200
		mu 0 4 586 585 593 594
		f 4 -814 2199 821 -815
		mu 0 4 587 586 594 595
		f 4 -2201 -2194 2192 814
		mu 0 4 595 588 580 587
		f 4 -816 2201 823 -2203
		mu 0 4 589 2153 2151 597
		f 4 -817 2202 824 -2204
		mu 0 4 590 589 597 598
		f 4 -818 2203 825 -2205
		mu 0 4 591 590 598 599
		f 4 -819 2204 826 -2206
		mu 0 4 592 591 599 600
		f 4 -820 2205 827 -2207
		mu 0 4 593 2152 2150 601
		f 4 -821 2206 828 -2208
		mu 0 4 594 593 601 602
		f 4 -822 2207 829 -823
		mu 0 4 595 594 602 603
		f 4 -2209 -2202 2200 822
		mu 0 4 603 596 588 595
		f 4 -824 2209 831 -2211
		mu 0 4 597 2151 2149 605
		f 4 -825 2210 832 -2212
		mu 0 4 598 597 605 606
		f 4 -826 2211 833 -2213
		mu 0 4 599 598 606 607
		f 4 -827 2212 834 -2214
		mu 0 4 600 599 607 608
		f 4 -828 2213 835 -2215
		mu 0 4 601 2150 2148 609
		f 4 -829 2214 836 -2216
		mu 0 4 602 601 609 610
		f 4 -830 2215 837 -831
		mu 0 4 603 602 610 611
		f 4 -2217 -2210 2208 830
		mu 0 4 611 604 596 603
		f 4 -832 2217 839 -2219
		mu 0 4 605 2149 2118 613
		f 4 -833 2218 840 -2220
		mu 0 4 606 605 613 614
		f 4 -834 2219 841 -2221
		mu 0 4 607 606 614 615
		f 4 -835 2220 842 -2222
		mu 0 4 608 607 615 616
		f 4 -836 2221 843 -2223
		mu 0 4 609 2148 2117 617
		f 4 -837 2222 844 -2224
		mu 0 4 610 609 617 618
		f 4 -838 2223 845 -839
		mu 0 4 611 610 618 619
		f 4 -2225 -2218 2216 838
		mu 0 4 619 612 604 611
		f 4 -857 2225 864 -858
		mu 0 4 620 621 2147 623
		f 4 -2227 857 865 -859
		mu 0 4 624 620 623 625
		f 4 -2228 858 866 -860
		mu 0 4 626 624 625 627
		f 4 -2229 859 867 -861
		mu 0 4 2206 626 627 629
		f 4 -2230 860 868 -862
		mu 0 4 630 628 2146 631
		f 4 -2231 861 869 -863
		mu 0 4 632 630 631 633
		f 4 -2232 862 870 -864
		mu 0 4 634 632 633 635
		f 4 -2233 -2226 2233 863
		mu 0 4 635 622 2093 634
		f 4 -865 2234 872 -2236
		mu 0 4 623 2147 2145 637
		f 4 -866 2235 873 -2237
		mu 0 4 625 623 637 638
		f 4 -867 2236 874 -2238
		mu 0 4 627 625 638 639
		f 4 -868 2237 875 -2239
		mu 0 4 629 627 639 640
		f 4 -869 2238 876 -2240
		mu 0 4 631 2146 2144 641
		f 4 -870 2239 877 -2241
		mu 0 4 633 631 641 642
		f 4 -871 2240 878 -872
		mu 0 4 635 633 642 643
		f 4 -2242 -2235 2232 871
		mu 0 4 643 636 622 635
		f 4 -873 2242 880 -2244
		mu 0 4 637 2145 2143 645
		f 4 -874 2243 881 -2245
		mu 0 4 638 637 645 646
		f 4 -875 2244 882 -2246
		mu 0 4 639 638 646 647
		f 4 -876 2245 883 -2247
		mu 0 4 640 639 647 648
		f 4 -877 2246 884 -2248
		mu 0 4 641 2144 2142 649
		f 4 -878 2247 885 -2249
		mu 0 4 642 641 649 650
		f 4 -879 2248 886 -880
		mu 0 4 643 642 650 651
		f 4 -2250 -2243 2241 879
		mu 0 4 651 644 636 643
		f 4 -881 2250 888 -2252
		mu 0 4 645 2143 2141 653
		f 4 -882 2251 889 -2253
		mu 0 4 646 645 653 654
		f 4 -883 2252 890 -2254
		mu 0 4 647 646 654 655
		f 4 -884 2253 891 -2255
		mu 0 4 648 647 655 656
		f 4 -885 2254 892 -2256
		mu 0 4 649 2142 2140 657
		f 4 -886 2255 893 -2257
		mu 0 4 650 649 657 658
		f 4 -887 2256 894 -888
		mu 0 4 651 650 658 659
		f 4 -2258 -2251 2249 887
		mu 0 4 659 652 644 651
		f 4 -889 2258 896 -2260
		mu 0 4 653 2141 2139 661
		f 4 -890 2259 897 -2261
		mu 0 4 654 653 661 662
		f 4 -891 2260 898 -2262
		mu 0 4 655 654 662 663
		f 4 -892 2261 899 -2263
		mu 0 4 656 655 663 664
		f 4 -893 2262 900 -2264
		mu 0 4 657 2140 2138 665
		f 4 -894 2263 901 -2265
		mu 0 4 658 657 665 666
		f 4 -895 2264 902 -896
		mu 0 4 659 658 666 667
		f 4 -2266 -2259 2257 895
		mu 0 4 667 660 652 659
		f 4 -897 2266 904 -2268
		mu 0 4 661 2139 2137 669
		f 4 -898 2267 905 -2269
		mu 0 4 662 661 669 670
		f 4 -899 2268 906 -2270
		mu 0 4 663 662 670 671
		f 4 -900 2269 907 -2271
		mu 0 4 664 663 671 672
		f 4 -901 2270 908 -2272
		mu 0 4 665 2138 2136 673
		f 4 -902 2271 909 -2273
		mu 0 4 666 665 673 674
		f 4 -903 2272 910 -904
		mu 0 4 667 666 674 675
		f 4 -2274 -2267 2265 903
		mu 0 4 675 668 660 667
		f 4 -905 2274 912 -2276
		mu 0 4 669 2137 2135 677
		f 4 -906 2275 913 -2277
		mu 0 4 670 669 677 678
		f 4 -907 2276 914 -2278
		mu 0 4 671 670 678 679
		f 4 -908 2277 915 -2279
		mu 0 4 672 671 679 680
		f 4 -909 2278 916 -2280
		mu 0 4 673 2136 2134 681
		f 4 -910 2279 917 -2281
		mu 0 4 674 673 681 682
		f 4 -911 2280 918 -912
		mu 0 4 675 674 682 683
		f 4 -2282 -2275 2273 911
		mu 0 4 683 676 668 675
		f 4 -913 2282 920 -2284
		mu 0 4 677 2135 2122 685
		f 4 -914 2283 921 -2285
		mu 0 4 678 677 685 686
		f 4 -915 2284 922 -2286
		mu 0 4 679 678 686 687
		f 4 -916 2285 923 -2287
		mu 0 4 680 679 687 688
		f 4 -917 2286 924 -2288
		mu 0 4 681 2134 2121 689
		f 4 -918 2287 925 -2289
		mu 0 4 682 681 689 690
		f 4 -919 2288 926 -920
		mu 0 4 683 682 690 691
		f 4 -2290 -2283 2281 919
		mu 0 4 691 684 676 683
		f 4 -936 2290 943 -937
		mu 0 4 692 693 2133 695
		f 4 -2292 936 944 -938
		mu 0 4 696 692 695 697
		f 4 -2293 937 945 -939
		mu 0 4 698 696 697 699
		f 4 -2294 938 946 -940
		mu 0 4 1863 698 699 701
		f 4 -2295 939 947 -941
		mu 0 4 702 700 2132 703
		f 4 -2296 940 948 -942
		mu 0 4 704 702 703 705
		f 4 -2297 941 949 -943
		mu 0 4 706 704 705 707
		f 4 -2298 -2291 2298 942
		mu 0 4 707 694 2085 706
		f 4 -944 2299 951 -2301
		mu 0 4 695 2133 2131 709
		f 4 -945 2300 952 -2302
		mu 0 4 697 695 709 710
		f 4 -946 2301 953 -2303
		mu 0 4 699 697 710 711
		f 4 -947 2302 954 -2304
		mu 0 4 701 699 711 712
		f 4 -948 2303 955 -2305
		mu 0 4 703 2132 2130 713
		f 4 -949 2304 956 -2306
		mu 0 4 705 703 713 714
		f 4 -950 2305 957 -951
		mu 0 4 707 705 714 715
		f 4 -2307 -2300 2297 950
		mu 0 4 715 708 694 707
		f 4 -952 2307 959 -2309
		mu 0 4 709 2131 2129 717
		f 4 -953 2308 960 -2310
		mu 0 4 710 709 717 718
		f 4 -954 2309 961 -2311
		mu 0 4 711 710 718 719
		f 4 -955 2310 962 -2312
		mu 0 4 712 711 719 720
		f 4 -956 2311 963 -2313
		mu 0 4 713 2130 2128 721
		f 4 -957 2312 964 -2314
		mu 0 4 714 713 721 722
		f 4 -958 2313 965 -959
		mu 0 4 715 714 722 723
		f 4 -2315 -2308 2306 958
		mu 0 4 723 716 708 715
		f 4 -960 2315 967 -2317
		mu 0 4 717 2129 2126 725
		f 4 -961 2316 968 -2318
		mu 0 4 718 717 725 726
		f 4 -962 2317 969 -2319
		mu 0 4 719 718 726 727
		f 4 -963 2318 970 -2320
		mu 0 4 720 719 727 728
		f 4 -964 2319 971 -2321
		mu 0 4 721 2128 2125 729
		f 4 -965 2320 972 -2322
		mu 0 4 722 721 729 730
		f 4 -966 2321 973 -967
		mu 0 4 723 722 730 731
		f 4 -2323 -2316 2314 966
		mu 0 4 731 724 716 723
		f 4 975 2330 -977 -2332
		mu 0 4 1871 733 734 2127
		f 4 -2333 -968 2333 976
		mu 0 4 734 725 2126 2127
		f 4 -2334 2322 974 -2335
		mu 0 4 735 724 731 736
		f 4 2334 -2336 -2330 2331
		mu 0 4 735 736 737 732
		f 4 -2337 -969 2332 977
		mu 0 4 738 726 725 734
		f 4 2323 2337 -978 -2331
		mu 0 4 733 739 738 734
		f 4 -2339 -970 2336 978
		mu 0 4 740 727 726 738
		f 4 2324 2339 -979 -2338
		mu 0 4 739 741 740 738
		f 4 -2341 -971 2338 979
		mu 0 4 742 728 727 740
		f 4 2325 2341 -980 -2340
		mu 0 4 741 743 742 740
		f 4 -2343 -972 2340 980
		mu 0 4 744 729 2125 2124
		f 4 2326 2343 -981 -2342
		mu 0 4 1870 745 744 2124
		f 4 -2345 -973 2342 981
		mu 0 4 746 730 729 744
		f 4 2327 2345 -982 -2344
		mu 0 4 745 747 746 744
		f 4 -975 -974 2344 982
		mu 0 4 736 731 730 746
		f 4 2328 2335 -983 -2346
		mu 0 4 747 737 736 746
		f 4 928 2353 -984 -2355
		mu 0 4 1876 749 750 2123
		f 4 -2356 -921 2356 983
		mu 0 4 750 685 2122 2123
		f 4 -2357 2289 927 -2358
		mu 0 4 751 684 691 752
		f 4 2357 -2359 -2353 2354
		mu 0 4 751 752 753 748
		f 4 -2360 -922 2355 984
		mu 0 4 754 686 685 750
		f 4 2346 2360 -985 -2354
		mu 0 4 749 755 754 750
		f 4 -2362 -923 2359 985
		mu 0 4 756 687 686 754
		f 4 2347 2362 -986 -2361
		mu 0 4 755 757 756 754
		f 4 -2364 -924 2361 986
		mu 0 4 758 688 687 756
		f 4 2348 2364 -987 -2363
		mu 0 4 757 759 758 756
		f 4 -2366 -925 2363 987
		mu 0 4 760 689 2121 2120
		f 4 2349 2366 -988 -2365
		mu 0 4 1877 761 760 2120
		f 4 -2368 -926 2365 988
		mu 0 4 762 690 689 760
		f 4 2350 2368 -989 -2367
		mu 0 4 761 763 762 760
		f 4 -928 -927 2367 989
		mu 0 4 752 691 690 762
		f 4 2351 2358 -990 -2369
		mu 0 4 763 753 752 762
		f 4 847 2376 -991 -2378
		mu 0 4 1882 765 766 2119
		f 4 -2379 -840 2379 990
		mu 0 4 766 613 2118 2119
		f 4 -2380 2224 846 -2381
		mu 0 4 767 612 619 768
		f 4 2380 -2382 -2376 2377
		mu 0 4 767 768 769 764
		f 4 -2383 -841 2378 991
		mu 0 4 770 614 613 766
		f 4 2369 2383 -992 -2377
		mu 0 4 765 771 770 766
		f 4 -2385 -842 2382 992
		mu 0 4 772 615 614 770
		f 4 2370 2385 -993 -2384
		mu 0 4 771 773 772 770
		f 4 -2387 -843 2384 993
		mu 0 4 774 616 615 772
		f 4 2371 2387 -994 -2386
		mu 0 4 773 775 774 772
		f 4 -2389 -844 2386 994
		mu 0 4 776 617 2117 2116
		f 4 2372 2389 -995 -2388
		mu 0 4 1883 777 776 2116
		f 4 -2391 -845 2388 995
		mu 0 4 778 618 617 776
		f 4 2373 2391 -996 -2390
		mu 0 4 777 779 778 776
		f 4 -847 -846 2390 996
		mu 0 4 768 619 618 778
		f 4 2374 2381 -997 -2392
		mu 0 4 779 769 768 778
		f 4 997 -2401 -2393 2401
		mu 0 4 2115 781 782 783
		f 4 -2403 2153 2403 -998
		mu 0 4 2115 538 543 781
		f 4 -2405 -758 2402 2405
		mu 0 4 784 536 2114 780
		f 4 2399 2406 -2406 -2402
		mu 0 4 1889 785 784 780
		f 4 -2404 758 2407 -999
		mu 0 4 781 543 544 786
		f 4 998 -2409 -2394 2400
		mu 0 4 781 786 787 782
		f 4 -2408 2156 2409 -1000
		mu 0 4 786 544 546 788
		f 4 999 -2411 -2395 2408
		mu 0 4 786 788 789 787
		f 4 -2410 2158 2411 -1001
		mu 0 4 788 546 2113 2112
		f 4 1000 -2413 -2396 2410
		mu 0 4 788 2112 1888 789
		f 4 -2412 761 2413 -1002
		mu 0 4 790 540 534 792
		f 4 1001 -2415 -2397 2412
		mu 0 4 790 792 793 791
		f 4 -2414 762 2415 -1003
		mu 0 4 792 534 533 794
		f 4 1002 -2417 -2398 2414
		mu 0 4 792 794 795 793
		f 4 -2416 2145 2404 -1004
		mu 0 4 794 533 536 784
		f 4 1003 -2407 -2399 2416
		mu 0 4 794 784 785 795
		f 4 1004 -2426 -2418 2426
		mu 0 4 2111 797 798 799
		f 4 -2428 682 2428 -1005
		mu 0 4 2111 469 468 797
		f 4 -690 -2093 2427 2429
		mu 0 4 800 475 2110 796
		f 4 2424 2430 -2430 -2427
		mu 0 4 1895 801 800 796
		f 4 -2429 683 2431 -1006
		mu 0 4 797 468 470 802
		f 4 1005 -2433 -2419 2425
		mu 0 4 797 802 803 798
		f 4 -2432 684 2433 -1007
		mu 0 4 802 470 471 804
		f 4 1006 -2435 -2420 2432
		mu 0 4 802 804 805 803
		f 4 -2434 685 2435 -1008
		mu 0 4 804 471 2109 2108
		f 4 1007 -2437 -2421 2434
		mu 0 4 804 2108 1894 805
		f 4 -2436 686 2437 -1009
		mu 0 4 806 472 473 808
		f 4 1008 -2439 -2422 2436
		mu 0 4 806 808 809 807
		f 4 -2438 687 2439 -1010
		mu 0 4 808 473 474 810
		f 4 1009 -2441 -2423 2438
		mu 0 4 808 810 811 809
		f 4 -2440 688 689 -1011
		mu 0 4 810 474 475 800
		f 4 1010 -2431 -2424 2440
		mu 0 4 810 800 801 811
		f 4 -2032 -614 2441 614
		mu 0 4 2208 411 812 813
		f 4 690 691 -2094 -2443
		mu 0 4 2099 815 479 2107
		f 4 -2033 -615 2443 615
		mu 0 4 415 413 2097 816
		f 4 -2445 2442 2100 -698
		mu 0 4 817 814 478 491
		f 4 694 695 -2098 -2446
		mu 0 4 2102 819 487 2106
		f 4 2164 -773 -772 2446
		mu 0 4 556 558 820 821
		f 4 693 2445 -2097 -2448
		mu 0 4 822 818 485 483
		f 4 2163 -2447 -771 2448
		mu 0 4 554 2105 2100 823
		f 4 -852 2449 2228 -853
		mu 0 4 2103 825 626 2206
		f 4 -2451 852 2229 -854
		mu 0 4 826 824 628 630
		f 4 775 -769 -768 2451
		mu 0 4 549 548 827 828
		f 4 2452 774 -2169 -2452
		mu 0 4 2095 829 562 2104
		f 4 -2454 851 2454 -1018
		mu 0 4 830 825 2103 2096
		f 4 -2456 768 2161 -770
		mu 0 4 832 827 548 552
		f 4 2162 -2449 -2457 769
		mu 0 4 552 554 823 832
		f 4 -2458 -694 2458 -1016
		mu 0 4 833 818 822 834
		f 4 770 2459 1015 -2461
		mu 0 4 823 2100 833 834
		f 4 692 2447 -2096 -2462
		mu 0 4 835 822 483 481
		f 4 -2095 -692 2462 2461
		mu 0 4 481 479 815 835
		f 4 -2464 -691 2464 -1012
		mu 0 4 836 815 2099 2098
		f 4 -2466 -2442 2466 1011
		mu 0 4 2098 813 812 836
		f 4 612 613 -2031 -2468
		mu 0 4 838 812 411 409
		f 4 -2469 767 2469 1017
		mu 0 4 2096 828 827 830
		f 4 2227 -2450 -851 2470
		mu 0 4 624 626 825 839
		f 4 2226 -2471 -850 2471
		mu 0 4 620 624 839 840
		f 4 611 2467 -2030 -2473
		mu 0 4 841 838 409 407
		f 4 610 2472 -2029 -2474
		mu 0 4 2090 841 407 2094
		f 4 -2475 2473 2035 -618
		mu 0 4 843 842 406 419
		f 4 616 617 -2035 -2476
		mu 0 4 844 843 419 417
		f 4 -2034 -616 2476 2475
		mu 0 4 417 415 816 844
		f 4 -2478 -2444 2465 1012
		mu 0 4 845 816 2097 837
		f 4 -1013 -2465 2444 2478
		mu 0 4 845 837 814 817
		f 4 696 697 -2100 -2480
		mu 0 4 846 817 491 489
		f 4 -2099 -696 2480 2479
		mu 0 4 489 487 819 846
		f 4 -2482 -695 2457 -1015
		mu 0 4 847 819 2102 2101
		f 4 -2460 771 2482 1014
		mu 0 4 2101 821 820 847
		f 4 -2484 772 2165 -774
		mu 0 4 848 820 558 560
		f 4 2166 -775 -2485 773
		mu 0 4 560 562 829 848
		f 4 -2453 2468 1018 -2486
		mu 0 4 829 2095 831 849
		f 4 -1019 -2455 2450 2486
		mu 0 4 849 831 824 826
		f 4 -2488 853 2230 -855
		mu 0 4 850 826 630 632
		f 4 -2489 854 2231 -856
		mu 0 4 851 850 632 634
		f 4 848 855 -2234 -2490
		mu 0 4 2091 851 634 2093
		f 4 856 -2472 -2491 2489
		mu 0 4 621 620 840 852
		f 4 850 2453 2491 -2493
		mu 0 4 839 825 830 853
		f 4 -2494 -2470 2455 2494
		mu 0 4 854 830 827 832
		f 4 -2495 2456 2460 1016
		mu 0 4 854 832 823 834
		f 4 -2496 -2459 -693 2496
		mu 0 4 855 834 822 835
		f 4 -2497 -2463 2463 2497
		mu 0 4 855 835 815 836
		f 4 -2499 -2467 -613 2499
		mu 0 4 856 836 812 838
		f 4 -1021 -1017 2495 1021
		mu 0 4 857 854 834 855
		f 4 -1036 -1022 2500 1036
		mu 0 4 858 857 855 859
		f 4 -2501 -2498 2498 1022
		mu 0 4 859 855 836 856
		f 4 -2502 -2500 -612 2502
		mu 0 4 860 856 838 841
		f 4 -1024 -2492 2493 2503
		mu 0 4 861 853 830 854
		f 4 849 2492 2504 -2506
		mu 0 4 840 839 853 862
		f 4 -2507 2490 2505 1024
		mu 0 4 2092 852 840 862
		f 4 -2508 -849 2506 -1033
		mu 0 4 864 851 2091 863
		f 4 -2509 -2481 2481 2509
		mu 0 4 865 846 819 847
		f 4 -1014 -2479 -697 2508
		mu 0 4 865 845 817 846
		f 4 -1030 -2510 2510 1030
		mu 0 4 866 865 847 867
		f 4 -2511 -2483 2483 2511
		mu 0 4 867 847 820 848
		f 4 -2512 2484 2485 1019
		mu 0 4 867 848 829 849
		f 4 -2513 -1020 2513 1031
		mu 0 4 868 867 849 869
		f 4 -2514 -2487 2487 2514
		mu 0 4 869 849 826 850
		f 4 -2515 2488 2507 -2516
		mu 0 4 869 850 851 864
		f 4 -2517 1013 2517 -1029
		mu 0 4 870 845 865 871
		f 4 -2519 -2477 2477 2516
		mu 0 4 870 844 816 845
		f 4 -2520 -617 2518 -1028
		mu 0 4 872 843 844 870
		f 4 -2521 2474 2519 -1027
		mu 0 4 873 842 843 872
		f 4 -1026 -2503 -611 2520
		mu 0 4 2073 860 841 2090
		f 4 -2505 1023 1034 -2522
		mu 0 4 862 853 861 874
		f 4 -1034 -1025 2521 1041
		mu 0 4 1860 2092 862 874
		f 4 -1046 -2523 1029 1043
		mu 0 4 876 877 865 866
		f 4 -1045 -2518 2522 2523
		mu 0 4 878 871 865 877
		f 4 -1047 -1044 -1031 2524
		mu 0 4 879 876 866 867
		f 4 -1049 -2525 2512 1042
		mu 0 4 880 879 867 868
		f 4 -1050 -1043 -1032 2525
		mu 0 4 881 880 868 869
		f 4 1028 1044 1047 -2527
		mu 0 4 870 871 878 882
		f 4 1027 2526 1051 -2528
		mu 0 4 872 870 882 883
		f 4 -2529 -1048 2529 1058
		mu 0 4 884 882 878 885
		f 4 -2531 1045 2531 -1057
		mu 0 4 886 877 876 887
		f 4 -2530 -2524 2530 2532
		mu 0 4 885 878 877 886
		f 4 -2534 1048 2534 -1060
		mu 0 4 888 879 880 889
		f 4 -2535 1049 1050 -1061
		mu 0 4 889 880 881 890
		f 4 3606 -2536 1032 1033
		mu 0 4 875 891 864 863
		f 4 3608 -2526 2515 2535
		mu 0 4 891 881 869 864
		f 4 3594 -1042 2536 -3591
		mu 0 4 1859 1860 874 893
		f 4 -2504 1020 2538 -2540
		mu 0 4 861 854 857 894
		f 4 -2537 -1035 2539 1038
		mu 0 4 893 874 861 894
		f 4 -2541 -2539 1035 1037
		mu 0 4 895 894 857 858
		f 4 -1846 -364 2541 364
		mu 0 4 187 186 896 2086
		f 4 -2542 2542 -2544 -2545
		mu 0 4 897 2088 898 888
		f 4 -2532 1046 2533 -1058
		mu 0 4 887 876 879 888
		f 4 -2546 1056 1057 2543
		mu 0 4 898 886 887 888
		f 4 -2547 363 1852 -371
		mu 0 4 2089 896 186 199
		f 4 1062 -2543 2546 2547
		mu 0 4 884 898 2088 899
		f 4 -1059 -2533 2545 -1063
		mu 0 4 884 885 886 898
		f 4 369 370 -1852 -2549
		mu 0 4 2212 2089 199 197
		f 4 -1053 -1052 2528 2549
		mu 0 4 901 883 882 884
		f 4 -2550 -2548 -370 2550
		mu 0 4 901 884 899 900
		f 4 368 2548 -1851 -2552
		mu 0 4 2076 2212 197 2087
		f 4 367 2551 -1850 -2553
		mu 0 4 2213 2075 195 193
		f 4 366 2552 -1849 -2554
		mu 0 4 2214 2213 193 191
		f 4 365 2553 -1848 -2555
		mu 0 4 2083 2214 191 189
		f 4 -1847 -365 2555 2554
		mu 0 4 189 187 2086 2083
		f 4 -2556 2544 2556 -2558
		mu 0 4 905 897 888 906
		f 4 -2557 1059 1060 1061
		mu 0 4 906 888 889 890
		f 4 -1065 -1062 -1056 2558
		mu 0 4 907 906 890 908
		f 4 3596 -3592 2294 -2561
		mu 0 4 909 910 700 702
		f 4 2293 3591 -933 2559
		mu 0 4 698 1863 1862 911
		f 4 -2563 2560 2295 -934
		mu 0 4 912 909 702 704
		f 4 -2564 933 2296 -935
		mu 0 4 913 912 704 706
		f 4 929 934 -2299 -2565
		mu 0 4 2081 913 706 2085
		f 4 -2566 2564 935 -931
		mu 0 4 915 914 693 692
		f 4 -2567 930 2291 -932
		mu 0 4 916 915 692 696
		f 4 2292 -2560 -2568 931
		mu 0 4 696 698 911 916
		f 4 -3590 3593 3590 1054
		mu 0 4 917 1861 1859 893
		f 4 932 3592 3589 -2569
		mu 0 4 911 1862 1861 917
		f 4 -2570 2567 2568 1065
		mu 0 4 919 916 911 917
		f 4 -1070 -2573 -367 2573
		mu 0 4 920 921 903 904
		f 4 -1071 -2574 -366 2574
		mu 0 4 2079 920 904 2084
		f 4 -1072 -2575 2557 2575
		mu 0 4 923 922 905 906
		f 4 -2576 1064 2561 -1073
		mu 0 4 923 906 907 924
		f 4 -2577 2562 2577 -1074
		mu 0 4 925 909 912 926
		f 4 -2580 1073 1074 1075
		mu 0 4 927 925 926 928
		f 4 -1075 -2578 2563 2580
		mu 0 4 928 926 912 913
		f 4 -2582 1072 2578 2579
		mu 0 4 927 923 924 925
		f 4 -2583 -2581 -930 2583
		mu 0 4 2082 928 913 2081
		f 4 1083 -1076 2582 1076
		mu 0 4 2080 927 928 2082
		f 4 -2585 1071 2581 -1084
		mu 0 4 2080 922 923 927
		f 4 -2586 -2584 2565 2586
		mu 0 4 931 929 914 915
		f 4 -2587 2566 2569 -1078
		mu 0 4 931 915 916 919
		f 4 -2588 1070 2584 -1083
		mu 0 4 932 920 2079 930
		f 4 -2589 1077 1078 1079
		mu 0 4 932 931 919 933
		f 4 3627 3629 2571 2540
		mu 0 4 895 934 935 894
		f 4 2589 1080 1081 -1080
		mu 0 4 933 936 937 932
		f 4 -1082 -2591 1069 2587
		mu 0 4 932 937 921 920
		f 4 1082 -1077 2585 2588
		mu 0 4 932 930 929 931
		f 4 -2572 -2571 -1055 -1039
		mu 0 4 894 935 917 893
		f 4 -1067 -1079 -1066 2570
		mu 0 4 935 933 919 917
		f 4 2591 2590 -1081 -1068
		mu 0 4 938 921 937 936
		f 4 -1064 -2551 -369 2592
		mu 0 4 2078 901 900 2077
		f 4 -2594 -1038 -1037 2594
		mu 0 4 940 895 858 859
		f 4 -2596 -1040 2593 1040
		mu 0 4 941 938 895 940
		f 4 -2595 -1023 2501 2596
		mu 0 4 940 859 856 860
		f 4 1026 2527 2597 -2599
		mu 0 4 873 872 883 2074
		f 4 -2598 1052 1063 -1054
		mu 0 4 2074 883 901 2078
		f 4 -2597 1025 2598 -2600
		mu 0 4 940 860 2073 942
		f 4 1068 -1041 2599 1053
		mu 0 4 939 941 940 942
		f 4 -2593 -368 2572 -2601
		mu 0 4 939 902 903 921
		f 4 2600 -2592 2595 -1069
		mu 0 4 939 921 938 941
		f 4 1280 -1274 -1085 2601
		mu 0 4 943 944 945 946
		f 4 1084 2602 -1283 -2604
		mu 0 4 946 945 947 948
		f 4 1085 1273 1281 -1276
		mu 0 4 949 945 944 950
		f 4 -1284 -2603 -1086 2604
		mu 0 4 951 947 945 949
		f 4 2605 1271 -1277 -1245
		mu 0 4 952 953 954 955
		f 4 -2607 -2606 3653 -1288
		mu 0 4 956 953 952 957
		f 4 1094 -1088 -1087 2607
		mu 0 4 958 959 960 2072
		f 4 1086 2608 1759 -2610
		mu 0 4 961 2071 962 963
		f 4 2610 1093 -2612 -2608
		mu 0 4 2072 2062 965 958
		f 4 -1763 -2613 -2611 2609
		mu 0 4 963 966 964 961
		f 4 1095 -1089 -2614 1087
		mu 0 4 959 967 2069 960
		f 4 2613 2614 -2616 -2609
		mu 0 4 2071 2070 969 962
		f 4 1096 -1090 -2617 1088
		mu 0 4 967 970 971 2069
		f 4 2616 2617 1769 -2619
		mu 0 4 968 2068 972 973
		f 4 1770 -1765 -2615 2618
		mu 0 4 1939 974 969 2070
		f 4 1097 -1091 -2620 1089
		mu 0 4 970 975 976 971
		f 4 2619 2620 1768 -2618
		mu 0 4 2068 2067 977 972
		f 4 1098 -1092 -2622 1090
		mu 0 4 975 978 2063 976
		f 4 2621 2622 1767 -2621
		mu 0 4 2067 2064 980 977
		f 4 1099 -1093 -2624 1091
		mu 0 4 2060 981 982 979
		f 4 2623 2624 1763 -2623
		mu 0 4 2065 2061 983 2066
		f 4 1100 -1094 -2626 1092
		mu 0 4 981 965 2062 982
		f 4 2625 2612 2626 -2625
		mu 0 4 2061 964 966 983
		f 4 1102 -2628 -1095 2628
		mu 0 4 984 985 959 958
		f 4 2611 1101 -2630 -2629
		mu 0 4 958 965 986 984
		f 4 1103 -2631 -1096 2627
		mu 0 4 985 987 967 959
		f 4 1104 -2632 -1097 2630
		mu 0 4 987 988 970 967
		f 4 1105 -2633 -1098 2631
		mu 0 4 988 989 975 970
		f 4 1106 -2634 -1099 2632
		mu 0 4 989 990 978 975
		f 4 1107 -2635 -1100 2633
		mu 0 4 2059 991 981 2060
		f 4 1108 -1102 -1101 2634
		mu 0 4 991 986 965 981
		f 4 1110 -2636 -1103 2636
		mu 0 4 992 993 985 984
		f 4 2629 1109 -2638 -2637
		mu 0 4 984 986 994 992
		f 4 1111 -2639 -1104 2635
		mu 0 4 993 995 987 985
		f 4 1112 -2640 -1105 2638
		mu 0 4 995 996 988 987
		f 4 1113 -2641 -1106 2639
		mu 0 4 996 997 989 988
		f 4 1114 -2642 -1107 2640
		mu 0 4 997 998 990 989
		f 4 1115 -2643 -1108 2641
		mu 0 4 2058 999 991 2059
		f 4 1116 -1110 -1109 2642
		mu 0 4 999 994 986 991
		f 4 1118 -2644 -1111 2644
		mu 0 4 1000 1001 993 992
		f 4 2637 1117 -2646 -2645
		mu 0 4 992 994 1002 1000
		f 4 1119 -2647 -1112 2643
		mu 0 4 1001 1003 995 993
		f 4 1120 -2648 -1113 2646
		mu 0 4 1003 1004 996 995
		f 4 1121 -2649 -1114 2647
		mu 0 4 1004 1005 997 996
		f 4 1122 -2650 -1115 2648
		mu 0 4 1005 1006 998 997
		f 4 1123 -2651 -1116 2649
		mu 0 4 2057 1007 999 2058
		f 4 1124 -1118 -1117 2650
		mu 0 4 1007 1002 994 999
		f 4 1126 -2652 -1119 2652
		mu 0 4 1008 1009 1001 1000
		f 4 2645 1125 -2654 -2653
		mu 0 4 1000 1002 1010 1008
		f 4 1127 -2655 -1120 2651
		mu 0 4 1009 1011 1003 1001
		f 4 1128 -2656 -1121 2654
		mu 0 4 1011 1012 1004 1003
		f 4 1129 -2657 -1122 2655
		mu 0 4 1012 1013 1005 1004
		f 4 1130 -2658 -1123 2656
		mu 0 4 1013 1014 1006 1005
		f 4 1131 -2659 -1124 2657
		mu 0 4 1913 1015 1007 2057
		f 4 1132 -1126 -1125 2658
		mu 0 4 1015 1010 1002 1007
		f 4 1806 -1144 -1143 2659
		mu 0 4 1016 1017 1018 1019
		f 4 2660 1149 -2662 -2660
		mu 0 4 1019 1020 1021 1016
		f 4 1807 -1145 -2663 1143
		mu 0 4 1017 1022 1023 1018
		f 4 1808 -1146 -2664 1144
		mu 0 4 1022 1024 1025 1023
		f 4 1809 -1147 -2665 1145
		mu 0 4 1024 1026 1027 1025
		f 4 1810 -1148 -2666 1146
		mu 0 4 1026 1028 1924 1027
		f 4 1811 -1149 -2667 1147
		mu 0 4 1908 1030 1031 1029
		f 4 1812 -1150 -2668 1148
		mu 0 4 1030 1021 1020 1031
		f 4 -1248 -2671 -1152 2671
		mu 0 4 1032 1033 1034 1035
		f 4 2668 1155 -1249 -2672
		mu 0 4 1035 1036 1037 1032
		f 4 -1247 -3542 -1153 2670
		mu 0 4 1033 1038 1039 1034
		f 4 3539 3541 -1246 -1167
		mu 0 4 1040 1039 1038 1041
		f 4 2674 -1157 -2674 1154
		mu 0 4 1042 1043 1044 1036
		f 4 2673 2675 -1250 -1156
		mu 0 4 1036 1044 1045 1037
		f 4 2676 2677 -1251 -2676
		mu 0 4 1044 1046 1047 1045
		f 4 -2690 -1164 -2677 1156
		mu 0 4 1043 1048 1046 1044
		f 4 1828 -2683 -1158 2679
		mu 0 4 1049 1050 1051 1052
		f 4 2680 2681 1827 -2680
		mu 0 4 1052 1053 1054 1049
		f 4 1158 2683 1837 -2675
		mu 0 4 1042 1907 2056 1043
		f 4 2682 1829 -1267 -1838
		mu 0 4 2056 1902 1056 1043
		f 4 1168 -2682 1159 2672
		mu 0 4 1057 1054 1053 1058
		f 4 -1172 -1162 -1161 2684
		mu 0 4 1059 1060 1061 1062
		f 4 2685 2678 -1173 -2685
		mu 0 4 1062 1063 1064 1059
		f 4 -1171 -1163 -2687 1161
		mu 0 4 1060 1065 1901 1061
		f 4 1162 2687 -1268 -2689
		mu 0 4 1066 2055 1067 1068
		f 4 1266 1830 -1165 2689
		mu 0 4 1043 1056 1069 1048
		f 4 1267 -1170 -1166 2690
		mu 0 4 1068 1067 1070 1071
		f 4 2692 2693 -1269 -2688
		mu 0 4 2055 2321 1073 1067
		f 4 1170 2694 -1266 -2693
		mu 0 4 1065 1060 1074 1072
		f 4 1171 2695 -1270 -2695
		mu 0 4 1060 1059 1075 1074
		f 4 1172 1173 -1271 -2696
		mu 0 4 1059 1064 1076 1075
		f 4 1174 1175 -1183 -2697
		mu 0 4 2054 1078 1079 1080
		f 4 1237 -2698 -1175 2698
		mu 0 4 2052 1082 1078 2054
		f 4 2699 -1182 -2701 2696
		mu 0 4 2051 1083 1084 1077
		f 4 2701 -1308 2702 -2704
		mu 0 4 1081 1085 1086 2053
		f 4 2704 1176 -1184 -1176
		mu 0 4 1078 1088 1089 1079
		f 4 1238 -2706 -2705 2697
		mu 0 4 1082 1090 1088 1078
		f 4 2706 1177 -1185 -1177
		mu 0 4 1088 1091 1092 1089
		f 4 1239 -2708 -2707 2705
		mu 0 4 1090 1093 1091 1088
		f 4 2708 1178 -1186 -1178
		mu 0 4 1091 1094 1095 1092
		f 4 1240 -2710 -2709 2707
		mu 0 4 1093 1096 1094 1091
		f 4 1241 -1180 -2711 2709
		mu 0 4 1096 1097 1098 1094
		f 4 2710 2711 -1187 -1179
		mu 0 4 1094 1098 1099 1095
		f 4 2712 1180 1187 -2712
		mu 0 4 1098 1100 1101 1099
		f 4 1242 -2714 -2713 1179
		mu 0 4 1097 1102 1100 1098
		f 4 2714 1181 -2716 -1181
		mu 0 4 1100 1084 1083 1101
		f 4 1307 -1244 2716 1306
		mu 0 4 1086 1085 1102 1103
		f 4 1182 2717 -1190 -2719
		mu 0 4 1080 1079 1104 1105
		f 4 2719 -1189 -2700 2718
		mu 0 4 2050 1106 1083 2051
		f 4 1183 2720 -1191 -2718
		mu 0 4 1079 1089 1107 1104
		f 4 1184 2721 -1192 -2721
		mu 0 4 1089 1092 1108 1107
		f 4 1185 2722 -1193 -2722
		mu 0 4 1092 1095 1109 1108
		f 4 -1195 -1194 -2723 1186
		mu 0 4 1099 1110 1109 1095
		f 4 2715 1188 -1196 -2724
		mu 0 4 1101 1083 1106 1111
		f 4 2723 -2725 1194 -1188
		mu 0 4 1101 1111 1110 1099
		f 4 1189 2725 -1198 -2727
		mu 0 4 1105 1104 1112 1113
		f 4 2727 -1197 -2720 2726
		mu 0 4 2049 1114 1106 2050
		f 4 1190 2728 -1199 -2726
		mu 0 4 1104 1107 1115 1112
		f 4 1191 2729 -1200 -2729
		mu 0 4 1107 1108 1116 1115
		f 4 1192 2730 -1201 -2730
		mu 0 4 1108 1109 1117 1116
		f 4 1193 2731 -1202 -2731
		mu 0 4 1109 1110 1118 1117
		f 4 2724 2732 -1203 -2732
		mu 0 4 1110 1111 1119 1118
		f 4 1195 1196 -1204 -2733
		mu 0 4 1111 1106 1114 1119
		f 4 1197 2733 -1206 -2735
		mu 0 4 1113 1112 1120 1121
		f 4 2735 -1205 -2728 2734
		mu 0 4 2048 1122 1114 2049
		f 4 1198 2736 -1207 -2734
		mu 0 4 1112 1115 1123 1120
		f 4 1199 2737 -1208 -2737
		mu 0 4 1115 1116 1124 1123
		f 4 1200 2738 1294 -2740
		mu 0 4 1116 1117 1125 1126
		f 4 -1210 -1209 -2738 2739
		mu 0 4 1126 1127 1124 1116
		f 4 1201 2740 -2742 -2739
		mu 0 4 1117 1118 1128 1125
		f 4 1202 2742 -1297 -2741
		mu 0 4 1118 1119 1129 1128
		f 4 1203 2743 -1298 -2743
		mu 0 4 1119 1114 1130 1129
		f 4 1204 -1212 2744 -2744
		mu 0 4 1114 1122 1131 1130
		f 4 1205 2745 -1300 -2747
		mu 0 4 1121 1120 1132 1133
		f 4 2747 -1213 -2736 2746
		mu 0 4 2047 1134 1122 2048
		f 4 1206 2748 -1301 -2746
		mu 0 4 1120 1123 1135 1132
		f 4 1207 2749 -1302 -2749
		mu 0 4 1123 1124 1136 1135
		f 4 1208 2750 -1303 -2750
		mu 0 4 1124 1127 1137 1136
		f 4 1295 -1211 -2752 1209
		mu 0 4 1126 1138 1139 1127
		f 4 2751 2752 -1304 -2751
		mu 0 4 1127 1139 1140 1137
		f 4 -1299 -2745 -2754 1210
		mu 0 4 1138 1130 1131 1139;
	setAttr ".fc[1000:1499]"
		f 4 2753 2754 -1305 -2753
		mu 0 4 1139 1131 1141 1140
		f 4 1211 1212 -1306 -2755
		mu 0 4 1131 1122 1134 1141
		f 4 1213 1214 -1222 -2756
		mu 0 4 2046 1143 1144 1145
		f 4 1299 -2757 -1214 2757
		mu 0 4 1133 1132 1143 2046
		f 4 2758 -1221 -2760 2755
		mu 0 4 1909 1146 1147 1142
		f 4 2759 2760 -2748 -2758
		mu 0 4 1142 1147 1134 2047
		f 4 2761 1215 -1223 -1215
		mu 0 4 1143 1148 1149 1144
		f 4 1300 -2763 -2762 2756
		mu 0 4 1132 1135 1148 1143
		f 4 2763 1216 -1224 -1216
		mu 0 4 1148 1150 1151 1149
		f 4 1301 -2765 -2764 2762
		mu 0 4 1135 1136 1150 1148
		f 4 2765 1217 -1225 -1217
		mu 0 4 1150 1152 1153 1151
		f 4 1302 -2767 -2766 2764
		mu 0 4 1136 1137 1152 1150
		f 4 2767 1218 -1226 -1218
		mu 0 4 1152 1154 1155 1153
		f 4 1303 -2769 -2768 2766
		mu 0 4 1137 1140 1154 1152
		f 4 2769 1219 -1227 -1219
		mu 0 4 1154 1156 1157 1155
		f 4 1304 -2771 -2770 2768
		mu 0 4 1140 1141 1156 1154
		f 4 2771 1220 -1228 -1220
		mu 0 4 1156 1147 1146 1157
		f 4 1305 -2761 -2772 2770
		mu 0 4 1141 1134 1147 1156
		f 4 1245 2780 1293 -2780
		mu 0 4 1041 1038 1158 1159
		f 4 1246 2781 1292 -2781
		mu 0 4 1038 1033 1160 1158
		f 4 1247 2782 1291 -2782
		mu 0 4 1033 1032 1161 1160
		f 4 1248 2783 1290 -2783
		mu 0 4 1032 1037 1162 1161
		f 4 1249 2784 1289 -2784
		mu 0 4 1037 1045 1163 1162
		f 4 1250 1251 1288 -2785
		mu 0 4 1045 1047 1164 1163
		f 4 1263 -2786 -1253 2786
		mu 0 4 2343 2344 1167 1087
		f 4 -1263 -2788 -2773 2785
		mu 0 4 2344 2345 1169 1167
		f 4 -1262 -2789 -2774 2787
		mu 0 4 2345 2346 1171 1169
		f 4 -1261 -2790 -2775 2788
		mu 0 4 2346 2347 1173 1171
		f 4 -1260 -2791 -2776 2789
		mu 0 4 2347 2348 1175 1173
		f 4 -1259 -2778 -2777 2790
		mu 0 4 2348 2342 1103 1175
		f 4 3806 -1255 -2792 1253
		mu 0 4 2324 2325 1177 1178
		f 4 3807 -1256 -2793 1254
		mu 0 4 2325 2326 1179 1177
		f 4 3808 -1257 -2794 1255
		mu 0 4 2326 2356 2361 1179
		f 4 3809 -1258 -2795 1256
		mu 0 4 2327 2328 1181 1180
		f 4 2797 1272 -1278 -1272
		mu 0 4 953 1182 1183 954
		f 4 -1287 -2799 -2798 2606
		mu 0 4 956 1184 1182 953
		f 4 2799 1274 -1279 -1273
		mu 0 4 1182 1185 1186 1183
		f 4 -1286 -2801 -2800 2798
		mu 0 4 1184 1187 1185 1182
		f 4 2801 1275 -1280 -1275
		mu 0 4 1185 949 950 1186
		f 4 -1285 -2605 -2802 2800
		mu 0 4 1187 951 949 1185
		f 4 1282 2802 -1289 -2804
		mu 0 4 948 947 1163 1164
		f 4 1283 2804 -1290 -2803
		mu 0 4 947 951 1162 1163
		f 4 1284 2805 -1291 -2805
		mu 0 4 951 1187 1161 1162
		f 4 1285 2806 -1292 -2806
		mu 0 4 1187 1184 1160 1161
		f 4 1286 2807 -1293 -2807
		mu 0 4 1184 956 1158 1160
		f 4 -2779 -1294 -2808 1287
		mu 0 4 957 1159 1158 956
		f 4 2808 -1296 -1295 2741
		mu 0 4 1128 1138 1126 1125
		f 4 1296 1297 1298 -2809
		mu 0 4 1128 1129 1130 1138
		f 4 1316 -1310 -1309 2809
		mu 0 4 2043 1189 1190 2045
		f 4 1308 2810 1725 -2812
		mu 0 4 2045 1190 1192 1193
		f 4 2812 1315 -2814 -2810
		mu 0 4 1191 1194 1195 1188
		f 4 1726 -2815 -2813 2811
		mu 0 4 1940 1196 1194 1191
		f 4 1317 -1311 -2816 1309
		mu 0 4 1189 1197 1198 1190
		f 4 2815 2816 1722 -2811
		mu 0 4 1190 1198 1199 1192
		f 4 1318 -1312 -2818 1310
		mu 0 4 1197 1200 1201 1198
		f 4 2817 2818 1711 -2817
		mu 0 4 1198 1201 1202 1199
		f 4 1319 -1313 -2820 1311
		mu 0 4 1200 1203 2044 1201
		f 4 2819 2820 -2822 -2819
		mu 0 4 1201 2044 2023 1202
		f 4 1320 -1314 -2823 1312
		mu 0 4 2042 1206 1207 1204
		f 4 2822 2823 -1713 -2821
		mu 0 4 1204 1207 1208 1205
		f 4 1321 -1315 -2825 1313
		mu 0 4 1206 1209 1210 1207
		f 4 2824 2825 -1714 -2824
		mu 0 4 1207 1210 1211 1208
		f 4 1322 -1316 -2827 1314
		mu 0 4 1209 1195 1194 1210
		f 4 2826 2814 1727 -2826
		mu 0 4 1210 1194 1196 1211
		f 4 1324 -2828 -1317 2828
		mu 0 4 2041 1213 1189 2043
		f 4 2813 1323 -2830 -2829
		mu 0 4 1188 1195 1214 1212
		f 4 1325 -2831 -1318 2827
		mu 0 4 1213 1215 1197 1189
		f 4 1326 -2832 -1319 2830
		mu 0 4 1215 1216 1200 1197
		f 4 1327 -2833 -1320 2831
		mu 0 4 1216 1217 1203 1200
		f 4 1328 -2834 -1321 2832
		mu 0 4 2040 1218 1206 2042
		f 4 1329 -2835 -1322 2833
		mu 0 4 1218 1219 1209 1206
		f 4 1330 -1324 -1323 2834
		mu 0 4 1219 1214 1195 1209
		f 4 1332 -2836 -1325 2836
		mu 0 4 2039 1221 1213 2041
		f 4 2829 1331 -2838 -2837
		mu 0 4 1212 1214 1222 1220
		f 4 1333 -2839 -1326 2835
		mu 0 4 1221 1223 1215 1213
		f 4 1334 -2840 -1327 2838
		mu 0 4 1223 1224 1216 1215
		f 4 1335 -2841 -1328 2839
		mu 0 4 1224 1225 1217 1216
		f 4 1336 -2842 -1329 2840
		mu 0 4 2038 1226 1218 2040
		f 4 1337 -2843 -1330 2841
		mu 0 4 1226 1227 1219 1218
		f 4 1338 -1332 -1331 2842
		mu 0 4 1227 1222 1214 1219
		f 4 1340 -2844 -1333 2844
		mu 0 4 2037 1229 1221 2039
		f 4 2837 1339 -2846 -2845
		mu 0 4 1220 1222 1230 1228
		f 4 1341 -2847 -1334 2843
		mu 0 4 1229 1231 1223 1221
		f 4 1342 -2848 -1335 2846
		mu 0 4 1231 1232 1224 1223
		f 4 1343 -2849 -1336 2847
		mu 0 4 1232 1233 1225 1224
		f 4 1344 -2850 -1337 2848
		mu 0 4 2036 1234 1226 2038
		f 4 1345 -2851 -1338 2849
		mu 0 4 1234 1235 1227 1226
		f 4 1346 -1340 -1339 2850
		mu 0 4 1235 1230 1222 1227
		f 4 1348 -2852 -1341 2852
		mu 0 4 2035 1237 1229 2037
		f 4 2845 1347 -2854 -2853
		mu 0 4 1228 1230 1238 1236
		f 4 1349 -2855 -1342 2851
		mu 0 4 1237 1239 1231 1229
		f 4 1350 -2856 -1343 2854
		mu 0 4 1239 1240 1232 1231
		f 4 1351 -2857 -1344 2855
		mu 0 4 1240 1241 1233 1232
		f 4 1352 -2858 -1345 2856
		mu 0 4 2034 1242 1234 2036
		f 4 1353 -2859 -1346 2857
		mu 0 4 1242 1243 1235 1234
		f 4 1354 -1348 -1347 2858
		mu 0 4 1243 1238 1230 1235
		f 4 1356 -2860 -1349 2860
		mu 0 4 2033 1245 1237 2035
		f 4 2853 1355 -2862 -2861
		mu 0 4 1236 1238 1246 1244
		f 4 1357 -2863 -1350 2859
		mu 0 4 1245 1247 1239 1237
		f 4 1358 -2864 -1351 2862
		mu 0 4 1247 1248 1240 1239
		f 4 1359 -2865 -1352 2863
		mu 0 4 1248 1249 1241 1240
		f 4 1360 -2866 -1353 2864
		mu 0 4 2032 1250 1242 2034
		f 4 1361 -2867 -1354 2865
		mu 0 4 1250 1251 1243 1242
		f 4 1362 -1356 -1355 2866
		mu 0 4 1251 1246 1238 1243
		f 4 1364 -2868 -1357 2868
		mu 0 4 2031 1253 1245 2033
		f 4 2861 1363 -2870 -2869
		mu 0 4 1244 1246 1254 1252
		f 4 1365 -2871 -1358 2867
		mu 0 4 1253 1255 1247 1245
		f 4 1366 -2872 -1359 2870
		mu 0 4 1255 1256 1248 1247
		f 4 1367 -2873 -1360 2871
		mu 0 4 1256 1257 1249 1248
		f 4 1368 -2874 -1361 2872
		mu 0 4 2030 1258 1250 2032
		f 4 1369 -2875 -1362 2873
		mu 0 4 1258 1259 1251 1250
		f 4 1370 -1364 -1363 2874
		mu 0 4 1259 1254 1246 1251
		f 4 1372 -2876 -1365 2876
		mu 0 4 2029 1261 1253 2031
		f 4 2869 1371 -2878 -2877
		mu 0 4 1252 1254 1262 1260
		f 4 1373 -2879 -1366 2875
		mu 0 4 1261 1263 1255 1253
		f 4 1374 -2880 -1367 2878
		mu 0 4 1263 1264 1256 1255
		f 4 1375 -2881 -1368 2879
		mu 0 4 1264 1265 1257 1256
		f 4 1376 -2882 -1369 2880
		mu 0 4 2028 1266 1258 2030
		f 4 1377 -2883 -1370 2881
		mu 0 4 1266 1267 1259 1258
		f 4 1378 -1372 -1371 2882
		mu 0 4 1267 1262 1254 1259
		f 4 1380 -2884 -1373 2884
		mu 0 4 2027 1269 1261 2029
		f 4 2877 1379 -2886 -2885
		mu 0 4 1260 1262 1270 1268
		f 4 1381 -2887 -1374 2883
		mu 0 4 1269 1271 1263 1261
		f 4 1382 -2888 -1375 2886
		mu 0 4 1271 1272 1264 1263
		f 4 1383 -2889 -1376 2887
		mu 0 4 1272 1273 1265 1264
		f 4 1384 -2890 -1377 2888
		mu 0 4 2026 1274 1266 2028
		f 4 1385 -2891 -1378 2889
		mu 0 4 1274 1275 1267 1266
		f 4 1386 -1380 -1379 2890
		mu 0 4 1275 1270 1262 1267
		f 4 1704 -2892 -1381 2892
		mu 0 4 2025 1277 1269 2027
		f 4 2885 1387 -2894 -2893
		mu 0 4 1268 1270 1278 1276
		f 4 1705 -2895 -1382 2891
		mu 0 4 1277 1279 1271 1269
		f 4 1706 -2896 -1383 2894
		mu 0 4 1279 1280 1272 1271
		f 4 1707 -2897 -1384 2895
		mu 0 4 1280 1281 1273 1272
		f 4 1708 -2898 -1385 2896
		mu 0 4 2024 1282 1274 2026
		f 4 1709 -2899 -1386 2897
		mu 0 4 1282 1283 1275 1274
		f 4 1710 -1388 -1387 2898
		mu 0 4 1283 1278 1270 1275
		f 4 1388 2899 -1705 -2901
		mu 0 4 1898 1285 1277 2025
		f 4 2893 -2903 -2902 2900
		mu 0 4 1276 1278 1286 1284
		f 4 2903 2904 -1706 -2900
		mu 0 4 1285 1287 1279 1277
		f 4 2905 2906 -1707 -2905
		mu 0 4 1287 1288 1280 1279
		f 4 2907 2908 -1708 -2907
		mu 0 4 1288 1289 1281 1280
		f 4 2909 2910 -1709 -2909
		mu 0 4 1897 1290 1282 2024
		f 4 2911 2912 -1710 -2911
		mu 0 4 1290 1291 1283 1282
		f 4 2913 2902 -1711 -2913
		mu 0 4 1291 1286 1278 1283
		f 4 1397 -1391 -1390 2914
		mu 0 4 2020 1293 1294 2022
		f 4 1389 2915 2821 -2917
		mu 0 4 2022 1294 1202 2023
		f 4 2917 1396 -2919 -2915
		mu 0 4 1295 1296 1297 1292
		f 4 1712 -2920 -2918 2916
		mu 0 4 1205 1208 1296 1295
		f 4 1398 -1392 -2921 1390
		mu 0 4 1293 1298 1299 1294
		f 4 2920 2921 -2923 -2916
		mu 0 4 1294 1299 1300 1202
		f 4 1399 -1393 -2924 1391
		mu 0 4 1298 1301 1302 1299
		f 4 2923 2924 1716 -2922
		mu 0 4 1299 1302 1303 1300
		f 4 1400 -1394 -2926 1392
		mu 0 4 1301 1304 2021 1302
		f 4 2925 2926 1715 -2925
		mu 0 4 1302 2021 1999 1303
		f 4 1401 -1395 -2928 1393
		mu 0 4 2019 1307 1308 1305
		f 4 2927 2928 1714 -2927
		mu 0 4 1305 1308 1309 1306
		f 4 1402 -1396 -2930 1394
		mu 0 4 1307 1310 1311 1308
		f 4 2929 2930 -2932 -2929
		mu 0 4 1308 1311 1312 1309
		f 4 1403 -1397 -2933 1395
		mu 0 4 1310 1297 1296 1311
		f 4 2932 2919 2933 -2931
		mu 0 4 1311 1296 1208 1312
		f 4 1405 -2935 -1398 2935
		mu 0 4 2018 1314 1293 2020
		f 4 2918 1404 -2937 -2936
		mu 0 4 1292 1297 1315 1313
		f 4 1406 -2938 -1399 2934
		mu 0 4 1314 1316 1298 1293
		f 4 1407 -2939 -1400 2937
		mu 0 4 1316 1317 1301 1298
		f 4 1408 -2940 -1401 2938
		mu 0 4 1317 1318 1304 1301
		f 4 1409 -2941 -1402 2939
		mu 0 4 2017 1319 1307 2019
		f 4 1410 -2942 -1403 2940
		mu 0 4 1319 1320 1310 1307
		f 4 1411 -1405 -1404 2941
		mu 0 4 1320 1315 1297 1310
		f 4 1413 -2943 -1406 2943
		mu 0 4 2016 1322 1314 2018
		f 4 2936 1412 -2945 -2944
		mu 0 4 1313 1315 1323 1321
		f 4 1414 -2946 -1407 2942
		mu 0 4 1322 1324 1316 1314
		f 4 1415 -2947 -1408 2945
		mu 0 4 1324 1325 1317 1316
		f 4 1416 -2948 -1409 2946
		mu 0 4 1325 1326 1318 1317
		f 4 1417 -2949 -1410 2947
		mu 0 4 2015 1327 1319 2017
		f 4 1418 -2950 -1411 2948
		mu 0 4 1327 1328 1320 1319
		f 4 1419 -1413 -1412 2949
		mu 0 4 1328 1323 1315 1320
		f 4 1421 -2951 -1414 2951
		mu 0 4 2014 1330 1322 2016
		f 4 2944 1420 -2953 -2952
		mu 0 4 1321 1323 1331 1329
		f 4 1422 -2954 -1415 2950
		mu 0 4 1330 1332 1324 1322
		f 4 1423 -2955 -1416 2953
		mu 0 4 1332 1333 1325 1324
		f 4 1424 -2956 -1417 2954
		mu 0 4 1333 1334 1326 1325
		f 4 1425 -2957 -1418 2955
		mu 0 4 2013 1335 1327 2015
		f 4 1426 -2958 -1419 2956
		mu 0 4 1335 1336 1328 1327
		f 4 -1428 -1421 -1420 2957
		mu 0 4 1336 1331 1323 1328
		f 4 1428 -2959 -1422 2959
		mu 0 4 2012 1338 1330 2014
		f 4 2952 2960 -2962 -2960
		mu 0 4 1329 1331 1339 1337
		f 4 1429 -2963 -1423 2958
		mu 0 4 1338 1340 1332 1330
		f 4 1430 -2964 -1424 2962
		mu 0 4 1340 1341 1333 1332
		f 4 1431 -2965 -1425 2963
		mu 0 4 1341 1342 1334 1333
		f 4 1432 -2966 -1426 2964
		mu 0 4 2011 1343 1335 2013
		f 4 2965 1433 1434 -1427
		mu 0 4 1335 1343 1344 1336
		f 4 -1435 2966 -2961 1427
		mu 0 4 1336 1344 1339 1331
		f 4 1436 -2968 -1429 2968
		mu 0 4 2010 1346 1338 2012
		f 4 2961 1435 -2970 -2969
		mu 0 4 1337 1339 1347 1345
		f 4 1437 -2971 -1430 2967
		mu 0 4 1346 1348 1340 1338
		f 4 1438 -2972 -1431 2970
		mu 0 4 1348 1349 1341 1340
		f 4 1439 -2973 -1432 2971
		mu 0 4 1349 1350 1342 1341
		f 4 1440 -2974 -1433 2972
		mu 0 4 2009 1351 1343 2011
		f 4 1441 -2975 -1434 2973
		mu 0 4 1351 1352 1344 1343
		f 4 1442 -1436 -2967 2974
		mu 0 4 1352 1347 1339 1344
		f 4 1444 -2976 -1437 2976
		mu 0 4 2008 1354 1346 2010
		f 4 2969 1443 -2978 -2977
		mu 0 4 1345 1347 1355 1353
		f 4 1445 -2979 -1438 2975
		mu 0 4 1354 1356 1348 1346
		f 4 1446 -2980 -1439 2978
		mu 0 4 1356 1357 1349 1348
		f 4 1447 -2981 -1440 2979
		mu 0 4 1357 1358 1350 1349
		f 4 1448 -2982 -1441 2980
		mu 0 4 2007 1359 1351 2009
		f 4 1449 -2983 -1442 2981
		mu 0 4 1359 1360 1352 1351
		f 4 1450 -1444 -1443 2982
		mu 0 4 1360 1355 1347 1352
		f 4 1452 -2984 -1445 2984
		mu 0 4 2006 1362 1354 2008
		f 4 2977 1451 -2986 -2985
		mu 0 4 1353 1355 1363 1361
		f 4 1453 -2987 -1446 2983
		mu 0 4 1362 1364 1356 1354
		f 4 -1467 -2988 -1447 2986
		mu 0 4 1364 1365 1357 1356
		f 4 -1455 -2989 -1448 2987
		mu 0 4 1365 1366 1358 1357
		f 4 2989 -2991 -1449 2988
		mu 0 4 2005 1367 1359 2007
		f 4 1455 -2992 -1450 2990
		mu 0 4 1367 1368 1360 1359
		f 4 1465 -1452 -1451 2991
		mu 0 4 1368 1363 1355 1360
		f 4 1456 -2993 -1453 2993
		mu 0 4 2004 1370 1362 2006
		f 4 -1464 -2995 -2994 2985
		mu 0 4 1363 1371 1369 1361
		f 4 2992 1457 1458 -1454
		mu 0 4 1362 1370 1372 1364
		f 4 1460 -2996 -2990 2996
		mu 0 4 2003 1374 1367 2005
		f 4 -1460 2997 -2997 1454
		mu 0 4 1365 1375 1373 1366
		f 4 2995 1461 1462 -1456
		mu 0 4 1367 1374 1376 1368
		f 4 1697 -2999 -1457 2999
		mu 0 4 2002 1378 1370 2004
		f 4 2994 3000 -3002 -3000
		mu 0 4 1369 1371 1379 1377
		f 4 1698 -3003 -1458 2998
		mu 0 4 1378 1380 1372 1370
		f 4 3003 1459 1466 -1459
		mu 0 4 1372 1375 1365 1364
		f 4 1699 -3005 -3004 3002
		mu 0 4 1380 1381 1375 1372
		f 4 1700 -3006 -2998 3004
		mu 0 4 1381 1382 1373 1375
		f 4 1701 -3007 -1461 3005
		mu 0 4 2001 1383 1374 2003
		f 4 1702 -3008 -1462 3006
		mu 0 4 1383 1384 1376 1374
		f 4 3008 1463 -1466 -1463
		mu 0 4 1376 1371 1363 1368
		f 4 1703 -3001 -3009 3007
		mu 0 4 1384 1379 1371 1376
		f 4 1464 3009 -1698 -3011
		mu 0 4 1892 1386 1378 2002
		f 4 3001 -3013 -3012 3010
		mu 0 4 1377 1379 1387 1385
		f 4 3013 3014 -1699 -3010
		mu 0 4 1386 1388 1380 1378
		f 4 3015 3016 -1700 -3015
		mu 0 4 1388 1389 1381 1380
		f 4 3017 3018 -1701 -3017
		mu 0 4 1389 1390 1382 1381
		f 4 3019 3020 -1702 -3019
		mu 0 4 1891 1391 1383 2001
		f 4 3021 3022 -1703 -3021
		mu 0 4 1391 1392 1384 1383
		f 4 3023 3012 -1704 -3023
		mu 0 4 1392 1387 1379 1384
		f 4 1467 1468 -1476 -3025
		mu 0 4 2000 1394 1395 1396
		f 4 -1718 -3026 -1468 3026
		mu 0 4 1975 1398 1394 2000
		f 4 3027 -1475 -3029 3024
		mu 0 4 1997 1399 1400 1393
		f 4 3028 3029 -1719 -3027
		mu 0 4 1393 1400 1401 1397
		f 4 3030 1469 -1477 -1469
		mu 0 4 1394 1402 1403 1395
		f 4 3031 -3033 -3031 3025
		mu 0 4 1398 1404 1402 1394
		f 4 3033 1470 -1478 -1470
		mu 0 4 1402 1405 1406 1403
		f 4 -3035 -3036 -3034 3032
		mu 0 4 1404 1303 1405 1402
		f 4 3036 1471 -1479 -1471
		mu 0 4 1405 1998 1996 1406
		f 4 -1716 -3038 -3037 3035
		mu 0 4 1303 1999 1998 1405
		f 4 3038 1472 -1480 -1472
		mu 0 4 1407 1409 1410 1408
		f 4 -1715 -3040 -3039 3037
		mu 0 4 1306 1309 1409 1407
		f 4 3040 1473 -1481 -1473
		mu 0 4 1409 1411 1412 1410
		f 4 3041 -3043 -3041 3039
		mu 0 4 1309 1413 1411 1409
		f 4 3043 1474 -1482 -1474
		mu 0 4 1411 1400 1399 1412
		f 4 -1720 -3030 -3044 3042
		mu 0 4 1413 1401 1400 1411
		f 4 1475 3044 -1484 -3046
		mu 0 4 1396 1395 1414 1415
		f 4 3046 -1483 -3028 3045
		mu 0 4 1995 1416 1399 1997
		f 4 1476 3047 -1485 -3045
		mu 0 4 1395 1403 1417 1414
		f 4 1477 3048 -1486 -3048
		mu 0 4 1403 1406 1418 1417
		f 4 1478 3049 -1487 -3049
		mu 0 4 1406 1996 1994 1418
		f 4 1479 3050 -1488 -3050
		mu 0 4 1408 1410 1420 1419
		f 4 1480 3051 -1489 -3051
		mu 0 4 1410 1412 1421 1420
		f 4 1481 1482 -1490 -3052
		mu 0 4 1412 1399 1416 1421
		f 4 1483 3052 -1492 -3054
		mu 0 4 1415 1414 1422 1423
		f 4 3054 -1491 -3047 3053
		mu 0 4 1993 1424 1416 1995
		f 4 1484 3055 -1493 -3053
		mu 0 4 1414 1417 1425 1422
		f 4 1485 3056 -1494 -3056
		mu 0 4 1417 1418 1426 1425
		f 4 1486 3057 -1495 -3057
		mu 0 4 1418 1994 1992 1426
		f 4 1487 3058 -1496 -3058
		mu 0 4 1419 1420 1428 1427
		f 4 1488 3059 -1497 -3059
		mu 0 4 1420 1421 1429 1428
		f 4 1489 1490 -1498 -3060
		mu 0 4 1421 1416 1424 1429
		f 4 1491 3060 -1500 -3062
		mu 0 4 1423 1422 1430 1431
		f 4 3062 -1499 -3055 3061
		mu 0 4 1991 1432 1424 1993
		f 4 1492 3063 -1501 -3061
		mu 0 4 1422 1425 1433 1430
		f 4 1493 3064 -1502 -3064
		mu 0 4 1425 1426 1434 1433
		f 4 1494 3065 -1503 -3065
		mu 0 4 1426 1992 1990 1434
		f 4 1495 3066 -1504 -3066
		mu 0 4 1427 1428 1436 1435
		f 4 1496 3067 -1505 -3067
		mu 0 4 1428 1429 1437 1436
		f 4 1497 1498 -1506 -3068
		mu 0 4 1429 1424 1432 1437
		f 4 1499 3068 -1508 -3070
		mu 0 4 1431 1430 1438 1439
		f 4 3070 -1507 -3063 3069
		mu 0 4 1989 1440 1432 1991
		f 4 1500 3071 -1509 -3069
		mu 0 4 1430 1433 1441 1438
		f 4 1501 3072 -1510 -3072
		mu 0 4 1433 1434 1442 1441
		f 4 1502 3073 -1511 -3073
		mu 0 4 1434 1990 1988 1442
		f 4 1503 3074 -1512 -3074
		mu 0 4 1435 1436 1444 1443
		f 4 1504 3075 -1513 -3075
		mu 0 4 1436 1437 1445 1444
		f 4 1505 1506 -1514 -3076
		mu 0 4 1437 1432 1440 1445
		f 4 1507 3076 -1516 -3078
		mu 0 4 1439 1438 1446 1447
		f 4 3078 -1515 -3071 3077
		mu 0 4 1987 1448 1440 1989
		f 4 1508 3079 -1517 -3077
		mu 0 4 1438 1441 1449 1446
		f 4 1509 3080 -1518 -3080
		mu 0 4 1441 1442 1450 1449
		f 4 1510 3081 -1519 -3081
		mu 0 4 1442 1988 1986 1450
		f 4 1511 3082 -1520 -3082
		mu 0 4 1443 1444 1452 1451
		f 4 1512 3083 -1521 -3083
		mu 0 4 1444 1445 1453 1452
		f 4 1513 1514 -1522 -3084
		mu 0 4 1445 1440 1448 1453
		f 4 1515 3084 -1524 -3086
		mu 0 4 1447 1446 1454 1455
		f 4 3086 -1523 -3079 3085
		mu 0 4 1985 1456 1448 1987
		f 4 1516 3087 -1525 -3085
		mu 0 4 1446 1449 1457 1454
		f 4 1517 3088 -1526 -3088
		mu 0 4 1449 1450 1458 1457
		f 4 1518 3089 -1527 -3089
		mu 0 4 1450 1986 1984 1458
		f 4 1519 3090 -1528 -3090
		mu 0 4 1451 1452 1460 1459
		f 4 1520 3091 -1529 -3091
		mu 0 4 1452 1453 1461 1460
		f 4 1521 1522 -1530 -3092
		mu 0 4 1453 1448 1456 1461
		f 4 1523 3092 -1532 -3094
		mu 0 4 1455 1454 1462 1463
		f 4 3094 -1531 -3087 3093
		mu 0 4 1983 1464 1456 1985
		f 4 1524 3095 -1533 -3093
		mu 0 4 1454 1457 1465 1462
		f 4 1525 3096 -1534 -3096
		mu 0 4 1457 1458 1466 1465
		f 4 1526 3097 -1535 -3097
		mu 0 4 1458 1984 1982 1466
		f 4 1527 3098 -1536 -3098
		mu 0 4 1459 1460 1468 1467
		f 4 1528 3099 -1537 -3099
		mu 0 4 1460 1461 1469 1468
		f 4 1529 1530 -1538 -3100
		mu 0 4 1461 1456 1464 1469
		f 4 1531 3100 -1540 -3102
		mu 0 4 1463 1462 1470 1471
		f 4 3102 -1539 -3095 3101
		mu 0 4 1981 1472 1464 1983
		f 4 1532 3103 -1541 -3101
		mu 0 4 1462 1465 1473 1470
		f 4 1533 3104 -1542 -3104
		mu 0 4 1465 1466 1474 1473
		f 4 1534 3105 -1543 -3105
		mu 0 4 1466 1982 1980 1474
		f 4 1535 3106 -1544 -3106
		mu 0 4 1467 1468 1476 1475
		f 4 1536 3107 -1545 -3107
		mu 0 4 1468 1469 1477 1476
		f 4 1537 1538 -1546 -3108
		mu 0 4 1469 1464 1472 1477
		f 4 1539 3108 -1691 -3110
		mu 0 4 1471 1470 1478 1479
		f 4 3110 -1547 -3103 3109
		mu 0 4 1979 1480 1472 1981
		f 4 1540 3111 -1692 -3109
		mu 0 4 1470 1473 1481 1478
		f 4 1541 3112 -1693 -3112
		mu 0 4 1473 1474 1482 1481
		f 4 1542 3113 -1694 -3113
		mu 0 4 1474 1980 1978 1482
		f 4 1543 3114 -1695 -3114
		mu 0 4 1475 1476 1484 1483
		f 4 1544 3115 -1696 -3115
		mu 0 4 1476 1477 1485 1484
		f 4 1545 1546 -1697 -3116
		mu 0 4 1477 1472 1480 1485
		f 4 1690 -3117 -1548 3117
		mu 0 4 1479 1478 1486 1487
		f 4 3118 3119 -3111 -3118
		mu 0 4 1885 1488 1480 1979
		f 4 1691 -3122 -3121 3116
		mu 0 4 1478 1481 1489 1486
		f 4 1692 -3124 -3123 3121
		mu 0 4 1481 1482 1490 1489
		f 4 1693 -3126 -3125 3123
		mu 0 4 1482 1978 1886 1490
		f 4 1694 -3128 -3127 3125
		mu 0 4 1483 1484 1492 1491
		f 4 1695 -3130 -3129 3127
		mu 0 4 1484 1485 1493 1492
		f 4 1696 -3120 -3131 3129
		mu 0 4 1485 1480 1488 1493
		f 4 1548 1549 -1557 -3132
		mu 0 4 1976 1495 1496 1497
		f 4 -1725 -3133 -1549 3133
		mu 0 4 1498 1499 1495 1976
		f 4 3134 -1556 -3136 3131
		mu 0 4 1973 1500 1501 1494
		f 4 3135 3136 1732 -3134
		mu 0 4 1494 1501 1502 1977
		f 4 3137 1550 -1558 -1550
		mu 0 4 1495 1503 1504 1496
		f 4 -1724 -3139 -3138 3132
		mu 0 4 1499 1505 1503 1495
		f 4 3139 1551 -1559 -1551
		mu 0 4 1503 1506 1507 1504
		f 4 -3141 -3142 -3140 3138
		mu 0 4 1505 1398 1506 1503
		f 4 3142 1552 -1560 -1552
		mu 0 4 1506 1974 1972 1507
		f 4 1717 -3144 -3143 3141
		mu 0 4 1398 1975 1974 1506
		f 4 3144 1553 -1561 -1553
		mu 0 4 1508 1510 1511 1509
		f 4 1718 -3146 -3145 3143
		mu 0 4 1397 1401 1510 1508
		f 4 3146 1554 -1562 -1554
		mu 0 4 1510 1512 1513 1511
		f 4 3147 -3149 -3147 3145
		mu 0 4 1401 1514 1512 1510
		f 4 3149 1555 -1563 -1555
		mu 0 4 1512 1501 1500 1513
		f 4 1731 -3137 -3150 3148
		mu 0 4 1514 1502 1501 1512
		f 4 1556 3150 -1565 -3152
		mu 0 4 1497 1496 1515 1516
		f 4 3152 -1564 -3135 3151
		mu 0 4 1971 1517 1500 1973
		f 4 1557 3153 -1566 -3151
		mu 0 4 1496 1504 1518 1515
		f 4 1558 3154 -1567 -3154
		mu 0 4 1504 1507 1519 1518
		f 4 1559 3155 -1568 -3155
		mu 0 4 1507 1972 1970 1519
		f 4 1560 3156 -1569 -3156
		mu 0 4 1509 1511 1521 1520
		f 4 1561 3157 -1570 -3157
		mu 0 4 1511 1513 1522 1521
		f 4 1562 1563 -1571 -3158
		mu 0 4 1513 1500 1517 1522
		f 4 1564 3158 -1573 -3160
		mu 0 4 1516 1515 1523 1524
		f 4 3160 -1572 -3153 3159
		mu 0 4 1969 1525 1517 1971
		f 4 1565 3161 -1574 -3159
		mu 0 4 1515 1518 1526 1523
		f 4 1566 3162 -1575 -3162
		mu 0 4 1518 1519 1527 1526
		f 4 1567 3163 -1576 -3163
		mu 0 4 1519 1970 1968 1527
		f 4 1568 3164 -1577 -3164
		mu 0 4 1520 1521 1529 1528
		f 4 1569 3165 -1578 -3165
		mu 0 4 1521 1522 1530 1529
		f 4 1570 1571 -1579 -3166
		mu 0 4 1522 1517 1525 1530
		f 4 1572 3166 -1581 -3168
		mu 0 4 1524 1523 1531 1532
		f 4 3168 -1580 -3161 3167
		mu 0 4 1967 1533 1525 1969
		f 4 1573 3169 -1582 -3167
		mu 0 4 1523 1526 1534 1531
		f 4 1574 3170 -1583 -3170
		mu 0 4 1526 1527 1535 1534
		f 4 1575 3171 -1584 -3171
		mu 0 4 1527 1968 1966 1535
		f 4 1576 3172 -1585 -3172
		mu 0 4 1528 1529 1537 1536
		f 4 1577 3173 -1586 -3173
		mu 0 4 1529 1530 1538 1537
		f 4 1578 1579 -1587 -3174
		mu 0 4 1530 1525 1533 1538
		f 4 1580 3174 -1589 -3176
		mu 0 4 1532 1531 1539 1540
		f 4 3176 -1588 -3169 3175
		mu 0 4 1965 1541 1533 1967
		f 4 1581 3177 -1590 -3175
		mu 0 4 1531 1534 1542 1539
		f 4 1582 3178 -1591 -3178
		mu 0 4 1534 1535 1543 1542
		f 4 1583 3179 -1592 -3179
		mu 0 4 1535 1966 1964 1543
		f 4 1584 3180 -1593 -3180
		mu 0 4 1536 1537 1545 1544
		f 4 1585 3181 -1594 -3181
		mu 0 4 1537 1538 1546 1545
		f 4 1586 1587 -1595 -3182
		mu 0 4 1538 1533 1541 1546
		f 4 1588 3182 -1597 -3184
		mu 0 4 1540 1539 1547 1548
		f 4 3184 -1596 -3177 3183
		mu 0 4 1963 1549 1541 1965
		f 4 1589 3185 -1598 -3183
		mu 0 4 1539 1542 1550 1547
		f 4 1590 3186 -1599 -3186
		mu 0 4 1542 1543 1551 1550
		f 4 1591 3187 -1600 -3187
		mu 0 4 1543 1964 1962 1551
		f 4 1592 3188 -1601 -3188
		mu 0 4 1544 1545 1553 1552
		f 4 1593 3189 -1602 -3189
		mu 0 4 1545 1546 1554 1553
		f 4 1594 1595 -1603 -3190
		mu 0 4 1546 1541 1549 1554
		f 4 1596 3190 -1605 -3192
		mu 0 4 1548 1547 1555 1556
		f 4 3192 -1604 -3185 3191
		mu 0 4 1961 1557 1549 1963
		f 4 1597 3193 -1606 -3191
		mu 0 4 1547 1550 1558 1555
		f 4 1598 3194 -1607 -3194
		mu 0 4 1550 1551 1559 1558
		f 4 1599 3195 -1608 -3195
		mu 0 4 1551 1962 1960 1559
		f 4 1600 3196 -1609 -3196
		mu 0 4 1552 1553 1561 1560
		f 4 1601 3197 -1610 -3197
		mu 0 4 1553 1554 1562 1561
		f 4 1602 1603 -1611 -3198
		mu 0 4 1554 1549 1557 1562
		f 4 1604 3198 -1613 -3200
		mu 0 4 1556 1555 1563 1564
		f 4 3200 -1612 -3193 3199
		mu 0 4 1959 1565 1557 1961
		f 4 1605 3201 -1614 -3199
		mu 0 4 1555 1558 1566 1563
		f 4 1606 3202 -1615 -3202
		mu 0 4 1558 1559 1567 1566
		f 4 1607 3203 -1616 -3203
		mu 0 4 1559 1960 1958 1567
		f 4 1608 3204 -1617 -3204
		mu 0 4 1560 1561 1569 1568
		f 4 1609 3205 -1618 -3205
		mu 0 4 1561 1562 1570 1569
		f 4 1610 1611 -1619 -3206
		mu 0 4 1562 1557 1565 1570
		f 4 1612 3206 -1621 -3208
		mu 0 4 1564 1563 1571 1572
		f 4 3208 -1620 -3201 3207
		mu 0 4 1957 1573 1565 1959
		f 4 1613 3209 -1622 -3207
		mu 0 4 1563 1566 1574 1571
		f 4 1614 3210 -1623 -3210
		mu 0 4 1566 1567 1575 1574
		f 4 1615 3211 -1624 -3211
		mu 0 4 1567 1958 1956 1575
		f 4 1616 3212 -1625 -3212
		mu 0 4 1568 1569 1577 1576
		f 4 1617 3213 -1626 -3213
		mu 0 4 1569 1570 1578 1577
		f 4 1618 1619 -1627 -3214
		mu 0 4 1570 1565 1573 1578
		f 4 1620 3214 -1684 -3216
		mu 0 4 1572 1571 1579 1580
		f 4 3216 -1628 -3209 3215
		mu 0 4 1955 1581 1573 1957
		f 4 1621 3217 -1685 -3215
		mu 0 4 1571 1574 1582 1579
		f 4 1622 3218 -1686 -3218
		mu 0 4 1574 1575 1583 1582
		f 4 1623 3219 -1687 -3219
		mu 0 4 1575 1956 1954 1583
		f 4 1624 3220 -1688 -3220
		mu 0 4 1576 1577 1585 1584
		f 4 1625 3221 -1689 -3221
		mu 0 4 1577 1578 1586 1585
		f 4 1626 1627 -1690 -3222
		mu 0 4 1578 1573 1581 1586
		f 4 1683 -3223 -1629 3223
		mu 0 4 1580 1579 1587 1588
		f 4 3224 3225 -3217 -3224
		mu 0 4 1879 1589 1581 1955
		f 4 1684 -3228 -3227 3222
		mu 0 4 1579 1582 1590 1587
		f 4 1685 -3230 -3229 3227
		mu 0 4 1582 1583 1591 1590
		f 4 1686 -3232 -3231 3229
		mu 0 4 1583 1954 1880 1591
		f 4 1687 -3234 -3233 3231
		mu 0 4 1584 1585 1593 1592
		f 4 1688 -3236 -3235 3233
		mu 0 4 1585 1586 1594 1593
		f 4 1689 -3226 -3237 3235
		mu 0 4 1586 1581 1589 1594
		f 4 1629 1630 -1637 -3238
		mu 0 4 1953 1596 1597 1598
		f 4 1775 -3239 -1630 3239
		mu 0 4 1937 1600 1596 1953
		f 4 3240 -1636 -3242 3237
		mu 0 4 1952 1601 1602 1595
		f 4 3241 3242 1774 -3240
		mu 0 4 1595 1602 1603 1599
		f 4 3243 1631 -1638 -1631
		mu 0 4 1596 1604 1605 1597
		f 4 1776 -3245 -3244 3238
		mu 0 4 1600 1606 1604 1596
		f 4 3245 1632 -1639 -1632
		mu 0 4 1604 1607 1608 1605
		f 4 -1766 -3247 -3246 3244
		mu 0 4 1606 1609 1607 1604
		f 4 1633 1634 -1641 -3249
		mu 0 4 1610 1611 1612 1613
		f 4 1772 -3250 -1634 3250
		mu 0 4 1614 1615 1611 1610
		f 4 3253 1635 -1642 -1635
		mu 0 4 1611 1602 1601 1612
		f 4 1773 -3243 -3254 3249
		mu 0 4 1615 1603 1602 1611
		f 4 1636 3254 -1644 -3256
		mu 0 4 1598 1597 1616 1617
		f 4 3256 -1643 -3241 3255
		mu 0 4 1951 1618 1601 1952
		f 4 1637 3257 -1645 -3255
		mu 0 4 1597 1605 1619 1616
		f 4 1638 3258 -1646 -3258
		mu 0 4 1605 1608 1620 1619
		f 4 1639 3259 -1647 -3259
		mu 0 4 1608 1621 1950 1620
		f 4 3251 3260 -1648 -3260
		mu 0 4 1868 1613 1623 1622
		f 4 1640 3261 -1649 -3261
		mu 0 4 1613 1612 1624 1623
		f 4 1641 1642 -1650 -3262
		mu 0 4 1612 1601 1618 1624
		f 4 1643 3262 -1652 -3264
		mu 0 4 1617 1616 1625 1626
		f 4 3264 -1651 -3257 3263
		mu 0 4 1949 1627 1618 1951
		f 4 1644 3265 -1653 -3263
		mu 0 4 1616 1619 1628 1625
		f 4 1645 3266 -1654 -3266
		mu 0 4 1619 1620 1629 1628
		f 4 1646 3267 -1655 -3267
		mu 0 4 1620 1950 1948 1629
		f 4 1647 3268 -1656 -3268
		mu 0 4 1622 1623 1631 1630
		f 4 1648 3269 -1657 -3269
		mu 0 4 1623 1624 1632 1631
		f 4 1649 1650 -1658 -3270
		mu 0 4 1624 1618 1627 1632
		f 4 1651 3270 -1660 -3272
		mu 0 4 1626 1625 1633 1634
		f 4 3272 -1659 -3265 3271
		mu 0 4 1947 1635 1627 1949
		f 4 1652 3273 -1661 -3271
		mu 0 4 1625 1628 1636 1633
		f 4 1653 3274 -1662 -3274
		mu 0 4 1628 1629 1637 1636
		f 4 1654 3275 -1663 -3275
		mu 0 4 1629 1948 1946 1637
		f 4 1655 3276 -1664 -3276
		mu 0 4 1630 1631 1639 1638
		f 4 1656 3277 -1665 -3277
		mu 0 4 1631 1632 1640 1639
		f 4 1657 1658 -1666 -3278
		mu 0 4 1632 1627 1635 1640
		f 4 1659 3278 -1668 -3280
		mu 0 4 1634 1633 1641 1642
		f 4 3280 -1667 -3273 3279
		mu 0 4 1945 1643 1635 1947
		f 4 1660 3281 -1669 -3279
		mu 0 4 1633 1636 1644 1641
		f 4 1661 3282 -1670 -3282
		mu 0 4 1636 1637 1645 1644
		f 4 1662 3283 -1671 -3283
		mu 0 4 1637 1946 1944 1645
		f 4 1663 3284 -1672 -3284
		mu 0 4 1638 1639 1647 1646
		f 4 1664 3285 -1673 -3285
		mu 0 4 1639 1640 1648 1647
		f 4 1665 1666 -1674 -3286
		mu 0 4 1640 1635 1643 1648
		f 4 1667 3286 -1677 -3288
		mu 0 4 1642 1641 1649 1650
		f 4 3288 -1675 -3281 3287
		mu 0 4 1943 1651 1643 1945
		f 4 1668 3289 -1678 -3287
		mu 0 4 1641 1644 1652 1649
		f 4 1669 3290 -1679 -3290
		mu 0 4 1644 1645 1653 1652
		f 4 1670 3291 -1680 -3291
		mu 0 4 1645 1944 1942 1653
		f 4 1671 3292 -1681 -3292
		mu 0 4 1646 1647 1655 1654
		f 4 1672 3293 -1682 -3293
		mu 0 4 1647 1648 1656 1655
		f 4 1673 1674 -1683 -3294
		mu 0 4 1648 1643 1651 1656
		f 4 1676 -3295 -1676 3295
		mu 0 4 1650 1649 1657 1658
		f 4 3296 3297 -3289 -3296
		mu 0 4 1874 1659 1651 1943
		f 4 1677 -3300 -3299 3294
		mu 0 4 1649 1652 1660 1657
		f 4 1678 -3302 -3301 3299
		mu 0 4 1652 1653 1661 1660
		f 4 1679 -3304 -3303 3301
		mu 0 4 1653 1942 1873 1661
		f 4 1680 -3306 -3305 3303
		mu 0 4 1654 1655 1663 1662
		f 4 1681 -3308 -3307 3305
		mu 0 4 1655 1656 1664 1663
		f 4 1682 -3298 -3309 3307
		mu 0 4 1656 1651 1659 1664
		f 4 2922 1721 -3310 -1712
		mu 0 4 1202 1300 1665 1199
		f 4 1713 1728 -1730 -2934
		mu 0 4 1208 1211 1666 1312
		f 4 2931 3310 -1731 -3042
		mu 0 4 1309 1312 1667 1413
		f 4 3034 1720 -3312 -1717
		mu 0 4 1303 1404 1668 1300
		f 4 3312 -3314 -3032 3140
		mu 0 4 1505 1669 1404 1398
		f 4 1719 3314 -3316 -3148
		mu 0 4 1401 1413 1670 1514
		f 4 3313 1734 -1736 -1721
		mu 0 4 1404 1669 1671 1668
		f 4 3311 3316 -1737 -1722
		mu 0 4 1300 1668 1672 1665;
	setAttr ".fc[1500:1905]"
		f 4 3317 -3319 -1723 3309
		mu 0 4 1665 1673 1192 1199
		f 4 1723 3319 -3321 -3313
		mu 0 4 1505 1499 1674 1669
		f 4 1724 1733 -1742 -3320
		mu 0 4 1499 1498 1865 1674
		f 4 1740 -3322 -1726 3318
		mu 0 4 1673 1941 1193 1192
		f 4 -1753 -3323 -1727 3321
		mu 0 4 1676 1677 1196 1940
		f 4 -1752 -3324 -1728 3322
		mu 0 4 1677 1678 1211 1196
		f 4 -1748 -1745 -1729 3323
		mu 0 4 1678 1679 1666 1211
		f 4 1745 -1744 -3311 3324
		mu 0 4 1680 1681 1667 1312
		f 4 1729 1744 -3326 -3325
		mu 0 4 1312 1666 1679 1680
		f 4 1748 -1743 -3315 3326
		mu 0 4 1682 1683 1670 1413
		f 4 1730 1743 1746 -3327
		mu 0 4 1413 1667 1681 1682
		f 4 3315 1742 1749 -3329
		mu 0 4 1514 1670 1683 1684
		f 4 3329 -1739 -1735 3320
		mu 0 4 1674 1685 1671 1669
		f 4 3330 -1738 -3317 1735
		mu 0 4 1671 1686 1672 1668
		f 4 1736 1737 1739 -3318
		mu 0 4 1665 1672 1686 1673
		f 4 3632 -3352 -3332 3628
		mu 0 4 1687 1688 1689 1686
		f 4 3333 1765 1777 -3351
		mu 0 4 1690 1609 1606 1691
		f 4 1766 -3335 -1740 3331
		mu 0 4 1689 1692 1673 1686
		f 4 -3336 -1754 -1741 3334
		mu 0 4 1692 980 1941 1673
		f 4 3336 3588 3604 3603
		mu 0 4 1693 1864 1675 1695
		f 4 3601 3595 3586 3597
		mu 0 4 1696 1610 1697 1698
		f 4 1756 -3339 -1746 3339
		mu 0 4 1699 1700 1681 1680
		f 4 3325 3340 -3342 -3340
		mu 0 4 1680 1679 1701 1699
		f 4 1757 -3343 -1747 3338
		mu 0 4 1700 962 1682 1681
		f 4 1747 3343 -1759 -3341
		mu 0 4 1679 1678 966 1701
		f 4 3344 -3346 -1749 3342
		mu 0 4 962 1702 1683 1682
		f 4 1760 -1751 -1750 3345
		mu 0 4 1702 1703 1684 1683
		f 4 1751 3346 -2627 -3344
		mu 0 4 1678 1677 983 966
		f 4 1752 1753 -1764 -3347
		mu 0 4 1677 1676 2066 983
		f 4 1755 1761 3347 -3338
		mu 0 4 1704 1703 969 1705
		f 4 -1760 -1758 -1757 3348
		mu 0 4 963 962 1700 1699
		f 4 3341 1758 1762 -3349
		mu 0 4 1699 1701 966 963
		f 4 -1762 -1761 -3345 2615
		mu 0 4 969 1703 1702 962
		f 4 1771 -3350 -3348 1764
		mu 0 4 974 1706 1705 969
		f 4 -3334 -3333 1738 1754
		mu 0 4 1609 1690 1671 1685
		f 4 3352 -1768 3335 -1767
		mu 0 4 1689 977 980 1692
		f 4 1779 -3354 -3353 3351
		mu 0 4 1688 1707 977 1689
		f 4 1780 -3355 -1769 3353
		mu 0 4 1707 1708 972 977
		f 4 1781 -3356 -1770 3354
		mu 0 4 1708 1709 973 972
		f 4 1782 -3357 -1771 3355
		mu 0 4 1938 1710 974 1939
		f 4 -3358 -3253 -1772 3356
		mu 0 4 1710 1614 1706 974
		f 4 -3359 -1774 -1773 3357
		mu 0 4 1710 1603 1615 1614
		f 4 -1783 -3360 -1775 3358
		mu 0 4 1710 1938 1599 1603
		f 4 -1782 -3361 -1776 3359
		mu 0 4 1709 1708 1600 1937
		f 4 -3362 -1778 -1777 3360
		mu 0 4 1708 1691 1606 1600
		f 4 -1781 -1780 -1779 3361
		mu 0 4 1708 1707 1688 1691
		f 4 442 -2673 -358 3362
		mu 0 4 1711 1057 1058 1712
		f 4 439 1167 -443 -3364
		mu 0 4 1713 1063 1057 1711
		f 4 3364 435 3365 -3363
		mu 0 4 1712 1714 1715 1711
		f 4 446 -449 -3368 3368
		mu 0 4 1716 293 295 1717
		f 4 1838 -3369 3366 1163
		mu 0 4 1048 1716 1717 1046
		f 4 1832 -450 -447 3369
		mu 0 4 1718 294 293 1716
		f 4 453 -451 -448 3370
		mu 0 4 1719 277 276 1720
		f 4 1831 -3370 -1839 1164
		mu 0 4 1069 1718 1716 1048
		f 4 3371 1165 -3373 -3371
		mu 0 4 1720 1071 1070 1719
		f 4 -3366 -452 -3374 3363
		mu 0 4 1711 1715 285 1713
		f 4 458 -2679 -440 3374
		mu 0 4 1721 1064 1063 1713
		f 4 -3376 433 3697 3694
		mu 0 4 1722 1723 1724 1725
		f 4 -3695 3698 -1154 -435
		mu 0 4 1722 1725 1726 1040
		f 4 539 -2678 -3367 3377
		mu 0 4 1727 1047 1046 1717
		f 4 554 -2787 -541 3378
		mu 0 4 1858 2343 1087 1934
		f 4 -3790 3805 -1254 -548
		mu 0 4 1730 2323 2324 1178
		f 4 3373 1900 3380 -3375
		mu 0 4 1713 285 284 1721
		f 4 567 -1174 -459 3381
		mu 0 4 1732 1076 1064 1721
		f 4 -3381 457 -3383 -3382
		mu 0 4 1721 284 289 1732
		f 4 -360 3385 1244 -3385
		mu 0 4 1733 1734 952 955
		f 4 577 -2602 -357 3386
		mu 0 4 1735 943 946 1736
		f 4 3388 360 -3388 -3387
		mu 0 4 1736 298 297 1735
		f 4 580 -1927 -3389 3389
		mu 0 4 1737 311 298 1736
		f 4 -3390 356 2603 -3391
		mu 0 4 1737 1736 946 948
		f 4 3367 1929 3391 -3378
		mu 0 4 1717 295 314 1727
		f 4 -3392 538 -588 -3393
		mu 0 4 1727 314 324 1738
		f 4 3393 -1252 -540 3392
		mu 0 4 1738 1164 1047 1727
		f 4 587 -1937 -581 3394
		mu 0 4 1738 324 311 1737
		f 4 -3395 3390 2803 -3394
		mu 0 4 1738 1737 948 1164
		f 4 531 -1945 3375 3395
		mu 0 4 1739 327 1723 1722
		f 4 594 -1946 -532 3396
		mu 0 4 1740 328 327 1739
		f 4 -3396 434 1166 -3398
		mu 0 4 1739 1722 1040 1041
		f 4 3397 2779 -3399 -3397
		mu 0 4 1739 1041 1159 1740
		f 4 358 -1947 -595 -3400
		mu 0 4 1741 329 328 1740
		f 4 3398 2778 -3401 3399
		mu 0 4 1740 1159 957 1741
		f 4 572 -1949 -3402 359
		mu 0 4 1733 330 331 1734
		f 4 3652 -359 3402 3401
		mu 0 4 331 329 1741 1734
		f 4 -3384 -3789 3804 3789
		mu 0 4 1730 270 2322 2323
		f 4 608 2777 -3380 3404
		mu 0 4 1742 1103 2342 1731
		f 4 -3404 2023 607 -3405
		mu 0 4 1731 271 397 1742
		f 4 609 -1307 -609 3405
		mu 0 4 1743 1086 1103 1742
		f 4 3410 541 -3407 -3379
		mu 0 4 1935 264 2339 2338
		f 4 -608 3407 3408 -3406
		mu 0 4 1742 397 403 1743
		f 4 -3409 3409 -3411 -3412
		mu 0 4 1743 403 1936 1729
		f 4 540 -2703 -610 3411
		mu 0 4 1729 2053 1086 1743
		f 4 -1814 -1785 -1784 3412
		mu 0 4 1744 1745 1746 1747
		f 4 413 414 3757 -3414
		mu 0 4 2210 1931 2294 2295
		f 4 -3415 1784 3415 -1786
		mu 0 4 1750 1746 1745 1751
		f 4 412 3413 3758 -3417
		mu 0 4 2211 2210 2295 2287
		f 4 1814 -1787 -3418 1785
		mu 0 4 1751 1753 1754 1750
		f 4 411 3416 3751 -3419
		mu 0 4 1932 2211 2287 2288
		f 4 -1788 3419 1816 -1789
		mu 0 4 1756 1757 1758 1759
		f 4 417 418 3753 -3421
		mu 0 4 1929 1933 2289 2290
		f 4 -3422 1786 1815 -3420
		mu 0 4 1757 1754 1753 1758
		f 4 -3423 3418 3752 -419
		mu 0 4 1933 1932 2288 2289
		f 4 1819 -3413 3423 1789
		mu 0 4 1762 1744 1747 1763
		f 4 3424 415 3756 -415
		mu 0 4 1931 1930 2293 2294
		f 4 1818 -1790 3425 1790
		mu 0 4 1906 1762 1763 2204
		f 4 3426 416 3755 -416
		mu 0 4 1930 1918 2291 2293
		f 4 -3428 1788 1817 -1791
		mu 0 4 1766 1756 1759 1765
		f 4 3428 3420 3754 -417
		mu 0 4 1919 1929 2290 2292
		f 4 1142 3429 1821 -3431
		mu 0 4 1019 1018 1768 1769
		f 4 3735 3728 1791 -3728
		mu 0 4 2278 2279 1772 1773
		f 4 1822 -3433 -2661 3430
		mu 0 4 1769 1774 1020 1019
		f 4 3736 3729 -3435 -3729
		mu 0 4 2279 2280 1776 1772
		f 4 2662 3435 1820 -3430
		mu 0 4 1018 1023 1777 1768
		f 4 3742 3727 1792 -3735
		mu 0 4 2286 2278 1773 1779
		f 4 2663 3437 -3439 -3436
		mu 0 4 1023 1025 1780 1777
		f 4 3741 3734 1794 -3734
		mu 0 4 2285 2286 1779 1782
		f 4 2664 3440 1826 -3438
		mu 0 4 1025 1027 1783 1780
		f 4 3740 3733 1795 -3733
		mu 0 4 2284 2285 1782 1785
		f 4 2665 3442 1825 -3441
		mu 0 4 1027 1924 1904 1783
		f 4 3739 3732 1796 -3732
		mu 0 4 2283 2284 1785 1788
		f 4 2666 3444 1824 -3443
		mu 0 4 1029 1031 1789 1786
		f 4 3738 3731 1797 -3731
		mu 0 4 2281 2282 1903 1791
		f 4 2667 3432 1823 -3445
		mu 0 4 1031 1020 1774 1789
		f 4 3737 3730 -1794 -3730
		mu 0 4 2280 2281 1791 1776
		f 4 3447 -413 -3449 404
		mu 0 4 383 1748 1752 385
		f 4 3449 3436 -3451 -1128
		mu 0 4 1009 1770 1778 1011
		f 4 -3452 403 3448 -412
		mu 0 4 1755 392 385 1752
		f 4 -3450 -1127 3452 1134
		mu 0 4 1770 1009 1008 1771
		f 4 -411 -2012 3451 3422
		mu 0 4 1761 393 392 1755
		f 4 -3453 2653 1133 -3434
		mu 0 4 1771 1008 1010 1775
		f 4 -3454 409 410 -418
		mu 0 4 1760 394 393 1761
		f 4 -1134 -1133 3454 3446
		mu 0 4 1775 1010 1015 1790
		f 4 -3456 408 3453 -3429
		mu 0 4 1920 396 394 1760
		f 4 -3455 -1132 3456 3445
		mu 0 4 1790 1015 1913 1787
		f 4 -3448 405 3457 -414
		mu 0 4 1748 383 384 1749
		f 4 -3459 -1129 3450 3439
		mu 0 4 1781 1012 1011 1778
		f 4 3459 -3425 -3458 406
		mu 0 4 395 1764 1749 384
		f 4 3458 3441 -3461 -1130
		mu 0 4 1012 1781 1784 1013
		f 4 -3460 407 3455 -3427
		mu 0 4 1764 395 1917 1767
		f 4 -3457 -1131 3460 3443
		mu 0 4 1916 1014 1013 1784
		f 4 514 -200 -516 -3462
		mu 0 4 1912 105 107 1793
		f 4 -3463 -507 3463 3461
		mu 0 4 1793 356 1911 1912
		f 4 515 -202 -517 -3465
		mu 0 4 1793 107 96 1794
		f 4 -3466 -508 3462 3464
		mu 0 4 1794 358 356 1793
		f 4 516 -183 -518 -3467
		mu 0 4 1794 96 92 1795
		f 4 -3468 -509 3465 3466
		mu 0 4 1795 360 358 1794
		f 4 517 -182 -519 -3469
		mu 0 4 1795 92 95 1796
		f 4 -3470 -510 3467 3468
		mu 0 4 1796 362 360 1795
		f 4 518 -188 -520 -3471
		mu 0 4 1796 95 99 1797
		f 4 -3472 -511 3469 3470
		mu 0 4 1797 364 362 1796
		f 4 519 -191 -521 -3473
		mu 0 4 1797 99 101 1798
		f 4 -3474 -512 3471 3472
		mu 0 4 1798 366 364 1797
		f 4 520 -194 -522 -3475
		mu 0 4 1798 101 103 1799
		f 4 -514 -513 3473 3474
		mu 0 4 1799 368 366 1798
		f 4 521 -197 -515 3475
		mu 0 4 1799 103 2209 1792
		f 4 -3464 1974 513 -3476
		mu 0 4 1792 355 368 1799
		f 4 1230 -20 -1230 3476
		mu 0 4 1800 14 2205 1910
		f 4 1221 3477 -3477 -3479
		mu 0 4 1145 1144 1800 1910
		f 4 1229 -17 -1237 -3480
		mu 0 4 1801 12 10 1802
		f 4 3479 -1229 -2759 3478
		mu 0 4 1801 1802 1146 1909
		f 4 1231 -23 -1231 3480
		mu 0 4 1803 5 14 1800
		f 4 1222 3481 -3481 -3478
		mu 0 4 1144 1149 1803 1800
		f 4 1232 -7 -1232 3482
		mu 0 4 1804 0 5 1803
		f 4 1223 3483 -3483 -3482
		mu 0 4 1149 1151 1804 1803
		f 4 1233 -1 -1233 3484
		mu 0 4 1805 1 0 1804
		f 4 1224 3485 -3485 -3484
		mu 0 4 1151 1153 1805 1804
		f 4 1234 -8 -1234 3486
		mu 0 4 1806 6 1 1805
		f 4 1225 3487 -3487 -3486
		mu 0 4 1153 1155 1806 1805
		f 4 1235 -11 -1235 3488
		mu 0 4 1807 8 6 1806
		f 4 1226 3489 -3489 -3488
		mu 0 4 1155 1157 1807 1806
		f 4 1236 -14 -1236 3490
		mu 0 4 1802 10 8 1807
		f 4 1227 1228 -3491 -3490
		mu 0 4 1157 1146 1802 1807
		f 4 -436 -1996 441 -453
		mu 0 4 1715 1714 379 380
		f 4 -1800 -420 3491 420
		mu 0 4 219 218 1808 1809
		f 4 -1801 -421 3492 421
		mu 0 4 221 219 1809 1810
		f 4 -1802 -422 3493 422
		mu 0 4 382 221 1810 1811
		f 4 -1803 -423 3494 423
		mu 0 4 377 382 1811 1812
		f 4 3495 424 -1804 -424
		mu 0 4 1812 1813 2201 377
		f 4 3496 425 -1805 -425
		mu 0 4 1905 1814 224 226
		f 4 3497 426 -1806 -426
		mu 0 4 1814 1815 222 224
		f 4 -3499 419 1872 -427
		mu 0 4 1815 1808 218 222
		f 4 1151 3499 -1807 -3501
		mu 0 4 1035 1034 1017 1016
		f 4 1152 3501 3661 3657
		mu 0 4 1034 1039 1816 1817
		f 4 3699 -3502 -3540 1153
		mu 0 4 1726 1816 1039 1040
		f 4 -2670 3503 -1810 -3503
		mu 0 4 1818 1819 1026 1024
		f 4 1150 3504 -1811 -3504
		mu 0 4 1819 1055 1028 1026
		f 4 -1159 3505 -1812 -3505
		mu 0 4 1907 1042 1030 1908
		f 4 -1155 3506 -1813 -3506
		mu 0 4 1042 1036 1021 1030
		f 4 2661 -3507 -2669 3500
		mu 0 4 1016 1021 1036 1035
		f 4 -3416 -3508 -3493 3508
		mu 0 4 1751 1745 1810 1809
		f 4 -3492 3509 -1815 -3509
		mu 0 4 1809 1808 1753 1751
		f 4 -1816 -3510 3498 3510
		mu 0 4 1758 1753 1808 1815
		f 4 -1817 -3511 -3498 3511
		mu 0 4 1759 1758 1815 1814
		f 4 -1818 -3512 -3497 3512
		mu 0 4 1765 1759 1814 1905
		f 4 -3496 3513 -1819 -3513
		mu 0 4 1813 1812 1762 1906
		f 4 -3495 3514 -1820 -3514
		mu 0 4 1812 1811 1744 1762
		f 4 -3494 3507 1813 -3515
		mu 0 4 1811 1810 1745 1744
		f 4 -1821 -3516 -1793 3516
		mu 0 4 1768 1777 1779 1773
		f 4 -1822 -3517 -1792 3517
		mu 0 4 1769 1768 1773 1772
		f 4 3434 3518 -1823 -3518
		mu 0 4 1772 1776 1774 1769
		f 4 -1824 -3519 1793 1798
		mu 0 4 1789 1774 1776 1791
		f 4 -1825 -1799 -1798 3519
		mu 0 4 1786 1789 1791 1903
		f 4 -1826 -3520 -1797 3520
		mu 0 4 1783 1904 1788 1785
		f 4 -1827 -3521 -1796 3521
		mu 0 4 1780 1783 1785 1782
		f 4 3438 -3522 -1795 3515
		mu 0 4 1777 1780 1782 1779
		f 4 -1168 -2686 3522 -1169
		mu 0 4 1057 1063 1062 1054
		f 4 -1828 -3523 1160 3523
		mu 0 4 1049 1054 1062 1061
		f 4 2686 3524 -1829 -3524
		mu 0 4 1061 1901 1050 1049
		f 4 -1830 -3525 2688 3525
		mu 0 4 1056 1902 1066 1068
		f 4 -1831 -3526 -2691 3526
		mu 0 4 1069 1056 1068 1071
		f 4 3527 -1832 -3527 -3372
		mu 0 4 1720 1718 1069 1071
		f 4 447 3528 -1833 -3528
		mu 0 4 1720 276 294 1718
		f 4 -1834 -3529 1903 3529
		mu 0 4 291 294 276 275
		f 4 -1903 3530 -1835 -3530
		mu 0 4 275 1899 228 291
		f 4 3531 -1836 -3531 -445
		mu 0 4 282 229 1900 274
		f 4 -1837 -3532 -1910 3532
		mu 0 4 380 229 282 286
		f 4 443 451 452 -3533
		mu 0 4 286 285 1715 380
		f 4 2776 -2717 -1243 3533
		mu 0 4 1175 1103 1102 1097
		f 4 2775 -3534 -1242 3534
		mu 0 4 1173 1175 1097 1096
		f 4 2774 -3535 -1241 3535
		mu 0 4 1171 1173 1096 1093
		f 4 2773 -3536 -1240 3536
		mu 0 4 1169 1171 1093 1090
		f 4 2772 -3537 -1239 3537
		mu 0 4 1167 1169 1090 1082
		f 4 1252 -3538 -1238 2703
		mu 0 4 1087 1167 1082 2052
		f 4 2700 3538 -2702 -2699
		mu 0 4 1077 1084 1085 1081
		f 4 2026 -2028 2019 -3410
		mu 0 4 403 402 400 1936
		f 4 1243 -3539 -2715 2713
		mu 0 4 1102 1085 1084 1100
		f 4 3659 3658 1801 -437
		mu 0 4 381 220 221 382
		f 4 1944 532 -3543 -3541
		mu 0 4 1723 327 320 319
		f 4 3574 2352 -2352 3568
		mu 0 4 1875 748 753 763
		f 4 3570 3569 3228 3230
		mu 0 4 1880 1878 1590 1591
		f 4 3566 2375 -2375 3560
		mu 0 4 1881 764 769 779
		f 4 3562 3561 3122 3124
		mu 0 4 1886 1884 1489 1490
		f 4 3551 3555 -3018 -3016
		mu 0 4 1388 1890 1390 1389
		f 4 3557 3556 2398 -2400
		mu 0 4 1889 1887 795 785
		f 4 -1389 3546 3545 -2904
		mu 0 4 1285 1898 1896 1287
		f 4 3544 3550 2421 2422
		mu 0 4 811 1893 807 809
		f 4 -3546 3547 -2908 -2906
		mu 0 4 1287 1896 1289 1288
		f 4 3549 -3545 2423 -2425
		mu 0 4 1895 1893 811 801
		f 4 -3547 2901 -2914 3543
		mu 0 4 1826 1284 1286 1291
		f 4 -3548 -3544 -2912 -2910
		mu 0 4 1897 1826 1291 1290
		f 4 2418 -3549 -3550 2417
		mu 0 4 798 803 1827 799
		f 4 -3551 3548 2419 2420
		mu 0 4 1894 1827 803 805
		f 4 -1465 3554 -3552 -3014
		mu 0 4 1386 1892 1890 1388
		f 4 -3557 3558 2396 2397
		mu 0 4 795 1887 791 793
		f 4 -3555 3011 -3024 -3554
		mu 0 4 1824 1385 1387 1392
		f 4 -3556 3553 -3022 -3020
		mu 0 4 1891 1824 1392 1391
		f 4 2393 3552 -3558 2392
		mu 0 4 782 787 1825 783
		f 4 -3559 -3553 2394 2395
		mu 0 4 1888 1825 787 789
		f 4 3120 -3562 3563 1547
		mu 0 4 1486 1489 1884 1487
		f 4 3565 -3561 -2374 -2373
		mu 0 4 1883 1881 779 777
		f 4 3559 -3563 3126 3128
		mu 0 4 1493 1823 1491 1492
		f 4 -3564 -3560 3130 -3119
		mu 0 4 1885 1823 1493 1488
		f 4 -3565 -3566 -2372 -2371
		mu 0 4 771 1822 775 773
		f 4 -848 -3567 3564 -2370
		mu 0 4 765 1882 1822 771
		f 4 3226 -3570 3571 1628
		mu 0 4 1587 1590 1878 1588
		f 4 3573 -3569 -2351 -2350
		mu 0 4 1877 1875 763 761
		f 4 3567 -3571 3232 3234
		mu 0 4 1594 1821 1592 1593
		f 4 -3572 -3568 3236 -3225
		mu 0 4 1879 1821 1594 1589
		f 4 -3573 -3574 -2349 -2348
		mu 0 4 755 1820 759 757
		f 4 -929 -3575 3572 -2347
		mu 0 4 749 1876 1820 755
		f 4 3576 3582 -2326 -2325
		mu 0 4 739 1869 743 741
		f 4 3578 3577 3308 -3297
		mu 0 4 1874 1872 1664 1659
		f 4 -3578 3579 3304 3306
		mu 0 4 1664 1872 1662 1663
		f 4 -976 3581 -3577 -2324
		mu 0 4 733 1871 1869 739
		f 4 3298 3575 -3579 1675
		mu 0 4 1657 1660 1829 1658
		f 4 -3580 -3576 3300 3302
		mu 0 4 1873 1829 1660 1661
		f 4 -3582 2329 -2329 -3581
		mu 0 4 1828 732 737 747
		f 4 -3583 3580 -2328 -2327
		mu 0 4 1870 1828 747 745
		f 4 -3586 -1640 -1633 3247
		mu 0 4 1867 1621 1608 1607
		f 4 3246 -3584 -3587 -3248
		mu 0 4 1607 1609 1866 1867
		f 4 -3588 3583 -1755 -3585
		mu 0 4 1694 1866 1609 1685
		f 4 1741 -3589 3584 -3330
		mu 0 4 1674 1865 1694 1685
		f 4 -3596 3248 -3252 3585
		mu 0 4 1697 1610 1613 1868
		f 4 3599 3600 2537 -3594
		mu 0 4 918 1830 1831 892
		f 4 -3599 -3598 3587 -3337
		mu 0 4 1693 1696 1698 1864
		f 4 3621 3625 -3602 3615
		mu 0 4 1832 1833 1610 1696
		f 4 -3603 -3600 -3593 -3597
		mu 0 4 909 1830 918 910
		f 4 -3605 -1734 -1733 3327
		mu 0 4 1695 1675 1977 1502
		f 4 -3606 -3607 -3595 -2538
		mu 0 4 1831 891 875 892
		f 4 -3608 -3328 -1732 3328
		mu 0 4 1684 1695 1502 1514
		f 4 3611 3612 -3609 3605
		mu 0 4 1831 1834 881 891
		f 4 -3611 -3610 -3604 3607
		mu 0 4 1684 1835 1693 1695
		f 4 1055 -1051 -3613 3614
		mu 0 4 908 890 881 1834
		f 4 -3614 3610 1750 -1756
		mu 0 4 1704 1835 1684 1703
		f 4 3617 3618 -3612 -3601
		mu 0 4 1830 1836 1834 1831
		f 4 -3617 -3616 3598 3609
		mu 0 4 1835 1832 1696 1693
		f 4 -3615 -3619 3620 -2559
		mu 0 4 908 1834 1836 907
		f 4 3337 -3620 3616 3613
		mu 0 4 1704 1705 1832 1835
		f 4 -3621 3623 3624 -2562
		mu 0 4 907 1836 1837 924
		f 4 3619 3349 -3623 -3622
		mu 0 4 1832 1705 1706 1833
		f 4 -3625 3626 2576 -2579
		mu 0 4 924 1837 909 925
		f 4 -3626 3622 3252 -3251
		mu 0 4 1610 1833 1706 1614
		f 4 -3627 -3624 -3618 3602
		mu 0 4 909 1837 1836 1830
		f 4 3630 -2590 1066 -3630
		mu 0 4 934 936 933 935
		f 4 -3632 -3629 -3331 3332
		mu 0 4 1690 1687 1686 1671
		f 4 1067 -3631 -3628 1039
		mu 0 4 938 936 934 895
		f 4 3350 1778 -3633 3631
		mu 0 4 1690 1691 1688 1687
		f 4 3814 3799 3637 3638
		mu 0 4 2332 2333 1838 1839
		f 4 3812 -3640 3644 3640
		mu 0 4 2330 2331 1840 1841
		f 4 3810 3795 3645 1257
		mu 0 4 2328 2329 1842 1181
		f 4 3813 -3639 3643 3639
		mu 0 4 2331 2332 1839 1840
		f 4 3811 -3641 -3642 -3796
		mu 0 4 2329 2330 1841 1842
		f 4 3642 -3800 3815 -549
		mu 0 4 267 1838 2333 2334
		f 4 3650 -2692 1169 1268
		mu 0 4 1073 1843 1070 1067
		f 4 3764 3760 -3645 -3760
		mu 0 4 2296 2297 1841 1840
		f 4 -3647 -3635 -454 3633
		mu 0 4 1844 279 277 1719
		f 4 -3648 -3634 3372 2691
		mu 0 4 1843 1844 1719 1070
		f 4 3777 3759 -3644 -3764
		mu 0 4 2309 2296 1840 1839
		f 4 -566 -455 3634 -3652
		mu 0 4 278 272 277 279
		f 4 1947 -3653 362 1923
		mu 0 4 308 329 331 307
		f 4 -3654 -3386 -3403 3400
		mu 0 4 957 952 1734 1741
		f 4 3656 -3662 3662 3663
		mu 0 4 1818 1817 1816 1053
		f 4 -3693 3696 -434 3540
		mu 0 4 319 1845 1724 1723
		f 4 3502 -1809 -3656 -3657
		mu 0 4 1818 1024 1022 1817
		f 4 -3658 3655 -1808 -3500
		mu 0 4 1034 1817 1022 1017
		f 4 -1872 -3661 -3665 3692
		mu 0 4 319 216 220 1845
		f 4 3667 3669 -3672 -3673
		mu 0 4 1846 1847 1848 1849
		f 4 -3666 3654 3664 -3660
		mu 0 4 381 379 1845 220
		f 4 -3685 3685 -3681 3686
		mu 0 4 1850 1851 1852 1853
		f 4 -3676 3676 -3668 3677
		mu 0 4 1854 1855 1847 1846
		f 4 -3686 3688 3689 -3691
		mu 0 4 1852 1851 1856 1857
		f 4 -2684 3670 3671 -3669
		mu 0 4 1051 1055 1849 1848
		f 4 -1151 3666 3672 -3671
		mu 0 4 1055 1819 1846 1849
		f 4 1157 3668 -3670 -3674
		mu 0 4 1052 1051 1848 1847
		f 4 -3664 3678 3675 -3675
		mu 0 4 1818 1053 1855 1854
		f 4 2669 3674 -3678 -3667
		mu 0 4 1819 1818 1854 1846
		f 4 -2681 3673 -3677 -3679
		mu 0 4 1053 1052 1847 1855
		f 4 1993 3679 3680 -3682
		mu 0 4 230 379 1853 1852
		f 4 -1995 3682 3684 -3684
		mu 0 4 381 378 1851 1850
		f 4 3665 3683 -3687 -3680
		mu 0 4 379 381 1850 1853
		f 4 429 3687 -3689 -3683
		mu 0 4 378 227 1856 1851
		f 4 1876 3691 -3690 -3688
		mu 0 4 227 231 1857 1856
		f 4 -441 3681 3690 -3692
		mu 0 4 231 230 1852 1857
		f 4 -3697 -3655 1995 -3694
		mu 0 4 1724 1845 379 1714
		f 4 -3698 3693 -3365 3376
		mu 0 4 1725 1724 1714 1712
		f 4 -3699 -3377 357 -3696
		mu 0 4 1726 1725 1712 1058
		f 4 -3663 -3700 3695 -1160
		mu 0 4 1053 1816 1726 1058
		f 4 3703 3726 -3638 -3643
		mu 0 4 267 2267 1839 1838
		f 4 3774 3762 3716 3706
		mu 0 4 2311 2310 2268 2269
		f 4 3773 -3707 3717 3707
		mu 0 4 2312 2311 2269 2270
		f 4 3772 -3708 3718 3708
		mu 0 4 2313 2312 2270 2271
		f 4 3771 -3709 3719 3709
		mu 0 4 2314 2313 2271 2272
		f 4 3720 3710 3770 -3710
		mu 0 4 2272 2273 2315 2314
		f 4 3769 -3711 3721 3711
		mu 0 4 2316 2315 2273 2274
		f 4 3768 -3712 3722 3712
		mu 0 4 2317 2316 2274 2275
		f 4 3723 -3762 3767 -3713
		mu 0 4 2275 2360 2359 2317
		f 4 3724 3714 3766 3761
		mu 0 4 2276 2277 2298 2299
		f 4 3765 -3715 3725 -3761
		mu 0 4 2297 2298 2277 1841
		f 4 3775 -3705 3715 -3763
		mu 0 4 2318 2308 2267 2358
		f 4 -3716 -3704 556 -3706
		mu 0 4 2358 2267 267 2362
		f 4 -3717 3705 557 1905
		mu 0 4 2269 2268 266 268
		f 4 -3718 -1906 558 1912
		mu 0 4 2270 2269 268 269
		f 4 -3719 -1913 559 1910
		mu 0 4 2271 2270 269 270
		f 4 -3720 -1911 3383 560
		mu 0 4 2272 2271 270 1730
		f 4 547 1264 -3721 -561
		mu 0 4 1730 1178 2273 2272
		f 4 -3722 -1265 2791 2796
		mu 0 4 2274 2273 1178 1177
		f 4 -3723 -2797 2792 2795
		mu 0 4 2275 2274 1177 1179
		f 4 -3714 -3724 -2796 2793
		mu 0 4 2361 2360 2275 1179
		f 4 3702 -3725 3713 2794
		mu 0 4 1181 2277 2276 1180
		f 4 -3726 -3703 -3646 3641
		mu 0 4 1841 2277 1181 1842
		f 4 -3727 3704 3776 3763
		mu 0 4 1839 2267 2308 2309
		f 4 -1135 3431 -3736 -1136
		mu 0 4 1927 1928 2279 2278
		f 4 3433 1141 -3737 -3432
		mu 0 4 1928 1922 2280 2279
		f 4 -3447 1140 -3738 -1142
		mu 0 4 1922 1921 2281 2280
		f 4 -3446 1139 -3739 -1141
		mu 0 4 1921 1914 2282 2281
		f 4 -3444 1138 -3740 -1140
		mu 0 4 1915 1923 2284 2283
		f 4 -3442 1137 -3741 -1139
		mu 0 4 1923 1925 2285 2284
		f 4 -3440 1136 -3742 -1138
		mu 0 4 1925 1926 2286 2285
		f 4 -3437 1135 -3743 -1137
		mu 0 4 1926 1927 2278 2286
		f 4 -3752 3743 3417 -3745
		mu 0 4 2288 2287 1750 1754
		f 4 -3753 3744 3421 -3746
		mu 0 4 2289 2288 1754 1757
		f 4 -3754 3745 1787 -3747
		mu 0 4 2290 2289 1757 1756
		f 4 -3755 3746 3427 -3748
		mu 0 4 2292 2290 1756 1766
		f 4 -3756 3747 -3426 -3749
		mu 0 4 2293 2291 2204 1763
		f 4 -3757 3748 -3424 -3750
		mu 0 4 2294 2293 1763 1747
		f 4 -3758 3749 1783 -3751
		mu 0 4 2295 2294 1747 1746
		f 4 -3759 3750 3414 -3744
		mu 0 4 2287 2295 1746 1750
		f 4 -3765 -3779 3647 3648
		mu 0 4 2297 2296 1844 1843
		f 4 -3766 -3649 -3651 -3780
		mu 0 4 2298 2297 1843 1073
		f 4 -3767 3779 -2694 3701
		mu 0 4 2299 2298 1073 2321
		f 4 -3768 -3702 1265 -3781
		mu 0 4 2300 2319 1072 1074
		f 4 -3769 3780 1269 -3782
		mu 0 4 2301 2300 1074 1075
		f 4 -3770 3781 1270 -3783
		mu 0 4 2302 2301 1075 1076
		f 4 -3771 3782 -568 -3784
		mu 0 4 2303 2302 1076 1732
		f 4 -3772 3783 3382 -3785
		mu 0 4 2304 2303 1732 289
		f 4 -3773 3784 -567 -3786
		mu 0 4 2305 2304 289 288
		f 4 -3774 3785 -563 -3787
		mu 0 4 2306 2305 288 281
		f 4 -3775 3786 -1912 3700
		mu 0 4 2307 2306 281 2320
		f 4 -3776 -3701 561 -3788
		mu 0 4 2308 2318 280 278
		f 4 -3777 3787 3651 3649
		mu 0 4 2309 2308 278 279
		f 4 3778 -3778 -3650 3646
		mu 0 4 1844 2296 2309 279
		f 4 -3805 -530 3403 530
		mu 0 4 2323 2322 2340 2341
		f 4 -3806 -531 3379 -3791
		mu 0 4 2324 2323 2341 1176
		f 4 1258 -3792 -3807 3790
		mu 0 4 1176 1174 2325 2324
		f 4 1259 -3793 -3808 3791
		mu 0 4 1174 1172 2326 2325
		f 4 1260 -3794 -3809 3792
		mu 0 4 1172 2357 2356 2326
		f 4 1261 -3795 -3810 3793
		mu 0 4 1170 1168 2328 2327
		f 4 3635 -3811 3794 1262
		mu 0 4 1166 2329 2328 1168
		f 4 -3797 -3812 -3636 -1264
		mu 0 4 1165 2330 2329 1166
		f 4 -3798 -3813 3796 -555
		mu 0 4 1728 2331 2330 1165
		f 4 -3799 -3814 3797 3406
		mu 0 4 263 2332 2331 1728
		f 4 3636 -3815 3798 555
		mu 0 4 265 2333 2332 263
		f 4 -3816 -3637 -554 -3801
		mu 0 4 2334 2333 265 262
		f 4 -3817 3800 -553 -3802
		mu 0 4 2354 2334 262 2355
		f 4 -3818 3801 -552 -3803
		mu 0 4 2336 2335 259 256
		f 4 -3819 3802 -551 -3804
		mu 0 4 2337 2336 256 257
		f 4 -3820 3803 -550 529
		mu 0 4 2322 2337 257 2340;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
createNode transform -n "temphead_GEO";
	rename -uid "6D28C574-4620-3DDF-2D89-41B86DEA0F2D";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 177.02540663860583 -4.2445856559538377 ;
	setAttr ".sp" -type "double3" 0 177.02540663860583 -4.2445856559538377 ;
createNode mesh -n "temphead_GEOShape" -p "temphead_GEO";
	rename -uid "FAD538A4-4EE5-4B79-E9F7-E8ADF991C83C";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999994039535522 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "temphead_GEOShapeOrig" -p "temphead_GEO";
	rename -uid "022C6AC8-406D-CC29-7985-48A7B1DE97AD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 167 ".uvst[0].uvsp[0:166]" -type "float2" 0 0.083333336 0.083333336
		 0.083333336 0.16666667 0.083333336 0.25 0.083333336 0.33333334 0.083333336 0.41666669
		 0.083333336 0.5 0.083333336 0.58333331 0.083333336 0.66666663 0.083333336 0.74999994
		 0.083333336 0.83333325 0.083333336 0.91666657 0.083333336 0.99999988 0.083333336
		 0 0.16666667 0.083333336 0.16666667 0.16666667 0.16666667 0.25 0.16666667 0.33333334
		 0.16666667 0.41666669 0.16666667 0.5 0.16666667 0.58333331 0.16666667 0.66666663
		 0.16666667 0.74999994 0.16666667 0.83333325 0.16666667 0.91666657 0.16666667 0.99999988
		 0.16666667 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.33333334 0.083333336 0.33333334 0.16666667 0.33333334 0.25
		 0.33333334 0.33333334 0.33333334 0.41666669 0.33333334 0.5 0.33333334 0.58333331
		 0.33333334 0.66666663 0.33333334 0.74999994 0.33333334 0.83333325 0.33333334 0.91666657
		 0.33333334 0.99999988 0.33333334 0 0.41666669 0.083333336 0.41666669 0.16666667 0.41666669
		 0.25 0.41666669 0.33333334 0.41666669 0.41666669 0.41666669 0.5 0.41666669 0.58333331
		 0.41666669 0.66666663 0.41666669 0.74999994 0.41666669 0.83333325 0.41666669 0.91666657
		 0.41666669 0.99999988 0.41666669 0 0.5 0.083333336 0.5 0.16666667 0.5 0.25 0.5 0.33333334
		 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5 0.74999994 0.5 0.83333325
		 0.5 0.91666657 0.5 0.99999988 0.5 0 0.58333331 0.083333336 0.58333331 0.16666667
		 0.58333331 0.25 0.58333331 0.33333334 0.58333331 0.41666669 0.58333331 0.5 0.58333331
		 0.58333331 0.58333331 0.66666663 0.58333331 0.74999994 0.58333331 0.83333325 0.58333331
		 0.91666657 0.58333331 0.99999988 0.58333331 0 0.66666663 0.083333336 0.66666663 0.16666667
		 0.66666663 0.25 0.66666663 0.33333334 0.66666663 0.41666669 0.66666663 0.5 0.66666663
		 0.58333331 0.66666663 0.66666663 0.66666663 0.74999994 0.66666663 0.83333325 0.66666663
		 0.91666657 0.66666663 0.99999988 0.66666663 0 0.74999994 0.083333336 0.74999994 0.16666667
		 0.74999994 0.25 0.74999994 0.33333334 0.74999994 0.41666669 0.74999994 0.5 0.74999994
		 0.58333331 0.74999994 0.66666663 0.74999994 0.74999994 0.74999994 0.83333325 0.74999994
		 0.91666657 0.74999994 0.99999988 0.74999994 0 0.83333325 0.083333336 0.83333325 0.16666667
		 0.83333325 0.25 0.83333325 0.33333334 0.83333325 0.41666669 0.83333325 0.5 0.83333325
		 0.58333331 0.83333325 0.66666663 0.83333325 0.74999994 0.83333325 0.83333325 0.83333325
		 0.91666657 0.83333325 0.99999988 0.83333325 0 0.91666657 0.083333336 0.91666657 0.16666667
		 0.91666657 0.25 0.91666657 0.33333334 0.91666657 0.41666669 0.91666657 0.5 0.91666657
		 0.58333331 0.91666657 0.66666663 0.91666657 0.74999994 0.91666657 0.83333325 0.91666657
		 0.91666657 0.91666657 0.99999988 0.91666657 0.041666668 0 0.125 0 0.20833334 0 0.29166669
		 0 0.375 0 0.45833334 0 0.54166669 0 0.625 0 0.70833337 0 0.79166669 0 0.875 0 0.95833337
		 0 0.041666668 1 0.125 1 0.20833334 1 0.29166669 1 0.375 1 0.45833334 1 0.54166669
		 1 0.625 1 0.70833337 1 0.79166669 1 0.875 1 0.95833337 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".pt[0:133]" -type "float3"  3.0994449 163.66866 -6.0340509 
		1.7894654 163.66866 -7.3440309 0 163.66866 -7.8235164 -1.7894654 163.66866 -7.3440309 
		-3.0994449 163.66866 -6.0340509 -3.5789309 163.66866 -4.2445855 -3.0994449 163.66866 
		-2.4551203 -1.7894654 163.66866 -1.1451406 0 163.66866 -0.66565478 1.7894654 163.66866 
		-1.1451406 3.0994449 163.66866 -2.4551203 3.5789309 163.66866 -4.2445855 5.987668 
		165.05006 -7.7015676 3.4569817 165.05006 -10.232254 0 165.05006 -11.158549 -3.4569817 
		165.05006 -10.232254 -5.987668 165.05006 -7.7015676 -6.9139633 165.05006 -4.2445855 
		-5.987668 165.05006 -0.78760391 -3.4569817 165.05006 1.7430823 0 165.05006 2.6693778 
		3.4569817 165.05006 1.7430823 5.987668 165.05006 -0.78760391 6.9139633 165.05006 
		-4.2445855 8.4678411 167.24759 -9.1334963 4.8889103 167.24759 -12.712426 0 167.24759 
		-14.022407 -4.8889103 167.24759 -12.712426 -8.4678411 167.24759 -9.1334963 -9.7778206 
		167.24759 -4.2445855 -8.4678411 167.24759 0.64432478 -4.8889103 167.24759 4.2232552 
		0 167.24759 5.5332351 4.8889103 167.24759 4.2232552 8.4678411 167.24759 0.64432478 
		9.7778206 167.24759 -4.2445855 10.370945 170.11145 -10.232254 5.9876685 170.11145 
		-14.615531 0 170.11145 -16.219923 -5.9876685 170.11145 -14.615531 -10.370945 170.11145 
		-10.232254 -11.975337 170.11145 -4.2445855 -10.370945 170.11145 1.7430826 -5.9876685 
		170.11145 6.1263595 0 170.11145 7.730751 5.9876685 170.11145 6.1263595 10.370945 
		170.11145 1.7430826 11.975337 170.11145 -4.2445855 11.567286 173.44647 -10.922961 
		6.6783757 173.44647 -15.811872 0 173.44647 -17.601337 -6.6783757 173.44647 -15.811872 
		-11.567286 173.44647 -10.922961 -13.356751 173.44647 -4.2445855 -11.567286 173.44647 
		2.4337902 -6.6783757 173.44647 7.3227 0 173.44647 9.1121664 6.6783757 173.44647 7.3227 
		11.567286 173.44647 2.4337902 13.356751 173.44647 -4.2445855 11.975336 177.02541 
		-11.158549 6.9139633 177.02541 -16.219921 0 177.02541 -18.072514 -6.9139633 177.02541 
		-16.219921 -11.975336 177.02541 -11.158549 -13.827927 177.02541 -4.2445855 -11.975336 
		177.02541 2.6693778 -6.9139633 177.02541 7.7307501 0 177.02541 9.5833416 6.9139633 
		177.02541 7.7307501 11.975336 177.02541 2.6693778 13.827927 177.02541 -4.2445855 
		11.567286 180.60434 -10.922961 6.6783757 180.60434 -15.811872 0 180.60434 -17.601337 
		-6.6783757 180.60434 -15.811872 -11.567286 180.60434 -10.922961 -13.356751 180.60434 
		-4.2445855 -11.567286 180.60434 2.4337902 -6.6783757 180.60434 7.3227 0 180.60434 
		9.1121664 6.6783757 180.60434 7.3227 11.567286 180.60434 2.4337902 13.356751 180.60434 
		-4.2445855 10.370945 183.93938 -10.232254 5.9876685 183.93938 -14.615531 0 183.93938 
		-16.219923 -5.9876685 183.93938 -14.615531 -10.370945 183.93938 -10.232254 -11.975337 
		183.93938 -4.2445855 -10.370945 183.93938 1.7430826 -5.9876685 183.93938 6.1263595 
		0 183.93938 7.730751 5.9876685 183.93938 6.1263595 10.370945 183.93938 1.7430826 
		11.975337 183.93938 -4.2445855 8.4678411 186.80322 -9.1334963 4.8889103 186.80322 
		-12.712426 0 186.80322 -14.022407 -4.8889103 186.80322 -12.712426 -8.4678411 186.80322 
		-9.1334963 -9.7778206 186.80322 -4.2445855 -8.4678411 186.80322 0.64432478 -4.8889103 
		186.80322 4.2232552 0 186.80322 5.5332351 4.8889103 186.80322 4.2232552 8.4678411 
		186.80322 0.64432478 9.7778206 186.80322 -4.2445855 5.987668 189.00075 -7.7015676 
		3.4569817 189.00075 -10.232254 0 189.00075 -11.158549 -3.4569817 189.00075 -10.232254 
		-5.987668 189.00075 -7.7015676 -6.9139633 189.00075 -4.2445855 -5.987668 189.00075 
		-0.78760391 -3.4569817 189.00075 1.7430823 0 189.00075 2.6693778 3.4569817 189.00075 
		1.7430823 5.987668 189.00075 -0.78760391 6.9139633 189.00075 -4.2445855 3.0994449 
		190.38216 -6.0340509 1.7894654 190.38216 -7.3440309 0 190.38216 -7.8235164 -1.7894654 
		190.38216 -7.3440309 -3.0994449 190.38216 -6.0340509 -3.5789309 190.38216 -4.2445855 
		-3.0994449 190.38216 -2.4551203 -1.7894654 190.38216 -1.1451406 0 190.38216 -0.66565478 
		1.7894654 190.38216 -1.1451406 3.0994449 190.38216 -2.4551203 3.5789309 190.38216 
		-4.2445855 0 163.19748 -4.2445855 0 190.85333 -4.2445855;
	setAttr -s 134 ".vt[0:133]"  0.22414386 -0.96592581 -0.12940952 0.12940952 -0.96592581 -0.22414386
		 0 -0.96592581 -0.25881904 -0.12940952 -0.96592581 -0.22414386 -0.22414386 -0.96592581 -0.12940952
		 -0.25881904 -0.96592581 0 -0.22414386 -0.96592581 0.12940952 -0.12940952 -0.96592581 0.22414386
		 0 -0.96592581 0.25881904 0.12940952 -0.96592581 0.22414386 0.22414386 -0.96592581 0.12940952
		 0.25881904 -0.96592581 0 0.43301269 -0.86602539 -0.25 0.25 -0.86602539 -0.43301269
		 0 -0.86602539 -0.5 -0.25 -0.86602539 -0.43301269 -0.43301269 -0.86602539 -0.25 -0.5 -0.86602539 0
		 -0.43301269 -0.86602539 0.25 -0.25 -0.86602539 0.43301269 0 -0.86602539 0.5 0.25 -0.86602539 0.43301269
		 0.43301269 -0.86602539 0.25 0.5 -0.86602539 0 0.6123724 -0.70710677 -0.35355338 0.35355338 -0.70710677 -0.6123724
		 0 -0.70710677 -0.70710677 -0.35355338 -0.70710677 -0.6123724 -0.6123724 -0.70710677 -0.35355338
		 -0.70710677 -0.70710677 0 -0.6123724 -0.70710677 0.35355338 -0.35355338 -0.70710677 0.6123724
		 0 -0.70710677 0.70710677 0.35355338 -0.70710677 0.6123724 0.6123724 -0.70710677 0.35355338
		 0.70710677 -0.70710677 0 0.75 -0.49999997 -0.43301272 0.43301272 -0.49999997 -0.75
		 0 -0.49999997 -0.86602545 -0.43301272 -0.49999997 -0.75 -0.75 -0.49999997 -0.43301272
		 -0.86602545 -0.49999997 0 -0.75 -0.49999997 0.43301272 -0.43301272 -0.49999997 0.75
		 0 -0.49999997 0.86602545 0.43301272 -0.49999997 0.75 0.75 -0.49999997 0.43301272
		 0.86602545 -0.49999997 0 0.83651626 -0.25881907 -0.48296291 0.48296291 -0.25881907 -0.83651626
		 0 -0.25881907 -0.96592581 -0.48296291 -0.25881907 -0.83651626 -0.83651626 -0.25881907 -0.48296291
		 -0.96592581 -0.25881907 0 -0.83651626 -0.25881907 0.48296291 -0.48296291 -0.25881907 0.83651626
		 0 -0.25881907 0.96592581 0.48296291 -0.25881907 0.83651626 0.83651626 -0.25881907 0.48296291
		 0.96592581 -0.25881907 0 0.86602539 0 -0.5 0.5 0 -0.86602539 0 0 -1 -0.5 0 -0.86602539
		 -0.86602539 0 -0.5 -1 0 0 -0.86602539 0 0.5 -0.5 0 0.86602539 0 0 1 0.5 0 0.86602539
		 0.86602539 0 0.5 1 0 0 0.83651626 0.25881907 -0.48296291 0.48296291 0.25881907 -0.83651626
		 0 0.25881907 -0.96592581 -0.48296291 0.25881907 -0.83651626 -0.83651626 0.25881907 -0.48296291
		 -0.96592581 0.25881907 0 -0.83651626 0.25881907 0.48296291 -0.48296291 0.25881907 0.83651626
		 0 0.25881907 0.96592581 0.48296291 0.25881907 0.83651626 0.83651626 0.25881907 0.48296291
		 0.96592581 0.25881907 0 0.75 0.49999997 -0.43301272 0.43301272 0.49999997 -0.75 0 0.49999997 -0.86602545
		 -0.43301272 0.49999997 -0.75 -0.75 0.49999997 -0.43301272 -0.86602545 0.49999997 0
		 -0.75 0.49999997 0.43301272 -0.43301272 0.49999997 0.75 0 0.49999997 0.86602545 0.43301272 0.49999997 0.75
		 0.75 0.49999997 0.43301272 0.86602545 0.49999997 0 0.6123724 0.70710677 -0.35355338
		 0.35355338 0.70710677 -0.6123724 0 0.70710677 -0.70710677 -0.35355338 0.70710677 -0.6123724
		 -0.6123724 0.70710677 -0.35355338 -0.70710677 0.70710677 0 -0.6123724 0.70710677 0.35355338
		 -0.35355338 0.70710677 0.6123724 0 0.70710677 0.70710677 0.35355338 0.70710677 0.6123724
		 0.6123724 0.70710677 0.35355338 0.70710677 0.70710677 0 0.43301269 0.86602539 -0.25
		 0.25 0.86602539 -0.43301269 0 0.86602539 -0.5 -0.25 0.86602539 -0.43301269 -0.43301269 0.86602539 -0.25
		 -0.5 0.86602539 0 -0.43301269 0.86602539 0.25 -0.25 0.86602539 0.43301269 0 0.86602539 0.5
		 0.25 0.86602539 0.43301269 0.43301269 0.86602539 0.25 0.5 0.86602539 0 0.22414386 0.96592581 -0.12940952
		 0.12940952 0.96592581 -0.22414386 0 0.96592581 -0.25881904 -0.12940952 0.96592581 -0.22414386
		 -0.22414386 0.96592581 -0.12940952 -0.25881904 0.96592581 0 -0.22414386 0.96592581 0.12940952
		 -0.12940952 0.96592581 0.22414386 0 0.96592581 0.25881904 0.12940952 0.96592581 0.22414386
		 0.22414386 0.96592581 0.12940952 0.25881904 0.96592581 0 0 -1 0 0 1 0;
	setAttr -s 276 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 0 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 12 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 24 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 36 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 48 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 60 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 72 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 84 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 96 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 108 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 120 1 0 12 1
		 1 13 1 2 14 1 3 15 1 4 16 1 5 17 1 6 18 1 7 19 1 8 20 1 9 21 1 10 22 1 11 23 1 12 24 1
		 13 25 1 14 26 1 15 27 1 16 28 1 17 29 1 18 30 1 19 31 1 20 32 1 21 33 1 22 34 1 23 35 1
		 24 36 1 25 37 1 26 38 1 27 39 1 28 40 1 29 41 1 30 42 1 31 43 1 32 44 1 33 45 1;
	setAttr ".ed[166:275]" 34 46 1 35 47 1 36 48 1 37 49 1 38 50 1 39 51 1 40 52 1
		 41 53 1 42 54 1 43 55 1 44 56 1 45 57 1 46 58 1 47 59 1 48 60 1 49 61 1 50 62 1 51 63 1
		 52 64 1 53 65 1 54 66 1 55 67 1 56 68 1 57 69 1 58 70 1 59 71 1 60 72 1 61 73 1 62 74 1
		 63 75 1 64 76 1 65 77 1 66 78 1 67 79 1 68 80 1 69 81 1 70 82 1 71 83 1 72 84 1 73 85 1
		 74 86 1 75 87 1 76 88 1 77 89 1 78 90 1 79 91 1 80 92 1 81 93 1 82 94 1 83 95 1 84 96 1
		 85 97 1 86 98 1 87 99 1 88 100 1 89 101 1 90 102 1 91 103 1 92 104 1 93 105 1 94 106 1
		 95 107 1 96 108 1 97 109 1 98 110 1 99 111 1 100 112 1 101 113 1 102 114 1 103 115 1
		 104 116 1 105 117 1 106 118 1 107 119 1 108 120 1 109 121 1 110 122 1 111 123 1 112 124 1
		 113 125 1 114 126 1 115 127 1 116 128 1 117 129 1 118 130 1 119 131 1 132 0 1 132 1 1
		 132 2 1 132 3 1 132 4 1 132 5 1 132 6 1 132 7 1 132 8 1 132 9 1 132 10 1 132 11 1
		 120 133 1 121 133 1 122 133 1 123 133 1 124 133 1 125 133 1 126 133 1 127 133 1 128 133 1
		 129 133 1 130 133 1 131 133 1;
	setAttr -s 144 -ch 552 ".fc[0:143]" -type "polyFaces" 
		f 4 0 133 -13 -133
		mu 0 4 0 1 14 13
		f 4 1 134 -14 -134
		mu 0 4 1 2 15 14
		f 4 2 135 -15 -135
		mu 0 4 2 3 16 15
		f 4 3 136 -16 -136
		mu 0 4 3 4 17 16
		f 4 4 137 -17 -137
		mu 0 4 4 5 18 17
		f 4 5 138 -18 -138
		mu 0 4 5 6 19 18
		f 4 6 139 -19 -139
		mu 0 4 6 7 20 19
		f 4 7 140 -20 -140
		mu 0 4 7 8 21 20
		f 4 8 141 -21 -141
		mu 0 4 8 9 22 21
		f 4 9 142 -22 -142
		mu 0 4 9 10 23 22
		f 4 10 143 -23 -143
		mu 0 4 10 11 24 23
		f 4 11 132 -24 -144
		mu 0 4 11 12 25 24
		f 4 12 145 -25 -145
		mu 0 4 13 14 27 26
		f 4 13 146 -26 -146
		mu 0 4 14 15 28 27
		f 4 14 147 -27 -147
		mu 0 4 15 16 29 28
		f 4 15 148 -28 -148
		mu 0 4 16 17 30 29
		f 4 16 149 -29 -149
		mu 0 4 17 18 31 30
		f 4 17 150 -30 -150
		mu 0 4 18 19 32 31
		f 4 18 151 -31 -151
		mu 0 4 19 20 33 32
		f 4 19 152 -32 -152
		mu 0 4 20 21 34 33
		f 4 20 153 -33 -153
		mu 0 4 21 22 35 34
		f 4 21 154 -34 -154
		mu 0 4 22 23 36 35
		f 4 22 155 -35 -155
		mu 0 4 23 24 37 36
		f 4 23 144 -36 -156
		mu 0 4 24 25 38 37
		f 4 24 157 -37 -157
		mu 0 4 26 27 40 39
		f 4 25 158 -38 -158
		mu 0 4 27 28 41 40
		f 4 26 159 -39 -159
		mu 0 4 28 29 42 41
		f 4 27 160 -40 -160
		mu 0 4 29 30 43 42
		f 4 28 161 -41 -161
		mu 0 4 30 31 44 43
		f 4 29 162 -42 -162
		mu 0 4 31 32 45 44
		f 4 30 163 -43 -163
		mu 0 4 32 33 46 45
		f 4 31 164 -44 -164
		mu 0 4 33 34 47 46
		f 4 32 165 -45 -165
		mu 0 4 34 35 48 47
		f 4 33 166 -46 -166
		mu 0 4 35 36 49 48
		f 4 34 167 -47 -167
		mu 0 4 36 37 50 49
		f 4 35 156 -48 -168
		mu 0 4 37 38 51 50
		f 4 36 169 -49 -169
		mu 0 4 39 40 53 52
		f 4 37 170 -50 -170
		mu 0 4 40 41 54 53
		f 4 38 171 -51 -171
		mu 0 4 41 42 55 54
		f 4 39 172 -52 -172
		mu 0 4 42 43 56 55
		f 4 40 173 -53 -173
		mu 0 4 43 44 57 56
		f 4 41 174 -54 -174
		mu 0 4 44 45 58 57
		f 4 42 175 -55 -175
		mu 0 4 45 46 59 58
		f 4 43 176 -56 -176
		mu 0 4 46 47 60 59
		f 4 44 177 -57 -177
		mu 0 4 47 48 61 60
		f 4 45 178 -58 -178
		mu 0 4 48 49 62 61
		f 4 46 179 -59 -179
		mu 0 4 49 50 63 62
		f 4 47 168 -60 -180
		mu 0 4 50 51 64 63
		f 4 48 181 -61 -181
		mu 0 4 52 53 66 65
		f 4 49 182 -62 -182
		mu 0 4 53 54 67 66
		f 4 50 183 -63 -183
		mu 0 4 54 55 68 67
		f 4 51 184 -64 -184
		mu 0 4 55 56 69 68
		f 4 52 185 -65 -185
		mu 0 4 56 57 70 69
		f 4 53 186 -66 -186
		mu 0 4 57 58 71 70
		f 4 54 187 -67 -187
		mu 0 4 58 59 72 71
		f 4 55 188 -68 -188
		mu 0 4 59 60 73 72
		f 4 56 189 -69 -189
		mu 0 4 60 61 74 73
		f 4 57 190 -70 -190
		mu 0 4 61 62 75 74
		f 4 58 191 -71 -191
		mu 0 4 62 63 76 75
		f 4 59 180 -72 -192
		mu 0 4 63 64 77 76
		f 4 60 193 -73 -193
		mu 0 4 65 66 79 78
		f 4 61 194 -74 -194
		mu 0 4 66 67 80 79
		f 4 62 195 -75 -195
		mu 0 4 67 68 81 80
		f 4 63 196 -76 -196
		mu 0 4 68 69 82 81
		f 4 64 197 -77 -197
		mu 0 4 69 70 83 82
		f 4 65 198 -78 -198
		mu 0 4 70 71 84 83
		f 4 66 199 -79 -199
		mu 0 4 71 72 85 84
		f 4 67 200 -80 -200
		mu 0 4 72 73 86 85
		f 4 68 201 -81 -201
		mu 0 4 73 74 87 86
		f 4 69 202 -82 -202
		mu 0 4 74 75 88 87
		f 4 70 203 -83 -203
		mu 0 4 75 76 89 88
		f 4 71 192 -84 -204
		mu 0 4 76 77 90 89
		f 4 72 205 -85 -205
		mu 0 4 78 79 92 91
		f 4 73 206 -86 -206
		mu 0 4 79 80 93 92
		f 4 74 207 -87 -207
		mu 0 4 80 81 94 93
		f 4 75 208 -88 -208
		mu 0 4 81 82 95 94
		f 4 76 209 -89 -209
		mu 0 4 82 83 96 95
		f 4 77 210 -90 -210
		mu 0 4 83 84 97 96
		f 4 78 211 -91 -211
		mu 0 4 84 85 98 97
		f 4 79 212 -92 -212
		mu 0 4 85 86 99 98
		f 4 80 213 -93 -213
		mu 0 4 86 87 100 99
		f 4 81 214 -94 -214
		mu 0 4 87 88 101 100
		f 4 82 215 -95 -215
		mu 0 4 88 89 102 101
		f 4 83 204 -96 -216
		mu 0 4 89 90 103 102
		f 4 84 217 -97 -217
		mu 0 4 91 92 105 104
		f 4 85 218 -98 -218
		mu 0 4 92 93 106 105
		f 4 86 219 -99 -219
		mu 0 4 93 94 107 106
		f 4 87 220 -100 -220
		mu 0 4 94 95 108 107
		f 4 88 221 -101 -221
		mu 0 4 95 96 109 108
		f 4 89 222 -102 -222
		mu 0 4 96 97 110 109
		f 4 90 223 -103 -223
		mu 0 4 97 98 111 110
		f 4 91 224 -104 -224
		mu 0 4 98 99 112 111
		f 4 92 225 -105 -225
		mu 0 4 99 100 113 112
		f 4 93 226 -106 -226
		mu 0 4 100 101 114 113
		f 4 94 227 -107 -227
		mu 0 4 101 102 115 114
		f 4 95 216 -108 -228
		mu 0 4 102 103 116 115
		f 4 96 229 -109 -229
		mu 0 4 104 105 118 117
		f 4 97 230 -110 -230
		mu 0 4 105 106 119 118
		f 4 98 231 -111 -231
		mu 0 4 106 107 120 119
		f 4 99 232 -112 -232
		mu 0 4 107 108 121 120
		f 4 100 233 -113 -233
		mu 0 4 108 109 122 121
		f 4 101 234 -114 -234
		mu 0 4 109 110 123 122
		f 4 102 235 -115 -235
		mu 0 4 110 111 124 123
		f 4 103 236 -116 -236
		mu 0 4 111 112 125 124
		f 4 104 237 -117 -237
		mu 0 4 112 113 126 125
		f 4 105 238 -118 -238
		mu 0 4 113 114 127 126
		f 4 106 239 -119 -239
		mu 0 4 114 115 128 127
		f 4 107 228 -120 -240
		mu 0 4 115 116 129 128
		f 4 108 241 -121 -241
		mu 0 4 117 118 131 130
		f 4 109 242 -122 -242
		mu 0 4 118 119 132 131
		f 4 110 243 -123 -243
		mu 0 4 119 120 133 132
		f 4 111 244 -124 -244
		mu 0 4 120 121 134 133
		f 4 112 245 -125 -245
		mu 0 4 121 122 135 134
		f 4 113 246 -126 -246
		mu 0 4 122 123 136 135
		f 4 114 247 -127 -247
		mu 0 4 123 124 137 136
		f 4 115 248 -128 -248
		mu 0 4 124 125 138 137
		f 4 116 249 -129 -249
		mu 0 4 125 126 139 138
		f 4 117 250 -130 -250
		mu 0 4 126 127 140 139
		f 4 118 251 -131 -251
		mu 0 4 127 128 141 140
		f 4 119 240 -132 -252
		mu 0 4 128 129 142 141
		f 3 -1 -253 253
		mu 0 3 1 0 143
		f 3 -2 -254 254
		mu 0 3 2 1 144
		f 3 -3 -255 255
		mu 0 3 3 2 145
		f 3 -4 -256 256
		mu 0 3 4 3 146
		f 3 -5 -257 257
		mu 0 3 5 4 147
		f 3 -6 -258 258
		mu 0 3 6 5 148
		f 3 -7 -259 259
		mu 0 3 7 6 149
		f 3 -8 -260 260
		mu 0 3 8 7 150
		f 3 -9 -261 261
		mu 0 3 9 8 151
		f 3 -10 -262 262
		mu 0 3 10 9 152
		f 3 -11 -263 263
		mu 0 3 11 10 153
		f 3 -12 -264 252
		mu 0 3 12 11 154
		f 3 120 265 -265
		mu 0 3 130 131 155
		f 3 121 266 -266
		mu 0 3 131 132 156
		f 3 122 267 -267
		mu 0 3 132 133 157
		f 3 123 268 -268
		mu 0 3 133 134 158
		f 3 124 269 -269
		mu 0 3 134 135 159
		f 3 125 270 -270
		mu 0 3 135 136 160
		f 3 126 271 -271
		mu 0 3 136 137 161
		f 3 127 272 -272
		mu 0 3 137 138 162
		f 3 128 273 -273
		mu 0 3 138 139 163
		f 3 129 274 -274
		mu 0 3 139 140 164
		f 3 130 275 -275
		mu 0 3 140 141 165
		f 3 131 264 -276
		mu 0 3 141 142 166;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6FEF3847-4358-D542-50DA-0F8D112CCEDC";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "968AD666-4A83-D146-6A9F-AE9E44C0DD79";
	setAttr ".cdl" 1;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "788F3BAE-48B1-6DB1-5CFD-E0849A78A05A";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A260C1D7-447C-A3E7-5353-E0923EFF4950";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B21CD609-4A78-5790-EBDC-209CC60563CA";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	setAttr ".g" yes;
createNode phongE -n "generichar_body_phongE";
	rename -uid "FC3ADBB9-493F-6E83-4C1B-06877BD0A40D";
	setAttr ".sc" -type "float3" 0 0 0 ;
createNode shadingEngine -n "generichar_body_SG";
	rename -uid "1FE95A70-4241-6061-C8B1-DAA055BD0573";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "3F9F8E3A-4717-2A9E-7A1F-76B530BE57DC";
createNode file -n "file_body_diffuse";
	rename -uid "4DCE740B-4646-5704-17D3-0D94421F9A2A";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture_body_diffuse";
	rename -uid "7B9D7119-4186-62C5-D1F2-33AFC934B9D7";
createNode file -n "file_body_normal";
	rename -uid "5F6519EC-4F39-1A27-0464-FFA0670DA4C9";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture_body_normal";
	rename -uid "A037DD42-4C3F-5E01-F98A-EAA80B829E3C";
createNode bump2d -n "bump2d_body_normal";
	rename -uid "BEC42FF0-4ED2-0D65-1F59-D18215EB765C";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 0.00012000001 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode phongE -n "generichar_eyes_phongE";
	rename -uid "B4556C42-4622-5758-3E36-7EAF381D7AED";
	setAttr ".c" -type "float3" 0.86178863 0.86178863 0.86178863 ;
createNode shadingEngine -n "generichar_eyes_SG";
	rename -uid "6E4974ED-4B88-A2B1-FA0C-C1822B56C622";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "FD460210-425A-E6F6-8448-C3BCEC7B91F9";
createNode phongE -n "generichar_tongue_phongE";
	rename -uid "11A6F542-4A36-6B32-D752-5691F5854F1C";
createNode shadingEngine -n "generichar_tongue_SG";
	rename -uid "F79C337D-428F-517F-5FE1-DD8AC21ABD62";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "CDC640E7-4BDB-468C-26EC-36A24FA5B053";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C863767F-4EE7-061D-7DB9-39B761A6E7F4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 817\n                -height 716\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 817\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 817\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 817\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "17531218-4661-8FB6-38B8-88933E348799";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 13 -ast 0 -aet 13 ";
	setAttr ".st" 6;
createNode displayLayer -n "Reference";
	rename -uid "DC20880D-4EDB-0FC1-B4EB-3E9767F8B420";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	setAttr ".do" 1;
createNode displayLayer -n "Physics";
	rename -uid "7250528A-4DD4-E465-B7A1-B4885F1C6B6D";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	setAttr ".do" 2;
createNode script -n "smdInfo";
	rename -uid "51CAC89B-46DC-7675-DA93-AB9FD0391F3B";
	addAttr -ci true -sn "seperateBodyGroup" -ln "seperateBodyGroup" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "smdType" -ln "smdType" -min 0 -max 1 -en "Animation:Reference" 
		-at "enum";
	addAttr -ci true -sn "smdTarget" -ln "smdTarget" -dt "string";
	addAttr -ci true -sn "fullCompile" -ln "fullCompile" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "texPath" -ln "texPath" -dt "string";
	addAttr -ci true -sn "smdBreak" -ln "smdBreak" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "smdIdle" -ln "smdIdle" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "smdRef" -ln "smdRef" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "smdPhy" -ln "smdPhy" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "smdFixTrans" -ln "smdFixTrans" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "smdFixCol" -ln "smdFixCol" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "smdAni" -ln "smdAni" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "smdAniName" -ln "smdAniName" -dt "string";
	addAttr -ci true -sn "smdAniStart" -ln "smdAniStart" -dt "string";
	addAttr -ci true -sn "smdAniEnd" -ln "smdAniEnd" -dt "string";
	addAttr -ci true -sn "smdAniAdd" -ln "smdAniAdd" -dt "string";
	addAttr -ci true -sn "qcScale" -ln "qcScale" -dt "string";
	addAttr -ci true -sn "qcStatic" -ln "qcStatic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "qcAllowStatic" -ln "qcAllowStatic" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "qcSurface" -ln "qcSurface" -dt "string";
	addAttr -ci true -sn "qcKey" -ln "qcKey" -dt "string";
	addAttr -ci true -sn "qcHeader" -ln "qcHeader" -dt "string";
	addAttr -ci true -sn "qcFooter" -ln "qcFooter" -dt "string";
	addAttr -ci true -sn "qcMass" -ln "qcMass" -dt "string";
	addAttr -ci true -sn "compile" -ln "compile" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Thumb" -ln "Thumb" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Tex" -ln "Tex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "qcLOD" -ln "qcLOD" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Tips" -ln "Tips" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "smdBindPose" -ln "smdBindPose" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "qcScaleSwitch" -ln "qcScaleSwitch" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "qcUpAxis" -ln "qcUpAxis" -dt "string";
	addAttr -ci true -sn "qcUpAxisSwitch" -ln "qcUpAxisSwitch" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "qcOrigin" -ln "qcOrigin" -dt "string";
	addAttr -ci true -sn "qcOriginSwitch" -ln "qcOriginSwitch" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "qcBbox" -ln "qcBbox" -dt "string";
	addAttr -ci true -sn "qcBboxSwitch" -ln "qcBboxSwitch" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "qcCollapseBones" -ln "qcCollapseBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ActiveTemplate" -ln "ActiveTemplate" -dt "string";
	addAttr -ci true -sn "NpcTemplate" -ln "NpcTemplate" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ThirdPersonPlayerSP" -ln "ThirdPersonPlayerSP" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "ThirdPersonPlayerMP" -ln "ThirdPersonPlayerMP" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "Vehicle" -ln "Vehicle" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "matType" -ln "matType" -min 0 -max 1 -en "VertexLitGeneric:UnLitGeneric" 
		-at "enum";
	addAttr -ci true -sn "nocull" -ln "nocull" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "alphatest" -ln "alphatest" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "skins" -ln "skins" -dt "string";
	addAttr -ci true -sn "nomip" -ln "nomip" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "nonice" -ln "nonice" -min 0 -max 1 -at "bool";
	setAttr ".st" 2;
	setAttr ".smdTarget" -type "string" "D:/Desktop/Source Engine Tools/Modeling/MESA/projects/SourceFilmmaker/modelsrc/elijah/elijah.smd";
	setAttr ".texPath" -type "string" "D:/Desktop/Source Engine Tools/Modeling/MESA/projects/SourceFilmmaker/materialsrc/";
	setAttr ".smdIdle" yes;
	setAttr ".smdRef" yes;
	setAttr ".smdAniName" -type "string" "idle�#";
	setAttr ".smdAniStart" -type "string" "0�#";
	setAttr ".smdAniEnd" -type "string" "1�#";
	setAttr ".smdAniAdd" -type "string" "loop fps 30�#";
	setAttr ".qcScale" -type "string" "0.5";
	setAttr ".qcSurface" -type "string" "default";
	setAttr ".qcKey" -type "string" "--None--";
	setAttr ".qcHeader" -type "string" "";
	setAttr ".qcMass" -type "string" "1";
	setAttr ".qcScaleSwitch" yes;
	setAttr ".qcUpAxis" -type "string" "Y";
	setAttr ".qcUpAxisSwitch" yes;
	setAttr ".qcOrigin" -type "string" "0 0 0 -90";
	setAttr ".qcOriginSwitch" yes;
	setAttr ".qcBbox" -type "string" "0 0 0 0 0 0";
	setAttr -k on ".matType";
	setAttr -k on ".nocull";
	setAttr -k on ".alphatest";
	setAttr -k on ".skins";
	setAttr -k on ".nomip" yes;
	setAttr -k on ".nonice";
createNode displayLayer -n "Rig";
	rename -uid "546FB204-4291-81DD-9074-0C982AA40E5D";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	setAttr ".do" 3;
createNode displayLayer -n "Blendshapes";
	rename -uid "DB70BCE1-4D94-49F3-D5A9-1B8CA53BA59D";
	addAttr -ci true -h true -sn "fbid" -ln "fbid" -at "long2" -nc 2;
	addAttr -ci true -h true -sn "fbid0" -ln "fbid0" -at "long" -p "fbid";
	addAttr -ci true -h true -sn "fbid1" -ln "fbid1" -at "long" -p "fbid";
	setAttr ".v" no;
	setAttr ".do" 4;
createNode groupId -n "groupId10";
	rename -uid "A432CF26-4E0B-3A06-B77C-979A216D26DD";
	setAttr ".ihi" 0;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "60EFC876-40C8-9E9E-7A5B-86AC9EA0A7A2";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "60B63D2E-4934-2E60-3C49-D695ABEB652F";
createNode place2dTexture -n "elijah_basemesh_defaultMat1P2D";
	rename -uid "0750D7F2-4AA6-EF1E-22A1-BF9849AB8B7F";
createNode skinCluster -n "skinCluster7";
	rename -uid "D4EC8625-48A3-2D7B-E7B2-EB95A34CCA10";
	setAttr -s 196 ".wl";
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
	setAttr ".wl[33].w[1]"  1;
	setAttr ".wl[34].w[1]"  1;
	setAttr ".wl[35].w[1]"  1;
	setAttr ".wl[36].w[1]"  1;
	setAttr ".wl[37].w[1]"  1;
	setAttr ".wl[38].w[1]"  1;
	setAttr ".wl[39].w[1]"  1;
	setAttr ".wl[40].w[1]"  1;
	setAttr ".wl[41].w[1]"  1;
	setAttr ".wl[42].w[1]"  1;
	setAttr ".wl[43].w[1]"  1;
	setAttr ".wl[44].w[1]"  1;
	setAttr ".wl[45].w[1]"  1;
	setAttr ".wl[46].w[1]"  1;
	setAttr ".wl[47].w[1]"  1;
	setAttr ".wl[48].w[1]"  1;
	setAttr ".wl[49].w[1]"  1;
	setAttr ".wl[50].w[1]"  1;
	setAttr ".wl[51].w[1]"  1;
	setAttr ".wl[52].w[1]"  1;
	setAttr ".wl[53].w[1]"  1;
	setAttr ".wl[54].w[1]"  1;
	setAttr ".wl[55].w[1]"  1;
	setAttr ".wl[56].w[1]"  1;
	setAttr ".wl[57].w[1]"  1;
	setAttr ".wl[58].w[1]"  1;
	setAttr ".wl[59].w[1]"  1;
	setAttr ".wl[60].w[1]"  1;
	setAttr ".wl[61].w[1]"  1;
	setAttr ".wl[62].w[1]"  1;
	setAttr ".wl[63].w[1]"  1;
	setAttr ".wl[64].w[1]"  1;
	setAttr ".wl[65].w[1]"  1;
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
	setAttr ".wl[90].w[1]"  1;
	setAttr ".wl[91].w[1]"  1;
	setAttr ".wl[92].w[1]"  1;
	setAttr ".wl[93].w[1]"  1;
	setAttr ".wl[94].w[1]"  1;
	setAttr ".wl[95].w[1]"  1;
	setAttr ".wl[96].w[1]"  1;
	setAttr ".wl[97].w[1]"  1;
	setAttr ".wl[98].w[1]"  1;
	setAttr ".wl[99].w[1]"  1;
	setAttr ".wl[100].w[1]"  1;
	setAttr ".wl[101].w[1]"  1;
	setAttr ".wl[102].w[1]"  1;
	setAttr ".wl[103].w[1]"  1;
	setAttr ".wl[104].w[1]"  1;
	setAttr ".wl[105].w[1]"  1;
	setAttr ".wl[106].w[1]"  1;
	setAttr ".wl[107].w[1]"  1;
	setAttr ".wl[108].w[1]"  1;
	setAttr ".wl[109].w[1]"  1;
	setAttr ".wl[110].w[1]"  1;
	setAttr ".wl[111].w[1]"  1;
	setAttr ".wl[112].w[1]"  1;
	setAttr ".wl[113].w[1]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[0]"  1;
	setAttr ".wl[119].w[0]"  1;
	setAttr ".wl[120].w[0]"  1;
	setAttr ".wl[121].w[0]"  1;
	setAttr ".wl[122].w[0]"  1;
	setAttr ".wl[123].w[0]"  1;
	setAttr ".wl[124].w[0]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[0]"  1;
	setAttr ".wl[127].w[0]"  1;
	setAttr ".wl[128].w[0]"  1;
	setAttr ".wl[129].w[0]"  1;
	setAttr ".wl[130].w[0]"  1;
	setAttr ".wl[131].w[0]"  1;
	setAttr ".wl[132].w[0]"  1;
	setAttr ".wl[133].w[0]"  1;
	setAttr ".wl[134].w[0]"  1;
	setAttr ".wl[135].w[0]"  1;
	setAttr ".wl[136].w[0]"  1;
	setAttr ".wl[137].w[0]"  1;
	setAttr ".wl[138].w[1]"  1;
	setAttr ".wl[139].w[1]"  1;
	setAttr ".wl[140].w[1]"  1;
	setAttr ".wl[141].w[1]"  1;
	setAttr ".wl[142].w[1]"  1;
	setAttr ".wl[143].w[1]"  1;
	setAttr ".wl[144].w[1]"  1;
	setAttr ".wl[145].w[1]"  1;
	setAttr ".wl[146].w[1]"  1;
	setAttr ".wl[147].w[1]"  1;
	setAttr ".wl[148].w[1]"  1;
	setAttr ".wl[149].w[1]"  1;
	setAttr ".wl[150].w[1]"  1;
	setAttr ".wl[151].w[1]"  1;
	setAttr ".wl[152].w[1]"  1;
	setAttr ".wl[153].w[1]"  1;
	setAttr ".wl[154].w[1]"  1;
	setAttr ".wl[155].w[1]"  1;
	setAttr ".wl[156].w[1]"  1;
	setAttr ".wl[157].w[1]"  1;
	setAttr ".wl[158].w[1]"  1;
	setAttr ".wl[159].w[1]"  1;
	setAttr ".wl[160].w[1]"  1;
	setAttr ".wl[161].w[1]"  1;
	setAttr ".wl[162].w[0]"  1;
	setAttr ".wl[163].w[0]"  1;
	setAttr ".wl[164].w[0]"  1;
	setAttr ".wl[165].w[0]"  1;
	setAttr ".wl[166].w[0]"  1;
	setAttr ".wl[167].w[0]"  1;
	setAttr ".wl[168].w[0]"  1;
	setAttr ".wl[169].w[0]"  1;
	setAttr ".wl[170].w[0]"  1;
	setAttr ".wl[171].w[0]"  1;
	setAttr ".wl[172].w[0]"  1;
	setAttr ".wl[173].w[0]"  1;
	setAttr ".wl[174].w[0]"  1;
	setAttr ".wl[175].w[0]"  1;
	setAttr ".wl[176].w[0]"  1;
	setAttr ".wl[177].w[0]"  1;
	setAttr ".wl[178].w[0]"  1;
	setAttr ".wl[179].w[1]"  1;
	setAttr ".wl[180].w[1]"  1;
	setAttr ".wl[181].w[1]"  1;
	setAttr ".wl[182].w[1]"  1;
	setAttr ".wl[183].w[1]"  1;
	setAttr ".wl[184].w[1]"  1;
	setAttr ".wl[185].w[1]"  1;
	setAttr ".wl[186].w[1]"  1;
	setAttr ".wl[187].w[1]"  1;
	setAttr ".wl[188].w[1]"  1;
	setAttr ".wl[189].w[1]"  1;
	setAttr ".wl[190].w[1]"  1;
	setAttr ".wl[191].w[1]"  1;
	setAttr ".wl[192].w[1]"  1;
	setAttr ".wl[193].w[1]"  1;
	setAttr ".wl[194].w[1]"  1;
	setAttr ".wl[195].w[1]"  1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.6653340007997807e-016 1.3363000471672391e-019 1 0
		 0.99999967805990753 0.0008024213859303403 -1.2284586857477189e-017 0 -0.00080242138593022928 0.99999967805990753 1.660797402602656e-016 0
		 -179.80602562428189 -3.2726102924845164 3.365598678588869 1;
	setAttr ".pm[1]" -type "matrix" 1.6653340007997807e-016 1.3363000471672391e-019 1 0
		 0.99999967805990753 0.0008024213859303403 -1.2284586857477189e-017 0 -0.00080242138593022928 0.99999967805990753 1.660797402602656e-016 0
		 -179.80602562428189 -3.2726102924845164 -3.3655934333801252 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 1;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode tweak -n "tweak7";
	rename -uid "8B17D59B-4D03-2BEB-DA47-19982282E630";
createNode objectSet -n "skinCluster7Set";
	rename -uid "06BEF79F-4B82-F659-7B51-BCBFEAE7C4CF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	rename -uid "162385B9-498E-A94C-458A-4D875BF9910F";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	rename -uid "5B6A6C66-4781-2D5A-8082-42AF30179440";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	rename -uid "E6C8E773-4CEE-3B09-E7C1-429BD880B5DC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId46";
	rename -uid "25E3EF29-4EA4-BB81-5134-5CB21DA12C0C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "E29E0672-407F-9CCF-3056-96B6AB5EB8C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	rename -uid "EA13C8EF-4920-C83F-4C43-A89287CF0994";
	setAttr -s 58 ".wm";
	setAttr ".wm[0]" -type "matrix" 0 0.99727554179989486 0.073766481058313085 0 -1.6653345369377353e-016 -0.073766481058313182 0.99727554179989486 0
		 1 -1.6653345369377353e-016 0 0 0 108.98060759190794 -9.0580902060991431 1;
	setAttr ".wm[1]" -type "matrix" 1.2175420164210098e-017 0.99999978397901945 0.00065729895390931325 0
		 -1.6608777902964792e-016 -0.0006572989539094104 0.99999978397901945 0 1 -1.6653345369377353e-016 0 0
		 2.4651903288156619e-032 121.23985109928012 -8.1512984358490801 1;
	setAttr ".wm[2]" -type "matrix" 3.181895692491242e-017 0.99299713736270634 -0.11813841538412009 0
		 -1.6346542502739463e-016 0.11813841538412 0.99299713736270634 0 1 -1.6653345369377353e-016 0 0
		 -2.5045010415762551e-015 133.16518723829734 -8.1434599231866169 1;
	setAttr ".wm[3]" -type "matrix" 1.9263206705112573e-018 0.99806209151230796 0.0622258908018027 0
		 -1.6652231228232019e-016 -0.062225890801802797 0.99806209151230796 0 1 -1.6653345369377353e-016 0 0
		 -2.8219198728873728e-015 146.69090517130002 -9.7526356432510184 1;
	setAttr ".wm[4]" -type "matrix" -1.1945973103566208e-017 0.98941491428370509 0.14511418742827695 0
		 -1.661044398135856e-016 -0.14511418742827706 0.98941491428370509 0 1 -1.6653345369377353e-016 0 0
		 1.8466452476759418e-015 159.08540145131849 -8.9798795405769543 1;
	setAttr ".wm[5]" -type "matrix" -3.781204119225651e-017 0.95447997803502971 0.29827499313594802 0
		 -1.6218397189627373e-016 -0.29827499313594813 0.95447997803502971 0 1 -1.6653345369377353e-016 0 0
		 5.71821151215154e-015 168.04704020907195 -7.6655058561064511 1;
	setAttr ".wm[6]" -type "matrix" 1.2417848837930762e-017 0.99999967805990819 -0.00080242138593034085 0
		 -1.6606982937732703e-016 0.00080242138593022982 0.99999967805990819 0 1 -1.6653345369377353e-016 0 0
		 9.5846102113240905e-015 177.88768264039919 -4.6785188675678553 1;
	setAttr ".wm[7]" -type "matrix" 1.2417848837930762e-017 0.99999967805990819 -0.00080242138593034085 0
		 -1.6606982937732703e-016 0.00080242138593022982 0.99999967805990819 0 1 -1.6653345369377353e-016 0 0
		 -3.3655986785888672 179.80859375 3.128329038619996 1;
	setAttr ".wm[8]" -type "matrix" 1.2417848837930762e-017 0.99999967805990819 -0.00080242138593034085 0
		 -1.6606982937732703e-016 0.00080242138593022982 0.99999967805990819 0 1 -1.6653345369377353e-016 0 0
		 3.365593433380127 179.80859375 3.128329038619996 1;
	setAttr -s 59 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 108.98060759190794 -9.0580902060991431 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.51811352063479121 0.4812051326985422 0.51811352063479121 0.48120513269854237 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.292734548815432 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.036579960372536593 0.99933072928792877 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.925338715140583 -1.2434497875801753e-014
		 -2.6496970510336154e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.059500963867645966 0.99822824809700772 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.6211046578901 -9.7699626167013776e-015
		 -7.5082817369024788e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.090217704341313834 0.99592206814759521 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.418562317338171 -3.5527136788005009e-015
		 4.6446429872733937e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.041669063439382842 0.99913146740160508 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 9.0575133125431933 -7.1054273576010019e-015
		 3.9797670748924318e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.07854725039064378 0.99691039188889463 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.283639695207341 -0.084198278446216079
		 4.2415884957088198e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.15126082024721926 0.98849388680868355 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9146461094658775 7.8083867730053296
		 -3.3655986785888756 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.9146461094658775 7.8083867730053296
		 3.3655934333801185 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.5769985338335175 7.2837727592679489
		 1.266451375279426e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.15013931240834361 0.98866485062914511 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.59395090030946562
		 0.56062930297515479 7.3809033113502247 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.36281109662234279 0.65089212938307228 -0.52920436543540317 -0.40577122086093659 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.453415281681558 0.14977596628546053
		 -3.3914458877414138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.024474308551502073 0.036981648094456726 0.1753903970894887 0.98349965660082217 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 32.112019046853547 -1.4210854715202004e-014
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.050257882541740531 0.052958927548661848 -0.0018603323886079892 0.9973294522868158 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 22.6874342687981 -2.8421709430404007e-014
		 -8.8817841970012523e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.026595989532563 -0.50613647860137689
		 -3.8324188443038949 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.025970061155546096 0.02658872968763409 0.016245608686344951 0.99917699912257052 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7139445180142765 2.8421709430404007e-014
		 -5.3290705182007514e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.040611394631386431 -0.037952607291390834 0.029292711441122752 0.9980241736963622 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7194550870052048 -4.2632564145606011e-014
		 -1.7763568394002505e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.324370719313798 -0.52841545417950897
		 -0.60968195854957585 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.036618855606226422 -0.037473492462846272 0.016470352692511347 0.99849062302002212 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.0762451731499283 1.4210854715202004e-014
		 8.8817841970012523e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0061825399480021168 -0.0059976783851591782 0.010215960253560866 0.99991071511904372 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.1107750525717073 1.4210854715202004e-014
		 -1.7763568394002505e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.669588810443503 0.018879194398223831
		 2.8836544928452312 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.054611906116581059 -0.055033639076345904 0.024106544591286579 0.99669840613306715 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.7150847996824119 1.4210854715202004e-014
		 -8.8817841970012523e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00028042885641688711 0.00026879702882303704 0.00084004786339725041 0.99999957171360887 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.0691518055467419 1.5631940186722204e-013
		 -4.9737991503207013e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.054049253394776 0.94548630848559867
		 6.0170833587205834 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.095601027319814916 -0.095479190937202973 0.028398861552656352 0.99042297647817445 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.6964530680790091 5.6843418860808015e-014
		 2.3505503099485736e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.035999126189652522 0.032834506521918501 0.016618790372108342 0.99867400782317928 1
		 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.5333112866736158 0
		 -8.8817841970012523e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.5913505870629221 0.23760903777621517
		 -4.1039611166198595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.27338543526068831 0.38144800469769008 -0.11930435127276098 0.8749424525458005 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.8549323986350821 0
		 -1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.080259422024429733 -0.10626352962491442 0.1584352153314936 0.97834798001060064 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9876028457374559 0
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.59432984943637734
		 0.5606800804532881 -7.3809000000000013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.65089212938307228 -0.36281109662234284 -0.40577122086093681 0.52920436543540295 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.453361413150731 -0.14954118291728946
		 3.3914509437934788 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.024474308551499874 0.03698164809445624 0.17539039708948886 0.98349965660082228 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -32.111828266988411 0.00018720008607431282
		 1.2553981170171369e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.05025788254174389 0.05295892754866191 -0.0018603323886080022 0.99732945228681569 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 -22.687729959014128 -0.00032692894164654263
		 8.3138864059861817e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.026162101236359 0.5066309741278161
		 3.8324117804398021 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.025970061155543993 0.026588729687634014 0.01624560868634509 0.99917699912257052 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7139697772039035 -9.8460305068215348e-005
		 1.015294102657549e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.040611394631385751 -0.037952607291390973 0.029292711441122575 0.9980241736963622 1
		 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7195537572583497 -0.00012981522847610449
		 3.6395477565065448e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.2904784139758929e-008 0 0 0.99999999999999989 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 -12.324341967067017 0.52843052001833257
		 0.6096750547661749 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.036618855606227199 -0.037473492462845696 0.016470352692510997 0.99849062302002212 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.0763784063954915 -0.00013539850954202848
		 7.5819581848435291e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0061825399480066098 -0.005997678385159611 0.010215960253560613 0.99991071511904372 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.1103883769642273 0.00035070888327481953
		 -4.5491190934221493e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.669643049506124 -0.018998341117807627
		 -2.8836560405409664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.054611906116582634 -0.055033639076345529 0.024106544591286309 0.99669840613306715 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.7147525252108053 0.00039437174922341001
		 8.2098977491895653e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00028042885631791192 0.00026879702881287552 0.00084004786336746185 0.99999957171360887 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.0691826466004635 -1.3897293172249192e-005
		 -3.5260449475771338e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.053807201616294 -0.94529236546786422
		 -6.017066695307939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.095601027319816276 -0.095479190937202918 0.028398861552656259 0.99042297647817434 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.6966149222696956 -0.000167803177205883
		 -6.1282819176805559e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.035999126189651766 0.032834506521917765 0.01661879037210811 0.99867400782317939 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.5335185861038596 -7.9847617783457281e-005
		 7.2685559063145888e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.5913561906752989 -0.23763894875067137
		 4.1039592558729545 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.27338543526068793 0.38144800469768986 -0.1193043512727614 0.87494245254580083 1
		 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.8545777947214859 0.00063787848814911285
		 2.8844382860881979e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.080259422024431024 -0.10626352962491459 0.15843521533149313 0.97834798001060064 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.987573820517845 8.0770669015350904e-005
		 -4.2389434412370974e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.3207970097423782 1.5441819082728911
		 11.795719746574477 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.99081226363364816 0.13524443882528422 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 46.098366081171093 2.3316610977541501
		 8.8817841970012523e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.035825177605913958 -0.0032302928522314599 0.28328772619936204 0.958360154661278 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 52.996240248650253 -6.2637803734820601
		 0.2873400809014548 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.084978018685956794 -0.012799173496903404 -0.50093623247425911 0.86120718093412374 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.410994508901092 -6.7215024319050407
		 -3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.016659513582856146 0.047189050713283227 -0.94258624104802247 0.33019211421068306 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0016062281109423537
		 6.4464136197773776 0.87582332018769193 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.024071624719955335 -0.03062753258665208 0.78713221213079787 0.61555291548092916 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.320797009742364 1.5441819082728916
		 -11.795719746574477 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.13524443882528431 0.99081226363364816 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -46.098366081171093 -2.3316610977541501
		 -1.0658141036401503e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.035825177605913958 -0.0032302928522314634 0.28328772619936221 0.958360154661278 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 -52.996240248650246 6.2637803734820565
		 -0.28734008090145835 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.084978018685956752 -0.012799173496903404 -0.50093623247425911 0.86120718093412374 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 -10.410994508901094 6.7215024319050443
		 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.016659513582856146 0.047189050713283227 -0.94258624104802247 0.33019211421068306 1
		 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0016062281109432419
		 -6.4464136197773776 -0.87582332018769549 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.024071624719955331 -0.030627532586652077 0.78713221213079787 0.61555291548092916 1
		 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.5769985338335175 7.2837727592679489
		 1.266451375279426e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.15013931240834361 0.98866485062914511 1
		 1 1 yes;
	setAttr -s 58 ".m";
	setAttr -s 58 ".p";
	setAttr -s 59 ".g[0:58]" yes yes yes yes yes yes yes no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode file -n "file_tongue_diffuse";
	rename -uid "F863ABEA-4352-2A8B-ABF8-27A865531315";
	setAttr ".ftn" -type "string" "D:/Desktop/Source Engine Tools/Modeling/MESA/projects/SourceFilmmaker/materialsrc/models/elijah/elijah_tongue_diffuse.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture_tongue_diffuse";
	rename -uid "8A2D4A2D-4F2A-8A41-73ED-5986741BA6EA";
createNode shadingEngine -n "iterati_basemesh_2_shadingGroup_iterati";
	rename -uid "F5543264-4760-20EC-9DEE-ED8D06B6236B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "iterati_basemesh_2_materialInfo1";
	rename -uid "BE3140F9-4938-E07E-81EA-65A38B002F2D";
createNode shadingEngine -n "iterati_basemesh_2_shadingGroup_iteratiClothes";
	rename -uid "7727AE42-4E31-CB43-3682-7A8BEFFF34AF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "iterati_basemesh_2_materialInfo2";
	rename -uid "A00547DE-4D21-9DEA-6806-3BBF8F7A9D91";
createNode groupId -n "groupId48";
	rename -uid "DA29EB61-4E39-9DB3-C455-2D83BA552E5C";
	setAttr ".ihi" 0;
createNode objectSet -n "topoSymmetrySet";
	rename -uid "7ACC6443-46DB-0217-8988-AF8789E3A680";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster8";
	rename -uid "9D7CF453-4041-EE5F-A987-22845A2B7139";
	setAttr -s 1915 ".wl";
	setAttr -s 3 ".wl[0].w[49:51]"  0.99173994523444919 0.007862444026858071 
		0.00039761073869270847;
	setAttr -s 3 ".wl[1].w[49:51]"  0.9972165755067226 0.0025032618802468443 
		0.0002801626130305375;
	setAttr -s 3 ".wl[2].w[49:51]"  0.99553694059035958 0.0038063597706427532 
		0.00065669963899758798;
	setAttr -s 3 ".wl[3].w[49:51]"  0.99741117539833202 0.0022388346141602625 
		0.0003499899875076845;
	setAttr -s 3 ".wl[4].w[49:51]"  0.99886834496008847 0.0010564693057913451 
		7.5185734120289047e-005;
	setAttr -s 3 ".wl[5].w[48:50]"  0.0001349025073987684 0.99501661999246638 
		0.004848477500134887;
	setAttr -s 3 ".wl[6].w[49:51]"  0.98297661735630748 0.016768638891322241 
		0.00025474375237049396;
	setAttr -s 3 ".wl[7].w[49:51]"  0.98033534029632508 0.019171737211089827 
		0.0004929224925852544;
	setAttr -s 3 ".wl[8].w[49:51]"  0.93764489235857718 0.059231087629335433 
		0.0031240200120875691;
	setAttr -s 3 ".wl[9].w[49:51]"  0.97131478497086976 0.02533076136516911 
		0.0033544536639611034;
	setAttr -s 3 ".wl[10].w[49:51]"  0.98551764713459034 0.012121923447315247 
		0.0023604294180944209;
	setAttr -s 3 ".wl[11].w[49:51]"  0.9953286371925153 0.0040241032658717424 
		0.00064725954161287712;
	setAttr -s 3 ".wl[12].w[49:51]"  0.98818897753561818 0.010930551022606535 
		0.00088047144177526065;
	setAttr -s 3 ".wl[13].w[49:51]"  0.95203990402581296 0.047413668457575123 
		0.00054642751661209484;
	setAttr -s 3 ".wl[14].w[49:51]"  0.8244920788683946 0.17333070536443423 
		0.0021772157671712178;
	setAttr -s 3 ".wl[15].w[49:51]"  0.81936305967021095 0.17640731596364764 
		0.004229624366141372;
	setAttr -s 3 ".wl[16].w[49:51]"  0.503067052555633 0.47215832788884649 
		0.02477461955552062;
	setAttr -s 3 ".wl[17].w[49:51]"  0.47156142576928378 0.46688462358641908 
		0.061553950644297188;
	setAttr -s 3 ".wl[18].w[49:51]"  0.49318037801680353 0.4137084853350676 
		0.09311113664812902;
	setAttr -s 3 ".wl[19].w[49:51]"  0.57801906695670702 0.36146977891189641 
		0.06051115413139653;
	setAttr -s 3 ".wl[20].w[49:51]"  0.78674592367074336 0.19890755723053963 
		0.014346519098716988;
	setAttr -s 3 ".wl[21].w[49:51]"  0.55155192843880951 0.44716584638727919 
		0.0012822251739113397;
	setAttr -s 3 ".wl[22].w[49:51]"  0.56113527644357375 0.43533775245878698 
		0.0035269710976394844;
	setAttr -s 3 ".wl[23].w[49:51]"  0.55192630272417786 0.43999376013792352 
		0.0080799371378986705;
	setAttr -s 3 ".wl[24].w[49:51]"  0.44957283977497531 0.52284369258596319 
		0.027583467639061575;
	setAttr -s 3 ".wl[25].w[49:51]"  0.52988383446015674 0.46117622137852898 
		0.0089399441613142398;
	setAttr -s 3 ".wl[26].w[49:51]"  0.53862741803630232 0.45828473150565002 
		0.0030878504580475964;
	setAttr -s 3 ".wl[27].w[49:51]"  0.51534573151010865 0.48412366731615142 
		0.0005306011737400419;
	setAttr -s 3 ".wl[28].w[49:51]"  0.83616111408345029 0.14944794477157061 
		0.014390941144979099;
	setAttr -s 3 ".wl[29].w[49:51]"  0.44966351513975639 0.47651807234474336 
		0.073818412515500254;
	setAttr -s 3 ".wl[30].w[49:51]"  0.32682786098653099 0.51860447839760404 
		0.15456766061586508;
	setAttr -s 3 ".wl[31].w[49:51]"  0.34468279715724187 0.58525463189037441 
		0.07006257095238369;
	setAttr -s 3 ".wl[32].w[49:51]"  0.37572510099246198 0.48818472261038032 
		0.13609017639715765;
	setAttr -s 3 ".wl[33].w[49:51]"  0.497477707348779 0.50132637327852358 
		0.0011959193726974631;
	setAttr -s 3 ".wl[34].w[49:51]"  0.49922929374804575 0.50006657586245151 
		0.00070413038950280042;
	setAttr -s 3 ".wl[35].w[49:51]"  0.48686255866548889 0.51084175100610274 
		0.0022956903284083534;
	setAttr -s 3 ".wl[36].w[49:51]"  0.093680484185300589 0.87006627212152676 
		0.03625324369317267;
	setAttr -s 3 ".wl[37].w[49:51]"  0.063772231746239985 0.82989540714700516 
		0.10633236110675494;
	setAttr -s 3 ".wl[38].w[49:51]"  0.14981954463888511 0.53887673473385445 
		0.31130372062726053;
	setAttr -s 3 ".wl[39].w[49:51]"  0.062993909339538093 0.85819248689597483 
		0.078813603764486984;
	setAttr -s 3 ".wl[40].w[50:52]"  0.045022255596903031 0.89961807601023647 
		0.055359668392860682;
	setAttr -s 3 ".wl[41].w[50:52]"  0.10259840940479976 0.68693421719381886 
		0.21046737340138152;
	setAttr -s 3 ".wl[42].w[50:52]"  0.03401669928780271 0.91385976557820736 
		0.052123535133989922;
	setAttr -s 3 ".wl[43].w[50:52]"  0.046520583289589329 0.92289197758400743 
		0.030587439126403319;
	setAttr -s 3 ".wl[44].w[50:52]"  0.00041511049533207305 0.50376998081225755 
		0.49581490869241041;
	setAttr -s 3 ".wl[45].w[50:52]"  0.00047883379621646929 0.50420189826320361 
		0.4953192679405799;
	setAttr -s 3 ".wl[46].w[50:52]"  0.0020294028562260515 0.50574509597887651 
		0.49222550116489738;
	setAttr -s 3 ".wl[47].w[50:52]"  0.00047560356303196513 0.50515241088370788 
		0.49437198555326023;
	setAttr -s 3 ".wl[48].w[50:52]"  0.00031053067897202926 0.50558147639158357 
		0.4941079929294443;
	setAttr -s 3 ".wl[49].w[50:52]"  0.022710575070409189 0.9527983130307508 
		0.024491111898840061;
	setAttr -s 3 ".wl[50].w[50:52]"  9.9647902015600291e-005 0.50095149205184553 
		0.49894886004613903;
	setAttr -s 3 ".wl[51].w[50:52]"  0.00014989991888161622 0.50147407684042278 
		0.49837602324069563;
	setAttr -s 3 ".wl[52].w[49:51]"  0.19177036812258597 0.58612807798661548 
		0.22210155389079853;
	setAttr -s 3 ".wl[53].w[49:51]"  0.26384151101722714 0.70735935007744433 
		0.028799138905328564;
	setAttr -s 3 ".wl[54].w[49:51]"  0.45015597883541547 0.54267233834948136 
		0.0071716828151032648;
	setAttr -s 3 ".wl[55].w[49:51]"  0.28008419064175538 0.69533005713705542 
		0.024585752221189344;
	setAttr -s 3 ".wl[56].w[49:51]"  0.066203831204351304 0.83250688317407617 
		0.10128928562157244;
	setAttr -s 3 ".wl[57].w[50:52]"  0.068891358649851395 0.88090984409545547 
		0.050198797254693138;
	setAttr -s 3 ".wl[58].w[50:52]"  0.0009183119270554168 0.50848877089278699 
		0.49059291718015746;
	setAttr -s 3 ".wl[59].w[50:52]"  0.00033622478544494491 0.50521896895231844 
		0.49444480626223664;
	setAttr -s 3 ".wl[60].w[50:52]"  0.035922655455209999 0.91410497257821266 
		0.049972371966577313;
	setAttr -s 3 ".wl[61].w[50:52]"  0.00045864175829886963 0.50392886693734773 
		0.49561249130435336;
	setAttr -s 3 ".wl[62].w[49:51]"  0.16457535322490396 0.61624616859530146 
		0.21917847817979455;
	setAttr -s 3 ".wl[63].w[49:51]"  0.24172045111283014 0.71833388440623724 
		0.039945664480932667;
	setAttr -s 3 ".wl[64].w[49:51]"  0.41615320487291518 0.57093368031105285 
		0.012913114816031969;
	setAttr -s 3 ".wl[65].w[49:51]"  0.26657905542432897 0.69687644752768552 
		0.036544497047985611;
	setAttr -s 3 ".wl[66].w[49:51]"  0.073975483578462106 0.77287047198152536 
		0.15315404444001274;
	setAttr -s 3 ".wl[67].w[50:52]"  0.065061382851377358 0.86324535616189968 
		0.071693260986722893;
	setAttr -s 3 ".wl[68].w[50:52]"  0.0031140973970867109 0.52508580534200644 
		0.47180009726090688;
	setAttr -s 3 ".wl[69].w[50:52]"  0.0016526073646620301 0.5205140532465411 
		0.47783333938879691;
	setAttr -s 3 ".wl[70].w[50:52]"  0.043377594795949104 0.91082655280338054 
		0.045795852400670335;
	setAttr -s 3 ".wl[71].w[50:52]"  0.00068451614160817552 0.50550855493100166 
		0.49380692892739037;
	setAttr -s 3 ".wl[72].w[49:51]"  0.15882166831823136 0.59896033907297297 
		0.2422179926087957;
	setAttr -s 3 ".wl[73].w[49:51]"  0.2293479256483919 0.72354743699671031 
		0.047104637354897901;
	setAttr -s 3 ".wl[74].w[49:51]"  0.41446644910878011 0.57089836228404789 
		0.014635188607172051;
	setAttr -s 3 ".wl[75].w[49:51]"  0.27853782688274553 0.67288538902064876 
		0.04857678409660577;
	setAttr -s 3 ".wl[76].w[49:51]"  0.089253214005899792 0.72271990236435923 
		0.18802688362974096;
	setAttr -s 3 ".wl[77].w[50:52]"  0.062063349506154331 0.87508667125834216 
		0.062849979235503645;
	setAttr -s 3 ".wl[78].w[50:52]"  0.0045618889386316161 0.54470023214849106 
		0.45073787891287731;
	setAttr -s 3 ".wl[79].w[50:52]"  0.0015613805202194912 0.52130378261554478 
		0.47713483686423569;
	setAttr -s 3 ".wl[80].w[50:52]"  0.042062378908169058 0.91038454571618133 
		0.047553075375649609;
	setAttr -s 3 ".wl[81].w[50:52]"  0.0011974438459096096 0.50879936872548526 
		0.49000318742860516;
	setAttr -s 3 ".wl[82].w[49:51]"  0.14780725504196729 0.61301340383810821 
		0.23917934111992448;
	setAttr -s 3 ".wl[83].w[50:52]"  0.018892173846799261 0.94882949748271628 
		0.032278328670484413;
	setAttr -s 3 ".wl[84].w[49:51]"  0.53426238294878348 0.45732482436839483 
		0.0084127926828218118;
	setAttr -s 3 ".wl[85].w[49:51]"  0.47222722946717921 0.50288007869351636 
		0.024892691839304332;
	setAttr -s 3 ".wl[86].w[49:51]"  0.39723343860187615 0.5392665284421102 
		0.063500032956013724;
	setAttr -s 3 ".wl[87].w[49:51]"  0.38621339664804444 0.48666583955322024 
		0.1271207637987353;
	setAttr -s 3 ".wl[88].w[49:51]"  0.5148908016669721 0.41899310785596555 
		0.066116090477062503;
	setAttr -s 3 ".wl[89].w[49:51]"  0.81831326362298662 0.17013496402819372 
		0.011551772348819571;
	setAttr -s 3 ".wl[90].w[49:51]"  0.51499324514092637 0.48452888001467875 
		0.00047787484439482233;
	setAttr -s 3 ".wl[91].w[49:51]"  0.54220639373876156 0.45454850057029922 
		0.0032451056909392692;
	setAttr -s 3 ".wl[92].w[54:56]"  0.96744648237192465 0.030286830132525415 
		0.0022666874955499208;
	setAttr -s 3 ".wl[93].w[54:56]"  0.99401675876483164 0.0054489732931253896 
		0.00053426794204286684;
	setAttr -s 3 ".wl[94].w[54:56]"  0.99440948684767438 0.0049444194711780066 
		0.00064609368114760363;
	setAttr -s 3 ".wl[95].w[54:56]"  0.99929859814586741 0.00065816036831392111 
		4.3241485818677111e-005;
	setAttr -s 3 ".wl[96].w[54:56]"  0.98708343366782791 0.012626203567715551 
		0.00029036276445645664;
	setAttr -s 3 ".wl[97].w[54:56]"  0.9778957097794877 0.021830744573326625 
		0.00027354564718556364;
	setAttr -s 3 ".wl[98].w[54:56]"  0.93870517250141949 0.060466302237816585 
		0.00082852526076402375;
	setAttr -s 3 ".wl[99].w[54:56]"  0.97727974203754386 0.021887958147431021 
		0.00083229981502498131;
	setAttr -s 3 ".wl[100].w[54:56]"  0.8587790010522105 0.13056249948686 
		0.010658499460929654;
	setAttr -s 3 ".wl[101].w[54:56]"  0.96218673058169046 0.033415909719175199 
		0.0043973596991343381;
	setAttr -s 3 ".wl[102].w[54:56]"  0.98174740498298407 0.015828410535787374 
		0.0024241844812285755;
	setAttr -s 3 ".wl[103].w[54:56]"  0.99261425912277645 0.0067859831300695322 
		0.00059975774715403561;
	setAttr -s 3 ".wl[104].w[54:56]"  0.96527475390959239 0.033710346130832208 
		0.0010148999595753448;
	setAttr -s 3 ".wl[105].w[54:56]"  0.79242360141451063 0.20557557999479664 
		0.0020008185906926;
	setAttr -s 3 ".wl[106].w[54:56]"  0.78273391718073659 0.21515166826394824 
		0.0021144145553151895;
	setAttr -s 3 ".wl[107].w[54:56]"  0.9157169476382887 0.081462244995329267 
		0.0028208073663821115;
	setAttr -s 3 ".wl[108].w[54:56]"  0.51331559932632265 0.4515601132380575 
		0.035124287435620072;
	setAttr -s 3 ".wl[109].w[54:56]"  0.46481746592801731 0.46643380565480863 
		0.068748728417174193;
	setAttr -s 3 ".wl[110].w[54:56]"  0.44131221392556469 0.46479769163970791 
		0.093890094434727428;
	setAttr -s 3 ".wl[111].w[54:56]"  0.43293575583686184 0.51627700303890744 
		0.050787241124230824;
	setAttr -s 3 ".wl[112].w[54:56]"  0.48869064045548744 0.49654971896816846 
		0.014759640576344289;
	setAttr -s 3 ".wl[113].w[54:56]"  0.52712818966594233 0.47161047500562819 
		0.0012613353284295534;
	setAttr -s 3 ".wl[114].w[54:56]"  0.5352572122237933 0.46224736745071249 
		0.002495420325494322;
	setAttr -s 3 ".wl[115].w[54:56]"  0.54916461190762234 0.44086519317612832 
		0.0099701949162495154;
	setAttr -s 3 ".wl[116].w[54:56]"  0.47257087858606911 0.48619609312651513 
		0.041233028287415853;
	setAttr -s 3 ".wl[117].w[54:56]"  0.52858906605302325 0.45974344584829718 
		0.011667488098679655;
	setAttr -s 3 ".wl[118].w[54:56]"  0.51037610212463369 0.48841123918686524 
		0.0012126586885009799;
	setAttr -s 3 ".wl[119].w[54:56]"  0.50305559917127796 0.49637428098363279 
		0.00057011984508921942;
	setAttr -s 3 ".wl[120].w[54:56]"  0.43975384039674809 0.54458457647177938 
		0.015661583131472735;
	setAttr -s 3 ".wl[121].w[54:56]"  0.30810663406368177 0.63539753339755256 
		0.056495832538765632;
	setAttr -s 3 ".wl[122].w[54:56]"  0.29048063646323941 0.55107345110934924 
		0.15844591242741138;
	setAttr -s 3 ".wl[123].w[54:56]"  0.35848152161622215 0.56212128578899379 
		0.079397192594784019;
	setAttr -s 3 ".wl[124].w[54:56]"  0.039601857578696845 0.94750755253114638 
		0.012890589890156897;
	setAttr -s 3 ".wl[125].w[54:56]"  0.49426379103806234 0.50535878122197198 
		0.00037742773996572374;
	setAttr -s 3 ".wl[126].w[54:56]"  0.49780234441849947 0.50177024729030606 
		0.00042740829119444085;
	setAttr -s 3 ".wl[127].w[54:56]"  0.48888347411016092 0.50807970097408961 
		0.0030368249157495357;
	setAttr -s 3 ".wl[128].w[54:56]"  0.26430062519799935 0.64921123593493113 
		0.086488138867069547;
	setAttr -s 3 ".wl[129].w[54:56]"  0.081298942567624044 0.81163804285231489 
		0.10706301458006107;
	setAttr -s 3 ".wl[130].w[54:56]"  0.13163861837397928 0.53887111301698132 
		0.32949026860903935;
	setAttr -s 3 ".wl[131].w[54:56]"  0.036475032133467145 0.89020620128537276 
		0.07331876658116028;
	setAttr -s 3 ".wl[132].w[55:57]"  0.052443749626637698 0.90648620576921979 
		0.041070044604142625;
	setAttr -s 3 ".wl[133].w[55:57]"  0.029677681902443315 0.91514268382086461 
		0.055179634276692063;
	setAttr -s 3 ".wl[134].w[55:57]"  0.030474010240954516 0.93228085281661444 
		0.037245136942431083;
	setAttr -s 3 ".wl[135].w[55:57]"  0.16429844771219557 0.74592990980398655 
		0.089771642483817915;
	setAttr -s 3 ".wl[136].w[55:57]"  0.0111112913747397 0.53596733743186631 
		0.4529213711933941;
	setAttr -s 3 ".wl[137].w[55:57]"  0.0083192095531344611 0.54548583394584682 
		0.44619495650101887;
	setAttr -s 3 ".wl[138].w[55:57]"  0.0011731407183374551 0.51244122664716663 
		0.48638563263449597;
	setAttr -s 3 ".wl[139].w[55:57]"  0.0039231812396283844 0.54602500931214748 
		0.45005180944822426;
	setAttr -s 3 ".wl[140].w[55:57]"  0.00077756862605409351 0.50954268242257528 
		0.48967974895137073;
	setAttr -s 3 ".wl[141].w[55:57]"  0.027925144014446263 0.94866484779588067 
		0.023410008189673086;
	setAttr -s 3 ".wl[142].w[55:57]"  0.0044406069410049039 0.52962921951278985 
		0.46593017354620542;
	setAttr -s 3 ".wl[143].w[55:57]"  0.002744010117780484 0.51620689616912063 
		0.48104909371309895;
	setAttr -s 3 ".wl[144].w[54:56]"  0.029897151428305423 0.91513678274197974 
		0.054966065829714847;
	setAttr -s 3 ".wl[145].w[54:56]"  0.27876718983676241 0.70759186713980382 
		0.013640943023433869;
	setAttr -s 3 ".wl[146].w[54:56]"  0.45856598072218524 0.53787042499654603 
		0.0035635942812688487;
	setAttr -s 3 ".wl[147].w[54:56]"  0.28596090376907013 0.69831884469334116 
		0.015720251537588745;
	setAttr -s 3 ".wl[148].w[54:56]"  0.084052912987721953 0.84034567113822889 
		0.075601415874049144;
	setAttr -s 3 ".wl[149].w[55:57]"  0.096352679957842566 0.84599866478200458 
		0.057648655260152941;
	setAttr -s 3 ".wl[150].w[55:57]"  0.0026064947866272711 0.51284359076641828 
		0.48454991444695433;
	setAttr -s 3 ".wl[151].w[55:57]"  0.00050759231701740003 0.50561379418687002 
		0.49387861349611262;
	setAttr -s 3 ".wl[152].w[55:57]"  0.058588616348659334 0.88501535442658685 
		0.056396029224753882;
	setAttr -s 3 ".wl[153].w[55:57]"  0.00079686629452334291 0.5045960325949691 
		0.49460710111050765;
	setAttr -s 3 ".wl[154].w[54:56]"  0.036125814828509226 0.89520878829574191 
		0.068665396875748949;
	setAttr -s 3 ".wl[155].w[54:56]"  0.26449840071327368 0.71625678796652581 
		0.019244811320200492;
	setAttr -s 3 ".wl[156].w[54:56]"  0.4367480038522043 0.55724348094921083 
		0.0060085151985848793;
	setAttr -s 3 ".wl[157].w[54:56]"  0.27271001062061884 0.70417475920720474 
		0.023115230172176496;
	setAttr -s 3 ".wl[158].w[54:56]"  0.068181074423702623 0.83203748859340543 
		0.099781436982892033;
	setAttr -s 3 ".wl[159].w[55:57]"  0.076347955975190215 0.85594705832062756 
		0.06770498570418243;
	setAttr -s 3 ".wl[160].w[55:57]"  0.0046980560913618919 0.5267719435245759 
		0.46853000038406234;
	setAttr -s 3 ".wl[161].w[55:57]"  0.0026089254012573821 0.51950507280153913 
		0.47788600179720359;
	setAttr -s 3 ".wl[162].w[55:57]"  0.076358105602646081 0.86555344584372362 
		0.058088448553630372;
	setAttr -s 3 ".wl[163].w[55:57]"  0.00074224742064155796 0.50410813478077554 
		0.49514961779858285;
	setAttr -s 3 ".wl[164].w[54:56]"  0.039741813532310107 0.87832030458187582 
		0.081937881885814121;
	setAttr -s 3 ".wl[165].w[54:56]"  0.27698560020513979 0.69618256369307463 
		0.026831836101785675;
	setAttr -s 3 ".wl[166].w[54:56]"  0.42845417974835243 0.5635969011133336 
		0.0079489191383140066;
	setAttr -s 3 ".wl[167].w[54:56]"  0.2835310093505285 0.68659319105956063 
		0.029875799589910962;
	setAttr -s 3 ".wl[168].w[54:56]"  0.062511610140893653 0.83318068889848351 
		0.10430770096062288;
	setAttr -s 3 ".wl[169].w[55:57]"  0.072023238017196484 0.86786860848945635 
		0.06010815349334727;
	setAttr -s 3 ".wl[170].w[55:57]"  0.0061413606526900498 0.54512920461531988 
		0.44872943473199017;
	setAttr -s 3 ".wl[171].w[55:57]"  0.0022887621010415403 0.52012235771140869 
		0.47758888018754991;
	setAttr -s 3 ".wl[172].w[55:57]"  0.067141982197341049 0.87831758876231281 
		0.054540429040346297;
	setAttr -s 3 ".wl[173].w[55:57]"  0.00082885309594852099 0.50415997249644307 
		0.49501117440760828;
	setAttr -s 3 ".wl[174].w[54:56]"  0.11082646489863265 0.73459070343952027 
		0.15458283166184711;
	setAttr -s 3 ".wl[175].w[55:57]"  0.023525159988796673 0.94422756612775138 
		0.032247273883452041;
	setAttr -s 3 ".wl[176].w[54:56]"  0.53195907259340347 0.45728692499367135 
		0.010754002412925163;
	setAttr -s 3 ".wl[177].w[54:56]"  0.48960379510958996 0.47362339189517533 
		0.036772812995234799;
	setAttr -s 3 ".wl[178].w[54:56]"  0.40462470379338783 0.52293324779047801 
		0.072442048416134275;
	setAttr -s 3 ".wl[179].w[54:56]"  0.33983557599936048 0.53145765189710836 
		0.12870677210353104;
	setAttr -s 3 ".wl[180].w[54:56]"  0.35048363241053482 0.59776447481942774 
		0.05175189277003743;
	setAttr -s 3 ".wl[181].w[54:56]"  0.45315697143245526 0.53330829265321655 
		0.013534735914328199;
	setAttr -s 3 ".wl[182].w[54:56]"  0.50713609733312992 0.49246174790499608 
		0.00040215476187412883;
	setAttr -s 3 ".wl[183].w[54:56]"  0.51425936334426425 0.48423101609974872 
		0.0015096205559870771;
	setAttr -s 3 ".wl[184].w";
	setAttr ".wl[184].w[4]" 0.96580999772534581;
	setAttr ".wl[184].w[10]" 0.02279734115513251;
	setAttr ".wl[184].w[29]" 0.011392661119521585;
	setAttr -s 3 ".wl[185].w[2:4]"  0.50379990077487458 0.48974340457314608 
		0.0064566946519793002;
	setAttr -s 3 ".wl[186].w[1:3]"  0.28809722370506291 0.64253737158493163 
		0.069365404710005574;
	setAttr -s 3 ".wl[187].w";
	setAttr ".wl[187].w[3]" 0.44621592235510715;
	setAttr ".wl[187].w[10]" 0.26778827519219606;
	setAttr ".wl[187].w[29]" 0.28599580245269679;
	setAttr -s 3 ".wl[188].w";
	setAttr ".wl[188].w[4]" 0.81918860938799531;
	setAttr ".wl[188].w[10]" 0.091064577869863036;
	setAttr ".wl[188].w[29]" 0.089746812742141829;
	setAttr -s 3 ".wl[189].w";
	setAttr ".wl[189].w[4]" 0.96061596552515049;
	setAttr ".wl[189].w[10]" 0.012948286445645156;
	setAttr ".wl[189].w[29]" 0.026435748029204304;
	setAttr -s 3 ".wl[190].w";
	setAttr ".wl[190].w[4]" 0.58889854392421115;
	setAttr ".wl[190].w[10]" 0.0074883308314831571;
	setAttr ".wl[190].w[29]" 0.4036131252443057;
	setAttr -s 3 ".wl[191].w";
	setAttr ".wl[191].w[4]" 0.72700683314498249;
	setAttr ".wl[191].w[10]" 0.035248364283308131;
	setAttr ".wl[191].w[29]" 0.23774480257170949;
	setAttr -s 3 ".wl[192].w";
	setAttr ".wl[192].w[31]" 0.053818847878586581;
	setAttr ".wl[192].w[32]" 0.94599272238233079;
	setAttr ".wl[192].w[45]" 0.00018842973908256809;
	setAttr -s 3 ".wl[193].w";
	setAttr ".wl[193].w[31]" 0.064304765353105919;
	setAttr ".wl[193].w[32]" 0.93225738688479187;
	setAttr ".wl[193].w[45]" 0.0034378477621022185;
	setAttr -s 3 ".wl[194].w";
	setAttr ".wl[194].w[31]" 0.24141700535497596;
	setAttr ".wl[194].w[32]" 0.71968464239684427;
	setAttr ".wl[194].w[45]" 0.038898352248179842;
	setAttr -s 3 ".wl[195].w";
	setAttr ".wl[195].w[31]" 0.093217386259937446;
	setAttr ".wl[195].w[32]" 0.90412477392256518;
	setAttr ".wl[195].w[45]" 0.0026578398174972695;
	setAttr -s 3 ".wl[196].w";
	setAttr ".wl[196].w[31]" 0.044795298465292087;
	setAttr ".wl[196].w[32]" 0.95482000484773433;
	setAttr ".wl[196].w[45]" 0.00038469668697363864;
	setAttr -s 3 ".wl[197].w";
	setAttr ".wl[197].w[31]" 0.054974770192088115;
	setAttr ".wl[197].w[32]" 0.94482020317095006;
	setAttr ".wl[197].w[45]" 0.00020502663696195752;
	setAttr -s 3 ".wl[198].w";
	setAttr ".wl[198].w[31]" 0.067312133269273086;
	setAttr ".wl[198].w[32]" 0.93264999498269474;
	setAttr ".wl[198].w[42]" 3.7871748032255113e-005;
	setAttr -s 3 ".wl[199].w";
	setAttr ".wl[199].w[31]" 0.057520785119831497;
	setAttr ".wl[199].w[32]" 0.94246058451443526;
	setAttr ".wl[199].w[45]" 1.8630365733266781e-005;
	setAttr -s 3 ".wl[200].w";
	setAttr ".wl[200].w[31]" 0.92919949095588361;
	setAttr ".wl[200].w[32]" 0.070524979912120436;
	setAttr ".wl[200].w[45]" 0.00027552913199589278;
	setAttr -s 3 ".wl[201].w";
	setAttr ".wl[201].w[31]" 0.69377680686728194;
	setAttr ".wl[201].w[32]" 0.30180020256571727;
	setAttr ".wl[201].w[45]" 0.0044229905670008784;
	setAttr -s 3 ".wl[202].w";
	setAttr ".wl[202].w[31]" 0.87254567197009869;
	setAttr ".wl[202].w[32]" 0.12396603424731495;
	setAttr ".wl[202].w[45]" 0.0034882937825863845;
	setAttr -s 3 ".wl[203].w";
	setAttr ".wl[203].w[31]" 0.90709172573591179;
	setAttr ".wl[203].w[32]" 0.092407864779702975;
	setAttr ".wl[203].w[45]" 0.00050040948438522914;
	setAttr -s 3 ".wl[204].w";
	setAttr ".wl[204].w[31]" 0.91407122161495502;
	setAttr ".wl[204].w[32]" 0.085847260439457021;
	setAttr ".wl[204].w[45]" 8.1517945588120214e-005;
	setAttr -s 3 ".wl[205].w[30:32]"  9.481449833195211e-005 0.73071934232243696 
		0.26918584317923111;
	setAttr -s 3 ".wl[206].w";
	setAttr ".wl[206].w[31]" 0.89824652718031794;
	setAttr ".wl[206].w[32]" 0.10173705828147389;
	setAttr ".wl[206].w[45]" 1.6414538208187655e-005;
	setAttr -s 3 ".wl[207].w";
	setAttr ".wl[207].w[31]" 0.92275416564863311;
	setAttr ".wl[207].w[32]" 0.077220233424625168;
	setAttr ".wl[207].w[45]" 2.5600926741912623e-005;
	setAttr -s 3 ".wl[208].w[30:32]"  0.00012119021084099028 0.99156333090158388 
		0.0083154788875751361;
	setAttr -s 3 ".wl[209].w";
	setAttr ".wl[209].w[31]" 0.93172513190459905;
	setAttr ".wl[209].w[32]" 0.067181427635865404;
	setAttr ".wl[209].w[45]" 0.0010934404595354195;
	setAttr -s 3 ".wl[210].w[30:32]"  0.0012964223037190718 0.97770052824078368 
		0.021003049455497094;
	setAttr -s 3 ".wl[211].w[30:32]"  0.0026335555293271621 0.96920011685977558 
		0.028166327610897192;
	setAttr -s 3 ".wl[212].w[30:32]"  0.0008944692425529268 0.98901471713787836 
		0.010090813619568637;
	setAttr -s 3 ".wl[213].w[30:32]"  0.00041420859413223143 0.98327011605909886 
		0.016315675346768966;
	setAttr -s 3 ".wl[214].w[30:32]"  0.00010665935298633691 0.98833419703162972 
		0.011559143615384012;
	setAttr -s 3 ".wl[215].w[30:32]"  0.00012768397559695846 0.97696732820086518 
		0.022904987823537871;
	setAttr -s 3 ".wl[216].w[30:32]"  0.0022720599963168735 0.99323450516666545 
		0.004493434837017733;
	setAttr -s 3 ".wl[217].w[30:32]"  0.003127393341234247 0.99185512519287644 
		0.0050174814658894692;
	setAttr -s 3 ".wl[218].w[30:32]"  0.011878799293898292 0.98118564712129563 
		0.0069355535848059794;
	setAttr -s 3 ".wl[219].w[30:32]"  0.0091900058996583246 0.98767736271336459 
		0.0031326313869770145;
	setAttr -s 3 ".wl[220].w[30:32]"  0.0088233483344313923 0.98969403562412461 
		0.001482616041443847;
	setAttr -s 3 ".wl[221].w[30:32]"  0.0057476297056459156 0.99312394228610446 
		0.0011284280082497296;
	setAttr -s 3 ".wl[222].w[30:32]"  0.0012576937808335068 0.99792852404757659 
		0.00081378217158993972;
	setAttr -s 3 ".wl[223].w[30:32]"  0.00033118668071834906 0.99888009087254648 
		0.00078872244673535655;
	setAttr -s 3 ".wl[224].w[30:32]"  0.0057626905245519644 0.99399996161683357 
		0.00023734785861461759;
	setAttr -s 3 ".wl[225].w[30:32]"  0.026888131106860991 0.97259672725305735 
		0.00051514164008183106;
	setAttr -s 3 ".wl[226].w[30:32]"  0.03815468523899733 0.96104350403297645 
		0.00080181072802621366;
	setAttr -s 3 ".wl[227].w[30:32]"  0.078162904271792219 0.92130536545599651 
		0.00053173027221147808;
	setAttr -s 3 ".wl[228].w[30:32]"  0.074281745861849408 0.92548198054322095 
		0.00023627359492960084;
	setAttr -s 3 ".wl[229].w[30:32]"  0.081132324120298055 0.91855570129343234 
		0.00031197458626971286;
	setAttr -s 3 ".wl[230].w[30:32]"  0.014488755891868769 0.98543756694100926 
		7.3677167121921709e-005;
	setAttr -s 3 ".wl[231].w[30:32]"  0.0071201535718906292 0.9928489129865995 
		3.0933441509806915e-005;
	setAttr -s 3 ".wl[232].w[30:32]"  0.050608034606183606 0.94934492394412129 
		4.7041449695031645e-005;
	setAttr -s 3 ".wl[233].w[30:32]"  0.19042957302351377 0.80931589309716934 
		0.00025453387931691592;
	setAttr -s 3 ".wl[234].w[30:32]"  0.16574449662205812 0.83403532986804052 
		0.00022017350990141302;
	setAttr -s 3 ".wl[235].w[30:32]"  0.34697514906623866 0.65274931820742843 
		0.0002755327263328587;
	setAttr -s 3 ".wl[236].w[30:32]"  0.43392767099638113 0.56593414655845331 
		0.00013818244516569216;
	setAttr -s 3 ".wl[237].w[30:32]"  0.17714318405444654 0.82279067978288378 
		6.6136162669788235e-005;
	setAttr -s 3 ".wl[238].w[30:32]"  0.092630093283394971 0.90735417948346575 
		1.5727233139149903e-005;
	setAttr -s 3 ".wl[239].w[30:32]"  0.20498962316100522 0.79498427228477397 
		2.6104554221056288e-005;
	setAttr -s 3 ".wl[240].w[30:32]"  0.14697926475305034 0.85299428654920673 
		2.6448697743081369e-005;
	setAttr -s 3 ".wl[241].w[30:32]"  0.32758003184897705 0.67225411111534084 
		0.00016585703568221648;
	setAttr -s 3 ".wl[242].w[30:32]"  0.37052417653121394 0.62930545437985741 
		0.00017036908892867654;
	setAttr -s 3 ".wl[243].w[30:32]"  0.50856055888106566 0.49125668792635235 
		0.00018275319258198935;
	setAttr -s 3 ".wl[244].w[30:32]"  0.69357576266281673 0.30635166766036181 
		7.2569676821482705e-005;
	setAttr -s 3 ".wl[245].w";
	setAttr ".wl[245].w[1]" 5.2873753571604511e-005;
	setAttr ".wl[245].w[30]" 0.41900282866388439;
	setAttr ".wl[245].w[31]" 0.58094429758254407;
	setAttr -s 3 ".wl[246].w[30:32]"  0.3575369479215868 0.64244429779243151 
		1.8754285981764169e-005;
	setAttr -s 3 ".wl[247].w[30:32]"  0.36941087557511465 0.6305687607508651 
		2.0363674020319011e-005;
	setAttr -s 3 ".wl[248].w[29:31]"  8.4110193076909962e-005 0.9976633450123007 
		0.0022525447946224976;
	setAttr -s 3 ".wl[249].w[29:31]"  0.00079433076597386115 0.9626430228916808 
		0.036562646342345448;
	setAttr -s 3 ".wl[250].w[29:31]"  0.0016190073287559472 0.9864096345141482 
		0.011971358157095994;
	setAttr -s 3 ".wl[251].w";
	setAttr ".wl[251].w[1]" 0.0032011144127443159;
	setAttr ".wl[251].w[30]" 0.98327587754999668;
	setAttr ".wl[251].w[31]" 0.013523008037259143;
	setAttr -s 3 ".wl[252].w";
	setAttr ".wl[252].w[1]" 0.0032245135900401032;
	setAttr ".wl[252].w[30]" 0.9891474500469134;
	setAttr ".wl[252].w[31]" 0.0076280363630466287;
	setAttr -s 3 ".wl[253].w";
	setAttr ".wl[253].w[1]" 0.0031054068633784297;
	setAttr ".wl[253].w[30]" 0.98509321857152687;
	setAttr ".wl[253].w[31]" 0.011801374565094719;
	setAttr -s 3 ".wl[254].w";
	setAttr ".wl[254].w[1]" 0.00058013837892846197;
	setAttr ".wl[254].w[30]" 0.99555513026236431;
	setAttr ".wl[254].w[31]" 0.0038647313587072633;
	setAttr -s 3 ".wl[255].w[29:31]"  5.7887582673884365e-005 0.99936809457726361 
		0.00057401784006258798;
	setAttr -s 3 ".wl[256].w";
	setAttr ".wl[256].w[2]" 0.00013634771793983783;
	setAttr ".wl[256].w[29]" 0.0019982437308616141;
	setAttr ".wl[256].w[30]" 0.99786540855119865;
	setAttr -s 3 ".wl[257].w";
	setAttr ".wl[257].w[2]" 0.0011016138826052272;
	setAttr ".wl[257].w[29]" 0.0077409919540547909;
	setAttr ".wl[257].w[30]" 0.99115739416334014;
	setAttr -s 3 ".wl[258].w";
	setAttr ".wl[258].w[2]" 0.061080280644936848;
	setAttr ".wl[258].w[29]" 0.25705176443354716;
	setAttr ".wl[258].w[30]" 0.68186795492151597;
	setAttr -s 3 ".wl[259].w";
	setAttr ".wl[259].w[1]" 0.054352931587813881;
	setAttr ".wl[259].w[2]" 0.030453034497590948;
	setAttr ".wl[259].w[30]" 0.9151940339145952;
	setAttr -s 3 ".wl[260].w";
	setAttr ".wl[260].w[1]" 0.044046178670595355;
	setAttr ".wl[260].w[2]" 0.032168204615597371;
	setAttr ".wl[260].w[30]" 0.92378561671380732;
	setAttr -s 3 ".wl[261].w";
	setAttr ".wl[261].w[2]" 0.015898019409385702;
	setAttr ".wl[261].w[29]" 0.015761520973403494;
	setAttr ".wl[261].w[30]" 0.96834045961721094;
	setAttr -s 3 ".wl[262].w";
	setAttr ".wl[262].w[2]" 0.0034109929810177391;
	setAttr ".wl[262].w[29]" 0.029219171698757443;
	setAttr ".wl[262].w[30]" 0.96736983532022491;
	setAttr -s 3 ".wl[263].w";
	setAttr ".wl[263].w[2]" 0.41279890841187672;
	setAttr ".wl[263].w[29]" 0.35637958204388781;
	setAttr ".wl[263].w[30]" 0.23082150954423539;
	setAttr -s 3 ".wl[264].w[1:3]"  0.14846478260490892 0.67119657634775631 
		0.18033864104733469;
	setAttr -s 3 ".wl[265].w";
	setAttr ".wl[265].w[1]" 0.33857979484283662;
	setAttr ".wl[265].w[2]" 0.52840191758292621;
	setAttr ".wl[265].w[30]" 0.13301828757423714;
	setAttr -s 3 ".wl[266].w";
	setAttr ".wl[266].w[1]" 0.032843658044619577;
	setAttr ".wl[266].w[29]" 0.019944723343508507;
	setAttr ".wl[266].w[30]" 0.94721161861187175;
	setAttr -s 3 ".wl[267].w";
	setAttr ".wl[267].w[2]" 0.12929210595249896;
	setAttr ".wl[267].w[29]" 0.75452838523040378;
	setAttr ".wl[267].w[30]" 0.11617950881709725;
	setAttr -s 3 ".wl[268].w[0:2]"  0.053500910355552551 0.69935193982816468 
		0.24714714981628286;
	setAttr -s 3 ".wl[269].w";
	setAttr ".wl[269].w[1]" 0.67265444441380051;
	setAttr ".wl[269].w[2]" 0.26993649737149827;
	setAttr ".wl[269].w[30]" 0.05740905821470127;
	setAttr -s 3 ".wl[270].w";
	setAttr ".wl[270].w[1]" 0.30464158189349111;
	setAttr ".wl[270].w[2]" 0.11960241901624177;
	setAttr ".wl[270].w[30]" 0.57575599909026709;
	setAttr -s 3 ".wl[271].w";
	setAttr ".wl[271].w[1]" 0.22647600365659762;
	setAttr ".wl[271].w[2]" 0.19374836663671327;
	setAttr ".wl[271].w[30]" 0.57977562970668917;
	setAttr -s 3 ".wl[272].w";
	setAttr ".wl[272].w[1]" 0.51347055792797602;
	setAttr ".wl[272].w[2]" 0.41745542046516149;
	setAttr ".wl[272].w[30]" 0.069074021606862587;
	setAttr -s 3 ".wl[273].w";
	setAttr ".wl[273].w[1]" 0.46520492530373275;
	setAttr ".wl[273].w[2]" 0.4807688462524613;
	setAttr ".wl[273].w[10]" 0.054026228443806057;
	setAttr -s 3 ".wl[274].w";
	setAttr ".wl[274].w[1]" 0.64497432304992119;
	setAttr ".wl[274].w[2]" 0.13076048205353069;
	setAttr ".wl[274].w[30]" 0.22426519489654811;
	setAttr -s 3 ".wl[275].w";
	setAttr ".wl[275].w[1]" 0.62631849822514263;
	setAttr ".wl[275].w[2]" 0.12356237258729343;
	setAttr ".wl[275].w[30]" 0.25011912918756402;
	setAttr -s 3 ".wl[276].w";
	setAttr ".wl[276].w[1]" 0.66724105810195489;
	setAttr ".wl[276].w[2]" 0.17663707666473993;
	setAttr ".wl[276].w[30]" 0.15612186523330515;
	setAttr -s 3 ".wl[277].w[1:3]"  0.07066253119216262 0.87449377988129562 
		0.054843688926541824;
	setAttr -s 3 ".wl[278].w[0:2]"  0.025066844039267157 0.92452999981074091 
		0.050403156149992009;
	setAttr -s 3 ".wl[279].w";
	setAttr ".wl[279].w[2]" 0.48853150090847597;
	setAttr ".wl[279].w[3]" 0.45819036650254746;
	setAttr ".wl[279].w[29]" 0.05327813258897663;
	setAttr -s 3 ".wl[280].w[1:3]"  0.11659725910135364 0.79251962719400493 
		0.090883113704641416;
	setAttr -s 3 ".wl[281].w[0:2]"  0.052715381627643991 0.87600598792355522 
		0.071278630448800881;
	setAttr -s 3 ".wl[282].w[0:2]"  0.15856599698542537 0.83241076520000257 
		0.0090232378145719602;
	setAttr -s 3 ".wl[283].w";
	setAttr ".wl[283].w[0]" 0.19135640401592041;
	setAttr ".wl[283].w[1]" 0.78791252958389191;
	setAttr ".wl[283].w[53]" 0.020731066400187629;
	setAttr -s 3 ".wl[284].w";
	setAttr ".wl[284].w[0]" 0.20475852577941581;
	setAttr ".wl[284].w[1]" 0.66002628841030442;
	setAttr ".wl[284].w[53]" 0.13521518581027975;
	setAttr -s 3 ".wl[285].w";
	setAttr ".wl[285].w[0]" 0.2336623619034883;
	setAttr ".wl[285].w[1]" 0.58058029052384896;
	setAttr ".wl[285].w[53]" 0.18575734757266274;
	setAttr -s 3 ".wl[286].w";
	setAttr ".wl[286].w[0]" 0.1465915118534242;
	setAttr ".wl[286].w[1]" 0.74281319323305706;
	setAttr ".wl[286].w[53]" 0.11059529491351879;
	setAttr -s 3 ".wl[287].w[0:2]"  0.14352964851593489 0.71795378233147955 
		0.13851656915258556;
	setAttr -s 3 ".wl[288].w[0:2]"  0.11085952204748474 0.78588662448730473 
		0.1032538534652106;
	setAttr -s 3 ".wl[289].w";
	setAttr ".wl[289].w[0]" 0.044132111998749564;
	setAttr ".wl[289].w[48]" 0.021345908027878856;
	setAttr ".wl[289].w[53]" 0.9345219799733715;
	setAttr -s 3 ".wl[290].w";
	setAttr ".wl[290].w[0]" 0.041032933905747415;
	setAttr ".wl[290].w[48]" 0.011153650198605076;
	setAttr ".wl[290].w[53]" 0.9478134158956476;
	setAttr -s 3 ".wl[291].w";
	setAttr ".wl[291].w[0]" 0.012756655399600969;
	setAttr ".wl[291].w[53]" 0.9847386952342535;
	setAttr ".wl[291].w[54]" 0.0025046493661455725;
	setAttr -s 3 ".wl[292].w";
	setAttr ".wl[292].w[0]" 0.0051735802241343574;
	setAttr ".wl[292].w[53]" 0.99380965150776657;
	setAttr ".wl[292].w[54]" 0.0010167682680991719;
	setAttr -s 3 ".wl[293].w";
	setAttr ".wl[293].w[0]" 0.0021110016592167523;
	setAttr ".wl[293].w[53]" 0.997663200850609;
	setAttr ".wl[293].w[54]" 0.00022579749017428768;
	setAttr -s 3 ".wl[294].w";
	setAttr ".wl[294].w[0]" 0.0024993252388227382;
	setAttr ".wl[294].w[48]" 0.00094309390818742944;
	setAttr ".wl[294].w[53]" 0.99655758085298984;
	setAttr -s 3 ".wl[295].w";
	setAttr ".wl[295].w[0]" 0.0064668263164797948;
	setAttr ".wl[295].w[48]" 0.0058923778726560584;
	setAttr ".wl[295].w[53]" 0.98764079581086417;
	setAttr -s 3 ".wl[296].w";
	setAttr ".wl[296].w[0]" 0.038530581483621582;
	setAttr ".wl[296].w[48]" 0.043083630766863543;
	setAttr ".wl[296].w[53]" 0.91838578774951496;
	setAttr -s 3 ".wl[297].w";
	setAttr ".wl[297].w[0]" 0.0049722749973677739;
	setAttr ".wl[297].w[53]" 0.98603836952590085;
	setAttr ".wl[297].w[54]" 0.0089893554767312474;
	setAttr -s 3 ".wl[298].w";
	setAttr ".wl[298].w[0]" 0.0073004811976173905;
	setAttr ".wl[298].w[53]" 0.98361703844282755;
	setAttr ".wl[298].w[54]" 0.0090824803595551448;
	setAttr -s 3 ".wl[299].w";
	setAttr ".wl[299].w[0]" 0.0061170045268255082;
	setAttr ".wl[299].w[53]" 0.97901961896518774;
	setAttr ".wl[299].w[54]" 0.014863376507986699;
	setAttr -s 3 ".wl[300].w";
	setAttr ".wl[300].w[0]" 0.0014773790263248141;
	setAttr ".wl[300].w[53]" 0.99085882622947308;
	setAttr ".wl[300].w[54]" 0.0076637947442021095;
	setAttr -s 3 ".wl[301].w";
	setAttr ".wl[301].w[0]" 0.00037014034237532999;
	setAttr ".wl[301].w[53]" 0.99791718928614193;
	setAttr ".wl[301].w[54]" 0.0017126703714827984;
	setAttr -s 3 ".wl[302].w";
	setAttr ".wl[302].w[48]" 0.0013593889032264995;
	setAttr ".wl[302].w[53]" 0.99692714040389629;
	setAttr ".wl[302].w[54]" 0.0017134706928773271;
	setAttr -s 3 ".wl[303].w";
	setAttr ".wl[303].w[0]" 0.012242151096051999;
	setAttr ".wl[303].w[48]" 0.012955728989751676;
	setAttr ".wl[303].w[53]" 0.9748021199141963;
	setAttr -s 3 ".wl[304].w";
	setAttr ".wl[304].w[0]" 0.0020001469261747341;
	setAttr ".wl[304].w[53]" 0.89258644166947387;
	setAttr ".wl[304].w[54]" 0.10541341140435148;
	setAttr -s 3 ".wl[305].w";
	setAttr ".wl[305].w[0]" 0.0014658799556473666;
	setAttr ".wl[305].w[53]" 0.95768659588381533;
	setAttr ".wl[305].w[54]" 0.040847524160537406;
	setAttr -s 3 ".wl[306].w";
	setAttr ".wl[306].w[0]" 0.0010765961591141199;
	setAttr ".wl[306].w[53]" 0.95497259941576373;
	setAttr ".wl[306].w[54]" 0.043950804425122128;
	setAttr -s 3 ".wl[307].w";
	setAttr ".wl[307].w[0]" 0.00067074286520590453;
	setAttr ".wl[307].w[53]" 0.94090824014739272;
	setAttr ".wl[307].w[54]" 0.058421016987401292;
	setAttr -s 3 ".wl[308].w";
	setAttr ".wl[308].w[0]" 0.00010449161918202123;
	setAttr ".wl[308].w[53]" 0.99068024834955137;
	setAttr ".wl[308].w[54]" 0.0092152600312665565;
	setAttr -s 3 ".wl[309].w";
	setAttr ".wl[309].w[0]" 0.00011094704568297435;
	setAttr ".wl[309].w[53]" 0.99680905719196988;
	setAttr ".wl[309].w[54]" 0.0030799957623471926;
	setAttr -s 3 ".wl[310].w";
	setAttr ".wl[310].w[48]" 0.00094354602112298853;
	setAttr ".wl[310].w[53]" 0.97474677127856724;
	setAttr ".wl[310].w[54]" 0.024309682700309768;
	setAttr -s 3 ".wl[311].w";
	setAttr ".wl[311].w[0]" 0.00082770749416710178;
	setAttr ".wl[311].w[53]" 0.97072797080278739;
	setAttr ".wl[311].w[54]" 0.028444321703045516;
	setAttr -s 3 ".wl[312].w";
	setAttr ".wl[312].w[0]" 0.00072546290173051194;
	setAttr ".wl[312].w[53]" 0.66359848703402746;
	setAttr ".wl[312].w[54]" 0.335676050064242;
	setAttr -s 3 ".wl[313].w";
	setAttr ".wl[313].w[0]" 0.00037306326844414943;
	setAttr ".wl[313].w[53]" 0.8498265191152522;
	setAttr ".wl[313].w[54]" 0.14980041761630372;
	setAttr -s 3 ".wl[314].w";
	setAttr ".wl[314].w[0]" 0.00041041697611162906;
	setAttr ".wl[314].w[53]" 0.72811979168101904;
	setAttr ".wl[314].w[54]" 0.2714697913428693;
	setAttr -s 3 ".wl[315].w";
	setAttr ".wl[315].w[0]" 6.6592777504564788e-005;
	setAttr ".wl[315].w[53]" 0.85768697611925404;
	setAttr ".wl[315].w[54]" 0.14224643110324142;
	setAttr -s 3 ".wl[316].w";
	setAttr ".wl[316].w[0]" 1.4373150934501752e-005;
	setAttr ".wl[316].w[53]" 0.96609702415252452;
	setAttr ".wl[316].w[54]" 0.033888602696541072;
	setAttr -s 3 ".wl[317].w";
	setAttr ".wl[317].w[0]" 1.6724907004625805e-005;
	setAttr ".wl[317].w[53]" 0.97471992063508328;
	setAttr ".wl[317].w[54]" 0.025263354457912099;
	setAttr -s 3 ".wl[318].w";
	setAttr ".wl[318].w[0]" 5.0897336611824525e-005;
	setAttr ".wl[318].w[53]" 0.9339646218909381;
	setAttr ".wl[318].w[54]" 0.065984480772450102;
	setAttr -s 3 ".wl[319].w";
	setAttr ".wl[319].w[0]" 0.00033013501898406661;
	setAttr ".wl[319].w[53]" 0.59340389329920373;
	setAttr ".wl[319].w[54]" 0.40626597168181233;
	setAttr -s 3 ".wl[320].w";
	setAttr ".wl[320].w[0]" 0.00029087886877466614;
	setAttr ".wl[320].w[53]" 0.34245929724229507;
	setAttr ".wl[320].w[54]" 0.65724982388893027;
	setAttr -s 3 ".wl[321].w";
	setAttr ".wl[321].w[0]" 0.0002168762027927519;
	setAttr ".wl[321].w[53]" 0.34920723765753969;
	setAttr ".wl[321].w[54]" 0.65057588613966766;
	setAttr -s 3 ".wl[322].w";
	setAttr ".wl[322].w[0]" 9.3456948971221328e-005;
	setAttr ".wl[322].w[53]" 0.20486369018587011;
	setAttr ".wl[322].w[54]" 0.79504285286515886;
	setAttr -s 3 ".wl[323].w";
	setAttr ".wl[323].w[0]" 2.1605436371985168e-005;
	setAttr ".wl[323].w[53]" 0.13387461445583565;
	setAttr ".wl[323].w[54]" 0.86610378010779232;
	setAttr -s 3 ".wl[324].w";
	setAttr ".wl[324].w[0]" 2.0136770384525178e-006;
	setAttr ".wl[324].w[53]" 0.031776821422912237;
	setAttr ".wl[324].w[54]" 0.96822116490004928;
	setAttr -s 3 ".wl[325].w";
	setAttr ".wl[325].w[0]" 1.3475492130491636e-006;
	setAttr ".wl[325].w[53]" 0.016978220798855498;
	setAttr ".wl[325].w[54]" 0.98302043165193154;
	setAttr -s 3 ".wl[326].w";
	setAttr ".wl[326].w[0]" 3.7965019588824046e-005;
	setAttr ".wl[326].w[53]" 0.089195585548708614;
	setAttr ".wl[326].w[54]" 0.9107664494317026;
	setAttr -s 3 ".wl[327].w";
	setAttr ".wl[327].w[0]" 0.00017077788431460968;
	setAttr ".wl[327].w[53]" 0.26416555530099484;
	setAttr ".wl[327].w[54]" 0.73566366681469064;
	setAttr -s 3 ".wl[328].w[53:55]"  0.019737751123323842 0.98009033013483415 
		0.00017191874184193507;
	setAttr -s 3 ".wl[329].w[53:55]"  0.0085935412033381967 0.99119003505187053 
		0.00021642374479117566;
	setAttr -s 3 ".wl[330].w[53:55]"  0.0060725837785420662 0.99378329533341914 
		0.00014412088803897614;
	setAttr -s 3 ".wl[331].w[53:55]"  0.003540820885920914 0.99637427458640537 
		8.4904527673652344e-005;
	setAttr -s 3 ".wl[332].w[53:55]"  0.0025178058295648835 0.9973861942496508 
		9.5999920784323368e-005;
	setAttr -s 3 ".wl[333].w[53:55]"  0.0010251070173829054 0.99894879668397785 
		2.6096298639358443e-005;
	setAttr -s 3 ".wl[334].w[53:55]"  0.00045153979752333675 0.99954624509656032 
		2.215105916341993e-006;
	setAttr -s 3 ".wl[335].w[53:55]"  0.010087435678613893 0.98988897196305847 
		2.3592358327598049e-005;
	setAttr -s 3 ".wl[336].w[53:55]"  0.0023132557826401334 0.99718674395788565 
		0.00050000025947420168;
	setAttr -s 3 ".wl[337].w[53:55]"  0.0027923986249805185 0.99547531116641819 
		0.0017322902086013409;
	setAttr -s 3 ".wl[338].w[53:55]"  0.0012454623105069057 0.99790702431271849 
		0.00084751337677455268;
	setAttr -s 3 ".wl[339].w[53:55]"  0.0005541198586092971 0.99903368896597289 
		0.0004121911754178582;
	setAttr -s 3 ".wl[340].w[53:55]"  0.00071488942807866715 0.99899275609047666 
		0.00029235448144467686;
	setAttr -s 3 ".wl[341].w[53:55]"  4.1591828794353367e-005 0.99994935607047264 
		9.0521007330505062e-006;
	setAttr -s 3 ".wl[342].w[53:55]"  0.00036955129100270959 0.9995893886514623 
		4.1060057535110685e-005;
	setAttr -s 3 ".wl[343].w[53:55]"  0.00083973101024451588 0.99907063115059802 
		8.9637839157517815e-005;
	setAttr -s 3 ".wl[344].w[53:55]"  0.0002644804056709893 0.99694570548903227 
		0.0027898141052969208;
	setAttr -s 3 ".wl[345].w[53:55]"  0.00032865160962029203 0.99290178155396336 
		0.0067695668364163497;
	setAttr -s 3 ".wl[346].w[53:55]"  0.00018241002587394164 0.99565464328242892 
		0.0041629466916971057;
	setAttr -s 3 ".wl[347].w[54:56]"  0.99672602319909709 0.0030721116503719019 
		0.00020186515053094542;
	setAttr -s 3 ".wl[348].w[54:56]"  0.99933353831500582 0.00061412467720055319 
		5.2337007793531436e-005;
	setAttr -s 3 ".wl[349].w[54:56]"  0.99989634880890343 9.2333173533061915e-005 
		1.1318017563489519e-005;
	setAttr -s 3 ".wl[350].w[53:55]"  1.3913598404711286e-005 0.99993601959611977 
		5.0066805475517087e-005;
	setAttr -s 3 ".wl[351].w[53:55]"  9.3083711063907519e-005 0.9990589479478561 
		0.00084796834108000695;
	setAttr -s 3 ".wl[352].w";
	setAttr ".wl[352].w[0]" 0.17357499084991118;
	setAttr ".wl[352].w[48]" 0.076309462052931445;
	setAttr ".wl[352].w[53]" 0.75011554709715722;
	setAttr -s 3 ".wl[353].w";
	setAttr ".wl[353].w[0]" 0.078707456035113477;
	setAttr ".wl[353].w[48]" 0.01513075668855391;
	setAttr ".wl[353].w[53]" 0.90616178727633256;
	setAttr -s 3 ".wl[354].w";
	setAttr ".wl[354].w[0]" 0.034957826963453849;
	setAttr ".wl[354].w[48]" 0.0028781376121867347;
	setAttr ".wl[354].w[53]" 0.96216403542435958;
	setAttr -s 3 ".wl[355].w";
	setAttr ".wl[355].w[0]" 0.021325854105307105;
	setAttr ".wl[355].w[48]" 0.00049654139276985676;
	setAttr ".wl[355].w[53]" 0.97817760450192315;
	setAttr -s 3 ".wl[356].w";
	setAttr ".wl[356].w[0]" 0.012303545274889562;
	setAttr ".wl[356].w[48]" 0.00035098328966143527;
	setAttr ".wl[356].w[53]" 0.98734547143544915;
	setAttr -s 3 ".wl[357].w";
	setAttr ".wl[357].w[0]" 0.017981630020129098;
	setAttr ".wl[357].w[48]" 0.0024396247793165653;
	setAttr ".wl[357].w[53]" 0.97957874520055432;
	setAttr -s 3 ".wl[358].w";
	setAttr ".wl[358].w[0]" 0.034732096338878887;
	setAttr ".wl[358].w[48]" 0.020854919991907365;
	setAttr ".wl[358].w[53]" 0.94441298366921378;
	setAttr -s 3 ".wl[359].w";
	setAttr ".wl[359].w[0]" 0.45345323663830917;
	setAttr ".wl[359].w[48]" 0.052404956723778269;
	setAttr ".wl[359].w[53]" 0.49414180663791252;
	setAttr -s 3 ".wl[360].w";
	setAttr ".wl[360].w[0]" 0.7977845061121891;
	setAttr ".wl[360].w[48]" 0.10706318286466612;
	setAttr ".wl[360].w[53]" 0.095152311023144837;
	setAttr -s 3 ".wl[361].w";
	setAttr ".wl[361].w[3]" 0.094684809712819243;
	setAttr ".wl[361].w[4]" 0.17343721574696289;
	setAttr ".wl[361].w[29]" 0.73187797454021786;
	setAttr -s 3 ".wl[362].w";
	setAttr ".wl[362].w[2]" 0.33447900315396412;
	setAttr ".wl[362].w[3]" 0.47702974787857999;
	setAttr ".wl[362].w[29]" 0.18849124896745595;
	setAttr -s 3 ".wl[363].w";
	setAttr ".wl[363].w[2]" 0.17299366449209436;
	setAttr ".wl[363].w[29]" 0.63598105564945218;
	setAttr ".wl[363].w[30]" 0.19102527985845341;
	setAttr -s 3 ".wl[364].w";
	setAttr ".wl[364].w[2]" 0.012604753971979578;
	setAttr ".wl[364].w[29]" 0.48722039553585367;
	setAttr ".wl[364].w[30]" 0.5001748504921667;
	setAttr -s 3 ".wl[365].w";
	setAttr ".wl[365].w[2]" 0.0016450279848284411;
	setAttr ".wl[365].w[29]" 0.085690117952216968;
	setAttr ".wl[365].w[30]" 0.91266485406295461;
	setAttr -s 3 ".wl[366].w";
	setAttr ".wl[366].w[4]" 0.002323442726533852;
	setAttr ".wl[366].w[29]" 0.052064856826473264;
	setAttr ".wl[366].w[30]" 0.94561170044699294;
	setAttr -s 3 ".wl[367].w";
	setAttr ".wl[367].w[4]" 0.01832542127473152;
	setAttr ".wl[367].w[29]" 0.53606149494997168;
	setAttr ".wl[367].w[30]" 0.44561308377529679;
	setAttr -s 3 ".wl[368].w";
	setAttr ".wl[368].w[2]" 0.054480887312634736;
	setAttr ".wl[368].w[4]" 0.054639489568788939;
	setAttr ".wl[368].w[29]" 0.89087962311857638;
	setAttr -s 3 ".wl[369].w";
	setAttr ".wl[369].w[2]" 0.35054089277246897;
	setAttr ".wl[369].w[3]" 0.33132042074456991;
	setAttr ".wl[369].w[29]" 0.31813868648296123;
	setAttr -s 3 ".wl[370].w[2:4]"  0.35284206243811889 0.33882361276772555 
		0.30833432479415551;
	setAttr -s 3 ".wl[371].w";
	setAttr ".wl[371].w[0]" 0.6065167219920512;
	setAttr ".wl[371].w[48]" 0.20313449361646671;
	setAttr ".wl[371].w[53]" 0.19034878439148223;
	setAttr -s 3 ".wl[372].w";
	setAttr ".wl[372].w[0]" 0.39704319667138543;
	setAttr ".wl[372].w[48]" 0.1073745216019035;
	setAttr ".wl[372].w[53]" 0.49558228172671109;
	setAttr -s 3 ".wl[373].w";
	setAttr ".wl[373].w[0]" 0.24470600188672043;
	setAttr ".wl[373].w[48]" 0.021278651823160868;
	setAttr ".wl[373].w[53]" 0.73401534629011866;
	setAttr -s 3 ".wl[374].w";
	setAttr ".wl[374].w[0]" 0.079412190808147431;
	setAttr ".wl[374].w[48]" 0.0035655383445180248;
	setAttr ".wl[374].w[53]" 0.91702227084733456;
	setAttr -s 3 ".wl[375].w";
	setAttr ".wl[375].w[0]" 0.085161457980993754;
	setAttr ".wl[375].w[48]" 0.00094736463966047348;
	setAttr ".wl[375].w[53]" 0.91389117737934578;
	setAttr -s 3 ".wl[376].w";
	setAttr ".wl[376].w[0]" 0.040889648412412674;
	setAttr ".wl[376].w[48]" 0.00056251733593737428;
	setAttr ".wl[376].w[53]" 0.9585478342516498;
	setAttr -s 3 ".wl[377].w";
	setAttr ".wl[377].w[0]" 0.077216727730907805;
	setAttr ".wl[377].w[48]" 0.0044869388477411067;
	setAttr ".wl[377].w[53]" 0.91829633342135109;
	setAttr -s 3 ".wl[378].w";
	setAttr ".wl[378].w[0]" 0.13786538216007163;
	setAttr ".wl[378].w[48]" 0.03900017554926645;
	setAttr ".wl[378].w[53]" 0.82313444229066191;
	setAttr -s 3 ".wl[379].w";
	setAttr ".wl[379].w[0]" 0.84500000048240087;
	setAttr ".wl[379].w[48]" 0.075536135971752266;
	setAttr ".wl[379].w[53]" 0.07946386354584678;
	setAttr -s 3 ".wl[380].w";
	setAttr ".wl[380].w[0]" 0.75595527781833238;
	setAttr ".wl[380].w[1]" 0.025355436623021407;
	setAttr ".wl[380].w[53]" 0.21868928555864622;
	setAttr -s 3 ".wl[381].w";
	setAttr ".wl[381].w[0]" 0.50000131804160719;
	setAttr ".wl[381].w[1]" 0.0031393630993554202;
	setAttr ".wl[381].w[53]" 0.49685931885903745;
	setAttr -s 3 ".wl[382].w";
	setAttr ".wl[382].w[0]" 0.48926977628264856;
	setAttr ".wl[382].w[1]" 0.00086067298989280904;
	setAttr ".wl[382].w[53]" 0.50986955072745865;
	setAttr -s 3 ".wl[383].w";
	setAttr ".wl[383].w[0]" 0.49286085216460812;
	setAttr ".wl[383].w[1]" 0.00072401081642741859;
	setAttr ".wl[383].w[53]" 0.50641513701896468;
	setAttr -s 3 ".wl[384].w";
	setAttr ".wl[384].w[0]" 0.51014116257870878;
	setAttr ".wl[384].w[1]" 0.0029222716500045256;
	setAttr ".wl[384].w[53]" 0.48693656577128691;
	setAttr -s 3 ".wl[385].w";
	setAttr ".wl[385].w[0]" 0.28072951020788162;
	setAttr ".wl[385].w[48]" 0.0094672315539115637;
	setAttr ".wl[385].w[53]" 0.70980325823820678;
	setAttr -s 3 ".wl[386].w";
	setAttr ".wl[386].w[0]" 0.1306440241577862;
	setAttr ".wl[386].w[48]" 0.0010411040957422843;
	setAttr ".wl[386].w[53]" 0.86831487174647159;
	setAttr -s 3 ".wl[387].w";
	setAttr ".wl[387].w[0]" 0.13751105838308902;
	setAttr ".wl[387].w[48]" 0.00053961025798197448;
	setAttr ".wl[387].w[53]" 0.86194933135892904;
	setAttr -s 3 ".wl[388].w";
	setAttr ".wl[388].w[0]" 0.22093405869684243;
	setAttr ".wl[388].w[48]" 0.0026983274031685024;
	setAttr ".wl[388].w[53]" 0.7763676138999891;
	setAttr -s 3 ".wl[389].w";
	setAttr ".wl[389].w[0]" 0.88696715550042615;
	setAttr ".wl[389].w[48]" 0.058715960707198117;
	setAttr ".wl[389].w[53]" 0.054316883792375759;
	setAttr -s 3 ".wl[390].w";
	setAttr ".wl[390].w[0]" 0.8613522207844978;
	setAttr ".wl[390].w[48]" 0.050808528998195601;
	setAttr ".wl[390].w[53]" 0.087839250217306791;
	setAttr -s 3 ".wl[391].w";
	setAttr ".wl[391].w[0]" 0.69252966249561787;
	setAttr ".wl[391].w[48]" 0.021786203937530446;
	setAttr ".wl[391].w[53]" 0.28568413356685163;
	setAttr -s 3 ".wl[392].w";
	setAttr ".wl[392].w[0]" 0.41870486303892068;
	setAttr ".wl[392].w[1]" 0.29402857779860303;
	setAttr ".wl[392].w[53]" 0.2872665591624764;
	setAttr -s 3 ".wl[393].w";
	setAttr ".wl[393].w[0]" 0.36122825930839048;
	setAttr ".wl[393].w[1]" 0.32997456305753109;
	setAttr ".wl[393].w[53]" 0.30879717763407849;
	setAttr -s 3 ".wl[394].w";
	setAttr ".wl[394].w[2]" 0.33335396345117502;
	setAttr ".wl[394].w[29]" 0.25911153351500321;
	setAttr ".wl[394].w[30]" 0.40753450303382188;
	setAttr -s 3 ".wl[395].w[0:2]"  0.1224829666258726 0.70616143702690426 
		0.17135559634722314;
	setAttr -s 3 ".wl[396].w";
	setAttr ".wl[396].w[0]" 0.22399661860566314;
	setAttr ".wl[396].w[1]" 0.70282602978444197;
	setAttr ".wl[396].w[53]" 0.073177351609894886;
	setAttr -s 3 ".wl[397].w";
	setAttr ".wl[397].w[0]" 0.64547575499947896;
	setAttr ".wl[397].w[1]" 0.21274408888101637;
	setAttr ".wl[397].w[53]" 0.1417801561195047;
	setAttr -s 3 ".wl[398].w[0:2]"  0.23531073576565778 0.72575920470274513 
		0.038930059531597082;
	setAttr -s 3 ".wl[399].w";
	setAttr ".wl[399].w[0]" 0.23780699049528647;
	setAttr ".wl[399].w[1]" 0.66489004256276751;
	setAttr ".wl[399].w[53]" 0.097302966941946109;
	setAttr -s 3 ".wl[400].w";
	setAttr ".wl[400].w[0]" 0.25658950236767319;
	setAttr ".wl[400].w[1]" 0.53327682826482581;
	setAttr ".wl[400].w[53]" 0.21013366936750102;
	setAttr -s 3 ".wl[401].w";
	setAttr ".wl[401].w[4]" 0.50652214784623317;
	setAttr ".wl[401].w[10]" 0.007247883429984261;
	setAttr ".wl[401].w[29]" 0.48622996872378266;
	setAttr -s 3 ".wl[402].w";
	setAttr ".wl[402].w[4]" 0.49744117018624606;
	setAttr ".wl[402].w[10]" 0.0039623022413719997;
	setAttr ".wl[402].w[29]" 0.49859652757238204;
	setAttr -s 3 ".wl[403].w";
	setAttr ".wl[403].w[4]" 0.90390642587067227;
	setAttr ".wl[403].w[10]" 0.0093158791531112832;
	setAttr ".wl[403].w[29]" 0.086777694976216582;
	setAttr -s 3 ".wl[404].w";
	setAttr ".wl[404].w[4]" 0.49724262545106207;
	setAttr ".wl[404].w[10]" 0.002393517543804105;
	setAttr ".wl[404].w[29]" 0.50036385700513386;
	setAttr -s 3 ".wl[405].w";
	setAttr ".wl[405].w[4]" 0.6625490282716775;
	setAttr ".wl[405].w[10]" 0.17666791067340412;
	setAttr ".wl[405].w[29]" 0.16078306105491841;
	setAttr -s 3 ".wl[406].w";
	setAttr ".wl[406].w[4]" 0.65080473977392839;
	setAttr ".wl[406].w[10]" 0.10108937210439133;
	setAttr ".wl[406].w[29]" 0.24810588812168027;
	setAttr -s 3 ".wl[407].w";
	setAttr ".wl[407].w[4]" 0.63099352917480367;
	setAttr ".wl[407].w[10]" 0.051866832962565487;
	setAttr ".wl[407].w[29]" 0.317139637862631;
	setAttr -s 3 ".wl[408].w";
	setAttr ".wl[408].w[4]" 0.62521381981992707;
	setAttr ".wl[408].w[10]" 0.035111121900962418;
	setAttr ".wl[408].w[29]" 0.3396750582791106;
	setAttr -s 3 ".wl[409].w";
	setAttr ".wl[409].w[4]" 0.65008021525278314;
	setAttr ".wl[409].w[10]" 0.025229968108885597;
	setAttr ".wl[409].w[29]" 0.32468981663833141;
	setAttr -s 3 ".wl[410].w";
	setAttr ".wl[410].w[4]" 0.79120156036614264;
	setAttr ".wl[410].w[10]" 0.020216627203177101;
	setAttr ".wl[410].w[29]" 0.18858181243068042;
	setAttr -s 3 ".wl[411].w";
	setAttr ".wl[411].w[4]" 0.82533788241777206;
	setAttr ".wl[411].w[10]" 0.11552571664971494;
	setAttr ".wl[411].w[29]" 0.05913640093251285;
	setAttr -s 3 ".wl[412].w";
	setAttr ".wl[412].w[4]" 0.84614207767666239;
	setAttr ".wl[412].w[10]" 0.069054898580166335;
	setAttr ".wl[412].w[29]" 0.084803023743171266;
	setAttr -s 3 ".wl[413].w";
	setAttr ".wl[413].w[4]" 0.83803990961994501;
	setAttr ".wl[413].w[10]" 0.040694561543744248;
	setAttr ".wl[413].w[29]" 0.12126552883631085;
	setAttr -s 3 ".wl[414].w[2:4]"  0.020970991187820573 0.020078330843073047 
		0.95895067796910649;
	setAttr -s 3 ".wl[415].w";
	setAttr ".wl[415].w[2]" 0.021100904162494355;
	setAttr ".wl[415].w[4]" 0.9398969813784287;
	setAttr ".wl[415].w[29]" 0.039002114459076934;
	setAttr -s 3 ".wl[416].w";
	setAttr ".wl[416].w[2]" 0.011201755425100655;
	setAttr ".wl[416].w[4]" 0.87402811073941622;
	setAttr ".wl[416].w[29]" 0.11477013383548321;
	setAttr -s 3 ".wl[417].w";
	setAttr ".wl[417].w[4]" 0.10339809736546381;
	setAttr ".wl[417].w[29]" 0.89149324685634368;
	setAttr ".wl[417].w[30]" 0.005108655778192449;
	setAttr -s 3 ".wl[418].w";
	setAttr ".wl[418].w[4]" 0.18444826691410293;
	setAttr ".wl[418].w[29]" 0.76957385705611203;
	setAttr ".wl[418].w[30]" 0.04597787602978496;
	setAttr -s 3 ".wl[419].w";
	setAttr ".wl[419].w[4]" 0.10473100398099938;
	setAttr ".wl[419].w[29]" 0.86189400570446839;
	setAttr ".wl[419].w[30]" 0.033374990314532171;
	setAttr -s 3 ".wl[420].w";
	setAttr ".wl[420].w[4]" 0.10582046600061108;
	setAttr ".wl[420].w[29]" 0.84386734725683821;
	setAttr ".wl[420].w[30]" 0.050312186742550807;
	setAttr -s 3 ".wl[421].w[2:4]"  0.1664956642814451 0.15939208161127247 
		0.67411225410728237;
	setAttr -s 3 ".wl[422].w";
	setAttr ".wl[422].w[2]" 0.16313292262464341;
	setAttr ".wl[422].w[4]" 0.60632718113056427;
	setAttr ".wl[422].w[29]" 0.23053989624479237;
	setAttr -s 3 ".wl[423].w";
	setAttr ".wl[423].w[2]" 0.068979313298408854;
	setAttr ".wl[423].w[4]" 0.37462448216601196;
	setAttr ".wl[423].w[29]" 0.55639620453557925;
	setAttr -s 3 ".wl[424].w";
	setAttr ".wl[424].w[4]" 0.018204860007524401;
	setAttr ".wl[424].w[29]" 0.94864547914141573;
	setAttr ".wl[424].w[30]" 0.033149660851059984;
	setAttr -s 3 ".wl[425].w";
	setAttr ".wl[425].w[4]" 0.043245552677200989;
	setAttr ".wl[425].w[29]" 0.66951591043775738;
	setAttr ".wl[425].w[30]" 0.28723853688504153;
	setAttr -s 3 ".wl[426].w";
	setAttr ".wl[426].w[4]" 0.015898574297083135;
	setAttr ".wl[426].w[29]" 0.83005471528176489;
	setAttr ".wl[426].w[30]" 0.15404671042115198;
	setAttr -s 3 ".wl[427].w";
	setAttr ".wl[427].w[4]" 0.034163354288715093;
	setAttr ".wl[427].w[29]" 0.65181431628546926;
	setAttr ".wl[427].w[30]" 0.31402232942581554;
	setAttr -s 3 ".wl[428].w";
	setAttr ".wl[428].w[3]" 0.092713704158169874;
	setAttr ".wl[428].w[29]" 0.79474273203200474;
	setAttr ".wl[428].w[30]" 0.11254356380982533;
	setAttr -s 3 ".wl[429].w";
	setAttr ".wl[429].w[3]" 0.52610711449887748;
	setAttr ".wl[429].w[10]" 0.22502779208954821;
	setAttr ".wl[429].w[29]" 0.24886509341157448;
	setAttr -s 3 ".wl[430].w";
	setAttr ".wl[430].w[0]" 3.3965364578627755e-006;
	setAttr ".wl[430].w[53]" 0.78142941865646964;
	setAttr ".wl[430].w[54]" 0.21856718480707243;
	setAttr -s 3 ".wl[431].w";
	setAttr ".wl[431].w[0]" 3.2297220204368458e-006;
	setAttr ".wl[431].w[53]" 0.16331990479780617;
	setAttr ".wl[431].w[54]" 0.83667686548017361;
	setAttr -s 3 ".wl[432].w";
	setAttr ".wl[432].w[0]" 5.5296233588584152e-006;
	setAttr ".wl[432].w[53]" 0.56894033364440455;
	setAttr ".wl[432].w[54]" 0.43105413673223664;
	setAttr -s 3 ".wl[433].w";
	setAttr ".wl[433].w[0]" 4.02191888387949e-006;
	setAttr ".wl[433].w[53]" 0.50002689202782402;
	setAttr ".wl[433].w[54]" 0.49996908605329216;
	setAttr -s 3 ".wl[434].w";
	setAttr ".wl[434].w[0]" 1.3274598255508144e-005;
	setAttr ".wl[434].w[53]" 0.096221585975697549;
	setAttr ".wl[434].w[54]" 0.90376513942604697;
	setAttr -s 3 ".wl[435].w";
	setAttr ".wl[435].w[0]" 5.3846347385150533e-006;
	setAttr ".wl[435].w[53]" 0.23987430281627431;
	setAttr ".wl[435].w[54]" 0.76012031254898726;
	setAttr -s 3 ".wl[436].w";
	setAttr ".wl[436].w[0]" 5.2294464850576317e-005;
	setAttr ".wl[436].w[53]" 0.06614183246063049;
	setAttr ".wl[436].w[54]" 0.93380587307451879;
	setAttr -s 3 ".wl[437].w";
	setAttr ".wl[437].w[0]" 3.1343477656629379e-005;
	setAttr ".wl[437].w[53]" 0.04836360768259812;
	setAttr ".wl[437].w[54]" 0.95160504883974517;
	setAttr -s 3 ".wl[438].w[53:55]"  0.038282029262251348 0.96169459017683501 
		2.3380560913574753e-005;
	setAttr -s 3 ".wl[439].w[53:55]"  0.021005232059395983 0.97897988415615045 
		1.488378445354321e-005;
	setAttr -s 3 ".wl[440].w[53:55]"  0.0045222005202077116 0.99546959804453417 
		8.2014352581362263e-006;
	setAttr -s 3 ".wl[441].w[53:55]"  0.001176812603770717 0.99882209861452342 
		1.0887817058961442e-006;
	setAttr -s 3 ".wl[442].w";
	setAttr ".wl[442].w[0]" 3.7272320639380187e-006;
	setAttr ".wl[442].w[53]" 0.0071692392520055015;
	setAttr ".wl[442].w[54]" 0.99282703351593049;
	setAttr -s 3 ".wl[443].w";
	setAttr ".wl[443].w[0]" 6.5994334031825249e-005;
	setAttr ".wl[443].w[53]" 0.098938639302736345;
	setAttr ".wl[443].w[54]" 0.90099536636323174;
	setAttr -s 3 ".wl[444].w";
	setAttr ".wl[444].w[0]" 0.0012379937378035361;
	setAttr ".wl[444].w[53]" 0.99688436606937225;
	setAttr ".wl[444].w[54]" 0.0018776401928242313;
	setAttr -s 3 ".wl[445].w";
	setAttr ".wl[445].w[0]" 0.17598912856916143;
	setAttr ".wl[445].w[48]" 0.25905719761533014;
	setAttr ".wl[445].w[53]" 0.56495367381550843;
	setAttr -s 3 ".wl[446].w";
	setAttr ".wl[446].w[0]" 0.39456435107927457;
	setAttr ".wl[446].w[48]" 0.34514363565825279;
	setAttr ".wl[446].w[53]" 0.26029201326247253;
	setAttr -s 3 ".wl[447].w";
	setAttr ".wl[447].w[0]" 0.22549709999898987;
	setAttr ".wl[447].w[48]" 0.45982879558699713;
	setAttr ".wl[447].w[53]" 0.31467410441401306;
	setAttr -s 3 ".wl[448].w";
	setAttr ".wl[448].w[32]" 0.14440958543895752;
	setAttr ".wl[448].w[39]" 0.0074803856183641437;
	setAttr ".wl[448].w[42]" 0.84811002894267828;
	setAttr -s 3 ".wl[449].w";
	setAttr ".wl[449].w[32]" 0.040854597365921695;
	setAttr ".wl[449].w[39]" 0.0037807845804158371;
	setAttr ".wl[449].w[42]" 0.95536461805366257;
	setAttr -s 3 ".wl[450].w";
	setAttr ".wl[450].w[32]" 0.024773514711741457;
	setAttr ".wl[450].w[39]" 0.006805811397800449;
	setAttr ".wl[450].w[42]" 0.96842067389045805;
	setAttr -s 3 ".wl[451].w";
	setAttr ".wl[451].w[32]" 0.020307094701770837;
	setAttr ".wl[451].w[39]" 0.014416789286574873;
	setAttr ".wl[451].w[42]" 0.96527611601165431;
	setAttr -s 3 ".wl[452].w";
	setAttr ".wl[452].w[32]" 0.035960578501015389;
	setAttr ".wl[452].w[39]" 0.045415393209144186;
	setAttr ".wl[452].w[42]" 0.91862402828984036;
	setAttr -s 3 ".wl[453].w";
	setAttr ".wl[453].w[32]" 0.17823481218539294;
	setAttr ".wl[453].w[39]" 0.12968669769501881;
	setAttr ".wl[453].w[42]" 0.69207849011958822;
	setAttr -s 3 ".wl[454].w";
	setAttr ".wl[454].w[32]" 0.24983633994707635;
	setAttr ".wl[454].w[39]" 0.057258450531191156;
	setAttr ".wl[454].w[42]" 0.69290520952173251;
	setAttr -s 3 ".wl[455].w";
	setAttr ".wl[455].w[32]" 0.066927455348426479;
	setAttr ".wl[455].w[39]" 0.0054795180348219613;
	setAttr ".wl[455].w[42]" 0.92759302661675169;
	setAttr -s 3 ".wl[456].w";
	setAttr ".wl[456].w[32]" 0.029067976545087196;
	setAttr ".wl[456].w[42]" 0.9302027479327114;
	setAttr ".wl[456].w[43]" 0.040729275522201361;
	setAttr -s 3 ".wl[457].w";
	setAttr ".wl[457].w[32]" 0.0050134547461481967;
	setAttr ".wl[457].w[42]" 0.9808693584210505;
	setAttr ".wl[457].w[43]" 0.014117186832801392;
	setAttr -s 3 ".wl[458].w";
	setAttr ".wl[458].w[32]" 0.0018072637384572358;
	setAttr ".wl[458].w[42]" 0.98402614880946759;
	setAttr ".wl[458].w[43]" 0.014166587452075372;
	setAttr -s 3 ".wl[459].w";
	setAttr ".wl[459].w[32]" 0.0019939918851434148;
	setAttr ".wl[459].w[42]" 0.96103696401820549;
	setAttr ".wl[459].w[43]" 0.036969044096651291;
	setAttr -s 3 ".wl[460].w";
	setAttr ".wl[460].w[39]" 0.010104558411430715;
	setAttr ".wl[460].w[42]" 0.87405927319393073;
	setAttr ".wl[460].w[43]" 0.11583616839463859;
	setAttr -s 3 ".wl[461].w";
	setAttr ".wl[461].w[32]" 0.0067352092466013199;
	setAttr ".wl[461].w[42]" 0.97734501948131469;
	setAttr ".wl[461].w[43]" 0.015919771272084042;
	setAttr -s 3 ".wl[462].w";
	setAttr ".wl[462].w[32]" 0.012029653799672586;
	setAttr ".wl[462].w[39]" 0.0037236221439071473;
	setAttr ".wl[462].w[42]" 0.98424672405642022;
	setAttr -s 3 ".wl[463].w";
	setAttr ".wl[463].w[32]" 0.02938899041999354;
	setAttr ".wl[463].w[42]" 0.94975162434276328;
	setAttr ".wl[463].w[43]" 0.020859385237243337;
	setAttr -s 3 ".wl[464].w";
	setAttr ".wl[464].w[32]" 0.0033623776799334018;
	setAttr ".wl[464].w[42]" 0.76775448643982913;
	setAttr ".wl[464].w[43]" 0.22888313588023751;
	setAttr -s 3 ".wl[465].w";
	setAttr ".wl[465].w[32]" 0.00056620098986226452;
	setAttr ".wl[465].w[42]" 0.87929666207502499;
	setAttr ".wl[465].w[43]" 0.1201371369351127;
	setAttr -s 3 ".wl[466].w";
	setAttr ".wl[466].w[32]" 0.00022312129118205699;
	setAttr ".wl[466].w[42]" 0.85288685764977423;
	setAttr ".wl[466].w[43]" 0.14689002105904386;
	setAttr -s 3 ".wl[467].w";
	setAttr ".wl[467].w[32]" 0.00096356577234418621;
	setAttr ".wl[467].w[42]" 0.52282181807370087;
	setAttr ".wl[467].w[43]" 0.47621461615395499;
	setAttr -s 3 ".wl[468].w";
	setAttr ".wl[468].w[32]" 0.0024885750986554061;
	setAttr ".wl[468].w[42]" 0.48191806777613633;
	setAttr ".wl[468].w[43]" 0.51559335712520826;
	setAttr -s 3 ".wl[469].w";
	setAttr ".wl[469].w[32]" 0.0027162600154292649;
	setAttr ".wl[469].w[42]" 0.68682696247748032;
	setAttr ".wl[469].w[43]" 0.31045677750709033;
	setAttr -s 3 ".wl[470].w";
	setAttr ".wl[470].w[32]" 0.00084164366503292542;
	setAttr ".wl[470].w[42]" 0.96733481285841405;
	setAttr ".wl[470].w[43]" 0.03182354347655305;
	setAttr -s 3 ".wl[471].w";
	setAttr ".wl[471].w[32]" 0.0018480465707372841;
	setAttr ".wl[471].w[42]" 0.96151263852458146;
	setAttr ".wl[471].w[43]" 0.036639314904681357;
	setAttr -s 3 ".wl[472].w";
	setAttr ".wl[472].w[32]" 0.00016695360980952683;
	setAttr ".wl[472].w[42]" 0.49825822667658948;
	setAttr ".wl[472].w[43]" 0.50157481971360107;
	setAttr -s 3 ".wl[473].w[42:44]"  0.17090742221090569 0.82872082793502488 
		0.00037174985406942856;
	setAttr -s 3 ".wl[474].w[42:44]"  0.1156249504021767 0.88376925043609622 
		0.00060579916172713143;
	setAttr -s 3 ".wl[475].w[42:44]"  0.089078130576027884 0.91072980459716579 
		0.00019206482680638525;
	setAttr -s 3 ".wl[476].w";
	setAttr ".wl[476].w[32]" 0.00042462292729858854;
	setAttr ".wl[476].w[42]" 0.10487284966869766;
	setAttr ".wl[476].w[43]" 0.89470252740400369;
	setAttr -s 3 ".wl[477].w";
	setAttr ".wl[477].w[32]" 0.0013226630267644162;
	setAttr ".wl[477].w[42]" 0.45711851210026705;
	setAttr ".wl[477].w[43]" 0.54155882487296858;
	setAttr -s 3 ".wl[478].w";
	setAttr ".wl[478].w[32]" 0.00023192700944104716;
	setAttr ".wl[478].w[42]" 0.8512246375822905;
	setAttr ".wl[478].w[43]" 0.14854343540826859;
	setAttr -s 3 ".wl[479].w";
	setAttr ".wl[479].w[32]" 0.00032624802561302636;
	setAttr ".wl[479].w[42]" 0.85351491709996452;
	setAttr ".wl[479].w[43]" 0.14615883487442252;
	setAttr -s 3 ".wl[480].w[42:44]"  0.10491712887078314 0.89409443212348205 
		0.00098843900573495312;
	setAttr -s 3 ".wl[481].w[42:44]"  0.028129297931178569 0.96907494829881236 
		0.0027957537700091452;
	setAttr -s 3 ".wl[482].w[42:44]"  0.014190486811427776 0.98144268568515713 
		0.0043668275034150572;
	setAttr -s 3 ".wl[483].w[42:44]"  0.012317105273243601 0.98664838414782041 
		0.0010345105789359721;
	setAttr -s 3 ".wl[484].w[42:44]"  0.022870565208846644 0.97686258123677649 
		0.00026685355437673755;
	setAttr -s 3 ".wl[485].w";
	setAttr ".wl[485].w[32]" 0.00051905369775668989;
	setAttr ".wl[485].w[42]" 0.20063702276806047;
	setAttr ".wl[485].w[43]" 0.79884392353418299;
	setAttr -s 3 ".wl[486].w[42:44]"  0.13724641176917995 0.86255002202150977 
		0.00020356620931031143;
	setAttr -s 3 ".wl[487].w[42:44]"  0.36375275353179076 0.63556350163680331 
		0.00068374483140598292;
	setAttr -s 3 ".wl[488].w[42:44]"  0.022656257798529464 0.95584782502665 
		0.021495917174820533;
	setAttr -s 3 ".wl[489].w[42:44]"  0.01286835195788219 0.93893228800290662 
		0.048199360039211346;
	setAttr -s 3 ".wl[490].w[42:44]"  0.006563228752812551 0.919933170649052 
		0.073503600598135446;
	setAttr -s 3 ".wl[491].w[42:44]"  0.0012148621461600013 0.98617149533220139 
		0.012613642521638605;
	setAttr -s 3 ".wl[492].w[42:44]"  0.0013660065658367326 0.99464195071728834 
		0.0039920427168749859;
	setAttr -s 3 ".wl[493].w[42:44]"  0.0067743676623073954 0.99176521517904537 
		0.0014604171586472417;
	setAttr -s 3 ".wl[494].w[42:44]"  0.0097172435926743735 0.9878561175181616 
		0.0024266388891641785;
	setAttr -s 3 ".wl[495].w[42:44]"  0.01718583691015205 0.98005223571235567 
		0.0027619273774923481;
	setAttr -s 3 ".wl[496].w[42:44]"  0.0012118348510090477 0.9725226830104271 
		0.02626548213856399;
	setAttr -s 3 ".wl[497].w[42:44]"  0.00072920424100797053 0.8944598001928068 
		0.10481099556618526;
	setAttr -s 3 ".wl[498].w[42:44]"  0.00089955175224989308 0.72497563962343647 
		0.27412480862431365;
	setAttr -s 3 ".wl[499].w[42:44]"  0.00017554141029365946 0.89181812903582125 
		0.10800632955388507;
	setAttr -s 3 ".wl[500].w[42:44]"  0.00010333067001608451 0.92392514095229206 
		0.075971528377691985;
	setAttr -s 3 ".wl[501].w[42:44]"  0.0004835386685049711 0.97711440076854716 
		0.02240206056294787;
	setAttr -s 3 ".wl[502].w[42:44]"  0.0025709447505982844 0.94569286240723782 
		0.051736192842163985;
	setAttr -s 3 ".wl[503].w[42:44]"  0.0014634317339355352 0.98019439011167508 
		0.018342178154389453;
	setAttr -s 3 ".wl[504].w[42:44]"  0.00013536949854982887 0.84619352777864987 
		0.15367110272280021;
	setAttr -s 3 ".wl[505].w[42:44]"  4.4218847479442867e-005 0.52861975142025064 
		0.47133602973227001;
	setAttr -s 3 ".wl[506].w[42:44]"  5.5129806875839574e-005 0.5156005536345929 
		0.48434431655853127;
	setAttr -s 3 ".wl[507].w[42:44]"  1.4786239521394155e-005 0.51776156476695223 
		0.48222364899352643;
	setAttr -s 3 ".wl[508].w[42:44]"  6.549775006283671e-006 0.52397093392578942 
		0.4760225162992045;
	setAttr -s 3 ".wl[509].w[42:44]"  6.7512141513569607e-005 0.86073256549978838 
		0.13919992235869802;
	setAttr -s 3 ".wl[510].w[42:44]"  0.00031903470904960749 0.87803990366220419 
		0.12164106162874627;
	setAttr -s 3 ".wl[511].w[42:44]"  0.00019859158202416302 0.88103090715962218 
		0.11877050125835367;
	setAttr -s 3 ".wl[512].w[42:44]"  8.4400835372428331e-006 0.5176462986575282 
		0.48234526125893451;
	setAttr -s 3 ".wl[513].w[42:44]"  1.8145368116517418e-005 0.51323623260536699 
		0.48674562202651644;
	setAttr -s 3 ".wl[514].w[42:44]"  7.2504934838415125e-006 0.50279052581678962 
		0.49720222368972661;
	setAttr -s 3 ".wl[515].w[42:44]"  2.2941865305293842e-006 0.5020085820652963 
		0.49798912374817322;
	setAttr -s 3 ".wl[516].w[42:44]"  9.0669705007967788e-007 0.50257510628888802 
		0.49742398701406182;
	setAttr -s 3 ".wl[517].w[42:44]"  3.3892798699735865e-006 0.51534196397828036 
		0.48465464674184972;
	setAttr -s 3 ".wl[518].w[42:44]"  1.614324713390978e-005 0.52137971934322025 
		0.4786041374096458;
	setAttr -s 3 ".wl[519].w[42:44]"  1.0498291111063237e-005 0.52071826614710726 
		0.47927123556178169;
	setAttr -s 3 ".wl[520].w[42:44]"  1.7386858642015341e-006 0.50233747014204388 
		0.49766079117209205;
	setAttr -s 3 ".wl[521].w[42:44]"  2.3996250213041737e-006 0.50179079352149603 
		0.49820680685348262;
	setAttr -s 3 ".wl[522].w[42:44]"  2.5819410291213767e-006 0.50135067350285911 
		0.49864674455611174;
	setAttr -s 3 ".wl[523].w[42:44]"  6.2349220660846256e-007 0.50044426491485694 
		0.49955511159293647;
	setAttr -s 3 ".wl[524].w[42:44]"  2.6248740696085456e-007 0.50049222239749513 
		0.499507515115098;
	setAttr -s 3 ".wl[525].w[42:44]"  7.1494648239681501e-007 0.50190905121533269 
		0.49809023383818496;
	setAttr -s 3 ".wl[526].w[42:44]"  4.7342986772068936e-006 0.50719461915991282 
		0.49280064654140993;
	setAttr -s 3 ".wl[527].w[42:44]"  1.6459929210028118e-006 0.50296296808474816 
		0.49703538592233093;
	setAttr -s 3 ".wl[528].w[42:44]"  4.2032700563072391e-007 0.50044204400492709 
		0.49955753566806727;
	setAttr -s 3 ".wl[529].w[42:44]"  5.0839098241224149e-007 0.50044563550820875 
		0.49955385610080888;
	setAttr -s 3 ".wl[530].w[42:44]"  4.4396974371699448e-007 0.50036842689852823 
		0.49963112913172808;
	setAttr -s 3 ".wl[531].w[42:44]"  3.3613767266768353e-007 0.50031872033979707 
		0.49968094352253029;
	setAttr -s 3 ".wl[532].w[42:44]"  2.9706008699799014e-007 0.50037466781535522 
		0.4996250351245578;
	setAttr -s 3 ".wl[533].w[42:44]"  3.0664611444539866e-007 0.5004956854411593 
		0.4995040079127262;
	setAttr -s 3 ".wl[534].w[42:44]"  3.8656483327992332e-007 0.50058241580241514 
		0.49941719763275161;
	setAttr -s 3 ".wl[535].w[42:44]"  3.7771325865342702e-007 0.50050738681912033 
		0.49949223546762112;
	setAttr -s 3 ".wl[536].w";
	setAttr ".wl[536].w[32]" 0.033323833080923834;
	setAttr ".wl[536].w[39]" 0.92254100582657916;
	setAttr ".wl[536].w[42]" 0.044135161092497106;
	setAttr -s 3 ".wl[537].w";
	setAttr ".wl[537].w[32]" 0.073176553141069786;
	setAttr ".wl[537].w[39]" 0.85438777908138008;
	setAttr ".wl[537].w[42]" 0.072435667777550283;
	setAttr -s 3 ".wl[538].w";
	setAttr ".wl[538].w[32]" 0.028522197902553659;
	setAttr ".wl[538].w[39]" 0.96011147025544719;
	setAttr ".wl[538].w[42]" 0.011366331841999157;
	setAttr -s 3 ".wl[539].w";
	setAttr ".wl[539].w[32]" 0.025104676283750762;
	setAttr ".wl[539].w[36]" 0.025981099376908793;
	setAttr ".wl[539].w[39]" 0.94891422433934047;
	setAttr -s 3 ".wl[540].w";
	setAttr ".wl[540].w[32]" 0.074415016680537502;
	setAttr ".wl[540].w[36]" 0.10487212702317726;
	setAttr ".wl[540].w[39]" 0.82071285629628521;
	setAttr -s 3 ".wl[541].w";
	setAttr ".wl[541].w[32]" 0.039706945234711785;
	setAttr ".wl[541].w[36]" 0.02538627495913973;
	setAttr ".wl[541].w[39]" 0.93490677980614856;
	setAttr -s 3 ".wl[542].w";
	setAttr ".wl[542].w[32]" 0.2083988759867233;
	setAttr ".wl[542].w[36]" 0.019288650691900912;
	setAttr ".wl[542].w[39]" 0.77231247332137565;
	setAttr -s 3 ".wl[543].w";
	setAttr ".wl[543].w[32]" 0.044060466973422981;
	setAttr ".wl[543].w[39]" 0.93457575678716265;
	setAttr ".wl[543].w[42]" 0.021363776239414406;
	setAttr -s 3 ".wl[544].w";
	setAttr ".wl[544].w[32]" 0.013810764981640359;
	setAttr ".wl[544].w[39]" 0.9733235954725773;
	setAttr ".wl[544].w[42]" 0.012865639545782322;
	setAttr -s 3 ".wl[545].w";
	setAttr ".wl[545].w[32]" 0.0036635987465763672;
	setAttr ".wl[545].w[39]" 0.99269701134261057;
	setAttr ".wl[545].w[40]" 0.0036393899108129683;
	setAttr -s 3 ".wl[546].w";
	setAttr ".wl[546].w[32]" 0.0016518457447402437;
	setAttr ".wl[546].w[39]" 0.99231719708887967;
	setAttr ".wl[546].w[40]" 0.006030957166380085;
	setAttr -s 3 ".wl[547].w";
	setAttr ".wl[547].w[36]" 0.0024944694276696423;
	setAttr ".wl[547].w[39]" 0.99214225584855897;
	setAttr ".wl[547].w[40]" 0.0053632747237714416;
	setAttr -s 3 ".wl[548].w";
	setAttr ".wl[548].w[32]" 0.012565113509922343;
	setAttr ".wl[548].w[36]" 0.016599389989854815;
	setAttr ".wl[548].w[39]" 0.97083549650022305;
	setAttr -s 3 ".wl[549].w";
	setAttr ".wl[549].w[32]" 0.0029595303251888044;
	setAttr ".wl[549].w[36]" 0.0027872563726122285;
	setAttr ".wl[549].w[39]" 0.99425321330219907;
	setAttr -s 3 ".wl[550].w";
	setAttr ".wl[550].w[32]" 0.0059097984623920881;
	setAttr ".wl[550].w[39]" 0.99322378711526105;
	setAttr ".wl[550].w[42]" 0.00086641442234692222;
	setAttr -s 3 ".wl[551].w";
	setAttr ".wl[551].w[32]" 0.01412381860874423;
	setAttr ".wl[551].w[39]" 0.97666503605945942;
	setAttr ".wl[551].w[42]" 0.0092111453317963981;
	setAttr -s 3 ".wl[552].w";
	setAttr ".wl[552].w[32]" 0.00051259339114197221;
	setAttr ".wl[552].w[39]" 0.97629134804375994;
	setAttr ".wl[552].w[40]" 0.023196058565098245;
	setAttr -s 3 ".wl[553].w";
	setAttr ".wl[553].w[32]" 0.00018582165040650857;
	setAttr ".wl[553].w[39]" 0.91546331294574368;
	setAttr ".wl[553].w[40]" 0.084350865403849992;
	setAttr -s 3 ".wl[554].w";
	setAttr ".wl[554].w[32]" 0.00010640264117781412;
	setAttr ".wl[554].w[39]" 0.87918301003806609;
	setAttr ".wl[554].w[40]" 0.12071058732075597;
	setAttr -s 3 ".wl[555].w";
	setAttr ".wl[555].w[36]" 0.00015851510420204713;
	setAttr ".wl[555].w[39]" 0.90251135788966275;
	setAttr ".wl[555].w[40]" 0.097330127006135234;
	setAttr -s 3 ".wl[556].w";
	setAttr ".wl[556].w[36]" 0.00069420173661343396;
	setAttr ".wl[556].w[39]" 0.94867342694024837;
	setAttr ".wl[556].w[40]" 0.050632371323138421;
	setAttr -s 3 ".wl[557].w";
	setAttr ".wl[557].w[36]" 0.00035218736257129439;
	setAttr ".wl[557].w[39]" 0.98248756420526073;
	setAttr ".wl[557].w[40]" 0.017160248432167964;
	setAttr -s 3 ".wl[558].w";
	setAttr ".wl[558].w[32]" 0.00039939399310412747;
	setAttr ".wl[558].w[39]" 0.98662238803138247;
	setAttr ".wl[558].w[40]" 0.012978217975513396;
	setAttr -s 3 ".wl[559].w";
	setAttr ".wl[559].w[32]" 0.00066855625489753694;
	setAttr ".wl[559].w[39]" 0.98663302703553024;
	setAttr ".wl[559].w[40]" 0.012698416709572198;
	setAttr -s 3 ".wl[560].w[39:41]"  0.82368743391352151 0.17619223525490949 
		0.0001203308315690245;
	setAttr -s 3 ".wl[561].w[39:41]"  0.19199114645298809 0.80725700150086621 
		0.00075185204614570662;
	setAttr -s 3 ".wl[562].w[39:41]"  0.14197858328429477 0.85752921352244182 
		0.00049220319326335831;
	setAttr -s 3 ".wl[563].w[39:41]"  0.16943925398342774 0.83037022916218794 
		0.00019051685438421697;
	setAttr -s 3 ".wl[564].w[39:41]"  0.5547478848888705 0.44484175837827922 
		0.0004103567328503742;
	setAttr -s 3 ".wl[565].w";
	setAttr ".wl[565].w[36]" 7.0580891538426707e-005;
	setAttr ".wl[565].w[39]" 0.86332380902408978;
	setAttr ".wl[565].w[40]" 0.13660561008437178;
	setAttr -s 3 ".wl[566].w";
	setAttr ".wl[566].w[32]" 7.6629722923785357e-005;
	setAttr ".wl[566].w[39]" 0.90309108401509608;
	setAttr ".wl[566].w[40]" 0.096832286261979969;
	setAttr -s 3 ".wl[567].w";
	setAttr ".wl[567].w[32]" 0.00010393481421928971;
	setAttr ".wl[567].w[39]" 0.86991162963102464;
	setAttr ".wl[567].w[40]" 0.12998443555475606;
	setAttr -s 3 ".wl[568].w[39:41]"  0.085419419538389815 0.91393319886440594 
		0.00064738159720424508;
	setAttr -s 3 ".wl[569].w[39:41]"  0.087043624812113363 0.90726406831052797 
		0.005692306877358679;
	setAttr -s 3 ".wl[570].w[39:41]"  0.025332388129565567 0.97232109236182862 
		0.0023465195086059452;
	setAttr -s 3 ".wl[571].w[39:41]"  0.036372880219095412 0.96283242699651017 
		0.00079469278439456054;
	setAttr -s 3 ".wl[572].w[39:41]"  0.22268526051369372 0.77618691350101843 
		0.0011278259852880992;
	setAttr -s 3 ".wl[573].w[39:41]"  0.11481978246543538 0.88497298670296964 
		0.00020723083159512618;
	setAttr -s 3 ".wl[574].w[39:41]"  0.13361529132276553 0.86622779878997858 
		0.00015690988725607593;
	setAttr -s 3 ".wl[575].w[39:41]"  0.0047885435432600387 0.98871412022288674 
		0.0064973362338532929;
	setAttr -s 3 ".wl[576].w[39:41]"  0.012053333144648421 0.9500270851617626 
		0.037919581693589166;
	setAttr -s 3 ".wl[577].w[39:41]"  0.0027033558235308999 0.97051211879043564 
		0.026784525386033469;
	setAttr -s 3 ".wl[578].w[39:41]"  0.0022876751591588661 0.9882245064449886 
		0.0094878183958525732;
	setAttr -s 3 ".wl[579].w[39:41]"  0.0074389631803171282 0.98807468928270725 
		0.0044863475369757294;
	setAttr -s 3 ".wl[580].w[39:41]"  0.0069092009627032694 0.98966300071898594 
		0.0034277983183107858;
	setAttr -s 3 ".wl[581].w[39:41]"  0.016381360167705604 0.98214648410987193 
		0.001472155722422461;
	setAttr -s 3 ".wl[582].w[39:41]"  0.0071121852169087497 0.99090247142904464 
		0.0019853433540467516;
	setAttr -s 3 ".wl[583].w[39:41]"  0.00044135886868197584 0.90440387307161541 
		0.095154768059702521;
	setAttr -s 3 ".wl[584].w[39:41]"  0.00057457475191251284 0.85619164264144376 
		0.14323378260664391;
	setAttr -s 3 ".wl[585].w[39:41]"  0.00043640551822854152 0.7031347842991128 
		0.29642881018265871;
	setAttr -s 3 ".wl[586].w[39:41]"  0.00018064187029855395 0.87528054821756696 
		0.1245388099121346;
	setAttr -s 3 ".wl[587].w[39:41]"  0.0004559366930455187 0.93262298140513678 
		0.066921081901817822;
	setAttr -s 3 ".wl[588].w[39:41]"  0.0017193475258483856 0.91128169234682821 
		0.08699896012732361;
	setAttr -s 3 ".wl[589].w[39:41]"  0.0010427606371927614 0.9718762695699642 
		0.027080969792843173;
	setAttr -s 3 ".wl[590].w[39:41]"  0.00052705488881360865 0.96617301944937573 
		0.033299925661810573;
	setAttr -s 3 ".wl[591].w[39:41]"  3.2168569719216161e-005 0.53145452130201132 
		0.46851331012826941;
	setAttr -s 3 ".wl[592].w[39:41]"  4.3311677283103847e-005 0.52654206359835654 
		0.4734146247243603;
	setAttr -s 3 ".wl[593].w[39:41]"  4.0871824394205681e-005 0.52030738540081789 
		0.47965174277478806;
	setAttr -s 3 ".wl[594].w[39:41]"  1.8819984490764488e-005 0.52901464522993724 
		0.47096653478557204;
	setAttr -s 3 ".wl[595].w[39:41]"  0.00014563495828816766 0.65621219225594374 
		0.34364217278576825;
	setAttr -s 3 ".wl[596].w[39:41]"  0.00025887768689486653 0.84280999051396377 
		0.15693113179914131;
	setAttr -s 3 ".wl[597].w[39:41]"  0.00018822775695269512 0.85063982928518445 
		0.14917194295786279;
	setAttr -s 3 ".wl[598].w[39:41]"  9.471725438913505e-005 0.82508858780802241 
		0.17481669493758847;
	setAttr -s 3 ".wl[599].w[39:41]"  4.1760595038401591e-006 0.50426139537160952 
		0.49573442856888661;
	setAttr -s 3 ".wl[600].w[39:41]"  5.8474609340119248e-006 0.50361183039125701 
		0.49638232214780903;
	setAttr -s 3 ".wl[601].w[39:41]"  1.1332338964672472e-005 0.51243095647057946 
		0.48755771119045582;
	setAttr -s 3 ".wl[602].w[39:41]"  1.5034135298223173e-005 0.51970787449150435 
		0.48027709137319752;
	setAttr -s 3 ".wl[603].w[39:41]"  6.3255624299395406e-007 0.50066645299736023 
		0.49933291444639682;
	setAttr -s 3 ".wl[604].w[39:41]"  7.7105292671035024e-007 0.50050717843029824 
		0.49949205051677514;
	setAttr -s 3 ".wl[605].w[39:41]"  7.262664284791835e-007 0.50044696336776184 
		0.49955231036580972;
	setAttr -s 3 ".wl[606].w[39:41]"  5.5084716284169914e-007 0.50059277087472087 
		0.49940667827811625;
	setAttr -s 3 ".wl[607].w[39:41]"  1.1243679313358638e-006 0.50127297845236063 
		0.49872589717970806;
	setAttr -s 3 ".wl[608].w[39:41]"  1.4805847953317615e-006 0.50193304816140349 
		0.49806547125380113;
	setAttr -s 3 ".wl[609].w[39:41]"  1.2944526597275168e-006 0.50236340507109722 
		0.4976353004762431;
	setAttr -s 3 ".wl[610].w[39:41]"  7.5715789241941267e-007 0.50184837772985902 
		0.49815086511224871;
	setAttr -s 3 ".wl[611].w[39:41]"  1.2806783157428225e-007 0.50015074938446602 
		0.49984912254770247;
	setAttr -s 3 ".wl[612].w[39:41]"  1.3683338949029247e-007 0.50013849636001784 
		0.49986136680659277;
	setAttr -s 3 ".wl[613].w[39:41]"  1.5633672437096561e-007 0.50015554872585455 
		0.49984429493742105;
	setAttr -s 3 ".wl[614].w[39:41]"  1.8060210153643556e-007 0.5001960426651052 
		0.49980377673279325;
	setAttr -s 3 ".wl[615].w[39:41]"  2.2041384202896444e-007 0.5002615648315375 
		0.49973821475462044;
	setAttr -s 3 ".wl[616].w[39:41]"  2.2511224768910673e-007 0.50029193878119371 
		0.49970783610655861;
	setAttr -s 3 ".wl[617].w[39:41]"  1.6845357998342824e-007 0.50024105309617428 
		0.4997587784502458;
	setAttr -s 3 ".wl[618].w[39:41]"  1.3104091438056197e-007 0.50019034652878991 
		0.49980952243029569;
	setAttr -s 3 ".wl[619].w[39:41]"  0.4124546077859037 0.58722346597349762 
		0.00032192624059864191;
	setAttr -s 3 ".wl[620].w[39:41]"  1.3536785681628456e-005 0.52518905258752668 
		0.47479741062679165;
	setAttr -s 3 ".wl[621].w[39:41]"  6.7475654576749836e-006 0.52054710851971053 
		0.47944614391483176;
	setAttr -s 3 ".wl[622].w[39:41]"  3.1550632713881909e-006 0.50401656863662114 
		0.49598027630010744;
	setAttr -s 3 ".wl[623].w[39:41]"  5.3850615628560746e-006 0.50288679478173215 
		0.49710782015670502;
	setAttr -s 3 ".wl[624].w";
	setAttr ".wl[624].w[32]" 0.014311784955135026;
	setAttr ".wl[624].w[33]" 0.050962849304561339;
	setAttr ".wl[624].w[36]" 0.93472536574030363;
	setAttr -s 3 ".wl[625].w";
	setAttr ".wl[625].w[32]" 0.036384632129695692;
	setAttr ".wl[625].w[33]" 0.11323400973108164;
	setAttr ".wl[625].w[36]" 0.85038135813922267;
	setAttr -s 3 ".wl[626].w";
	setAttr ".wl[626].w[32]" 0.0078871005780286763;
	setAttr ".wl[626].w[33]" 0.010643282416077551;
	setAttr ".wl[626].w[36]" 0.98146961700589375;
	setAttr -s 3 ".wl[627].w";
	setAttr ".wl[627].w[32]" 0.016776984174590975;
	setAttr ".wl[627].w[36]" 0.96174384934435697;
	setAttr ".wl[627].w[39]" 0.021479166481052164;
	setAttr -s 3 ".wl[628].w";
	setAttr ".wl[628].w[32]" 0.052924901324704274;
	setAttr ".wl[628].w[36]" 0.86888413036809786;
	setAttr ".wl[628].w[39]" 0.078190968307197989;
	setAttr -s 3 ".wl[629].w";
	setAttr ".wl[629].w[32]" 0.021587563834525817;
	setAttr ".wl[629].w[36]" 0.95725024222967359;
	setAttr ".wl[629].w[39]" 0.021162193935800447;
	setAttr -s 3 ".wl[630].w";
	setAttr ".wl[630].w[32]" 0.018281702415112011;
	setAttr ".wl[630].w[33]" 0.0032461954080247029;
	setAttr ".wl[630].w[36]" 0.97847210217686331;
	setAttr -s 3 ".wl[631].w";
	setAttr ".wl[631].w[32]" 0.018134884899912287;
	setAttr ".wl[631].w[33]" 0.021957232202252604;
	setAttr ".wl[631].w[36]" 0.95990788289783513;
	setAttr -s 3 ".wl[632].w";
	setAttr ".wl[632].w[33]" 0.0027368278293292934;
	setAttr ".wl[632].w[36]" 0.991600699861513;
	setAttr ".wl[632].w[37]" 0.0056624723091577046;
	setAttr -s 3 ".wl[633].w";
	setAttr ".wl[633].w[33]" 0.0046157662337294467;
	setAttr ".wl[633].w[36]" 0.98511781847395297;
	setAttr ".wl[633].w[37]" 0.010266415292317659;
	setAttr -s 3 ".wl[634].w";
	setAttr ".wl[634].w[33]" 0.0014657069949540445;
	setAttr ".wl[634].w[36]" 0.99540008584699291;
	setAttr ".wl[634].w[37]" 0.0031342071580529778;
	setAttr -s 3 ".wl[635].w";
	setAttr ".wl[635].w[36]" 0.99794167317998028;
	setAttr ".wl[635].w[37]" 0.0010903388587640895;
	setAttr ".wl[635].w[39]" 0.00096798796125556659;
	setAttr -s 3 ".wl[636].w";
	setAttr ".wl[636].w[32]" 0.0013487863325115923;
	setAttr ".wl[636].w[36]" 0.9967470894907926;
	setAttr ".wl[636].w[39]" 0.0019041241766958848;
	setAttr -s 3 ".wl[637].w";
	setAttr ".wl[637].w[32]" 0.00068459219818659347;
	setAttr ".wl[637].w[36]" 0.99789203255938363;
	setAttr ".wl[637].w[37]" 0.0014233752424297294;
	setAttr -s 3 ".wl[638].w";
	setAttr ".wl[638].w[32]" 0.00059681854122153313;
	setAttr ".wl[638].w[36]" 0.99681643982036772;
	setAttr ".wl[638].w[37]" 0.0025867416384107913;
	setAttr -s 3 ".wl[639].w";
	setAttr ".wl[639].w[33]" 0.00081905342936104306;
	setAttr ".wl[639].w[36]" 0.99632414678511627;
	setAttr ".wl[639].w[37]" 0.0028567997855226397;
	setAttr -s 3 ".wl[640].w";
	setAttr ".wl[640].w[33]" 0.00013177981649732564;
	setAttr ".wl[640].w[36]" 0.91259742245702791;
	setAttr ".wl[640].w[37]" 0.087270797726474753;
	setAttr -s 3 ".wl[641].w";
	setAttr ".wl[641].w[33]" 0.00051919078872934149;
	setAttr ".wl[641].w[36]" 0.76962133839836677;
	setAttr ".wl[641].w[37]" 0.22985947081290389;
	setAttr -s 3 ".wl[642].w";
	setAttr ".wl[642].w[33]" 0.00012751360650703784;
	setAttr ".wl[642].w[36]" 0.93531883024866325;
	setAttr ".wl[642].w[37]" 0.064553656144829691;
	setAttr -s 3 ".wl[643].w";
	setAttr ".wl[643].w[36]" 0.9798446889714284;
	setAttr ".wl[643].w[37]" 0.020119033502572044;
	setAttr ".wl[643].w[39]" 3.6277525999591043e-005;
	setAttr -s 3 ".wl[644].w";
	setAttr ".wl[644].w[36]" 0.964850945169339;
	setAttr ".wl[644].w[37]" 0.035089748257499068;
	setAttr ".wl[644].w[39]" 5.9306573161977872e-005;
	setAttr -s 3 ".wl[645].w[36:38]"  0.95141703572211234 0.048553926427136476 
		2.903785075111981e-005;
	setAttr -s 3 ".wl[646].w";
	setAttr ".wl[646].w[32]" 2.550485155504523e-005;
	setAttr ".wl[646].w[36]" 0.92405234512377299;
	setAttr ".wl[646].w[37]" 0.075922150024671953;
	setAttr -s 3 ".wl[647].w[36:38]"  0.92394661857001736 0.076001044187396977 
		5.2337242585737878e-005;
	setAttr -s 3 ".wl[648].w[36:38]"  0.49985671420191252 0.50011842164240805 
		2.4864155679465499e-005;
	setAttr -s 3 ".wl[649].w[36:38]"  0.4960296349566401 0.50392306593068403 
		4.7299112675796172e-005;
	setAttr -s 3 ".wl[650].w[36:38]"  0.58293213212966932 0.41670965601703625 
		0.00035821185329439694;
	setAttr -s 3 ".wl[651].w[36:38]"  0.82459603175841201 0.17530641868849298 
		9.7549553095157074e-005;
	setAttr -s 3 ".wl[652].w[36:38]"  0.56043134177325993 0.43939235950141275 
		0.00017629872532746747;
	setAttr -s 3 ".wl[653].w[36:38]"  0.51116216948140714 0.48851727932183209 
		0.00032055119676078863;
	setAttr -s 3 ".wl[654].w[36:38]"  0.51263999881339473 0.48724720196422505 
		0.0001127992223801541;
	setAttr -s 3 ".wl[655].w[36:38]"  0.55369329445320992 0.44594044330267774 
		0.00036626224411233555;
	setAttr -s 3 ".wl[656].w[36:38]"  0.10786527338340543 0.89182163280225768 
		0.00031309381433708043;
	setAttr -s 3 ".wl[657].w[36:38]"  0.1066429385776561 0.89271964888096866 
		0.00063741254137506496;
	setAttr -s 3 ".wl[658].w[36:38]"  0.25328902622290644 0.74559468256247841 
		0.0011162912146152214;
	setAttr -s 3 ".wl[659].w[36:38]"  0.11607766722408942 0.88348052568837399 
		0.00044180708753667746;
	setAttr -s 3 ".wl[660].w[36:38]"  0.074243310206330862 0.92550453057111115 
		0.00025215922255803261;
	setAttr -s 3 ".wl[661].w[36:38]"  0.11235285613856119 0.88683233305607378 
		0.00081481080536500061;
	setAttr -s 3 ".wl[662].w[36:38]"  0.33522154555245925 0.6636677671447011 
		0.0011106873028396387;
	setAttr -s 3 ".wl[663].w[36:38]"  0.33268060530518878 0.66633650914305298 
		0.00098288555175821309;
	setAttr -s 3 ".wl[664].w[36:38]"  0.0052548587086179736 0.98984991837272041 
		0.0048952229186617763;
	setAttr -s 3 ".wl[665].w[36:38]"  0.0077422167074607876 0.9799852247589298 
		0.012272558533609321;
	setAttr -s 3 ".wl[666].w[36:38]"  0.015395499257567074 0.97939674947928024 
		0.005207751263152793;
	setAttr -s 3 ".wl[667].w[36:38]"  0.024752764546193209 0.96891957168889575 
		0.0063276637649110849;
	setAttr -s 3 ".wl[668].w[36:38]"  0.0088783929408593008 0.98837619407050614 
		0.0027454129886345566;
	setAttr -s 3 ".wl[669].w[36:38]"  0.029075057114799737 0.95924921251488993 
		0.011675730370310429;
	setAttr -s 3 ".wl[670].w[36:38]"  0.022681955060329093 0.97184804270084069 
		0.0054700022388302115;
	setAttr -s 3 ".wl[671].w[36:38]"  0.016937948457373137 0.97956719152940241 
		0.0034948600132244999;
	setAttr -s 3 ".wl[672].w[36:38]"  0.00042824930517729653 0.89006854116296386 
		0.10950320953185882;
	setAttr -s 3 ".wl[673].w[36:38]"  0.0013647223122615186 0.79453738287801046 
		0.20409789480972812;
	setAttr -s 3 ".wl[674].w[36:38]"  0.00095796649196757061 0.92751248492221827 
		0.071529548585814173;
	setAttr -s 3 ".wl[675].w[36:38]"  0.001146267242335713 0.9720460115195122 
		0.026807721238152206;
	setAttr -s 3 ".wl[676].w[36:38]"  0.00052338956544649136 0.97842114702937832 
		0.021055463405175258;
	setAttr -s 3 ".wl[677].w[36:38]"  0.0014641351647767603 0.93983054662333065 
		0.058705318211892739;
	setAttr -s 3 ".wl[678].w[36:38]"  0.0012423597537442738 0.90477150326708511 
		0.093986136979170548;
	setAttr -s 3 ".wl[679].w[36:38]"  0.00083528408651232036 0.92890617700084455 
		0.070258538912643179;
	setAttr -s 3 ".wl[680].w[36:38]"  3.4361773495221661e-005 0.52178543090403873 
		0.47818020732246597;
	setAttr -s 3 ".wl[681].w[36:38]"  0.00037716004770257689 0.598530144269243 
		0.4010926956830545;
	setAttr -s 3 ".wl[682].w[36:38]"  0.00030633916473559282 0.65832994216762997 
		0.34136371866763454;
	setAttr -s 3 ".wl[683].w[36:38]"  0.00016546223464100916 0.82727584563276757 
		0.17255869213259156;
	setAttr -s 3 ".wl[684].w[36:38]"  0.00010480612170932555 0.83079351893438602 
		0.1691016749439046;
	setAttr -s 3 ".wl[685].w[36:38]"  0.00034754679723959862 0.64423372015114855 
		0.35541873305161192;
	setAttr -s 3 ".wl[686].w[36:38]"  8.7397240016034612e-005 0.53099281952449029 
		0.46891978323549377;
	setAttr -s 3 ".wl[687].w[36:38]"  0.00020294092235475979 0.60337857998339151 
		0.39641847909425387;
	setAttr -s 3 ".wl[688].w[36:38]"  5.9112001416754349e-006 0.50302788725676939 
		0.4969662015430889;
	setAttr -s 3 ".wl[689].w[36:38]"  3.8979840165082817e-005 0.51077163096789446 
		0.48918938919194055;
	setAttr -s 3 ".wl[690].w[36:38]"  3.2264755848884941e-005 0.51705697344227586 
		0.48291076180187525;
	setAttr -s 3 ".wl[691].w[36:38]"  1.5078866883105141e-005 0.52598921431677548 
		0.47399570681634134;
	setAttr -s 3 ".wl[692].w[36:38]"  1.2012432241119963e-005 0.53069284521481408 
		0.46929514235294484;
	setAttr -s 3 ".wl[693].w[36:38]"  3.076521562487302e-005 0.51396607403078265 
		0.48600316075359257;
	setAttr -s 3 ".wl[694].w[36:38]"  1.3270646037318133e-005 0.50506349419632779 
		0.49492323515763498;
	setAttr -s 3 ".wl[695].w[36:38]"  2.0152523369343889e-005 0.5102078246971703 
		0.48977202277946041;
	setAttr -s 3 ".wl[696].w[36:38]"  1.7565726125942741e-006 0.50081252438754542 
		0.49918571903984194;
	setAttr -s 3 ".wl[697].w[36:38]"  3.7721112220442317e-006 0.50117883493142168 
		0.49881739295735628;
	setAttr -s 3 ".wl[698].w[36:38]"  3.5875788511758824e-006 0.50200451325032514 
		0.4979918991708237;
	setAttr -s 3 ".wl[699].w[36:38]"  2.1638696401218581e-006 0.50302672460551667 
		0.49697111152484325;
	setAttr -s 3 ".wl[700].w[36:38]"  1.8601306875913645e-006 0.50351261788401036 
		0.49648552198530205;
	setAttr -s 3 ".wl[701].w[36:38]"  3.9006627026544509e-006 0.50206001129204347 
		0.49793608804525402;
	setAttr -s 3 ".wl[702].w[36:38]"  2.6258571363618703e-006 0.50115208841408843 
		0.49884528572877523;
	setAttr -s 3 ".wl[703].w[36:38]"  7.2179309781334834e-006 0.50360826807333481 
		0.49638451399568712;
	setAttr -s 3 ".wl[704].w[36:38]"  5.2601138108322662e-007 0.50029680143109667 
		0.49970267255752215;
	setAttr -s 3 ".wl[705].w[36:38]"  5.3615311845478758e-007 0.5003220384035908 
		0.49967742544329069;
	setAttr -s 3 ".wl[706].w[36:38]"  6.7215442977602519e-007 0.50048967732545091 
		0.49950965052011936;
	setAttr -s 3 ".wl[707].w[36:38]"  7.2445714984046315e-007 0.5006298696767193 
		0.49936940586613088;
	setAttr -s 3 ".wl[708].w[36:38]"  9.509463124475208e-007 0.50084896117994282 
		0.49915008787374482;
	setAttr -s 3 ".wl[709].w[36:38]"  9.471580260798228e-007 0.5006719720534033 
		0.49932708078857069;
	setAttr -s 3 ".wl[710].w[36:38]"  8.4011210971812649e-007 0.50049193404593695 
		0.49950722584195328;
	setAttr -s 3 ".wl[711].w[36:38]"  7.169625926337471e-007 0.50039163920334484 
		0.49960764383406248;
	setAttr -s 3 ".wl[712].w[32:34]"  0.067872365799707485 0.92974421879000702 
		0.0023834154102854951;
	setAttr -s 3 ".wl[713].w[32:34]"  0.014273730169307072 0.98263576920263151 
		0.0030905006280614535;
	setAttr -s 3 ".wl[714].w[32:34]"  0.0055303156337901272 0.98860019784963415 
		0.0058694865165758404;
	setAttr -s 3 ".wl[715].w";
	setAttr ".wl[715].w[32]" 0.0078028636747589815;
	setAttr ".wl[715].w[33]" 0.97478386079162227;
	setAttr ".wl[715].w[36]" 0.017413275533618707;
	setAttr -s 3 ".wl[716].w";
	setAttr ".wl[716].w[32]" 0.016243994639993296;
	setAttr ".wl[716].w[33]" 0.93063604380867659;
	setAttr ".wl[716].w[36]" 0.053119961551330142;
	setAttr -s 3 ".wl[717].w";
	setAttr ".wl[717].w[32]" 0.023931125557353706;
	setAttr ".wl[717].w[33]" 0.94231967598275113;
	setAttr ".wl[717].w[36]" 0.033749198459895324;
	setAttr -s 3 ".wl[718].w";
	setAttr ".wl[718].w[32]" 0.033624188020922444;
	setAttr ".wl[718].w[33]" 0.96235777361733643;
	setAttr ".wl[718].w[36]" 0.004018038361740979;
	setAttr -s 3 ".wl[719].w[32:34]"  0.20392011412246031 0.79322575133099871 
		0.0028541345465411642;
	setAttr -s 3 ".wl[720].w[32:34]"  0.0065527571235011288 0.9667170028150861 
		0.026730240061412818;
	setAttr -s 3 ".wl[721].w[32:34]"  0.0018689692812807054 0.97034455845366374 
		0.027786472265055727;
	setAttr -s 3 ".wl[722].w[32:34]"  0.0021195832956764802 0.90785205784958278 
		0.090028358854740878;
	setAttr -s 3 ".wl[723].w";
	setAttr ".wl[723].w[33]" 0.97904666794467354;
	setAttr ".wl[723].w[34]" 0.019523518194557232;
	setAttr ".wl[723].w[36]" 0.0014298138607692131;
	setAttr -s 3 ".wl[724].w";
	setAttr ".wl[724].w[33]" 0.99119576741206128;
	setAttr ".wl[724].w[34]" 0.0051238481213854914;
	setAttr ".wl[724].w[36]" 0.0036803844665534362;
	setAttr -s 3 ".wl[725].w";
	setAttr ".wl[725].w[33]" 0.99466567700946906;
	setAttr ".wl[725].w[34]" 0.0025590874661757085;
	setAttr ".wl[725].w[36]" 0.002775235524355242;
	setAttr -s 3 ".wl[726].w[32:34]"  0.0032801047074413406 0.99307743224924627 
		0.0036424630433125335;
	setAttr -s 3 ".wl[727].w[32:34]"  0.013135014864860409 0.97592790712500022 
		0.010937078010139401;
	setAttr -s 3 ".wl[728].w[32:34]"  0.0027565565721794825 0.71023846652370304 
		0.28700497690411747;
	setAttr -s 3 ".wl[729].w[32:34]"  0.00048796451156443872 0.80640023844632336 
		0.19311179704211223;
	setAttr -s 3 ".wl[730].w[32:34]"  0.00064256926594826846 0.64562590722136892 
		0.35373152351268289;
	setAttr -s 3 ".wl[731].w";
	setAttr ".wl[731].w[33]" 0.85259662654962809;
	setAttr ".wl[731].w[34]" 0.14722813203040536;
	setAttr ".wl[731].w[36]" 0.00017524141996674432;
	setAttr -s 3 ".wl[732].w";
	setAttr ".wl[732].w[33]" 0.95367311061936033;
	setAttr ".wl[732].w[34]" 0.045981331914224079;
	setAttr ".wl[732].w[36]" 0.00034555746641565027;
	setAttr -s 3 ".wl[733].w";
	setAttr ".wl[733].w[33]" 0.97008110263768677;
	setAttr ".wl[733].w[34]" 0.029615512196712934;
	setAttr ".wl[733].w[36]" 0.000303385165600336;
	setAttr -s 3 ".wl[734].w[32:34]"  0.00051845431601481523 0.94658505593595865 
		0.052896489748026673;
	setAttr -s 3 ".wl[735].w[32:34]"  0.0040398253829823458 0.8642456273327811 
		0.13171454728423662;
	setAttr -s 3 ".wl[736].w[32:34]"  0.0012736317694988367 0.44577465183285842 
		0.55295171639764285;
	setAttr -s 3 ".wl[737].w[33:35]"  0.19102245583891866 0.80819458593626792 
		0.00078295822481353611;
	setAttr -s 3 ".wl[738].w[33:35]"  0.30190387076557251 0.69739917317112032 
		0.00069695606330716581;
	setAttr -s 3 ".wl[739].w[33:35]"  0.22907042516397094 0.77074789649332354 
		0.00018167834270559676;
	setAttr -s 3 ".wl[740].w[33:35]"  0.7900582939885511 0.20985798242205472 
		8.3723589394370099e-005;
	setAttr -s 3 ".wl[741].w[32:34]"  5.7818198464852247e-005 0.85229129947551252 
		0.1476508823260225;
	setAttr -s 3 ".wl[742].w[32:34]"  0.00039790454385384936 0.63326402069484744 
		0.3663380747612987;
	setAttr -s 3 ".wl[743].w[32:34]"  0.00084860478013230943 0.83443255561980934 
		0.16471883960005843;
	setAttr -s 3 ".wl[744].w[33:35]"  0.081662029331030325 0.91679002142556809 
		0.0015479492434015759;
	setAttr -s 3 ".wl[745].w[33:35]"  0.096384330363048165 0.89915544784762136 
		0.0044602217893305665;
	setAttr -s 3 ".wl[746].w[33:35]"  0.042007856846275574 0.95682111522665281 
		0.0011710279270714717;
	setAttr -s 3 ".wl[747].w[33:35]"  0.039285943599048828 0.95999353050600489 
		0.00072052589494630561;
	setAttr -s 3 ".wl[748].w[33:35]"  0.096111550682327157 0.90343751669580208 
		0.00045093262187077067;
	setAttr -s 3 ".wl[749].w[33:35]"  0.10995562871429922 0.88990949032098454 
		0.00013488096471640855;
	setAttr -s 3 ".wl[750].w[33:35]"  0.11981116106656607 0.87984256800106542 
		0.00034627093236854801;
	setAttr -s 3 ".wl[751].w[33:35]"  0.37714329591575624 0.62038506377475233 
		0.0024716403094915095;
	setAttr -s 3 ".wl[752].w[33:35]"  0.0048282886177438466 0.97665084376288358 
		0.018520867619372591;
	setAttr -s 3 ".wl[753].w[33:35]"  0.0040770763177851157 0.97659995912264796 
		0.019322964559566964;
	setAttr -s 3 ".wl[754].w[33:35]"  0.002310267104995141 0.98661660416327512 
		0.011073128731729678;
	setAttr -s 3 ".wl[755].w[33:35]"  0.0032362775710757944 0.98729779630866199 
		0.0094659261202623066;
	setAttr -s 3 ".wl[756].w[33:35]"  0.016082488629337404 0.97520138546024648 
		0.0087161259104160949;
	setAttr -s 3 ".wl[757].w[33:35]"  0.0064268986753210451 0.99201203587060827 
		0.0015610654540707143;
	setAttr -s 3 ".wl[758].w[33:35]"  0.0078961929558365417 0.98965082666917892 
		0.0024529803749845378;
	setAttr -s 3 ".wl[759].w[33:35]"  0.014214360672161643 0.97462654672068338 
		0.011159092607155049;
	setAttr -s 3 ".wl[760].w[33:35]"  0.0012897322634244494 0.66246535862316591 
		0.3362449091134096;
	setAttr -s 3 ".wl[761].w[33:35]"  0.00084598211349139478 0.70123817493056972 
		0.29791584295593887;
	setAttr -s 3 ".wl[762].w[33:35]"  0.00026369952628413053 0.86663691255079456 
		0.13309938792292145;
	setAttr -s 3 ".wl[763].w[33:35]"  0.00048952559736585262 0.77575403750490723 
		0.22375643689772709;
	setAttr -s 3 ".wl[764].w[33:35]"  0.00056494882865628748 0.95969477804023917 
		0.039740273131104502;
	setAttr -s 3 ".wl[765].w[33:35]"  0.00048066236210010129 0.97969802132372896 
		0.019821316314171028;
	setAttr -s 3 ".wl[766].w[33:35]"  0.00065189131567825733 0.95870030572446474 
		0.04064780295985692;
	setAttr -s 3 ".wl[767].w[33:35]"  0.0024696138514076482 0.74968948669913438 
		0.24784089944945789;
	setAttr -s 3 ".wl[768].w[33:35]"  0.00011006778336705121 0.51620269025297238 
		0.48368724196366059;
	setAttr -s 3 ".wl[769].w[33:35]"  0.00025394489224739525 0.57437611553233914 
		0.42536993957541358;
	setAttr -s 3 ".wl[770].w[33:35]"  0.0001057457504281478 0.59556701604180884 
		0.40432723820776301;
	setAttr -s 3 ".wl[771].w[33:35]"  3.462473070043134e-005 0.53113812905679825 
		0.46882724621250127;
	setAttr -s 3 ".wl[772].w[33:35]"  8.2251286675552731e-005 0.84602697390887549 
		0.15389077480444896;
	setAttr -s 3 ".wl[773].w[33:35]"  7.644652099405956e-005 0.86297048863045533 
		0.13695306484855047;
	setAttr -s 3 ".wl[774].w[33:35]"  0.0001772829653288459 0.83583061610215592 
		0.16399210093251521;
	setAttr -s 3 ".wl[775].w[33:35]"  0.00091775038271673358 0.63435577268634069 
		0.36472647693094262;
	setAttr -s 3 ".wl[776].w[33:35]"  2.5001195387392673e-005 0.5043460478126216 
		0.49562895099199106;
	setAttr -s 3 ".wl[777].w[33:35]"  2.8727277409571014e-005 0.50893968626620312 
		0.49103158645638734;
	setAttr -s 3 ".wl[778].w[33:35]"  1.2877034618718105e-005 0.51074767447361191 
		0.48923944849176937;
	setAttr -s 3 ".wl[779].w[33:35]"  6.49018502636748e-006 0.50952987982629017 
		0.49046362998868342;
	setAttr -s 3 ".wl[780].w[33:35]"  2.583450122580552e-005 0.59613484506789105 
		0.40383932043088316;
	setAttr -s 3 ".wl[781].w[33:35]"  6.7590297787055838e-006 0.52581312985032036 
		0.47418011111990094;
	setAttr -s 3 ".wl[782].w[33:35]"  3.0296934648604432e-005 0.52721628107720986 
		0.47275342198814146;
	setAttr -s 3 ".wl[783].w[33:35]"  0.00034145202093603552 0.55414382806031925 
		0.44551471991874469;
	setAttr -s 3 ".wl[784].w[33:35]"  5.8481910151128463e-006 0.50120776057217453 
		0.49878639123681046;
	setAttr -s 3 ".wl[785].w[33:35]"  9.7217942071921559e-006 0.50332221366896901 
		0.49666806453682372;
	setAttr -s 3 ".wl[786].w[33:35]"  3.3319557622073467e-006 0.5023994413861369 
		0.49759722665810102;
	setAttr -s 3 ".wl[787].w[33:35]"  3.4389003271297123e-006 0.50516795159694905 
		0.49482860950272378;
	setAttr -s 3 ".wl[788].w[33:35]"  2.3873672492642754e-006 0.50737668287777837 
		0.49262092975497251;
	setAttr -s 3 ".wl[789].w[33:35]"  1.7272941570524356e-006 0.50401080732334402 
		0.49598746538249905;
	setAttr -s 3 ".wl[790].w[33:35]"  7.584879542616865e-006 0.503430312541437 
		0.49656210257902034;
	setAttr -s 3 ".wl[791].w[33:35]"  2.783391896907811e-005 0.50462531105942765 
		0.49534685502160325;
	setAttr -s 3 ".wl[792].w[33:35]"  1.3305216681059442e-006 0.50044942172291573 
		0.49954924775541615;
	setAttr -s 3 ".wl[793].w[33:35]"  1.2767205624056234e-006 0.5005379282065987 
		0.49946079507283897;
	setAttr -s 3 ".wl[794].w[33:35]"  9.5438766779611162e-007 0.50055218443429716 
		0.49944686117803516;
	setAttr -s 3 ".wl[795].w[33:35]"  7.7986302969575315e-007 0.50064256982436095 
		0.49935665031260934;
	setAttr -s 3 ".wl[796].w[33:35]"  7.2961347456989979e-007 0.5007680840027795 
		0.49923118638374603;
	setAttr -s 3 ".wl[797].w[33:35]"  7.3634283905448467e-007 0.50062268741081184 
		0.49937657624634907;
	setAttr -s 3 ".wl[798].w[33:35]"  1.1618363485805267e-006 0.50048590128217307 
		0.49951293688147846;
	setAttr -s 3 ".wl[799].w[33:35]"  1.6205682645727472e-006 0.50045196712302742 
		0.49954641230870794;
	setAttr -s 3 ".wl[800].w";
	setAttr ".wl[800].w[32]" 0.0095994640908804441;
	setAttr ".wl[800].w[45]" 0.12014465422632567;
	setAttr ".wl[800].w[46]" 0.87025588168279411;
	setAttr -s 3 ".wl[801].w";
	setAttr ".wl[801].w[32]" 0.031079065229860571;
	setAttr ".wl[801].w[45]" 0.24769701670380645;
	setAttr ".wl[801].w[46]" 0.72122391806633301;
	setAttr -s 3 ".wl[802].w";
	setAttr ".wl[802].w[32]" 0.033508356747238566;
	setAttr ".wl[802].w[45]" 0.053438434798619608;
	setAttr ".wl[802].w[46]" 0.91305320845414184;
	setAttr -s 3 ".wl[803].w";
	setAttr ".wl[803].w[32]" 0.086311336971218428;
	setAttr ".wl[803].w[45]" 0.020824954743117803;
	setAttr ".wl[803].w[46]" 0.89286370828566386;
	setAttr -s 3 ".wl[804].w";
	setAttr ".wl[804].w[32]" 0.033693347377813231;
	setAttr ".wl[804].w[45]" 0.076425699558940977;
	setAttr ".wl[804].w[46]" 0.88988095306324588;
	setAttr -s 3 ".wl[805].w[45:47]"  0.07438624073672051 0.91814247650510772 
		0.0074712827581718067;
	setAttr -s 3 ".wl[806].w[45:47]"  0.10746496247981374 0.88679692993732107 
		0.0057381075828652466;
	setAttr -s 3 ".wl[807].w[45:47]"  0.042114405203744217 0.87742133967669023 
		0.080464255119565745;
	setAttr -s 3 ".wl[808].w[45:47]"  0.02771268220531042 0.95446270136689426 
		0.017824616427795287;
	setAttr -s 3 ".wl[809].w";
	setAttr ".wl[809].w[32]" 0.023673924638268066;
	setAttr ".wl[809].w[46]" 0.95252913552278107;
	setAttr ".wl[809].w[47]" 0.023796939838950894;
	setAttr -s 3 ".wl[810].w";
	setAttr ".wl[810].w[32]" 0.035210778142903507;
	setAttr ".wl[810].w[46]" 0.93817195268337328;
	setAttr ".wl[810].w[47]" 0.026617269173723347;
	setAttr -s 3 ".wl[811].w";
	setAttr ".wl[811].w[32]" 0.0072161095908132638;
	setAttr ".wl[811].w[46]" 0.96450432738120917;
	setAttr ".wl[811].w[47]" 0.028279563027977628;
	setAttr -s 3 ".wl[812].w[45:47]"  0.020359079207249272 0.88843873563223252 
		0.091202185160518326;
	setAttr -s 3 ".wl[813].w[45:47]"  0.0089815737874739086 0.94119447639729448 
		0.049823949815231708;
	setAttr -s 3 ".wl[814].w[45:47]"  0.01459671797996423 0.95332035417965522 
		0.032082927840380471;
	setAttr -s 3 ".wl[815].w[45:47]"  0.0085609580303772879 0.72759590553922437 
		0.26384313643039842;
	setAttr -s 3 ".wl[816].w[45:47]"  0.0036038256875466179 0.94242666796166108 
		0.053969506350792285;
	setAttr -s 3 ".wl[817].w";
	setAttr ".wl[817].w[32]" 0.0033530269181235531;
	setAttr ".wl[817].w[46]" 0.94822875274722951;
	setAttr ".wl[817].w[47]" 0.048418220334646947;
	setAttr -s 3 ".wl[818].w";
	setAttr ".wl[818].w[32]" 0.004175573747289902;
	setAttr ".wl[818].w[46]" 0.94647373527595158;
	setAttr ".wl[818].w[47]" 0.04935069097675851;
	setAttr -s 3 ".wl[819].w";
	setAttr ".wl[819].w[32]" 0.0012223324014899388;
	setAttr ".wl[819].w[46]" 0.84936749842137371;
	setAttr ".wl[819].w[47]" 0.14941016917713634;
	setAttr -s 3 ".wl[820].w[45:47]"  0.0021214601170437032 0.84583846938871554 
		0.1520400704942409;
	setAttr -s 3 ".wl[821].w[45:47]"  0.002869149196653088 0.67383531652257189 
		0.32329553428077507;
	setAttr -s 3 ".wl[822].w[45:47]"  0.0020972186397243305 0.83662459913164833 
		0.1612781822286275;
	setAttr -s 3 ".wl[823].w[45:47]"  0.00050301891074000938 0.52469245841493428 
		0.4748045226743256;
	setAttr -s 3 ".wl[824].w[45:47]"  0.00064087842713826334 0.82870265702511758 
		0.170656464547744;
	setAttr -s 3 ".wl[825].w";
	setAttr ".wl[825].w[32]" 0.0012383411549428689;
	setAttr ".wl[825].w[46]" 0.76481090174269295;
	setAttr ".wl[825].w[47]" 0.23395075710236418;
	setAttr -s 3 ".wl[826].w";
	setAttr ".wl[826].w[32]" 0.00068449807837219531;
	setAttr ".wl[826].w[46]" 0.82207262929383518;
	setAttr ".wl[826].w[47]" 0.17724287262779256;
	setAttr -s 3 ".wl[827].w";
	setAttr ".wl[827].w[32]" 9.9542923896834597e-005;
	setAttr ".wl[827].w[46]" 0.53163740338216947;
	setAttr ".wl[827].w[47]" 0.46826305369393378;
	setAttr -s 3 ".wl[828].w[45:47]"  0.00015222016623108489 0.52476332150912597 
		0.47508445832464308;
	setAttr -s 3 ".wl[829].w[45:47]"  0.0002390535792234375 0.51615292255198686 
		0.48360802386878976;
	setAttr -s 3 ".wl[830].w[45:47]"  0.00016210784008688665 0.52095879644432586 
		0.47887909571558734;
	setAttr -s 3 ".wl[831].w[45:47]"  4.2236758231449592e-005 0.50333624887468098 
		0.49662151436708757;
	setAttr -s 3 ".wl[832].w[45:47]"  5.147704590401992e-005 0.5209469847739161 
		0.47900153818017993;
	setAttr -s 3 ".wl[833].w";
	setAttr ".wl[833].w[32]" 0.00030489543940208195;
	setAttr ".wl[833].w[46]" 0.57614815510437623;
	setAttr ".wl[833].w[47]" 0.42354694945622179;
	setAttr -s 3 ".wl[834].w";
	setAttr ".wl[834].w[32]" 5.7004164057419557e-005;
	setAttr ".wl[834].w[46]" 0.5224252182451099;
	setAttr ".wl[834].w[47]" 0.47751777759083286;
	setAttr -s 3 ".wl[835].w";
	setAttr ".wl[835].w[32]" 1.2652032087095449e-005;
	setAttr ".wl[835].w[46]" 0.5042505992187063;
	setAttr ".wl[835].w[47]" 0.4957367487492067;
	setAttr -s 3 ".wl[836].w[45:47]"  1.949495698047969e-005 0.50290657202019273 
		0.49707393302282671;
	setAttr -s 3 ".wl[837].w[45:47]"  9.8150335990701313e-005 0.50725091789104615 
		0.49265093177296315;
	setAttr -s 3 ".wl[838].w[45:47]"  2.2501418659276497e-005 0.50245216935101522 
		0.49752532923032555;
	setAttr -s 3 ".wl[839].w[45:47]"  1.388027776745007e-005 0.5017649929748681 
		0.49822112674736452;
	setAttr -s 3 ".wl[840].w[45:47]"  7.8495642754965412e-006 0.50248808913878773 
		0.49750406129693681;
	setAttr -s 3 ".wl[841].w";
	setAttr ".wl[841].w[32]" 2.1593531920896576e-005;
	setAttr ".wl[841].w[46]" 0.50569994485782055;
	setAttr ".wl[841].w[47]" 0.49427846161025857;
	setAttr -s 3 ".wl[842].w";
	setAttr ".wl[842].w[32]" 7.8034304601319183e-006;
	setAttr ".wl[842].w[46]" 0.5026619204657421;
	setAttr ".wl[842].w[47]" 0.49733027610379793;
	setAttr -s 3 ".wl[843].w";
	setAttr ".wl[843].w[32]" 2.2235171484864725e-006;
	setAttr ".wl[843].w[46]" 0.50074016367470453;
	setAttr ".wl[843].w[47]" 0.49925761280814701;
	setAttr -s 3 ".wl[844].w[45:47]"  3.9706029383403023e-006 0.50056289121570319 
		0.49943313818135865;
	setAttr -s 3 ".wl[845].w[45:47]"  1.223278081727412e-005 0.5009550966357682 
		0.49903267058341466;
	setAttr -s 3 ".wl[846].w[45:47]"  5.6239500709179036e-006 0.50059012062515229 
		0.49940425542477673;
	setAttr -s 3 ".wl[847].w[45:47]"  1.4460408342517724e-006 0.50029204815895978 
		0.49970650580020609;
	setAttr -s 3 ".wl[848].w[45:47]"  1.5423670622662957e-006 0.50042038093705576 
		0.49957807669588206;
	setAttr -s 3 ".wl[849].w";
	setAttr ".wl[849].w[32]" 2.0372084118968239e-006;
	setAttr ".wl[849].w[46]" 0.50060512830320836;
	setAttr ".wl[849].w[47]" 0.49939283448837979;
	setAttr -s 3 ".wl[850].w";
	setAttr ".wl[850].w[32]" 2.0383033159704248e-006;
	setAttr ".wl[850].w[46]" 0.5006171274153085;
	setAttr ".wl[850].w[47]" 0.49938083428137553;
	setAttr -s 3 ".wl[851].w[45:47]"  1.2846582513811272e-006 0.50036944563347852 
		0.4996292697082701;
	setAttr -s 3 ".wl[852].w[45:47]"  1.1775206509490453e-006 0.50023384179595798 
		0.49976498068339098;
	setAttr -s 3 ".wl[853].w[45:47]"  1.8398529516335695e-006 0.50025743742339712 
		0.49974072272365122;
	setAttr -s 3 ".wl[854].w[45:47]"  1.5839938265734672e-006 0.50023911973035473 
		0.49975929627581861;
	setAttr -s 3 ".wl[855].w[45:47]"  2.8814994306929764e-006 0.50045850608301012 
		0.4995386124175592;
	setAttr -s 3 ".wl[856].w[45:47]"  2.7352098090906774e-006 0.50079209204035247 
		0.4992051727498385;
	setAttr -s 3 ".wl[857].w";
	setAttr ".wl[857].w[32]" 6.2270351542909661e-006;
	setAttr ".wl[857].w[46]" 0.50177156254087363;
	setAttr ".wl[857].w[47]" 0.49822221042397208;
	setAttr -s 3 ".wl[858].w";
	setAttr ".wl[858].w[32]" 4.310222444872911e-006;
	setAttr ".wl[858].w[46]" 0.5013287274685424;
	setAttr ".wl[858].w[47]" 0.49866696230901292;
	setAttr -s 3 ".wl[859].w";
	setAttr ".wl[859].w[32]" 1.4262649421691348e-006;
	setAttr ".wl[859].w[46]" 0.50044517334675176;
	setAttr ".wl[859].w[47]" 0.49955340038830598;
	setAttr -s 3 ".wl[860].w[45:47]"  1.4600212264954013e-006 0.50023897079778401 
		0.49975956918098968;
	setAttr -s 3 ".wl[861].w[45:47]"  3.1396560985211213e-006 0.50030247438700115 
		0.49969438595690047;
	setAttr -s 3 ".wl[862].w[45:47]"  3.4455013550499341e-006 0.50041041451852575 
		0.49958613998011908;
	setAttr -s 3 ".wl[863].w[33:35]"  2.2599200490723556e-006 0.50057562159076152 
		0.49942211848918938;
	setAttr -s 3 ".wl[864].w[33:35]"  3.4198843559019632e-006 0.50126553047162592 
		0.4987310496440181;
	setAttr -s 3 ".wl[865].w[33:35]"  1.4816263500675162e-006 0.50091880186291282 
		0.49907971651073713;
	setAttr -s 3 ".wl[866].w[33:35]"  1.0798583820437929e-006 0.50136815385667111 
		0.49863076628494679;
	setAttr -s 3 ".wl[867].w[33:35]"  1.2935136352945214e-006 0.50250705690170439 
		0.49749164958466024;
	setAttr -s 3 ".wl[868].w[33:35]"  9.380687051295675e-007 0.50131234585885154 
		0.49868671607244341;
	setAttr -s 3 ".wl[869].w[33:35]"  2.2678576183897674e-006 0.50088411060939708 
		0.49911362153298466;
	setAttr -s 3 ".wl[870].w[33:35]"  4.9128202016584653e-006 0.50094129294558276 
		0.49905379423421559;
	setAttr -s 3 ".wl[871].w[36:38]"  6.729988444328693e-007 0.5003206974152874 
		0.49967862958586812;
	setAttr -s 3 ".wl[872].w[36:38]"  9.014221632013915e-007 0.5003848800606322 
		0.4996142185172045;
	setAttr -s 3 ".wl[873].w[36:38]"  9.2568364327192992e-007 0.50063195815932326 
		0.49936711615703344;
	setAttr -s 3 ".wl[874].w[36:38]"  1.4086437993217877e-006 0.50149900843370931 
		0.49849958292249136;
	setAttr -s 3 ".wl[875].w[36:38]"  1.6460865399850127e-006 0.50184552499961443 
		0.49815282891384571;
	setAttr -s 3 ".wl[876].w[36:38]"  2.1812633766854732e-006 0.50144861622231018 
		0.49854920251431317;
	setAttr -s 3 ".wl[877].w[36:38]"  1.9456919724764441e-006 0.50102381665087414 
		0.49897423765715349;
	setAttr -s 3 ".wl[878].w[36:38]"  1.6552236844485698e-006 0.50083704042755717 
		0.49916130434875849;
	setAttr -s 3 ".wl[879].w[39:41]"  1.9682128999064662e-007 0.50022362153577471 
		0.49977618164293536;
	setAttr -s 3 ".wl[880].w[39:41]"  2.1463102327529708e-007 0.50017181053933712 
		0.49982797482963964;
	setAttr -s 3 ".wl[881].w[39:41]"  2.3661025099696154e-007 0.50018874124066515 
		0.49981102214908402;
	setAttr -s 3 ".wl[882].w[39:41]"  3.1685475430278227e-007 0.50032919838351941 
		0.49967048476172632;
	setAttr -s 3 ".wl[883].w[39:41]"  3.2624779661667418e-007 0.50038318375309021 
		0.49961648999911307;
	setAttr -s 3 ".wl[884].w[39:41]"  5.8980350670743351e-007 0.50077975701125232 
		0.49921965318524097;
	setAttr -s 3 ".wl[885].w[39:41]"  3.1064322235644679e-007 0.50051343765197043 
		0.49948625170480726;
	setAttr -s 3 ".wl[886].w[39:41]"  2.228141788771369e-007 0.50041676480635555 
		0.49958301237946567;
	setAttr -s 3 ".wl[887].w[42:44]"  6.5687815139085632e-007 0.50074529739457607 
		0.49925404572727261;
	setAttr -s 3 ".wl[888].w[42:44]"  8.0789090329517421e-007 0.50063053070564056 
		0.4993686614034562;
	setAttr -s 3 ".wl[889].w[42:44]"  1.0044931845283314e-006 0.500645754170714 
		0.49935324133610143;
	setAttr -s 3 ".wl[890].w[42:44]"  4.0274713815913549e-007 0.50031795234209997 
		0.49968164491076184;
	setAttr -s 3 ".wl[891].w[42:44]"  2.2978625822234705e-007 0.50033648032606093 
		0.49966328988768094;
	setAttr -s 3 ".wl[892].w[42:44]"  5.4291345516651939e-007 0.5010794377576242 
		0.49892001932892055;
	setAttr -s 3 ".wl[893].w[42:44]"  9.8416758385551521e-007 0.50154129284085969 
		0.49845772299155655;
	setAttr -s 3 ".wl[894].w[42:44]"  6.1059306463407051e-007 0.50095151275707628 
		0.49904787664985911;
	setAttr -s 3 ".wl[895].w";
	setAttr ".wl[895].w[32]" 0.26510433789530341;
	setAttr ".wl[895].w[39]" 0.33850486462515533;
	setAttr ".wl[895].w[42]" 0.3963907974795412;
	setAttr -s 3 ".wl[896].w";
	setAttr ".wl[896].w[32]" 0.21780955594242202;
	setAttr ".wl[896].w[39]" 0.3980874742390127;
	setAttr ".wl[896].w[42]" 0.38410296981856534;
	setAttr -s 3 ".wl[897].w";
	setAttr ".wl[897].w[32]" 0.42050550488532917;
	setAttr ".wl[897].w[39]" 0.32744482014376053;
	setAttr ".wl[897].w[42]" 0.2520496749709103;
	setAttr -s 3 ".wl[898].w";
	setAttr ".wl[898].w[32]" 0.38773474701450206;
	setAttr ".wl[898].w[36]" 0.28634855832318334;
	setAttr ".wl[898].w[39]" 0.3259166946623146;
	setAttr -s 3 ".wl[899].w";
	setAttr ".wl[899].w[32]" 0.23394795797638199;
	setAttr ".wl[899].w[36]" 0.3901601451499257;
	setAttr ".wl[899].w[39]" 0.37589189687369218;
	setAttr -s 3 ".wl[900].w";
	setAttr ".wl[900].w[32]" 0.2727028510908775;
	setAttr ".wl[900].w[36]" 0.37809495708194418;
	setAttr ".wl[900].w[39]" 0.34920219182717843;
	setAttr -s 3 ".wl[901].w";
	setAttr ".wl[901].w[32]" 0.14634863197989076;
	setAttr ".wl[901].w[33]" 0.4448648626020662;
	setAttr ".wl[901].w[36]" 0.40878650541804301;
	setAttr -s 3 ".wl[902].w";
	setAttr ".wl[902].w[32]" 0.11250483563211899;
	setAttr ".wl[902].w[33]" 0.47051318305613615;
	setAttr ".wl[902].w[36]" 0.41698198131174491;
	setAttr -s 3 ".wl[903].w";
	setAttr ".wl[903].w[32]" 0.3438367015534004;
	setAttr ".wl[903].w[33]" 0.32166183854194136;
	setAttr ".wl[903].w[36]" 0.33450145990465824;
	setAttr -s 3 ".wl[904].w";
	setAttr ".wl[904].w[32]" 0.06875130561113052;
	setAttr ".wl[904].w[33]" 0.011096978706603963;
	setAttr ".wl[904].w[36]" 0.92015171568226561;
	setAttr -s 3 ".wl[905].w";
	setAttr ".wl[905].w[32]" 0.46408395043861045;
	setAttr ".wl[905].w[39]" 0.43194317610604277;
	setAttr ".wl[905].w[42]" 0.10397287345534682;
	setAttr -s 3 ".wl[906].w";
	setAttr ".wl[906].w[32]" 0.38172175574271905;
	setAttr ".wl[906].w[39]" 0.1054489830570613;
	setAttr ".wl[906].w[42]" 0.51282926120021977;
	setAttr -s 3 ".wl[907].w";
	setAttr ".wl[907].w[32]" 0.052894635818704065;
	setAttr ".wl[907].w[33]" 0.93067078440779649;
	setAttr ".wl[907].w[36]" 0.016434579773499453;
	setAttr -s 3 ".wl[908].w";
	setAttr ".wl[908].w[32]" 0.10366220550630327;
	setAttr ".wl[908].w[33]" 0.89506093968008227;
	setAttr ".wl[908].w[36]" 0.0012768548136143428;
	setAttr -s 3 ".wl[909].w";
	setAttr ".wl[909].w[32]" 0.51413198780020353;
	setAttr ".wl[909].w[39]" 0.044098577715626738;
	setAttr ".wl[909].w[42]" 0.44176943448416989;
	setAttr -s 3 ".wl[910].w";
	setAttr ".wl[910].w[32]" 0.66442315867975288;
	setAttr ".wl[910].w[39]" 0.018249765311823197;
	setAttr ".wl[910].w[42]" 0.31732707600842386;
	setAttr -s 3 ".wl[911].w";
	setAttr ".wl[911].w[32]" 0.95232711459622743;
	setAttr ".wl[911].w[39]" 0.0018983945838882276;
	setAttr ".wl[911].w[42]" 0.045774490819884446;
	setAttr -s 3 ".wl[912].w";
	setAttr ".wl[912].w[32]" 0.97558848621692573;
	setAttr ".wl[912].w[39]" 0.007072312536777709;
	setAttr ".wl[912].w[42]" 0.017339201246296673;
	setAttr -s 3 ".wl[913].w";
	setAttr ".wl[913].w[32]" 0.97041781644253566;
	setAttr ".wl[913].w[39]" 0.02550781622935392;
	setAttr ".wl[913].w[42]" 0.0040743673281103494;
	setAttr -s 3 ".wl[914].w";
	setAttr ".wl[914].w[32]" 0.96821548106895239;
	setAttr ".wl[914].w[36]" 0.025443297734449647;
	setAttr ".wl[914].w[39]" 0.0063412211965979768;
	setAttr -s 3 ".wl[915].w";
	setAttr ".wl[915].w[32]" 0.97041586402184232;
	setAttr ".wl[915].w[33]" 0.021816649920034702;
	setAttr ".wl[915].w[36]" 0.0077674860581229731;
	setAttr -s 3 ".wl[916].w";
	setAttr ".wl[916].w[32]" 0.9023331237107296;
	setAttr ".wl[916].w[33]" 0.095963271486661381;
	setAttr ".wl[916].w[46]" 0.0017036048026091181;
	setAttr -s 3 ".wl[917].w";
	setAttr ".wl[917].w[32]" 0.49406735351119629;
	setAttr ".wl[917].w[33]" 0.50546584983870613;
	setAttr ".wl[917].w[46]" 0.00046679665009760764;
	setAttr -s 3 ".wl[918].w";
	setAttr ".wl[918].w[32]" 0.93131692548732514;
	setAttr ".wl[918].w[33]" 0.039249917720442132;
	setAttr ".wl[918].w[36]" 0.029433156792232705;
	setAttr -s 3 ".wl[919].w";
	setAttr ".wl[919].w[32]" 0.91120144891932531;
	setAttr ".wl[919].w[36]" 0.065489615096141859;
	setAttr ".wl[919].w[39]" 0.023308935984532965;
	setAttr -s 3 ".wl[920].w";
	setAttr ".wl[920].w[32]" 0.71691855884167077;
	setAttr ".wl[920].w[39]" 0.12175437851018753;
	setAttr ".wl[920].w[42]" 0.16132706264814173;
	setAttr -s 3 ".wl[921].w";
	setAttr ".wl[921].w[32]" 0.96766473344369874;
	setAttr ".wl[921].w[39]" 0.020190850122812957;
	setAttr ".wl[921].w[42]" 0.01214441643348824;
	setAttr -s 3 ".wl[922].w";
	setAttr ".wl[922].w[32]" 0.97907199954942292;
	setAttr ".wl[922].w[36]" 0.0090472465057665954;
	setAttr ".wl[922].w[45]" 0.011880753944810547;
	setAttr -s 3 ".wl[923].w";
	setAttr ".wl[923].w[32]" 0.99623528510472492;
	setAttr ".wl[923].w[39]" 0.0016973223436397363;
	setAttr ".wl[923].w[45]" 0.0020673925516354863;
	setAttr -s 3 ".wl[924].w";
	setAttr ".wl[924].w[32]" 0.97685839856956458;
	setAttr ".wl[924].w[39]" 0.0069092934129020688;
	setAttr ".wl[924].w[42]" 0.016232308017533493;
	setAttr -s 3 ".wl[925].w";
	setAttr ".wl[925].w[32]" 0.68028225293582112;
	setAttr ".wl[925].w[33]" 0.29818692829603355;
	setAttr ".wl[925].w[46]" 0.021530818768145461;
	setAttr -s 3 ".wl[926].w";
	setAttr ".wl[926].w[32]" 0.86786286407643343;
	setAttr ".wl[926].w[33]" 0.11937030104281805;
	setAttr ".wl[926].w[46]" 0.012766834880748498;
	setAttr -s 3 ".wl[927].w";
	setAttr ".wl[927].w[32]" 0.79294101722419874;
	setAttr ".wl[927].w[45]" 0.057227765436113437;
	setAttr ".wl[927].w[46]" 0.14983121733968774;
	setAttr -s 3 ".wl[928].w";
	setAttr ".wl[928].w[32]" 0.99192001734490265;
	setAttr ".wl[928].w[33]" 0.0037330473079826257;
	setAttr ".wl[928].w[36]" 0.0043469353471147039;
	setAttr -s 3 ".wl[929].w";
	setAttr ".wl[929].w[32]" 0.98467838874769797;
	setAttr ".wl[929].w[36]" 0.0071812605065439553;
	setAttr ".wl[929].w[39]" 0.0081403507457581091;
	setAttr -s 3 ".wl[930].w";
	setAttr ".wl[930].w[32]" 0.98993955419068735;
	setAttr ".wl[930].w[39]" 0.0057306367385687867;
	setAttr ".wl[930].w[42]" 0.0043298090707438374;
	setAttr -s 3 ".wl[931].w";
	setAttr ".wl[931].w[32]" 0.99960307038357543;
	setAttr ".wl[931].w[36]" 0.00012368730737230823;
	setAttr ".wl[931].w[39]" 0.00027324230905238989;
	setAttr -s 3 ".wl[932].w";
	setAttr ".wl[932].w[32]" 0.99847397099102975;
	setAttr ".wl[932].w[39]" 0.00053787525859297402;
	setAttr ".wl[932].w[45]" 0.00098815375037721964;
	setAttr -s 3 ".wl[933].w";
	setAttr ".wl[933].w[32]" 0.99798582325594476;
	setAttr ".wl[933].w[39]" 0.0010521941940326897;
	setAttr ".wl[933].w[42]" 0.00096198255002270631;
	setAttr -s 3 ".wl[934].w";
	setAttr ".wl[934].w[32]" 0.9893079672020203;
	setAttr ".wl[934].w[45]" 0.0091230063301355174;
	setAttr ".wl[934].w[46]" 0.0015690264678442033;
	setAttr -s 3 ".wl[935].w";
	setAttr ".wl[935].w[32]" 0.97927131284161151;
	setAttr ".wl[935].w[45]" 0.016959417425688534;
	setAttr ".wl[935].w[46]" 0.0037692697327000304;
	setAttr -s 3 ".wl[936].w";
	setAttr ".wl[936].w[32]" 0.96886758381633087;
	setAttr ".wl[936].w[45]" 0.022259765891722461;
	setAttr ".wl[936].w[46]" 0.0088726502919466831;
	setAttr -s 3 ".wl[937].w";
	setAttr ".wl[937].w[32]" 0.9990892059101012;
	setAttr ".wl[937].w[39]" 0.00020306046167757827;
	setAttr ".wl[937].w[42]" 0.00070773362822116389;
	setAttr -s 3 ".wl[938].w";
	setAttr ".wl[938].w[32]" 0.98891339974394499;
	setAttr ".wl[938].w[39]" 0.00093033416075375579;
	setAttr ".wl[938].w[42]" 0.010156266095301238;
	setAttr -s 3 ".wl[939].w";
	setAttr ".wl[939].w[32]" 0.98716298029802552;
	setAttr ".wl[939].w[39]" 0.0011073126202985754;
	setAttr ".wl[939].w[42]" 0.011729707081675934;
	setAttr -s 3 ".wl[940].w";
	setAttr ".wl[940].w[32]" 0.91608973875841659;
	setAttr ".wl[940].w[33]" 0.030688341430532933;
	setAttr ".wl[940].w[46]" 0.053221919811050483;
	setAttr -s 3 ".wl[941].w";
	setAttr ".wl[941].w[32]" 0.294332264221984;
	setAttr ".wl[941].w[45]" 0.66530841104964111;
	setAttr ".wl[941].w[46]" 0.040359324728374779;
	setAttr -s 3 ".wl[942].w";
	setAttr ".wl[942].w[31]" 0.00038726164229511262;
	setAttr ".wl[942].w[32]" 0.99954024366651717;
	setAttr ".wl[942].w[45]" 7.2494691187897933e-005;
	setAttr -s 3 ".wl[943].w";
	setAttr ".wl[943].w[31]" 0.00025154076320020802;
	setAttr ".wl[943].w[32]" 0.99927110012355302;
	setAttr ".wl[943].w[45]" 0.00047735911324679005;
	setAttr -s 3 ".wl[944].w";
	setAttr ".wl[944].w[31]" 0.00027763092412757385;
	setAttr ".wl[944].w[32]" 0.99965896664537635;
	setAttr ".wl[944].w[42]" 6.340243049604906e-005;
	setAttr -s 3 ".wl[945].w";
	setAttr ".wl[945].w[31]" 0.0024213042536553428;
	setAttr ".wl[945].w[32]" 0.99484818171111911;
	setAttr ".wl[945].w[45]" 0.0027305140352255944;
	setAttr -s 3 ".wl[946].w";
	setAttr ".wl[946].w[32]" 0.9777130304387005;
	setAttr ".wl[946].w[45]" 0.020819670076818592;
	setAttr ".wl[946].w[46]" 0.001467299484480932;
	setAttr -s 3 ".wl[947].w";
	setAttr ".wl[947].w[32]" 0.8660914327111261;
	setAttr ".wl[947].w[45]" 0.12653988866272181;
	setAttr ".wl[947].w[46]" 0.007368678626152151;
	setAttr -s 3 ".wl[948].w";
	setAttr ".wl[948].w[31]" 0.0023728726184758953;
	setAttr ".wl[948].w[32]" 0.99759111826486768;
	setAttr ".wl[948].w[42]" 3.6009116656592779e-005;
	setAttr -s 3 ".wl[949].w";
	setAttr ".wl[949].w[31]" 0.0038290947854733811;
	setAttr ".wl[949].w[32]" 0.99562724183095119;
	setAttr ".wl[949].w[42]" 0.00054366338357546339;
	setAttr -s 3 ".wl[950].w";
	setAttr ".wl[950].w[31]" 0.0047124712288721176;
	setAttr ".wl[950].w[32]" 0.99516119771869305;
	setAttr ".wl[950].w[45]" 0.0001263310524350073;
	setAttr -s 3 ".wl[951].w";
	setAttr ".wl[951].w[32]" 0.94488696050481225;
	setAttr ".wl[951].w[45]" 0.046001421539969646;
	setAttr ".wl[951].w[46]" 0.0091116179552180616;
	setAttr -s 3 ".wl[952].w";
	setAttr ".wl[952].w[32]" 0.083653249681801378;
	setAttr ".wl[952].w[45]" 0.88531578261195587;
	setAttr ".wl[952].w[46]" 0.031030967706242956;
	setAttr -s 3 ".wl[953].w";
	setAttr ".wl[953].w[32]" 0.49347498327387462;
	setAttr ".wl[953].w[45]" 0.12155560962889711;
	setAttr ".wl[953].w[46]" 0.38496940709722827;
	setAttr -s 3 ".wl[954].w";
	setAttr ".wl[954].w[32]" 0.64808197718737437;
	setAttr ".wl[954].w[45]" 0.2661159490847258;
	setAttr ".wl[954].w[46]" 0.085802073727899844;
	setAttr -s 3 ".wl[955].w";
	setAttr ".wl[955].w[32]" 0.98811990593674226;
	setAttr ".wl[955].w[45]" 0.011359227979650414;
	setAttr ".wl[955].w[46]" 0.00052086608360733572;
	setAttr -s 3 ".wl[956].w";
	setAttr ".wl[956].w[31]" 0.01557495388775177;
	setAttr ".wl[956].w[32]" 0.9836029771483884;
	setAttr ".wl[956].w[42]" 0.00082206896385984536;
	setAttr -s 3 ".wl[957].w";
	setAttr ".wl[957].w[31]" 0.0021116347275214609;
	setAttr ".wl[957].w[32]" 0.99296605177277775;
	setAttr ".wl[957].w[45]" 0.0049223134997008026;
	setAttr -s 3 ".wl[958].w";
	setAttr ".wl[958].w[31]" 0.010771879126553361;
	setAttr ".wl[958].w[32]" 0.97825577371654915;
	setAttr ".wl[958].w[45]" 0.010972347156897506;
	setAttr -s 3 ".wl[959].w";
	setAttr ".wl[959].w[31]" 0.024926606423000593;
	setAttr ".wl[959].w[32]" 0.86862778765405657;
	setAttr ".wl[959].w[45]" 0.10644560592294285;
	setAttr -s 3 ".wl[960].w";
	setAttr ".wl[960].w[32]" 0.44023470267714354;
	setAttr ".wl[960].w[45]" 0.41874758039114157;
	setAttr ".wl[960].w[46]" 0.14101771693171494;
	setAttr -s 3 ".wl[961].w";
	setAttr ".wl[961].w[32]" 0.022478358502937792;
	setAttr ".wl[961].w[45]" 0.86802126319584494;
	setAttr ".wl[961].w[46]" 0.10950037830121739;
	setAttr -s 3 ".wl[962].w";
	setAttr ".wl[962].w[32]" 0.003266614193301738;
	setAttr ".wl[962].w[45]" 0.49865952821252862;
	setAttr ".wl[962].w[46]" 0.49807385759416967;
	setAttr -s 3 ".wl[963].w";
	setAttr ".wl[963].w[32]" 0.0046753561814576079;
	setAttr ".wl[963].w[45]" 0.39349203959531681;
	setAttr ".wl[963].w[46]" 0.60183260422322549;
	setAttr -s 3 ".wl[964].w";
	setAttr ".wl[964].w[32]" 0.0094749898431476572;
	setAttr ".wl[964].w[45]" 0.48461190644112945;
	setAttr ".wl[964].w[46]" 0.50591310371572296;
	setAttr -s 3 ".wl[965].w";
	setAttr ".wl[965].w[32]" 0.057964694882322094;
	setAttr ".wl[965].w[45]" 0.57171713638641275;
	setAttr ".wl[965].w[46]" 0.37031816873126516;
	setAttr -s 3 ".wl[966].w";
	setAttr ".wl[966].w[32]" 0.04078825631173022;
	setAttr ".wl[966].w[45]" 0.89791284411707528;
	setAttr ".wl[966].w[46]" 0.061298899571194582;
	setAttr -s 3 ".wl[967].w";
	setAttr ".wl[967].w[32]" 0.1939994201159696;
	setAttr ".wl[967].w[45]" 0.4825324115909449;
	setAttr ".wl[967].w[46]" 0.3234681682930855;
	setAttr -s 3 ".wl[968].w";
	setAttr ".wl[968].w[32]" 0.14427475601692225;
	setAttr ".wl[968].w[45]" 0.8317932950468333;
	setAttr ".wl[968].w[46]" 0.023931948936244649;
	setAttr -s 3 ".wl[969].w";
	setAttr ".wl[969].w[32]" 0.77338042717534972;
	setAttr ".wl[969].w[45]" 0.21837977636276854;
	setAttr ".wl[969].w[46]" 0.0082397964618816134;
	setAttr -s 3 ".wl[970].w";
	setAttr ".wl[970].w[32]" 0.87810042977442193;
	setAttr ".wl[970].w[45]" 0.11743764754067049;
	setAttr ".wl[970].w[46]" 0.0044619226849076871;
	setAttr -s 3 ".wl[971].w";
	setAttr ".wl[971].w[32]" 0.91449049308141528;
	setAttr ".wl[971].w[45]" 0.080955741068859985;
	setAttr ".wl[971].w[46]" 0.0045537658497249072;
	setAttr -s 3 ".wl[972].w";
	setAttr ".wl[972].w[32]" 0.15884253922091626;
	setAttr ".wl[972].w[45]" 0.7836183760117329;
	setAttr ".wl[972].w[46]" 0.057539084767350805;
	setAttr -s 3 ".wl[973].w";
	setAttr ".wl[973].w[32]" 0.14139085395662188;
	setAttr ".wl[973].w[45]" 0.53435616733100355;
	setAttr ".wl[973].w[46]" 0.32425297871237446;
	setAttr -s 3 ".wl[974].w";
	setAttr ".wl[974].w[31]" 0.00055619433973286996;
	setAttr ".wl[974].w[32]" 0.99871794283724946;
	setAttr ".wl[974].w[42]" 0.00072586282301764912;
	setAttr -s 3 ".wl[975].w";
	setAttr ".wl[975].w[4]" 0.91915636210422824;
	setAttr ".wl[975].w[10]" 0.072124913346230779;
	setAttr ".wl[975].w[29]" 0.0087187245495408509;
	setAttr -s 3 ".wl[976].w";
	setAttr ".wl[976].w[4]" 0.4539518335293895;
	setAttr ".wl[976].w[10]" 0.53236509663291209;
	setAttr ".wl[976].w[29]" 0.013683069837698455;
	setAttr -s 3 ".wl[977].w";
	setAttr ".wl[977].w[4]" 0.7231373500516336;
	setAttr ".wl[977].w[10]" 0.24154617025082173;
	setAttr ".wl[977].w[29]" 0.035316479697544645;
	setAttr -s 3 ".wl[978].w";
	setAttr ".wl[978].w[12]" 0.24978538916877541;
	setAttr ".wl[978].w[13]" 0.74930278919586835;
	setAttr ".wl[978].w[26]" 0.00091182163535630939;
	setAttr -s 3 ".wl[979].w";
	setAttr ".wl[979].w[12]" 0.073074474071079198;
	setAttr ".wl[979].w[13]" 0.92487589769306877;
	setAttr ".wl[979].w[26]" 0.0020496282358521307;
	setAttr -s 3 ".wl[980].w";
	setAttr ".wl[980].w[12]" 0.055588600068997976;
	setAttr ".wl[980].w[13]" 0.93273333825105054;
	setAttr ".wl[980].w[26]" 0.01167806167995154;
	setAttr -s 3 ".wl[981].w";
	setAttr ".wl[981].w[12]" 0.078108525097909068;
	setAttr ".wl[981].w[13]" 0.91790262883486717;
	setAttr ".wl[981].w[26]" 0.0039888460672236553;
	setAttr -s 3 ".wl[982].w";
	setAttr ".wl[982].w[12]" 0.36692459276380862;
	setAttr ".wl[982].w[13]" 0.62871429757002606;
	setAttr ".wl[982].w[26]" 0.0043611096661653938;
	setAttr -s 3 ".wl[983].w";
	setAttr ".wl[983].w[12]" 0.38357671284587003;
	setAttr ".wl[983].w[13]" 0.60896758880265112;
	setAttr ".wl[983].w[23]" 0.0074556983514789685;
	setAttr -s 3 ".wl[984].w";
	setAttr ".wl[984].w[12]" 0.32445797937810567;
	setAttr ".wl[984].w[13]" 0.66995876374539476;
	setAttr ".wl[984].w[23]" 0.005583256876499517;
	setAttr -s 3 ".wl[985].w";
	setAttr ".wl[985].w[12]" 0.093327178277681611;
	setAttr ".wl[985].w[13]" 0.90606446648569694;
	setAttr ".wl[985].w[23]" 0.00060835523662129709;
	setAttr -s 3 ".wl[986].w[11:13]"  0.00092552441689709058 0.70905056734541538 
		0.29002390823768748;
	setAttr -s 3 ".wl[987].w";
	setAttr ".wl[987].w[12]" 0.85929241884122642;
	setAttr ".wl[987].w[13]" 0.13998434448856598;
	setAttr ".wl[987].w[26]" 0.00072323667020763021;
	setAttr -s 3 ".wl[988].w";
	setAttr ".wl[988].w[12]" 0.59633027841259689;
	setAttr ".wl[988].w[13]" 0.40027965439917762;
	setAttr ".wl[988].w[26]" 0.0033900671882254024;
	setAttr -s 3 ".wl[989].w";
	setAttr ".wl[989].w[12]" 0.62430805165463288;
	setAttr ".wl[989].w[13]" 0.37360962127868275;
	setAttr ".wl[989].w[26]" 0.002082327066684458;
	setAttr -s 3 ".wl[990].w";
	setAttr ".wl[990].w[12]" 0.92367713212408176;
	setAttr ".wl[990].w[13]" 0.075860081929645884;
	setAttr ".wl[990].w[26]" 0.00046278594627239232;
	setAttr -s 3 ".wl[991].w";
	setAttr ".wl[991].w[12]" 0.9467137273430537;
	setAttr ".wl[991].w[13]" 0.052880722890472208;
	setAttr ".wl[991].w[23]" 0.00040554976647419136;
	setAttr -s 3 ".wl[992].w";
	setAttr ".wl[992].w[12]" 0.93861054022119761;
	setAttr ".wl[992].w[13]" 0.060929577854878222;
	setAttr ".wl[992].w[23]" 0.00045988192392405351;
	setAttr -s 3 ".wl[993].w[11:13]"  8.5831166746412941e-005 0.91726212991004241 
		0.082652038923211185;
	setAttr -s 3 ".wl[994].w[11:13]"  0.003791878861860941 0.90118062204915605 
		0.095027499088983072;
	setAttr -s 3 ".wl[995].w[11:13]"  0.0051565754820788491 0.89752410256313342 
		0.097319321954787708;
	setAttr -s 3 ".wl[996].w[11:13]"  0.0028025003126207109 0.93865243910314666 
		0.058545060584232547;
	setAttr -s 3 ".wl[997].w[11:13]"  0.0042876588416893282 0.88408055746947045 
		0.11163178368884014;
	setAttr -s 3 ".wl[998].w[11:13]"  0.0039269031154203805 0.9400712870090866 
		0.056001809875493046;
	setAttr -s 3 ".wl[999].w[11:13]"  0.00075927263080641694 0.98974890194074239 
		0.0094918254284511189;
	setAttr -s 3 ".wl[1000].w[11:13]"  0.00019632467226461949 0.9945702356443068 
		0.0052334396834285866;
	setAttr -s 3 ".wl[1001].w[11:13]"  0.00036035149606498246 0.98980198881455161 
		0.0098376596893835783;
	setAttr -s 3 ".wl[1002].w[11:13]"  0.011177062159291491 0.95270359393558557 
		0.036119343905122822;
	setAttr -s 3 ".wl[1003].w[11:13]"  0.016225894888504309 0.94455811359975983 
		0.039215991511735784;
	setAttr -s 3 ".wl[1004].w[11:13]"  0.021133215412052299 0.94850504029388349 
		0.030361744294064269;
	setAttr -s 3 ".wl[1005].w[11:13]"  0.0084647574122047875 0.97741272515151767 
		0.014122517436277595;
	setAttr -s 3 ".wl[1006].w[11:13]"  0.011966274759120359 0.97154644574324101 
		0.016487279497638698;
	setAttr -s 3 ".wl[1007].w[11:13]"  0.0064199868222857004 0.99101967232480137 
		0.0025603408529128384;
	setAttr -s 3 ".wl[1008].w[11:13]"  0.0016554596348686695 0.99648085446812484 
		0.0018636858970065115;
	setAttr -s 3 ".wl[1009].w[11:13]"  0.0044471930757093905 0.98098776591119341 
		0.014565041013097201;
	setAttr -s 3 ".wl[1010].w[11:13]"  0.021948681189305392 0.96917589560624251 
		0.00887542320445215;
	setAttr -s 3 ".wl[1011].w[11:13]"  0.027830324210275405 0.9672548785233146 
		0.0049147972664099907;
	setAttr -s 3 ".wl[1012].w[11:13]"  0.063918163414221033 0.92719530258235172 
		0.0088865340034273259;
	setAttr -s 3 ".wl[1013].w[11:13]"  0.049610778901420072 0.94705788000743851 
		0.003331341091141366;
	setAttr -s 3 ".wl[1014].w[11:13]"  0.032706497346434035 0.96527469145886169 
		0.0020188111947041596;
	setAttr -s 3 ".wl[1015].w[11:13]"  0.086790090039421522 0.91196450648707728 
		0.001245403473501326;
	setAttr -s 3 ".wl[1016].w[11:13]"  0.013683661159404998 0.98606296184061004 
		0.00025337699998493175;
	setAttr -s 3 ".wl[1017].w[11:13]"  0.0022437230863625083 0.9971816129061627 
		0.00057466400747476745;
	setAttr -s 3 ".wl[1018].w[11:13]"  0.03923077516525858 0.95953233832570151 
		0.0012368865090399558;
	setAttr -s 3 ".wl[1019].w[11:13]"  0.15934120995757084 0.83797824300199331 
		0.0026805470404359286;
	setAttr -s 3 ".wl[1020].w[11:13]"  0.12361429541152803 0.8740355487371434 
		0.0023501558513286725;
	setAttr -s 3 ".wl[1021].w[11:13]"  0.20078789687666418 0.79715406341618211 
		0.0020580397071537659;
	setAttr -s 3 ".wl[1022].w[11:13]"  0.1366147323006823 0.86256361385604952 
		0.00082165384326811722;
	setAttr -s 3 ".wl[1023].w[11:13]"  0.24002503604947498 0.7592956812014402 
		0.00067928274908487759;
	setAttr -s 3 ".wl[1024].w[11:13]"  0.079950948956681062 0.91995054701030898 
		9.8504033010028214e-005;
	setAttr -s 3 ".wl[1025].w[11:13]"  0.036111243360664333 0.96379625415612502 
		9.250248321077321e-005;
	setAttr -s 3 ".wl[1026].w[11:13]"  0.13120947841184394 0.86833857142756965 
		0.00045195016058647831;
	setAttr -s 3 ".wl[1027].w[11:13]"  0.27500146789362023 0.72317242846108398 
		0.001826103645295818;
	setAttr -s 3 ".wl[1028].w[11:13]"  0.26824647646718691 0.72987068781349562 
		0.0018828357193174867;
	setAttr -s 3 ".wl[1029].w[11:13]"  0.31232853974509028 0.68607178497218169 
		0.0015996752827281396;
	setAttr -s 3 ".wl[1030].w[11:13]"  0.29355041330952691 0.70561845709951632 
		0.00083112959095682363;
	setAttr -s 3 ".wl[1031].w[11:13]"  0.36254701983293547 0.63690902830712748 
		0.00054395185993712117;
	setAttr -s 3 ".wl[1032].w[11:13]"  0.32475223415892929 0.6750845702182835 
		0.00016319562278712771;
	setAttr -s 3 ".wl[1033].w[11:13]"  0.27386192790229735 0.72600219131407362 
		0.0001358807836289895;
	setAttr -s 3 ".wl[1034].w[10:12]"  0.0044200595815279018 0.98164447453445303 
		0.013935465884019204;
	setAttr -s 3 ".wl[1035].w[10:12]"  0.0016793049457845173 0.97004485819747077 
		0.028275836856744677;
	setAttr -s 3 ".wl[1036].w[10:12]"  0.0035299505789135785 0.9576140113011179 
		0.038856038119968538;
	setAttr -s 3 ".wl[1037].w[10:12]"  0.0063259116989748355 0.95506606121062465 
		0.038608027090400579;
	setAttr -s 3 ".wl[1038].w";
	setAttr ".wl[1038].w[1]" 0.0029869359272020248;
	setAttr ".wl[1038].w[11]" 0.95134779877851106;
	setAttr ".wl[1038].w[12]" 0.045665265294287008;
	setAttr -s 3 ".wl[1039].w";
	setAttr ".wl[1039].w[2]" 0.0014764592481155189;
	setAttr ".wl[1039].w[11]" 0.95606367192841102;
	setAttr ".wl[1039].w[12]" 0.042459868823473378;
	setAttr -s 3 ".wl[1040].w";
	setAttr ".wl[1040].w[2]" 0.00053942428308762565;
	setAttr ".wl[1040].w[11]" 0.9883952164749128;
	setAttr ".wl[1040].w[12]" 0.01106535924199945;
	setAttr -s 3 ".wl[1041].w[10:12]"  0.00031231417822775103 0.99833779478243501 
		0.0013498910393371086;
	setAttr -s 3 ".wl[1042].w";
	setAttr ".wl[1042].w[2]" 0.0031758596536562802;
	setAttr ".wl[1042].w[10]" 0.041170343782957912;
	setAttr ".wl[1042].w[11]" 0.95565379656338578;
	setAttr -s 3 ".wl[1043].w";
	setAttr ".wl[1043].w[2]" 0.006351298282848309;
	setAttr ".wl[1043].w[10]" 0.053094964617315173;
	setAttr ".wl[1043].w[11]" 0.94055373709983647;
	setAttr -s 3 ".wl[1044].w";
	setAttr ".wl[1044].w[2]" 0.056792009380997335;
	setAttr ".wl[1044].w[10]" 0.30744073981847458;
	setAttr ".wl[1044].w[11]" 0.63576725080052809;
	setAttr -s 3 ".wl[1045].w";
	setAttr ".wl[1045].w[1]" 0.042697129472192223;
	setAttr ".wl[1045].w[2]" 0.035387293453434505;
	setAttr ".wl[1045].w[11]" 0.92191557707437333;
	setAttr -s 3 ".wl[1046].w";
	setAttr ".wl[1046].w[1]" 0.032763526317275804;
	setAttr ".wl[1046].w[2]" 0.036107871332240055;
	setAttr ".wl[1046].w[11]" 0.93112860235048434;
	setAttr -s 3 ".wl[1047].w";
	setAttr ".wl[1047].w[2]" 0.019327466360824941;
	setAttr ".wl[1047].w[10]" 0.016580205330575991;
	setAttr ".wl[1047].w[11]" 0.96409232830859914;
	setAttr -s 3 ".wl[1048].w";
	setAttr ".wl[1048].w[2]" 0.0032978450337541746;
	setAttr ".wl[1048].w[10]" 0.041605321303490247;
	setAttr ".wl[1048].w[11]" 0.95509683366275566;
	setAttr -s 3 ".wl[1049].w";
	setAttr ".wl[1049].w[2]" 0.29478928393770559;
	setAttr ".wl[1049].w[10]" 0.50508380010177945;
	setAttr ".wl[1049].w[11]" 0.2001269159605151;
	setAttr -s 3 ".wl[1050].w";
	setAttr ".wl[1050].w[1]" 0.23615055492778803;
	setAttr ".wl[1050].w[2]" 0.49323555170364403;
	setAttr ".wl[1050].w[10]" 0.270613893368568;
	setAttr -s 3 ".wl[1051].w";
	setAttr ".wl[1051].w[1]" 0.039510741962831997;
	setAttr ".wl[1051].w[10]" 0.050581540752655807;
	setAttr ".wl[1051].w[11]" 0.90990771728451225;
	setAttr -s 3 ".wl[1052].w";
	setAttr ".wl[1052].w[2]" 0.13459635275686757;
	setAttr ".wl[1052].w[10]" 0.76384993088883113;
	setAttr ".wl[1052].w[11]" 0.1015537163543014;
	setAttr -s 3 ".wl[1053].w";
	setAttr ".wl[1053].w[1]" 0.4909115546780744;
	setAttr ".wl[1053].w[2]" 0.37343437841606547;
	setAttr ".wl[1053].w[11]" 0.13565406690586027;
	setAttr -s 3 ".wl[1054].w";
	setAttr ".wl[1054].w[1]" 0.23062070376607263;
	setAttr ".wl[1054].w[2]" 0.1368395313959565;
	setAttr ".wl[1054].w[11]" 0.63253976483797092;
	setAttr -s 3 ".wl[1055].w";
	setAttr ".wl[1055].w[1]" 0.17534243637691338;
	setAttr ".wl[1055].w[2]" 0.22357958291610536;
	setAttr ".wl[1055].w[11]" 0.60107798070698126;
	setAttr -s 3 ".wl[1056].w";
	setAttr ".wl[1056].w[1]" 0.33787224572094626;
	setAttr ".wl[1056].w[2]" 0.50634027868884368;
	setAttr ".wl[1056].w[11]" 0.15578747559021017;
	setAttr -s 3 ".wl[1057].w";
	setAttr ".wl[1057].w[1]" 0.55711170557363832;
	setAttr ".wl[1057].w[2]" 0.15704985882064595;
	setAttr ".wl[1057].w[11]" 0.28583843560571576;
	setAttr -s 3 ".wl[1058].w";
	setAttr ".wl[1058].w[1]" 0.48497116530898865;
	setAttr ".wl[1058].w[2]" 0.17574005370493354;
	setAttr ".wl[1058].w[11]" 0.33928878098607773;
	setAttr -s 3 ".wl[1059].w";
	setAttr ".wl[1059].w[1]" 0.62221109691533283;
	setAttr ".wl[1059].w[2]" 0.21417403789276815;
	setAttr ".wl[1059].w[11]" 0.16361486519189902;
	setAttr -s 3 ".wl[1060].w";
	setAttr ".wl[1060].w[2]" 0.48837627209824169;
	setAttr ".wl[1060].w[3]" 0.45713769047356206;
	setAttr ".wl[1060].w[10]" 0.05448603742819625;
	setAttr -s 3 ".wl[1061].w[1:3]"  0.10696946890643967 0.80357443249730576 
		0.089456098596254557;
	setAttr -s 3 ".wl[1062].w[0:2]"  0.085848744978076985 0.8315506814417698 
		0.082600573580153186;
	setAttr -s 3 ".wl[1063].w";
	setAttr ".wl[1063].w[0]" 0.36658956033412965;
	setAttr ".wl[1063].w[1]" 0.57543735294880105;
	setAttr ".wl[1063].w[48]" 0.057973086717069383;
	setAttr -s 3 ".wl[1064].w";
	setAttr ".wl[1064].w[0]" 0.24053392772324331;
	setAttr ".wl[1064].w[1]" 0.62470356502923841;
	setAttr ".wl[1064].w[48]" 0.13476250724751826;
	setAttr -s 3 ".wl[1065].w";
	setAttr ".wl[1065].w[0]" 0.29019573077335509;
	setAttr ".wl[1065].w[1]" 0.4981608665303861;
	setAttr ".wl[1065].w[48]" 0.21164340269625898;
	setAttr -s 3 ".wl[1066].w";
	setAttr ".wl[1066].w[0]" 0.24861632336729786;
	setAttr ".wl[1066].w[1]" 0.57527370072104966;
	setAttr ".wl[1066].w[48]" 0.17610997591165251;
	setAttr -s 3 ".wl[1067].w[0:2]"  0.19771890507307405 0.63045680699480311 
		0.17182428793212293;
	setAttr -s 3 ".wl[1068].w";
	setAttr ".wl[1068].w[0]" 0.036912820089887124;
	setAttr ".wl[1068].w[48]" 0.95090876587422313;
	setAttr ".wl[1068].w[53]" 0.012178414035889715;
	setAttr -s 3 ".wl[1069].w";
	setAttr ".wl[1069].w[0]" 0.016101152637468648;
	setAttr ".wl[1069].w[48]" 0.98061533800336398;
	setAttr ".wl[1069].w[53]" 0.0032835093591672328;
	setAttr -s 3 ".wl[1070].w";
	setAttr ".wl[1070].w[0]" 0.0090589424032741072;
	setAttr ".wl[1070].w[48]" 0.98967029749988511;
	setAttr ".wl[1070].w[49]" 0.0012707600968409254;
	setAttr -s 3 ".wl[1071].w";
	setAttr ".wl[1071].w[0]" 0.0055347349717387931;
	setAttr ".wl[1071].w[48]" 0.99318532410080684;
	setAttr ".wl[1071].w[49]" 0.0012799409274544583;
	setAttr -s 3 ".wl[1072].w";
	setAttr ".wl[1072].w[0]" 0.0082606303098172653;
	setAttr ".wl[1072].w[48]" 0.99087470758419161;
	setAttr ".wl[1072].w[49]" 0.00086466210599119855;
	setAttr -s 3 ".wl[1073].w";
	setAttr ".wl[1073].w[0]" 0.009503445933179859;
	setAttr ".wl[1073].w[48]" 0.9888541694607722;
	setAttr ".wl[1073].w[53]" 0.0016423846060479516;
	setAttr -s 3 ".wl[1074].w";
	setAttr ".wl[1074].w[0]" 0.0044444021421260124;
	setAttr ".wl[1074].w[48]" 0.99349905185223453;
	setAttr ".wl[1074].w[53]" 0.0020565460056395017;
	setAttr -s 3 ".wl[1075].w";
	setAttr ".wl[1075].w[0]" 0.0079705073459709931;
	setAttr ".wl[1075].w[48]" 0.98628702903073173;
	setAttr ".wl[1075].w[53]" 0.005742463623297305;
	setAttr -s 3 ".wl[1076].w";
	setAttr ".wl[1076].w[0]" 0.0030617032223035742;
	setAttr ".wl[1076].w[48]" 0.99450482078739411;
	setAttr ".wl[1076].w[49]" 0.002433475990302456;
	setAttr -s 3 ".wl[1077].w";
	setAttr ".wl[1077].w[0]" 0.0030419126626797443;
	setAttr ".wl[1077].w[48]" 0.99038369537910476;
	setAttr ".wl[1077].w[49]" 0.0065743919582155067;
	setAttr -s 3 ".wl[1078].w";
	setAttr ".wl[1078].w[0]" 0.0023036998144666059;
	setAttr ".wl[1078].w[48]" 0.99081597938066845;
	setAttr ".wl[1078].w[49]" 0.006880320804865005;
	setAttr -s 3 ".wl[1079].w";
	setAttr ".wl[1079].w[0]" 0.0024220942716893824;
	setAttr ".wl[1079].w[48]" 0.98650882622269642;
	setAttr ".wl[1079].w[49]" 0.011069079505614221;
	setAttr -s 3 ".wl[1080].w";
	setAttr ".wl[1080].w[0]" 0.00081599724284755278;
	setAttr ".wl[1080].w[48]" 0.99744697582709707;
	setAttr ".wl[1080].w[49]" 0.0017370269300555513;
	setAttr -s 3 ".wl[1081].w";
	setAttr ".wl[1081].w[0]" 0.0017739236557199514;
	setAttr ".wl[1081].w[48]" 0.99074060013968868;
	setAttr ".wl[1081].w[49]" 0.0074854762045914944;
	setAttr -s 3 ".wl[1082].w";
	setAttr ".wl[1082].w[0]" 0.00084804052588816027;
	setAttr ".wl[1082].w[48]" 0.9976913054636285;
	setAttr ".wl[1082].w[49]" 0.0014606540104833859;
	setAttr -s 3 ".wl[1083].w";
	setAttr ".wl[1083].w[0]" 0.00036316790399377406;
	setAttr ".wl[1083].w[48]" 0.97507744977688637;
	setAttr ".wl[1083].w[49]" 0.024559382319119888;
	setAttr -s 3 ".wl[1084].w";
	setAttr ".wl[1084].w[0]" 0.0010498711671866261;
	setAttr ".wl[1084].w[48]" 0.95918912040228699;
	setAttr ".wl[1084].w[49]" 0.039761008430526601;
	setAttr -s 3 ".wl[1085].w";
	setAttr ".wl[1085].w[0]" 0.00057186718308576746;
	setAttr ".wl[1085].w[48]" 0.96921705246708112;
	setAttr ".wl[1085].w[49]" 0.03021108034983306;
	setAttr -s 3 ".wl[1086].w";
	setAttr ".wl[1086].w[0]" 0.00074139357751277124;
	setAttr ".wl[1086].w[48]" 0.95966499475506939;
	setAttr ".wl[1086].w[49]" 0.039593611667417913;
	setAttr -s 3 ".wl[1087].w";
	setAttr ".wl[1087].w[0]" 0.00012866653715033297;
	setAttr ".wl[1087].w[48]" 0.99216470769643295;
	setAttr ".wl[1087].w[49]" 0.0077066257664168284;
	setAttr -s 3 ".wl[1088].w";
	setAttr ".wl[1088].w[0]" 7.4253933753906819e-005;
	setAttr ".wl[1088].w[48]" 0.99051039267394814;
	setAttr ".wl[1088].w[49]" 0.0094153533922979073;
	setAttr -s 3 ".wl[1089].w";
	setAttr ".wl[1089].w[0]" 0.0004178590661589509;
	setAttr ".wl[1089].w[48]" 0.96877639811093375;
	setAttr ".wl[1089].w[49]" 0.030805742822907316;
	setAttr -s 3 ".wl[1090].w";
	setAttr ".wl[1090].w[0]" 9.3091761817509311e-005;
	setAttr ".wl[1090].w[48]" 0.99009736203281906;
	setAttr ".wl[1090].w[49]" 0.0098095462053634577;
	setAttr -s 3 ".wl[1091].w";
	setAttr ".wl[1091].w[0]" 0.00016067665700954703;
	setAttr ".wl[1091].w[48]" 0.77030019547924822;
	setAttr ".wl[1091].w[49]" 0.22953912786374217;
	setAttr -s 3 ".wl[1092].w";
	setAttr ".wl[1092].w[0]" 0.00019573762048044027;
	setAttr ".wl[1092].w[48]" 0.89427500082485289;
	setAttr ".wl[1092].w[49]" 0.10552926155466669;
	setAttr -s 3 ".wl[1093].w";
	setAttr ".wl[1093].w[0]" 0.00026599164549655002;
	setAttr ".wl[1093].w[48]" 0.82654002170958341;
	setAttr ".wl[1093].w[49]" 0.17319398664491994;
	setAttr -s 3 ".wl[1094].w";
	setAttr ".wl[1094].w[0]" 6.3227399878130658e-005;
	setAttr ".wl[1094].w[48]" 0.90987991379005984;
	setAttr ".wl[1094].w[49]" 0.09005685881006209;
	setAttr -s 3 ".wl[1095].w";
	setAttr ".wl[1095].w[0]" 1.6794007315931036e-005;
	setAttr ".wl[1095].w[48]" 0.96187991990633859;
	setAttr ".wl[1095].w[49]" 0.03810328608634559;
	setAttr -s 3 ".wl[1096].w";
	setAttr ".wl[1096].w[0]" 4.0822566892699568e-005;
	setAttr ".wl[1096].w[48]" 0.83034544024114143;
	setAttr ".wl[1096].w[49]" 0.16961373719196579;
	setAttr -s 3 ".wl[1097].w";
	setAttr ".wl[1097].w[0]" 1.719157462220534e-005;
	setAttr ".wl[1097].w[48]" 0.93806670039334672;
	setAttr ".wl[1097].w[49]" 0.061916108032031056;
	setAttr -s 3 ".wl[1098].w";
	setAttr ".wl[1098].w[0]" 1.0859991928169984e-005;
	setAttr ".wl[1098].w[48]" 0.91541593278666389;
	setAttr ".wl[1098].w[49]" 0.084573207221408001;
	setAttr -s 3 ".wl[1099].w";
	setAttr ".wl[1099].w[0]" 7.3045052925156719e-005;
	setAttr ".wl[1099].w[48]" 0.38903644561565293;
	setAttr ".wl[1099].w[49]" 0.61089050933142186;
	setAttr -s 3 ".wl[1100].w";
	setAttr ".wl[1100].w[0]" 0.00010266132993746465;
	setAttr ".wl[1100].w[48]" 0.50159611391487846;
	setAttr ".wl[1100].w[49]" 0.49830122475518429;
	setAttr -s 3 ".wl[1101].w";
	setAttr ".wl[1101].w[0]" 0.00010329585430912756;
	setAttr ".wl[1101].w[48]" 0.51199732774759588;
	setAttr ".wl[1101].w[49]" 0.48789937639809505;
	setAttr -s 3 ".wl[1102].w";
	setAttr ".wl[1102].w[0]" 4.8309934425194876e-005;
	setAttr ".wl[1102].w[48]" 0.45515390337871309;
	setAttr ".wl[1102].w[49]" 0.54479778668686163;
	setAttr -s 3 ".wl[1103].w";
	setAttr ".wl[1103].w[0]" 1.5568523054355986e-005;
	setAttr ".wl[1103].w[48]" 0.3018570045151755;
	setAttr ".wl[1103].w[49]" 0.6981274269617701;
	setAttr -s 3 ".wl[1104].w";
	setAttr ".wl[1104].w[0]" 4.7450765036298123e-007;
	setAttr ".wl[1104].w[48]" 0.012470038663075653;
	setAttr ".wl[1104].w[49]" 0.98752948682927411;
	setAttr -s 3 ".wl[1105].w";
	setAttr ".wl[1105].w[0]" 3.4987840665599588e-007;
	setAttr ".wl[1105].w[48]" 0.01084463873595788;
	setAttr ".wl[1105].w[49]" 0.98915501138563555;
	setAttr -s 3 ".wl[1106].w";
	setAttr ".wl[1106].w[0]" 7.8929286676823047e-006;
	setAttr ".wl[1106].w[48]" 0.10967895063086081;
	setAttr ".wl[1106].w[49]" 0.89031315644047138;
	setAttr -s 3 ".wl[1107].w[48:50]"  0.016237190817340843 0.9836898765619041 
		7.2932620755084405e-005;
	setAttr -s 3 ".wl[1108].w[48:50]"  0.047370633986685055 0.95245170009440894 
		0.00017766591890601988;
	setAttr -s 3 ".wl[1109].w[48:50]"  0.022599308775306474 0.9772767990872685 
		0.00012389213742506998;
	setAttr -s 3 ".wl[1110].w[48:50]"  0.015529032352541614 0.98437864884806847 
		9.2318799389893276e-005;
	setAttr -s 3 ".wl[1111].w[48:50]"  0.0098882973170241906 0.99008079930405424 
		3.0903378921554709e-005;
	setAttr -s 3 ".wl[1112].w[48:50]"  0.00027274591039276022 0.99972658708018358 
		6.6700942382658971e-007;
	setAttr -s 3 ".wl[1113].w[48:50]"  0.00021419560931415017 0.99978542611614563 
		3.7827454023589054e-007;
	setAttr -s 3 ".wl[1114].w[48:50]"  0.0061074617888969137 0.99388152224176463 
		1.101596933845005e-005;
	setAttr -s 3 ".wl[1115].w[48:50]"  0.0065833560996147898 0.99292111375301906 
		0.00049553014736623076;
	setAttr -s 3 ".wl[1116].w[48:50]"  0.0073314345976151669 0.99216264768876283 
		0.00050591771362212292;
	setAttr -s 3 ".wl[1117].w[48:50]"  0.0047475294183259974 0.99454617270207768 
		0.00070629787959632432;
	setAttr -s 3 ".wl[1118].w[48:50]"  0.0058641620921222057 0.99352475498715342 
		0.00061108292072454174;
	setAttr -s 3 ".wl[1119].w[48:50]"  0.0041141525810007001 0.99560029938405437 
		0.00028554803494496977;
	setAttr -s 3 ".wl[1120].w[48:50]"  9.8528340274267397e-005 0.99989445439581937 
		7.0172639065384384e-006;
	setAttr -s 3 ".wl[1121].w[48:50]"  3.3920667571187457e-005 0.99996294352909887 
		3.1358033298342036e-006;
	setAttr -s 3 ".wl[1122].w[48:50]"  0.00092848816735651893 0.99901884418838227 
		5.2667644261294279e-005;
	setAttr -s 3 ".wl[1123].w[48:50]"  0.0018360636428384697 0.99644457853205615 
		0.00171935782510537;
	setAttr -s 3 ".wl[1124].w[48:50]"  0.0011897973284050367 0.99630366354797273 
		0.0025065391236223072;
	setAttr -s 3 ".wl[1125].w[48:50]"  0.0015379993964650489 0.99344673284052298 
		0.0050152677630119387;
	setAttr -s 3 ".wl[1126].w[48:50]"  0.000743704536997757 0.99779380436727372 
		0.0014624910957284467;
	setAttr -s 3 ".wl[1127].w[48:50]"  0.000303467044009404 0.99939148863294058 
		0.00030504432305012498;
	setAttr -s 3 ".wl[1128].w[49:51]"  0.99992002115562195 6.878674397012879e-005 
		1.119210040778753e-005;
	setAttr -s 3 ".wl[1129].w[48:50]"  1.2630879727713099e-005 0.99991927039336603 
		6.8098726906107637e-005;
	setAttr -s 3 ".wl[1130].w[48:50]"  0.00026360603059410364 0.99950638596794528 
		0.00023000800146081505;
	setAttr -s 3 ".wl[1131].w";
	setAttr ".wl[1131].w[0]" 0.16213399977366677;
	setAttr ".wl[1131].w[48]" 0.7856401526864335;
	setAttr ".wl[1131].w[53]" 0.052225847539899908;
	setAttr -s 3 ".wl[1132].w";
	setAttr ".wl[1132].w[0]" 0.074500078717062615;
	setAttr ".wl[1132].w[48]" 0.91339764726091133;
	setAttr ".wl[1132].w[53]" 0.012102274022026098;
	setAttr -s 3 ".wl[1133].w";
	setAttr ".wl[1133].w[0]" 0.034011478423260764;
	setAttr ".wl[1133].w[48]" 0.96367131840367781;
	setAttr ".wl[1133].w[53]" 0.0023172031730613642;
	setAttr -s 3 ".wl[1134].w";
	setAttr ".wl[1134].w[0]" 0.021507238209966965;
	setAttr ".wl[1134].w[48]" 0.97806232147481065;
	setAttr ".wl[1134].w[53]" 0.00043044031522251165;
	setAttr -s 3 ".wl[1135].w";
	setAttr ".wl[1135].w[0]" 0.0129214022567796;
	setAttr ".wl[1135].w[48]" 0.9867619331625449;
	setAttr ".wl[1135].w[53]" 0.00031666458067549421;
	setAttr -s 3 ".wl[1136].w";
	setAttr ".wl[1136].w[0]" 0.018382046922384838;
	setAttr ".wl[1136].w[48]" 0.97994675340171467;
	setAttr ".wl[1136].w[53]" 0.001671199675900575;
	setAttr -s 3 ".wl[1137].w";
	setAttr ".wl[1137].w[0]" 0.030465299012999401;
	setAttr ".wl[1137].w[48]" 0.95893439818789972;
	setAttr ".wl[1137].w[53]" 0.010600302799100878;
	setAttr -s 3 ".wl[1138].w";
	setAttr ".wl[1138].w[0]" 0.45482047895903982;
	setAttr ".wl[1138].w[48]" 0.49989126256310129;
	setAttr ".wl[1138].w[53]" 0.045288258477858979;
	setAttr -s 3 ".wl[1139].w";
	setAttr ".wl[1139].w[3]" 0.10864144972474776;
	setAttr ".wl[1139].w[4]" 0.18292284534350045;
	setAttr ".wl[1139].w[10]" 0.7084357049317519;
	setAttr -s 3 ".wl[1140].w";
	setAttr ".wl[1140].w[2]" 0.14561866080186933;
	setAttr ".wl[1140].w[10]" 0.66356711785397859;
	setAttr ".wl[1140].w[11]" 0.19081422134415202;
	setAttr -s 3 ".wl[1141].w";
	setAttr ".wl[1141].w[2]" 0.010342848592163573;
	setAttr ".wl[1141].w[10]" 0.50094037895485011;
	setAttr ".wl[1141].w[11]" 0.48871677245298634;
	setAttr -s 3 ".wl[1142].w";
	setAttr ".wl[1142].w[4]" 0.0017824117735874402;
	setAttr ".wl[1142].w[10]" 0.083121178475474816;
	setAttr ".wl[1142].w[11]" 0.91509640975093764;
	setAttr -s 3 ".wl[1143].w";
	setAttr ".wl[1143].w[4]" 0.00067506281238121518;
	setAttr ".wl[1143].w[10]" 0.072228429392206681;
	setAttr ".wl[1143].w[11]" 0.92709650779541231;
	setAttr -s 3 ".wl[1144].w";
	setAttr ".wl[1144].w[2]" 0.0022704931378220968;
	setAttr ".wl[1144].w[10]" 0.94034631172222005;
	setAttr ".wl[1144].w[11]" 0.057383195139957953;
	setAttr -s 3 ".wl[1145].w";
	setAttr ".wl[1145].w[2]" 0.045545426358208886;
	setAttr ".wl[1145].w[3]" 0.040516869538955474;
	setAttr ".wl[1145].w[10]" 0.91393770410283559;
	setAttr -s 3 ".wl[1146].w";
	setAttr ".wl[1146].w[2]" 0.33166720912701064;
	setAttr ".wl[1146].w[4]" 0.33238877909166964;
	setAttr ".wl[1146].w[10]" 0.33594401178131977;
	setAttr -s 3 ".wl[1147].w";
	setAttr ".wl[1147].w[0]" 0.39819756438437603;
	setAttr ".wl[1147].w[48]" 0.49858234780055338;
	setAttr ".wl[1147].w[53]" 0.10322008781507064;
	setAttr -s 3 ".wl[1148].w";
	setAttr ".wl[1148].w[0]" 0.24634578283362271;
	setAttr ".wl[1148].w[48]" 0.73291791533513728;
	setAttr ".wl[1148].w[53]" 0.020736301831240103;
	setAttr -s 3 ".wl[1149].w";
	setAttr ".wl[1149].w[0]" 0.079657066590973852;
	setAttr ".wl[1149].w[48]" 0.91700399057347748;
	setAttr ".wl[1149].w[53]" 0.0033389428355486916;
	setAttr -s 3 ".wl[1150].w";
	setAttr ".wl[1150].w[0]" 0.085540365879560626;
	setAttr ".wl[1150].w[48]" 0.91359546846373751;
	setAttr ".wl[1150].w[53]" 0.00086416565670187091;
	setAttr -s 3 ".wl[1151].w";
	setAttr ".wl[1151].w[0]" 0.040985703208781823;
	setAttr ".wl[1151].w[48]" 0.95853633586015929;
	setAttr ".wl[1151].w[53]" 0.00047796093105900668;
	setAttr -s 3 ".wl[1152].w";
	setAttr ".wl[1152].w[0]" 0.0773180051764953;
	setAttr ".wl[1152].w[48]" 0.91907919745847266;
	setAttr ".wl[1152].w[53]" 0.0036027973650320155;
	setAttr -s 3 ".wl[1153].w";
	setAttr ".wl[1153].w[0]" 0.13537217099832791;
	setAttr ".wl[1153].w[48]" 0.83712581855901347;
	setAttr ".wl[1153].w[53]" 0.027502010442658601;
	setAttr -s 3 ".wl[1154].w";
	setAttr ".wl[1154].w[0]" 0.77384552811070728;
	setAttr ".wl[1154].w[48]" 0.2065262379760654;
	setAttr ".wl[1154].w[53]" 0.019628233913227419;
	setAttr -s 3 ".wl[1155].w";
	setAttr ".wl[1155].w[0]" 0.50093974949508602;
	setAttr ".wl[1155].w[1]" 0.0027659466333799488;
	setAttr ".wl[1155].w[48]" 0.49629430387153406;
	setAttr -s 3 ".wl[1156].w";
	setAttr ".wl[1156].w[0]" 0.48926942228472869;
	setAttr ".wl[1156].w[1]" 0.0017880622778692025;
	setAttr ".wl[1156].w[48]" 0.5089425154374021;
	setAttr -s 3 ".wl[1157].w";
	setAttr ".wl[1157].w[0]" 0.49431750436437016;
	setAttr ".wl[1157].w[1]" 0.0010911368931765559;
	setAttr ".wl[1157].w[48]" 0.50459135874245342;
	setAttr -s 3 ".wl[1158].w";
	setAttr ".wl[1158].w[0]" 0.52479019924008052;
	setAttr ".wl[1158].w[1]" 0.0020243136096690707;
	setAttr ".wl[1158].w[48]" 0.47318548715025061;
	setAttr -s 3 ".wl[1159].w";
	setAttr ".wl[1159].w[0]" 0.28149335601406583;
	setAttr ".wl[1159].w[48]" 0.71033155533678949;
	setAttr ".wl[1159].w[53]" 0.0081750886491447298;
	setAttr -s 3 ".wl[1160].w";
	setAttr ".wl[1160].w[0]" 0.13059077327373639;
	setAttr ".wl[1160].w[48]" 0.86850635745334781;
	setAttr ".wl[1160].w[53]" 0.00090286927291594358;
	setAttr -s 3 ".wl[1161].w";
	setAttr ".wl[1161].w[0]" 0.13790620210894461;
	setAttr ".wl[1161].w[48]" 0.86160411575789786;
	setAttr ".wl[1161].w[53]" 0.00048968213315741583;
	setAttr -s 3 ".wl[1162].w";
	setAttr ".wl[1162].w[0]" 0.22491805499300899;
	setAttr ".wl[1162].w[48]" 0.77253152866574304;
	setAttr ".wl[1162].w[53]" 0.0025504163412480418;
	setAttr -s 3 ".wl[1163].w";
	setAttr ".wl[1163].w[0]" 0.83916018451321162;
	setAttr ".wl[1163].w[48]" 0.10332855328530516;
	setAttr ".wl[1163].w[53]" 0.057511262201483115;
	setAttr -s 3 ".wl[1164].w";
	setAttr ".wl[1164].w[0]" 0.7062860079476424;
	setAttr ".wl[1164].w[48]" 0.27037312597516977;
	setAttr ".wl[1164].w[53]" 0.023340866077187918;
	setAttr -s 3 ".wl[1165].w";
	setAttr ".wl[1165].w[0]" 0.6303279165989909;
	setAttr ".wl[1165].w[1]" 0.28850005858538907;
	setAttr ".wl[1165].w[48]" 0.081172024815620192;
	setAttr -s 3 ".wl[1166].w";
	setAttr ".wl[1166].w[0]" 0.45230531181876032;
	setAttr ".wl[1166].w[1]" 0.2810070640453699;
	setAttr ".wl[1166].w[48]" 0.26668762413586966;
	setAttr -s 3 ".wl[1167].w";
	setAttr ".wl[1167].w[0]" 0.38982122246068512;
	setAttr ".wl[1167].w[1]" 0.2965252002296343;
	setAttr ".wl[1167].w[48]" 0.31365357730968063;
	setAttr -s 3 ".wl[1168].w";
	setAttr ".wl[1168].w[2]" 0.40241761038324075;
	setAttr ".wl[1168].w[10]" 0.23633883686276497;
	setAttr ".wl[1168].w[11]" 0.36124355275399417;
	setAttr -s 3 ".wl[1169].w[0:2]"  0.11178666939363291 0.7071586496904726 
		0.18105468091589447;
	setAttr -s 3 ".wl[1170].w";
	setAttr ".wl[1170].w[0]" 0.38428942953621531;
	setAttr ".wl[1170].w[1]" 0.51108970160117928;
	setAttr ".wl[1170].w[48]" 0.1046208688626054;
	setAttr -s 3 ".wl[1171].w";
	setAttr ".wl[1171].w[0]" 0.68489311023289923;
	setAttr ".wl[1171].w[1]" 0.19120937110138322;
	setAttr ".wl[1171].w[48]" 0.12389751866571755;
	setAttr -s 3 ".wl[1172].w";
	setAttr ".wl[1172].w[0]" 0.26140132360006302;
	setAttr ".wl[1172].w[1]" 0.63923599988029989;
	setAttr ".wl[1172].w[48]" 0.09936267651963715;
	setAttr -s 3 ".wl[1173].w";
	setAttr ".wl[1173].w[0]" 0.2855985575848714;
	setAttr ".wl[1173].w[1]" 0.49061026331237984;
	setAttr ".wl[1173].w[48]" 0.22379117910274876;
	setAttr -s 3 ".wl[1174].w";
	setAttr ".wl[1174].w[4]" 0.49827451228981984;
	setAttr ".wl[1174].w[10]" 0.49392606583434001;
	setAttr ".wl[1174].w[29]" 0.0077994218758402362;
	setAttr -s 3 ".wl[1175].w";
	setAttr ".wl[1175].w[4]" 0.47931945300060247;
	setAttr ".wl[1175].w[10]" 0.51502692090231983;
	setAttr ".wl[1175].w[29]" 0.0056536260970777453;
	setAttr -s 3 ".wl[1176].w";
	setAttr ".wl[1176].w[4]" 0.65958521210950916;
	setAttr ".wl[1176].w[10]" 0.32507498538129664;
	setAttr ".wl[1176].w[29]" 0.015339802509194296;
	setAttr -s 3 ".wl[1177].w";
	setAttr ".wl[1177].w[4]" 0.43548983889881054;
	setAttr ".wl[1177].w[10]" 0.55443616584740196;
	setAttr ".wl[1177].w[29]" 0.010073995253787459;
	setAttr -s 3 ".wl[1178].w";
	setAttr ".wl[1178].w[4]" 0.62420307826504684;
	setAttr ".wl[1178].w[10]" 0.27980214998128877;
	setAttr ".wl[1178].w[29]" 0.095994771753664471;
	setAttr -s 3 ".wl[1179].w";
	setAttr ".wl[1179].w[4]" 0.57878402436802812;
	setAttr ".wl[1179].w[10]" 0.36675772558475545;
	setAttr ".wl[1179].w[29]" 0.054458250047216557;
	setAttr -s 3 ".wl[1180].w";
	setAttr ".wl[1180].w[4]" 0.56090106161151021;
	setAttr ".wl[1180].w[10]" 0.40206313552566281;
	setAttr ".wl[1180].w[29]" 0.037035802862827011;
	setAttr -s 3 ".wl[1181].w";
	setAttr ".wl[1181].w[4]" 0.55665177718861747;
	setAttr ".wl[1181].w[10]" 0.41492832582403272;
	setAttr ".wl[1181].w[29]" 0.028419896987349907;
	setAttr -s 3 ".wl[1182].w";
	setAttr ".wl[1182].w[4]" 0.59295726785041603;
	setAttr ".wl[1182].w[10]" 0.3806960273453508;
	setAttr ".wl[1182].w[29]" 0.026346704804233345;
	setAttr -s 3 ".wl[1183].w";
	setAttr ".wl[1183].w[4]" 0.77394275747644548;
	setAttr ".wl[1183].w[10]" 0.18612435831963464;
	setAttr ".wl[1183].w[29]" 0.039932884203919959;
	setAttr -s 3 ".wl[1184].w";
	setAttr ".wl[1184].w[4]" 0.69347456016132736;
	setAttr ".wl[1184].w[10]" 0.27825851499865911;
	setAttr ".wl[1184].w[29]" 0.028266924840013658;
	setAttr -s 3 ".wl[1185].w";
	setAttr ".wl[1185].w[2]" 0.010528615152954319;
	setAttr ".wl[1185].w[4]" 0.91588010788474583;
	setAttr ".wl[1185].w[10]" 0.07359127696229989;
	setAttr -s 3 ".wl[1186].w";
	setAttr ".wl[1186].w[2]" 0.01109334824313553;
	setAttr ".wl[1186].w[4]" 0.48408704550224052;
	setAttr ".wl[1186].w[10]" 0.50481960625462408;
	setAttr -s 3 ".wl[1187].w";
	setAttr ".wl[1187].w[4]" 0.065804422929051212;
	setAttr ".wl[1187].w[10]" 0.93221138138867587;
	setAttr ".wl[1187].w[11]" 0.0019841956822729541;
	setAttr -s 3 ".wl[1188].w";
	setAttr ".wl[1188].w[4]" 0.14262324714362709;
	setAttr ".wl[1188].w[10]" 0.83449972284146334;
	setAttr ".wl[1188].w[11]" 0.022877030014909608;
	setAttr -s 3 ".wl[1189].w";
	setAttr ".wl[1189].w[4]" 0.091063691740884856;
	setAttr ".wl[1189].w[10]" 0.87809940681231202;
	setAttr ".wl[1189].w[11]" 0.030836901446803278;
	setAttr -s 3 ".wl[1190].w";
	setAttr ".wl[1190].w[4]" 0.10271426867993125;
	setAttr ".wl[1190].w[10]" 0.86339749716204894;
	setAttr ".wl[1190].w[11]" 0.033888234158019927;
	setAttr -s 3 ".wl[1191].w";
	setAttr ".wl[1191].w[2]" 0.054129786694280403;
	setAttr ".wl[1191].w[4]" 0.81689653612614122;
	setAttr ".wl[1191].w[10]" 0.12897367717957822;
	setAttr -s 3 ".wl[1192].w";
	setAttr ".wl[1192].w[2]" 0.01321248999624533;
	setAttr ".wl[1192].w[4]" 0.091104962168849571;
	setAttr ".wl[1192].w[10]" 0.8956825478349052;
	setAttr -s 3 ".wl[1193].w";
	setAttr ".wl[1193].w[4]" 0.0082226788395759476;
	setAttr ".wl[1193].w[10]" 0.98575267749444517;
	setAttr ".wl[1193].w[11]" 0.006024643665978829;
	setAttr -s 3 ".wl[1194].w";
	setAttr ".wl[1194].w[4]" 0.0093052530960202294;
	setAttr ".wl[1194].w[10]" 0.91201288697662897;
	setAttr ".wl[1194].w[11]" 0.078681859927350772;
	setAttr -s 3 ".wl[1195].w";
	setAttr ".wl[1195].w[4]" 0.024887660099603588;
	setAttr ".wl[1195].w[10]" 0.66897036433234147;
	setAttr ".wl[1195].w[11]" 0.30614197556805489;
	setAttr -s 3 ".wl[1196].w";
	setAttr ".wl[1196].w[4]" 0.021992310373979654;
	setAttr ".wl[1196].w[10]" 0.77815111413759974;
	setAttr ".wl[1196].w[11]" 0.19985657548842059;
	setAttr -s 3 ".wl[1197].w";
	setAttr ".wl[1197].w[3]" 0.14528541986505278;
	setAttr ".wl[1197].w[10]" 0.71400041892364652;
	setAttr ".wl[1197].w[11]" 0.14071416121130079;
	setAttr -s 3 ".wl[1198].w";
	setAttr ".wl[1198].w[0]" 5.9321642131217663e-006;
	setAttr ".wl[1198].w[48]" 0.81198167970646673;
	setAttr ".wl[1198].w[49]" 0.18801238812932033;
	setAttr -s 3 ".wl[1199].w";
	setAttr ".wl[1199].w[0]" 1.4765354944073712e-005;
	setAttr ".wl[1199].w[48]" 0.54954744873293138;
	setAttr ".wl[1199].w[49]" 0.45043778591212452;
	setAttr -s 3 ".wl[1200].w";
	setAttr ".wl[1200].w[0]" 1.0259883064179908e-006;
	setAttr ".wl[1200].w[48]" 0.50530682038750641;
	setAttr ".wl[1200].w[49]" 0.49469215362418734;
	setAttr -s 3 ".wl[1201].w";
	setAttr ".wl[1201].w[0]" 1.041877498239891e-006;
	setAttr ".wl[1201].w[48]" 0.49611943161536659;
	setAttr ".wl[1201].w[49]" 0.50387952650713508;
	setAttr -s 3 ".wl[1202].w";
	setAttr ".wl[1202].w[0]" 4.0096184866012194e-007;
	setAttr ".wl[1202].w[48]" 0.093417043840666236;
	setAttr ".wl[1202].w[49]" 0.90658255519748498;
	setAttr -s 3 ".wl[1203].w";
	setAttr ".wl[1203].w[0]" 6.5249112286644989e-007;
	setAttr ".wl[1203].w[48]" 0.0717436532134441;
	setAttr ".wl[1203].w[49]" 0.92825569429543309;
	setAttr -s 3 ".wl[1204].w[48:50]"  0.08387662127969675 0.91610534324906157 
		1.803547124165124e-005;
	setAttr -s 3 ".wl[1205].w[48:50]"  0.16940313220573783 0.83054462354326763 
		5.2244250994533517e-005;
	setAttr -s 3 ".wl[1206].w[48:50]"  0.11228112166194289 0.88769201222823124 
		2.6866109825818429e-005;
	setAttr -s 3 ".wl[1207].w[48:50]"  0.085971553740350926 0.91401089678715286 
		1.7549472496304578e-005;
	setAttr -s 3 ".wl[1208].w[48:50]"  0.10869685918123076 0.89128790138361458 
		1.5239435154765321e-005;
	setAttr -s 3 ".wl[1209].w[48:50]"  0.0040558979443562748 0.99594358556008189 
		5.1649556186431998e-007;
	setAttr -s 3 ".wl[1210].w[48:50]"  0.0022490507674253137 0.99775067788530925 
		2.7134726559574584e-007;
	setAttr -s 3 ".wl[1211].w[48:50]"  0.054588307250716353 0.9454040918701353 
		7.6008791483150519e-006;
	setAttr -s 3 ".wl[1212].w";
	setAttr ".wl[1212].w[0]" 0.00071807328272934694;
	setAttr ".wl[1212].w[48]" 0.99810949594163045;
	setAttr ".wl[1212].w[49]" 0.0011724307756402115;
	setAttr -s 3 ".wl[1213].w";
	setAttr ".wl[1213].w[0]" 0.10692602281777984;
	setAttr ".wl[1213].w[48]" 0.78200224410647612;
	setAttr ".wl[1213].w[53]" 0.11107173307574388;
	setAttr -s 3 ".wl[1214].w";
	setAttr ".wl[1214].w[13]" 0.03480780450003667;
	setAttr ".wl[1214].w[20]" 0.0028129087787625924;
	setAttr ".wl[1214].w[23]" 0.96237928672120088;
	setAttr -s 3 ".wl[1215].w";
	setAttr ".wl[1215].w[13]" 0.08911162531087774;
	setAttr ".wl[1215].w[20]" 0.01027575545384617;
	setAttr ".wl[1215].w[23]" 0.90061261923527614;
	setAttr -s 3 ".wl[1216].w";
	setAttr ".wl[1216].w[13]" 0.031515895385241383;
	setAttr ".wl[1216].w[20]" 0.0067317108480636767;
	setAttr ".wl[1216].w[23]" 0.96175239376669497;
	setAttr -s 3 ".wl[1217].w";
	setAttr ".wl[1217].w[13]" 0.02241115099116435;
	setAttr ".wl[1217].w[20]" 0.014478878288547287;
	setAttr ".wl[1217].w[23]" 0.96310997072028848;
	setAttr -s 3 ".wl[1218].w";
	setAttr ".wl[1218].w[13]" 0.039317391407943054;
	setAttr ".wl[1218].w[20]" 0.048021665676028683;
	setAttr ".wl[1218].w[23]" 0.91266094291602817;
	setAttr -s 3 ".wl[1219].w";
	setAttr ".wl[1219].w[13]" 0.18300067498152769;
	setAttr ".wl[1219].w[20]" 0.14273829585684825;
	setAttr ".wl[1219].w[23]" 0.67426102916162411;
	setAttr -s 3 ".wl[1220].w";
	setAttr ".wl[1220].w[13]" 0.23955673400201416;
	setAttr ".wl[1220].w[20]" 0.066077492976807095;
	setAttr ".wl[1220].w[23]" 0.69436577302117874;
	setAttr -s 3 ".wl[1221].w";
	setAttr ".wl[1221].w[13]" 0.045692314060843564;
	setAttr ".wl[1221].w[20]" 0.0061871053845124271;
	setAttr ".wl[1221].w[23]" 0.94812058055464399;
	setAttr -s 3 ".wl[1222].w";
	setAttr ".wl[1222].w[13]" 0.0033079585845240955;
	setAttr ".wl[1222].w[23]" 0.98997151929519256;
	setAttr ".wl[1222].w[24]" 0.0067205221202833142;
	setAttr -s 3 ".wl[1223].w";
	setAttr ".wl[1223].w[13]" 0.0043079263643432102;
	setAttr ".wl[1223].w[23]" 0.970548329265424;
	setAttr ".wl[1223].w[24]" 0.025143744370232826;
	setAttr -s 3 ".wl[1224].w";
	setAttr ".wl[1224].w[13]" 0.0073723857031357601;
	setAttr ".wl[1224].w[23]" 0.90668419879379625;
	setAttr ".wl[1224].w[24]" 0.085943415503068082;
	setAttr -s 3 ".wl[1225].w";
	setAttr ".wl[1225].w[13]" 0.0038793336812711189;
	setAttr ".wl[1225].w[23]" 0.96881886482498414;
	setAttr ".wl[1225].w[24]" 0.027301801493744872;
	setAttr -s 3 ".wl[1226].w";
	setAttr ".wl[1226].w[13]" 0.024892427979839642;
	setAttr ".wl[1226].w[23]" 0.88868183029619496;
	setAttr ".wl[1226].w[24]" 0.08642574172396561;
	setAttr -s 3 ".wl[1227].w";
	setAttr ".wl[1227].w[13]" 0.058453846433385234;
	setAttr ".wl[1227].w[23]" 0.89770478773869444;
	setAttr ".wl[1227].w[24]" 0.043841365827920316;
	setAttr -s 3 ".wl[1228].w";
	setAttr ".wl[1228].w[13]" 0.06374878481597844;
	setAttr ".wl[1228].w[20]" 0.030077067931208151;
	setAttr ".wl[1228].w[23]" 0.90617414725281353;
	setAttr -s 3 ".wl[1229].w";
	setAttr ".wl[1229].w[13]" 0.0059714291064376342;
	setAttr ".wl[1229].w[23]" 0.99102050408967957;
	setAttr ".wl[1229].w[24]" 0.003008066803882777;
	setAttr -s 3 ".wl[1230].w";
	setAttr ".wl[1230].w[13]" 0.00032518803956778049;
	setAttr ".wl[1230].w[23]" 0.88635581229081362;
	setAttr ".wl[1230].w[24]" 0.11331899966961856;
	setAttr -s 3 ".wl[1231].w";
	setAttr ".wl[1231].w[13]" 0.0011683505068083731;
	setAttr ".wl[1231].w[23]" 0.60088500849454096;
	setAttr ".wl[1231].w[24]" 0.39794664099865079;
	setAttr -s 3 ".wl[1232].w";
	setAttr ".wl[1232].w[13]" 0.0015699806435616323;
	setAttr ".wl[1232].w[23]" 0.5780648578918528;
	setAttr ".wl[1232].w[24]" 0.42036516146458563;
	setAttr -s 3 ".wl[1233].w";
	setAttr ".wl[1233].w[13]" 0.00070974363412749616;
	setAttr ".wl[1233].w[23]" 0.83757790107785357;
	setAttr ".wl[1233].w[24]" 0.16171235528801897;
	setAttr -s 3 ".wl[1234].w";
	setAttr ".wl[1234].w[13]" 0.0049720095065009717;
	setAttr ".wl[1234].w[23]" 0.60863042044005766;
	setAttr ".wl[1234].w[24]" 0.3863975700534415;
	setAttr -s 3 ".wl[1235].w";
	setAttr ".wl[1235].w[13]" 0.0031747020953154978;
	setAttr ".wl[1235].w[23]" 0.92717210760396518;
	setAttr ".wl[1235].w[24]" 0.069653190300719384;
	setAttr -s 3 ".wl[1236].w";
	setAttr ".wl[1236].w[13]" 0.0032075562116517528;
	setAttr ".wl[1236].w[23]" 0.97448412731524603;
	setAttr ".wl[1236].w[24]" 0.022308316473102167;
	setAttr -s 3 ".wl[1237].w";
	setAttr ".wl[1237].w[13]" 0.00054202588819603572;
	setAttr ".wl[1237].w[23]" 0.94792157317052284;
	setAttr ".wl[1237].w[24]" 0.051536400941281153;
	setAttr -s 3 ".wl[1238].w[23:25]"  0.48835554183727325 0.51154818041045669 
		9.6277752270011597e-005;
	setAttr -s 3 ".wl[1239].w[23:25]"  0.15351400954964592 0.84512727439509094 
		0.0013587160552632445;
	setAttr -s 3 ".wl[1240].w[23:25]"  0.22679453020817425 0.77018745180403714 
		0.0030180179877885042;
	setAttr -s 3 ".wl[1241].w[23:25]"  0.13337923601467225 0.8661085171578653 
		0.00051224682746242513;
	setAttr -s 3 ".wl[1242].w";
	setAttr ".wl[1242].w[13]" 0.00073938993238556829;
	setAttr ".wl[1242].w[23]" 0.12792768833646959;
	setAttr ".wl[1242].w[24]" 0.87133292173114474;
	setAttr -s 3 ".wl[1243].w";
	setAttr ".wl[1243].w[13]" 0.001548605463247791;
	setAttr ".wl[1243].w[23]" 0.49729752369084979;
	setAttr ".wl[1243].w[24]" 0.50115387084590246;
	setAttr -s 3 ".wl[1244].w";
	setAttr ".wl[1244].w[13]" 0.00052656721687659419;
	setAttr ".wl[1244].w[23]" 0.83381244134028165;
	setAttr ".wl[1244].w[24]" 0.16566099144284174;
	setAttr -s 3 ".wl[1245].w";
	setAttr ".wl[1245].w[13]" 0.00026069747103333999;
	setAttr ".wl[1245].w[23]" 0.56363681437483859;
	setAttr ".wl[1245].w[24]" 0.43610248815412817;
	setAttr -s 3 ".wl[1246].w[23:25]"  0.084085989765804406 0.91470109859929916 
		0.0012129116348964383;
	setAttr -s 3 ".wl[1247].w[23:25]"  0.080628538052137738 0.9096890520662565 
		0.0096824098816056473;
	setAttr -s 3 ".wl[1248].w[23:25]"  0.029782648197842768 0.96354193985518044 
		0.0066754119469769353;
	setAttr -s 3 ".wl[1249].w[23:25]"  0.018528854295236274 0.97946518846420783 
		0.0020059572405559723;
	setAttr -s 3 ".wl[1250].w[23:25]"  0.018251758004022792 0.98129238855711687 
		0.00045585343886034226;
	setAttr -s 3 ".wl[1251].w[23:25]"  0.053260653971456705 0.94656383885185635 
		0.00017550717668680159;
	setAttr -s 3 ".wl[1252].w[23:25]"  0.10302025955748191 0.89688014006328198 
		9.9600379236337248e-005;
	setAttr -s 3 ".wl[1253].w[23:25]"  0.083228465090110684 0.91651764565211979 
		0.00025388925776964274;
	setAttr -s 3 ".wl[1254].w[23:25]"  0.0057261165231400546 0.98374902568558054 
		0.010524857791279577;
	setAttr -s 3 ".wl[1255].w[23:25]"  0.014107001314890824 0.9245922057193936 
		0.061300792965715577;
	setAttr -s 3 ".wl[1256].w[23:25]"  0.0089419249359350989 0.89439511390659487 
		0.096662961157470084;
	setAttr -s 3 ".wl[1257].w[23:25]"  0.0017401369652615376 0.97092406484474547 
		0.027335798189992992;
	setAttr -s 3 ".wl[1258].w[23:25]"  0.0010555852954195733 0.99213782834033848 
		0.0068065863642420383;
	setAttr -s 3 ".wl[1259].w[23:25]"  0.002152698810690233 0.99441892252422637 
		0.0034283786650834993;
	setAttr -s 3 ".wl[1260].w[23:25]"  0.0049504864702790835 0.99364016942670641 
		0.001409344103014474;
	setAttr -s 3 ".wl[1261].w[23:25]"  0.0050212553911614397 0.99116189667736343 
		0.0038168479314749809;
	setAttr -s 3 ".wl[1262].w[23:25]"  0.0023956796122852745 0.89450999014753563 
		0.10309433024017896;
	setAttr -s 3 ".wl[1263].w[23:25]"  0.00098014609480944143 0.88396103718118069 
		0.11505881672400993;
	setAttr -s 3 ".wl[1264].w[23:25]"  0.001474991566321268 0.69365069247395017 
		0.30487431595972858;
	setAttr -s 3 ".wl[1265].w[23:25]"  0.00078622011472288182 0.67758958313196449 
		0.32162419675331266;
	setAttr -s 3 ".wl[1266].w[23:25]"  0.00015466644001695931 0.90282938570448434 
		0.097015947855498691;
	setAttr -s 3 ".wl[1267].w[23:25]"  0.00052845189997634831 0.91952863481619396 
		0.079942913283829728;
	setAttr -s 3 ".wl[1268].w[23:25]"  0.00043842970392526839 0.97717335332271393 
		0.022388216973360863;
	setAttr -s 3 ".wl[1269].w[23:25]"  0.0017925269364618965 0.92582397244635084 
		0.072383500617187305;
	setAttr -s 3 ".wl[1270].w[23:25]"  0.00026408824000148938 0.84010095043710165 
		0.15963496132289706;
	setAttr -s 3 ".wl[1271].w[23:25]"  8.599509252419354e-005 0.53123775037728105 
		0.46867625453019485;
	setAttr -s 3 ".wl[1272].w[23:25]"  0.00042183552793183748 0.56281434413755604 
		0.43676382033451228;
	setAttr -s 3 ".wl[1273].w[23:25]"  7.032553327406022e-005 0.51406459727338982 
		0.48586507719333616;
	setAttr -s 3 ".wl[1274].w[23:25]"  1.7790301394373008e-005 0.52192969301114478 
		0.47805251668746096;
	setAttr -s 3 ".wl[1275].w[23:25]"  6.4146257588624522e-005 0.85491011075246059 
		0.14502574298995091;
	setAttr -s 3 ".wl[1276].w[23:25]"  8.6458664422950596e-005 0.87960570531748561 
		0.12030783601809164;
	setAttr -s 3 ".wl[1277].w[23:25]"  0.00026386083639747524 0.87401031018178577 
		0.12572582898181692;
	setAttr -s 3 ".wl[1278].w[23:25]"  2.0120024375026791e-005 0.518400979529133 
		0.48157890044649199;
	setAttr -s 3 ".wl[1279].w[23:25]"  9.0910626108272686e-005 0.52395267630327003 
		0.4759564130706217;
	setAttr -s 3 ".wl[1280].w[23:25]"  0.0001749171373354597 0.52956145502275997 
		0.47026362783990472;
	setAttr -s 3 ".wl[1281].w[23:25]"  7.638054848471435e-005 0.51377293702969573 
		0.48615068242181969;
	setAttr -s 3 ".wl[1282].w[23:25]"  5.4665802790562451e-006 0.50283235269159532 
		0.49716218072812574;
	setAttr -s 3 ".wl[1283].w[23:25]"  3.172347496994559e-006 0.51513727898156014 
		0.484859548670943;
	setAttr -s 3 ".wl[1284].w[23:25]"  5.999706807621868e-006 0.5211168423688457 
		0.4788771579243466;
	setAttr -s 3 ".wl[1285].w[23:25]"  1.4720198710505905e-005 0.52050098265642319 
		0.47948429714486634;
	setAttr -s 3 ".wl[1286].w[23:25]"  2.5914309645716768e-005 0.50924060195806964 
		0.49073348373228459;
	setAttr -s 3 ".wl[1287].w[23:25]"  4.8153710585327787e-005 0.51159383491050059 
		0.48835801137891421;
	setAttr -s 3 ".wl[1288].w[23:25]"  5.6767375956544576e-005 0.51078068457001413 
		0.48916254805402953;
	setAttr -s 3 ".wl[1289].w[23:25]"  1.5543285979453829e-005 0.50291161101216175 
		0.49707284570185895;
	setAttr -s 3 ".wl[1290].w[23:25]"  3.8203378860802785e-006 0.50099636310893336 
		0.49899981655318071;
	setAttr -s 3 ".wl[1291].w[23:25]"  8.3783818966659088e-007 0.50151151993157717 
		0.49848764223023323;
	setAttr -s 3 ".wl[1292].w[23:25]"  1.1393974399160636e-006 0.50231175214652291 
		0.49768710845603725;
	setAttr -s 3 ".wl[1293].w[23:25]"  4.3920219669468464e-006 0.50319164483344836 
		0.4968039631445848;
	setAttr -s 3 ".wl[1294].w[23:25]"  6.9300645473979032e-006 0.5018079692043631 
		0.49818510073108946;
	setAttr -s 3 ".wl[1295].w[23:25]"  8.4097424425406846e-006 0.50199893343410884 
		0.49799265682344862;
	setAttr -s 3 ".wl[1296].w[23:25]"  7.3062566001491379e-006 0.50164966238077047 
		0.49834303136262942;
	setAttr -s 3 ".wl[1297].w[23:25]"  5.6672368949766823e-006 0.50128590015965624 
		0.49870843260344883;
	setAttr -s 3 ".wl[1298].w[23:25]"  4.5110732899963249e-006 0.50111043359911278 
		0.49888505532759719;
	setAttr -s 3 ".wl[1299].w[23:25]"  2.5530125381393436e-006 0.50076336054968462 
		0.49923408643777734;
	setAttr -s 3 ".wl[1300].w[23:25]"  3.0199360980062019e-006 0.50101541584513054 
		0.4989815642187716;
	setAttr -s 3 ".wl[1301].w[23:25]"  4.2099104309079499e-006 0.50127800092159513 
		0.49871778916797393;
	setAttr -s 3 ".wl[1302].w";
	setAttr ".wl[1302].w[13]" 0.03211249437830338;
	setAttr ".wl[1302].w[20]" 0.92575200589079798;
	setAttr ".wl[1302].w[23]" 0.042135499730898682;
	setAttr -s 3 ".wl[1303].w";
	setAttr ".wl[1303].w[13]" 0.021200363407365249;
	setAttr ".wl[1303].w[20]" 0.96055967182450719;
	setAttr ".wl[1303].w[23]" 0.018239964768127406;
	setAttr -s 3 ".wl[1304].w";
	setAttr ".wl[1304].w[13]" 0.02605492710358704;
	setAttr ".wl[1304].w[20]" 0.96894533514800008;
	setAttr ".wl[1304].w[23]" 0.0049997377484129754;
	setAttr -s 3 ".wl[1305].w";
	setAttr ".wl[1305].w[13]" 0.022923328217839743;
	setAttr ".wl[1305].w[17]" 0.014711997823221147;
	setAttr ".wl[1305].w[20]" 0.9623646739589391;
	setAttr -s 3 ".wl[1306].w";
	setAttr ".wl[1306].w[13]" 0.024485491434651174;
	setAttr ".wl[1306].w[17]" 0.027676178354660397;
	setAttr ".wl[1306].w[20]" 0.94783833021068853;
	setAttr -s 3 ".wl[1307].w";
	setAttr ".wl[1307].w[13]" 0.02335410114581965;
	setAttr ".wl[1307].w[17]" 0.016369803543224499;
	setAttr ".wl[1307].w[20]" 0.96027609531095581;
	setAttr -s 3 ".wl[1308].w";
	setAttr ".wl[1308].w[13]" 0.020584878368788743;
	setAttr ".wl[1308].w[20]" 0.97460519408801438;
	setAttr ".wl[1308].w[23]" 0.0048099275431969322;
	setAttr -s 3 ".wl[1309].w";
	setAttr ".wl[1309].w[13]" 0.097663766535448296;
	setAttr ".wl[1309].w[20]" 0.82439880504342877;
	setAttr ".wl[1309].w[23]" 0.077937428421123112;
	setAttr -s 3 ".wl[1310].w";
	setAttr ".wl[1310].w[13]" 0.0038663761346750371;
	setAttr ".wl[1310].w[20]" 0.98737567234559986;
	setAttr ".wl[1310].w[21]" 0.008757951519725287;
	setAttr -s 3 ".wl[1311].w";
	setAttr ".wl[1311].w[13]" 0.0066785534946897339;
	setAttr ".wl[1311].w[20]" 0.94605498114495534;
	setAttr ".wl[1311].w[21]" 0.047266465360355087;
	setAttr -s 3 ".wl[1312].w";
	setAttr ".wl[1312].w[13]" 0.0066522624050433408;
	setAttr ".wl[1312].w[20]" 0.90794062606189074;
	setAttr ".wl[1312].w[21]" 0.085407111533066057;
	setAttr -s 3 ".wl[1313].w";
	setAttr ".wl[1313].w[13]" 0.0024365195498145965;
	setAttr ".wl[1313].w[20]" 0.96796903610486085;
	setAttr ".wl[1313].w[21]" 0.029594444345324648;
	setAttr -s 3 ".wl[1314].w";
	setAttr ".wl[1314].w[13]" 0.009269841688837285;
	setAttr ".wl[1314].w[20]" 0.94468825514033161;
	setAttr ".wl[1314].w[21]" 0.046041903170831004;
	setAttr -s 3 ".wl[1315].w";
	setAttr ".wl[1315].w[13]" 0.013162062580801843;
	setAttr ".wl[1315].w[20]" 0.94171276082235145;
	setAttr ".wl[1315].w[21]" 0.045125176596846811;
	setAttr -s 3 ".wl[1316].w";
	setAttr ".wl[1316].w[13]" 0.016078741232766831;
	setAttr ".wl[1316].w[20]" 0.95145963773948605;
	setAttr ".wl[1316].w[21]" 0.032461621027747037;
	setAttr -s 3 ".wl[1317].w";
	setAttr ".wl[1317].w[13]" 0.02216353759162876;
	setAttr ".wl[1317].w[20]" 0.9516877544889516;
	setAttr ".wl[1317].w[21]" 0.02614870791941962;
	setAttr -s 3 ".wl[1318].w";
	setAttr ".wl[1318].w[13]" 0.00055409107052044782;
	setAttr ".wl[1318].w[20]" 0.96688995928910781;
	setAttr ".wl[1318].w[21]" 0.032555949640371881;
	setAttr -s 3 ".wl[1319].w";
	setAttr ".wl[1319].w[13]" 0.00045169872101648561;
	setAttr ".wl[1319].w[20]" 0.88278325601544838;
	setAttr ".wl[1319].w[21]" 0.11676504526353529;
	setAttr -s 3 ".wl[1320].w[20:22]"  0.57776731909661894 0.42055980644636382 
		0.0016728744570172942;
	setAttr -s 3 ".wl[1321].w";
	setAttr ".wl[1321].w[13]" 0.00097404019658365215;
	setAttr ".wl[1321].w[20]" 0.53741394066493753;
	setAttr ".wl[1321].w[21]" 0.46161201913847894;
	setAttr -s 3 ".wl[1322].w";
	setAttr ".wl[1322].w[13]" 0.0006220748264931773;
	setAttr ".wl[1322].w[20]" 0.87999151035194656;
	setAttr ".wl[1322].w[21]" 0.11938641482156032;
	setAttr -s 3 ".wl[1323].w";
	setAttr ".wl[1323].w[13]" 0.0029854149902708185;
	setAttr ".wl[1323].w[20]" 0.87442107145854675;
	setAttr ".wl[1323].w[21]" 0.12259351355118246;
	setAttr -s 3 ".wl[1324].w";
	setAttr ".wl[1324].w[13]" 0.0014922685586214459;
	setAttr ".wl[1324].w[20]" 0.93927563923600721;
	setAttr ".wl[1324].w[21]" 0.059232092205371283;
	setAttr -s 3 ".wl[1325].w";
	setAttr ".wl[1325].w[13]" 0.0038447500429522269;
	setAttr ".wl[1325].w[20]" 0.91306641990702875;
	setAttr ".wl[1325].w[21]" 0.083088830050018964;
	setAttr -s 3 ".wl[1326].w";
	setAttr ".wl[1326].w[13]" 0.00010964611879227818;
	setAttr ".wl[1326].w[20]" 0.81846994924694139;
	setAttr ".wl[1326].w[21]" 0.18142040463426634;
	setAttr -s 3 ".wl[1327].w[20:22]"  0.18483437231087732 0.81446936155663074 
		0.0006962661324920518;
	setAttr -s 3 ".wl[1328].w[20:22]"  0.24199873933484403 0.7530512703665948 
		0.0049499902985611806;
	setAttr -s 3 ".wl[1329].w[20:22]"  0.10126976553704446 0.8979835306400451 
		0.00074670382291043905;
	setAttr -s 3 ".wl[1330].w";
	setAttr ".wl[1330].w[13]" 0.00012490127337051369;
	setAttr ".wl[1330].w[20]" 0.15898441285981055;
	setAttr ".wl[1330].w[21]" 0.84089068586681914;
	setAttr -s 3 ".wl[1331].w";
	setAttr ".wl[1331].w[13]" 0.00043703622474479447;
	setAttr ".wl[1331].w[20]" 0.81241552462456734;
	setAttr ".wl[1331].w[21]" 0.18714743915068804;
	setAttr -s 3 ".wl[1332].w";
	setAttr ".wl[1332].w[13]" 0.00081386759720639189;
	setAttr ".wl[1332].w[20]" 0.61827330446497575;
	setAttr ".wl[1332].w[21]" 0.38091282793781794;
	setAttr -s 3 ".wl[1333].w";
	setAttr ".wl[1333].w[13]" 0.00055396966234471756;
	setAttr ".wl[1333].w[20]" 0.8371520376723931;
	setAttr ".wl[1333].w[21]" 0.16229399266526234;
	setAttr -s 3 ".wl[1334].w[20:22]"  0.079409904898440617 0.9202676392385809 
		0.00032245586297854315;
	setAttr -s 3 ".wl[1335].w[20:22]"  0.034959826395287212 0.96292469152671711 
		0.0021154820779955529;
	setAttr -s 3 ".wl[1336].w[20:22]"  0.08685994597982534 0.89928336515679497 
		0.013856688863379641;
	setAttr -s 3 ".wl[1337].w[20:22]"  0.021409124440176012 0.97648594819664969 
		0.0021049273631741751;
	setAttr -s 3 ".wl[1338].w[20:22]"  0.021715577697803475 0.97793204434365943 
		0.00035237795853711266;
	setAttr -s 3 ".wl[1339].w[20:22]"  0.076554378954181032 0.92337607020493007 
		6.9550840888934462e-005;
	setAttr -s 3 ".wl[1340].w[20:22]"  0.10665808832196251 0.89325684698794738 
		8.5064690090329686e-005;
	setAttr -s 3 ".wl[1341].w[20:22]"  0.0029720519095958755 0.99261346230855563 
		0.0044144857818485686;
	setAttr -s 3 ".wl[1342].w[20:22]"  0.0034699955672319181 0.98029036424326843 
		0.016239640189499638;
	setAttr -s 3 ".wl[1343].w[20:22]"  0.012541780417738168 0.91222923825102309 
		0.07522898133123887;
	setAttr -s 3 ".wl[1344].w[20:22]"  0.0026223505042458771 0.98191386622306431 
		0.015463783272689789;
	setAttr -s 3 ".wl[1345].w[20:22]"  0.0012711185658875793 0.99351422209934548 
		0.0052146593347670795;
	setAttr -s 3 ".wl[1346].w[20:22]"  0.0025618257952700011 0.99619858158481578 
		0.001239592619914206;
	setAttr -s 3 ".wl[1347].w[20:22]"  0.0047324551381399196 0.99450793396794457 
		0.00075961089391551407;
	setAttr -s 3 ".wl[1348].w[20:22]"  0.0050959666541025529 0.99355227520024569 
		0.0013517581456518424;
	setAttr -s 3 ".wl[1349].w[20:22]"  0.0002090352687844656 0.90822445491580717 
		0.091566509815408204;
	setAttr -s 3 ".wl[1350].w[20:22]"  0.00042129886796414659 0.85694622626572403 
		0.14263247486631198;
	setAttr -s 3 ".wl[1351].w[20:22]"  0.0014871943889322677 0.69691668727127054 
		0.30159611833979721;
	setAttr -s 3 ".wl[1352].w[20:22]"  0.00033541735110525838 0.86634356000332091 
		0.13332102264557402;
	setAttr -s 3 ".wl[1353].w[20:22]"  0.00011402397600318718 0.90350412842837169 
		0.096381847595625139;
	setAttr -s 3 ".wl[1354].w[20:22]"  0.0001559825776456658 0.97378618787342952 
		0.026057829548924816;
	setAttr -s 3 ".wl[1355].w[20:22]"  0.000310303875615454 0.98513897133416795 
		0.014550724790216683;
	setAttr -s 3 ".wl[1356].w[20:22]"  0.00033322122031442233 0.97583060379030151 
		0.023836174989384007;
	setAttr -s 3 ".wl[1357].w[20:22]"  1.9546643902010743e-005 0.53728998523523519 
		0.46269046812086279;
	setAttr -s 3 ".wl[1358].w[20:22]"  4.5933809106440744e-005 0.52768622271327659 
		0.47226784347761708;
	setAttr -s 3 ".wl[1359].w[20:22]"  0.00013376548697787129 0.51980028220053254 
		0.48006595231248961;
	setAttr -s 3 ".wl[1360].w[20:22]"  3.4479504094676462e-005 0.52551740117515267 
		0.47444811932075281;
	setAttr -s 3 ".wl[1361].w[20:22]"  1.0307768906589237e-005 0.53040413418702059 
		0.46958555804407298;
	setAttr -s 3 ".wl[1362].w[20:22]"  2.577154080327912e-005 0.84678714744687089 
		0.15318708101232598;
	setAttr -s 3 ".wl[1363].w[20:22]"  6.0422431630779016e-005 0.90765614966191155 
		0.092283427906457549;
	setAttr -s 3 ".wl[1364].w[20:22]"  6.3080829719910643e-005 0.87732076519065527 
		0.12261615397962485;
	setAttr -s 3 ".wl[1365].w[20:22]"  1.5893915694091118e-005 0.53678225869012608 
		0.4632018473941798;
	setAttr -s 3 ".wl[1366].w[20:22]"  8.4190859974491607e-006 0.50550015181990093 
		0.4944914290941016;
	setAttr -s 3 ".wl[1367].w[20:22]"  1.7315390525076733e-006 0.50416880045257362 
		0.49582946800837391;
	setAttr -s 3 ".wl[1368].w[20:22]"  2.1856768097107921e-006 0.52244004502770358 
		0.47755776929548666;
	setAttr -s 3 ".wl[1369].w[20:22]"  1.7643622596830052e-006 0.5040790495448757 
		0.49591918609286451;
	setAttr -s 3 ".wl[1370].w[20:22]"  1.4590827587465046e-006 0.5011319287191377 
		0.49886661219810363;
	setAttr -s 3 ".wl[1371].w[20:22]"  2.0188735841286738e-006 0.50059096883053378 
		0.49940701229588208;
	setAttr -s 3 ".wl[1372].w[20:22]"  1.0521914571713563e-006 0.50084637468428006 
		0.49915257312426281;
	setAttr -s 3 ".wl[1373].w[20:22]"  1.3588896612182767e-006 0.50377053206025135 
		0.49622810905008746;
	setAttr -s 3 ".wl[1374].w[20:22]"  1.4660401234320357e-006 0.5096171151100336 
		0.49038141884984304;
	setAttr -s 3 ".wl[1375].w[20:22]"  1.9011359783323687e-006 0.51212589085368776 
		0.48787220801033393;
	setAttr -s 3 ".wl[1376].w[20:22]"  2.2965592537953526e-006 0.51104433278732364 
		0.48895337065342254;
	setAttr -s 3 ".wl[1377].w[20:22]"  3.1194335613556489e-007 0.50088912790172413 
		0.49911056015491984;
	setAttr -s 3 ".wl[1378].w[20:22]"  2.9492447733256365e-007 0.50059367020207324 
		0.49940603487344953;
	setAttr -s 3 ".wl[1379].w[20:22]"  3.0977436795257798e-007 0.50050671785130674 
		0.49949297237432527;
	setAttr -s 3 ".wl[1380].w[20:22]"  2.9290821793034159e-007 0.50054895144548694 
		0.49945075564629526;
	setAttr -s 3 ".wl[1381].w[20:22]"  2.5467508855918418e-007 0.50071863374566217 
		0.4992811115792492;
	setAttr -s 3 ".wl[1382].w[20:22]"  2.6618576359863398e-007 0.50111030778403354 
		0.49888942603020286;
	setAttr -s 3 ".wl[1383].w[20:22]"  3.4531747953972229e-007 0.50159728999298259 
		0.49840236468953802;
	setAttr -s 3 ".wl[1384].w[20:22]"  3.8648781192240487e-007 0.50151870301193779 
		0.49848091050025023;
	setAttr -s 3 ".wl[1385].w";
	setAttr ".wl[1385].w[13]" 0.00010509532347271454;
	setAttr ".wl[1385].w[20]" 0.094609636646709919;
	setAttr ".wl[1385].w[21]" 0.90528526802981757;
	setAttr -s 3 ".wl[1386].w[20:22]"  2.5046466970113447e-005 0.66648779258906976 
		0.33348716094396014;
	setAttr -s 3 ".wl[1387].w[20:22]"  2.7302614616786804e-005 0.64847888587178049 
		0.35149381151360282;
	setAttr -s 3 ".wl[1388].w[20:22]"  5.6490662018096368e-006 0.50331804627342114 
		0.49667630466037699;
	setAttr -s 3 ".wl[1389].w[20:22]"  1.6617446618565925e-005 0.50291969504808831 
		0.49706368750529323;
	setAttr -s 3 ".wl[1390].w";
	setAttr ".wl[1390].w[13]" 0.016377265775651458;
	setAttr ".wl[1390].w[14]" 0.040459652364846978;
	setAttr ".wl[1390].w[17]" 0.94316308185950171;
	setAttr -s 3 ".wl[1391].w";
	setAttr ".wl[1391].w[13]" 0.019119474434069562;
	setAttr ".wl[1391].w[14]" 0.034366668006640899;
	setAttr ".wl[1391].w[17]" 0.94651385755928963;
	setAttr -s 3 ".wl[1392].w";
	setAttr ".wl[1392].w[13]" 0.027366315037858722;
	setAttr ".wl[1392].w[14]" 0.006288738381859553;
	setAttr ".wl[1392].w[17]" 0.96634494658028192;
	setAttr -s 3 ".wl[1393].w";
	setAttr ".wl[1393].w[13]" 0.024727720691224555;
	setAttr ".wl[1393].w[17]" 0.95509255075580723;
	setAttr ".wl[1393].w[20]" 0.02017972855296838;
	setAttr -s 3 ".wl[1394].w";
	setAttr ".wl[1394].w[13]" 0.043947343410355375;
	setAttr ".wl[1394].w[17]" 0.90846491281295105;
	setAttr ".wl[1394].w[20]" 0.047587743776693565;
	setAttr -s 3 ".wl[1395].w";
	setAttr ".wl[1395].w[13]" 0.15209637281687499;
	setAttr ".wl[1395].w[17]" 0.7485231963516964;
	setAttr ".wl[1395].w[20]" 0.099380430831428612;
	setAttr -s 3 ".wl[1396].w";
	setAttr ".wl[1396].w[13]" 0.21269659172084515;
	setAttr ".wl[1396].w[17]" 0.74519208898304501;
	setAttr ".wl[1396].w[20]" 0.042111319296109867;
	setAttr -s 3 ".wl[1397].w";
	setAttr ".wl[1397].w[13]" 0.032750993416173657;
	setAttr ".wl[1397].w[14]" 0.023116618567563304;
	setAttr ".wl[1397].w[17]" 0.9441323880162632;
	setAttr -s 3 ".wl[1398].w";
	setAttr ".wl[1398].w[14]" 0.0023608716836667283;
	setAttr ".wl[1398].w[17]" 0.98205600584312114;
	setAttr ".wl[1398].w[18]" 0.015583122473212056;
	setAttr -s 3 ".wl[1399].w";
	setAttr ".wl[1399].w[14]" 0.0016732662662833641;
	setAttr ".wl[1399].w[17]" 0.9940121003872977;
	setAttr ".wl[1399].w[18]" 0.0043146333464190298;
	setAttr -s 3 ".wl[1400].w";
	setAttr ".wl[1400].w[13]" 0.0011995729692429191;
	setAttr ".wl[1400].w[17]" 0.99651068373943807;
	setAttr ".wl[1400].w[18]" 0.0022897432913191909;
	setAttr -s 3 ".wl[1401].w";
	setAttr ".wl[1401].w[13]" 0.0013247882652114703;
	setAttr ".wl[1401].w[17]" 0.99500385518761003;
	setAttr ".wl[1401].w[18]" 0.0036713565471786923;
	setAttr -s 3 ".wl[1402].w";
	setAttr ".wl[1402].w[13]" 0.0019219299675850045;
	setAttr ".wl[1402].w[17]" 0.99427322017929753;
	setAttr ".wl[1402].w[18]" 0.0038048498531173254;
	setAttr -s 3 ".wl[1403].w";
	setAttr ".wl[1403].w[13]" 0.0045552572649837997;
	setAttr ".wl[1403].w[17]" 0.99291355610230181;
	setAttr ".wl[1403].w[20]" 0.0025311866327142364;
	setAttr -s 3 ".wl[1404].w";
	setAttr ".wl[1404].w[13]" 0.0059221672510002309;
	setAttr ".wl[1404].w[17]" 0.99000686607080901;
	setAttr ".wl[1404].w[18]" 0.004070966678190885;
	setAttr -s 3 ".wl[1405].w";
	setAttr ".wl[1405].w[13]" 0.0073889217398538463;
	setAttr ".wl[1405].w[17]" 0.96345232781356493;
	setAttr ".wl[1405].w[18]" 0.029158750446581078;
	setAttr -s 3 ".wl[1406].w";
	setAttr ".wl[1406].w[14]" 0.0003695045547245097;
	setAttr ".wl[1406].w[17]" 0.73955199555665163;
	setAttr ".wl[1406].w[18]" 0.26007849988862386;
	setAttr -s 3 ".wl[1407].w";
	setAttr ".wl[1407].w[14]" 0.00010179705202408654;
	setAttr ".wl[1407].w[17]" 0.92907311945758364;
	setAttr ".wl[1407].w[18]" 0.070825083490392418;
	setAttr -s 3 ".wl[1408].w";
	setAttr ".wl[1408].w[13]" 9.0408941563603797e-005;
	setAttr ".wl[1408].w[17]" 0.95447260855224525;
	setAttr ".wl[1408].w[18]" 0.045436982506191215;
	setAttr -s 3 ".wl[1409].w";
	setAttr ".wl[1409].w[13]" 0.00034652456555384677;
	setAttr ".wl[1409].w[17]" 0.89951451933270199;
	setAttr ".wl[1409].w[18]" 0.10013895610174418;
	setAttr -s 3 ".wl[1410].w";
	setAttr ".wl[1410].w[13]" 0.0004771362255839985;
	setAttr ".wl[1410].w[17]" 0.84218512826140546;
	setAttr ".wl[1410].w[18]" 0.15733773551301042;
	setAttr -s 3 ".wl[1411].w";
	setAttr ".wl[1411].w[13]" 0.00022076593409587573;
	setAttr ".wl[1411].w[17]" 0.94940735367375939;
	setAttr ".wl[1411].w[18]" 0.050371880392144838;
	setAttr -s 3 ".wl[1412].w";
	setAttr ".wl[1412].w[13]" 0.0002714277177989838;
	setAttr ".wl[1412].w[17]" 0.9393097871594922;
	setAttr ".wl[1412].w[18]" 0.060418785122708818;
	setAttr -s 3 ".wl[1413].w";
	setAttr ".wl[1413].w[13]" 0.00038044790470219718;
	setAttr ".wl[1413].w[17]" 0.88107694062619191;
	setAttr ".wl[1413].w[18]" 0.11854261146910594;
	setAttr -s 3 ".wl[1414].w[17:19]"  0.49990164537414744 0.50000045643718716 
		9.7898188665461539e-005;
	setAttr -s 3 ".wl[1415].w[17:19]"  0.51615543845552825 0.48357498342970484 
		0.00026957811476690244;
	setAttr -s 3 ".wl[1416].w[17:19]"  0.63609921583001716 0.36351808195730922 
		0.00038270221267362855;
	setAttr -s 3 ".wl[1417].w[17:19]"  0.85340685718060416 0.14642626564419411 
		0.00016687717520163511;
	setAttr -s 3 ".wl[1418].w[17:19]"  0.55376215213115143 0.44591427572054537 
		0.0003235721483033544;
	setAttr -s 3 ".wl[1419].w[17:19]"  0.54788093854304332 0.45159762675515963 
		0.0005214347017969196;
	setAttr -s 3 ".wl[1420].w[17:19]"  0.49891262002992004 0.50071477041433077 
		0.000372609555749319;
	setAttr -s 3 ".wl[1421].w[17:19]"  0.49718494078339526 0.502778175994819 
		3.6883221785854289e-005;
	setAttr -s 3 ".wl[1422].w[17:19]"  0.29158117287253049 0.70640892010263023 
		0.0020099070248392964;
	setAttr -s 3 ".wl[1423].w[17:19]"  0.11060991408236183 0.88885888664011414 
		0.00053119927752419242;
	setAttr -s 3 ".wl[1424].w[17:19]"  0.33010943338858123 0.66901039735821888 
		0.00088016925319994797;
	setAttr -s 3 ".wl[1425].w[17:19]"  0.37464274229632377 0.62446485076231717 
		0.00089240694135908519;
	setAttr -s 3 ".wl[1426].w[17:19]"  0.10624486333320377 0.89329512378636677 
		0.00046001288042962199;
	setAttr -s 3 ".wl[1427].w[17:19]"  0.23566513388802957 0.76321189100671438 
		0.0011229751052561823;
	setAttr -s 3 ".wl[1428].w[17:19]"  0.09265020094477773 0.9064940790080499 
		0.00085572004717251733;
	setAttr -s 3 ".wl[1429].w[17:19]"  0.10451539947003749 0.89510424274806077 
		0.00038035778190183679;
	setAttr -s 3 ".wl[1430].w[17:19]"  0.068821324300678985 0.91755378271285293 
		0.013624892986468028;
	setAttr -s 3 ".wl[1431].w[17:19]"  0.015343073431270827 0.9792815938838807 
		0.0053753326848485928;
	setAttr -s 3 ".wl[1432].w[17:19]"  0.018278727249188095 0.97914599799267077 
		0.0025752747581411339;
	setAttr -s 3 ".wl[1433].w[17:19]"  0.018508869464354483 0.97823297701877077 
		0.0032581535168749167;
	setAttr -s 3 ".wl[1434].w[17:19]"  0.02668379989761701 0.96747833636280278 
		0.0058378637395801467;
	setAttr -s 3 ".wl[1435].w[17:19]"  0.011621092716291182 0.98433851786223303 
		0.0040403894214758674;
	setAttr -s 3 ".wl[1436].w[17:19]"  0.023741520567843979 0.96309513001923508 
		0.013163349412920858;
	setAttr -s 3 ".wl[1437].w[17:19]"  0.011474512271136045 0.98445766279471048 
		0.0040678249341534883;
	setAttr -s 3 ".wl[1438].w[17:19]"  0.0036894288469981502 0.93307776315510782 
		0.063232807997893922;
	setAttr -s 3 ".wl[1439].w[17:19]"  0.0010471950129125943 0.92486219583185947 
		0.074090609155227874;
	setAttr -s 3 ".wl[1440].w[17:19]"  0.0012599135135516056 0.9613588986036119 
		0.03738118788283637;
	setAttr -s 3 ".wl[1441].w[17:19]"  0.0030638762642583818 0.93199249176029741 
		0.064943631975444255;
	setAttr -s 3 ".wl[1442].w[17:19]"  0.0013694909611854569 0.97454611039278261 
		0.024084398646032065;
	setAttr -s 3 ".wl[1443].w[17:19]"  0.0025269544112210126 0.91875016137789478 
		0.078722884210884261;
	setAttr -s 3 ".wl[1444].w[17:19]"  0.0014785338153659926 0.93812020145023667 
		0.060401264734397352;
	setAttr -s 3 ".wl[1445].w[17:19]"  0.00089147057347888255 0.94392847917544631 
		0.055180050251074919;
	setAttr -s 3 ".wl[1446].w[17:19]"  0.0010814973947903439 0.65091105342432343 
		0.34800744918088622;
	setAttr -s 3 ".wl[1447].w[17:19]"  0.00012228311047650424 0.54467177527242649 
		0.45520594161709704;
	setAttr -s 3 ".wl[1448].w[17:19]"  0.00019536597361541951 0.80059660781563491 
		0.19920802621074962;
	setAttr -s 3 ".wl[1449].w[17:19]"  0.00038487831576712101 0.84009183007329868 
		0.15952329161093415;
	setAttr -s 3 ".wl[1450].w[17:19]"  0.0002132053625371373 0.8500178172275743 
		0.14976897740988857;
	setAttr -s 3 ".wl[1451].w[17:19]"  0.00033841788984887453 0.8340642030409785 
		0.16559737906917255;
	setAttr -s 3 ".wl[1452].w[17:19]"  0.00045750178479861647 0.66696064681777778 
		0.33258185139742358;
	setAttr -s 3 ".wl[1453].w[17:19]"  0.00043876745939141348 0.64830459763719395 
		0.35125663490341469;
	setAttr -s 3 ".wl[1454].w[17:19]"  0.00041253224002242307 0.55992690295738734 
		0.43966056480259025;
	setAttr -s 3 ".wl[1455].w[17:19]"  3.5022036143290473e-005 0.50930017105460701 
		0.4906648069092498;
	setAttr -s 3 ".wl[1456].w[17:19]"  1.9843298293631752e-005 0.52585312975824849 
		0.47412702694345782;
	setAttr -s 3 ".wl[1457].w[17:19]"  2.9309346994668103e-005 0.52751807699484121 
		0.4724526136581641;
	setAttr -s 3 ".wl[1458].w[17:19]"  2.1683074126551694e-005 0.53253384434494022 
		0.4674444725809333;
	setAttr -s 3 ".wl[1459].w[17:19]"  2.6063690267232395e-005 0.52485406096931619 
		0.4751198753404165;
	setAttr -s 3 ".wl[1460].w[17:19]"  4.9537745437949767e-005 0.51854431406339929 
		0.48140614819116267;
	setAttr -s 3 ".wl[1461].w[17:19]"  5.7783988136652545e-005 0.51626604283662481 
		0.48367617317523859;
	setAttr -s 3 ".wl[1462].w[17:19]"  4.530236386895517e-005 0.50679381518114408 
		0.49316088245498696;
	setAttr -s 3 ".wl[1463].w[17:19]"  7.9301469882917591e-006 0.50216416486679538 
		0.49782790498621643;
	setAttr -s 3 ".wl[1464].w[17:19]"  8.4103583886656368e-006 0.50768043859949497 
		0.49231115104211653;
	setAttr -s 3 ".wl[1465].w[17:19]"  4.0835266939437659e-006 0.50393974198536973 
		0.49605617448793649;
	setAttr -s 3 ".wl[1466].w[17:19]"  3.0738561976323899e-006 0.50395195783547408 
		0.49604496830832828;
	setAttr -s 3 ".wl[1467].w[17:19]"  3.9963022311188865e-006 0.50344192374753183 
		0.49655407995023715;
	setAttr -s 3 ".wl[1468].w[17:19]"  7.3935296523938271e-006 0.50278675043627319 
		0.49720585603407441;
	setAttr -s 3 ".wl[1469].w[17:19]"  1.1693526952179e-005 0.50269302977569519 
		0.49729527669735257;
	setAttr -s 3 ".wl[1470].w[17:19]"  2.9734714941024958e-006 0.50072427835932387 
		0.49927274816918205;
	setAttr -s 3 ".wl[1471].w[17:19]"  2.0854508611783548e-006 0.50070977974755881 
		0.49928813480158002;
	setAttr -s 3 ".wl[1472].w[17:19]"  1.9577459635918904e-006 0.50096982213457009 
		0.49902822011946646;
	setAttr -s 3 ".wl[1473].w[17:19]"  1.6276076606961507e-006 0.50099067577797896 
		0.49900769661436051;
	setAttr -s 3 ".wl[1474].w[17:19]"  1.5361441344925348e-006 0.50099500954929166 
		0.49900345430657383;
	setAttr -s 3 ".wl[1475].w[17:19]"  1.7464130377087733e-006 0.50098608163486646 
		0.49901217195209591;
	setAttr -s 3 ".wl[1476].w[17:19]"  2.0606912356635898e-006 0.50081319943112257 
		0.49918473987764189;
	setAttr -s 3 ".wl[1477].w[17:19]"  2.2859591302376872e-006 0.50063633836571342 
		0.49936137567515637;
	setAttr -s 3 ".wl[1478].w[13:15]"  0.075846143388280357 0.91783087014159492 
		0.0063229864701247439;
	setAttr -s 3 ".wl[1479].w[13:15]"  0.042447477157462346 0.95025675206676963 
		0.0072957707757681407;
	setAttr -s 3 ".wl[1480].w";
	setAttr ".wl[1480].w[13]" 0.015916951393879539;
	setAttr ".wl[1480].w[14]" 0.97829450441590149;
	setAttr ".wl[1480].w[17]" 0.0057885441902190268;
	setAttr -s 3 ".wl[1481].w";
	setAttr ".wl[1481].w[13]" 0.044491037940107857;
	setAttr ".wl[1481].w[14]" 0.89399454185449867;
	setAttr ".wl[1481].w[17]" 0.061514420205393432;
	setAttr -s 3 ".wl[1482].w";
	setAttr ".wl[1482].w[13]" 0.031448589691778737;
	setAttr ".wl[1482].w[14]" 0.90057632841265467;
	setAttr ".wl[1482].w[17]" 0.067975081895566614;
	setAttr -s 3 ".wl[1483].w";
	setAttr ".wl[1483].w[13]" 0.096588899675796869;
	setAttr ".wl[1483].w[14]" 0.76990771550848269;
	setAttr ".wl[1483].w[17]" 0.13350338481572052;
	setAttr -s 3 ".wl[1484].w";
	setAttr ".wl[1484].w[13]" 0.033936891936336651;
	setAttr ".wl[1484].w[14]" 0.95661564679024746;
	setAttr ".wl[1484].w[17]" 0.0094474612734159417;
	setAttr -s 3 ".wl[1485].w";
	setAttr ".wl[1485].w[13]" 0.20792033955659286;
	setAttr ".wl[1485].w[14]" 0.78817771508761547;
	setAttr ".wl[1485].w[17]" 0.0039019453557917242;
	setAttr -s 3 ".wl[1486].w[13:15]"  0.029574348901022399 0.89158366979250225 
		0.078841981306475212;
	setAttr -s 3 ".wl[1487].w[13:15]"  0.020744208413290641 0.89866990504116651 
		0.080585886545542967;
	setAttr -s 3 ".wl[1488].w[13:15]"  0.011050077980979789 0.92503700348232498 
		0.063912918536695298;
	setAttr -s 3 ".wl[1489].w";
	setAttr ".wl[1489].w[14]" 0.96454891589713876;
	setAttr ".wl[1489].w[15]" 0.030711549749579993;
	setAttr ".wl[1489].w[17]" 0.0047395343532813565;
	setAttr -s 3 ".wl[1490].w";
	setAttr ".wl[1490].w[14]" 0.97640094260786492;
	setAttr ".wl[1490].w[15]" 0.014657170782010167;
	setAttr ".wl[1490].w[17]" 0.0089418866101249658;
	setAttr -s 3 ".wl[1491].w";
	setAttr ".wl[1491].w[13]" 0.031861180914323738;
	setAttr ".wl[1491].w[14]" 0.92861085933955323;
	setAttr ".wl[1491].w[17]" 0.039527959746123102;
	setAttr -s 3 ".wl[1492].w";
	setAttr ".wl[1492].w[13]" 0.026279170850982025;
	setAttr ".wl[1492].w[14]" 0.95800422460971468;
	setAttr ".wl[1492].w[17]" 0.01571660453930342;
	setAttr -s 3 ".wl[1493].w[13:15]"  0.016287010997238997 0.97533204552298747 
		0.0083809434797736757;
	setAttr -s 3 ".wl[1494].w[13:15]"  0.009739794907357005 0.76598168182096182 
		0.22427852327168102;
	setAttr -s 3 ".wl[1495].w[13:15]"  0.0029329816977178499 0.83213921196632357 
		0.16492780633595877;
	setAttr -s 3 ".wl[1496].w[14:16]"  0.88723230751885385 0.11149692737900439 
		0.0012707651021417168;
	setAttr -s 3 ".wl[1497].w[13:15]"  0.0023164147273539485 0.67549043921052965 
		0.32219314606211646;
	setAttr -s 3 ".wl[1498].w";
	setAttr ".wl[1498].w[14]" 0.85144318611433234;
	setAttr ".wl[1498].w[15]" 0.14384112242287739;
	setAttr ".wl[1498].w[17]" 0.0047156914627902741;
	setAttr -s 3 ".wl[1499].w";
	setAttr ".wl[1499].w[14]" 0.92344330975909084;
	setAttr ".wl[1499].w[15]" 0.065851427394397685;
	setAttr ".wl[1499].w[17]" 0.010705262846511687;
	setAttr -s 3 ".wl[1500].w[13:15]"  0.0026553691026717343 0.97180813149136747 
		0.025536499405960863;
	setAttr -s 3 ".wl[1501].w[13:15]"  0.0023257854503819378 0.96731916892394854 
		0.030355045625669451;
	setAttr -s 3 ".wl[1502].w[13:15]"  0.0048218348336536059 0.57146520724161165 
		0.42371295792473479;
	setAttr -s 3 ".wl[1503].w[14:16]"  0.21016946364184821 0.78846487364322082 
		0.001365662714931006;
	setAttr -s 3 ".wl[1504].w[14:16]"  0.42774209332576463 0.56276651592705529 
		0.0094913907471802107;
	setAttr -s 3 ".wl[1505].w[14:16]"  0.23123724484865144 0.76609780366876346 
		0.0026649514825852218;
	setAttr -s 3 ".wl[1506].w[14:16]"  0.83097105517343717 0.16680474597981054 
		0.0022241988467523125;
	setAttr -s 3 ".wl[1507].w[14:16]"  0.92317210500245583 0.07469866203559318 
		0.002129232961951083;
	setAttr -s 3 ".wl[1508].w[14:16]"  0.83533082481543131 0.15957438543063845 
		0.0050947897539302634;
	setAttr -s 3 ".wl[1509].w[14:16]"  0.89955007756276184 0.099194694704137054 
		0.0012552277331013119;
	setAttr -s 3 ".wl[1510].w[14:16]"  0.34516516722790525 0.65144516711508593 
		0.0033896656570087768;
	setAttr -s 3 ".wl[1511].w[14:16]"  0.06236441203425068 0.93421450363360525 
		0.0034210843321441178;
	setAttr -s 3 ".wl[1512].w[14:16]"  0.17375232491379353 0.80011501932465934 
		0.026132655761547066;
	setAttr -s 3 ".wl[1513].w[14:16]"  0.085576860741772495 0.90510595932324456 
		0.0093171799349830199;
	setAttr -s 3 ".wl[1514].w[14:16]"  0.4432283938559417 0.54652671497992944 
		0.01024489116412902;
	setAttr -s 3 ".wl[1515].w[14:16]"  0.61959572233179516 0.36847170916782157 
		0.011932568500383333;
	setAttr -s 3 ".wl[1516].w[14:16]"  0.62143413685348692 0.36605140310673423 
		0.0125144600397788;
	setAttr -s 3 ".wl[1517].w[14:16]"  0.56987113993654936 0.42489254812994864 
		0.0052363119335019307;
	setAttr -s 3 ".wl[1518].w[14:16]"  0.015042779258179593 0.98057351274669791 
		0.004383707995122387;
	setAttr -s 3 ".wl[1519].w[14:16]"  0.0078411628262572159 0.97532670923497444 
		0.016832127938768288;
	setAttr -s 3 ".wl[1520].w[14:16]"  0.038058703617413488 0.85093587443436558 
		0.11100542194822091;
	setAttr -s 3 ".wl[1521].w[14:16]"  0.038440482592978539 0.85021974930160249 
		0.11133976810541911;
	setAttr -s 3 ".wl[1522].w[14:16]"  0.032295292388412236 0.94349742626505906 
		0.024207281346528838;
	setAttr -s 3 ".wl[1523].w[14:16]"  0.18217777246458519 0.78222144878939637 
		0.035600778746018365;
	setAttr -s 3 ".wl[1524].w[14:16]"  0.19428318071121278 0.76686301771371135 
		0.038853801575075675;
	setAttr -s 3 ".wl[1525].w[14:16]"  0.037479346789561177 0.95762502978444441 
		0.0048956234259942685;
	setAttr -s 3 ".wl[1526].w[14:16]"  0.00087620357782869568 0.92089140312454132 
		0.078232393297630015;
	setAttr -s 3 ".wl[1527].w[14:16]"  0.0011489522086830829 0.87444875780753895 
		0.12440228998377784;
	setAttr -s 3 ".wl[1528].w[14:16]"  0.0058188233536648308 0.65632685337841179 
		0.33785432326792342;
	setAttr -s 3 ".wl[1529].w[14:16]"  0.0077384216672484315 0.63393085849335684 
		0.3583307198393948;
	setAttr -s 3 ".wl[1530].w[14:16]"  0.0096591160209274149 0.69909599197849415 
		0.29124489200057851;
	setAttr -s 3 ".wl[1531].w[14:16]"  0.010684099919888255 0.90676718983214666 
		0.082548710247965104;
	setAttr -s 3 ".wl[1532].w[14:16]"  0.035900711234345482 0.82025577801753335 
		0.14384351074812135;
	setAttr -s 3 ".wl[1533].w[14:16]"  0.0046882755992236338 0.96236442753060336 
		0.032947296870173191;
	setAttr -s 3 ".wl[1534].w[14:16]"  9.9499308058075811e-005 0.52819571814146515 
		0.47170478255047688;
	setAttr -s 3 ".wl[1535].w[14:16]"  0.00012232263804453063 0.52293905809189334 
		0.4769386192700622;
	setAttr -s 3 ".wl[1536].w[14:16]"  0.0004655606406569845 0.51333571864886773 
		0.48619872071047532;
	setAttr -s 3 ".wl[1537].w[14:16]"  0.00067509232344941208 0.51283248705272422 
		0.48649242062382636;
	setAttr -s 3 ".wl[1538].w[14:16]"  0.0035071355323728101 0.57504966762410781 
		0.42144319684351939;
	setAttr -s 3 ".wl[1539].w[14:16]"  0.0052642059010935445 0.64204437551869287 
		0.35269141858021369;
	setAttr -s 3 ".wl[1540].w[14:16]"  0.013553830223231103 0.70858380624373873 
		0.27786236353303018;
	setAttr -s 3 ".wl[1541].w[14:16]"  0.0018713763974307043 0.86439867521943925 
		0.1337299483831301;
	setAttr -s 3 ".wl[1542].w[14:16]"  8.2915119584245177e-005 0.50845423747662721 
		0.49146284740378848;
	setAttr -s 3 ".wl[1543].w[14:16]"  0.00011022444494567795 0.51285290105284331 
		0.48703687450221117;
	setAttr -s 3 ".wl[1544].w[14:16]"  6.9211493562954475e-005 0.50266856304608543 
		0.4972622254603517;
	setAttr -s 3 ".wl[1545].w[14:16]"  9.5989458775825454e-005 0.50201923868031095 
		0.49788477186091334;
	setAttr -s 3 ".wl[1546].w[14:16]"  0.00031704977595627739 0.50686318931709784 
		0.4928197609069459;
	setAttr -s 3 ".wl[1547].w[14:16]"  0.00060461700603870307 0.514883822516366 
		0.4845115604775953;
	setAttr -s 3 ".wl[1548].w[14:16]"  0.0055194039763058842 0.61444036431029159 
		0.38004023171340262;
	setAttr -s 3 ".wl[1549].w[14:16]"  0.0017639788953896513 0.6440027954136146 
		0.35423322569099569;
	setAttr -s 3 ".wl[1550].w[14:16]"  0.00024104528195588847 0.51501721100234743 
		0.48474174371569673;
	setAttr -s 3 ".wl[1551].w[14:16]"  0.00011274793301125378 0.5083292106031071 
		0.49155804146388177;
	setAttr -s 3 ".wl[1552].w[14:16]"  6.0991460345451448e-005 0.5036148823440999 
		0.49632412619555477;
	setAttr -s 3 ".wl[1553].w[14:16]"  2.327211691469619e-005 0.50084791542821827 
		0.49912881245486712;
	setAttr -s 3 ".wl[1554].w[14:16]"  4.8011522428122157e-005 0.50118219888761106 
		0.49876978958996077;
	setAttr -s 3 ".wl[1555].w[14:16]"  0.00018476958775937637 0.50484363301659563 
		0.494971597395645;
	setAttr -s 3 ".wl[1556].w[14:16]"  0.001532833425653456 0.54117575491136061 
		0.45729141166298587;
	setAttr -s 3 ".wl[1557].w[14:16]"  0.00081345257427925099 0.54519777059457153 
		0.45398877683114935;
	setAttr -s 3 ".wl[1558].w[14:16]"  4.1122279221507193e-005 0.50205866521534726 
		0.49790021250543143;
	setAttr -s 3 ".wl[1559].w[14:16]"  3.0063305073888345e-005 0.50155492413710656 
		0.49841501255781961;
	setAttr -s 3 ".wl[1560].w[14:16]"  2.5936888372191033e-005 0.50127480424975135 
		0.49869925886187644;
	setAttr -s 3 ".wl[1561].w[14:16]"  2.6030545363971488e-005 0.50115044552709109 
		0.49882352392754498;
	setAttr -s 3 ".wl[1562].w[14:16]"  2.7412703057013385e-005 0.50104316967404783 
		0.49892941762289522;
	setAttr -s 3 ".wl[1563].w[14:16]"  4.3136423729191649e-005 0.50146909158393349 
		0.49848777199233724;
	setAttr -s 3 ".wl[1564].w[14:16]"  7.5716303395041069e-005 0.50267147882816887 
		0.49725280486843598;
	setAttr -s 3 ".wl[1565].w[14:16]"  6.196407485973647e-005 0.50283279921904978 
		0.49710523670609069;
	setAttr -s 3 ".wl[1566].w";
	setAttr ".wl[1566].w[13]" 0.0064751965444835293;
	setAttr ".wl[1566].w[26]" 0.12982013439588655;
	setAttr ".wl[1566].w[27]" 0.86370466905963017;
	setAttr -s 3 ".wl[1567].w";
	setAttr ".wl[1567].w[13]" 0.035284674075603796;
	setAttr ".wl[1567].w[26]" 0.25181134926293214;
	setAttr ".wl[1567].w[27]" 0.71290397666146399;
	setAttr -s 3 ".wl[1568].w";
	setAttr ".wl[1568].w[13]" 0.025803023386856527;
	setAttr ".wl[1568].w[26]" 0.075103891240332732;
	setAttr ".wl[1568].w[27]" 0.89909308537281096;
	setAttr -s 3 ".wl[1569].w";
	setAttr ".wl[1569].w[13]" 0.081027632769293326;
	setAttr ".wl[1569].w[26]" 0.023964538562714483;
	setAttr ".wl[1569].w[27]" 0.89500782866799211;
	setAttr -s 3 ".wl[1570].w[26:28]"  0.0092076379957845324 0.98293786787854498 
		0.0078544941256704689;
	setAttr -s 3 ".wl[1571].w[26:28]"  0.033946651158702136 0.96130590560481388 
		0.0047474432364840152;
	setAttr -s 3 ".wl[1572].w[26:28]"  0.083354975125535413 0.91167707987392765 
		0.0049679450005370614;
	setAttr -s 3 ".wl[1573].w[26:28]"  0.016975428003349377 0.96325945785989098 
		0.019765114136759698;
	setAttr -s 3 ".wl[1574].w[26:28]"  0.061016832007856098 0.87337216160307884 
		0.065611006389064974;
	setAttr -s 3 ".wl[1575].w[26:28]"  0.013922374971258214 0.95726199307928117 
		0.028815631949460609;
	setAttr -s 3 ".wl[1576].w";
	setAttr ".wl[1576].w[13]" 0.030062500034201349;
	setAttr ".wl[1576].w[27]" 0.92911571019688333;
	setAttr ".wl[1576].w[28]" 0.040821789768915408;
	setAttr -s 3 ".wl[1577].w";
	setAttr ".wl[1577].w[13]" 0.0056766857965073947;
	setAttr ".wl[1577].w[27]" 0.96065673966100784;
	setAttr ".wl[1577].w[28]" 0.033666574542484784;
	setAttr -s 3 ".wl[1578].w[26:28]"  0.0033207091246829881 0.87219101690457268 
		0.1244882739707445;
	setAttr -s 3 ".wl[1579].w[26:28]"  0.003900896712898499 0.97107553213189057 
		0.025023571155210946;
	setAttr -s 3 ".wl[1580].w[26:28]"  0.023781468728115446 0.92478207898072451 
		0.051436452291160076;
	setAttr -s 3 ".wl[1581].w[26:28]"  0.0031174569441299567 0.87435740192126732 
		0.12252514113460274;
	setAttr -s 3 ".wl[1582].w[26:28]"  0.015312398364506921 0.78035997323848005 
		0.20432762839701299;
	setAttr -s 3 ".wl[1583].w[26:28]"  0.0086735292143588945 0.81890304693190441 
		0.1724234238537366;
	setAttr -s 3 ".wl[1584].w";
	setAttr ".wl[1584].w[13]" 0.0038577638758173164;
	setAttr ".wl[1584].w[27]" 0.93697026528876337;
	setAttr ".wl[1584].w[28]" 0.059171970835419335;
	setAttr -s 3 ".wl[1585].w";
	setAttr ".wl[1585].w[13]" 0.0010285428031492905;
	setAttr ".wl[1585].w[27]" 0.84055183468665484;
	setAttr ".wl[1585].w[28]" 0.15841962251019576;
	setAttr -s 3 ".wl[1586].w[26:28]"  0.0011063265956276021 0.71744110712444342 
		0.28145256627992887;
	setAttr -s 3 ".wl[1587].w[26:28]"  0.00061007229055758182 0.8816450489815375 
		0.11774487872790512;
	setAttr -s 3 ".wl[1588].w[26:28]"  0.0021104823294816662 0.86138333018333946 
		0.13650618748717908;
	setAttr -s 3 ".wl[1589].w[26:28]"  0.00036458010349709185 0.52569137256143084 
		0.47394404733507217;
	setAttr -s 3 ".wl[1590].w[26:28]"  0.0052176982421967373 0.64343828988425222 
		0.35134401187355097;
	setAttr -s 3 ".wl[1591].w[26:28]"  0.0041623947039721781 0.71415949793525624 
		0.28167810736077159;
	setAttr -s 3 ".wl[1592].w";
	setAttr ".wl[1592].w[13]" 0.00083078835550724533;
	setAttr ".wl[1592].w[27]" 0.84003877201378296;
	setAttr ".wl[1592].w[28]" 0.15913043963070986;
	setAttr -s 3 ".wl[1593].w";
	setAttr ".wl[1593].w[13]" 0.00010599736855077964;
	setAttr ".wl[1593].w[27]" 0.53434254069127174;
	setAttr ".wl[1593].w[28]" 0.46555146194017732;
	setAttr -s 3 ".wl[1594].w[26:28]"  0.00041153372016764877 0.59290803551297788 
		0.40668043076685462;
	setAttr -s 3 ".wl[1595].w[26:28]"  0.00026294211263210607 0.62383752155106753 
		0.3758995363363003;
	setAttr -s 3 ".wl[1596].w[26:28]"  0.00013718577035545635 0.52575875464859334 
		0.47410405958105123;
	setAttr -s 3 ".wl[1597].w[26:28]"  0.00012665039384520213 0.50579285160711296 
		0.49408049799904202;
	setAttr -s 3 ".wl[1598].w[26:28]"  0.0018277425600976419 0.56633343156895399 
		0.4318388258709483;
	setAttr -s 3 ".wl[1599].w[26:28]"  0.0016736912270171936 0.60343852471356307 
		0.39488778405941982;
	setAttr -s 3 ".wl[1600].w[26:28]"  0.0005986239285784026 0.60333054537718955 
		0.39607083069423193;
	setAttr -s 3 ".wl[1601].w[26:28]"  3.9059452914032619e-005 0.50889268131290932 
		0.49106825923417669;
	setAttr -s 3 ".wl[1602].w[26:28]"  3.8369589966737211e-005 0.50891330448989269 
		0.49104832592014042;
	setAttr -s 3 ".wl[1603].w[26:28]"  2.6369314594244475e-005 0.51130865034394035 
		0.48866498034146549;
	setAttr -s 3 ".wl[1604].w[26:28]"  2.135299784667584e-005 0.50368876668935547 
		0.49628988031279786;
	setAttr -s 3 ".wl[1605].w[26:28]"  3.1041932765460767e-005 0.5014472431226159 
		0.49852171494461872;
	setAttr -s 3 ".wl[1606].w[26:28]"  0.00013472827937774045 0.50557173145819223 
		0.49429354026243011;
	setAttr -s 3 ".wl[1607].w[26:28]"  0.00013131696711285657 0.50896835297994769 
		0.49090033005293937;
	setAttr -s 3 ".wl[1608].w[26:28]"  6.200238913688433e-005 0.50888333791467888 
		0.49105465969618423;
	setAttr -s 3 ".wl[1609].w[26:28]"  3.1039588539209005e-005 0.50543985269833847 
		0.49452910771312242;
	setAttr -s 3 ".wl[1610].w[26:28]"  9.7701035581898246e-006 0.50217612969558345 
		0.49781410020085837;
	setAttr -s 3 ".wl[1611].w[26:28]"  1.2167451530322393e-005 0.50409963349356846 
		0.49588819905490111;
	setAttr -s 3 ".wl[1612].w[26:28]"  6.9670484606502058e-006 0.50098252703927548 
		0.49901050591226381;
	setAttr -s 3 ".wl[1613].w[26:28]"  7.2824272851205833e-006 0.50048189990670011 
		0.49951081766601491;
	setAttr -s 3 ".wl[1614].w[26:28]"  1.1411332727773391e-005 0.5007221821220651 
		0.49926640654520726;
	setAttr -s 3 ".wl[1615].w[26:28]"  1.1261275682632365e-005 0.50084540121328269 
		0.49914333751103457;
	setAttr -s 3 ".wl[1616].w[26:28]"  7.6387246177189574e-006 0.50073042934861212 
		0.49926193192677015;
	setAttr -s 3 ".wl[1617].w[26:28]"  5.4817213724271007e-006 0.50063944942686722 
		0.49935506885176034;
	setAttr -s 3 ".wl[1618].w[26:28]"  3.554498558997428e-006 0.50048181338345876 
		0.49951463211798225;
	setAttr -s 3 ".wl[1619].w[26:28]"  3.117128597068888e-006 0.50045996556874894 
		0.49953691730265398;
	setAttr -s 3 ".wl[1620].w[26:28]"  4.0240961355961547e-006 0.50037554057986355 
		0.49962043532400074;
	setAttr -s 3 ".wl[1621].w[26:28]"  1.2718469738229174e-005 0.50068061821230514 
		0.49930666331795653;
	setAttr -s 3 ".wl[1622].w[26:28]"  3.907493179335697e-005 0.50198897355791272 
		0.49797195151029405;
	setAttr -s 3 ".wl[1623].w[26:28]"  2.5145652160604404e-005 0.50176349120191943 
		0.49821136314592002;
	setAttr -s 3 ".wl[1624].w[26:28]"  1.5434257222808623e-005 0.50180190685879777 
		0.4981826588839795;
	setAttr -s 3 ".wl[1625].w[26:28]"  8.7682638209820415e-006 0.50133257763181005 
		0.49865865410436899;
	setAttr -s 3 ".wl[1626].w[26:28]"  4.1169723651050763e-006 0.50078261068317942 
		0.49921327234445545;
	setAttr -s 3 ".wl[1627].w[26:28]"  3.9111305200898349e-006 0.50098086760105076 
		0.49901522126842923;
	setAttr -s 3 ".wl[1628].w[26:28]"  4.6437515591105323e-006 0.50051432734256418 
		0.4994810289058767;
	setAttr -s 3 ".wl[1629].w[14:16]"  6.7955484260868475e-005 0.50389418522959784 
		0.49603785928614141;
	setAttr -s 3 ".wl[1630].w[14:16]"  4.1659318628758281e-005 0.50264232373741435 
		0.49731601694395688;
	setAttr -s 3 ".wl[1631].w[14:16]"  3.5591703081546086e-005 0.50204222658610387 
		0.49792218171081459;
	setAttr -s 3 ".wl[1632].w[14:16]"  1.8838877512753665e-005 0.5008556795457727 
		0.49912548157671471;
	setAttr -s 3 ".wl[1633].w[14:16]"  2.5628110638074317e-005 0.50081020960107625 
		0.4991641622882857;
	setAttr -s 3 ".wl[1634].w[14:16]"  7.4665539737922112e-005 0.50217555032966665 
		0.4977497841305954;
	setAttr -s 3 ".wl[1635].w[14:16]"  0.00024735446688645943 0.50749411556274393 
		0.49225852997036956;
	setAttr -s 3 ".wl[1636].w[14:16]"  0.00016412672717139529 0.50824517977509409 
		0.49159069349773454;
	setAttr -s 3 ".wl[1637].w[17:19]"  7.906447601488348e-006 0.5013333234101639 
		0.49865877014223453;
	setAttr -s 3 ".wl[1638].w[17:19]"  3.1447722408035196e-006 0.50091809231263895 
		0.49907876291512032;
	setAttr -s 3 ".wl[1639].w[17:19]"  2.267996398072492e-006 0.50157624984731508 
		0.49842148215628684;
	setAttr -s 3 ".wl[1640].w[17:19]"  2.772389514562386e-006 0.50231098948127206 
		0.49768623812921353;
	setAttr -s 3 ".wl[1641].w[17:19]"  2.7671326020178691e-006 0.50244246383659363 
		0.49755476903080426;
	setAttr -s 3 ".wl[1642].w[17:19]"  3.2845839692936397e-006 0.50224230240327805 
		0.49775441301275264;
	setAttr -s 3 ".wl[1643].w[17:19]"  4.4961339025239818e-006 0.50178134916909478 
		0.49821415469700281;
	setAttr -s 3 ".wl[1644].w[17:19]"  4.0352242062096439e-006 0.50096036153424672 
		0.49903560324154711;
	setAttr -s 3 ".wl[1645].w[20:22]"  5.0116055520392765e-007 0.50127393763923589 
		0.49872556120020894;
	setAttr -s 3 ".wl[1646].w[20:22]"  4.6438241934705541e-007 0.50056879467376636 
		0.49943074094381429;
	setAttr -s 3 ".wl[1647].w[20:22]"  5.5156039041328107e-007 0.50042043089378463 
		0.49957901754582495;
	setAttr -s 3 ".wl[1648].w[20:22]"  5.6365238715812578e-007 0.50071077197480962 
		0.49928866437280323;
	setAttr -s 3 ".wl[1649].w[20:22]"  3.8764763368373733e-007 0.50107336526684365 
		0.49892624708552263;
	setAttr -s 3 ".wl[1650].w[20:22]"  4.3725692711218709e-007 0.50233717919243204 
		0.4976623835506408;
	setAttr -s 3 ".wl[1651].w[20:22]"  8.566117824010854e-007 0.50484174497283363 
		0.49515739841538409;
	setAttr -s 3 ".wl[1652].w[20:22]"  6.3470159778917489e-007 0.50282430920142951 
		0.49717505609697266;
	setAttr -s 3 ".wl[1653].w[23:25]"  1.0974094934226364e-005 0.50317247866618664 
		0.49681654723887908;
	setAttr -s 3 ".wl[1654].w[23:25]"  2.0344508406829721e-005 0.50479704740290876 
		0.49518260808868436;
	setAttr -s 3 ".wl[1655].w[23:25]"  1.5457775530587335e-005 0.50318574883928602 
		0.4967987933851834;
	setAttr -s 3 ".wl[1656].w[23:25]"  7.4857074229715046e-006 0.50154452829793827 
		0.4984479859946388;
	setAttr -s 3 ".wl[1657].w[23:25]"  4.4941954386629124e-006 0.5011035592347739 
		0.49889194656978747;
	setAttr -s 3 ".wl[1658].w[23:25]"  1.3245088168732952e-006 0.50063744638453134 
		0.49936122910665176;
	setAttr -s 3 ".wl[1659].w[23:25]"  1.3385701227754445e-006 0.50084955812620258 
		0.49914910330367479;
	setAttr -s 3 ".wl[1660].w[23:25]"  3.9725312289457977e-006 0.50158882100935831 
		0.49840720645941278;
	setAttr -s 3 ".wl[1661].w";
	setAttr ".wl[1661].w[13]" 0.28390612248333941;
	setAttr ".wl[1661].w[20]" 0.34103057958326605;
	setAttr ".wl[1661].w[23]" 0.37506329793339449;
	setAttr -s 3 ".wl[1662].w";
	setAttr ".wl[1662].w[13]" 0.22358606808172873;
	setAttr ".wl[1662].w[20]" 0.40095720342451213;
	setAttr ".wl[1662].w[23]" 0.37545672849375922;
	setAttr -s 3 ".wl[1663].w";
	setAttr ".wl[1663].w[13]" 0.39411700553357437;
	setAttr ".wl[1663].w[20]" 0.34307654757778488;
	setAttr ".wl[1663].w[23]" 0.26280644688864085;
	setAttr -s 3 ".wl[1664].w";
	setAttr ".wl[1664].w[13]" 0.38021732971843869;
	setAttr ".wl[1664].w[17]" 0.23366291342122592;
	setAttr ".wl[1664].w[20]" 0.38611975686033556;
	setAttr -s 3 ".wl[1665].w";
	setAttr ".wl[1665].w[13]" 0.24881706873060838;
	setAttr ".wl[1665].w[17]" 0.330359755888602;
	setAttr ".wl[1665].w[20]" 0.42082317538078973;
	setAttr -s 3 ".wl[1666].w";
	setAttr ".wl[1666].w[13]" 0.32927040320373835;
	setAttr ".wl[1666].w[17]" 0.28961774455061029;
	setAttr ".wl[1666].w[20]" 0.38111185224565142;
	setAttr -s 3 ".wl[1667].w";
	setAttr ".wl[1667].w[13]" 0.21807241012647813;
	setAttr ".wl[1667].w[14]" 0.41890653694804364;
	setAttr ".wl[1667].w[17]" 0.36302105292547832;
	setAttr -s 3 ".wl[1668].w";
	setAttr ".wl[1668].w[13]" 0.14266086968094877;
	setAttr ".wl[1668].w[14]" 0.43679201785559851;
	setAttr ".wl[1668].w[17]" 0.42054711246345278;
	setAttr -s 3 ".wl[1669].w";
	setAttr ".wl[1669].w[13]" 0.33667987884252493;
	setAttr ".wl[1669].w[14]" 0.31883382437442731;
	setAttr ".wl[1669].w[17]" 0.34448629678304771;
	setAttr -s 3 ".wl[1670].w";
	setAttr ".wl[1670].w[13]" 0.54412525861127481;
	setAttr ".wl[1670].w[14]" 0.077937561269671732;
	setAttr ".wl[1670].w[17]" 0.37793718011905353;
	setAttr -s 3 ".wl[1671].w";
	setAttr ".wl[1671].w[13]" 0.50884647710301434;
	setAttr ".wl[1671].w[20]" 0.42008212883369522;
	setAttr ".wl[1671].w[23]" 0.071071394063290508;
	setAttr -s 3 ".wl[1672].w";
	setAttr ".wl[1672].w[13]" 0.40377962886894042;
	setAttr ".wl[1672].w[20]" 0.08742209862289689;
	setAttr ".wl[1672].w[23]" 0.50879827250816267;
	setAttr -s 3 ".wl[1673].w";
	setAttr ".wl[1673].w[13]" 0.076940635496110049;
	setAttr ".wl[1673].w[14]" 0.9079315820717867;
	setAttr ".wl[1673].w[17]" 0.015127782432103221;
	setAttr -s 3 ".wl[1674].w";
	setAttr ".wl[1674].w[13]" 0.40425627089229393;
	setAttr ".wl[1674].w[14]" 0.59222761647047384;
	setAttr ".wl[1674].w[17]" 0.0035161126372324474;
	setAttr -s 3 ".wl[1675].w";
	setAttr ".wl[1675].w[13]" 0.44527989768711368;
	setAttr ".wl[1675].w[20]" 0.041895959129755612;
	setAttr ".wl[1675].w[23]" 0.51282414318313074;
	setAttr -s 3 ".wl[1676].w";
	setAttr ".wl[1676].w[13]" 0.49695417410386289;
	setAttr ".wl[1676].w[20]" 0.022443402164898856;
	setAttr ".wl[1676].w[23]" 0.48060242373123818;
	setAttr -s 3 ".wl[1677].w";
	setAttr ".wl[1677].w[13]" 0.63828593724084171;
	setAttr ".wl[1677].w[20]" 0.014174738846361834;
	setAttr ".wl[1677].w[23]" 0.34753932391279641;
	setAttr -s 3 ".wl[1678].w";
	setAttr ".wl[1678].w[13]" 0.96242336082310365;
	setAttr ".wl[1678].w[20]" 0.0083916251347243044;
	setAttr ".wl[1678].w[23]" 0.029185014042172074;
	setAttr -s 3 ".wl[1679].w";
	setAttr ".wl[1679].w[13]" 0.67812127825141011;
	setAttr ".wl[1679].w[20]" 0.28456987213797363;
	setAttr ".wl[1679].w[23]" 0.037308849610616236;
	setAttr -s 3 ".wl[1680].w";
	setAttr ".wl[1680].w[13]" 0.97078241560212364;
	setAttr ".wl[1680].w[17]" 0.020709537833271018;
	setAttr ".wl[1680].w[20]" 0.0085080465646052428;
	setAttr -s 3 ".wl[1681].w";
	setAttr ".wl[1681].w[13]" 0.73433688297008892;
	setAttr ".wl[1681].w[14]" 0.19364190734876732;
	setAttr ".wl[1681].w[17]" 0.072021209681143838;
	setAttr -s 3 ".wl[1682].w";
	setAttr ".wl[1682].w[13]" 0.89332749188942062;
	setAttr ".wl[1682].w[14]" 0.10276762018804966;
	setAttr ".wl[1682].w[17]" 0.0039048879225295511;
	setAttr -s 3 ".wl[1683].w";
	setAttr ".wl[1683].w[13]" 0.50551404604159367;
	setAttr ".wl[1683].w[14]" 0.49375107512865024;
	setAttr ".wl[1683].w[27]" 0.00073487882975605706;
	setAttr -s 3 ".wl[1684].w";
	setAttr ".wl[1684].w[13]" 0.9505110624160461;
	setAttr ".wl[1684].w[14]" 0.034818246324531663;
	setAttr ".wl[1684].w[17]" 0.014670691259422261;
	setAttr -s 3 ".wl[1685].w";
	setAttr ".wl[1685].w[13]" 0.94162865220388581;
	setAttr ".wl[1685].w[17]" 0.031439470018336232;
	setAttr ".wl[1685].w[20]" 0.026931877777777918;
	setAttr -s 3 ".wl[1686].w";
	setAttr ".wl[1686].w[13]" 0.92550336939482403;
	setAttr ".wl[1686].w[20]" 0.029210467697727626;
	setAttr ".wl[1686].w[23]" 0.045286162907448413;
	setAttr -s 3 ".wl[1687].w";
	setAttr ".wl[1687].w[13]" 0.97912212148904398;
	setAttr ".wl[1687].w[20]" 0.015267512378704157;
	setAttr ".wl[1687].w[23]" 0.0056103661322518331;
	setAttr -s 3 ".wl[1688].w";
	setAttr ".wl[1688].w[13]" 0.99237715380221125;
	setAttr ".wl[1688].w[17]" 0.0038008662414615244;
	setAttr ".wl[1688].w[26]" 0.0038219799563273434;
	setAttr -s 3 ".wl[1689].w";
	setAttr ".wl[1689].w[13]" 0.99587617596051003;
	setAttr ".wl[1689].w[23]" 0.0015939941501042474;
	setAttr ".wl[1689].w[26]" 0.0025298298893857941;
	setAttr -s 3 ".wl[1690].w";
	setAttr ".wl[1690].w[13]" 0.85587742454089921;
	setAttr ".wl[1690].w[20]" 0.019837180944451593;
	setAttr ".wl[1690].w[23]" 0.12428539451464919;
	setAttr -s 3 ".wl[1691].w";
	setAttr ".wl[1691].w[13]" 0.92403014920138105;
	setAttr ".wl[1691].w[14]" 0.068680618129908666;
	setAttr ".wl[1691].w[27]" 0.0072892326687102361;
	setAttr -s 3 ".wl[1692].w";
	setAttr ".wl[1692].w[13]" 0.88605536813616281;
	setAttr ".wl[1692].w[14]" 0.093326030321001729;
	setAttr ".wl[1692].w[27]" 0.020618601542835475;
	setAttr -s 3 ".wl[1693].w";
	setAttr ".wl[1693].w[13]" 0.85032732835504277;
	setAttr ".wl[1693].w[26]" 0.027721639903107029;
	setAttr ".wl[1693].w[27]" 0.1219510317418503;
	setAttr -s 3 ".wl[1694].w";
	setAttr ".wl[1694].w[13]" 0.97802203600350179;
	setAttr ".wl[1694].w[14]" 0.014071946545326858;
	setAttr ".wl[1694].w[17]" 0.0079060174511713394;
	setAttr -s 3 ".wl[1695].w";
	setAttr ".wl[1695].w[13]" 0.97094075980242178;
	setAttr ".wl[1695].w[17]" 0.0069908752336322955;
	setAttr ".wl[1695].w[20]" 0.022068364963945909;
	setAttr -s 3 ".wl[1696].w";
	setAttr ".wl[1696].w[13]" 0.9747503650199737;
	setAttr ".wl[1696].w[20]" 0.018129134472695669;
	setAttr ".wl[1696].w[23]" 0.0071205005073307044;
	setAttr -s 3 ".wl[1697].w";
	setAttr ".wl[1697].w[13]" 0.99830200791624146;
	setAttr ".wl[1697].w[20]" 0.0011823770774362107;
	setAttr ".wl[1697].w[23]" 0.000515615006322393;
	setAttr -s 3 ".wl[1698].w";
	setAttr ".wl[1698].w[13]" 0.99836779631688177;
	setAttr ".wl[1698].w[17]" 0.00038162298701678821;
	setAttr ".wl[1698].w[20]" 0.0012505806961014055;
	setAttr -s 3 ".wl[1699].w";
	setAttr ".wl[1699].w[13]" 0.98770788850166436;
	setAttr ".wl[1699].w[20]" 0.0049817358660545537;
	setAttr ".wl[1699].w[23]" 0.0073103756322812257;
	setAttr -s 3 ".wl[1700].w";
	setAttr ".wl[1700].w[13]" 0.99919178990945601;
	setAttr ".wl[1700].w[20]" 0.00034231871806412626;
	setAttr ".wl[1700].w[26]" 0.00046589137247983627;
	setAttr -s 3 ".wl[1701].w";
	setAttr ".wl[1701].w[13]" 0.99493540013501625;
	setAttr ".wl[1701].w[26]" 0.0032161863576979765;
	setAttr ".wl[1701].w[27]" 0.0018484135072858693;
	setAttr -s 3 ".wl[1702].w";
	setAttr ".wl[1702].w[13]" 0.95970086601869786;
	setAttr ".wl[1702].w[26]" 0.021825628414056969;
	setAttr ".wl[1702].w[27]" 0.018473505567245162;
	setAttr -s 3 ".wl[1703].w";
	setAttr ".wl[1703].w[12]" 0.01024117405040656;
	setAttr ".wl[1703].w[13]" 0.97323273585326686;
	setAttr ".wl[1703].w[23]" 0.016526090096326565;
	setAttr -s 3 ".wl[1704].w";
	setAttr ".wl[1704].w[12]" 0.0057717561744087317;
	setAttr ".wl[1704].w[13]" 0.96544782710693788;
	setAttr ".wl[1704].w[23]" 0.02878041671865355;
	setAttr -s 3 ".wl[1705].w";
	setAttr ".wl[1705].w[12]" 0.016644634387773641;
	setAttr ".wl[1705].w[13]" 0.84906013933765301;
	setAttr ".wl[1705].w[23]" 0.13429522627457338;
	setAttr -s 3 ".wl[1706].w";
	setAttr ".wl[1706].w[13]" 0.92635522511507484;
	setAttr ".wl[1706].w[26]" 0.020256881732681035;
	setAttr ".wl[1706].w[27]" 0.053387893152244174;
	setAttr -s 3 ".wl[1707].w";
	setAttr ".wl[1707].w[13]" 0.31302763264428818;
	setAttr ".wl[1707].w[26]" 0.58097176480214929;
	setAttr ".wl[1707].w[27]" 0.10600060255356242;
	setAttr -s 3 ".wl[1708].w";
	setAttr ".wl[1708].w[12]" 0.0049681862385997375;
	setAttr ".wl[1708].w[13]" 0.99462519776627722;
	setAttr ".wl[1708].w[23]" 0.00040661599512313009;
	setAttr -s 3 ".wl[1709].w";
	setAttr ".wl[1709].w[12]" 0.0017674480345504793;
	setAttr ".wl[1709].w[13]" 0.99751282178356393;
	setAttr ".wl[1709].w[26]" 0.00071973018188551145;
	setAttr -s 3 ".wl[1710].w";
	setAttr ".wl[1710].w[12]" 0.0019721821957535434;
	setAttr ".wl[1710].w[13]" 0.99718649326017317;
	setAttr ".wl[1710].w[23]" 0.00084132454407328833;
	setAttr -s 3 ".wl[1711].w";
	setAttr ".wl[1711].w[12]" 0.017071042247706867;
	setAttr ".wl[1711].w[13]" 0.97191156148902969;
	setAttr ".wl[1711].w[26]" 0.011017396263263445;
	setAttr -s 3 ".wl[1712].w";
	setAttr ".wl[1712].w[13]" 0.97992826651378961;
	setAttr ".wl[1712].w[26]" 0.01641276960836335;
	setAttr ".wl[1712].w[27]" 0.0036589638778471282;
	setAttr -s 3 ".wl[1713].w";
	setAttr ".wl[1713].w[13]" 0.87924100569886421;
	setAttr ".wl[1713].w[26]" 0.098862845101382699;
	setAttr ".wl[1713].w[27]" 0.021896149199753162;
	setAttr -s 3 ".wl[1714].w";
	setAttr ".wl[1714].w[12]" 0.010961914207583105;
	setAttr ".wl[1714].w[13]" 0.98785233249810778;
	setAttr ".wl[1714].w[23]" 0.0011857532943092266;
	setAttr -s 3 ".wl[1715].w";
	setAttr ".wl[1715].w[12]" 0.086297727780798306;
	setAttr ".wl[1715].w[13]" 0.89503953294205896;
	setAttr ".wl[1715].w[23]" 0.018662739277142855;
	setAttr -s 3 ".wl[1716].w";
	setAttr ".wl[1716].w[12]" 0.017711023467716476;
	setAttr ".wl[1716].w[13]" 0.98178036165753968;
	setAttr ".wl[1716].w[26]" 0.00050861487474381612;
	setAttr -s 3 ".wl[1717].w";
	setAttr ".wl[1717].w[13]" 0.95317105871660501;
	setAttr ".wl[1717].w[26]" 0.039576984314678189;
	setAttr ".wl[1717].w[27]" 0.0072519569687169985;
	setAttr -s 3 ".wl[1718].w";
	setAttr ".wl[1718].w[13]" 0.30018530329422694;
	setAttr ".wl[1718].w[26]" 0.52480248887713099;
	setAttr ".wl[1718].w[27]" 0.1750122078286421;
	setAttr -s 3 ".wl[1719].w";
	setAttr ".wl[1719].w[13]" 0.49798027611129175;
	setAttr ".wl[1719].w[26]" 0.15888484906578071;
	setAttr ".wl[1719].w[27]" 0.34313487482292754;
	setAttr -s 3 ".wl[1720].w";
	setAttr ".wl[1720].w[13]" 0.92836930457778866;
	setAttr ".wl[1720].w[26]" 0.06063919830600803;
	setAttr ".wl[1720].w[27]" 0.010991497116203312;
	setAttr -s 3 ".wl[1721].w";
	setAttr ".wl[1721].w[12]" 0.0036221613473206961;
	setAttr ".wl[1721].w[13]" 0.99036377453617297;
	setAttr ".wl[1721].w[26]" 0.0060140641165063726;
	setAttr -s 3 ".wl[1722].w";
	setAttr ".wl[1722].w[12]" 0.1358464875625118;
	setAttr ".wl[1722].w[13]" 0.83649462352955972;
	setAttr ".wl[1722].w[23]" 0.027658888907928721;
	setAttr -s 3 ".wl[1723].w";
	setAttr ".wl[1723].w[12]" 0.015906637797513952;
	setAttr ".wl[1723].w[13]" 0.97762906237380121;
	setAttr ".wl[1723].w[26]" 0.0064642998286847803;
	setAttr -s 3 ".wl[1724].w";
	setAttr ".wl[1724].w[12]" 0.011535491888636092;
	setAttr ".wl[1724].w[13]" 0.95978841129663373;
	setAttr ".wl[1724].w[26]" 0.028676096814730274;
	setAttr -s 3 ".wl[1725].w";
	setAttr ".wl[1725].w[13]" 0.87848681743664792;
	setAttr ".wl[1725].w[26]" 0.11451773594767832;
	setAttr ".wl[1725].w[27]" 0.0069954466156737531;
	setAttr -s 3 ".wl[1726].w";
	setAttr ".wl[1726].w[13]" 0.45640745395495969;
	setAttr ".wl[1726].w[26]" 0.48199267990766215;
	setAttr ".wl[1726].w[27]" 0.061599866137378244;
	setAttr -s 3 ".wl[1727].w";
	setAttr ".wl[1727].w[13]" 0.038117024462416847;
	setAttr ".wl[1727].w[26]" 0.85988913842981363;
	setAttr ".wl[1727].w[27]" 0.10199383710776949;
	setAttr -s 3 ".wl[1728].w";
	setAttr ".wl[1728].w[13]" 0.019593694001925073;
	setAttr ".wl[1728].w[26]" 0.44289928315970162;
	setAttr ".wl[1728].w[27]" 0.53750702283837326;
	setAttr -s 3 ".wl[1729].w";
	setAttr ".wl[1729].w[13]" 0.0063930421887183056;
	setAttr ".wl[1729].w[26]" 0.22100987723790719;
	setAttr ".wl[1729].w[27]" 0.77259708057337451;
	setAttr -s 3 ".wl[1730].w";
	setAttr ".wl[1730].w[13]" 0.003892806575905117;
	setAttr ".wl[1730].w[26]" 0.49781972093344612;
	setAttr ".wl[1730].w[27]" 0.49828747249064897;
	setAttr -s 3 ".wl[1731].w";
	setAttr ".wl[1731].w[13]" 0.02316934682045203;
	setAttr ".wl[1731].w[26]" 0.83646620854981779;
	setAttr ".wl[1731].w[27]" 0.14036444462973;
	setAttr -s 3 ".wl[1732].w";
	setAttr ".wl[1732].w[13]" 0.12157760202049245;
	setAttr ".wl[1732].w[26]" 0.68197960986986816;
	setAttr ".wl[1732].w[27]" 0.19644278810963939;
	setAttr -s 3 ".wl[1733].w";
	setAttr ".wl[1733].w[13]" 0.063377818208443806;
	setAttr ".wl[1733].w[26]" 0.84715648897604567;
	setAttr ".wl[1733].w[27]" 0.089465692815510506;
	setAttr -s 3 ".wl[1734].w";
	setAttr ".wl[1734].w[13]" 0.14477108833140939;
	setAttr ".wl[1734].w[26]" 0.84425097562348106;
	setAttr ".wl[1734].w[27]" 0.010977936045109566;
	setAttr -s 3 ".wl[1735].w";
	setAttr ".wl[1735].w[13]" 0.9070892903513712;
	setAttr ".wl[1735].w[26]" 0.09058952319993327;
	setAttr ".wl[1735].w[27]" 0.0023211864486955822;
	setAttr -s 3 ".wl[1736].w";
	setAttr ".wl[1736].w[13]" 0.83453503073295299;
	setAttr ".wl[1736].w[26]" 0.15616247783704007;
	setAttr ".wl[1736].w[27]" 0.0093024914300069272;
	setAttr -s 3 ".wl[1737].w";
	setAttr ".wl[1737].w[13]" 0.51251312323038767;
	setAttr ".wl[1737].w[26]" 0.44775135974904751;
	setAttr ".wl[1737].w[27]" 0.039735517020564853;
	setAttr -s 3 ".wl[1738].w";
	setAttr ".wl[1738].w[13]" 0.13471906491976435;
	setAttr ".wl[1738].w[26]" 0.83936798721891481;
	setAttr ".wl[1738].w[27]" 0.025912947861320975;
	setAttr -s 3 ".wl[1739].w";
	setAttr ".wl[1739].w[13]" 0.062189082251980839;
	setAttr ".wl[1739].w[26]" 0.82087800513964915;
	setAttr ".wl[1739].w[27]" 0.11693291260837001;
	setAttr -s 3 ".wl[1740].w";
	setAttr ".wl[1740].w[12]" 0.044146425731690093;
	setAttr ".wl[1740].w[13]" 0.90298665978598858;
	setAttr ".wl[1740].w[23]" 0.052866914482321309;
	setAttr -s 3 ".wl[1741].w";
	setAttr ".wl[1741].w[1]" 0.00035884342695229879;
	setAttr ".wl[1741].w[30]" 0.89516537244440009;
	setAttr ".wl[1741].w[31]" 0.1044757841286475;
	setAttr -s 3 ".wl[1742].w[29:31]"  0.00013431048796807633 0.87535230196424563 
		0.12451338754778635;
	setAttr -s 3 ".wl[1743].w[29:31]"  0.00018977344820586211 0.76732031767385844 
		0.23248990887793564;
	setAttr -s 3 ".wl[1744].w[29:31]"  1.4818860258150086e-005 0.91858404721075448 
		0.08140113392898729;
	setAttr -s 3 ".wl[1745].w";
	setAttr ".wl[1745].w[1]" 2.9870918486170671e-006;
	setAttr ".wl[1745].w[30]" 0.95075583806091457;
	setAttr ".wl[1745].w[31]" 0.049241174847236918;
	setAttr -s 3 ".wl[1746].w";
	setAttr ".wl[1746].w[1]" 3.3091173268869446e-005;
	setAttr ".wl[1746].w[30]" 0.9246848756431244;
	setAttr ".wl[1746].w[31]" 0.075282033183606753;
	setAttr -s 3 ".wl[1747].w";
	setAttr ".wl[1747].w[1]" 0.0002565021293922869;
	setAttr ".wl[1747].w[30]" 0.9287157114245046;
	setAttr ".wl[1747].w[31]" 0.071027786446103205;
	setAttr -s 3 ".wl[1748].w";
	setAttr ".wl[1748].w[1]" 0.0001549875393824315;
	setAttr ".wl[1748].w[30]" 0.91410475678709835;
	setAttr ".wl[1748].w[31]" 0.085740255673519269;
	setAttr -s 3 ".wl[1749].w[10:12]"  9.9370426009532493e-005 0.91074284504618286 
		0.089157784527807801;
	setAttr -s 3 ".wl[1750].w[10:12]"  0.00081836413276465075 0.68275777664481319 
		0.31642385922242211;
	setAttr -s 3 ".wl[1751].w[11:13]"  0.94377631279276319 0.056206792424045741 
		1.6894783191243492e-005;
	setAttr -s 3 ".wl[1752].w[10:12]"  0.0012509981618894425 0.61655306287587952 
		0.38219593896223114;
	setAttr -s 3 ".wl[1753].w[10:12]"  0.0012771522029643803 0.64031786369032884 
		0.35840498410670674;
	setAttr -s 3 ".wl[1754].w[10:12]"  0.0010237241180847548 0.62784001857840865 
		0.37113625730350663;
	setAttr -s 3 ".wl[1755].w";
	setAttr ".wl[1755].w[1]" 0.00059586231614615695;
	setAttr ".wl[1755].w[11]" 0.68880713132519256;
	setAttr ".wl[1755].w[12]" 0.31059700635866133;
	setAttr -s 3 ".wl[1756].w";
	setAttr ".wl[1756].w[2]" 7.2821846675584799e-005;
	setAttr ".wl[1756].w[11]" 0.90261770279415587;
	setAttr ".wl[1756].w[12]" 0.09730947535916866;
	setAttr -s 3 ".wl[1757].w[29:31]"  0.00090459748056967806 0.99734717570813103 
		0.0017482268112994088;
	setAttr -s 3 ".wl[1758].w[29:31]"  0.0011518847077309096 0.99460744147346047 
		0.0042406738188086237;
	setAttr -s 3 ".wl[1759].w";
	setAttr ".wl[1759].w[1]" 0.0035958896142026056;
	setAttr ".wl[1759].w[29]" 0.0079854365323006379;
	setAttr ".wl[1759].w[30]" 0.9884186738534968;
	setAttr -s 3 ".wl[1760].w";
	setAttr ".wl[1760].w[1]" 0.0091779596819840641;
	setAttr ".wl[1760].w[29]" 0.0067155905372723633;
	setAttr ".wl[1760].w[30]" 0.98410644978074358;
	setAttr -s 3 ".wl[1761].w";
	setAttr ".wl[1761].w[1]" 0.016166828924304686;
	setAttr ".wl[1761].w[2]" 0.0090812971598492921;
	setAttr ".wl[1761].w[30]" 0.97475187391584595;
	setAttr -s 3 ".wl[1762].w";
	setAttr ".wl[1762].w[1]" 0.0075041055050453073;
	setAttr ".wl[1762].w[2]" 0.0055554973672503859;
	setAttr ".wl[1762].w[30]" 0.98694039712770432;
	setAttr -s 3 ".wl[1763].w";
	setAttr ".wl[1763].w[1]" 0.0019397589710123129;
	setAttr ".wl[1763].w[2]" 0.0019365122682917753;
	setAttr ".wl[1763].w[30]" 0.9961237287606961;
	setAttr -s 3 ".wl[1764].w";
	setAttr ".wl[1764].w[2]" 0.00029574572464676179;
	setAttr ".wl[1764].w[29]" 0.00069917544316713516;
	setAttr ".wl[1764].w[30]" 0.99900507883218626;
	setAttr -s 3 ".wl[1765].w[10:12]"  0.012377112034745751 0.98143419554226174 
		0.0061886924229925082;
	setAttr -s 3 ".wl[1766].w[10:12]"  0.0056076273888688672 0.98987141153913383 
		0.0045209610719973026;
	setAttr -s 3 ".wl[1767].w[10:12]"  0.014788660958391981 0.97446540297171169 
		0.010745936069896425;
	setAttr -s 3 ".wl[1768].w[10:12]"  0.022834999848622788 0.95808826659918367 
		0.019076733552193584;
	setAttr -s 3 ".wl[1769].w";
	setAttr ".wl[1769].w[1]" 0.014334350011540351;
	setAttr ".wl[1769].w[2]" 0.011761848313743216;
	setAttr ".wl[1769].w[11]" 0.97390380167471635;
	setAttr -s 3 ".wl[1770].w";
	setAttr ".wl[1770].w[2]" 0.0061781539698534064;
	setAttr ".wl[1770].w[11]" 0.98349228442279535;
	setAttr ".wl[1770].w[12]" 0.010329561607351241;
	setAttr -s 3 ".wl[1771].w";
	setAttr ".wl[1771].w[2]" 0.0022914004644455292;
	setAttr ".wl[1771].w[11]" 0.99449602078172128;
	setAttr ".wl[1771].w[12]" 0.0032125787538331957;
	setAttr -s 3 ".wl[1772].w";
	setAttr ".wl[1772].w[2]" 0.00041753828602068968;
	setAttr ".wl[1772].w[10]" 0.0017935467934761587;
	setAttr ".wl[1772].w[11]" 0.99778891492050303;
	setAttr -s 3 ".wl[1773].w[29:31]"  0.00045811817892257763 0.959410738378634 
		0.040131143442443423;
	setAttr -s 3 ".wl[1774].w[29:31]"  0.00041025191401238958 0.90183811203153175 
		0.097751636054455998;
	setAttr -s 3 ".wl[1775].w[29:31]"  2.5028688391232819e-005 0.98809912361844221 
		0.0118758476931665;
	setAttr -s 3 ".wl[1776].w[29:31]"  7.8967197476233348e-006 0.99477071150137375 
		0.005221391778878732;
	setAttr -s 3 ".wl[1777].w";
	setAttr ".wl[1777].w[1]" 0.0001326724657334525;
	setAttr ".wl[1777].w[30]" 0.98575899523847998;
	setAttr ".wl[1777].w[31]" 0.014108332295786589;
	setAttr -s 3 ".wl[1778].w";
	setAttr ".wl[1778].w[1]" 0.00071926137113870778;
	setAttr ".wl[1778].w[30]" 0.97603216737445508;
	setAttr ".wl[1778].w[31]" 0.023248571254406252;
	setAttr -s 3 ".wl[1779].w";
	setAttr ".wl[1779].w[1]" 0.00090545738829738722;
	setAttr ".wl[1779].w[30]" 0.97646805997399244;
	setAttr ".wl[1779].w[31]" 0.02262648263771011;
	setAttr -s 3 ".wl[1780].w";
	setAttr ".wl[1780].w[1]" 0.0014321711224366206;
	setAttr ".wl[1780].w[30]" 0.95006556757111316;
	setAttr ".wl[1780].w[31]" 0.048502261306450259;
	setAttr -s 3 ".wl[1781].w[10:12]"  0.0020923171687039039 0.81556328583728699 
		0.18234439699400917;
	setAttr -s 3 ".wl[1782].w[10:12]"  0.0013053141555216727 0.85058775116348229 
		0.14810693468099609;
	setAttr -s 3 ".wl[1783].w[10:12]"  0.00042955931578482021 0.98375007430676664 
		0.015820366377448492;
	setAttr -s 3 ".wl[1784].w[10:12]"  5.2992359677445647e-005 0.9932810743388365 
		0.0066659333014861743;
	setAttr -s 3 ".wl[1785].w";
	setAttr ".wl[1785].w[2]" 0.00015214466971249388;
	setAttr ".wl[1785].w[11]" 0.97043122879314481;
	setAttr ".wl[1785].w[12]" 0.029416626537142856;
	setAttr -s 3 ".wl[1786].w";
	setAttr ".wl[1786].w[2]" 0.00095407222889822192;
	setAttr ".wl[1786].w[11]" 0.83576733109173618;
	setAttr ".wl[1786].w[12]" 0.16327859667936578;
	setAttr -s 3 ".wl[1787].w";
	setAttr ".wl[1787].w[1]" 0.0017147036662125816;
	setAttr ".wl[1787].w[11]" 0.80940352554938433;
	setAttr ".wl[1787].w[12]" 0.18888177078440299;
	setAttr -s 3 ".wl[1788].w[10:12]"  0.0018886920226663065 0.88171438929742185 
		0.11639691867991182;
	setAttr -s 3 ".wl[1789].w";
	setAttr ".wl[1789].w[1]" 0.35008237298917833;
	setAttr ".wl[1789].w[2]" 0.17204739838515809;
	setAttr ".wl[1789].w[11]" 0.47787022862566353;
	setAttr -s 3 ".wl[1790].w";
	setAttr ".wl[1790].w[1]" 0.35201800970163877;
	setAttr ".wl[1790].w[2]" 0.18440288392076759;
	setAttr ".wl[1790].w[11]" 0.4635791063775937;
	setAttr -s 3 ".wl[1791].w";
	setAttr ".wl[1791].w[1]" 0.34357277824259225;
	setAttr ".wl[1791].w[2]" 0.3880743133837381;
	setAttr ".wl[1791].w[11]" 0.26835290837366965;
	setAttr -s 3 ".wl[1792].w";
	setAttr ".wl[1792].w[1]" 0.33968688057463936;
	setAttr ".wl[1792].w[2]" 0.53439910836963733;
	setAttr ".wl[1792].w[11]" 0.12591401105572342;
	setAttr -s 3 ".wl[1793].w[0:2]"  0.030236306417683118 0.74142310761262609 
		0.22834058596969087;
	setAttr -s 3 ".wl[1794].w[1:3]"  0.6123137939974802 0.36313039154967847 
		0.024555814452841312;
	setAttr -s 3 ".wl[1795].w";
	setAttr ".wl[1795].w[1]" 0.76558079419227254;
	setAttr ".wl[1795].w[2]" 0.209386285483387;
	setAttr ".wl[1795].w[30]" 0.025032920324340457;
	setAttr -s 3 ".wl[1796].w";
	setAttr ".wl[1796].w[1]" 0.49473519390203791;
	setAttr ".wl[1796].w[2]" 0.30672247886111287;
	setAttr ".wl[1796].w[30]" 0.19854232723684925;
	setAttr -s 3 ".wl[1797].w";
	setAttr ".wl[1797].w[1]" 0.40184755204174705;
	setAttr ".wl[1797].w[2]" 0.33515995412266758;
	setAttr ".wl[1797].w[30]" 0.26299249383558543;
	setAttr -s 3 ".wl[1798].w";
	setAttr ".wl[1798].w[1]" 0.45228870368390794;
	setAttr ".wl[1798].w[2]" 0.14929602537899467;
	setAttr ".wl[1798].w[30]" 0.39841527093709744;
	setAttr -s 3 ".wl[1799].w";
	setAttr ".wl[1799].w[1]" 0.43097730448676347;
	setAttr ".wl[1799].w[2]" 0.16088881455201073;
	setAttr ".wl[1799].w[30]" 0.40813388096122577;
	setAttr -s 3 ".wl[1800].w";
	setAttr ".wl[1800].w[0]" 0.041305749607912438;
	setAttr ".wl[1800].w[48]" 0.92226701696677582;
	setAttr ".wl[1800].w[53]" 0.036427233425311893;
	setAttr -s 3 ".wl[1801].w";
	setAttr ".wl[1801].w[0]" 0.068448900502654383;
	setAttr ".wl[1801].w[48]" 0.089288638536938872;
	setAttr ".wl[1801].w[53]" 0.8422624609604068;
	setAttr -s 3 ".wl[1802].w[23:25]"  5.7353259156345743e-006 0.50144285073029327 
		0.49855141394379093;
	setAttr -s 3 ".wl[1803].w[42:44]"  3.0337910105944538e-007 0.50033236103508794 
		0.49966733558581111;
	setAttr -s 3 ".wl[1804].w[20:22]"  2.4569407416658087e-007 0.50073444451663662 
		0.49926530978928912;
	setAttr -s 3 ".wl[1805].w[39:41]"  1.3229381442966717e-007 0.50015878025160887 
		0.49984108745457662;
	setAttr -s 3 ".wl[1806].w[17:19]"  2.0286903652746278e-006 0.50086475940118158 
		0.49913321190845317;
	setAttr -s 3 ".wl[1807].w[36:38]"  5.3632900452787541e-007 0.50038614781532553 
		0.49961331585566998;
	setAttr -s 3 ".wl[1808].w[14:16]"  3.0204168887659941e-005 0.50130180877840091 
		0.49866798705271143;
	setAttr -s 3 ".wl[1809].w[33:35]"  8.28910900951696e-007 0.50046126278175218 
		0.4995379083073469;
	setAttr -s 3 ".wl[1810].w[26:28]"  5.3217961973242282e-006 0.50045355414574855 
		0.49954112405805423;
	setAttr -s 3 ".wl[1811].w[45:47]"  1.1759652356867782e-006 0.50028618439857886 
		0.49971263963618551;
	setAttr -s 3 ".wl[1812].w";
	setAttr ".wl[1812].w[13]" 0.047035507272660745;
	setAttr ".wl[1812].w[26]" 0.0077741735914317088;
	setAttr ".wl[1812].w[27]" 0.94519031913590756;
	setAttr -s 3 ".wl[1813].w";
	setAttr ".wl[1813].w[13]" 0.26378235281927387;
	setAttr ".wl[1813].w[26]" 0.028423049551509549;
	setAttr ".wl[1813].w[27]" 0.7077945976292167;
	setAttr -s 3 ".wl[1814].w";
	setAttr ".wl[1814].w[13]" 0.73437213547115665;
	setAttr ".wl[1814].w[14]" 0.027103344071258518;
	setAttr ".wl[1814].w[27]" 0.2385245204575849;
	setAttr -s 3 ".wl[1815].w";
	setAttr ".wl[1815].w[32]" 0.055256684334120142;
	setAttr ".wl[1815].w[45]" 0.015010877107729628;
	setAttr ".wl[1815].w[46]" 0.92973243855815024;
	setAttr -s 3 ".wl[1816].w";
	setAttr ".wl[1816].w[32]" 0.29615502070285182;
	setAttr ".wl[1816].w[45]" 0.03458582101150507;
	setAttr ".wl[1816].w[46]" 0.66925915828564309;
	setAttr -s 3 ".wl[1817].w";
	setAttr ".wl[1817].w[32]" 0.86619068753311024;
	setAttr ".wl[1817].w[33]" 0.019477702837621236;
	setAttr ".wl[1817].w[46]" 0.11433160962926871;
	setAttr -s 3 ".wl[1818].w";
	setAttr ".wl[1818].w[13]" 0.22174785382874937;
	setAttr ".wl[1818].w[26]" 0.063746729433712263;
	setAttr ".wl[1818].w[27]" 0.71450541673753842;
	setAttr -s 3 ".wl[1819].w";
	setAttr ".wl[1819].w[32]" 0.28701254741381976;
	setAttr ".wl[1819].w[45]" 0.16839347955308667;
	setAttr ".wl[1819].w[46]" 0.54459397303309365;
	setAttr -s 3 ".wl[1820].w";
	setAttr ".wl[1820].w[13]" 0.95272910560749258;
	setAttr ".wl[1820].w[14]" 0.027837154805845712;
	setAttr ".wl[1820].w[27]" 0.019433739586661728;
	setAttr -s 3 ".wl[1821].w";
	setAttr ".wl[1821].w[32]" 0.9601477320012145;
	setAttr ".wl[1821].w[33]" 0.020550925640846453;
	setAttr ".wl[1821].w[46]" 0.019301342357939049;
	setAttr -s 3 ".wl[1822].w";
	setAttr ".wl[1822].w[13]" 0.65373764995685657;
	setAttr ".wl[1822].w[26]" 0.15183243868294632;
	setAttr ".wl[1822].w[27]" 0.19442991136019711;
	setAttr -s 3 ".wl[1823].w";
	setAttr ".wl[1823].w[32]" 0.80329584855159419;
	setAttr ".wl[1823].w[45]" 0.12031381072091574;
	setAttr ".wl[1823].w[46]" 0.076390340727489972;
	setAttr -s 3 ".wl[1824].w";
	setAttr ".wl[1824].w[13]" 0.098304024936356843;
	setAttr ".wl[1824].w[26]" 0.094561776334464387;
	setAttr ".wl[1824].w[27]" 0.80713419872917869;
	setAttr -s 3 ".wl[1825].w";
	setAttr ".wl[1825].w[32]" 0.24557689301098143;
	setAttr ".wl[1825].w[45]" 0.33256414081240054;
	setAttr ".wl[1825].w[46]" 0.42185896617661806;
	setAttr -s 3 ".wl[1826].w";
	setAttr ".wl[1826].w[13]" 0.020051974301515511;
	setAttr ".wl[1826].w[26]" 0.084647526037332541;
	setAttr ".wl[1826].w[27]" 0.8953004996611521;
	setAttr -s 3 ".wl[1827].w";
	setAttr ".wl[1827].w[32]" 0.034892267739596576;
	setAttr ".wl[1827].w[45]" 0.13376748492752585;
	setAttr ".wl[1827].w[46]" 0.83134024733287781;
	setAttr -s 3 ".wl[1828].w";
	setAttr ".wl[1828].w[32]" 0.95425333132120671;
	setAttr ".wl[1828].w[45]" 0.039302392718915426;
	setAttr ".wl[1828].w[46]" 0.0064442759598779481;
	setAttr -s 3 ".wl[1829].w";
	setAttr ".wl[1829].w[13]" 0.93964365037262243;
	setAttr ".wl[1829].w[26]" 0.056627912474993762;
	setAttr ".wl[1829].w[27]" 0.0037284371523839039;
	setAttr -s 3 ".wl[1830].w";
	setAttr ".wl[1830].w[0]" 0.86008921811358729;
	setAttr ".wl[1830].w[1]" 0.12908227520145482;
	setAttr ".wl[1830].w[48]" 0.010828506684957983;
	setAttr -s 3 ".wl[1831].w";
	setAttr ".wl[1831].w[0]" 0.78780995438572687;
	setAttr ".wl[1831].w[1]" 0.17028522649838992;
	setAttr ".wl[1831].w[53]" 0.041904819115883132;
	setAttr -s 3 ".wl[1832].w";
	setAttr ".wl[1832].w[0]" 0.90199026780288516;
	setAttr ".wl[1832].w[1]" 0.0047742384169248073;
	setAttr ".wl[1832].w[53]" 0.093235493780190179;
	setAttr -s 3 ".wl[1833].w";
	setAttr ".wl[1833].w[0]" 0.93361427202484892;
	setAttr ".wl[1833].w[1]" 0.0086552351034401703;
	setAttr ".wl[1833].w[48]" 0.057730492871711017;
	setAttr -s 3 ".wl[1834].w";
	setAttr ".wl[1834].w[0]" 0.70243689737392601;
	setAttr ".wl[1834].w[48]" 0.0077358194858346491;
	setAttr ".wl[1834].w[53]" 0.28982728314023942;
	setAttr -s 3 ".wl[1835].w";
	setAttr ".wl[1835].w[0]" 0.98716239757771407;
	setAttr ".wl[1835].w[48]" 0.0055043338836151586;
	setAttr ".wl[1835].w[53]" 0.0073332685386708254;
	setAttr -s 3 ".wl[1836].w";
	setAttr ".wl[1836].w[0]" 0.80493852524137643;
	setAttr ".wl[1836].w[48]" 0.18916672302300233;
	setAttr ".wl[1836].w[53]" 0.0058947517356213322;
	setAttr -s 3 ".wl[1837].w";
	setAttr ".wl[1837].w[2]" 0.011438853349626806;
	setAttr ".wl[1837].w[10]" 0.045216461010547986;
	setAttr ".wl[1837].w[11]" 0.94334468563982521;
	setAttr -s 3 ".wl[1838].w";
	setAttr ".wl[1838].w[1]" 0.010117022183041969;
	setAttr ".wl[1838].w[29]" 0.027765241959519852;
	setAttr ".wl[1838].w[30]" 0.96211773585743832;
	setAttr -s 3 ".wl[1839].w";
	setAttr ".wl[1839].w[1]" 0.099904611712016839;
	setAttr ".wl[1839].w[10]" 0.096463632812113925;
	setAttr ".wl[1839].w[11]" 0.80363175547586929;
	setAttr -s 3 ".wl[1840].w";
	setAttr ".wl[1840].w[1]" 0.055462986319768232;
	setAttr ".wl[1840].w[29]" 0.12409623706761991;
	setAttr ".wl[1840].w[30]" 0.82044077661261172;
	setAttr -s 3 ".wl[1841].w";
	setAttr ".wl[1841].w[1]" 0.12740587725985872;
	setAttr ".wl[1841].w[2]" 0.059541011145084546;
	setAttr ".wl[1841].w[30]" 0.81305311159505678;
	setAttr -s 3 ".wl[1842].w";
	setAttr ".wl[1842].w[1]" 0.069420341197123481;
	setAttr ".wl[1842].w[2]" 0.054934507451788517;
	setAttr ".wl[1842].w[11]" 0.87564515135108811;
	setAttr -s 3 ".wl[1843].w";
	setAttr ".wl[1843].w[1]" 0.11803057829656263;
	setAttr ".wl[1843].w[2]" 0.08406848636907413;
	setAttr ".wl[1843].w[11]" 0.79790093533436324;
	setAttr -s 3 ".wl[1844].w";
	setAttr ".wl[1844].w[1]" 0.071778587059456139;
	setAttr ".wl[1844].w[2]" 0.066982473881467053;
	setAttr ".wl[1844].w[11]" 0.86123893905907689;
	setAttr -s 3 ".wl[1845].w";
	setAttr ".wl[1845].w[1]" 0.12754599505931846;
	setAttr ".wl[1845].w[2]" 0.12246207550516543;
	setAttr ".wl[1845].w[11]" 0.74999192943551607;
	setAttr -s 3 ".wl[1846].w";
	setAttr ".wl[1846].w[1]" 0.10562041884979875;
	setAttr ".wl[1846].w[2]" 0.068624600065175081;
	setAttr ".wl[1846].w[11]" 0.82575498108502621;
	setAttr -s 3 ".wl[1847].w";
	setAttr ".wl[1847].w[1]" 0.057812772166359112;
	setAttr ".wl[1847].w[2]" 0.041688903794902532;
	setAttr ".wl[1847].w[11]" 0.90049832403873853;
	setAttr -s 3 ".wl[1848].w";
	setAttr ".wl[1848].w[1]" 0.13899203468987958;
	setAttr ".wl[1848].w[2]" 0.062422232909927398;
	setAttr ".wl[1848].w[30]" 0.79858573240019304;
	setAttr -s 3 ".wl[1849].w";
	setAttr ".wl[1849].w[1]" 0.16041602723538162;
	setAttr ".wl[1849].w[2]" 0.07685729033913026;
	setAttr ".wl[1849].w[30]" 0.76272668242548813;
	setAttr -s 3 ".wl[1850].w";
	setAttr ".wl[1850].w[1]" 0.086707895445366542;
	setAttr ".wl[1850].w[2]" 0.04619877511536169;
	setAttr ".wl[1850].w[30]" 0.86709332943927186;
	setAttr -s 3 ".wl[1851].w";
	setAttr ".wl[1851].w[1]" 0.080714996713883699;
	setAttr ".wl[1851].w[2]" 0.039694858829619491;
	setAttr ".wl[1851].w[30]" 0.87959014445649675;
	setAttr -s 3 ".wl[1852].w";
	setAttr ".wl[1852].w[1]" 0.10054957652337564;
	setAttr ".wl[1852].w[2]" 0.062649156099286479;
	setAttr ".wl[1852].w[30]" 0.83680126737733795;
	setAttr -s 3 ".wl[1853].w";
	setAttr ".wl[1853].w[1]" 0.19035915740009832;
	setAttr ".wl[1853].w[2]" 0.12117204298718434;
	setAttr ".wl[1853].w[30]" 0.68846879961271734;
	setAttr -s 3 ".wl[1854].w";
	setAttr ".wl[1854].w[1]" 0.24192238727335169;
	setAttr ".wl[1854].w[2]" 0.54273793731391407;
	setAttr ".wl[1854].w[29]" 0.21533967541273427;
	setAttr -s 3 ".wl[1855].w[1:3]"  0.19864875216103028 0.67655067773497479 
		0.12480057010399495;
	setAttr -s 3 ".wl[1856].w";
	setAttr ".wl[1856].w[2]" 0.45882090367562411;
	setAttr ".wl[1856].w[10]" 0.34598739028704295;
	setAttr ".wl[1856].w[11]" 0.19519170603733288;
	setAttr -s 3 ".wl[1857].w";
	setAttr ".wl[1857].w[1]" 0.056837529396281623;
	setAttr ".wl[1857].w[10]" 0.20134856240313595;
	setAttr ".wl[1857].w[11]" 0.74181390820058246;
	setAttr -s 3 ".wl[1858].w";
	setAttr ".wl[1858].w[0]" 0.61136355360788297;
	setAttr ".wl[1858].w[1]" 0.029696278137902973;
	setAttr ".wl[1858].w[53]" 0.3589401682542141;
	setAttr -s 3 ".wl[1859].w";
	setAttr ".wl[1859].w[0]" 0.50223225541194871;
	setAttr ".wl[1859].w[1]" 0.006503651266799429;
	setAttr ".wl[1859].w[53]" 0.49126409332125204;
	setAttr -s 3 ".wl[1860].w";
	setAttr ".wl[1860].w[0]" 0.49666649826283527;
	setAttr ".wl[1860].w[1]" 0.0076321939897283702;
	setAttr ".wl[1860].w[53]" 0.49570130774743643;
	setAttr -s 3 ".wl[1861].w";
	setAttr ".wl[1861].w[0]" 0.50419483820319921;
	setAttr ".wl[1861].w[1]" 0.02217725647587283;
	setAttr ".wl[1861].w[53]" 0.47362790532092797;
	setAttr -s 3 ".wl[1862].w";
	setAttr ".wl[1862].w[0]" 0.6727887531721618;
	setAttr ".wl[1862].w[1]" 0.095052124395813425;
	setAttr ".wl[1862].w[53]" 0.23215912243202477;
	setAttr -s 3 ".wl[1863].w";
	setAttr ".wl[1863].w[0]" 0.83667522462903221;
	setAttr ".wl[1863].w[1]" 0.094840511783435819;
	setAttr ".wl[1863].w[53]" 0.068484263587532096;
	setAttr -s 3 ".wl[1864].w";
	setAttr ".wl[1864].w[0]" 0.75339534842680023;
	setAttr ".wl[1864].w[1]" 0.069624397910043545;
	setAttr ".wl[1864].w[48]" 0.17698025366315626;
	setAttr -s 3 ".wl[1865].w";
	setAttr ".wl[1865].w[0]" 0.50879015553379436;
	setAttr ".wl[1865].w[1]" 0.019890209593044324;
	setAttr ".wl[1865].w[48]" 0.47131963487316147;
	setAttr -s 3 ".wl[1866].w";
	setAttr ".wl[1866].w[0]" 0.49499687295777689;
	setAttr ".wl[1866].w[1]" 0.01894175641489565;
	setAttr ".wl[1866].w[48]" 0.48606137062732763;
	setAttr -s 3 ".wl[1867].w";
	setAttr ".wl[1867].w[0]" 0.50803557235637409;
	setAttr ".wl[1867].w[1]" 0.013153699077549142;
	setAttr ".wl[1867].w[48]" 0.47881072856607687;
	setAttr -s 3 ".wl[1868].w";
	setAttr ".wl[1868].w[0]" 0.78612850842355908;
	setAttr ".wl[1868].w[1]" 0.024178105364611222;
	setAttr ".wl[1868].w[48]" 0.18969338621182996;
	setAttr -s 3 ".wl[1869].w[11:13]"  0.40428045265011031 0.59431480449252572 
		0.001404742857364124;
	setAttr -s 3 ".wl[1870].w[11:13]"  0.37167398403851931 0.62792020265534054 
		0.00040581330614025609;
	setAttr -s 3 ".wl[1871].w[11:13]"  0.47226490318591136 0.5276174456309739 
		0.00011765118311473625;
	setAttr -s 3 ".wl[1872].w[11:13]"  0.50676366393379157 0.49307011333874884 
		0.00016622272745968222;
	setAttr -s 3 ".wl[1873].w[11:13]"  0.44719671291643981 0.55230665357092679 
		0.00049663351263330995;
	setAttr -s 3 ".wl[1874].w[11:13]"  0.41533113488644269 0.5838997567156905 
		0.00076910839786685785;
	setAttr -s 3 ".wl[1875].w[11:13]"  0.43498136328761289 0.56374305923441026 
		0.0012755774779768952;
	setAttr -s 3 ".wl[1876].w[11:13]"  0.40089135755906469 0.59761279875360751 
		0.0014958436873277749;
	setAttr -s 3 ".wl[1877].w[30:32]"  0.47531836544731715 0.524560111408648 
		0.00012152314403483897;
	setAttr -s 3 ".wl[1878].w[30:32]"  0.39190512905041869 0.60806755644087374 
		2.7314508707614488e-005;
	setAttr -s 3 ".wl[1879].w[30:32]"  0.53717982531129826 0.46280469726354051 
		1.5477425161391859e-005;
	setAttr -s 3 ".wl[1880].w";
	setAttr ".wl[1880].w[1]" 2.6356795316678522e-005;
	setAttr ".wl[1880].w[30]" 0.54233137843041956;
	setAttr ".wl[1880].w[31]" 0.45764226477426367;
	setAttr -s 3 ".wl[1881].w";
	setAttr ".wl[1881].w[1]" 8.1929264155271598e-005;
	setAttr ".wl[1881].w[30]" 0.56669093348095545;
	setAttr ".wl[1881].w[31]" 0.43322713725488937;
	setAttr -s 3 ".wl[1882].w";
	setAttr ".wl[1882].w[1]" 0.00013742509958614526;
	setAttr ".wl[1882].w[30]" 0.75590045646118231;
	setAttr ".wl[1882].w[31]" 0.24396211843923135;
	setAttr -s 3 ".wl[1883].w";
	setAttr ".wl[1883].w[1]" 0.00020249980724405757;
	setAttr ".wl[1883].w[30]" 0.65284503021156126;
	setAttr ".wl[1883].w[31]" 0.34695246998119461;
	setAttr -s 3 ".wl[1884].w[30:32]"  0.56045159678635825 0.43942879040665378 
		0.00011961280698814572;
	setAttr -s 3 ".wl[1885].w";
	setAttr ".wl[1885].w[0]" 0.96277304167216149;
	setAttr ".wl[1885].w[1]" 0.024304116322390438;
	setAttr ".wl[1885].w[48]" 0.012922842005447986;
	setAttr -s 3 ".wl[1886].w";
	setAttr ".wl[1886].w[0]" 0.84578995520385847;
	setAttr ".wl[1886].w[1]" 0.073376994287752573;
	setAttr ".wl[1886].w[48]" 0.080833050508389098;
	setAttr -s 3 ".wl[1887].w";
	setAttr ".wl[1887].w[0]" 0.71106994805932378;
	setAttr ".wl[1887].w[1]" 0.068915653467025773;
	setAttr ".wl[1887].w[48]" 0.22001439847365045;
	setAttr -s 3 ".wl[1888].w";
	setAttr ".wl[1888].w[0]" 0.52001836121332701;
	setAttr ".wl[1888].w[1]" 0.058800794354679588;
	setAttr ".wl[1888].w[48]" 0.42118084443199355;
	setAttr -s 3 ".wl[1889].w";
	setAttr ".wl[1889].w[0]" 0.49288257816475117;
	setAttr ".wl[1889].w[1]" 0.028930806234145085;
	setAttr ".wl[1889].w[48]" 0.4781866156011037;
	setAttr -s 3 ".wl[1890].w";
	setAttr ".wl[1890].w[0]" 0.49589700731865272;
	setAttr ".wl[1890].w[1]" 0.054442456443364602;
	setAttr ".wl[1890].w[48]" 0.44966053623798269;
	setAttr -s 3 ".wl[1891].w";
	setAttr ".wl[1891].w[0]" 0.69039296597871191;
	setAttr ".wl[1891].w[1]" 0.14134623523993714;
	setAttr ".wl[1891].w[48]" 0.16826079878135106;
	setAttr -s 3 ".wl[1892].w";
	setAttr ".wl[1892].w[0]" 0.75404812886510708;
	setAttr ".wl[1892].w[1]" 0.18591374050150078;
	setAttr ".wl[1892].w[53]" 0.060038130633392139;
	setAttr -s 3 ".wl[1893].w";
	setAttr ".wl[1893].w[0]" 0.65037339640331404;
	setAttr ".wl[1893].w[1]" 0.15701151927384671;
	setAttr ".wl[1893].w[53]" 0.19261508432283916;
	setAttr -s 3 ".wl[1894].w";
	setAttr ".wl[1894].w[0]" 0.48956986188231805;
	setAttr ".wl[1894].w[1]" 0.060379432758398417;
	setAttr ".wl[1894].w[53]" 0.45005070535928343;
	setAttr -s 3 ".wl[1895].w";
	setAttr ".wl[1895].w[0]" 0.4900592151236377;
	setAttr ".wl[1895].w[1]" 0.027641949642636922;
	setAttr ".wl[1895].w[53]" 0.48229883523372541;
	setAttr -s 3 ".wl[1896].w";
	setAttr ".wl[1896].w[0]" 0.50198274139077814;
	setAttr ".wl[1896].w[1]" 0.024150231476209989;
	setAttr ".wl[1896].w[53]" 0.47386702713301182;
	setAttr -s 3 ".wl[1897].w";
	setAttr ".wl[1897].w[0]" 0.62096061589920704;
	setAttr ".wl[1897].w[1]" 0.054673685776403497;
	setAttr ".wl[1897].w[53]" 0.32436569832438955;
	setAttr -s 3 ".wl[1898].w";
	setAttr ".wl[1898].w[0]" 0.89264599596776129;
	setAttr ".wl[1898].w[1]" 0.029949882984247507;
	setAttr ".wl[1898].w[53]" 0.077404121047991173;
	setAttr -s 3 ".wl[1899].w";
	setAttr ".wl[1899].w[0]" 0.57782148362793795;
	setAttr ".wl[1899].w[48]" 0.059536405340666329;
	setAttr ".wl[1899].w[53]" 0.36264211103139582;
	setAttr -s 3 ".wl[1900].w";
	setAttr ".wl[1900].w[0]" 0.74422429677738222;
	setAttr ".wl[1900].w[48]" 0.13083548178510138;
	setAttr ".wl[1900].w[53]" 0.12494022143751643;
	setAttr -s 3 ".wl[1901].w";
	setAttr ".wl[1901].w[0]" 0.58146895026917755;
	setAttr ".wl[1901].w[48]" 0.36459190588416845;
	setAttr ".wl[1901].w[53]" 0.053939143846654006;
	setAttr -s 3 ".wl[1902].w";
	setAttr ".wl[1902].w[0]" 0.38074524614232558;
	setAttr ".wl[1902].w[48]" 0.60956854164293972;
	setAttr ".wl[1902].w[53]" 0.0096862122147348285;
	setAttr -s 3 ".wl[1903].w";
	setAttr ".wl[1903].w[0]" 0.2744931663193596;
	setAttr ".wl[1903].w[48]" 0.72430265226519819;
	setAttr ".wl[1903].w[53]" 0.0012041814154421663;
	setAttr -s 3 ".wl[1904].w";
	setAttr ".wl[1904].w[0]" 0.25494542300296502;
	setAttr ".wl[1904].w[1]" 0.00068123907474788815;
	setAttr ".wl[1904].w[48]" 0.74437333792228699;
	setAttr -s 3 ".wl[1905].w";
	setAttr ".wl[1905].w[0]" 0.33322631782313694;
	setAttr ".wl[1905].w[48]" 0.66354308886868263;
	setAttr ".wl[1905].w[53]" 0.0032305933081805062;
	setAttr -s 3 ".wl[1906].w";
	setAttr ".wl[1906].w[0]" 0.75577280260209034;
	setAttr ".wl[1906].w[48]" 0.21819174314922943;
	setAttr ".wl[1906].w[53]" 0.026035454248680034;
	setAttr -s 3 ".wl[1907].w";
	setAttr ".wl[1907].w[0]" 0.83126289211097237;
	setAttr ".wl[1907].w[48]" 0.1160380371352849;
	setAttr ".wl[1907].w[53]" 0.05269907075374277;
	setAttr -s 3 ".wl[1908].w";
	setAttr ".wl[1908].w[0]" 0.84973853552158241;
	setAttr ".wl[1908].w[48]" 0.074278412191731744;
	setAttr ".wl[1908].w[53]" 0.075983052286685851;
	setAttr -s 3 ".wl[1909].w";
	setAttr ".wl[1909].w[0]" 0.82843034711359775;
	setAttr ".wl[1909].w[48]" 0.049486708684165229;
	setAttr ".wl[1909].w[53]" 0.1220829442022371;
	setAttr -s 3 ".wl[1910].w";
	setAttr ".wl[1910].w[0]" 0.72822415419707498;
	setAttr ".wl[1910].w[48]" 0.024375960734321689;
	setAttr ".wl[1910].w[53]" 0.24739988506860333;
	setAttr -s 3 ".wl[1911].w";
	setAttr ".wl[1911].w[0]" 0.3241317610949111;
	setAttr ".wl[1911].w[48]" 0.0034580801037690546;
	setAttr ".wl[1911].w[53]" 0.67241015880131993;
	setAttr -s 3 ".wl[1912].w";
	setAttr ".wl[1912].w[0]" 0.25397071382234981;
	setAttr ".wl[1912].w[48]" 0.00057265370724488137;
	setAttr ".wl[1912].w[53]" 0.74545663247040528;
	setAttr -s 3 ".wl[1913].w";
	setAttr ".wl[1913].w[0]" 0.27443997580219642;
	setAttr ".wl[1913].w[48]" 0.0013789930619279571;
	setAttr ".wl[1913].w[53]" 0.72418103113587562;
	setAttr -s 3 ".wl[1914].w";
	setAttr ".wl[1914].w[0]" 0.3794442840728145;
	setAttr ".wl[1914].w[48]" 0.011073153374833195;
	setAttr ".wl[1914].w[53]" 0.60948256255235234;
	setAttr -s 58 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.6607974026026567e-016 -1.2284586857477202e-017 1 -0
		 0.99727554179989464 -0.073766481058313071 -1.2284586857477202e-017 0 0.073766481058313169 0.99727554179989464 1.6607974026026567e-016 -0
		 -108.01551104228899 17.072527743611769 2.8431470084264341e-015 1;
	setAttr ".pm[1]" -type "matrix" 1.665334177190535e-016 -1.0946226490382234e-019 1 -0
		 0.99999978397901901 -0.00065729895390931293 -1.2284586857477198e-017 0 0.00065729895390941007 0.99999978397901901 1.6607974026026563e-016 -0
		 -121.23446706899365 8.2309875022972729 2.8431470084264333e-015 1;
	setAttr ".pm[2]" -type "matrix" 1.6536724279304185e-016 1.9673998327827136e-017 1 -0
		 0.9929971373627059 0.11813841538412004 -1.2284586857477198e-017 0 -0.11813841538411994 0.9929971373627059 1.660797402602656e-016 -0
		 -133.19470517506733 -7.6454918127098601 5.4928440594600488e-015 1;
	setAttr ".pm[3]" -type "matrix" 1.6621072710037562e-016 -1.0362692504395813e-017 1 -0
		 0.99806209151230751 -0.062225890801802672 -1.2284586857477195e-017 0 0.062225890801802769 0.99806209151230751 1.6607974026026563e-016 -0
		 -145.79976518053456 18.861708174667498 6.2436722331502958e-015 1;
	setAttr ".pm[4]" -type "matrix" 1.647706828117942e-016 -2.4166366812396517e-017 1 -0
		 0.98941491428370443 -0.14511418742827686 -1.2284586857477195e-017 0 0.14511418742827698 0.98941491428370443 1.660797402602656e-016 -0
		 -156.09836091801037 31.970375509227235 1.5990292458769027e-015 1;
	setAttr ".pm[5]" -type "matrix" 1.5895284722373049e-016 -4.9672764757415987e-017 1 -0
		 0.95447997803502904 -0.2982749931359478 -1.2284586857477197e-017 0 0.29827499313594791 0.95447997803502904 1.6607974026026563e-016 -0
		 -158.11110654099292 57.440801626041164 -2.3807378290155297e-015 1;
	setAttr ".pm[6]" -type "matrix" 1.6653340007997807e-016 1.3363000471672391e-019 1 -0
		 0.99999967805990753 0.0008024213859303403 -1.2284586857477189e-017 0 -0.00080242138593022928 0.99999967805990753 1.660797402602656e-016 -0
		 -177.89137951481601 4.5357764805208136 -6.6223263247243487e-015 1;
	setAttr ".pm[7]" -type "matrix" 1.6653340007997807e-016 1.3363000471672391e-019 1 -0
		 0.99999967805990753 0.0008024213859303403 -1.2284586857477189e-017 0 -0.00080242138593022928 0.99999967805990753 1.660797402602656e-016 -0
		 -179.80602562428189 -3.2726102924845164 -3.3655934333801252 1;
	setAttr ".pm[8]" -type "matrix" 1.5906514190800924e-016 -4.9311984638230417e-017 1 -0
		 0.95515428509939371 -0.29610858085551206 -1.2284586857477191e-017 0 0.29610858085551217 0.95515428509939371 1.660797402602656e-016 -0
		 -166.31655138342308 48.828586650591703 -7.8887777000037763e-015 1;
	setAttr ".pm[9]" -type "matrix" 1.6653340007997807e-016 1.3363000471672391e-019 1 -0
		 0.99999967805990753 0.0008024213859303403 -1.2284586857477189e-017 0 -0.00080242138593022928 0.99999967805990753 1.660797402602656e-016 -0
		 -179.80602562428189 -3.2726102924845164 3.365598678588869 1;
	setAttr ".pm[10]" -type "matrix" 0.91222902029898711 -0.3944733093574479 -0.11058491185027432 -0
		 -0.3969076711837935 -0.91785854060168603 -1.2559397966072072e-015 0 -0.10150130580345834 0.043891999830558498 -0.99386667982736299 -0
		 55.279687480013294 148.6889801074642 -7.642955717526112 1;
	setAttr ".pm[11]" -type "matrix" 0.72390057317992607 -0.68955066340363214 -0.022087162547175368 -0
		 -0.68971892111435096 -0.7240772126347127 6.6439909129911672e-016 0 -0.015992811092169032 0.015233933922514461 -0.99975604886922986 -0
		 90.92517096263046 124.60871994701505 -6.0570411356766245 1;
	setAttr ".pm[12]" -type "matrix" 0.72106041179410552 -0.68173263672099771 0.12374366477824711 -0
		 -0.68701286848862431 -0.72664524943815023 -2.8449465006019622e-016 0 0.089917746159180398 -0.085013490096598227 -0.99231421708410916 -0
		 59.324741481869786 123.90367589646812 -12.306982565741022 1;
	setAttr ".pm[13]" -type "matrix" 0.72106041179410552 -0.68173263672099771 0.12374366477824711 -0
		 -0.68701286848862431 -0.72664524943815023 -2.8449465006019622e-016 0 0.089917746159180398 -0.085013490096598227 -0.99231421708410916 -0
		 36.637307213071701 123.90367589646816 -12.306982565741013 1;
	setAttr ".pm[14]" -type "matrix" 0.69011616050571545 -0.69633738554758096 0.19711400380898847 -0
		 -0.71027252492573811 -0.70392680041011113 6.9388939039072271e-017 0 0.13875383001728761 -0.14000466118363195 -0.98038057380916621 -0
		 28.218711096251639 122.99529774921164 -13.525768207356164 1;
	setAttr ".pm[15]" -type "matrix" 0.65854602777831628 -0.74748575712521814 0.087075669347645962 -0
		 -0.7503357571586865 -0.66105692003722327 -1.4710455076283314e-015 0 0.05756197378913562 -0.065335988290064512 -0.99620170036376621 -0
		 30.970294756475671 122.14777098204691 -5.6600482228216231 1;
	setAttr ".pm[16]" -type "matrix" 0.65854602777831628 -0.74748575712521814 0.087075669347645962 -0
		 -0.7503357571586865 -0.66105692003722327 -1.4710455076283314e-015 0 0.05756197378913562 -0.065335988290064512 -0.99620170036376621 -0
		 27.250839669470455 122.14777098204694 -5.6600482228216196 1;
	setAttr ".pm[17]" -type "matrix" 0.7034611831162102 -0.71047367028263098 0.019223102867888177 -0
		 -0.71060497651963339 -0.70359119333994691 2.0764640007442373e-015 0 0.013525205886512504 -0.01366003256207177 -0.99981521908607207 -0
		 27.804412436071281 124.16774865894797 -4.5360690463883824 1;
	setAttr ".pm[18]" -type "matrix" 0.68892414211329811 -0.72483069731276029 0.0019966588477422645 -0
		 -0.72483214213898062 -0.68892551536593238 1.4909948276020651e-015 0 0.0013755492256896855 -0.0014472425097309329 -0.99999800667473604 -0
		 24.214202337423746 123.7466811564704 -3.2787634791054767 1;
	setAttr ".pm[19]" -type "matrix" 0.68892414211329811 -0.72483069731276029 0.0019966588477422645 -0
		 -0.72483214213898062 -0.68892551536593238 1.4909948276020651e-015 0 0.0013755492256896855 -0.0014472425097309329 -0.99999800667473604 -0
		 20.103427284852039 123.74668115647039 -3.2787634791054749 1;
	setAttr ".pm[20]" -type "matrix" 0.69224614525106276 -0.72098876578096849 -0.031152431729808867 -0
		 -0.72133887105434369 -0.69258229338183663 1.9081958235744871e-016 0 -0.021575622611852287 0.022471459934577581 -0.99951464521402544 -0
		 29.85880364086994 123.64613988770412 -4.6550194841813202 1;
	setAttr ".pm[21]" -type "matrix" 0.69105036256779317 -0.72216805588231081 -0.030375902588819753 -0
		 -0.72250145721355252 -0.69136939787952179 -2.1646053005586187e-013 0 -0.021000969482723026 0.021946633884748649 -0.99953854580096813 -0
		 24.353937496169401 123.60277292489522 -4.711319212235721 1;
	setAttr ".pm[22]" -type "matrix" 0.69105036256779317 -0.72216805588231081 -0.030375902588819753 -0
		 -0.72250145721355252 -0.69136939787952179 -2.1646053005586187e-013 0 -0.021000969482723026 0.021946633884748649 -0.99953854580096813 -0
		 20.28478569062267 123.60277292489505 -4.7113192122356695 1;
	setAttr ".pm[23]" -type "matrix" 0.67868662694018722 -0.7196748719479561 -0.14646686007163551 -0
		 -0.72752076318711234 -0.68608566457231934 5.5511151231257807e-016 0 -0.10048881303006933 0.10655768182093575 -0.98921557756676859 -0
		 30.870983842423648 123.10959755595468 -0.01458771191148988 1;
	setAttr ".pm[24]" -type "matrix" 0.6606888159820169 -0.74902681595185794 -0.049488558488827626 -0
		 -0.7499457315078264 -0.66149935736415533 3.3306690738754681e-016 0 -0.032736649637238172 0.037113733197171386 -0.99877469059778301 -0
		 30.482048082607754 121.91449910639879 -6.9841919198322211 1;
	setAttr ".pm[25]" -type "matrix" 0.6606888159820169 -0.74902681595185794 -0.049488558488827626 -0
		 -0.7499457315078264 -0.66149935736415533 3.3306690738754681e-016 0 -0.032736649637238172 0.037113733197171386 -0.99877469059778301 -0
		 26.948736795934153 121.91449910639879 -6.9841919198322229 1;
	setAttr ".pm[26]" -type "matrix" 0.40017113440462498 -0.21156282163502504 0.89168617556354557 -0
		 -0.46738294453736101 -0.88405496613931489 -2.7755575615628904e-016 0 0.78829959174472597 -0.41675891033814827 -0.45265413320642245 -0
		 27.793444340890012 111.85635115158868 -55.706464149069582 1;
	setAttr ".pm[27]" -type "matrix" 0.46457557306074215 -0.48550505873511113 0.74057705531423235 -0
		 -0.72250846541145908 -0.69136207403123995 8.8817841970012484e-016 0 0.51200688894199564 -0.53507319175402368 -0.67197144667173203 -0
		 48.614523720090062 108.41093663477541 -45.517059399615071 1;
	setAttr ".pm[28]" -type "matrix" 0.46457557306074215 -0.48550505873511113 0.74057705531423235 -0
		 -0.72250846541145908 -0.69136207403123995 8.8817841970012484e-016 0 0.51200688894199564 -0.53507319175402368 -0.67197144667173203 -0
		 44.626920874352606 108.41093663477541 -45.517059399615086 1;
	setAttr ".pm[29]" -type "matrix" 0.91222902029898767 -0.39447330935744707 -0.11058491185027444 -0
		 0.396907671183793 0.91785854060168626 1.7277845820728983e-015 -0 0.10150130580345851 -0.043891999830558977 0.9938666798273631 -0
		 -55.279538278137494 -148.68862810651086 7.64296080547307 1;
	setAttr ".pm[30]" -type "matrix" 0.7239005731799264 -0.68955066340363136 -0.022087162547178737 -0
		 0.68971892111435051 0.72407721263471292 2.8692326292656366e-015 -0 0.015992811092169216 -0.015233933922519496 0.99975604886922964 -0
		 -90.925041105935364 -124.60864279629543 6.0570447983490121 1;
	setAttr ".pm[31]" -type "matrix" 0.72106041179410607 -0.68173263672099671 0.12374366477824839 -0
		 0.68701286848862397 0.72664524943815068 -1.0408340855860835e-015 0 -0.089917746159180301 0.085013490096599892 0.99231421708410872 -0
		 -59.324802495076909 -123.90378569866284 12.306989576965355 1;
	setAttr ".pm[32]" -type "matrix" 0.72106041179410607 -0.68173263672099671 0.12374366477824839 -0
		 0.68701286848862397 0.72664524943815068 -1.0408340855860835e-015 0 -0.089917746159180301 0.085013490096599892 0.99231421708410872 -0
		 -36.637072536062803 -123.90345876972118 12.306981263078949 1;
	setAttr ".pm[33]" -type "matrix" 0.69011616050571556 -0.69633738554758073 0.19711400380898669 -0
		 0.71027252492573789 0.70392680041011135 1.4432899320127025e-015 0 -0.13875383001728733 0.14000466118362953 0.98038057380916621 -0
		 -28.218919609655696 -122.995568101302 13.525777354807447 1;
	setAttr ".pm[34]" -type "matrix" 0.65854602777831683 -0.74748575712521759 0.087075669347645018 -0
		 0.75033575715868617 0.66105692003722383 1.9220736113823007e-015 0 -0.057561973789135204 0.065335988290063374 0.99620170036376599 -0
		 -30.970487822394777 -122.14793177819351 5.6600479902685983 1;
	setAttr ".pm[35]" -type "matrix" 0.65854602777831683 -0.74748575487783186 0.087075688639929677 -0
		 0.75033575715868628 0.66105692003722361 -1.7061591785216807e-008 0 -0.057561973789135204 0.065336014001599163 0.9962016986774721 -0
		 -27.250934065136445 -122.14780181688168 5.660047503302871 1;
	setAttr ".pm[36]" -type "matrix" 0.70346118311621142 -0.71047367028262975 0.019223102867889221 -0
		 0.71060497651963284 0.70359119333994791 -1.3773704399255842e-015 0 -0.013525205886513582 0.01366003256207189 0.99981521908607185 -0
		 -27.804199588447222 -124.16755387399199 4.5360734849322668 1;
	setAttr ".pm[37]" -type "matrix" 0.68892414211329955 -0.72483069731275873 0.001996658847736255 -0
		 0.72483214213897984 0.68892551536593372 4.8702361588048828e-015 0 -0.0013755492256899921 0.0014472425097220769 0.9999980066747356 -0
		 -24.213849620829617 -123.74635807271557 3.27876018336472 1;
	setAttr ".pm[38]" -type "matrix" 0.68892414211329955 -0.72483069731275873 0.001996658847736255 -0
		 0.72483214213897984 0.68892551536593372 4.8702361588048828e-015 0 -0.0013755492256899921 0.0014472425097220769 0.9999980066747356 -0
		 -20.1034612438654 -123.74670878159881 3.2787647324838138 1;
	setAttr ".pm[39]" -type "matrix" 0.69224614525106365 -0.72098876578096749 -0.03115243172980927 -0
		 0.72133887105434302 0.6925822933818373 1.3843093338294915e-015 -0 0.021575622611851621 -0.022471459934579063 0.99951464521402533 -0
		 -29.858498603847458 -123.6458181851184 4.6550229858929972 1;
	setAttr ".pm[40]" -type "matrix" 0.6910503625678367 -0.72216805588226285 -0.030375902588977051 -0
		 0.722501457213511 0.69136939787956586 3.4031111262322606e-013 -0 0.021000969482743836 -0.021946633884946741 0.99953854580096357 -0
		 -24.353964853141829 -123.6028455508325 4.7113145300958017 1;
	setAttr ".pm[41]" -type "matrix" 0.6910503625678367 -0.72216805588226285 -0.030375902588977051 -0
		 0.722501457213511 0.69136939787956586 3.4031111262322606e-013 -0 0.021000969482743836 -0.021946633884946741 0.99953854580096357 -0
		 -20.284782206541369 -123.60283165353933 4.7113180561407484 1;
	setAttr ".pm[42]" -type "matrix" 0.67868662694018811 -0.7196748719479551 -0.14646686007163598 -0
		 0.72752076318711201 0.6860856645723199 3.0531133177191785e-016 -0 0.1004888130300693 -0.10655768182093678 0.98921557756676814 -0
		 -30.870992643788433 -123.10957105349057 0.014576101237619089 1;
	setAttr ".pm[43]" -type "matrix" 0.66068881598201812 -0.74902681595185661 -0.049488558488830291 -0
		 0.74994573150782573 0.66149935736415655 3.4000580129145394e-016 -0 0.032736649637239629 -0.037113733197173912 0.99877469059778279 -0
		 -30.481891733469215 -121.91430650446605 6.9842378176989524 1;
	setAttr ".pm[44]" -type "matrix" 0.66068881598201812 -0.74902681595185661 -0.049488558488830291 -0
		 0.74994573150782573 0.66149935736415655 3.4000580129145394e-016 -0 0.032736649637239629 -0.037113733197173912 0.99877469059778279 -0
		 -26.948373147365359 -121.91422665684826 6.9841651321398901 1;
	setAttr ".pm[45]" -type "matrix" 0.40017113440462532 -0.21156282163502357 0.89168617556354535 -0
		 0.46738294453736101 0.884054966139315 -9.7144514654701118e-016 0 -0.78829959174472541 0.4167589103381486 0.45265413320642217 -0
		 -27.793281282624033 -111.85604757995186 55.706468506529554 1;
	setAttr ".pm[46]" -type "matrix" 0.46457557306074321 -0.48550505873511168 0.74057705531423101 -0
		 0.72250846541145852 0.69136207403124095 -5.551115123125779e-017 0 -0.51200688894199564 0.5350731917540219 0.67197144667173314 -0
		 -48.614815133038398 -108.41118906759674 45.517039235793881 1;
	setAttr ".pm[47]" -type "matrix" 0.46457557306074321 -0.48550505873511168 0.74057705531423101 -0
		 0.72250846541145852 0.69136207403124095 -5.551115123125779e-017 0 -0.51200688894199564 0.5350731917540219 0.67197144667173314 -0
		 -44.627241312520574 -108.41126983826574 45.517081625228286 1;
	setAttr ".pm[48]" -type "matrix" -1.6329650655516354e-016 -3.2674793741592545e-017 1 -0
		 -0.98056278143031739 -0.19620558522539194 -1.22845868574772e-017 0 0.19620558522539186 -0.98056278143031739 1.6607974026026565e-016 -0
		 105.98983178846859 13.366288050757193 -11.795719746574472 1;
	setAttr ".pm[49]" -type "matrix" 0.026489234124266712 0.066836640868209576 0.99741224371518689 -0
		 -0.92964914623117201 0.36844601356460949 1.0547118733938979e-015 0 -0.36749256507739336 -0.92724344081034116 0.071894478835556344 -0
		 55.954008687865539 -24.087114272718182 -11.698269045946509 1;
	setAttr ".pm[50]" -type "matrix" 0.062568961416732946 -0.077957819837620609 0.9949913081999241 -0
		 -0.77987864184719546 -0.62593075015577671 6.7307270867900086e-016 0 0.62279565594005615 -0.77597247008872117 -0.099961475612375242 -0
		 15.52727634144939 -4.4617842408127233 -14.459274614238431 1;
	setAttr ".pm[51]" -type "matrix" -2.9293242012126382e-015 -5.3362117523626759e-015 1 -0
		 0.99999704157853908 0.0024324543509414093 3.1114121382132354e-015 -0 -0.0024324543509413633 0.99999704157853908 5.4880518398716967e-015 -0
		 -5.4114913481829801 2.8651346907546849 -14.242894827090172 1;
	setAttr ".pm[52]" -type "matrix" 0.075600836386198897 -0.01858111740061235 0.99696502226199057 -0
		 -0.23867605086088578 -0.9710992445396357 1.1553258350005527e-015 0 0.96815197995106017 -0.2379516743599272 -0.077850782822962858 -0
		 -3.3041741901994883 6.3919395415455798 -14.795053092662878 1;
	setAttr ".pm[53]" -type "matrix" 1.6329650655516357e-016 3.2674793741592588e-017 1 -0
		 0.98056278143031761 0.19620558522539219 -1.2284586857477198e-017 0 -0.19620558522539208 0.98056278143031761 1.6607974026026563e-016 -0
		 -105.98983178846863 -13.366288050757221 11.795719746574479 1;
	setAttr ".pm[54]" -type "matrix" 0.026489234124267024 0.066836640868209438 0.99741224371518711 -0
		 0.92964914623117212 -0.3684460135646096 -1.0894063429134347e-015 0 0.36749256507739353 0.92724344081034149 -0.071894478835556025 -0
		 -55.95400868786556 24.087114272718182 11.698269045946516 1;
	setAttr ".pm[55]" -type "matrix" 0.062568961416733182 -0.077957819837620346 0.99499130819992421 -0
		 0.77987864184719558 0.62593075015577693 -7.1470607210244433e-016 0 -0.62279565594005604 0.77597247008872117 0.099961475612375505 -0
		 -15.527276341449404 4.4617842408126975 14.459274614238437 1;
	setAttr ".pm[56]" -type "matrix" -3.2840611999081187e-015 -5.3787081230642108e-015 0.99999999999999967 0
		 -0.99999704157853908 -0.0024324543509415208 -3.1524377509316207e-015 0 0.0024324543509412718 -0.99999704157853919 -5.2381511270892483e-015 -0
		 5.411491348183004 -2.865134690754672 14.242894827090176 1;
	setAttr ".pm[57]" -type "matrix" 0.075600836386198897 -0.018581117400611993 0.99696502226199035 -0
		 0.23867605086088567 0.9710992445396357 -1.1934897514720425e-015 0 -0.96815197995106039 0.23795167435992731 0.077850782822963108 -0
		 3.3041741901994941 -6.3919395415456064 14.795053092662879 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 53 ".ma";
	setAttr -s 58 ".dpf[0:57]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 53 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 2;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
	setAttr ".hmf" 0.68;
	setAttr -s 53 ".ifcl";
createNode groupId -n "groupId51";
	rename -uid "EA52FD16-42DD-122D-C466-279A3645BBAB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "66427835-4907-3D64-CEA5-F595FA6BF779";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "vtx[288]" "vtx[398]";
createNode tweak -n "tweak8";
	rename -uid "FE22BC88-4FF9-7BD9-D5B2-3499BD336A65";
	setAttr -s 3 ".vl[0].vt";
	setAttr ".vl[0].vt[292]" -type "float3" -7.6293945e-006 0 0 ;
	setAttr ".vl[0].vt[1071]" -type "float3" 7.6293945e-006 0 0 ;
createNode objectSet -n "skinCluster8Set";
	rename -uid "0F3BA3B6-4FC2-1C36-FB32-D288989DCE3B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	rename -uid "0CD7F605-45F5-A205-3F09-7D9E56D6DD75";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	rename -uid "40926A66-4860-7D13-CBDB-7293ADC9E6F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet8";
	rename -uid "8CE2C68E-4725-5538-4804-8ABE1C3CD85B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId53";
	rename -uid "7EF48A80-49A2-CDC3-0464-209AC412F5C2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "8CD42B91-448C-FA6C-6A2D-EB9A103D4A77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster9";
	rename -uid "A6749A89-4B6F-4F7E-ACF8-84ABB8816D3E";
	setAttr -s 134 ".wl";
	setAttr -s 3 ".wl[0].w";
	setAttr ".wl[0].w[5]" 0.20516167276185893;
	setAttr ".wl[0].w[6]" 0.48662307660035126;
	setAttr ".wl[0].w[8]" 0.30821525063778982;
	setAttr -s 3 ".wl[1].w";
	setAttr ".wl[1].w[5]" 0.24154266212151485;
	setAttr ".wl[1].w[6]" 0.46949649382522568;
	setAttr ".wl[1].w[8]" 0.28896084405325945;
	setAttr -s 3 ".wl[2].w";
	setAttr ".wl[2].w[5]" 0.26563386699966784;
	setAttr ".wl[2].w[6]" 0.45504179483620821;
	setAttr ".wl[2].w[8]" 0.279324338164124;
	setAttr -s 3 ".wl[3].w";
	setAttr ".wl[3].w[5]" 0.26153318054928693;
	setAttr ".wl[3].w[6]" 0.4539860752637212;
	setAttr ".wl[3].w[8]" 0.28448074418699193;
	setAttr -s 3 ".wl[4].w";
	setAttr ".wl[4].w[5]" 0.22982352230970235;
	setAttr ".wl[4].w[6]" 0.46560325147575055;
	setAttr ".wl[4].w[8]" 0.30457322621454724;
	setAttr -s 3 ".wl[5].w";
	setAttr ".wl[5].w[5]" 0.18286452956952776;
	setAttr ".wl[5].w[6]" 0.48103187374785017;
	setAttr ".wl[5].w[8]" 0.33610359668262202;
	setAttr -s 3 ".wl[6].w";
	setAttr ".wl[6].w[5]" 0.13764398024733449;
	setAttr ".wl[6].w[6]" 0.49142333513301656;
	setAttr ".wl[6].w[8]" 0.37093268461964884;
	setAttr -s 3 ".wl[7].w";
	setAttr ".wl[7].w[5]" 0.10705775459897721;
	setAttr ".wl[7].w[6]" 0.49638754850900679;
	setAttr ".wl[7].w[8]" 0.39655469689201595;
	setAttr -s 3 ".wl[8].w";
	setAttr ".wl[8].w[5]" 0.097528495146461225;
	setAttr ".wl[8].w[6]" 0.49916464282745682;
	setAttr ".wl[8].w[8]" 0.40330686202608201;
	setAttr -s 3 ".wl[9].w";
	setAttr ".wl[9].w[5]" 0.1031599578210402;
	setAttr ".wl[9].w[6]" 0.50134607510974794;
	setAttr ".wl[9].w[8]" 0.39549396706921203;
	setAttr -s 3 ".wl[10].w";
	setAttr ".wl[10].w[5]" 0.1283151646208551;
	setAttr ".wl[10].w[6]" 0.5027330437002705;
	setAttr ".wl[10].w[8]" 0.36895179167887437;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[5]" 0.16466063775285095;
	setAttr ".wl[11].w[6]" 0.49871805694393656;
	setAttr ".wl[11].w[8]" 0.33662130530321244;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[5]" 0.24029149624321117;
	setAttr ".wl[12].w[6]" 0.49743724040470105;
	setAttr ".wl[12].w[8]" 0.26227126335208789;
	setAttr -s 3 ".wl[13].w[4:6]"  0.3335977785568266 0.27420602136675348 
		0.39219620007642003;
	setAttr -s 3 ".wl[14].w[4:6]"  0.31004111812410079 0.33773212896503946 
		0.35222675291085975;
	setAttr -s 3 ".wl[15].w[4:6]"  0.26524806168307419 0.35425132551675426 
		0.38050061280017167;
	setAttr -s 3 ".wl[16].w";
	setAttr ".wl[16].w[5]" 0.30137599183685021;
	setAttr ".wl[16].w[6]" 0.44510281509763877;
	setAttr ".wl[16].w[8]" 0.25352119306551119;
	setAttr -s 3 ".wl[17].w";
	setAttr ".wl[17].w[5]" 0.19328463201242357;
	setAttr ".wl[17].w[6]" 0.48964125581669055;
	setAttr ".wl[17].w[8]" 0.31707411217088582;
	setAttr -s 3 ".wl[18].w";
	setAttr ".wl[18].w[5]" 0.098662110938853589;
	setAttr ".wl[18].w[6]" 0.50528315930089407;
	setAttr ".wl[18].w[8]" 0.39605472976025252;
	setAttr -s 3 ".wl[19].w";
	setAttr ".wl[19].w[5]" 0.04156987870277163;
	setAttr ".wl[19].w[6]" 0.50444952202956739;
	setAttr ".wl[19].w[8]" 0.45398059926766093;
	setAttr -s 3 ".wl[20].w";
	setAttr ".wl[20].w[5]" 0.040609642393388511;
	setAttr ".wl[20].w[6]" 0.50476843407360139;
	setAttr ".wl[20].w[8]" 0.45462192353301023;
	setAttr -s 3 ".wl[21].w";
	setAttr ".wl[21].w[5]" 0.040267175501873427;
	setAttr ".wl[21].w[6]" 0.50823675609591512;
	setAttr ".wl[21].w[8]" 0.45149606840221146;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[5]" 0.094183783887838879;
	setAttr ".wl[22].w[6]" 0.52157452500621904;
	setAttr ".wl[22].w[8]" 0.3842416911059422;
	setAttr -s 3 ".wl[23].w";
	setAttr ".wl[23].w[5]" 0.16234913170033011;
	setAttr ".wl[23].w[6]" 0.52246376759490409;
	setAttr ".wl[23].w[8]" 0.31518710070476585;
	setAttr -s 3 ".wl[24].w[4:6]"  0.2306574273245536 0.27398479016587474 
		0.49535778250957174;
	setAttr -s 3 ".wl[25].w[4:6]"  0.49364360605244989 0.24857334670979822 
		0.25778304723775192;
	setAttr -s 3 ".wl[26].w[4:6]"  0.36361757411238033 0.40173940496514576 
		0.2346430209224741;
	setAttr -s 3 ".wl[27].w[4:6]"  0.30355117046744945 0.42543559276249748 
		0.27101323677005301;
	setAttr -s 3 ".wl[28].w";
	setAttr ".wl[28].w[5]" 0.38992449099677751;
	setAttr ".wl[28].w[6]" 0.42122943098203042;
	setAttr ".wl[28].w[8]" 0.18884607802119213;
	setAttr -s 3 ".wl[29].w";
	setAttr ".wl[29].w[5]" 0.20380281331775804;
	setAttr ".wl[29].w[6]" 0.51528386727083841;
	setAttr ".wl[29].w[8]" 0.28091331941140346;
	setAttr -s 3 ".wl[30].w";
	setAttr ".wl[30].w[6]" 0.52362614853221146;
	setAttr ".wl[30].w[8]" 0.41645331207569825;
	setAttr ".wl[30].w[9]" 0.059920539392090258;
	setAttr -s 3 ".wl[31].w";
	setAttr ".wl[31].w[6]" 0.50791050182305564;
	setAttr ".wl[31].w[8]" 0.46499434936658252;
	setAttr ".wl[31].w[9]" 0.027095148810361847;
	setAttr -s 3 ".wl[32].w";
	setAttr ".wl[32].w[5]" 0.0087708600233873148;
	setAttr ".wl[32].w[6]" 0.50538978310228833;
	setAttr ".wl[32].w[8]" 0.48583935687432428;
	setAttr -s 3 ".wl[33].w[6:8]"  0.51004124975520149 0.027992365832282692 
		0.46196638441251592;
	setAttr -s 3 ".wl[34].w";
	setAttr ".wl[34].w[5]" 0.072303806702249881;
	setAttr ".wl[34].w[6]" 0.54442284934509566;
	setAttr ".wl[34].w[8]" 0.38327334395265455;
	setAttr -s 3 ".wl[35].w";
	setAttr ".wl[35].w[5]" 0.16612062178601364;
	setAttr ".wl[35].w[6]" 0.55723915912493704;
	setAttr ".wl[35].w[8]" 0.27664021908904934;
	setAttr -s 3 ".wl[36].w[4:6]"  0.15850186885052536 0.33059171112125685 
		0.51090642002821784;
	setAttr -s 3 ".wl[37].w[4:6]"  0.28380295705189751 0.388126284558171 
		0.32807075838993166;
	setAttr -s 3 ".wl[38].w[4:6]"  0.3783967657184884 0.48135391829072349 
		0.14024931599078802;
	setAttr -s 3 ".wl[39].w[4:6]"  0.34758027755367737 0.49065629262436627 
		0.16176342982195638;
	setAttr -s 3 ".wl[40].w[4:6]"  0.13543465197040622 0.48558185894869998 
		0.37898348908089385;
	setAttr -s 3 ".wl[41].w";
	setAttr ".wl[41].w[5]" 0.21301830654916507;
	setAttr ".wl[41].w[6]" 0.57039620677595293;
	setAttr ".wl[41].w[8]" 0.21658548667488198;
	setAttr -s 3 ".wl[42].w";
	setAttr ".wl[42].w[6]" 0.52284313933739845;
	setAttr ".wl[42].w[8]" 0.34198195599171033;
	setAttr ".wl[42].w[9]" 0.13517490467089133;
	setAttr -s 3 ".wl[43].w";
	setAttr ".wl[43].w[6]" 0.51025271139086847;
	setAttr ".wl[43].w[8]" 0.40900413427904064;
	setAttr ".wl[43].w[9]" 0.080743154330090924;
	setAttr -s 3 ".wl[44].w[6:8]"  0.50479087389657185 0.017764827211905199 
		0.47744429889152312;
	setAttr -s 3 ".wl[45].w[6:8]"  0.51063893248854453 0.079054916397320721 
		0.41030615111413471;
	setAttr -s 3 ".wl[46].w[6:8]"  0.53570304846290784 0.1055626568717648 
		0.35873429466532747;
	setAttr -s 3 ".wl[47].w";
	setAttr ".wl[47].w[5]" 0.17061926237852726;
	setAttr ".wl[47].w[6]" 0.6076351329056271;
	setAttr ".wl[47].w[8]" 0.22174560471584565;
	setAttr -s 3 ".wl[48].w[4:6]"  0.084902201501869404 0.38803464892858652 
		0.52706314956954414;
	setAttr -s 3 ".wl[49].w[4:6]"  0.14206564331744653 0.46892910073288852 
		0.38900525594966506;
	setAttr -s 3 ".wl[50].w[4:6]"  0.19554688429491293 0.53278249358953822 
		0.27167062211554893;
	setAttr -s 3 ".wl[51].w[4:6]"  0.18193144677858406 0.53354940411325735 
		0.28451914910815856;
	setAttr -s 3 ".wl[52].w[4:6]"  0.081516516815630991 0.462957282261313 
		0.45552620092305607;
	setAttr -s 3 ".wl[53].w";
	setAttr ".wl[53].w[5]" 0.19126722977325239;
	setAttr ".wl[53].w[6]" 0.65025299956432214;
	setAttr ".wl[53].w[9]" 0.1584797706624255;
	setAttr -s 3 ".wl[54].w";
	setAttr ".wl[54].w[6]" 0.52393893818358384;
	setAttr ".wl[54].w[8]" 0.13629461740268226;
	setAttr ".wl[54].w[9]" 0.33976644441373399;
	setAttr -s 3 ".wl[55].w";
	setAttr ".wl[55].w[6]" 0.5086102155897686;
	setAttr ".wl[55].w[8]" 0.35820159055338602;
	setAttr ".wl[55].w[9]" 0.13318819385684541;
	setAttr -s 3 ".wl[56].w[6:8]"  0.50705550814470968 0.075483367829546566 
		0.41746112402574365;
	setAttr -s 3 ".wl[57].w[6:8]"  0.50594225160074324 0.1333260969238883 
		0.36073165147536851;
	setAttr -s 3 ".wl[58].w[6:8]"  0.54373339947906207 0.24126361473557459 
		0.21500298578536334;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[5]" 0.16842726636730482;
	setAttr ".wl[59].w[6]" 0.6907616023742883;
	setAttr ".wl[59].w[8]" 0.14081113125840689;
	setAttr -s 3 ".wl[60].w[5:7]"  0.34697720692698802 0.60817390892102774 
		0.044848884151984326;
	setAttr -s 3 ".wl[61].w[4:6]"  0.068922948005842186 0.42262717563541602 
		0.50844987635874173;
	setAttr -s 3 ".wl[62].w[4:6]"  0.094065047959296155 0.48253195970429819 
		0.4234029923364056;
	setAttr -s 3 ".wl[63].w[4:6]"  0.090139223211811198 0.48594666709440509 
		0.42391410969378363;
	setAttr -s 3 ".wl[64].w";
	setAttr ".wl[64].w[5]" 0.38380992791096541;
	setAttr ".wl[64].w[6]" 0.56989253979940357;
	setAttr ".wl[64].w[9]" 0.046297532289631071;
	setAttr -s 3 ".wl[65].w";
	setAttr ".wl[65].w[5]" 0.16174298928988307;
	setAttr ".wl[65].w[6]" 0.66585085248117837;
	setAttr ".wl[65].w[9]" 0.17240615822893854;
	setAttr -s 3 ".wl[66].w";
	setAttr ".wl[66].w[6]" 0.52438218233665301;
	setAttr ".wl[66].w[8]" 0.043436111272599338;
	setAttr ".wl[66].w[9]" 0.4321817063907476;
	setAttr -s 3 ".wl[67].w";
	setAttr ".wl[67].w[6]" 0.51244806049631986;
	setAttr ".wl[67].w[8]" 0.067623123845838407;
	setAttr ".wl[67].w[9]" 0.41992881565784179;
	setAttr -s 3 ".wl[68].w[6:8]"  0.51693509605202892 0.38185316032099181 
		0.10121174362697935;
	setAttr -s 3 ".wl[69].w[6:8]"  0.5040846286318682 0.42778435074427956 
		0.068131020623852234;
	setAttr -s 3 ".wl[70].w[6:8]"  0.52978532176177051 0.40718954979194377 
		0.063025128446285855;
	setAttr -s 3 ".wl[71].w[5:7]"  0.14970964457710714 0.69053171255007806 
		0.15975864287281483;
	setAttr -s 3 ".wl[72].w[5:7]"  0.26722956683238996 0.69945406140618871 
		0.033316371761421382;
	setAttr -s 3 ".wl[73].w[4:6]"  0.03179954626341569 0.32996315469945947 
		0.63823729903712478;
	setAttr -s 3 ".wl[74].w[4:6]"  0.040383411645053213 0.38902099700447151 
		0.57059559135047533;
	setAttr -s 3 ".wl[75].w[4:6]"  0.04230263419816558 0.40105999429556199 
		0.55663737150627235;
	setAttr -s 3 ".wl[76].w";
	setAttr ".wl[76].w[5]" 0.28170309437744262;
	setAttr ".wl[76].w[6]" 0.68474506407003988;
	setAttr ".wl[76].w[9]" 0.033551841552517538;
	setAttr -s 3 ".wl[77].w";
	setAttr ".wl[77].w[5]" 0.14448449562874172;
	setAttr ".wl[77].w[6]" 0.67866469594375978;
	setAttr ".wl[77].w[9]" 0.17685080842749862;
	setAttr -s 3 ".wl[78].w";
	setAttr ".wl[78].w[5]" 0.016530693244139028;
	setAttr ".wl[78].w[6]" 0.52637808376211304;
	setAttr ".wl[78].w[9]" 0.45709122299374783;
	setAttr -s 3 ".wl[79].w";
	setAttr ".wl[79].w[6]" 0.50749641591919548;
	setAttr ".wl[79].w[7]" 0.023536474359269366;
	setAttr ".wl[79].w[9]" 0.4689671097215351;
	setAttr -s 3 ".wl[80].w";
	setAttr ".wl[80].w[6]" 0.51222269809952659;
	setAttr ".wl[80].w[7]" 0.45098769603211331;
	setAttr ".wl[80].w[9]" 0.036789605868360081;
	setAttr -s 3 ".wl[81].w[6:8]"  0.50766437166302769 0.48072728873891796 
		0.011608339598054409;
	setAttr -s 3 ".wl[82].w[6:8]"  0.53027746415268129 0.45152075144027531 
		0.01820178440704347;
	setAttr -s 3 ".wl[83].w[5:7]"  0.13893854151142193 0.69140914992020341 
		0.16965230856837477;
	setAttr -s 3 ".wl[84].w[5:7]"  0.23801968987210087 0.70546817947266538 
		0.056512130655233764;
	setAttr -s 3 ".wl[85].w[5:7]"  0.27135341959770903 0.71591877694886807 
		0.012727803453422863;
	setAttr -s 3 ".wl[86].w[4:6]"  0.012071072177479788 0.28793848167379316 
		0.69999044614872707;
	setAttr -s 3 ".wl[87].w[4:6]"  0.019829268799840039 0.31082292711372783 
		0.66934780408643224;
	setAttr -s 3 ".wl[88].w";
	setAttr ".wl[88].w[5]" 0.24907995581280296;
	setAttr ".wl[88].w[6]" 0.6942942023376969;
	setAttr ".wl[88].w[9]" 0.056625841849500223;
	setAttr -s 3 ".wl[89].w";
	setAttr ".wl[89].w[5]" 0.13969073983964767;
	setAttr ".wl[89].w[6]" 0.66978888839862694;
	setAttr ".wl[89].w[9]" 0.19052037176172548;
	setAttr -s 3 ".wl[90].w";
	setAttr ".wl[90].w[5]" 0.020958079774224495;
	setAttr ".wl[90].w[6]" 0.5342327652961435;
	setAttr ".wl[90].w[9]" 0.44480915492963219;
	setAttr -s 3 ".wl[91].w";
	setAttr ".wl[91].w[6]" 0.50937337905819235;
	setAttr ".wl[91].w[7]" 0.040338361359290517;
	setAttr ".wl[91].w[9]" 0.45028825958251717;
	setAttr -s 3 ".wl[92].w";
	setAttr ".wl[92].w[6]" 0.50992994010878756;
	setAttr ".wl[92].w[7]" 0.44403898750349635;
	setAttr ".wl[92].w[9]" 0.046031072387716247;
	setAttr -s 3 ".wl[93].w";
	setAttr ".wl[93].w[6]" 0.53652057090772576;
	setAttr ".wl[93].w[7]" 0.44253250433096725;
	setAttr ".wl[93].w[9]" 0.020946924761306981;
	setAttr -s 3 ".wl[94].w[5:7]"  0.023067128483635822 0.53645007103248055 
		0.4404828004838835;
	setAttr -s 3 ".wl[95].w[5:7]"  0.13820674356979348 0.67646949141563517 
		0.18532376501457129;
	setAttr -s 3 ".wl[96].w[5:7]"  0.21472352669552855 0.71608685348233836 
		0.069189619822133036;
	setAttr -s 3 ".wl[97].w[5:7]"  0.24902271377324281 0.73326062359374622 
		0.01771666263301094;
	setAttr -s 3 ".wl[98].w[5:7]"  0.25950521931853227 0.73352835193132571 
		0.0069664287501420988;
	setAttr -s 3 ".wl[99].w";
	setAttr ".wl[99].w[5]" 0.25910463135961104;
	setAttr ".wl[99].w[6]" 0.72560218001125776;
	setAttr ".wl[99].w[9]" 0.015293188629131269;
	setAttr -s 3 ".wl[100].w";
	setAttr ".wl[100].w[5]" 0.21330449982501043;
	setAttr ".wl[100].w[6]" 0.72368110700749944;
	setAttr ".wl[100].w[9]" 0.063014393167490232;
	setAttr -s 3 ".wl[101].w";
	setAttr ".wl[101].w[5]" 0.12784183131008606;
	setAttr ".wl[101].w[6]" 0.69862599337802245;
	setAttr ".wl[101].w[9]" 0.17353217531189163;
	setAttr -s 3 ".wl[102].w";
	setAttr ".wl[102].w[5]" 0.035726903052564811;
	setAttr ".wl[102].w[6]" 0.57175928948704791;
	setAttr ".wl[102].w[9]" 0.39251380746038739;
	setAttr -s 3 ".wl[103].w";
	setAttr ".wl[103].w[6]" 0.54652888269462097;
	setAttr ".wl[103].w[7]" 0.12230235700130111;
	setAttr ".wl[103].w[9]" 0.33116876030407788;
	setAttr -s 3 ".wl[104].w";
	setAttr ".wl[104].w[6]" 0.52877286113480604;
	setAttr ".wl[104].w[7]" 0.40770206584866026;
	setAttr ".wl[104].w[9]" 0.063525073016533762;
	setAttr -s 3 ".wl[105].w";
	setAttr ".wl[105].w[6]" 0.57217531223135998;
	setAttr ".wl[105].w[7]" 0.39075278170940675;
	setAttr ".wl[105].w[9]" 0.037071906059233231;
	setAttr -s 3 ".wl[106].w[5:7]"  0.039510045988238048 0.56874660661249088 
		0.39174334739927102;
	setAttr -s 3 ".wl[107].w[5:7]"  0.1304129985000379 0.69619834107286538 
		0.17338866042709672;
	setAttr -s 3 ".wl[108].w[5:7]"  0.19491753927272912 0.72674273977812975 
		0.078339720949141128;
	setAttr -s 3 ".wl[109].w[5:7]"  0.22648372327688973 0.73771882155689261 
		0.035797455166217733;
	setAttr -s 3 ".wl[110].w[5:7]"  0.24107285680788712 0.74414201184650586 
		0.014785131345607118;
	setAttr -s 3 ".wl[111].w";
	setAttr ".wl[111].w[5]" 0.23632724437001182;
	setAttr ".wl[111].w[6]" 0.74284452029564074;
	setAttr ".wl[111].w[9]" 0.02082823533434754;
	setAttr -s 3 ".wl[112].w";
	setAttr ".wl[112].w[5]" 0.19765821651250309;
	setAttr ".wl[112].w[6]" 0.73657030666847501;
	setAttr ".wl[112].w[9]" 0.065771476819021887;
	setAttr -s 3 ".wl[113].w";
	setAttr ".wl[113].w[5]" 0.13368688214693358;
	setAttr ".wl[113].w[6]" 0.72441964998934094;
	setAttr ".wl[113].w[9]" 0.14189346786372559;
	setAttr -s 3 ".wl[114].w";
	setAttr ".wl[114].w[5]" 0.076441173668023776;
	setAttr ".wl[114].w[6]" 0.66271663409533665;
	setAttr ".wl[114].w[9]" 0.26084219223663951;
	setAttr -s 3 ".wl[115].w";
	setAttr ".wl[115].w[6]" 0.5906300276482096;
	setAttr ".wl[115].w[7]" 0.11595458167243822;
	setAttr ".wl[115].w[9]" 0.29341539067935218;
	setAttr -s 3 ".wl[116].w";
	setAttr ".wl[116].w[6]" 0.58578483614598365;
	setAttr ".wl[116].w[7]" 0.31881110766902382;
	setAttr ".wl[116].w[9]" 0.095404056184992661;
	setAttr -s 3 ".wl[117].w";
	setAttr ".wl[117].w[6]" 0.6385103916496474;
	setAttr ".wl[117].w[7]" 0.30472291826539893;
	setAttr ".wl[117].w[9]" 0.056766690084953678;
	setAttr -s 3 ".wl[118].w[5:7]"  0.083169578119904636 0.65454233185575861 
		0.26228809002433684;
	setAttr -s 3 ".wl[119].w[5:7]"  0.13593607663215659 0.7143789710053603 
		0.14968495236248319;
	setAttr -s 3 ".wl[120].w[5:7]"  0.17541590667298873 0.74159995455939287 
		0.082984138767618454;
	setAttr -s 3 ".wl[121].w[5:7]"  0.19603321017568132 0.75026160220642935 
		0.053705187617889297;
	setAttr -s 3 ".wl[122].w[5:7]"  0.21089867934363199 0.75457947058764874 
		0.034521850068719211;
	setAttr -s 3 ".wl[123].w";
	setAttr ".wl[123].w[5]" 0.19913360520669882;
	setAttr ".wl[123].w[6]" 0.76155466526356841;
	setAttr ".wl[123].w[9]" 0.039311729529732733;
	setAttr -s 3 ".wl[124].w";
	setAttr ".wl[124].w[5]" 0.17422591490986969;
	setAttr ".wl[124].w[6]" 0.76058854246419394;
	setAttr ".wl[124].w[9]" 0.065185542625936621;
	setAttr -s 3 ".wl[125].w";
	setAttr ".wl[125].w[5]" 0.14156572482757984;
	setAttr ".wl[125].w[6]" 0.75800246666859949;
	setAttr ".wl[125].w[9]" 0.10043180850382069;
	setAttr -s 3 ".wl[126].w";
	setAttr ".wl[126].w[5]" 0.11072564202936214;
	setAttr ".wl[126].w[6]" 0.75340589721835383;
	setAttr ".wl[126].w[9]" 0.13586846075228412;
	setAttr -s 3 ".wl[127].w";
	setAttr ".wl[127].w[6]" 0.74464260939844285;
	setAttr ".wl[127].w[7]" 0.11699505708952734;
	setAttr ".wl[127].w[9]" 0.13836233351202976;
	setAttr -s 3 ".wl[128].w";
	setAttr ".wl[128].w[6]" 0.74955445017084876;
	setAttr ".wl[128].w[7]" 0.15889629945869341;
	setAttr ".wl[128].w[9]" 0.091549250370457788;
	setAttr -s 3 ".wl[129].w[5:7]"  0.091740646862620234 0.73499906509957491 
		0.17326028803780497;
	setAttr -s 3 ".wl[130].w[5:7]"  0.11401745729134129 0.72953000237450161 
		0.15645254033415706;
	setAttr -s 3 ".wl[131].w[5:7]"  0.14567856666733553 0.73455249088599206 
		0.11976894244667247;
	setAttr -s 3 ".wl[132].w";
	setAttr ".wl[132].w[5]" 0.17267220180821422;
	setAttr ".wl[132].w[6]" 0.48452734888836391;
	setAttr ".wl[132].w[8]" 0.34280044930342202;
	setAttr -s 3 ".wl[133].w[5:7]"  0.14548732260031694 0.76944029376605316 
		0.085072383633630053;
	setAttr -s 58 ".pm";
	setAttr ".pm[0]" -type "matrix" 1.6607974026026567e-016 -1.2284586857477202e-017 1 -0
		 0.99727554179989464 -0.073766481058313071 -1.2284586857477202e-017 0 0.073766481058313169 0.99727554179989464 1.6607974026026567e-016 -0
		 -108.01551104228899 17.072527743611769 2.8431470084264341e-015 1;
	setAttr ".pm[1]" -type "matrix" 1.665334177190535e-016 -1.0946226490382234e-019 1 -0
		 0.99999978397901901 -0.00065729895390931293 -1.2284586857477198e-017 0 0.00065729895390941007 0.99999978397901901 1.6607974026026563e-016 -0
		 -121.23446706899365 8.2309875022972729 2.8431470084264333e-015 1;
	setAttr ".pm[2]" -type "matrix" 1.6536724279304185e-016 1.9673998327827136e-017 1 -0
		 0.9929971373627059 0.11813841538412004 -1.2284586857477198e-017 0 -0.11813841538411994 0.9929971373627059 1.660797402602656e-016 -0
		 -133.19470517506733 -7.6454918127098601 5.4928440594600488e-015 1;
	setAttr ".pm[3]" -type "matrix" 1.6621072710037562e-016 -1.0362692504395813e-017 1 -0
		 0.99806209151230751 -0.062225890801802672 -1.2284586857477195e-017 0 0.062225890801802769 0.99806209151230751 1.6607974026026563e-016 -0
		 -145.79976518053456 18.861708174667498 6.2436722331502958e-015 1;
	setAttr ".pm[4]" -type "matrix" 1.647706828117942e-016 -2.4166366812396517e-017 1 -0
		 0.98941491428370443 -0.14511418742827686 -1.2284586857477195e-017 0 0.14511418742827698 0.98941491428370443 1.660797402602656e-016 -0
		 -156.09836091801037 31.970375509227235 1.5990292458769027e-015 1;
	setAttr ".pm[5]" -type "matrix" 1.5895284722373049e-016 -4.9672764757415987e-017 1 -0
		 0.95447997803502904 -0.2982749931359478 -1.2284586857477197e-017 0 0.29827499313594791 0.95447997803502904 1.6607974026026563e-016 -0
		 -158.11110654099292 57.440801626041164 -2.3807378290155297e-015 1;
	setAttr ".pm[6]" -type "matrix" 1.6653340007997807e-016 1.3363000471672391e-019 1 -0
		 0.99999967805990753 0.0008024213859303403 -1.2284586857477189e-017 0 -0.00080242138593022928 0.99999967805990753 1.660797402602656e-016 -0
		 -177.89137951481601 4.5357764805208136 -6.6223263247243487e-015 1;
	setAttr ".pm[7]" -type "matrix" 1.6653340007997807e-016 1.3363000471672391e-019 1 -0
		 0.99999967805990753 0.0008024213859303403 -1.2284586857477189e-017 0 -0.00080242138593022928 0.99999967805990753 1.660797402602656e-016 -0
		 -179.80602562428189 -3.2726102924845164 -3.3655934333801252 1;
	setAttr ".pm[8]" -type "matrix" 1.5906514190800924e-016 -4.9311984638230417e-017 1 -0
		 0.95515428509939371 -0.29610858085551206 -1.2284586857477191e-017 0 0.29610858085551217 0.95515428509939371 1.660797402602656e-016 -0
		 -166.31655138342308 48.828586650591703 -7.8887777000037763e-015 1;
	setAttr ".pm[9]" -type "matrix" 1.6653340007997807e-016 1.3363000471672391e-019 1 -0
		 0.99999967805990753 0.0008024213859303403 -1.2284586857477189e-017 0 -0.00080242138593022928 0.99999967805990753 1.660797402602656e-016 -0
		 -179.80602562428189 -3.2726102924845164 3.365598678588869 1;
	setAttr ".pm[10]" -type "matrix" 0.91222902029898711 -0.3944733093574479 -0.11058491185027432 -0
		 -0.3969076711837935 -0.91785854060168603 -1.2559397966072072e-015 0 -0.10150130580345834 0.043891999830558498 -0.99386667982736299 -0
		 55.279687480013294 148.6889801074642 -7.642955717526112 1;
	setAttr ".pm[11]" -type "matrix" 0.72390057317992607 -0.68955066340363214 -0.022087162547175368 -0
		 -0.68971892111435096 -0.7240772126347127 6.6439909129911672e-016 0 -0.015992811092169032 0.015233933922514461 -0.99975604886922986 -0
		 90.92517096263046 124.60871994701505 -6.0570411356766245 1;
	setAttr ".pm[12]" -type "matrix" 0.72106041179410552 -0.68173263672099771 0.12374366477824711 -0
		 -0.68701286848862431 -0.72664524943815023 -2.8449465006019622e-016 0 0.089917746159180398 -0.085013490096598227 -0.99231421708410916 -0
		 59.324741481869786 123.90367589646812 -12.306982565741022 1;
	setAttr ".pm[13]" -type "matrix" 0.72106041179410552 -0.68173263672099771 0.12374366477824711 -0
		 -0.68701286848862431 -0.72664524943815023 -2.8449465006019622e-016 0 0.089917746159180398 -0.085013490096598227 -0.99231421708410916 -0
		 36.637307213071701 123.90367589646816 -12.306982565741013 1;
	setAttr ".pm[14]" -type "matrix" 0.69011616050571545 -0.69633738554758096 0.19711400380898847 -0
		 -0.71027252492573811 -0.70392680041011113 6.9388939039072271e-017 0 0.13875383001728761 -0.14000466118363195 -0.98038057380916621 -0
		 28.218711096251639 122.99529774921164 -13.525768207356164 1;
	setAttr ".pm[15]" -type "matrix" 0.65854602777831628 -0.74748575712521814 0.087075669347645962 -0
		 -0.7503357571586865 -0.66105692003722327 -1.4710455076283314e-015 0 0.05756197378913562 -0.065335988290064512 -0.99620170036376621 -0
		 30.970294756475671 122.14777098204691 -5.6600482228216231 1;
	setAttr ".pm[16]" -type "matrix" 0.65854602777831628 -0.74748575712521814 0.087075669347645962 -0
		 -0.7503357571586865 -0.66105692003722327 -1.4710455076283314e-015 0 0.05756197378913562 -0.065335988290064512 -0.99620170036376621 -0
		 27.250839669470455 122.14777098204694 -5.6600482228216196 1;
	setAttr ".pm[17]" -type "matrix" 0.7034611831162102 -0.71047367028263098 0.019223102867888177 -0
		 -0.71060497651963339 -0.70359119333994691 2.0764640007442373e-015 0 0.013525205886512504 -0.01366003256207177 -0.99981521908607207 -0
		 27.804412436071281 124.16774865894797 -4.5360690463883824 1;
	setAttr ".pm[18]" -type "matrix" 0.68892414211329811 -0.72483069731276029 0.0019966588477422645 -0
		 -0.72483214213898062 -0.68892551536593238 1.4909948276020651e-015 0 0.0013755492256896855 -0.0014472425097309329 -0.99999800667473604 -0
		 24.214202337423746 123.7466811564704 -3.2787634791054767 1;
	setAttr ".pm[19]" -type "matrix" 0.68892414211329811 -0.72483069731276029 0.0019966588477422645 -0
		 -0.72483214213898062 -0.68892551536593238 1.4909948276020651e-015 0 0.0013755492256896855 -0.0014472425097309329 -0.99999800667473604 -0
		 20.103427284852039 123.74668115647039 -3.2787634791054749 1;
	setAttr ".pm[20]" -type "matrix" 0.69224614525106276 -0.72098876578096849 -0.031152431729808867 -0
		 -0.72133887105434369 -0.69258229338183663 1.9081958235744871e-016 0 -0.021575622611852287 0.022471459934577581 -0.99951464521402544 -0
		 29.85880364086994 123.64613988770412 -4.6550194841813202 1;
	setAttr ".pm[21]" -type "matrix" 0.69105036256779317 -0.72216805588231081 -0.030375902588819753 -0
		 -0.72250145721355252 -0.69136939787952179 -2.1646053005586187e-013 0 -0.021000969482723026 0.021946633884748649 -0.99953854580096813 -0
		 24.353937496169401 123.60277292489522 -4.711319212235721 1;
	setAttr ".pm[22]" -type "matrix" 0.69105036256779317 -0.72216805588231081 -0.030375902588819753 -0
		 -0.72250145721355252 -0.69136939787952179 -2.1646053005586187e-013 0 -0.021000969482723026 0.021946633884748649 -0.99953854580096813 -0
		 20.28478569062267 123.60277292489505 -4.7113192122356695 1;
	setAttr ".pm[23]" -type "matrix" 0.67868662694018722 -0.7196748719479561 -0.14646686007163551 -0
		 -0.72752076318711234 -0.68608566457231934 5.5511151231257807e-016 0 -0.10048881303006933 0.10655768182093575 -0.98921557756676859 -0
		 30.870983842423648 123.10959755595468 -0.01458771191148988 1;
	setAttr ".pm[24]" -type "matrix" 0.6606888159820169 -0.74902681595185794 -0.049488558488827626 -0
		 -0.7499457315078264 -0.66149935736415533 3.3306690738754681e-016 0 -0.032736649637238172 0.037113733197171386 -0.99877469059778301 -0
		 30.482048082607754 121.91449910639879 -6.9841919198322211 1;
	setAttr ".pm[25]" -type "matrix" 0.6606888159820169 -0.74902681595185794 -0.049488558488827626 -0
		 -0.7499457315078264 -0.66149935736415533 3.3306690738754681e-016 0 -0.032736649637238172 0.037113733197171386 -0.99877469059778301 -0
		 26.948736795934153 121.91449910639879 -6.9841919198322229 1;
	setAttr ".pm[26]" -type "matrix" 0.40017113440462498 -0.21156282163502504 0.89168617556354557 -0
		 -0.46738294453736101 -0.88405496613931489 -2.7755575615628904e-016 0 0.78829959174472597 -0.41675891033814827 -0.45265413320642245 -0
		 27.793444340890012 111.85635115158868 -55.706464149069582 1;
	setAttr ".pm[27]" -type "matrix" 0.46457557306074215 -0.48550505873511113 0.74057705531423235 -0
		 -0.72250846541145908 -0.69136207403123995 8.8817841970012484e-016 0 0.51200688894199564 -0.53507319175402368 -0.67197144667173203 -0
		 48.614523720090062 108.41093663477541 -45.517059399615071 1;
	setAttr ".pm[28]" -type "matrix" 0.46457557306074215 -0.48550505873511113 0.74057705531423235 -0
		 -0.72250846541145908 -0.69136207403123995 8.8817841970012484e-016 0 0.51200688894199564 -0.53507319175402368 -0.67197144667173203 -0
		 44.626920874352606 108.41093663477541 -45.517059399615086 1;
	setAttr ".pm[29]" -type "matrix" 0.91222902029898767 -0.39447330935744707 -0.11058491185027444 -0
		 0.396907671183793 0.91785854060168626 1.7277845820728983e-015 -0 0.10150130580345851 -0.043891999830558977 0.9938666798273631 -0
		 -55.279538278137494 -148.68862810651086 7.64296080547307 1;
	setAttr ".pm[30]" -type "matrix" 0.7239005731799264 -0.68955066340363136 -0.022087162547178737 -0
		 0.68971892111435051 0.72407721263471292 2.8692326292656366e-015 -0 0.015992811092169216 -0.015233933922519496 0.99975604886922964 -0
		 -90.925041105935364 -124.60864279629543 6.0570447983490121 1;
	setAttr ".pm[31]" -type "matrix" 0.72106041179410607 -0.68173263672099671 0.12374366477824839 -0
		 0.68701286848862397 0.72664524943815068 -1.0408340855860835e-015 0 -0.089917746159180301 0.085013490096599892 0.99231421708410872 -0
		 -59.324802495076909 -123.90378569866284 12.306989576965355 1;
	setAttr ".pm[32]" -type "matrix" 0.72106041179410607 -0.68173263672099671 0.12374366477824839 -0
		 0.68701286848862397 0.72664524943815068 -1.0408340855860835e-015 0 -0.089917746159180301 0.085013490096599892 0.99231421708410872 -0
		 -36.637072536062803 -123.90345876972118 12.306981263078949 1;
	setAttr ".pm[33]" -type "matrix" 0.69011616050571556 -0.69633738554758073 0.19711400380898669 -0
		 0.71027252492573789 0.70392680041011135 1.4432899320127025e-015 0 -0.13875383001728733 0.14000466118362953 0.98038057380916621 -0
		 -28.218919609655696 -122.995568101302 13.525777354807447 1;
	setAttr ".pm[34]" -type "matrix" 0.65854602777831683 -0.74748575712521759 0.087075669347645018 -0
		 0.75033575715868617 0.66105692003722383 1.9220736113823007e-015 0 -0.057561973789135204 0.065335988290063374 0.99620170036376599 -0
		 -30.970487822394777 -122.14793177819351 5.6600479902685983 1;
	setAttr ".pm[35]" -type "matrix" 0.65854602777831683 -0.74748575487783186 0.087075688639929677 -0
		 0.75033575715868628 0.66105692003722361 -1.7061591785216807e-008 0 -0.057561973789135204 0.065336014001599163 0.9962016986774721 -0
		 -27.250934065136445 -122.14780181688168 5.660047503302871 1;
	setAttr ".pm[36]" -type "matrix" 0.70346118311621142 -0.71047367028262975 0.019223102867889221 -0
		 0.71060497651963284 0.70359119333994791 -1.3773704399255842e-015 0 -0.013525205886513582 0.01366003256207189 0.99981521908607185 -0
		 -27.804199588447222 -124.16755387399199 4.5360734849322668 1;
	setAttr ".pm[37]" -type "matrix" 0.68892414211329955 -0.72483069731275873 0.001996658847736255 -0
		 0.72483214213897984 0.68892551536593372 4.8702361588048828e-015 0 -0.0013755492256899921 0.0014472425097220769 0.9999980066747356 -0
		 -24.213849620829617 -123.74635807271557 3.27876018336472 1;
	setAttr ".pm[38]" -type "matrix" 0.68892414211329955 -0.72483069731275873 0.001996658847736255 -0
		 0.72483214213897984 0.68892551536593372 4.8702361588048828e-015 0 -0.0013755492256899921 0.0014472425097220769 0.9999980066747356 -0
		 -20.1034612438654 -123.74670878159881 3.2787647324838138 1;
	setAttr ".pm[39]" -type "matrix" 0.69224614525106365 -0.72098876578096749 -0.03115243172980927 -0
		 0.72133887105434302 0.6925822933818373 1.3843093338294915e-015 -0 0.021575622611851621 -0.022471459934579063 0.99951464521402533 -0
		 -29.858498603847458 -123.6458181851184 4.6550229858929972 1;
	setAttr ".pm[40]" -type "matrix" 0.6910503625678367 -0.72216805588226285 -0.030375902588977051 -0
		 0.722501457213511 0.69136939787956586 3.4031111262322606e-013 -0 0.021000969482743836 -0.021946633884946741 0.99953854580096357 -0
		 -24.353964853141829 -123.6028455508325 4.7113145300958017 1;
	setAttr ".pm[41]" -type "matrix" 0.6910503625678367 -0.72216805588226285 -0.030375902588977051 -0
		 0.722501457213511 0.69136939787956586 3.4031111262322606e-013 -0 0.021000969482743836 -0.021946633884946741 0.99953854580096357 -0
		 -20.284782206541369 -123.60283165353933 4.7113180561407484 1;
	setAttr ".pm[42]" -type "matrix" 0.67868662694018811 -0.7196748719479551 -0.14646686007163598 -0
		 0.72752076318711201 0.6860856645723199 3.0531133177191785e-016 -0 0.1004888130300693 -0.10655768182093678 0.98921557756676814 -0
		 -30.870992643788433 -123.10957105349057 0.014576101237619089 1;
	setAttr ".pm[43]" -type "matrix" 0.66068881598201812 -0.74902681595185661 -0.049488558488830291 -0
		 0.74994573150782573 0.66149935736415655 3.4000580129145394e-016 -0 0.032736649637239629 -0.037113733197173912 0.99877469059778279 -0
		 -30.481891733469215 -121.91430650446605 6.9842378176989524 1;
	setAttr ".pm[44]" -type "matrix" 0.66068881598201812 -0.74902681595185661 -0.049488558488830291 -0
		 0.74994573150782573 0.66149935736415655 3.4000580129145394e-016 -0 0.032736649637239629 -0.037113733197173912 0.99877469059778279 -0
		 -26.948373147365359 -121.91422665684826 6.9841651321398901 1;
	setAttr ".pm[45]" -type "matrix" 0.40017113440462532 -0.21156282163502357 0.89168617556354535 -0
		 0.46738294453736101 0.884054966139315 -9.7144514654701118e-016 0 -0.78829959174472541 0.4167589103381486 0.45265413320642217 -0
		 -27.793281282624033 -111.85604757995186 55.706468506529554 1;
	setAttr ".pm[46]" -type "matrix" 0.46457557306074321 -0.48550505873511168 0.74057705531423101 -0
		 0.72250846541145852 0.69136207403124095 -5.551115123125779e-017 0 -0.51200688894199564 0.5350731917540219 0.67197144667173314 -0
		 -48.614815133038398 -108.41118906759674 45.517039235793881 1;
	setAttr ".pm[47]" -type "matrix" 0.46457557306074321 -0.48550505873511168 0.74057705531423101 -0
		 0.72250846541145852 0.69136207403124095 -5.551115123125779e-017 0 -0.51200688894199564 0.5350731917540219 0.67197144667173314 -0
		 -44.627241312520574 -108.41126983826574 45.517081625228286 1;
	setAttr ".pm[48]" -type "matrix" -1.6329650655516354e-016 -3.2674793741592545e-017 1 -0
		 -0.98056278143031739 -0.19620558522539194 -1.22845868574772e-017 0 0.19620558522539186 -0.98056278143031739 1.6607974026026565e-016 -0
		 105.98983178846859 13.366288050757193 -11.795719746574472 1;
	setAttr ".pm[49]" -type "matrix" 0.026489234124266712 0.066836640868209576 0.99741224371518689 -0
		 -0.92964914623117201 0.36844601356460949 1.0547118733938979e-015 0 -0.36749256507739336 -0.92724344081034116 0.071894478835556344 -0
		 55.954008687865539 -24.087114272718182 -11.698269045946509 1;
	setAttr ".pm[50]" -type "matrix" 0.062568961416732946 -0.077957819837620609 0.9949913081999241 -0
		 -0.77987864184719546 -0.62593075015577671 6.7307270867900086e-016 0 0.62279565594005615 -0.77597247008872117 -0.099961475612375242 -0
		 15.52727634144939 -4.4617842408127233 -14.459274614238431 1;
	setAttr ".pm[51]" -type "matrix" -2.9293242012126382e-015 -5.3362117523626759e-015 1 -0
		 0.99999704157853908 0.0024324543509414093 3.1114121382132354e-015 -0 -0.0024324543509413633 0.99999704157853908 5.4880518398716967e-015 -0
		 -5.4114913481829801 2.8651346907546849 -14.242894827090172 1;
	setAttr ".pm[52]" -type "matrix" 0.075600836386198897 -0.01858111740061235 0.99696502226199057 -0
		 -0.23867605086088578 -0.9710992445396357 1.1553258350005527e-015 0 0.96815197995106017 -0.2379516743599272 -0.077850782822962858 -0
		 -3.3041741901994883 6.3919395415455798 -14.795053092662878 1;
	setAttr ".pm[53]" -type "matrix" 1.6329650655516357e-016 3.2674793741592588e-017 1 -0
		 0.98056278143031761 0.19620558522539219 -1.2284586857477198e-017 0 -0.19620558522539208 0.98056278143031761 1.6607974026026563e-016 -0
		 -105.98983178846863 -13.366288050757221 11.795719746574479 1;
	setAttr ".pm[54]" -type "matrix" 0.026489234124267024 0.066836640868209438 0.99741224371518711 -0
		 0.92964914623117212 -0.3684460135646096 -1.0894063429134347e-015 0 0.36749256507739353 0.92724344081034149 -0.071894478835556025 -0
		 -55.95400868786556 24.087114272718182 11.698269045946516 1;
	setAttr ".pm[55]" -type "matrix" 0.062568961416733182 -0.077957819837620346 0.99499130819992421 -0
		 0.77987864184719558 0.62593075015577693 -7.1470607210244433e-016 0 -0.62279565594005604 0.77597247008872117 0.099961475612375505 -0
		 -15.527276341449404 4.4617842408126975 14.459274614238437 1;
	setAttr ".pm[56]" -type "matrix" -3.2840611999081187e-015 -5.3787081230642108e-015 0.99999999999999967 0
		 -0.99999704157853908 -0.0024324543509415208 -3.1524377509316207e-015 0 0.0024324543509412718 -0.99999704157853919 -5.2381511270892483e-015 -0
		 5.411491348183004 -2.865134690754672 14.242894827090176 1;
	setAttr ".pm[57]" -type "matrix" 0.075600836386198897 -0.018581117400611993 0.99696502226199035 -0
		 0.23867605086088567 0.9710992445396357 -1.1934897514720425e-015 0 -0.96815197995106039 0.23795167435992731 0.077850782822963108 -0
		 3.3041741901994941 -6.3919395415456064 14.795053092662879 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 6 ".ma";
	setAttr -s 58 ".dpf[0:57]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 2;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
	setAttr ".hmf" 0.68;
	setAttr -s 6 ".ifcl";
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak9";
	rename -uid "131FCE80-4BAE-CB9A-9098-29ACC84AAAC9";
createNode objectSet -n "skinCluster9Set";
	rename -uid "720E773D-40F7-D98D-94E9-BF9DBA7A5D42";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster9GroupId";
	rename -uid "F4B36277-4CEE-D19F-862C-2F9C3E03F037";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster9GroupParts";
	rename -uid "77AC0C66-4E00-8EC5-5B28-DCA99B25C4D8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet9";
	rename -uid "04EB0258-47C3-2560-E07D-21B3D21DCD19";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId55";
	rename -uid "3EB854E4-4952-C128-EA1A-5AAD31B0D554";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "C921A882-463D-9ED2-844E-07A65907424E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 7 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off ".hgcd";
	setAttr -k off ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -cb on ".hwcc";
	setAttr -cb on ".hwdp";
	setAttr -cb on ".hwql";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Rig.di" "bip_pelvis.do";
connectAttr "bip_pelvis.s" "bip_spine_0.is";
connectAttr "bip_spine_0.s" "bip_spine_1.is";
connectAttr "bip_spine_1.s" "bip_spine_2.is";
connectAttr "bip_spine_2.s" "bip_spine_3.is";
connectAttr "bip_spine_3.s" "bip_neck.is";
connectAttr "bip_neck.s" "bip_head.is";
connectAttr "bip_head.s" "bip_eye_L.is";
connectAttr "bip_head.s" "bip_jaw.is";
connectAttr "bip_head.s" "bip_eye_R.is";
connectAttr "bip_spine_3.s" "bip_collar_L.is";
connectAttr "bip_collar_L.s" "bip_upperArm_L.is";
connectAttr "bip_upperArm_L.s" "bip_lowerArm_L.is";
connectAttr "bip_lowerArm_L.s" "bip_hand_L.is";
connectAttr "bip_hand_L.s" "bip_index_0_L.is";
connectAttr "bip_index_0_L.s" "bip_index_1_L.is";
connectAttr "bip_index_1_L.s" "bip_index_2_L.is";
connectAttr "bip_hand_L.s" "bip_middle_0_L.is";
connectAttr "bip_middle_0_L.s" "bip_middle_1_L.is";
connectAttr "bip_middle_1_L.s" "bip_middle_2_L.is";
connectAttr "bip_hand_L.s" "bip_ring_0_L.is";
connectAttr "bip_ring_0_L.s" "bip_ring_1_L.is";
connectAttr "bip_ring_1_L.s" "bip_ring_2_L.is";
connectAttr "bip_hand_L.s" "bip_pinky_0_L.is";
connectAttr "bip_pinky_0_L.s" "bip_pinky_1_L.is";
connectAttr "bip_pinky_1_L.s" "bip_pinky_2_L.is";
connectAttr "bip_hand_L.s" "bip_thumb_0_L.is";
connectAttr "bip_thumb_0_L.s" "bip_thumb_1_L.is";
connectAttr "bip_thumb_1_L.s" "bip_thumb_2_L.is";
connectAttr "bip_spine_3.s" "bip_collar_R.is";
connectAttr "bip_collar_R.s" "bip_upperArm_R.is";
connectAttr "bip_upperArm_R.s" "bip_lowerArm_R.is";
connectAttr "bip_lowerArm_R.s" "bip_hand_R.is";
connectAttr "bip_hand_R.s" "bip_index_0_R.is";
connectAttr "bip_index_0_R.s" "bip_index_1_R.is";
connectAttr "bip_index_1_R.s" "bip_index_2_R.is";
connectAttr "bip_hand_R.s" "bip_middle_0_R.is";
connectAttr "bip_middle_0_R.s" "bip_middle_1_R.is";
connectAttr "bip_middle_1_R.s" "bip_middle_2_R.is";
connectAttr "bip_hand_R.s" "bip_ring_0_R.is";
connectAttr "bip_ring_0_R.s" "bip_ring_1_R.is";
connectAttr "bip_ring_1_R.s" "bip_ring_2_R.is";
connectAttr "bip_hand_R.s" "bip_pinky_0_R.is";
connectAttr "bip_pinky_0_R.s" "bip_pinky_1_R.is";
connectAttr "bip_pinky_1_R.s" "bip_pinky_2_R.is";
connectAttr "bip_hand_R.s" "bip_thumb_0_R.is";
connectAttr "bip_thumb_0_R.s" "bip_thumb_1_R.is";
connectAttr "bip_thumb_1_R.s" "bip_thumb_2_R.is";
connectAttr "bip_pelvis.s" "bip_hip_L.is";
connectAttr "bip_hip_L.s" "bip_knee_L.is";
connectAttr "bip_knee_L.s" "bip_foot_L.is";
connectAttr "bip_foot_L.s" "bip_toe_L.is";
connectAttr "bip_toe_L.s" "bip_toe2_0_L.is";
connectAttr "bip_pelvis.s" "bip_hip_R.is";
connectAttr "bip_hip_R.s" "bip_knee_R.is";
connectAttr "bip_knee_R.s" "bip_foot_R.is";
connectAttr "bip_foot_R.s" "bip_toe_R.is";
connectAttr "bip_toe_R.s" "bip_toe2_0_R.is";
connectAttr "skinCluster7GroupId.id" "eyes_GEOShape.iog.og[1].gid";
connectAttr "skinCluster7Set.mwc" "eyes_GEOShape.iog.og[1].gco";
connectAttr "groupId46.id" "eyes_GEOShape.iog.og[2].gid";
connectAttr "tweakSet7.mwc" "eyes_GEOShape.iog.og[2].gco";
connectAttr "skinCluster7.og[0]" "eyes_GEOShape.i";
connectAttr "tweak7.vl[0].vt[0]" "eyes_GEOShape.twl";
connectAttr "skinCluster8.og[0]" "generichar_GEOShape.i";
connectAttr "groupId48.id" "generichar_GEOShape.iog.og[1].gid";
connectAttr "groupId51.id" "generichar_GEOShape.iog.og[3].gid";
connectAttr "topoSymmetrySet.mwc" "generichar_GEOShape.iog.og[3].gco";
connectAttr "skinCluster8GroupId.id" "generichar_GEOShape.iog.og[4].gid";
connectAttr "skinCluster8Set.mwc" "generichar_GEOShape.iog.og[4].gco";
connectAttr "groupId53.id" "generichar_GEOShape.iog.og[5].gid";
connectAttr "tweakSet8.mwc" "generichar_GEOShape.iog.og[5].gco";
connectAttr "tweak8.vl[0].vt[0]" "generichar_GEOShape.twl";
connectAttr "skinCluster9GroupId.id" "temphead_GEOShape.iog.og[0].gid";
connectAttr "skinCluster9Set.mwc" "temphead_GEOShape.iog.og[0].gco";
connectAttr "groupId55.id" "temphead_GEOShape.iog.og[1].gid";
connectAttr "tweakSet9.mwc" "temphead_GEOShape.iog.og[1].gco";
connectAttr "skinCluster9.og[0]" "temphead_GEOShape.i";
connectAttr "tweak9.vl[0].vt[0]" "temphead_GEOShape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "generichar_body_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "generichar_eyes_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "generichar_tongue_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "iterati_basemesh_2_shadingGroup_iterati.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "iterati_basemesh_2_shadingGroup_iteratiClothes.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "generichar_body_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "generichar_eyes_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "generichar_tongue_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "iterati_basemesh_2_shadingGroup_iterati.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "iterati_basemesh_2_shadingGroup_iteratiClothes.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file_body_diffuse.oc" "generichar_body_phongE.c";
connectAttr "bump2d_body_normal.o" "generichar_body_phongE.n";
connectAttr "generichar_body_phongE.oc" "generichar_body_SG.ss";
connectAttr "generichar_GEOShape.iog" "generichar_body_SG.dsm" -na;
connectAttr "generichar_body_SG.msg" "materialInfo1.sg";
connectAttr "generichar_body_phongE.msg" "materialInfo1.m";
connectAttr "file_body_diffuse.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture_body_diffuse.c" "file_body_diffuse.c";
connectAttr "place2dTexture_body_diffuse.tf" "file_body_diffuse.tf";
connectAttr "place2dTexture_body_diffuse.rf" "file_body_diffuse.rf";
connectAttr "place2dTexture_body_diffuse.mu" "file_body_diffuse.mu";
connectAttr "place2dTexture_body_diffuse.mv" "file_body_diffuse.mv";
connectAttr "place2dTexture_body_diffuse.s" "file_body_diffuse.s";
connectAttr "place2dTexture_body_diffuse.wu" "file_body_diffuse.wu";
connectAttr "place2dTexture_body_diffuse.wv" "file_body_diffuse.wv";
connectAttr "place2dTexture_body_diffuse.re" "file_body_diffuse.re";
connectAttr "place2dTexture_body_diffuse.of" "file_body_diffuse.of";
connectAttr "place2dTexture_body_diffuse.r" "file_body_diffuse.ro";
connectAttr "place2dTexture_body_diffuse.n" "file_body_diffuse.n";
connectAttr "place2dTexture_body_diffuse.vt1" "file_body_diffuse.vt1";
connectAttr "place2dTexture_body_diffuse.vt2" "file_body_diffuse.vt2";
connectAttr "place2dTexture_body_diffuse.vt3" "file_body_diffuse.vt3";
connectAttr "place2dTexture_body_diffuse.vc1" "file_body_diffuse.vc1";
connectAttr "place2dTexture_body_diffuse.o" "file_body_diffuse.uv";
connectAttr "place2dTexture_body_diffuse.ofs" "file_body_diffuse.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file_body_diffuse.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file_body_diffuse.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file_body_diffuse.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file_body_diffuse.ws";
connectAttr "place2dTexture_body_normal.c" "file_body_normal.c";
connectAttr "place2dTexture_body_normal.tf" "file_body_normal.tf";
connectAttr "place2dTexture_body_normal.rf" "file_body_normal.rf";
connectAttr "place2dTexture_body_normal.mu" "file_body_normal.mu";
connectAttr "place2dTexture_body_normal.mv" "file_body_normal.mv";
connectAttr "place2dTexture_body_normal.s" "file_body_normal.s";
connectAttr "place2dTexture_body_normal.wu" "file_body_normal.wu";
connectAttr "place2dTexture_body_normal.wv" "file_body_normal.wv";
connectAttr "place2dTexture_body_normal.re" "file_body_normal.re";
connectAttr "place2dTexture_body_normal.of" "file_body_normal.of";
connectAttr "place2dTexture_body_normal.r" "file_body_normal.ro";
connectAttr "place2dTexture_body_normal.n" "file_body_normal.n";
connectAttr "place2dTexture_body_normal.vt1" "file_body_normal.vt1";
connectAttr "place2dTexture_body_normal.vt2" "file_body_normal.vt2";
connectAttr "place2dTexture_body_normal.vt3" "file_body_normal.vt3";
connectAttr "place2dTexture_body_normal.vc1" "file_body_normal.vc1";
connectAttr "place2dTexture_body_normal.o" "file_body_normal.uv";
connectAttr "place2dTexture_body_normal.ofs" "file_body_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file_body_normal.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file_body_normal.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file_body_normal.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file_body_normal.ws";
connectAttr "file_body_normal.oa" "bump2d_body_normal.bv";
connectAttr "generichar_eyes_phongE.oc" "generichar_eyes_SG.ss";
connectAttr "eyes_GEOShape.iog" "generichar_eyes_SG.dsm" -na;
connectAttr "generichar_eyes_SG.msg" "materialInfo2.sg";
connectAttr "generichar_eyes_phongE.msg" "materialInfo2.m";
connectAttr "file_tongue_diffuse.oc" "generichar_tongue_phongE.c";
connectAttr "generichar_tongue_phongE.oc" "generichar_tongue_SG.ss";
connectAttr "generichar_tongue_SG.msg" "materialInfo3.sg";
connectAttr "generichar_tongue_phongE.msg" "materialInfo3.m";
connectAttr "file_tongue_diffuse.msg" "materialInfo3.t" -na;
connectAttr "layerManager.dli[1]" "Reference.id";
connectAttr "layerManager.dli[2]" "Physics.id";
connectAttr "layerManager.dli[3]" "Rig.id";
connectAttr "layerManager.dli[4]" "Blendshapes.id";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster7.bp";
connectAttr "bip_eye_R.wm" "skinCluster7.ma[0]";
connectAttr "bip_eye_L.wm" "skinCluster7.ma[1]";
connectAttr "bip_eye_R.liw" "skinCluster7.lw[0]";
connectAttr "bip_eye_L.liw" "skinCluster7.lw[1]";
connectAttr "bip_eye_R.obcc" "skinCluster7.ifcl[0]";
connectAttr "bip_eye_L.obcc" "skinCluster7.ifcl[1]";
connectAttr "groupParts23.og" "tweak7.ip[0].ig";
connectAttr "groupId46.id" "tweak7.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "eyes_GEOShape.iog.og[1]" "skinCluster7Set.dsm" -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId46.msg" "tweakSet7.gn" -na;
connectAttr "eyes_GEOShape.iog.og[2]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "eyes_GEOShapeOrig.w" "groupParts23.ig";
connectAttr "groupId46.id" "groupParts23.gi";
connectAttr "bip_pelvis.msg" "bindPose3.m[0]";
connectAttr "bip_spine_0.msg" "bindPose3.m[1]";
connectAttr "bip_spine_1.msg" "bindPose3.m[2]";
connectAttr "bip_spine_2.msg" "bindPose3.m[3]";
connectAttr "bip_spine_3.msg" "bindPose3.m[4]";
connectAttr "bip_neck.msg" "bindPose3.m[5]";
connectAttr "bip_head.msg" "bindPose3.m[6]";
connectAttr "bip_eye_R.msg" "bindPose3.m[7]";
connectAttr "bip_eye_L.msg" "bindPose3.m[8]";
connectAttr "bip_collar_L.msg" "bindPose3.m[10]";
connectAttr "bip_upperArm_L.msg" "bindPose3.m[11]";
connectAttr "bip_lowerArm_L.msg" "bindPose3.m[12]";
connectAttr "bip_hand_L.msg" "bindPose3.m[13]";
connectAttr "bip_index_0_L.msg" "bindPose3.m[14]";
connectAttr "bip_index_1_L.msg" "bindPose3.m[15]";
connectAttr "bip_index_2_L.msg" "bindPose3.m[16]";
connectAttr "bip_middle_0_L.msg" "bindPose3.m[17]";
connectAttr "bip_middle_1_L.msg" "bindPose3.m[18]";
connectAttr "bip_middle_2_L.msg" "bindPose3.m[19]";
connectAttr "bip_ring_0_L.msg" "bindPose3.m[20]";
connectAttr "bip_ring_1_L.msg" "bindPose3.m[21]";
connectAttr "bip_ring_2_L.msg" "bindPose3.m[22]";
connectAttr "bip_pinky_0_L.msg" "bindPose3.m[23]";
connectAttr "bip_pinky_1_L.msg" "bindPose3.m[24]";
connectAttr "bip_pinky_2_L.msg" "bindPose3.m[25]";
connectAttr "bip_thumb_0_L.msg" "bindPose3.m[26]";
connectAttr "bip_thumb_1_L.msg" "bindPose3.m[27]";
connectAttr "bip_thumb_2_L.msg" "bindPose3.m[28]";
connectAttr "bip_collar_R.msg" "bindPose3.m[29]";
connectAttr "bip_upperArm_R.msg" "bindPose3.m[30]";
connectAttr "bip_lowerArm_R.msg" "bindPose3.m[31]";
connectAttr "bip_hand_R.msg" "bindPose3.m[32]";
connectAttr "bip_index_0_R.msg" "bindPose3.m[33]";
connectAttr "bip_index_1_R.msg" "bindPose3.m[34]";
connectAttr "bip_index_2_R.msg" "bindPose3.m[35]";
connectAttr "bip_middle_0_R.msg" "bindPose3.m[36]";
connectAttr "bip_middle_1_R.msg" "bindPose3.m[37]";
connectAttr "bip_middle_2_R.msg" "bindPose3.m[38]";
connectAttr "bip_ring_0_R.msg" "bindPose3.m[39]";
connectAttr "bip_ring_1_R.msg" "bindPose3.m[40]";
connectAttr "bip_ring_2_R.msg" "bindPose3.m[41]";
connectAttr "bip_pinky_0_R.msg" "bindPose3.m[42]";
connectAttr "bip_pinky_1_R.msg" "bindPose3.m[43]";
connectAttr "bip_pinky_2_R.msg" "bindPose3.m[44]";
connectAttr "bip_thumb_0_R.msg" "bindPose3.m[45]";
connectAttr "bip_thumb_1_R.msg" "bindPose3.m[46]";
connectAttr "bip_thumb_2_R.msg" "bindPose3.m[47]";
connectAttr "bip_hip_L.msg" "bindPose3.m[48]";
connectAttr "bip_knee_L.msg" "bindPose3.m[49]";
connectAttr "bip_foot_L.msg" "bindPose3.m[50]";
connectAttr "bip_toe_L.msg" "bindPose3.m[51]";
connectAttr "bip_toe2_0_L.msg" "bindPose3.m[52]";
connectAttr "bip_hip_R.msg" "bindPose3.m[53]";
connectAttr "bip_knee_R.msg" "bindPose3.m[54]";
connectAttr "bip_foot_R.msg" "bindPose3.m[55]";
connectAttr "bip_toe_R.msg" "bindPose3.m[56]";
connectAttr "bip_toe2_0_R.msg" "bindPose3.m[57]";
connectAttr "bip_jaw.msg" "bindPose3.m[58]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bindPose3.m[0]" "bindPose3.p[1]";
connectAttr "bindPose3.m[1]" "bindPose3.p[2]";
connectAttr "bindPose3.m[2]" "bindPose3.p[3]";
connectAttr "bindPose3.m[3]" "bindPose3.p[4]";
connectAttr "bindPose3.m[4]" "bindPose3.p[5]";
connectAttr "bindPose3.m[5]" "bindPose3.p[6]";
connectAttr "bindPose3.m[6]" "bindPose3.p[7]";
connectAttr "bindPose3.m[6]" "bindPose3.p[8]";
connectAttr "bindPose3.m[4]" "bindPose3.p[10]";
connectAttr "bip_collar_L.msg" "bindPose3.p[11]";
connectAttr "bip_upperArm_L.msg" "bindPose3.p[12]";
connectAttr "bip_lowerArm_L.msg" "bindPose3.p[13]";
connectAttr "bip_hand_L.msg" "bindPose3.p[14]";
connectAttr "bip_index_0_L.msg" "bindPose3.p[15]";
connectAttr "bip_index_1_L.msg" "bindPose3.p[16]";
connectAttr "bindPose3.m[13]" "bindPose3.p[17]";
connectAttr "bip_middle_0_L.msg" "bindPose3.p[18]";
connectAttr "bip_middle_1_L.msg" "bindPose3.p[19]";
connectAttr "bindPose3.m[13]" "bindPose3.p[20]";
connectAttr "bip_ring_0_L.msg" "bindPose3.p[21]";
connectAttr "bip_ring_1_L.msg" "bindPose3.p[22]";
connectAttr "bindPose3.m[13]" "bindPose3.p[23]";
connectAttr "bip_pinky_0_L.msg" "bindPose3.p[24]";
connectAttr "bip_pinky_1_L.msg" "bindPose3.p[25]";
connectAttr "bindPose3.m[13]" "bindPose3.p[26]";
connectAttr "bip_thumb_0_L.msg" "bindPose3.p[27]";
connectAttr "bip_thumb_1_L.msg" "bindPose3.p[28]";
connectAttr "bindPose3.m[4]" "bindPose3.p[29]";
connectAttr "bip_collar_R.msg" "bindPose3.p[30]";
connectAttr "bip_upperArm_R.msg" "bindPose3.p[31]";
connectAttr "bip_lowerArm_R.msg" "bindPose3.p[32]";
connectAttr "bip_hand_R.msg" "bindPose3.p[33]";
connectAttr "bip_index_0_R.msg" "bindPose3.p[34]";
connectAttr "bip_index_1_R.msg" "bindPose3.p[35]";
connectAttr "bindPose3.m[32]" "bindPose3.p[36]";
connectAttr "bip_middle_0_R.msg" "bindPose3.p[37]";
connectAttr "bip_middle_1_R.msg" "bindPose3.p[38]";
connectAttr "bindPose3.m[32]" "bindPose3.p[39]";
connectAttr "bip_ring_0_R.msg" "bindPose3.p[40]";
connectAttr "bip_ring_1_R.msg" "bindPose3.p[41]";
connectAttr "bindPose3.m[32]" "bindPose3.p[42]";
connectAttr "bip_pinky_0_R.msg" "bindPose3.p[43]";
connectAttr "bip_pinky_1_R.msg" "bindPose3.p[44]";
connectAttr "bindPose3.m[32]" "bindPose3.p[45]";
connectAttr "bip_thumb_0_R.msg" "bindPose3.p[46]";
connectAttr "bip_thumb_1_R.msg" "bindPose3.p[47]";
connectAttr "bindPose3.m[0]" "bindPose3.p[48]";
connectAttr "bip_hip_L.msg" "bindPose3.p[49]";
connectAttr "bip_knee_L.msg" "bindPose3.p[50]";
connectAttr "bip_foot_L.msg" "bindPose3.p[51]";
connectAttr "bip_toe_L.msg" "bindPose3.p[52]";
connectAttr "bindPose3.m[0]" "bindPose3.p[53]";
connectAttr "bip_hip_R.msg" "bindPose3.p[54]";
connectAttr "bip_knee_R.msg" "bindPose3.p[55]";
connectAttr "bip_foot_R.msg" "bindPose3.p[56]";
connectAttr "bip_toe_R.msg" "bindPose3.p[57]";
connectAttr "bindPose3.m[6]" "bindPose3.p[58]";
connectAttr "bip_collar_L.bps" "bindPose3.wm[10]";
connectAttr "bip_upperArm_L.bps" "bindPose3.wm[11]";
connectAttr "bip_lowerArm_L.bps" "bindPose3.wm[12]";
connectAttr "bip_hand_L.bps" "bindPose3.wm[13]";
connectAttr "bip_index_0_L.bps" "bindPose3.wm[14]";
connectAttr "bip_index_1_L.bps" "bindPose3.wm[15]";
connectAttr "bip_index_2_L.bps" "bindPose3.wm[16]";
connectAttr "bip_middle_0_L.bps" "bindPose3.wm[17]";
connectAttr "bip_middle_1_L.bps" "bindPose3.wm[18]";
connectAttr "bip_middle_2_L.bps" "bindPose3.wm[19]";
connectAttr "bip_ring_0_L.bps" "bindPose3.wm[20]";
connectAttr "bip_ring_1_L.bps" "bindPose3.wm[21]";
connectAttr "bip_ring_2_L.bps" "bindPose3.wm[22]";
connectAttr "bip_pinky_0_L.bps" "bindPose3.wm[23]";
connectAttr "bip_pinky_1_L.bps" "bindPose3.wm[24]";
connectAttr "bip_pinky_2_L.bps" "bindPose3.wm[25]";
connectAttr "bip_thumb_0_L.bps" "bindPose3.wm[26]";
connectAttr "bip_thumb_1_L.bps" "bindPose3.wm[27]";
connectAttr "bip_thumb_2_L.bps" "bindPose3.wm[28]";
connectAttr "bip_collar_R.bps" "bindPose3.wm[29]";
connectAttr "bip_upperArm_R.bps" "bindPose3.wm[30]";
connectAttr "bip_lowerArm_R.bps" "bindPose3.wm[31]";
connectAttr "bip_hand_R.bps" "bindPose3.wm[32]";
connectAttr "bip_index_0_R.bps" "bindPose3.wm[33]";
connectAttr "bip_index_1_R.bps" "bindPose3.wm[34]";
connectAttr "bip_index_2_R.bps" "bindPose3.wm[35]";
connectAttr "bip_middle_0_R.bps" "bindPose3.wm[36]";
connectAttr "bip_middle_1_R.bps" "bindPose3.wm[37]";
connectAttr "bip_middle_2_R.bps" "bindPose3.wm[38]";
connectAttr "bip_ring_0_R.bps" "bindPose3.wm[39]";
connectAttr "bip_ring_1_R.bps" "bindPose3.wm[40]";
connectAttr "bip_ring_2_R.bps" "bindPose3.wm[41]";
connectAttr "bip_pinky_0_R.bps" "bindPose3.wm[42]";
connectAttr "bip_pinky_1_R.bps" "bindPose3.wm[43]";
connectAttr "bip_pinky_2_R.bps" "bindPose3.wm[44]";
connectAttr "bip_thumb_0_R.bps" "bindPose3.wm[45]";
connectAttr "bip_thumb_1_R.bps" "bindPose3.wm[46]";
connectAttr "bip_thumb_2_R.bps" "bindPose3.wm[47]";
connectAttr "bip_hip_L.bps" "bindPose3.wm[48]";
connectAttr "bip_knee_L.bps" "bindPose3.wm[49]";
connectAttr "bip_foot_L.bps" "bindPose3.wm[50]";
connectAttr "bip_toe_L.bps" "bindPose3.wm[51]";
connectAttr "bip_toe2_0_L.bps" "bindPose3.wm[52]";
connectAttr "bip_hip_R.bps" "bindPose3.wm[53]";
connectAttr "bip_knee_R.bps" "bindPose3.wm[54]";
connectAttr "bip_foot_R.bps" "bindPose3.wm[55]";
connectAttr "bip_toe_R.bps" "bindPose3.wm[56]";
connectAttr "bip_toe2_0_R.bps" "bindPose3.wm[57]";
connectAttr "bip_jaw.bps" "bindPose3.wm[58]";
connectAttr ":defaultColorMgtGlobals.cme" "file_tongue_diffuse.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file_tongue_diffuse.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file_tongue_diffuse.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file_tongue_diffuse.ws";
connectAttr "place2dTexture_tongue_diffuse.c" "file_tongue_diffuse.c";
connectAttr "place2dTexture_tongue_diffuse.tf" "file_tongue_diffuse.tf";
connectAttr "place2dTexture_tongue_diffuse.rf" "file_tongue_diffuse.rf";
connectAttr "place2dTexture_tongue_diffuse.mu" "file_tongue_diffuse.mu";
connectAttr "place2dTexture_tongue_diffuse.mv" "file_tongue_diffuse.mv";
connectAttr "place2dTexture_tongue_diffuse.s" "file_tongue_diffuse.s";
connectAttr "place2dTexture_tongue_diffuse.wu" "file_tongue_diffuse.wu";
connectAttr "place2dTexture_tongue_diffuse.wv" "file_tongue_diffuse.wv";
connectAttr "place2dTexture_tongue_diffuse.re" "file_tongue_diffuse.re";
connectAttr "place2dTexture_tongue_diffuse.of" "file_tongue_diffuse.of";
connectAttr "place2dTexture_tongue_diffuse.r" "file_tongue_diffuse.ro";
connectAttr "place2dTexture_tongue_diffuse.n" "file_tongue_diffuse.n";
connectAttr "place2dTexture_tongue_diffuse.vt1" "file_tongue_diffuse.vt1";
connectAttr "place2dTexture_tongue_diffuse.vt2" "file_tongue_diffuse.vt2";
connectAttr "place2dTexture_tongue_diffuse.vt3" "file_tongue_diffuse.vt3";
connectAttr "place2dTexture_tongue_diffuse.vc1" "file_tongue_diffuse.vc1";
connectAttr "place2dTexture_tongue_diffuse.o" "file_tongue_diffuse.uv";
connectAttr "place2dTexture_tongue_diffuse.ofs" "file_tongue_diffuse.fs";
connectAttr "iterati_basemesh_2_shadingGroup_iterati.msg" "iterati_basemesh_2_materialInfo1.sg"
		;
connectAttr "iterati_basemesh_2_shadingGroup_iteratiClothes.msg" "iterati_basemesh_2_materialInfo2.sg"
		;
connectAttr "groupId51.msg" "topoSymmetrySet.gn" -na;
connectAttr "generichar_GEOShape.iog.og[3]" "topoSymmetrySet.dsm" -na;
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "bip_pelvis.wm" "skinCluster8.ma[0]";
connectAttr "bip_spine_0.wm" "skinCluster8.ma[1]";
connectAttr "bip_spine_1.wm" "skinCluster8.ma[2]";
connectAttr "bip_spine_2.wm" "skinCluster8.ma[3]";
connectAttr "bip_spine_3.wm" "skinCluster8.ma[4]";
connectAttr "bip_collar_L.wm" "skinCluster8.ma[10]";
connectAttr "bip_upperArm_L.wm" "skinCluster8.ma[11]";
connectAttr "bip_lowerArm_L.wm" "skinCluster8.ma[12]";
connectAttr "bip_hand_L.wm" "skinCluster8.ma[13]";
connectAttr "bip_index_0_L.wm" "skinCluster8.ma[14]";
connectAttr "bip_index_1_L.wm" "skinCluster8.ma[15]";
connectAttr "bip_index_2_L.wm" "skinCluster8.ma[16]";
connectAttr "bip_middle_0_L.wm" "skinCluster8.ma[17]";
connectAttr "bip_middle_1_L.wm" "skinCluster8.ma[18]";
connectAttr "bip_middle_2_L.wm" "skinCluster8.ma[19]";
connectAttr "bip_ring_0_L.wm" "skinCluster8.ma[20]";
connectAttr "bip_ring_1_L.wm" "skinCluster8.ma[21]";
connectAttr "bip_ring_2_L.wm" "skinCluster8.ma[22]";
connectAttr "bip_pinky_0_L.wm" "skinCluster8.ma[23]";
connectAttr "bip_pinky_1_L.wm" "skinCluster8.ma[24]";
connectAttr "bip_pinky_2_L.wm" "skinCluster8.ma[25]";
connectAttr "bip_thumb_0_L.wm" "skinCluster8.ma[26]";
connectAttr "bip_thumb_1_L.wm" "skinCluster8.ma[27]";
connectAttr "bip_thumb_2_L.wm" "skinCluster8.ma[28]";
connectAttr "bip_collar_R.wm" "skinCluster8.ma[29]";
connectAttr "bip_upperArm_R.wm" "skinCluster8.ma[30]";
connectAttr "bip_lowerArm_R.wm" "skinCluster8.ma[31]";
connectAttr "bip_hand_R.wm" "skinCluster8.ma[32]";
connectAttr "bip_index_0_R.wm" "skinCluster8.ma[33]";
connectAttr "bip_index_1_R.wm" "skinCluster8.ma[34]";
connectAttr "bip_index_2_R.wm" "skinCluster8.ma[35]";
connectAttr "bip_middle_0_R.wm" "skinCluster8.ma[36]";
connectAttr "bip_middle_1_R.wm" "skinCluster8.ma[37]";
connectAttr "bip_middle_2_R.wm" "skinCluster8.ma[38]";
connectAttr "bip_ring_0_R.wm" "skinCluster8.ma[39]";
connectAttr "bip_ring_1_R.wm" "skinCluster8.ma[40]";
connectAttr "bip_ring_2_R.wm" "skinCluster8.ma[41]";
connectAttr "bip_pinky_0_R.wm" "skinCluster8.ma[42]";
connectAttr "bip_pinky_1_R.wm" "skinCluster8.ma[43]";
connectAttr "bip_pinky_2_R.wm" "skinCluster8.ma[44]";
connectAttr "bip_thumb_0_R.wm" "skinCluster8.ma[45]";
connectAttr "bip_thumb_1_R.wm" "skinCluster8.ma[46]";
connectAttr "bip_thumb_2_R.wm" "skinCluster8.ma[47]";
connectAttr "bip_hip_L.wm" "skinCluster8.ma[48]";
connectAttr "bip_knee_L.wm" "skinCluster8.ma[49]";
connectAttr "bip_foot_L.wm" "skinCluster8.ma[50]";
connectAttr "bip_toe_L.wm" "skinCluster8.ma[51]";
connectAttr "bip_toe2_0_L.wm" "skinCluster8.ma[52]";
connectAttr "bip_hip_R.wm" "skinCluster8.ma[53]";
connectAttr "bip_knee_R.wm" "skinCluster8.ma[54]";
connectAttr "bip_foot_R.wm" "skinCluster8.ma[55]";
connectAttr "bip_toe_R.wm" "skinCluster8.ma[56]";
connectAttr "bip_toe2_0_R.wm" "skinCluster8.ma[57]";
connectAttr "bip_pelvis.liw" "skinCluster8.lw[0]";
connectAttr "bip_spine_0.liw" "skinCluster8.lw[1]";
connectAttr "bip_spine_1.liw" "skinCluster8.lw[2]";
connectAttr "bip_spine_2.liw" "skinCluster8.lw[3]";
connectAttr "bip_spine_3.liw" "skinCluster8.lw[4]";
connectAttr "bip_collar_L.liw" "skinCluster8.lw[10]";
connectAttr "bip_upperArm_L.liw" "skinCluster8.lw[11]";
connectAttr "bip_lowerArm_L.liw" "skinCluster8.lw[12]";
connectAttr "bip_hand_L.liw" "skinCluster8.lw[13]";
connectAttr "bip_index_0_L.liw" "skinCluster8.lw[14]";
connectAttr "bip_index_1_L.liw" "skinCluster8.lw[15]";
connectAttr "bip_index_2_L.liw" "skinCluster8.lw[16]";
connectAttr "bip_middle_0_L.liw" "skinCluster8.lw[17]";
connectAttr "bip_middle_1_L.liw" "skinCluster8.lw[18]";
connectAttr "bip_middle_2_L.liw" "skinCluster8.lw[19]";
connectAttr "bip_ring_0_L.liw" "skinCluster8.lw[20]";
connectAttr "bip_ring_1_L.liw" "skinCluster8.lw[21]";
connectAttr "bip_ring_2_L.liw" "skinCluster8.lw[22]";
connectAttr "bip_pinky_0_L.liw" "skinCluster8.lw[23]";
connectAttr "bip_pinky_1_L.liw" "skinCluster8.lw[24]";
connectAttr "bip_pinky_2_L.liw" "skinCluster8.lw[25]";
connectAttr "bip_thumb_0_L.liw" "skinCluster8.lw[26]";
connectAttr "bip_thumb_1_L.liw" "skinCluster8.lw[27]";
connectAttr "bip_thumb_2_L.liw" "skinCluster8.lw[28]";
connectAttr "bip_collar_R.liw" "skinCluster8.lw[29]";
connectAttr "bip_upperArm_R.liw" "skinCluster8.lw[30]";
connectAttr "bip_lowerArm_R.liw" "skinCluster8.lw[31]";
connectAttr "bip_hand_R.liw" "skinCluster8.lw[32]";
connectAttr "bip_index_0_R.liw" "skinCluster8.lw[33]";
connectAttr "bip_index_1_R.liw" "skinCluster8.lw[34]";
connectAttr "bip_index_2_R.liw" "skinCluster8.lw[35]";
connectAttr "bip_middle_0_R.liw" "skinCluster8.lw[36]";
connectAttr "bip_middle_1_R.liw" "skinCluster8.lw[37]";
connectAttr "bip_middle_2_R.liw" "skinCluster8.lw[38]";
connectAttr "bip_ring_0_R.liw" "skinCluster8.lw[39]";
connectAttr "bip_ring_1_R.liw" "skinCluster8.lw[40]";
connectAttr "bip_ring_2_R.liw" "skinCluster8.lw[41]";
connectAttr "bip_pinky_0_R.liw" "skinCluster8.lw[42]";
connectAttr "bip_pinky_1_R.liw" "skinCluster8.lw[43]";
connectAttr "bip_pinky_2_R.liw" "skinCluster8.lw[44]";
connectAttr "bip_thumb_0_R.liw" "skinCluster8.lw[45]";
connectAttr "bip_thumb_1_R.liw" "skinCluster8.lw[46]";
connectAttr "bip_thumb_2_R.liw" "skinCluster8.lw[47]";
connectAttr "bip_hip_L.liw" "skinCluster8.lw[48]";
connectAttr "bip_knee_L.liw" "skinCluster8.lw[49]";
connectAttr "bip_foot_L.liw" "skinCluster8.lw[50]";
connectAttr "bip_toe_L.liw" "skinCluster8.lw[51]";
connectAttr "bip_toe2_0_L.liw" "skinCluster8.lw[52]";
connectAttr "bip_hip_R.liw" "skinCluster8.lw[53]";
connectAttr "bip_knee_R.liw" "skinCluster8.lw[54]";
connectAttr "bip_foot_R.liw" "skinCluster8.lw[55]";
connectAttr "bip_toe_R.liw" "skinCluster8.lw[56]";
connectAttr "bip_toe2_0_R.liw" "skinCluster8.lw[57]";
connectAttr "bip_pelvis.obcc" "skinCluster8.ifcl[0]";
connectAttr "bip_spine_0.obcc" "skinCluster8.ifcl[1]";
connectAttr "bip_spine_1.obcc" "skinCluster8.ifcl[2]";
connectAttr "bip_spine_2.obcc" "skinCluster8.ifcl[3]";
connectAttr "bip_spine_3.obcc" "skinCluster8.ifcl[4]";
connectAttr "bip_collar_L.obcc" "skinCluster8.ifcl[10]";
connectAttr "bip_upperArm_L.obcc" "skinCluster8.ifcl[11]";
connectAttr "bip_lowerArm_L.obcc" "skinCluster8.ifcl[12]";
connectAttr "bip_hand_L.obcc" "skinCluster8.ifcl[13]";
connectAttr "bip_index_0_L.obcc" "skinCluster8.ifcl[14]";
connectAttr "bip_index_1_L.obcc" "skinCluster8.ifcl[15]";
connectAttr "bip_index_2_L.obcc" "skinCluster8.ifcl[16]";
connectAttr "bip_middle_0_L.obcc" "skinCluster8.ifcl[17]";
connectAttr "bip_middle_1_L.obcc" "skinCluster8.ifcl[18]";
connectAttr "bip_middle_2_L.obcc" "skinCluster8.ifcl[19]";
connectAttr "bip_ring_0_L.obcc" "skinCluster8.ifcl[20]";
connectAttr "bip_ring_1_L.obcc" "skinCluster8.ifcl[21]";
connectAttr "bip_ring_2_L.obcc" "skinCluster8.ifcl[22]";
connectAttr "bip_pinky_0_L.obcc" "skinCluster8.ifcl[23]";
connectAttr "bip_pinky_1_L.obcc" "skinCluster8.ifcl[24]";
connectAttr "bip_pinky_2_L.obcc" "skinCluster8.ifcl[25]";
connectAttr "bip_thumb_0_L.obcc" "skinCluster8.ifcl[26]";
connectAttr "bip_thumb_1_L.obcc" "skinCluster8.ifcl[27]";
connectAttr "bip_thumb_2_L.obcc" "skinCluster8.ifcl[28]";
connectAttr "bip_collar_R.obcc" "skinCluster8.ifcl[29]";
connectAttr "bip_upperArm_R.obcc" "skinCluster8.ifcl[30]";
connectAttr "bip_lowerArm_R.obcc" "skinCluster8.ifcl[31]";
connectAttr "bip_hand_R.obcc" "skinCluster8.ifcl[32]";
connectAttr "bip_index_0_R.obcc" "skinCluster8.ifcl[33]";
connectAttr "bip_index_1_R.obcc" "skinCluster8.ifcl[34]";
connectAttr "bip_index_2_R.obcc" "skinCluster8.ifcl[35]";
connectAttr "bip_middle_0_R.obcc" "skinCluster8.ifcl[36]";
connectAttr "bip_middle_1_R.obcc" "skinCluster8.ifcl[37]";
connectAttr "bip_middle_2_R.obcc" "skinCluster8.ifcl[38]";
connectAttr "bip_ring_0_R.obcc" "skinCluster8.ifcl[39]";
connectAttr "bip_ring_1_R.obcc" "skinCluster8.ifcl[40]";
connectAttr "bip_ring_2_R.obcc" "skinCluster8.ifcl[41]";
connectAttr "bip_pinky_0_R.obcc" "skinCluster8.ifcl[42]";
connectAttr "bip_pinky_1_R.obcc" "skinCluster8.ifcl[43]";
connectAttr "bip_pinky_2_R.obcc" "skinCluster8.ifcl[44]";
connectAttr "bip_thumb_0_R.obcc" "skinCluster8.ifcl[45]";
connectAttr "bip_thumb_1_R.obcc" "skinCluster8.ifcl[46]";
connectAttr "bip_thumb_2_R.obcc" "skinCluster8.ifcl[47]";
connectAttr "bip_hip_L.obcc" "skinCluster8.ifcl[48]";
connectAttr "bip_knee_L.obcc" "skinCluster8.ifcl[49]";
connectAttr "bip_foot_L.obcc" "skinCluster8.ifcl[50]";
connectAttr "bip_toe_L.obcc" "skinCluster8.ifcl[51]";
connectAttr "bip_toe2_0_L.obcc" "skinCluster8.ifcl[52]";
connectAttr "bip_hip_R.obcc" "skinCluster8.ifcl[53]";
connectAttr "bip_knee_R.obcc" "skinCluster8.ifcl[54]";
connectAttr "bip_foot_R.obcc" "skinCluster8.ifcl[55]";
connectAttr "bip_toe_R.obcc" "skinCluster8.ifcl[56]";
connectAttr "bip_toe2_0_R.obcc" "skinCluster8.ifcl[57]";
connectAttr "bindPose3.msg" "skinCluster8.bp";
connectAttr "generichar_GEOShapeOrig.w" "groupParts26.ig";
connectAttr "groupId51.id" "groupParts26.gi";
connectAttr "groupParts28.og" "tweak8.ip[0].ig";
connectAttr "groupId53.id" "tweak8.ip[0].gi";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "generichar_GEOShape.iog.og[4]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "groupId53.msg" "tweakSet8.gn" -na;
connectAttr "generichar_GEOShape.iog.og[5]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "groupParts26.og" "groupParts28.ig";
connectAttr "groupId53.id" "groupParts28.gi";
connectAttr "skinCluster9GroupParts.og" "skinCluster9.ip[0].ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9.ip[0].gi";
connectAttr "bip_spine_3.wm" "skinCluster9.ma[4]";
connectAttr "bip_neck.wm" "skinCluster9.ma[5]";
connectAttr "bip_head.wm" "skinCluster9.ma[6]";
connectAttr "bip_eye_L.wm" "skinCluster9.ma[7]";
connectAttr "bip_jaw.wm" "skinCluster9.ma[8]";
connectAttr "bip_eye_R.wm" "skinCluster9.ma[9]";
connectAttr "bip_spine_3.liw" "skinCluster9.lw[4]";
connectAttr "bip_neck.liw" "skinCluster9.lw[5]";
connectAttr "bip_head.liw" "skinCluster9.lw[6]";
connectAttr "bip_eye_L.liw" "skinCluster9.lw[7]";
connectAttr "bip_jaw.liw" "skinCluster9.lw[8]";
connectAttr "bip_eye_R.liw" "skinCluster9.lw[9]";
connectAttr "bip_spine_3.obcc" "skinCluster9.ifcl[4]";
connectAttr "bip_neck.obcc" "skinCluster9.ifcl[5]";
connectAttr "bip_head.obcc" "skinCluster9.ifcl[6]";
connectAttr "bip_eye_L.obcc" "skinCluster9.ifcl[7]";
connectAttr "bip_jaw.obcc" "skinCluster9.ifcl[8]";
connectAttr "bip_eye_R.obcc" "skinCluster9.ifcl[9]";
connectAttr "bindPose3.msg" "skinCluster9.bp";
connectAttr "groupParts30.og" "tweak9.ip[0].ig";
connectAttr "groupId55.id" "tweak9.ip[0].gi";
connectAttr "skinCluster9GroupId.msg" "skinCluster9Set.gn" -na;
connectAttr "temphead_GEOShape.iog.og[0]" "skinCluster9Set.dsm" -na;
connectAttr "skinCluster9.msg" "skinCluster9Set.ub[0]";
connectAttr "tweak9.og[0]" "skinCluster9GroupParts.ig";
connectAttr "skinCluster9GroupId.id" "skinCluster9GroupParts.gi";
connectAttr "groupId55.msg" "tweakSet9.gn" -na;
connectAttr "temphead_GEOShape.iog.og[1]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "temphead_GEOShapeOrig.w" "groupParts30.ig";
connectAttr "groupId55.id" "groupParts30.gi";
connectAttr "generichar_body_SG.pa" ":renderPartition.st" -na;
connectAttr "generichar_eyes_SG.pa" ":renderPartition.st" -na;
connectAttr "generichar_tongue_SG.pa" ":renderPartition.st" -na;
connectAttr "iterati_basemesh_2_shadingGroup_iterati.pa" ":renderPartition.st" -na
		;
connectAttr "iterati_basemesh_2_shadingGroup_iteratiClothes.pa" ":renderPartition.st"
		 -na;
connectAttr "generichar_body_phongE.msg" ":defaultShaderList1.s" -na;
connectAttr "generichar_eyes_phongE.msg" ":defaultShaderList1.s" -na;
connectAttr "generichar_tongue_phongE.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture_body_diffuse.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "place2dTexture_body_normal.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d_body_normal.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "elijah_basemesh_defaultMat1P2D.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "place2dTexture_tongue_diffuse.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file_body_diffuse.msg" ":defaultTextureList1.tx" -na;
connectAttr "file_body_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file_tongue_diffuse.msg" ":defaultTextureList1.tx" -na;
connectAttr "temphead_GEOShape.iog" ":initialShadingGroup.dsm" -na;
// End of generichar_01.ma
