PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["SoundDispatcher"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFNOT R0 [+2]
  LOADB R0 1
  RETURN R0 1
  GETUPVAL R0 1
  LOADK R2 K2 ["StarterCharacterScripts"]
  NAMECALL R0 R0 K3 ["FindFirstChildOfClass"]
  CALL R0 2 1
  JUMPIFNOT R0 [+7]
  LOADK R3 K4 ["Sound"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_1:
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  MOVE R4 R0
  NAMECALL R2 R2 K3 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K6 [Instance.new]
  LOADK R4 K7 ["Script"]
  CALL R3 1 1
  SETTABLEKS R0 R3 K8 ["Name"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["getFFlagServerCoreScriptSourceCode"]
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["getSourceForServerScript"]
  MOVE R5 R2
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["Source"]
  JUMP [+4]
  GETTABLEKS R4 R2 K11 ["Source"]
  SETTABLEKS R4 R3 K11 ["Source"]
  SETTABLEKS R1 R3 K2 ["Parent"]
  RETURN R3 1

PROTO_2:
  GETUPVAL R1 0
  LOADK R3 K0 ["SoundDispatcher"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  LOADB R0 1
  JUMP [+14]
  GETUPVAL R1 1
  LOADK R3 K2 ["StarterCharacterScripts"]
  NAMECALL R1 R1 K3 ["FindFirstChildOfClass"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  LOADK R4 K4 ["Sound"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+2]
  LOADB R0 1
  JUMP [+1]
  LOADB R0 0
  JUMPIF R0 [+1]
  RETURN R0 0
  LOADB R0 1
  GETUPVAL R1 0
  LOADK R3 K0 ["SoundDispatcher"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+6]
  LOADB R0 0
  GETUPVAL R2 2
  LOADK R3 K0 ["SoundDispatcher"]
  GETUPVAL R4 0
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R2 0
  LOADK R4 K0 ["SoundDispatcher"]
  NAMECALL R2 R2 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+9]
  NAMECALL R2 R1 K5 ["Clone"]
  CALL R2 1 1
  LOADB R3 0
  SETTABLEKS R3 R2 K6 ["Archivable"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K7 ["Parent"]
  SETTABLEKS R0 R1 K6 ["Archivable"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ServerScriptService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StarterPlayer"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETIMPORT R6 K8 [script]
  GETTABLEKS R5 R6 K9 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Parent"]
  GETTABLEKS R3 R4 K10 ["ServerUtil"]
  CALL R2 1 1
  DUPCLOSURE R3 K11 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R2
  DUPCLOSURE R5 K13 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R5 1
