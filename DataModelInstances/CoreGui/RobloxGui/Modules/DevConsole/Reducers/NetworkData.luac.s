PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+7]
  DUPTABLE R2 K2 [{"clientSearchTerm", "serverSearchTerm"}]
  LOADK R3 K3 [""]
  SETTABLEKS R3 R2 K0 ["clientSearchTerm"]
  LOADK R3 K3 [""]
  SETTABLEKS R3 R2 K1 ["serverSearchTerm"]
  GETTABLEKS R3 R1 K4 ["type"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["name"]
  JUMPIFNOTEQ R3 R4 [+10]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["Set"]
  MOVE R4 R2
  LOADK R5 K0 ["clientSearchTerm"]
  GETTABLEKS R6 R1 K7 ["searchTerm"]
  CALL R3 3 1
  RETURN R3 1
  GETTABLEKS R3 R1 K4 ["type"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["name"]
  JUMPIFNOTEQ R3 R4 [+10]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["Set"]
  MOVE R4 R2
  LOADK R5 K1 ["serverSearchTerm"]
  GETTABLEKS R6 R1 K7 ["searchTerm"]
  CALL R3 3 1
  RETURN R3 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Immutable"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["ClientNetworkUpdateSearchFilter"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K6 ["Actions"]
  GETTABLEKS R3 R4 K8 ["ServerNetworkUpdateSearchFilter"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R3 1
