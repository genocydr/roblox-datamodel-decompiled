PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["List"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  NEWTABLE R4 0 1
  GETTABLEKS R5 R1 K2 ["team"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["team"]
  JUMPIFNOTEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["List"]
  GETTABLEKS R2 R3 K1 ["filter"]
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R6 K10 [script]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K11 ["Parent"]
  GETTABLEKS R3 R4 K12 ["Actions"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K13 ["AddTeam"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K14 ["RemoveTeam"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K15 ["createReducer"]
  NEWTABLE R7 0 0
  NEWTABLE R8 2 0
  GETTABLEKS R9 R4 K16 ["name"]
  DUPCLOSURE R10 K17 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R5 K16 ["name"]
  DUPCLOSURE R10 K18 [PROTO_2]
  CAPTURE VAL R2
  SETTABLE R10 R8 R9
  CALL R6 2 1
  RETURN R6 1
