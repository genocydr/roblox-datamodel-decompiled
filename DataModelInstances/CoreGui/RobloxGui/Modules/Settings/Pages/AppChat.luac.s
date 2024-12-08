PROTO_0:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["CurrentSquadId"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["CurrentSquadIdSignal"]
  MOVE R3 R0
  NAMECALL R1 R1 K2 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Modules"]
  GETTABLEKS R2 R3 K3 ["Settings"]
  GETTABLEKS R1 R2 K4 ["SettingsPageFactory"]
  CALL R0 1 1
  NAMECALL R1 R0 K5 ["CreateNewPage"]
  CALL R1 1 1
  LOADNIL R2
  SETTABLEKS R2 R1 K6 ["TabHeader"]
  LOADB R2 0
  SETTABLEKS R2 R1 K7 ["ShouldShowBottomBar"]
  LOADB R2 0
  SETTABLEKS R2 R1 K8 ["ShouldShowHubBar"]
  LOADB R2 1
  SETTABLEKS R2 R1 K9 ["IsPageClipped"]
  GETTABLEKS R2 R1 K10 ["Page"]
  LOADK R3 K11 ["AppChatPage"]
  SETTABLEKS R3 R2 K12 ["Name"]
  GETTABLEKS R2 R1 K10 ["Page"]
  GETIMPORT R3 K15 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K16 ["Size"]
  GETTABLEKS R2 R1 K10 ["Page"]
  GETIMPORT R3 K20 [Enum.AutomaticSize.Y]
  SETTABLEKS R3 R2 K18 ["AutomaticSize"]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+13]
  LOADK R2 K21 [""]
  SETTABLEKS R2 R1 K22 ["CurrentSquadId"]
  GETIMPORT R2 K24 [Instance.new]
  LOADK R3 K25 ["BindableEvent"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K26 ["CurrentSquadIdSignal"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K27 ["SetCurrentSquadId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  LOADK R4 K5 ["RobloxGui"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R7 R1 K9 ["Workspace"]
  GETTABLEKS R6 R7 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["SharedFlags"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K12 ["FFlagUpdateSquadInDefaultAppChatContainer"]
  LOADNIL R4
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  MOVE R6 R5
  CALL R6 0 1
  MOVE R4 R6
  RETURN R4 1
