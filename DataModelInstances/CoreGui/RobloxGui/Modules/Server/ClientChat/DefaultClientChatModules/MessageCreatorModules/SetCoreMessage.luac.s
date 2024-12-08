PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  MOVE R5 R0
  NAMECALL R1 R1 K0 ["GetMessageHeight"]
  CALL R1 4 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["Message"]
  GETTABLEKS R3 R0 K1 ["ExtraData"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R3 K2 ["Font"]
  JUMPIF R4 [+3]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["DefaultFont"]
  GETTABLEKS R5 R3 K4 ["TextSize"]
  JUMPIF R5 [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["ChatWindowTextSize"]
  GETTABLEKS R6 R3 K6 ["Color"]
  JUMPIF R6 [+3]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["DefaultMessageColor"]
  GETUPVAL R7 1
  MOVE R9 R2
  MOVE R10 R4
  MOVE R11 R5
  MOVE R12 R6
  NAMECALL R7 R7 K8 ["CreateBaseMessage"]
  CALL R7 5 2
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R8
  CAPTURE VAL R7
  NEWTABLE R10 0 0
  DUPTABLE R11 K11 [{"TextTransparency", "TextStrokeTransparency"}]
  DUPTABLE R12 K14 [{"FadedIn", "FadedOut"}]
  LOADN R13 0
  SETTABLEKS R13 R12 K12 ["FadedIn"]
  LOADN R13 1
  SETTABLEKS R13 R12 K13 ["FadedOut"]
  SETTABLEKS R12 R11 K9 ["TextTransparency"]
  DUPTABLE R12 K14 [{"FadedIn", "FadedOut"}]
  LOADK R13 K15 [0.75]
  SETTABLEKS R13 R12 K12 ["FadedIn"]
  LOADN R13 1
  SETTABLEKS R13 R12 K13 ["FadedOut"]
  SETTABLEKS R12 R11 K10 ["TextStrokeTransparency"]
  SETTABLE R11 R10 R8
  GETUPVAL R11 1
  MOVE R13 R10
  NAMECALL R11 R11 K16 ["CreateFadeFunctions"]
  CALL R11 2 3
  NEWTABLE R14 8 0
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K17 ["KEY_BASE_FRAME"]
  SETTABLE R7 R14 R15
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K18 ["KEY_BASE_MESSAGE"]
  SETTABLE R8 R14 R15
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K19 ["KEY_UPDATE_TEXT_FUNC"]
  LOADNIL R16
  SETTABLE R16 R14 R15
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K20 ["KEY_GET_HEIGHT"]
  SETTABLE R9 R14 R15
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K21 ["KEY_FADE_IN"]
  SETTABLE R11 R14 R15
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K22 ["KEY_FADE_OUT"]
  SETTABLE R12 R14 R15
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K23 ["KEY_UPDATE_ANIMATION"]
  SETTABLE R13 R14 R15
  RETURN R14 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  LOADK R4 K5 ["ChatSettings"]
  NAMECALL R2 R0 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K4 [require]
  LOADK R5 K7 ["ChatConstants"]
  NAMECALL R3 R0 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  LOADK R6 K8 ["Util"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  DUPCLOSURE R4 K9 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETGLOBAL R4 K10 ["CreateSetCoreMessageLabel"]
  NEWTABLE R4 2 0
  GETTABLEKS R5 R3 K11 ["KEY_MESSAGE_TYPE"]
  GETTABLEKS R6 R2 K12 ["MessageTypeSetCore"]
  SETTABLE R6 R4 R5
  GETTABLEKS R5 R3 K13 ["KEY_CREATOR_FUNCTION"]
  GETGLOBAL R6 K10 ["CreateSetCoreMessageLabel"]
  SETTABLE R6 R4 R5
  RETURN R4 1