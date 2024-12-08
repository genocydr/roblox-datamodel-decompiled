PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ClientLogData"]
  NAMECALL R0 R0 K2 ["getLogData"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["initClientLogData"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"layoutOrder", "size", "initLogOutput", "targetSignal"}]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K1 ["layoutOrder"]
  SETTABLEKS R4 R3 K1 ["layoutOrder"]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K2 ["size"]
  SETTABLEKS R4 R3 K2 ["size"]
  GETTABLEKS R4 R0 K7 ["initClientLogData"]
  SETTABLEKS R4 R3 K3 ["initLogOutput"]
  GETTABLEKS R5 R0 K6 ["props"]
  GETTABLEKS R4 R5 K8 ["ClientLogData"]
  NAMECALL R4 R4 K9 ["Signal"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["targetSignal"]
  CALL R1 2 -1
  RETURN R1 -1

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
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["DataConsumer"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K9 [script]
  GETTABLEKS R5 R6 K10 ["Parent"]
  GETTABLEKS R4 R5 K12 ["LogOutput"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K13 ["Component"]
  LOADK R6 K14 ["ClientLog"]
  NAMECALL R4 R4 K15 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K16 [PROTO_1]
  SETTABLEKS R5 R4 K17 ["init"]
  DUPCLOSURE R5 K18 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K19 ["render"]
  MOVE R5 R2
  MOVE R6 R4
  LOADK R7 K20 ["ClientLogData"]
  CALL R5 2 -1
  RETURN R5 -1
