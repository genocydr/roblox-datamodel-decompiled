PROTO_0:
  GETIMPORT R1 K1 [game]
  GETTABLEKS R0 R1 K2 ["PrivateServerId"]
  JUMPIFEQKS R0 K3 [""] [+15]
  GETIMPORT R1 K1 [game]
  GETTABLEKS R0 R1 K4 ["PrivateServerOwnerId"]
  JUMPIFEQKN R0 K5 [0] [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K6 ["VIP_SERVER"]
  RETURN R0 1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K7 ["RESERVED_SERVER"]
  RETURN R0 1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K8 ["STANDARD_SERVER"]
  RETURN R0 1

PROTO_1:
  NAMECALL R1 R0 K0 ["GetJoinData"]
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  LOADK R4 K5 [∞]
  NAMECALL R1 R0 K6 ["WaitForChild"]
  CALL R1 3 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Modules"]
  GETTABLEKS R4 R5 K10 ["Common"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K12 ["RobloxReplicatedStorage"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K13 ["GetJoinDataRemoteFunctionEnabled"]
  LOADB R7 0
  NAMECALL R4 R4 K14 ["DefineFastFlag"]
  CALL R4 3 1
  GETIMPORT R5 K17 [Instance.new]
  LOADK R6 K18 ["RemoteFunction"]
  CALL R5 1 1
  LOADK R6 K19 ["GetServerType"]
  SETTABLEKS R6 R5 K20 ["Name"]
  SETTABLEKS R3 R5 K21 ["Parent"]
  DUPCLOSURE R6 K22 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K23 ["OnServerInvoke"]
  JUMPIFNOT R4 [+12]
  GETIMPORT R7 K17 [Instance.new]
  LOADK R8 K18 ["RemoteFunction"]
  CALL R7 1 1
  LOADK R8 K24 ["GetJoinData"]
  SETTABLEKS R8 R7 K20 ["Name"]
  SETTABLEKS R3 R7 K21 ["Parent"]
  DUPCLOSURE R8 K25 [PROTO_1]
  SETTABLEKS R8 R7 K23 ["OnServerInvoke"]
  RETURN R0 0
