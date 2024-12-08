PROTO_0:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Store"]
  GETTABLEKS R1 R2 K1 ["new"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 0
  NEWTABLE R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["thunkMiddleware"]
  SETLIST R4 R5 1 [1]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["join"]
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K1 ["controls"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K2 [{"controls"}]
  SETTABLEKS R1 R4 K1 ["controls"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R4 R0 K0 ["controls"]
  GETTABLEKS R3 R4 K1 ["language"]
  NAMECALL R1 R1 K2 ["SetLocale"]
  CALL R1 2 0
  GETTABLEKS R2 R0 K3 ["definition"]
  GETTABLEKS R1 R2 K4 ["state"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K6 ["StoreProvider"]
  DUPTABLE R4 K8 [{"store"}]
  GETUPVAL R5 3
  MOVE R6 R1
  CALL R5 1 1
  SETTABLEKS R5 R4 K7 ["store"]
  NEWTABLE R5 0 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K10 [{"style"}]
  JUMPIFNOT R0 [+5]
  GETUPVAL R10 5
  GETTABLEKS R11 R0 K11 ["theme"]
  GETTABLE R9 R10 R11
  JUMPIF R9 [+3]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K12 ["Default"]
  SETTABLEKS R9 R8 K9 ["style"]
  NEWTABLE R9 0 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K14 [{"localization"}]
  GETUPVAL R13 0
  SETTABLEKS R13 R12 K13 ["localization"]
  DUPTABLE R13 K16 [{"Child"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 7
  MOVE R16 R0
  CALL R14 2 1
  SETTABLEKS R14 R13 K15 ["Child"]
  CALL R10 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  SETLIST R5 R6 -1 [1]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["UIBlox"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["RoactRodux"]
  CALL R5 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Workspace"]
  GETTABLEKS R9 R10 K6 ["Packages"]
  GETTABLEKS R8 R9 K13 ["InExperienceLocales"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K14 ["Localization"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Workspace"]
  GETTABLEKS R10 R11 K6 ["Packages"]
  GETTABLEKS R9 R10 K14 ["Localization"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K15 ["LocalizationProvider"]
  GETTABLEKS R8 R3 K16 ["init"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Workspace"]
  GETTABLEKS R11 R12 K6 ["Packages"]
  GETTABLEKS R10 R11 K17 ["RobloxAppUIBloxConfig"]
  CALL R9 1 -1
  CALL R8 -1 0
  GETTABLEKS R10 R3 K18 ["App"]
  GETTABLEKS R9 R10 K19 ["Style"]
  GETTABLEKS R8 R9 K20 ["AppStyleProvider"]
  GETTABLEKS R9 R1 K21 ["setGlobalConfig"]
  DUPTABLE R10 K24 [{"elementTracing", "propValidation"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K22 ["elementTracing"]
  LOADB R11 1
  SETTABLEKS R11 R10 K23 ["propValidation"]
  CALL R9 1 0
  DUPTABLE R9 K28 [{"Default", "Light", "Dark"}]
  DUPTABLE R10 K31 [{"themeName", "fontName"}]
  LOADK R11 K26 ["Light"]
  SETTABLEKS R11 R10 K29 ["themeName"]
  LOADK R11 K32 ["Gotham"]
  SETTABLEKS R11 R10 K30 ["fontName"]
  SETTABLEKS R10 R9 K25 ["Default"]
  DUPTABLE R10 K31 [{"themeName", "fontName"}]
  LOADK R11 K26 ["Light"]
  SETTABLEKS R11 R10 K29 ["themeName"]
  LOADK R11 K32 ["Gotham"]
  SETTABLEKS R11 R10 K30 ["fontName"]
  SETTABLEKS R10 R9 K26 ["Light"]
  DUPTABLE R10 K31 [{"themeName", "fontName"}]
  LOADK R11 K27 ["Dark"]
  SETTABLEKS R11 R10 K29 ["themeName"]
  LOADK R11 K32 ["Gotham"]
  SETTABLEKS R11 R10 K30 ["fontName"]
  SETTABLEKS R10 R9 K27 ["Dark"]
  DUPTABLE R10 K34 [{"language"}]
  LOADK R11 K35 ["en-us"]
  SETTABLEKS R11 R10 K33 ["language"]
  GETTABLEKS R11 R6 K36 ["new"]
  LOADK R12 K35 ["en-us"]
  CALL R11 1 1
  DUPCLOSURE R12 K37 [PROTO_1]
  CAPTURE VAL R2
  DUPTABLE R13 K41 [{"roact", "mapDefinition", "mapStory"}]
  SETTABLEKS R1 R13 K38 ["roact"]
  DUPCLOSURE R14 K42 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R10
  SETTABLEKS R14 R13 K39 ["mapDefinition"]
  DUPCLOSURE R14 K43 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K40 ["mapStory"]
  RETURN R13 1