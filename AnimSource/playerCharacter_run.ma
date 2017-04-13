//Maya ASCII 2017ff04 scene
//Name: playerCharacter_run.ma
//Last modified: Wed, Apr 05, 2017 11:30:18 AM
//Codeset: 1252
file -rdi 1 -ns "playerCharacter" -rfn "playerCharacterRN" -op "v=0;" -typ "mayaAscii"
		 "D:/Game Projects/Unity/BodegaBash/ModelSource/playerCharacter.ma";
file -r -ns "playerCharacter" -dr 1 -rfn "playerCharacterRN" -op "v=0;" -typ "mayaAscii"
		 "D:/Game Projects/Unity/BodegaBash/ModelSource/playerCharacter.ma";
requires maya "2017ff04";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201702071345-1015190";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "F8FDDF64-7944-5AE8-A88E-5AAEFFC3A25A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 116.17021341258575 196.25779065523463 381.66793293680996 ;
	setAttr ".r" -type "double3" -18.338352726750042 -3941.3999999980397 4.1947941183595077e-016 ;
	setAttr ".rp" -type "double3" 1.4210854715202004e-014 0 0 ;
	setAttr ".rpt" -type "double3" -2.842162285301407e-014 -1.5769514384642687e-030 
		-4.9605140101022082e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B9C16244-6040-4BC9-4B86-31B67778C7F8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 410.01892897314974;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 58.34808349609375 29.887962341308594 13.211822509765625 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6F97AC48-AC48-604B-30D1-4A9053F6C55A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C6EE8D08-F742-B53C-09FA-DE818C648A6A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 125.34284176388219;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "F53B2B6F-BA4B-C6F5-BD89-AABC94D11C80";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8153888791984585 114.95113949329006 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AF5F2B8D-A340-B2AC-9E15-CB8E660E537A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 310.10584029736287;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D46FD4E0-2D49-B94F-75BE-339C7DB15D8F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 86.723478640734641 -11.450965659242101 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A82AA2EC-A549-4035-B5D6-7B9EB60EA490";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 358.61143255470137;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AC86E372-44F6-C7E5-BC83-ACBDE07BCFC5";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "E7C93AFA-4CAE-3455-798A-189C90FE9755";
	setAttr ".cdl" 2;
	setAttr -s 3 ".dli[1:2]"  1 2;
createNode displayLayer -n "defaultLayer";
	rename -uid "C2277324-5043-F153-EB45-BB943E794972";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D9F2262F-459A-B227-478D-1FBA8A8B8013";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E375B9EE-6246-47BA-B0AB-2DB9FD7742BA";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0D206FD0-4384-02B0-9D9E-129EF0F0B6B7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E72079B9-4204-A134-13F0-CE8F19B3329C";
createNode shadingEngine -n "blinn2SG";
	rename -uid "703A1983-AA4D-2AD0-F533-37B55E2B187F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "AF4E4575-5142-02E1-84A3-42918E2C20B0";
createNode shadingEngine -n "blinn3SG";
	rename -uid "DF3EE301-324E-1AB3-C093-84B2FBB99E67";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "CD4CD637-C541-A7A2-A1D3-089772DC0DC7";
createNode shadingEngine -n "blinn1SG";
	rename -uid "6A51395A-BF49-17ED-8920-95BC4B3E887B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "BBCEAD23-B543-5AB3-659B-1BB13CC99CEA";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "02E9F514-EA46-7A6B-246A-8D95703B7E19";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 553\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 553\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 553\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1113\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 1\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n"
		+ "                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1113\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1113\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0BB0F254-FC4A-D884-5E8A-A8B5F691216F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 6 -ast 1 -aet 6 ";
	setAttr ".st" 6;
createNode groupId -n "groupId34";
	rename -uid "D3647F14-DC4F-F2E4-A860-B8A711E4CDF6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1041";
	rename -uid "EB4EE982-174D-E06F-7AD0-6FA3814FC0AD";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "FF2F4FAA-4766-3297-D28C-4398007993D2";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1039.4047206025291 -815.47615807207933 ;
	setAttr ".tgi[0].vh" -type "double2" 1362.0237554018479 844.04758550818144 ;
createNode shadingEngine -n "phong1SG";
	rename -uid "F127D6E1-4E0D-1B50-997B-1B8DD09E67FC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "D939B39C-438E-58BE-C66E-08A33ACB1BAC";
createNode reference -n "playerCharacterRN";
	rename -uid "06BD1678-410F-21F9-D590-AB9588521A0F";
	setAttr -s 24 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"playerCharacterRN"
		"playerCharacterRN" 0
		"playerCharacterRN" 119
		2 "|playerCharacter:pelvis_result_JNT" "visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT" "translate" " -type \"double3\" 0 75.365539967035559 8.5327604702291406"
		
		2 "|playerCharacter:pelvis_result_JNT" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|playerCharacter:pelvis_result_JNT" "rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT" "scale" " -type \"double3\" 1 1 1"
		
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT" 
		"translate" " -type \"double3\" 12.211180347952123 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT" 
		"translate" " -type \"double3\" 12.207757877859308 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT" 
		"translate" " -type \"double3\" 10.319247288259788 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT" 
		"translate" " -type \"double3\" 12.086581997427217 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT" 
		"translate" " -type \"double3\" 12.489737667593246 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT|playerCharacter:neck_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT|playerCharacter:neck_result_JNT" 
		"translate" " -type \"double3\" 17.705544322034115 -0.51394717121739575 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT|playerCharacter:neck_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT|playerCharacter:neck_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT|playerCharacter:neck_result_JNT" 
		"rotateY" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT|playerCharacter:neck_result_JNT" 
		"rotateZ" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT|playerCharacter:neck_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:spine1_result_JNT|playerCharacter:spine2_result_JNT|playerCharacter:spine3_result_JNT|playerCharacter:spine4_result_JNT|playerCharacter:spine5_result_JNT|playerCharacter:neck_result_JNT" 
		"segmentScaleCompensate" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT" 
		"translate" " -type \"double3\" 0.12099853963082612 7.2165893761994164 16.035300476933401"
		
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT" 
		"rotateY" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT" 
		"rotateZ" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT" 
		"translate" " -type \"double3\" 38.04 3 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT" 
		"rotateY" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT" 
		"rotateZ" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT" 
		"translate" " -type \"double3\" 21.51 -3 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT" 
		"rotateY" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT" 
		"rotateZ" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT|playerCharacter:left_ball_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT|playerCharacter:left_ball_result_JNT" 
		"translate" " -type \"double3\" 20.997 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT|playerCharacter:left_ball_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT|playerCharacter:left_ball_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT|playerCharacter:left_ball_result_JNT" 
		"rotateY" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT|playerCharacter:left_ball_result_JNT" 
		"rotateZ" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT|playerCharacter:left_ball_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT" 
		"translate" " -type \"double3\" 0.12099853963081841 7.2165893761994315 -16.035300476933386"
		
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT" 
		"rotate" " -type \"double3\" 0 0 61.040870303263063"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT" 
		"rotateY" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT" 
		"rotateZ" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT" 
		"translate" " -type \"double3\" -38.04 -3 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT" 
		"rotate" " -type \"double3\" 0 0 -109.51089023599219"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT" 
		"rotateY" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT" 
		"rotateZ" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT" 
		"translate" " -type \"double3\" -21.51 3 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT" 
		"rotate" " -type \"double3\" 0 0 46.159514491194059"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT" 
		"rotateY" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT" 
		"rotateZ" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT|playerCharacter:right_ball_result_JNT" 
		"visibility" " 1"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT|playerCharacter:right_ball_result_JNT" 
		"translate" " -type \"double3\" -20.997 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT|playerCharacter:right_ball_result_JNT" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT|playerCharacter:right_ball_result_JNT" 
		"rotateX" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT|playerCharacter:right_ball_result_JNT" 
		"rotateY" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT|playerCharacter:right_ball_result_JNT" 
		"rotateZ" " -av"
		2 "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT|playerCharacter:right_ball_result_JNT" 
		"scale" " -type \"double3\" 1 1 1"
		2 "playerCharacter:result_JNTs_LYR" "visibility" " 1"
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT.rotateX" 
		"playerCharacterRN.placeHolderList[1]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT.rotateY" 
		"playerCharacterRN.placeHolderList[2]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT.rotateZ" 
		"playerCharacterRN.placeHolderList[3]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT.rotateX" 
		"playerCharacterRN.placeHolderList[4]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT.rotateY" 
		"playerCharacterRN.placeHolderList[5]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT.rotateZ" 
		"playerCharacterRN.placeHolderList[6]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT.rotateX" 
		"playerCharacterRN.placeHolderList[7]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT.rotateY" 
		"playerCharacterRN.placeHolderList[8]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT.rotateZ" 
		"playerCharacterRN.placeHolderList[9]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT|playerCharacter:left_ball_result_JNT.rotateX" 
		"playerCharacterRN.placeHolderList[10]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT|playerCharacter:left_ball_result_JNT.rotateY" 
		"playerCharacterRN.placeHolderList[11]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:left_thigh_result_JNT|playerCharacter:left_shin_result_JNT|playerCharacter:left_foot_result_JNT|playerCharacter:left_ball_result_JNT.rotateZ" 
		"playerCharacterRN.placeHolderList[12]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT.rotateX" 
		"playerCharacterRN.placeHolderList[13]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT.rotateY" 
		"playerCharacterRN.placeHolderList[14]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT.rotateZ" 
		"playerCharacterRN.placeHolderList[15]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT.rotateX" 
		"playerCharacterRN.placeHolderList[16]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT.rotateY" 
		"playerCharacterRN.placeHolderList[17]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT.rotateZ" 
		"playerCharacterRN.placeHolderList[18]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT.rotateX" 
		"playerCharacterRN.placeHolderList[19]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT.rotateY" 
		"playerCharacterRN.placeHolderList[20]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT.rotateZ" 
		"playerCharacterRN.placeHolderList[21]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT|playerCharacter:right_ball_result_JNT.rotateX" 
		"playerCharacterRN.placeHolderList[22]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT|playerCharacter:right_ball_result_JNT.rotateY" 
		"playerCharacterRN.placeHolderList[23]" ""
		5 4 "playerCharacterRN" "|playerCharacter:pelvis_result_JNT|playerCharacter:right_thigh_result_JNT|playerCharacter:right_shin_result_JNT|playerCharacter:right_foot_result_JNT|playerCharacter:right_ball_result_JNT.rotateZ" 
		"playerCharacterRN.placeHolderList[24]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTU -n "pelvis_result_JNT_scaleX1";
	rename -uid "13B24180-44BC-822F-DCF9-1FB4B27BCD07";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "pelvis_result_JNT_scaleY1";
	rename -uid "68C61236-4791-F0EA-9723-81ABA6F356AA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "pelvis_result_JNT_scaleZ1";
	rename -uid "4B453EAE-435A-FF27-8ECB-6ABC304B9B3A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTA -n "pelvis_result_JNT_rotateX1";
	rename -uid "DBEC8A42-4283-A4AA-C784-9E91B6FF7FD3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -1 50 1 120 -1;
createNode animCurveTA -n "pelvis_result_JNT_rotateY1";
	rename -uid "7FFF3195-4A77-4CF2-40C6-CB8D973380B9";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "pelvis_result_JNT_rotateZ1";
	rename -uid "6D5DAE76-4943-A829-BF5D-92901861BEA0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "pelvis_result_JNT_visibility1";
	rename -uid "63C5886D-4AD4-0EB2-B809-52A5A3D23F2E";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "pelvis_result_JNT_translateX1";
	rename -uid "A58BED3C-4A33-444E-B3CF-F2B201762358";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "pelvis_result_JNT_translateY1";
	rename -uid "C9F00C62-430B-BE2B-A4E1-6FA1058AC01F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 75.365539967035559 60 74.993070961362946
		 120 75.365539967035559;
createNode animCurveTL -n "pelvis_result_JNT_translateZ1";
	rename -uid "77D1909E-4A6B-81FE-109F-078E24CF1A42";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 8.5327604702291406 60 8.560538808920608
		 120 8.5327604702291406;
createNode animCurveTU -n "spine1_result_JNT_scaleX1";
	rename -uid "7A995092-407E-B2E3-5C7F-69A44771CF23";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "spine1_result_JNT_scaleY1";
	rename -uid "22B145E0-4634-4357-1CE3-7CB754ABFBAB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "spine1_result_JNT_scaleZ1";
	rename -uid "41347A01-422C-AD64-F58E-1586ABF647C1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTA -n "spine1_result_JNT_rotateX1";
	rename -uid "5DE09216-49EC-70D9-DF4F-27B787E06BE6";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -1 50 1 120 -1;
createNode animCurveTA -n "spine1_result_JNT_rotateY1";
	rename -uid "D888A7E5-4B80-73F3-9CA4-BEBDA5445DAB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "spine1_result_JNT_rotateZ1";
	rename -uid "6622E260-4CA7-936C-FEE3-A7A03335A449";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "spine1_result_JNT_visibility1";
	rename -uid "AD79F74A-4493-E166-3DA6-45AD49804EF8";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "spine1_result_JNT_translateX1";
	rename -uid "56EB1FE8-4021-6203-55C5-C284F12797FB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 12.211180347952123 60 11.837676939283327
		 120 12.211180347952123;
createNode animCurveTL -n "spine1_result_JNT_translateY1";
	rename -uid "5EC86256-40F7-C8CE-D85F-F48718C90802";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "spine1_result_JNT_translateZ1";
	rename -uid "2CB815C1-419D-5F6D-AA07-208337B8D8A6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "spine2_result_JNT_scaleX1";
	rename -uid "F49D3F84-4E2C-5C7B-18A4-488BD1BDA2A8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "spine2_result_JNT_scaleY1";
	rename -uid "16D390CC-428E-9DAD-676A-CEB26263ACBF";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "spine2_result_JNT_scaleZ1";
	rename -uid "8BF29876-4870-9FC0-20FF-B7B288407DC7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTA -n "spine2_result_JNT_rotateX1";
	rename -uid "825CE82C-4100-621C-B5CC-29B5E71BEA8E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -1 50 1 120 -1;
createNode animCurveTA -n "spine2_result_JNT_rotateY1";
	rename -uid "35AE6715-46D6-8318-36EF-F9921DFB880A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "spine2_result_JNT_rotateZ1";
	rename -uid "D5812A09-449E-7562-4550-4781F0F7049E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "spine2_result_JNT_visibility1";
	rename -uid "23B48EF5-4356-4F08-7058-D393605E4960";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "spine2_result_JNT_translateX1";
	rename -uid "759B2901-4FF5-158F-1F92-A38F057BD0AC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 12.207757877859308 60 11.834254469190512
		 120 12.207757877859308;
createNode animCurveTL -n "spine2_result_JNT_translateY1";
	rename -uid "833F13EA-4DEE-89E5-1FCF-AA9DC57E44A0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "spine2_result_JNT_translateZ1";
	rename -uid "D8EF32FF-48BD-DEFE-671A-6C8470352C56";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "spine3_result_JNT_scaleX1";
	rename -uid "14D26BD1-4D5D-8BD1-8210-169328602954";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "spine3_result_JNT_scaleY1";
	rename -uid "0C15EB16-4AEF-00A4-16CA-74BF8F617385";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "spine3_result_JNT_scaleZ1";
	rename -uid "79FC0D1C-4DD0-2EEB-B489-B2A8D68257A0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTA -n "spine3_result_JNT_rotateX1";
	rename -uid "D7C7935D-4857-F27F-DBA8-BEB39D374E80";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -1 50 1 120 -1;
createNode animCurveTA -n "spine3_result_JNT_rotateY1";
	rename -uid "9451AC5C-41F2-2919-EDAA-DEAE2C0D5BC7";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "spine3_result_JNT_rotateZ1";
	rename -uid "40C4CC64-4C50-6182-6693-ACB3D5FB0412";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "spine3_result_JNT_visibility1";
	rename -uid "C6EEBC93-43AE-F0FF-EE12-6FA2F46D9FB7";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "spine3_result_JNT_translateX1";
	rename -uid "9AFDCDE7-4C39-C8B2-5238-FC90AEBD67D3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 10.319247288259788 60 9.9457438795909923
		 120 10.319247288259788;
createNode animCurveTL -n "spine3_result_JNT_translateY1";
	rename -uid "DF1F780D-4B1C-644E-F8CA-3EB19F56E4BB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "spine3_result_JNT_translateZ1";
	rename -uid "0E5DE3C0-48D7-1680-A66B-1FB769A6DA1D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "spine4_result_JNT_scaleX1";
	rename -uid "17BA6862-489B-E7C7-6289-9C91F0AF397E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "spine4_result_JNT_scaleY1";
	rename -uid "70AE96A5-46AE-1908-9441-B0AFE39AB202";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "spine4_result_JNT_scaleZ1";
	rename -uid "A1A85698-435E-23DE-CD04-1683EC605D75";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTA -n "spine4_result_JNT_rotateX1";
	rename -uid "06ED9480-4824-63C0-5C9D-9DAA504343DC";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -1 50 1 120 -1;
createNode animCurveTA -n "spine4_result_JNT_rotateY1";
	rename -uid "CAF29F29-4B82-4F63-AFA7-98AB5E019FEC";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "spine4_result_JNT_rotateZ1";
	rename -uid "B236DD77-4D4D-D5B8-933D-2086FCC5D99B";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "spine4_result_JNT_visibility1";
	rename -uid "7F55197B-440B-61A3-B18F-309AF9F00A98";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "spine4_result_JNT_translateX1";
	rename -uid "20833B9A-42F9-D35A-A089-739196398C4D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 12.086581997427217 60 11.713078588758421
		 120 12.086581997427217;
createNode animCurveTL -n "spine4_result_JNT_translateY1";
	rename -uid "3262B5AE-4992-179B-5533-2FAEB10FE75A";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "spine4_result_JNT_translateZ1";
	rename -uid "4C4F9316-4716-16B8-8F1A-9C86A0DFE2E0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "spine5_result_JNT_scaleX1";
	rename -uid "0FAEC6AB-4663-5836-CA53-EF80175D4D66";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "spine5_result_JNT_scaleY1";
	rename -uid "2406D524-4344-5F38-4D7A-CCA23833F998";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "spine5_result_JNT_scaleZ1";
	rename -uid "577EC95A-48A1-2EB0-B977-469EB1BE743E";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTA -n "spine5_result_JNT_rotateX1";
	rename -uid "B4198938-4250-387C-033B-D5AE97D8C6FB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -1 50 1 120 -1;
createNode animCurveTA -n "spine5_result_JNT_rotateY1";
	rename -uid "6C443F8C-4DF8-71B5-78C8-3A92BF950C4F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "spine5_result_JNT_rotateZ1";
	rename -uid "DA347620-436A-D0B4-4248-66B6E887F1C5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "spine5_result_JNT_visibility1";
	rename -uid "CA1A05F5-46F4-6C0B-EF08-1C91255FBB0B";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "spine5_result_JNT_translateX1";
	rename -uid "44957559-44E7-2406-5944-3BA4C3AD942E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 12.489737667593246 60 12.11623425892445
		 120 12.489737667593246;
createNode animCurveTL -n "spine5_result_JNT_translateY1";
	rename -uid "BF0628D3-45EC-EBC7-6120-3884C4CB99EB";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "spine5_result_JNT_translateZ1";
	rename -uid "6D362C9B-40A9-033C-89A4-D18CBE41D5FE";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "neck_result_JNT_translateX1";
	rename -uid "B2194D74-4B8C-9BE7-2FA9-A3968AF54D07";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  120 17.705544322034115;
createNode animCurveTU -n "neck_result_JNT_visibility1";
	rename -uid "8B3F9D3F-4F81-E010-29C9-96B5A1BCF23D";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  120 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "neck_result_JNT_scaleZ1";
	rename -uid "819621EE-4862-8E82-8EEE-D6810332D860";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  120 1;
createNode animCurveTU -n "neck_result_JNT_scaleY1";
	rename -uid "0E904EF3-4D7F-FD70-DE00-4B9AD5965933";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  120 1;
createNode animCurveTU -n "neck_result_JNT_scaleX1";
	rename -uid "019703FB-45A5-BA41-63E1-1997BDA7D889";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  120 1;
createNode animCurveTA -n "neck_result_JNT_rotateZ1";
	rename -uid "9B7419F6-4FA9-5FE6-E85E-62909A632D46";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  120 0;
createNode animCurveTA -n "neck_result_JNT_rotateY1";
	rename -uid "8D3B06D0-4458-46BF-8BEF-F083718F9931";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  120 0;
createNode animCurveTA -n "neck_result_JNT_rotateX1";
	rename -uid "7B4C7E32-47AD-6E37-AEB3-6B8A60B1F76B";
	setAttr ".tan" 2;
	setAttr -s 4 ".ktv[0:3]"  1 -5.5440000000000005 49 7 108 -7 120 -5.5440000000000005;
	setAttr -s 4 ".kit[1:3]"  18 10 1;
	setAttr -s 4 ".kot[1:3]"  18 10 1;
	setAttr -s 4 ".kix[3]"  0.47821510257199407;
	setAttr -s 4 ".kiy[3]"  0.045692015617496098;
	setAttr -s 4 ".kox[3]"  1.037021911110698;
	setAttr -s 4 ".koy[3]"  0.033488205509598454;
	setAttr ".pre" 3;
	setAttr ".pst" 3;
createNode animCurveTL -n "neck_result_JNT_translateZ1";
	rename -uid "0710E92C-48E3-BCE5-B272-6E96070C83B6";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  120 0;
createNode animCurveTL -n "neck_result_JNT_translateY1";
	rename -uid "51852526-4477-1FC3-3E4D-F385AD9DBE07";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  120 -0.51394717121739575;
createNode animCurveTL -n "left_thigh_result_JNT_translateX";
	rename -uid "DD55721F-4323-D800-C7C4-1B86547E5288";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.12099853963082612;
createNode animCurveTL -n "left_thigh_result_JNT_translateY";
	rename -uid "2F0F7573-4380-8613-2C8D-6ABDE632D5C0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 7.2165893761994164;
createNode animCurveTL -n "left_thigh_result_JNT_translateZ";
	rename -uid "9046C2DF-4A01-78C2-D2A0-1DADEEC408A1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 16.035300476933401;
createNode animCurveTL -n "left_shin_result_JNT_translateX";
	rename -uid "D90B3E00-44A1-A705-AD92-67B167A20B81";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 38.04;
createNode animCurveTL -n "left_shin_result_JNT_translateY";
	rename -uid "0528D1BF-44E3-2281-D26E-F88E3BA341AA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 3;
createNode animCurveTL -n "left_shin_result_JNT_translateZ";
	rename -uid "854AC973-46E5-2487-6F38-C599A487980F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "left_foot_result_JNT_translateX";
	rename -uid "82B40373-46EA-8F47-F7A1-9B8320155F3B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 21.51;
createNode animCurveTL -n "left_foot_result_JNT_translateY";
	rename -uid "F681682E-4FC8-A452-C9B4-E59EBE955782";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -3;
createNode animCurveTL -n "left_foot_result_JNT_translateZ";
	rename -uid "3CD732C5-42C1-D662-2927-388926D89D77";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "left_ball_result_JNT_translateX";
	rename -uid "6F031FBE-47CB-107F-5018-A2B58C33560F";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 20.997;
createNode animCurveTL -n "left_ball_result_JNT_translateY";
	rename -uid "FF670F01-4965-C813-86E8-1CA5215856A7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "left_ball_result_JNT_translateZ";
	rename -uid "28CE0965-4B24-B3D3-5C0B-C5830A688B15";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "right_thigh_result_JNT_translateX";
	rename -uid "06723313-4A65-02A4-950A-328BE34FB058";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0.12099853963081841 3 0.12099853963081841
		 6 0.12099853963081841;
createNode animCurveTL -n "right_thigh_result_JNT_translateY";
	rename -uid "D472AAC8-43FB-DDE6-CCB5-10A014CD2E3E";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 7.2165893761994315 3 7.2165893761994315
		 6 7.2165893761994315;
createNode animCurveTL -n "right_thigh_result_JNT_translateZ";
	rename -uid "C5277995-4A4B-A04C-87BC-94BDC814C5F4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -16.035300476933386 3 -16.035300476933386
		 6 -16.035300476933386;
createNode animCurveTL -n "right_shin_result_JNT_translateX";
	rename -uid "665C6EEF-46AE-7959-DE92-7D9EE11AAC60";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -38.04 3 -38.04 6 -38.04;
createNode animCurveTL -n "right_shin_result_JNT_translateY";
	rename -uid "76C3A2DF-4B83-5A12-3AD0-078A5E3408C3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -3 3 -3 6 -3;
createNode animCurveTL -n "right_shin_result_JNT_translateZ";
	rename -uid "A2DE2BBE-4F14-E247-28D4-F081522B82D8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTL -n "right_foot_result_JNT_translateX";
	rename -uid "F44B367A-439F-A932-7212-2F87A2A28D75";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -21.51 3 -21.51 6 -21.51;
createNode animCurveTL -n "right_foot_result_JNT_translateY";
	rename -uid "5E81D09E-4E80-B8B4-DFF8-F2A401D65150";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 3 3 3 6 3;
createNode animCurveTL -n "right_foot_result_JNT_translateZ";
	rename -uid "2F38F1B9-4E29-3F67-8558-EBBBC9BCF51C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTL -n "right_ball_result_JNT_translateX";
	rename -uid "CF00CD38-4DB9-4C45-458E-26BE411853A0";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -20.997 3 -20.997 6 -20.997;
createNode animCurveTL -n "right_ball_result_JNT_translateY";
	rename -uid "4D55D143-44B3-C851-342D-E79A96675D49";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTL -n "right_ball_result_JNT_translateZ";
	rename -uid "0E70972C-4335-E9BA-F8F3-7390F58C20C4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTU -n "left_thigh_result_JNT_visibility";
	rename -uid "CABC1356-45CC-2855-D3B8-7F95F7DDE47A";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "left_thigh_result_JNT_rotateX";
	rename -uid "97E0A49D-474A-DE2D-E9F1-B5AFE0C8D36C";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 4 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.083333333333333343;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.083333333333333343;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "left_thigh_result_JNT_rotateY";
	rename -uid "0EBDF914-4CFC-EA33-A933-ACBFB16AB915";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 4 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.083333333333333343;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.083333333333333343;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "left_thigh_result_JNT_rotateZ";
	rename -uid "58A93909-4364-6B69-938F-8C8005F70BF7";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 4 61.040870303263063 6 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  0.083333333333333343 0.083333333333333343;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  0.083333333333333343 0.083333333333333343;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "left_thigh_result_JNT_scaleX";
	rename -uid "3DEC9BC3-4FBF-3D05-93EC-0984FF363F21";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_thigh_result_JNT_scaleY";
	rename -uid "8FCC3C37-4716-14F6-74F6-74B7162137CB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_thigh_result_JNT_scaleZ";
	rename -uid "FECED380-47ED-016C-C1BB-8D8E5AB6ADF5";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_shin_result_JNT_visibility";
	rename -uid "D8FD4DFE-4767-3C7D-9C6E-5490E9D2DFAD";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "left_shin_result_JNT_rotateX";
	rename -uid "8D8BCBE0-4C5E-7D7C-F6E2-9E94A48ED700";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 4 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.083333333333333343;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.083333333333333343;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "left_shin_result_JNT_rotateY";
	rename -uid "C91C714A-44BC-5FC7-AFE8-70934AB039A6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 4 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.083333333333333343;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.083333333333333343;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "left_shin_result_JNT_rotateZ";
	rename -uid "0C72221F-43FF-845D-316D-C3B76EB81C33";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 4 -109.51089023599219 6 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  0.083333333333333343 0.083333333333333343;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  0.083333333333333343 0.083333333333333343;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "left_shin_result_JNT_scaleX";
	rename -uid "E4C9D4C2-4302-FD0D-E6A7-0584DE9633AB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_shin_result_JNT_scaleY";
	rename -uid "CDE615A3-446E-831B-D787-AEA75E913785";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_shin_result_JNT_scaleZ";
	rename -uid "BB155DE5-4C41-26B7-132D-54855730EA2C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_foot_result_JNT_visibility";
	rename -uid "C1167F85-4130-A138-76F4-19ABD8A6B26C";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "left_foot_result_JNT_rotateX";
	rename -uid "6EE7481B-4B52-A177-27FD-6AA79D42BB99";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 4 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.083333333333333343;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.083333333333333343;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "left_foot_result_JNT_rotateY";
	rename -uid "1B524F9A-44E1-F5E5-BCFC-01A2B4D22A74";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 4 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.083333333333333343;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.083333333333333343;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "left_foot_result_JNT_rotateZ";
	rename -uid "031F93B4-473C-CCA6-D6FA-44A018CF0277";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 4 46.159514491194059 6 0;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  0.083333333333333343 0.083333333333333343;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  0.083333333333333343 0.083333333333333343;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "left_foot_result_JNT_scaleX";
	rename -uid "535D1611-4EED-7DC7-F53E-52B19C078EB7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_foot_result_JNT_scaleY";
	rename -uid "BFAAFEE2-4531-6A8B-FAA9-9097594914CA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_foot_result_JNT_scaleZ";
	rename -uid "1934A062-45AF-E0B8-CCC1-C0A91F847C99";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_ball_result_JNT_visibility";
	rename -uid "11D90C3B-4EB4-DD0D-66AE-85B24F56252F";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "left_ball_result_JNT_rotateX";
	rename -uid "109241C0-4B03-1186-6618-99915F3F3AE8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 4 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.083333333333333343;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.083333333333333343;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "left_ball_result_JNT_rotateY";
	rename -uid "09A9A5BE-4434-7893-92C7-179C4C1D58E8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 4 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.083333333333333343;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.083333333333333343;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "left_ball_result_JNT_rotateZ";
	rename -uid "BDDB9382-4E82-A8A1-3BE3-E8A2DEC6A625";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  1 0 4 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  0.083333333333333343;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  0.083333333333333343;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "left_ball_result_JNT_scaleX";
	rename -uid "CC2F0399-40DC-8119-9CF9-9D8AE5078063";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_ball_result_JNT_scaleY";
	rename -uid "CDF29FBF-4072-37F7-C468-078FAB520882";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "left_ball_result_JNT_scaleZ";
	rename -uid "0672DF17-49C9-081C-B8F0-C48953E98957";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "right_thigh_result_JNT_visibility";
	rename -uid "7B723ACF-4B6B-AFB4-A1DC-A2B973054BE9";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "right_thigh_result_JNT_rotateX";
	rename -uid "FA143F7D-40BC-4908-6527-6EB8D6551BF1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTA -n "right_thigh_result_JNT_rotateY";
	rename -uid "D7A3D1A3-44DA-F6CB-F9FE-3D9C071FD78B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTA -n "right_thigh_result_JNT_rotateZ";
	rename -uid "8AD4F807-421E-E6D1-032F-2F9EA59AEAC8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 61.040870303263063 3 0 6 61.040870303263063;
createNode animCurveTU -n "right_thigh_result_JNT_scaleX";
	rename -uid "C038019D-4011-C24D-7D27-02A66A3FC968";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_thigh_result_JNT_scaleY";
	rename -uid "8429BAAD-470D-3B88-6661-708723B6F34D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_thigh_result_JNT_scaleZ";
	rename -uid "9D307587-4C9A-ADA4-F93E-C994F57C0F8A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_shin_result_JNT_visibility";
	rename -uid "2708D9A5-4889-8EED-5F0B-13B49BDBE026";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "right_shin_result_JNT_rotateX";
	rename -uid "E4D3DD42-4BF3-FC1E-D616-7DB93C7F2165";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTA -n "right_shin_result_JNT_rotateY";
	rename -uid "8B8EF2E6-4FA5-D8AD-C613-588C785BC242";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTA -n "right_shin_result_JNT_rotateZ";
	rename -uid "0ADC1941-4886-B928-7DA3-E4AADC981D7C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 -109.51089023599219 3 0 6 -109.51089023599219;
createNode animCurveTU -n "right_shin_result_JNT_scaleX";
	rename -uid "57472BF0-48E4-6B0A-D66B-F48EB063D67B";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_shin_result_JNT_scaleY";
	rename -uid "4D655B0C-4C5E-6B32-3941-7C8DCDA2839C";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_shin_result_JNT_scaleZ";
	rename -uid "D4C6E115-4214-647D-48A1-079BCF9C746D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_foot_result_JNT_visibility";
	rename -uid "18DA0BFB-4980-774D-5093-058A28A452F4";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "right_foot_result_JNT_rotateX";
	rename -uid "BC260DA8-4FCD-37D1-5899-B1BB9F9C96C8";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTA -n "right_foot_result_JNT_rotateY";
	rename -uid "F19FC24B-49E2-10CF-341E-A5B964E51FD3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTA -n "right_foot_result_JNT_rotateZ";
	rename -uid "67777BAC-4418-6508-9438-AEBE92960876";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 46.159514491194059 3 0 6 46.159514491194059;
createNode animCurveTU -n "right_foot_result_JNT_scaleX";
	rename -uid "3B589E43-4C11-6E48-3DF3-D294450FA008";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_foot_result_JNT_scaleY";
	rename -uid "0D73D505-4F5C-7134-E223-4ABA7204428A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_foot_result_JNT_scaleZ";
	rename -uid "9AB3180A-4394-2ED2-051D-07B5D1C25A4F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_ball_result_JNT_visibility";
	rename -uid "BB33ACA4-45BD-D83E-6F68-3FBB55CC9147";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "right_ball_result_JNT_rotateX";
	rename -uid "614D0902-4F97-FDA4-C093-21A240506FBA";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTA -n "right_ball_result_JNT_rotateY";
	rename -uid "434912B3-4BC1-87D5-D8F8-6B943ADF3A4D";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTA -n "right_ball_result_JNT_rotateZ";
	rename -uid "14EE7111-414D-8D98-E32B-6686EE5DD120";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 3 0 6 0;
createNode animCurveTU -n "right_ball_result_JNT_scaleX";
	rename -uid "7077E819-4750-C075-BB7D-9284A0730E5A";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_ball_result_JNT_scaleY";
	rename -uid "57AD2215-4BF6-2885-F1CF-3182C7FBA98F";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
createNode animCurveTU -n "right_ball_result_JNT_scaleZ";
	rename -uid "92051DA2-4C4F-7D9A-FE6C-888223605A55";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 3 1 6 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".st";
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
	setAttr -s 2 ".r";
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
connectAttr "left_thigh_result_JNT_rotateX.o" "playerCharacterRN.phl[1]";
connectAttr "left_thigh_result_JNT_rotateY.o" "playerCharacterRN.phl[2]";
connectAttr "left_thigh_result_JNT_rotateZ.o" "playerCharacterRN.phl[3]";
connectAttr "left_shin_result_JNT_rotateX.o" "playerCharacterRN.phl[4]";
connectAttr "left_shin_result_JNT_rotateY.o" "playerCharacterRN.phl[5]";
connectAttr "left_shin_result_JNT_rotateZ.o" "playerCharacterRN.phl[6]";
connectAttr "left_foot_result_JNT_rotateX.o" "playerCharacterRN.phl[7]";
connectAttr "left_foot_result_JNT_rotateY.o" "playerCharacterRN.phl[8]";
connectAttr "left_foot_result_JNT_rotateZ.o" "playerCharacterRN.phl[9]";
connectAttr "left_ball_result_JNT_rotateX.o" "playerCharacterRN.phl[10]";
connectAttr "left_ball_result_JNT_rotateY.o" "playerCharacterRN.phl[11]";
connectAttr "left_ball_result_JNT_rotateZ.o" "playerCharacterRN.phl[12]";
connectAttr "right_thigh_result_JNT_rotateX.o" "playerCharacterRN.phl[13]";
connectAttr "right_thigh_result_JNT_rotateY.o" "playerCharacterRN.phl[14]";
connectAttr "right_thigh_result_JNT_rotateZ.o" "playerCharacterRN.phl[15]";
connectAttr "right_shin_result_JNT_rotateX.o" "playerCharacterRN.phl[16]";
connectAttr "right_shin_result_JNT_rotateY.o" "playerCharacterRN.phl[17]";
connectAttr "right_shin_result_JNT_rotateZ.o" "playerCharacterRN.phl[18]";
connectAttr "right_foot_result_JNT_rotateX.o" "playerCharacterRN.phl[19]";
connectAttr "right_foot_result_JNT_rotateY.o" "playerCharacterRN.phl[20]";
connectAttr "right_foot_result_JNT_rotateZ.o" "playerCharacterRN.phl[21]";
connectAttr "right_ball_result_JNT_rotateX.o" "playerCharacterRN.phl[22]";
connectAttr "right_ball_result_JNT_rotateY.o" "playerCharacterRN.phl[23]";
connectAttr "right_ball_result_JNT_rotateZ.o" "playerCharacterRN.phl[24]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "blinn2SG.msg" "materialInfo1.sg";
connectAttr "blinn3SG.msg" "materialInfo2.sg";
connectAttr "blinn1SG.msg" "materialInfo3.sg";
connectAttr "phong1SG.msg" "materialInfo4.sg";
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of playerCharacter_run.ma
