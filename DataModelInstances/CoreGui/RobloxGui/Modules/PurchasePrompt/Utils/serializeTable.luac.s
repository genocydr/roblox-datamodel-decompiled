PROTO_0:
  ORK R2 R2 K0 [False]
  ORK R3 R3 K1 [0]
  GETIMPORT R4 K4 [string.rep]
  LOADK R5 K5 [" "]
  MOVE R6 R3
  CALL R4 2 1
  JUMPIFNOT R1 [+4]
  MOVE R5 R4
  MOVE R6 R1
  LOADK R7 K6 [" = "]
  CONCAT R4 R5 R7
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K8 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K9 ["table"] [+39]
  MOVE R5 R4
  LOADK R6 K10 ["{"]
  JUMPIF R2 [+2]
  LOADK R7 K11 ["
"]
  JUMP [+1]
  LOADK R7 K12 [""]
  CONCAT R4 R5 R7
  GETIMPORT R5 K14 [pairs]
  MOVE R6 R0
  CALL R5 1 3
  FORGPREP_NEXT R5
  MOVE R10 R4
  GETUPVAL R14 0
  MOVE R15 R9
  MOVE R16 R8
  MOVE R17 R2
  ADDK R18 R3 K15 [1]
  CALL R14 4 1
  MOVE R11 R14
  LOADK R12 K16 [","]
  JUMPIF R2 [+2]
  LOADK R13 K11 ["
"]
  JUMP [+1]
  LOADK R13 K12 [""]
  CONCAT R4 R10 R13
  FORGLOOP R5 2 [-15]
  MOVE R5 R4
  GETIMPORT R8 K4 [string.rep]
  LOADK R9 K5 [" "]
  MOVE R10 R3
  CALL R8 2 1
  MOVE R6 R8
  LOADK R7 K17 ["}"]
  CONCAT R4 R5 R7
  RETURN R4 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K8 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K18 ["number"] [+9]
  MOVE R5 R4
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K20 [tostring]
  CALL R6 1 1
  CONCAT R4 R5 R6
  RETURN R4 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K8 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K2 ["string"] [+9]
  MOVE R5 R4
  GETIMPORT R6 K22 [string.format]
  LOADK R7 K23 ["%q"]
  MOVE R8 R0
  CALL R6 2 1
  CONCAT R4 R5 R6
  RETURN R4 1
  FASTCALL1 TYPE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K8 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K24 ["boolean"] [+8]
  MOVE R5 R4
  JUMPIFNOT R0 [+2]
  LOADK R6 K25 ["true"]
  JUMP [+1]
  LOADK R6 K26 ["false"]
  CONCAT R4 R5 R6
  RETURN R4 1
  MOVE R5 R4
  LOADK R6 K27 ["\"[inserializeable datatype:"]
  FASTCALL1 TYPE R0 [+3]
  MOVE R10 R0
  GETIMPORT R9 K8 [type]
  CALL R9 1 1
  MOVE R7 R9
  LOADK R8 K28 ["]\""]
  CONCAT R4 R5 R8
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  CAPTURE VAL R0
  RETURN R0 1
