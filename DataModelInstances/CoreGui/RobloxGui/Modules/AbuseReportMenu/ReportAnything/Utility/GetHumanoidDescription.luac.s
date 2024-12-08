PROTO_0:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_INEXT R2
  DUPTABLE R9 K7 [{"AccessoryType", "AssetId", "IsLayered", "Order", "Puffiness"}]
  GETTABLEKS R11 R6 K2 ["AccessoryType"]
  GETTABLEKS R10 R11 K8 ["Value"]
  SETTABLEKS R10 R9 K2 ["AccessoryType"]
  GETTABLEKS R10 R6 K3 ["AssetId"]
  SETTABLEKS R10 R9 K3 ["AssetId"]
  GETTABLEKS R10 R6 K4 ["IsLayered"]
  SETTABLEKS R10 R9 K4 ["IsLayered"]
  GETTABLEKS R10 R6 K5 ["Order"]
  SETTABLEKS R10 R9 K5 ["Order"]
  GETTABLEKS R10 R6 K6 ["Puffiness"]
  SETTABLEKS R10 R9 K6 ["Puffiness"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K11 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [inext] [-30]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetAppliedDescription"]
  CALL R0 1 1
  RETURN R0 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  FASTCALL1 TYPEOF R2 [+2]
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["Color3"] [+20]
  GETUPVAL R1 1
  NEWTABLE R2 0 3
  GETUPVAL R5 0
  GETTABLE R4 R5 R0
  GETTABLEKS R3 R4 K3 ["R"]
  GETUPVAL R6 0
  GETTABLE R5 R6 R0
  GETTABLEKS R4 R5 K4 ["G"]
  GETUPVAL R7 0
  GETTABLE R6 R7 R0
  GETTABLEKS R5 R6 K5 ["B"]
  SETLIST R2 R3 3 [1]
  SETTABLE R2 R1 R0
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  SETTABLE R2 R1 R0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_NEXT R0
  GETUPVAL R7 1
  GETTABLE R6 R7 R3
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K3 [typeof]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K4 ["Color3"] [+20]
  GETUPVAL R5 0
  NEWTABLE R6 0 3
  GETUPVAL R9 1
  GETTABLE R8 R9 R3
  GETTABLEKS R7 R8 K5 ["R"]
  GETUPVAL R10 1
  GETTABLE R9 R10 R3
  GETTABLEKS R8 R9 K6 ["G"]
  GETUPVAL R11 1
  GETTABLE R10 R11 R3
  GETTABLEKS R9 R10 K7 ["B"]
  SETLIST R6 R7 3 [1]
  SETTABLE R6 R5 R3
  JUMP [+4]
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETTABLE R6 R7 R3
  SETTABLE R6 R5 R3
  FORGLOOP R0 2 [-32]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["GetPlayerByUserId"]
  CALL R1 2 1
  NEWTABLE R2 64 0
  LOADK R3 K1 [""]
  SETTABLEKS R3 R2 K2 ["BackAccessory"]
  LOADN R3 0
  SETTABLEKS R3 R2 K3 ["BodyTypeScale"]
  LOADN R3 0
  SETTABLEKS R3 R2 K4 ["ClimbAnimation"]
  LOADN R3 0
  SETTABLEKS R3 R2 K5 ["DepthScale"]
  LOADN R3 0
  SETTABLEKS R3 R2 K6 ["Face"]
  LOADK R3 K1 [""]
  SETTABLEKS R3 R2 K7 ["FaceAccessory"]
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["FallAnimation"]
  LOADK R3 K1 [""]
  SETTABLEKS R3 R2 K9 ["FrontAccessory"]
  LOADN R3 0
  SETTABLEKS R3 R2 K10 ["GraphicTShirt"]
  LOADK R3 K1 [""]
  SETTABLEKS R3 R2 K11 ["HairAccessory"]
  LOADK R3 K1 [""]
  SETTABLEKS R3 R2 K12 ["HatAccessory"]
  LOADN R3 0
  SETTABLEKS R3 R2 K13 ["Head"]
  NEWTABLE R3 0 3
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K14 ["HeadColor"]
  LOADN R3 0
  SETTABLEKS R3 R2 K15 ["HeadScale"]
  LOADN R3 0
  SETTABLEKS R3 R2 K16 ["HeightScale"]
  LOADN R3 0
  SETTABLEKS R3 R2 K17 ["IdleAnimation"]
  LOADN R3 0
  SETTABLEKS R3 R2 K18 ["JumpAnimation"]
  LOADN R3 0
  SETTABLEKS R3 R2 K19 ["LeftArm"]
  NEWTABLE R3 0 3
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K20 ["LeftArmColor"]
  LOADN R3 0
  SETTABLEKS R3 R2 K21 ["LeftLeg"]
  NEWTABLE R3 0 3
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K22 ["LeftLegColor"]
  LOADN R3 0
  SETTABLEKS R3 R2 K23 ["MoodAnimation"]
  LOADK R3 K1 [""]
  SETTABLEKS R3 R2 K24 ["NeckAccessory"]
  LOADN R3 0
  SETTABLEKS R3 R2 K25 ["Pants"]
  LOADN R3 0
  SETTABLEKS R3 R2 K26 ["ProportionScale"]
  LOADN R3 0
  SETTABLEKS R3 R2 K27 ["RightArm"]
  NEWTABLE R3 0 3
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K28 ["RightArmColor"]
  LOADN R3 0
  SETTABLEKS R3 R2 K29 ["RightLeg"]
  NEWTABLE R3 0 3
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K30 ["RightLegColor"]
  LOADN R3 0
  SETTABLEKS R3 R2 K31 ["RunAnimation"]
  LOADN R3 0
  SETTABLEKS R3 R2 K32 ["Shirt"]
  LOADK R3 K1 [""]
  SETTABLEKS R3 R2 K33 ["ShouldersAccessory"]
  LOADN R3 0
  SETTABLEKS R3 R2 K34 ["SwimAnimation"]
  LOADN R3 0
  SETTABLEKS R3 R2 K35 ["Torso"]
  NEWTABLE R3 0 3
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K36 ["TorsoColor"]
  LOADK R3 K1 [""]
  SETTABLEKS R3 R2 K37 ["WaistAccessory"]
  LOADN R3 0
  SETTABLEKS R3 R2 K38 ["WalkAnimation"]
  LOADN R3 0
  SETTABLEKS R3 R2 K39 ["WidthScale"]
  JUMPIF R1 [+5]
  MOVE R3 R2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K40 ["ERR_RA_HUMPLAYER"]
  RETURN R3 2
  GETTABLEKS R3 R1 K41 ["Character"]
  JUMPIFNOT R3 [+94]
  LOADK R6 K42 ["Humanoid"]
  LOADN R7 1
  NAMECALL R4 R3 K43 ["WaitForChild"]
  CALL R4 3 1
  JUMPIF R4 [+5]
  MOVE R5 R2
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K44 ["ERR_RA_HUMOBJ"]
  RETURN R5 2
  LOADNIL R5
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+16]
  LOADNIL R6
  GETIMPORT R7 K46 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE VAL R4
  CALL R7 1 2
  MOVE R6 R7
  MOVE R5 R8
  JUMPIF R6 [+11]
  MOVE R7 R2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K44 ["ERR_RA_HUMOBJ"]
  CLOSEUPVALS R5
  RETURN R7 2
  JUMP [+4]
  NAMECALL R6 R4 K47 ["GetAppliedDescription"]
  CALL R6 1 1
  MOVE R5 R6
  JUMPIF R5 [+6]
  MOVE R6 R2
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K48 ["ERR_RA_HUMDESC"]
  CLOSEUPVALS R5
  RETURN R6 2
  LOADN R6 0
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+40]
  NEWCLOSURE R7 P1
  CAPTURE REF R5
  CAPTURE VAL R2
  GETIMPORT R8 K50 [pairs]
  MOVE R9 R2
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETIMPORT R13 K46 [pcall]
  MOVE R14 R7
  MOVE R15 R11
  CALL R13 2 1
  JUMPIF R13 [+1]
  ADDK R6 R6 K51 [1]
  FORGLOOP R8 2 [-8]
  GETIMPORT R8 K46 [pcall]
  GETTABLEKS R9 R5 K52 ["GetAccessories"]
  MOVE R10 R5
  LOADB R11 0
  CALL R8 3 2
  JUMPIFNOT R8 [+11]
  GETIMPORT R10 K46 [pcall]
  GETUPVAL R11 3
  MOVE R12 R9
  CALL R10 2 2
  JUMPIFNOT R10 [+3]
  SETTABLEKS R11 R2 K53 ["AccessoryBlob"]
  JUMP [+3]
  ADDK R6 R6 K51 [1]
  JUMP [+1]
  ADDK R6 R6 K51 [1]
  SETTABLEKS R6 R2 K54 ["FieldErrorCount"]
  JUMP [+6]
  GETIMPORT R7 K46 [pcall]
  NEWCLOSURE R8 P2
  CAPTURE VAL R2
  CAPTURE REF R5
  CALL R7 1 0
  CLOSEUPVALS R5
  JUMP [+5]
  MOVE R4 R2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K55 ["ERR_RA_CHARACTER"]
  RETURN R4 2
  MOVE R4 R2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K56 ["OK"]
  RETURN R4 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AbuseReportMenu"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["GetFFlagGetHumanoidDescriptionUpdates"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["Players"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  DUPTABLE R3 K17 [{"ERR_RA_CHARACTER", "ERR_RA_HUMPLAYER", "ERR_RA_HUMOBJ", "ERR_RA_HUMDESC", "OK"}]
  LOADK R4 K12 ["ERR_RA_CHARACTER"]
  SETTABLEKS R4 R3 K12 ["ERR_RA_CHARACTER"]
  LOADK R4 K13 ["ERR_RA_HUMPLAYER"]
  SETTABLEKS R4 R3 K13 ["ERR_RA_HUMPLAYER"]
  LOADK R4 K14 ["ERR_RA_HUMOBJ"]
  SETTABLEKS R4 R3 K14 ["ERR_RA_HUMOBJ"]
  LOADK R4 K15 ["ERR_RA_HUMDESC"]
  SETTABLEKS R4 R3 K15 ["ERR_RA_HUMDESC"]
  LOADK R4 K16 ["OK"]
  SETTABLEKS R4 R3 K16 ["OK"]
  DUPCLOSURE R4 K18 [PROTO_0]
  DUPCLOSURE R5 K19 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  DUPTABLE R6 K21 [{"getHumanoidDescription"}]
  SETTABLEKS R5 R6 K20 ["getHumanoidDescription"]
  RETURN R6 1
