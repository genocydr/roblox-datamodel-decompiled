PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onActivated"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["userId"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+4]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onActivated"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["onActivated"]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+12]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["onActivated"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["onActivated"]
  JUMPIF R2 [+1]
  LOADNIL R2
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 3
  NEWTABLE R4 8 0
  GETIMPORT R5 K5 [UDim2.new]
  LOADN R6 0
  LOADN R7 36
  LOADN R8 0
  LOADN R9 36
  CALL R5 4 1
  SETTABLEKS R5 R4 K6 ["Size"]
  LOADN R5 1
  SETTABLEKS R5 R4 K7 ["BackgroundTransparency"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K8 ["Images"]
  GETTABLEKS R5 R6 K9 ["MoreActions"]
  SETTABLEKS R5 R4 K10 ["Image"]
  GETTABLEKS R7 R0 K11 ["Theme"]
  GETTABLEKS R6 R7 K12 ["IconEmphasis"]
  GETTABLEKS R5 R6 K13 ["Color"]
  SETTABLEKS R5 R4 K14 ["ImageColor3"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K15 ["LayoutOrder"]
  SETTABLEKS R5 R4 K15 ["LayoutOrder"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K16 ["Event"]
  GETTABLEKS R5 R6 K17 ["Activated"]
  SETTABLE R1 R4 R5
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["InGameMenuDependencies"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Roact"]
  GETTABLEKS R3 R1 K9 ["UIBlox"]
  GETTABLEKS R4 R1 K10 ["t"]
  GETTABLEKS R7 R3 K11 ["Core"]
  GETTABLEKS R6 R7 K12 ["Style"]
  GETTABLEKS R5 R6 K13 ["withStyle"]
  GETIMPORT R8 K15 [script]
  GETTABLEKS R7 R8 K16 ["Parent"]
  GETTABLEKS R6 R7 K16 ["Parent"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R6 K17 ["Flags"]
  GETTABLEKS R8 R9 K18 ["FFlagLuaMenuPerfImprovements"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R6 K19 ["Resources"]
  GETTABLEKS R9 R10 K20 ["Assets"]
  CALL R8 1 1
  GETTABLEKS R11 R3 K11 ["Core"]
  GETTABLEKS R10 R11 K21 ["ImageSet"]
  GETTABLEKS R9 R10 K22 ["ImageSetButton"]
  GETTABLEKS R10 R2 K23 ["PureComponent"]
  LOADK R12 K24 ["MoreButton"]
  NAMECALL R10 R10 K25 ["extend"]
  CALL R10 2 1
  GETTABLEKS R11 R4 K26 ["strictInterface"]
  DUPTABLE R12 K30 [{"onActivated", "LayoutOrder", "userId"}]
  GETTABLEKS R13 R4 K31 ["callback"]
  SETTABLEKS R13 R12 K27 ["onActivated"]
  GETTABLEKS R13 R4 K32 ["integer"]
  SETTABLEKS R13 R12 K28 ["LayoutOrder"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R13 R4 K33 ["number"]
  JUMPIF R13 [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K29 ["userId"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K34 ["validateProps"]
  DUPCLOSURE R11 K35 [PROTO_1]
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K36 ["init"]
  DUPCLOSURE R11 K37 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K38 ["render"]
  RETURN R10 1