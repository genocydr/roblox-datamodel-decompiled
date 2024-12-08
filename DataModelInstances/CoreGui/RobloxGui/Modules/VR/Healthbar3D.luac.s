PROTO_0:
  GETTABLEKS R2 R0 K0 ["r"]
  GETTABLEKS R3 R0 K1 ["g"]
  GETTABLEKS R4 R0 K2 ["b"]
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K5 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_1:
  GETIMPORT R2 K1 [pairs]
  NAMECALL R3 R0 K2 ["GetChildren"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  MOVE R9 R1
  NAMECALL R7 R6 K3 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+1]
  RETURN R6 1
  FORGLOOP R2 2 [-7]
  RETURN R0 0

PROTO_2:
  LOADK R1 K0 [0.1]
  JUMPIFNOTLE R0 R1 [+3]
  GETUPVAL R1 0
  RETURN R1 1
  LOADK R1 K1 [0.8]
  JUMPIFNOTLE R1 R0 [+3]
  GETUPVAL R1 1
  RETURN R1 1
  LOADK R1 K2 [{0, 0, 0}]
  LOADN R2 0
  GETIMPORT R3 K4 [pairs]
  GETUPVAL R4 2
  CALL R3 1 3
  FORGPREP_NEXT R3
  SUB R8 R0 R7
  JUMPIFNOTEQKN R8 K5 [0] [+11]
  GETIMPORT R9 K8 [Color3.new]
  GETTABLEKS R10 R6 K9 ["x"]
  GETTABLEKS R11 R6 K10 ["y"]
  GETTABLEKS R12 R6 K11 ["z"]
  CALL R9 3 -1
  RETURN R9 -1
  MUL R10 R8 R8
  DIVRK R9 R12 K10 ["y"]
  MUL R10 R9 R6
  ADD R1 R1 R10
  ADD R2 R2 R9
  FORGLOOP R3 2 [-19]
  DIV R3 R1 R2
  GETIMPORT R4 K8 [Color3.new]
  GETTABLEKS R5 R3 K9 ["x"]
  GETTABLEKS R6 R3 K10 ["y"]
  GETTABLEKS R7 R3 K11 ["z"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["Health"]
  GETTABLEKS R3 R0 K1 ["MaxHealth"]
  DIV R1 R2 R3
  JUMPIFEQ R1 R1 [+2]
  LOADN R1 1
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R1
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["ImageColor3"]
  GETUPVAL R2 0
  GETIMPORT R3 K5 [UDim2.new]
  MOVE R4 R1
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K6 ["Size"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["LocalPlayer"]
  GETUPVAL R3 1
  JUMPIFNOTEQ R0 R3 [+9]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R3 R2 K1 ["Character"]
  JUMPIFEQ R1 R3 [+4]
  GETUPVAL R3 2
  LOADNIL R4
  CALL R3 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETTABLEKS R2 R0 K0 ["Health"]
  GETTABLEKS R3 R0 K1 ["MaxHealth"]
  DIV R1 R2 R3
  JUMPIFEQ R1 R1 [+2]
  LOADN R1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  MOVE R4 R1
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["ImageColor3"]
  GETUPVAL R2 1
  GETIMPORT R3 K5 [UDim2.new]
  MOVE R4 R1
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K6 ["Size"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 1
  JUMPIFNOT R0 [+44]
  GETTABLEKS R1 R0 K1 ["AncestryChanged"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K2 ["connect"]
  CALL R1 2 1
  SETUPVAL R1 0
  GETTABLEKS R1 R0 K3 ["HealthChanged"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R1 R1 K2 ["connect"]
  CALL R1 2 1
  SETUPVAL R1 1
  GETTABLEKS R2 R0 K4 ["Health"]
  GETTABLEKS R3 R0 K5 ["MaxHealth"]
  DIV R1 R2 R3
  JUMPIFEQ R1 R1 [+2]
  LOADN R1 1
  GETUPVAL R2 4
  GETUPVAL R3 5
  MOVE R4 R1
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["ImageColor3"]
  GETUPVAL R2 4
  GETIMPORT R3 K9 [UDim2.new]
  MOVE R4 R1
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K10 ["Size"]
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["LocalPlayer"]
  JUMPIFNOT R1 [+14]
  GETTABLEKS R2 R0 K1 ["Parent"]
  GETTABLEKS R3 R1 K2 ["Character"]
  JUMPIFNOTEQ R2 R3 [+9]
  LOADK R4 K3 ["Humanoid"]
  NAMECALL R2 R0 K4 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  MOVE R2 R0
  LOADK R3 K0 ["Humanoid"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 2
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["disconnect"]
  CALL R2 1 0
  LOADNIL R2
  SETUPVAL R2 2
  GETTABLEKS R2 R0 K2 ["ChildAdded"]
  GETUPVAL R4 3
  NAMECALL R2 R2 K3 ["connect"]
  CALL R2 2 1
  SETUPVAL R2 2
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Name"]
  SETTABLEKS R2 R1 K1 ["Text"]
  GETTABLEKS R1 R0 K2 ["CharacterAdded"]
  GETUPVAL R3 1
  NAMECALL R1 R1 K3 ["connect"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["Character"]
  JUMPIFNOT R1 [+25]
  GETTABLEKS R1 R0 K4 ["Character"]
  GETUPVAL R2 2
  MOVE R3 R1
  LOADK R4 K5 ["Humanoid"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 4
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 4
  NAMECALL R3 R3 K6 ["disconnect"]
  CALL R3 1 0
  LOADNIL R3
  SETUPVAL R3 4
  GETTABLEKS R3 R1 K7 ["ChildAdded"]
  GETUPVAL R5 5
  NAMECALL R3 R3 K3 ["connect"]
  CALL R3 2 1
  SETUPVAL R3 4
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["LocalPlayer"]
  JUMPIF R0 [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["ChildAdded"]
  NAMECALL R0 R0 K2 ["wait"]
  CALL R0 1 0
  JUMPBACK [-11]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["LocalPlayer"]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K3 ["Name"]
  SETTABLEKS R2 R1 K4 ["Text"]
  GETTABLEKS R1 R0 K5 ["CharacterAdded"]
  GETUPVAL R3 2
  NAMECALL R1 R1 K6 ["connect"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K7 ["Character"]
  JUMPIFNOT R1 [+25]
  GETTABLEKS R1 R0 K7 ["Character"]
  GETUPVAL R2 3
  MOVE R3 R1
  LOADK R4 K8 ["Humanoid"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETUPVAL R3 4
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 5
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 5
  NAMECALL R3 R3 K9 ["disconnect"]
  CALL R3 1 0
  LOADNIL R3
  SETUPVAL R3 5
  GETTABLEKS R3 R1 K1 ["ChildAdded"]
  GETUPVAL R5 6
  NAMECALL R3 R3 K6 ["connect"]
  CALL R3 2 1
  SETUPVAL R3 5
  RETURN R0 0

PROTO_11:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Get"]
  LOADK R6 K1 ["Backpack"]
  CALL R5 1 1
  JUMPIF R5 [+5]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["Get"]
  LOADK R6 K2 ["Topbar3D"]
  CALL R5 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["Get"]
  LOADK R7 K2 ["Topbar3D"]
  CALL R6 1 1
  JUMPIFNOT R5 [+31]
  JUMPIFNOT R6 [+30]
  GETTABLEKS R7 R5 K3 ["localCF"]
  JUMPIF R7 [+3]
  GETIMPORT R7 K6 [CFrame.new]
  CALL R7 0 1
  GETIMPORT R9 K6 [CFrame.new]
  GETTABLEKS R14 R6 K9 ["width"]
  GETTABLEKS R15 R5 K9 ["width"]
  FASTCALL2 MATH_MAX R14 R15 [+3]
  GETIMPORT R13 K12 [math.max]
  CALL R13 2 1
  DIVK R12 R13 K8 [2]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K9 ["width"]
  DIVK R13 R14 K8 [2]
  SUB R11 R12 R13
  SUBK R10 R11 K7 [0.11]
  LOADK R11 K13 [0.25]
  LOADK R12 K14 [0.1]
  CALL R9 3 1
  MUL R8 R7 R9
  SETTABLEKS R8 R0 K3 ["localCF"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Get"]
  LOADK R2 K1 ["Backpack"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Get"]
  LOADK R3 K2 ["Topbar3D"]
  CALL R2 1 1
  JUMPIFNOT R1 [+8]
  NAMECALL R5 R1 K3 ["IsVisible"]
  CALL R5 1 1
  JUMPIFNOT R5 [+4]
  NAMECALL R4 R1 K4 ["CalculateTransparency"]
  CALL R4 1 1
  JUMPIF R4 [+1]
  LOADN R4 1
  JUMPIFNOT R2 [+8]
  NAMECALL R6 R2 K3 ["IsVisible"]
  CALL R6 1 1
  JUMPIFNOT R6 [+4]
  NAMECALL R5 R2 K4 ["CalculateTransparency"]
  CALL R5 1 1
  JUMPIF R5 [+1]
  LOADN R5 1
  FASTCALL2 MATH_MIN R4 R5 [+3]
  GETIMPORT R3 K7 [math.min]
  CALL R3 2 1
  GETUPVAL R4 1
  SETTABLEKS R3 R4 K8 ["ImageTransparency"]
  GETUPVAL R4 2
  SETTABLEKS R3 R4 K8 ["ImageTransparency"]
  GETUPVAL R4 3
  SETTABLEKS R3 R4 K9 ["TextTransparency"]
  RETURN R3 1

PROTO_13:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R1 0
  NAMECALL R1 R1 K2 ["GetOpenedModules"]
  CALL R1 1 -1
  CALL R0 -1 3
  FORGPREP_NEXT R0
  GETTABLEKS R5 R4 K3 ["VRIsExclusive"]
  JUMPIFNOT R5 [+3]
  LOADB R5 1
  SETUPVAL R5 1
  RETURN R0 0
  FORGLOOP R0 2 [-7]
  LOADB R0 0
  SETUPVAL R0 1
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETIMPORT R2 K3 [Enum.CoreGuiType.Health]
  NAMECALL R0 R0 K4 ["GetCoreGuiEnabled"]
  CALL R0 2 1
  JUMPIFNOT R0 [+2]
  GETUPVAL R1 1
  NOT R0 R1
  RETURN R0 1

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETIMPORT R4 K3 [Enum.CoreGuiType.Health]
  NAMECALL R2 R2 K4 ["GetCoreGuiEnabled"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  GETUPVAL R3 2
  NOT R2 R3
  NAMECALL R0 R0 K5 ["SetVisible"]
  CALL R0 2 0
  RETURN R0 0

PROTO_16:
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R2 0
  NAMECALL R2 R2 K2 ["GetOpenedModules"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K3 ["VRIsExclusive"]
  JUMPIFNOT R6 [+3]
  LOADB R6 1
  SETUPVAL R6 1
  JUMP [+4]
  FORGLOOP R1 2 [-7]
  LOADB R1 0
  SETUPVAL R1 1
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETIMPORT R5 K7 [Enum.CoreGuiType.Health]
  NAMECALL R3 R3 K8 ["GetCoreGuiEnabled"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  GETUPVAL R4 1
  NOT R3 R4
  NAMECALL R1 R1 K9 ["SetVisible"]
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R2 0
  NAMECALL R2 R2 K2 ["GetOpenedModules"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K3 ["VRIsExclusive"]
  JUMPIFNOT R6 [+3]
  LOADB R6 1
  SETUPVAL R6 1
  JUMP [+4]
  FORGLOOP R1 2 [-7]
  LOADB R1 0
  SETUPVAL R1 1
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETIMPORT R5 K7 [Enum.CoreGuiType.Health]
  NAMECALL R3 R3 K8 ["GetCoreGuiEnabled"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  GETUPVAL R4 1
  NOT R3 R4
  NAMECALL R1 R1 K9 ["SetVisible"]
  CALL R1 2 0
  RETURN R0 0

PROTO_18:
  JUMPIFNOTEQKS R0 K0 ["VREnabled"] [+179]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["VREnabled"]
  JUMPIFNOT R1 [+146]
  GETIMPORT R1 K2 [require]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Modules"]
  GETTABLEKS R3 R4 K4 ["VR"]
  GETTABLEKS R2 R3 K5 ["VRHub"]
  CALL R1 1 1
  GETIMPORT R3 K2 [require]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["Workspace"]
  GETTABLEKS R5 R6 K7 ["Packages"]
  GETTABLEKS R4 R5 K8 ["VrCommon"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K9 ["Panel3D"]
  GETTABLEKS R3 R2 K10 ["Get"]
  LOADK R4 K11 ["Healthbar"]
  CALL R3 1 1
  LOADK R6 K12 [1.5]
  LOADK R7 K13 [0.25]
  LOADN R8 128
  NAMECALL R4 R3 K14 ["ResizeStuds"]
  CALL R4 4 0
  GETTABLEKS R7 R2 K15 ["Type"]
  GETTABLEKS R6 R7 K16 ["Fixed"]
  DUPTABLE R7 K18 [{"CFrame"}]
  GETIMPORT R8 K20 [CFrame.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 251
  CALL R8 3 1
  SETTABLEKS R8 R7 K17 ["CFrame"]
  NAMECALL R4 R3 K21 ["SetType"]
  CALL R4 3 0
  LOADB R6 1
  NAMECALL R4 R3 K22 ["SetVisible"]
  CALL R4 2 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K23 ["PreUpdate"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R4 R3 K24 ["CalculateTransparency"]
  LOADB R4 0
  NEWCLOSURE R5 P2
  CAPTURE VAL R1
  CAPTURE REF R4
  NEWCLOSURE R6 P3
  CAPTURE UPVAL U6
  CAPTURE REF R4
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K25 ["CoreGuiChangedSignal"]
  NEWCLOSURE R9 P4
  CAPTURE VAL R3
  CAPTURE UPVAL U6
  CAPTURE REF R4
  NAMECALL R7 R7 K26 ["connect"]
  CALL R7 2 1
  SETUPVAL R7 7
  GETTABLEKS R8 R1 K27 ["ModuleOpened"]
  GETTABLEKS R7 R8 K28 ["Event"]
  NEWCLOSURE R9 P5
  CAPTURE VAL R1
  CAPTURE REF R4
  CAPTURE VAL R3
  CAPTURE UPVAL U6
  NAMECALL R7 R7 K26 ["connect"]
  CALL R7 2 1
  SETUPVAL R7 8
  GETTABLEKS R8 R1 K29 ["ModuleClosed"]
  GETTABLEKS R7 R8 K28 ["Event"]
  NEWCLOSURE R9 P6
  CAPTURE VAL R1
  CAPTURE REF R4
  CAPTURE VAL R3
  CAPTURE UPVAL U6
  NAMECALL R7 R7 K26 ["connect"]
  CALL R7 2 1
  SETUPVAL R7 9
  GETIMPORT R7 K31 [pairs]
  NAMECALL R8 R1 K32 ["GetOpenedModules"]
  CALL R8 1 -1
  CALL R7 -1 3
  FORGPREP_NEXT R7
  GETTABLEKS R12 R11 K33 ["VRIsExclusive"]
  JUMPIFNOT R12 [+2]
  LOADB R4 1
  JUMP [+3]
  FORGLOOP R7 2 [-6]
  LOADB R4 0
  GETUPVAL R9 6
  GETIMPORT R11 K37 [Enum.CoreGuiType.Health]
  NAMECALL R9 R9 K38 ["GetCoreGuiEnabled"]
  CALL R9 2 1
  JUMPIFNOT R9 [+1]
  NOT R9 R4
  NAMECALL R7 R3 K22 ["SetVisible"]
  CALL R7 2 0
  GETUPVAL R7 10
  NAMECALL R8 R3 K39 ["GetGUI"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K40 ["Parent"]
  GETUPVAL R9 11
  NAMECALL R7 R1 K41 ["RegisterModule"]
  CALL R7 2 0
  CLOSEUPVALS R4
  RETURN R0 0
  GETUPVAL R1 7
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 7
  NAMECALL R1 R1 K42 ["disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 7
  GETUPVAL R1 8
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 8
  NAMECALL R1 R1 K42 ["disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 8
  GETUPVAL R1 9
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 9
  NAMECALL R1 R1 K42 ["disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 9
  GETUPVAL R1 10
  LOADNIL R2
  SETTABLEKS R2 R1 K40 ["Parent"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K2 [Color3.new]
  LOADK R1 K3 [0.894117647058824]
  LOADK R2 K4 [0.925490196078431]
  LOADK R3 K5 [0.964705882352941]
  CALL R0 3 1
  GETIMPORT R1 K2 [Color3.new]
  LOADN R2 1
  LOADK R3 K6 [0.109803921568627]
  LOADN R4 0
  CALL R1 3 1
  GETIMPORT R2 K2 [Color3.new]
  LOADK R3 K7 [0.980392156862745]
  LOADK R4 K8 [0.92156862745098]
  LOADN R5 0
  CALL R2 3 1
  GETIMPORT R3 K2 [Color3.new]
  LOADK R4 K9 [0.105882352941176]
  LOADK R5 K10 [0.988235294117647]
  LOADK R6 K11 [0.419607843137255]
  CALL R3 3 1
  GETIMPORT R4 K13 [game]
  LOADK R6 K14 ["Players"]
  NAMECALL R4 R4 K15 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K13 [game]
  LOADK R7 K16 ["CoreGui"]
  NAMECALL R5 R5 K15 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K13 [game]
  LOADK R8 K17 ["StarterGui"]
  NAMECALL R6 R6 K15 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K13 [game]
  LOADK R9 K18 ["UserInputService"]
  NAMECALL R7 R7 K15 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K13 [game]
  LOADK R10 K19 ["CorePackages"]
  NAMECALL R8 R8 K15 ["GetService"]
  CALL R8 2 1
  LOADK R11 K20 ["RobloxGui"]
  NAMECALL R9 R5 K21 ["WaitForChild"]
  CALL R9 2 1
  GETIMPORT R10 K23 [Instance.new]
  LOADK R11 K24 ["Frame"]
  CALL R10 1 1
  LOADK R11 K25 ["HealthbarContainer"]
  SETTABLEKS R11 R10 K26 ["Name"]
  LOADN R11 1
  SETTABLEKS R11 R10 K27 ["BackgroundTransparency"]
  GETIMPORT R11 K29 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K30 ["Size"]
  GETIMPORT R11 K23 [Instance.new]
  LOADK R12 K31 ["ImageLabel"]
  CALL R11 1 1
  SETTABLEKS R0 R11 K32 ["ImageColor3"]
  LOADN R12 1
  SETTABLEKS R12 R11 K27 ["BackgroundTransparency"]
  GETIMPORT R12 K36 [Enum.ScaleType.Slice]
  SETTABLEKS R12 R11 K34 ["ScaleType"]
  GETIMPORT R12 K38 [Rect.new]
  LOADN R13 10
  LOADN R14 10
  LOADN R15 10
  LOADN R16 10
  CALL R12 4 1
  SETTABLEKS R12 R11 K39 ["SliceCenter"]
  LOADK R12 K40 ["HealthbarBack"]
  SETTABLEKS R12 R11 K26 ["Name"]
  LOADK R12 K41 ["rbxasset://textures/ui/VR/rectBackgroundWhite.png"]
  SETTABLEKS R12 R11 K42 ["Image"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADK R15 K43 [0.3]
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K30 ["Size"]
  GETIMPORT R12 K29 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADK R15 K44 [0.7]
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K45 ["Position"]
  SETTABLEKS R10 R11 K46 ["Parent"]
  GETIMPORT R12 K23 [Instance.new]
  LOADK R13 K31 ["ImageLabel"]
  CALL R12 1 1
  SETTABLEKS R3 R12 K32 ["ImageColor3"]
  LOADN R13 1
  SETTABLEKS R13 R12 K27 ["BackgroundTransparency"]
  GETIMPORT R13 K36 [Enum.ScaleType.Slice]
  SETTABLEKS R13 R12 K34 ["ScaleType"]
  GETIMPORT R13 K38 [Rect.new]
  LOADN R14 10
  LOADN R15 10
  LOADN R16 10
  LOADN R17 10
  CALL R13 4 1
  SETTABLEKS R13 R12 K39 ["SliceCenter"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K30 ["Size"]
  GETIMPORT R13 K29 [UDim2.new]
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K45 ["Position"]
  LOADK R13 K47 ["HealthbarFill"]
  SETTABLEKS R13 R12 K26 ["Name"]
  LOADK R13 K41 ["rbxasset://textures/ui/VR/rectBackgroundWhite.png"]
  SETTABLEKS R13 R12 K42 ["Image"]
  SETTABLEKS R11 R12 K46 ["Parent"]
  GETIMPORT R13 K23 [Instance.new]
  LOADK R14 K48 ["TextLabel"]
  CALL R13 1 1
  LOADK R14 K49 ["PlayerName"]
  SETTABLEKS R14 R13 K26 ["Name"]
  LOADN R14 1
  SETTABLEKS R14 R13 K27 ["BackgroundTransparency"]
  GETIMPORT R14 K2 [Color3.new]
  LOADN R15 1
  LOADN R16 1
  LOADN R17 1
  CALL R14 3 1
  SETTABLEKS R14 R13 K50 ["TextColor3"]
  LOADK R14 K51 [""]
  SETTABLEKS R14 R13 K52 ["Text"]
  GETIMPORT R14 K55 [Enum.Font.SourceSansBold]
  SETTABLEKS R14 R13 K53 ["Font"]
  GETIMPORT R14 K58 [Enum.FontSize.Size24]
  SETTABLEKS R14 R13 K56 ["FontSize"]
  GETIMPORT R14 K61 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K59 ["TextXAlignment"]
  GETIMPORT R14 K29 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 14
  CALL R14 4 1
  SETTABLEKS R14 R13 K30 ["Size"]
  SETTABLEKS R10 R13 K46 ["Parent"]
  DUPCLOSURE R14 K62 [PROTO_0]
  DUPCLOSURE R15 K63 [PROTO_1]
  NEWTABLE R16 4 0
  GETTABLEKS R18 R1 K64 ["r"]
  GETTABLEKS R19 R1 K65 ["g"]
  GETTABLEKS R20 R1 K66 ["b"]
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K68 [Vector3.new]
  CALL R17 3 1
  LOADK R18 K69 [0.1]
  SETTABLE R18 R16 R17
  GETTABLEKS R18 R2 K64 ["r"]
  GETTABLEKS R19 R2 K65 ["g"]
  GETTABLEKS R20 R2 K66 ["b"]
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K68 [Vector3.new]
  CALL R17 3 1
  LOADK R18 K70 [0.5]
  SETTABLE R18 R16 R17
  GETTABLEKS R18 R3 K64 ["r"]
  GETTABLEKS R19 R3 K65 ["g"]
  GETTABLEKS R20 R3 K66 ["b"]
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K68 [Vector3.new]
  CALL R17 3 1
  LOADK R18 K71 [0.8]
  SETTABLE R18 R16 R17
  DUPCLOSURE R17 K72 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R16
  DUPCLOSURE R18 K73 [PROTO_3]
  CAPTURE VAL R12
  CAPTURE VAL R17
  LOADNIL R19
  LOADNIL R20
  NEWCLOSURE R21 P4
  CAPTURE REF R20
  CAPTURE REF R19
  CAPTURE VAL R4
  CAPTURE VAL R21
  CAPTURE VAL R12
  CAPTURE VAL R17
  DUPCLOSURE R22 K74 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R21
  LOADNIL R23
  NEWCLOSURE R24 P6
  CAPTURE VAL R15
  CAPTURE VAL R21
  CAPTURE REF R23
  CAPTURE VAL R22
  NEWCLOSURE R25 P7
  CAPTURE VAL R13
  CAPTURE VAL R24
  CAPTURE VAL R15
  CAPTURE VAL R21
  CAPTURE REF R23
  CAPTURE VAL R22
  GETTABLEKS R26 R4 K75 ["LocalPlayer"]
  JUMPIFNOT R26 [+38]
  GETTABLEKS R26 R4 K75 ["LocalPlayer"]
  GETTABLEKS R27 R26 K26 ["Name"]
  SETTABLEKS R27 R13 K52 ["Text"]
  GETTABLEKS R27 R26 K76 ["CharacterAdded"]
  MOVE R29 R24
  NAMECALL R27 R27 K77 ["connect"]
  CALL R27 2 0
  GETTABLEKS R27 R26 K78 ["Character"]
  JUMPIFNOT R27 [+34]
  GETTABLEKS R27 R26 K78 ["Character"]
  MOVE R28 R15
  MOVE R29 R27
  LOADK R30 K79 ["Humanoid"]
  CALL R28 2 1
  JUMPIFNOT R28 [+3]
  MOVE R29 R21
  MOVE R30 R28
  CALL R29 1 0
  JUMPIFNOT R23 [+4]
  NAMECALL R29 R23 K80 ["disconnect"]
  CALL R29 1 0
  LOADNIL R23
  GETTABLEKS R29 R27 K81 ["ChildAdded"]
  MOVE R31 R22
  NAMECALL R29 R29 K77 ["connect"]
  CALL R29 2 1
  MOVE R23 R29
  JUMP [+11]
  GETIMPORT R26 K83 [spawn]
  NEWCLOSURE R27 P8
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R24
  CAPTURE VAL R15
  CAPTURE VAL R21
  CAPTURE REF R23
  CAPTURE VAL R22
  CALL R26 1 0
  NEWTABLE R26 4 0
  LOADK R27 K84 ["Healthbar"]
  SETTABLEKS R27 R26 K85 ["ModuleName"]
  LOADB R27 0
  SETTABLEKS R27 R26 K86 ["KeepVRTopbarOpen"]
  LOADB R27 0
  SETTABLEKS R27 R26 K87 ["VRIsExclusive"]
  LOADB R27 0
  SETTABLEKS R27 R26 K88 ["VRClosesNonExclusive"]
  LOADNIL R27
  LOADNIL R28
  LOADNIL R29
  NEWCLOSURE R30 P9
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE REF R27
  CAPTURE REF R28
  CAPTURE REF R29
  CAPTURE VAL R10
  CAPTURE VAL R26
  GETTABLEKS R31 R7 K89 ["Changed"]
  MOVE R33 R30
  NAMECALL R31 R31 K77 ["connect"]
  CALL R31 2 0
  GETTABLEKS R31 R7 K90 ["VREnabled"]
  JUMPIFNOT R31 [+3]
  MOVE R31 R30
  LOADK R32 K90 ["VREnabled"]
  CALL R31 1 0
  CLOSEUPVALS R19
  RETURN R26 1