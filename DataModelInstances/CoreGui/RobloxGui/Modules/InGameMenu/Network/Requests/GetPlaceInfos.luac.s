PROTO_0:
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K3 [tostring]
  CALL R7 1 1
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [inext] [-7]
  DUPTABLE R2 K5 [{"placeIds"}]
  SETTABLEKS R1 R2 K4 ["placeIds"]
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K6 ["makeQueryString"]
  CALL R3 2 1
  GETIMPORT R4 K9 [string.format]
  LOADK R5 K10 ["%s/v1/games/multiget-place-details?%s"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["GAME_URL"]
  MOVE R7 R3
  CALL R4 3 1
  MOVE R5 R0
  MOVE R6 R4
  LOADK R7 K12 ["GET"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Network"]
  GETTABLEKS R2 R3 K6 ["Url"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
