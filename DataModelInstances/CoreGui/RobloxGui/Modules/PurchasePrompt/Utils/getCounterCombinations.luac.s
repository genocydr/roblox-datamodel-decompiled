PROTO_0:
  NEWTABLE R5 0 0
  JUMPIFEQKNIL R3 [+13]
  MOVE R9 R0
  MOVE R10 R3
  MOVE R11 R1
  MOVE R12 R2
  CONCAT R8 R9 R12
  FASTCALL2 TABLE_INSERT R5 R8 [+4]
  MOVE R7 R5
  GETIMPORT R6 K2 [table.insert]
  CALL R6 2 0
  JUMP [+10]
  MOVE R9 R0
  MOVE R10 R1
  MOVE R11 R2
  CONCAT R8 R9 R11
  FASTCALL2 TABLE_INSERT R5 R8 [+4]
  MOVE R7 R5
  GETIMPORT R6 K2 [table.insert]
  CALL R6 2 0
  JUMPIFEQKNIL R4 [+32]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R7 R4
  GETIMPORT R6 K4 [tostring]
  CALL R6 1 1
  JUMPIFEQKNIL R3 [+14]
  MOVE R10 R0
  MOVE R11 R3
  MOVE R12 R1
  MOVE R13 R6
  MOVE R14 R2
  CONCAT R9 R10 R14
  FASTCALL2 TABLE_INSERT R5 R9 [+4]
  MOVE R8 R5
  GETIMPORT R7 K2 [table.insert]
  CALL R7 2 0
  RETURN R5 1
  MOVE R10 R0
  MOVE R11 R1
  MOVE R12 R6
  MOVE R13 R2
  CONCAT R9 R10 R13
  FASTCALL2 TABLE_INSERT R5 R9 [+4]
  MOVE R8 R5
  GETIMPORT R7 K2 [table.insert]
  CALL R7 2 0
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1