PROTO_0:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["Instance"]
  GETTABLEKS R4 R5 K1 ["ReportAbusePage"]
  GETTABLEKS R3 R4 K2 ["Page"]
  GETTABLEKS R2 R3 K3 ["Name"]
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  SETUPVAL R1 0
  GETUPVAL R1 2
  NAMECALL R1 R1 K4 ["fire"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [require]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Modules"]
  GETTABLEKS R2 R3 K3 ["Settings"]
  GETTABLEKS R1 R2 K4 ["SettingsHub"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K5 ["CurrentPageSignal"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K6 ["connect"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Modules"]
  GETTABLEKS R3 R4 K3 ["Settings"]
  GETTABLEKS R2 R3 K4 ["SettingsHub"]
  CALL R1 1 1
  NAMECALL R2 R1 K5 ["GetVisibility"]
  CALL R2 1 1
  JUMPIFNOT R2 [+16]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+5]
  LOADB R4 0
  NAMECALL R2 R1 K6 ["SetVisibility"]
  CALL R2 2 0
  RETURN R0 0
  GETTABLEKS R5 R1 K7 ["Instance"]
  GETTABLEKS R4 R5 K8 ["ReportAbusePage"]
  LOADB R5 1
  NAMECALL R2 R1 K9 ["SwitchToPage"]
  CALL R2 3 0
  RETURN R0 0
  LOADB R4 1
  LOADB R5 0
  GETTABLEKS R7 R1 K7 ["Instance"]
  GETTABLEKS R6 R7 K8 ["ReportAbusePage"]
  NAMECALL R2 R1 K6 ["SetVisibility"]
  CALL R2 4 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["get"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R1 0
  LOADK R2 K0 ["icons/menu/safety_off"]
  LOADK R3 K1 ["icons/menu/safety_on"]
  GETUPVAL R4 1
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Chrome"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CoreGui"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["CorePackages"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  LOADK R5 K9 ["RobloxGui"]
  NAMECALL R3 R1 K10 ["WaitForChild"]
  CALL R3 2 1
  GETIMPORT R4 K12 [require]
  GETTABLEKS R5 R0 K13 ["Service"]
  CALL R4 1 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R0 K14 ["Integrations"]
  GETTABLEKS R6 R7 K15 ["CommonIcon"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R9 R2 K16 ["Workspace"]
  GETTABLEKS R8 R9 K17 ["Packages"]
  GETTABLEKS R7 R8 K18 ["AppCommonLib"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K19 ["Signal"]
  GETIMPORT R8 K12 [require]
  GETTABLEKS R11 R0 K20 ["ChromeShared"]
  GETTABLEKS R10 R11 K13 ["Service"]
  GETTABLEKS R9 R10 K21 ["ChromeUtils"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K22 ["MappedSignal"]
  GETIMPORT R10 K12 [require]
  GETTABLEKS R12 R0 K23 ["Flags"]
  GETTABLEKS R11 R12 K24 ["GetFFlagAddChromeActivatedEvents"]
  CALL R10 1 1
  LOADB R11 0
  GETTABLEKS R12 R7 K25 ["new"]
  CALL R12 0 1
  GETTABLEKS R13 R9 K25 ["new"]
  MOVE R14 R12
  NEWCLOSURE R15 P0
  CAPTURE REF R11
  CALL R13 2 1
  GETIMPORT R14 K28 [task.defer]
  NEWCLOSURE R15 P1
  CAPTURE VAL R3
  CAPTURE REF R11
  CAPTURE VAL R12
  CALL R14 1 0
  DUPTABLE R16 K35 [{"initialAvailability", "id", "label", "activated", "isActivated", "components"}]
  GETTABLEKS R18 R4 K36 ["AvailabilitySignal"]
  GETTABLEKS R17 R18 K37 ["Available"]
  SETTABLEKS R17 R16 K29 ["initialAvailability"]
  LOADK R17 K38 ["trust_and_safety"]
  SETTABLEKS R17 R16 K30 ["id"]
  LOADK R17 K39 ["CoreScripts.InGameMenu.QuickActions.Report"]
  SETTABLEKS R17 R16 K31 ["label"]
  NEWCLOSURE R17 P2
  CAPTURE VAL R3
  CAPTURE REF R11
  SETTABLEKS R17 R16 K32 ["activated"]
  MOVE R18 R10
  CALL R18 0 1
  JUMPIFNOT R18 [+3]
  DUPCLOSURE R17 K40 [PROTO_4]
  CAPTURE VAL R13
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K33 ["isActivated"]
  DUPTABLE R17 K42 [{"Icon"}]
  DUPCLOSURE R18 K43 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R13
  SETTABLEKS R18 R17 K41 ["Icon"]
  SETTABLEKS R17 R16 K34 ["components"]
  NAMECALL R14 R4 K44 ["register"]
  CALL R14 2 -1
  CLOSEUPVALS R11
  RETURN R14 -1
