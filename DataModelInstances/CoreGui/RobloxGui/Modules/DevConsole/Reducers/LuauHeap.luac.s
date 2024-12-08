PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K0 ["type"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["name"]
  JUMPIFNOTEQ R3 R4 [+22]
  GETTABLEKS R4 R1 K2 ["isClientState"]
  JUMPIFNOT R4 [+6]
  DUPTABLE R3 K4 [{"client"}]
  GETTABLEKS R4 R1 K5 ["sessionState"]
  SETTABLEKS R4 R3 K3 ["client"]
  JUMP [+5]
  DUPTABLE R3 K7 [{"server"}]
  GETTABLEKS R4 R1 K5 ["sessionState"]
  SETTABLEKS R4 R3 K6 ["server"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["JoinDictionaries"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  RETURN R4 1
  GETTABLEKS R3 R1 K0 ["type"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["name"]
  JUMPIFNOTEQ R3 R4 [+12]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["JoinDictionaries"]
  MOVE R4 R2
  DUPTABLE R5 K10 [{"isClientView"}]
  GETTABLEKS R6 R1 K9 ["isClientView"]
  SETTABLEKS R6 R5 K9 ["isClientView"]
  CALL R3 2 -1
  RETURN R3 -1
  GETTABLEKS R3 R1 K0 ["type"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["name"]
  JUMPIFNOTEQ R3 R4 [+40]
  GETTABLEKS R3 R2 K9 ["isClientView"]
  JUMPIFNOT R3 [+18]
  GETIMPORT R3 K13 [table.clone]
  GETTABLEKS R4 R2 K3 ["client"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K14 ["active"]
  SETTABLEKS R4 R3 K14 ["active"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["JoinDictionaries"]
  MOVE R5 R2
  DUPTABLE R6 K4 [{"client"}]
  SETTABLEKS R3 R6 K3 ["client"]
  CALL R4 2 -1
  RETURN R4 -1
  GETIMPORT R3 K13 [table.clone]
  GETTABLEKS R4 R2 K6 ["server"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K14 ["active"]
  SETTABLEKS R4 R3 K14 ["active"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["JoinDictionaries"]
  MOVE R5 R2
  DUPTABLE R6 K7 [{"server"}]
  SETTABLEKS R3 R6 K6 ["server"]
  CALL R4 2 -1
  RETURN R4 -1
  GETTABLEKS R3 R1 K0 ["type"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K1 ["name"]
  JUMPIFNOTEQ R3 R4 [+40]
  GETTABLEKS R3 R2 K9 ["isClientView"]
  JUMPIFNOT R3 [+18]
  GETIMPORT R3 K13 [table.clone]
  GETTABLEKS R4 R2 K3 ["client"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K15 ["compare"]
  SETTABLEKS R4 R3 K15 ["compare"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["JoinDictionaries"]
  MOVE R5 R2
  DUPTABLE R6 K4 [{"client"}]
  SETTABLEKS R3 R6 K3 ["client"]
  CALL R4 2 -1
  RETURN R4 -1
  GETIMPORT R3 K13 [table.clone]
  GETTABLEKS R4 R2 K6 ["server"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K15 ["compare"]
  SETTABLEKS R4 R3 K15 ["compare"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["JoinDictionaries"]
  MOVE R5 R2
  DUPTABLE R6 K7 [{"server"}]
  SETTABLEKS R3 R6 K6 ["server"]
  CALL R4 2 -1
  RETURN R4 -1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Immutable"]
  CALL R0 1 1
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Actions"]
  GETIMPORT R2 K1 [require]
  GETTABLEKS R3 R1 K7 ["SetLuauHeapState"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETTABLEKS R4 R1 K8 ["SetLuauHeapProfileTarget"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETTABLEKS R5 R1 K9 ["SetLuauHeapActiveSnapshot"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETTABLEKS R6 R1 K10 ["SetLuauHeapCompareSnapshot"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  GETTABLEKS R10 R11 K4 ["Parent"]
  GETTABLEKS R9 R10 K11 ["Components"]
  GETTABLEKS R8 R9 K12 ["LuauHeap"]
  GETTABLEKS R7 R8 K13 ["LuauHeapTypes"]
  CALL R6 1 1
  DUPTABLE R7 K17 [{"isClientView", "client", "server"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K14 ["isClientView"]
  DUPTABLE R8 K21 [{"snapshots", "active", "compare"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K18 ["snapshots"]
  LOADN R9 0
  SETTABLEKS R9 R8 K19 ["active"]
  LOADN R9 0
  SETTABLEKS R9 R8 K20 ["compare"]
  SETTABLEKS R8 R7 K15 ["client"]
  DUPTABLE R8 K21 [{"snapshots", "active", "compare"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K18 ["snapshots"]
  LOADN R9 0
  SETTABLEKS R9 R8 K19 ["active"]
  LOADN R9 0
  SETTABLEKS R9 R8 K20 ["compare"]
  SETTABLEKS R8 R7 K16 ["server"]
  DUPCLOSURE R8 K22 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R8 1
