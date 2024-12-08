PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+15]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["LocaleId"]
  GETUPVAL R1 1
  JUMPIFEQ R0 R1 [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["LocaleId"]
  SETUPVAL R0 1
  GETUPVAL R0 2
  GETUPVAL R2 1
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  LOADNIL R0
  SETUPVAL R0 0
  LOADNIL R0
  SETUPVAL R0 1
  GETUPVAL R0 2
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 2
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIF R0 [+39]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K0 ["LocalPlayer"]
  SETUPVAL R0 1
  GETUPVAL R0 1
  JUMPIFNOT R0 [+33]
  GETUPVAL R0 3
  GETUPVAL R2 1
  NAMECALL R0 R0 K1 ["GetTranslatorForPlayer"]
  CALL R0 2 1
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+15]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["LocaleId"]
  GETUPVAL R1 4
  JUMPIFEQ R0 R1 [+10]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["LocaleId"]
  SETUPVAL R0 4
  GETUPVAL R0 5
  GETUPVAL R2 4
  NAMECALL R0 R0 K3 ["Fire"]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R2 K2 ["LocaleId"]
  NAMECALL R0 R0 K4 ["GetPropertyChangedSignal"]
  CALL R0 2 1
  GETUPVAL R2 7
  NAMECALL R0 R0 K5 ["Connect"]
  CALL R0 2 1
  SETUPVAL R0 6
  GETUPVAL R0 0
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R2 R1 K0 ["connection"]
  NAMECALL R2 R2 K1 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLE R3 R2 R0
  RETURN R0 0

PROTO_4:
  GETIMPORT R2 K1 [game]
  GETUPVAL R4 0
  NAMECALL R2 R2 K2 ["IsAncestorOf"]
  CALL R2 2 1
  JUMPIF R2 [+18]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["hasBeenAdded"]
  JUMPIFNOT R2 [+18]
  GETUPVAL R2 0
  GETUPVAL R4 2
  GETTABLE R3 R4 R2
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R4 R3 K4 ["connection"]
  NAMECALL R4 R4 K5 ["Disconnect"]
  CALL R4 1 0
  GETUPVAL R4 2
  LOADNIL R5
  SETTABLE R5 R4 R2
  RETURN R0 0
  GETUPVAL R2 1
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["hasBeenAdded"]
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  RETURN R2 1

PROTO_6:
  SETTABLEKS R1 R0 K0 ["context"]
  SETTABLEKS R2 R0 K1 ["text"]
  RETURN R0 0

PROTO_7:
  DUPTABLE R3 K1 [{"hasBeenAdded"}]
  GETIMPORT R4 K3 [game]
  MOVE R6 R0
  NAMECALL R4 R4 K4 ["IsAncestorOf"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K0 ["hasBeenAdded"]
  SETTABLEKS R1 R3 K5 ["context"]
  SETTABLEKS R2 R3 K6 ["text"]
  GETTABLEKS R4 R0 K7 ["AncestryChanged"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  NAMECALL R4 R4 K8 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["connection"]
  RETURN R3 1

PROTO_8:
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  JUMPIFNOTEQKNIL R3 [+9]
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 1
  SETTABLE R4 R3 R0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  SETTABLEKS R1 R3 K0 ["context"]
  SETTABLEKS R2 R3 K1 ["text"]
  RETURN R0 0

PROTO_9:
  LOADNIL R0
  SETUPVAL R0 0
  LOADNIL R0
  SETUPVAL R0 1
  GETUPVAL R0 2
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 2
  GETUPVAL R0 0
  JUMPIF R0 [+39]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["LocalPlayer"]
  SETUPVAL R0 1
  GETUPVAL R0 1
  JUMPIFNOT R0 [+33]
  GETUPVAL R0 4
  GETUPVAL R2 1
  NAMECALL R0 R0 K2 ["GetTranslatorForPlayer"]
  CALL R0 2 1
  SETUPVAL R0 0
  GETUPVAL R0 1
  JUMPIFNOT R0 [+15]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["LocaleId"]
  GETUPVAL R1 5
  JUMPIFEQ R0 R1 [+10]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["LocaleId"]
  SETUPVAL R0 5
  GETUPVAL R0 6
  GETUPVAL R2 5
  NAMECALL R0 R0 K4 ["Fire"]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R2 K3 ["LocaleId"]
  NAMECALL R0 R0 K5 ["GetPropertyChangedSignal"]
  CALL R0 2 1
  GETUPVAL R2 7
  NAMECALL R0 R0 K6 ["Connect"]
  CALL R0 2 1
  SETUPVAL R0 2
  RETURN R0 0

PROTO_10:
  GETUPVAL R4 0
  JUMPIF R4 [+39]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["LocalPlayer"]
  SETUPVAL R4 1
  GETUPVAL R4 1
  JUMPIFNOT R4 [+33]
  GETUPVAL R4 3
  GETUPVAL R6 1
  NAMECALL R4 R4 K1 ["GetTranslatorForPlayer"]
  CALL R4 2 1
  SETUPVAL R4 0
  GETUPVAL R4 1
  JUMPIFNOT R4 [+15]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["LocaleId"]
  GETUPVAL R5 4
  JUMPIFEQ R4 R5 [+10]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["LocaleId"]
  SETUPVAL R4 4
  GETUPVAL R4 5
  GETUPVAL R6 4
  NAMECALL R4 R4 K3 ["Fire"]
  CALL R4 2 0
  GETUPVAL R4 1
  LOADK R6 K2 ["LocaleId"]
  NAMECALL R4 R4 K4 ["GetPropertyChangedSignal"]
  CALL R4 2 1
  GETUPVAL R6 7
  NAMECALL R4 R4 K5 ["Connect"]
  CALL R4 2 1
  SETUPVAL R4 6
  GETUPVAL R3 0
  JUMPIFNOT R3 [+6]
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R4 R3 K6 ["RobloxOnlyTranslate"]
  CALL R4 3 -1
  RETURN R4 -1
  RETURN R2 1

PROTO_11:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_NEXT R0
  GETUPVAL R5 1
  GETTABLEKS R7 R4 K2 ["context"]
  GETTABLEKS R8 R4 K3 ["text"]
  NAMECALL R5 R5 K4 ["TranslateGameText"]
  CALL R5 3 1
  SETTABLEKS R5 R3 K5 ["Text"]
  FORGLOOP R0 2 [-11]
  RETURN R0 0

PROTO_12:
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R0 K0 ["TranslateGameText"]
  CALL R4 3 1
  SETTABLEKS R4 R1 K1 ["Text"]
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  JUMPIFNOTEQKNIL R4 [+9]
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R3
  CALL R5 3 1
  SETTABLE R5 R4 R1
  RETURN R3 1
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  SETTABLEKS R2 R4 K2 ["context"]
  SETTABLEKS R3 R4 K3 ["text"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LocalizationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["CoreGui"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADNIL R3
  LOADNIL R4
  LOADNIL R5
  LOADNIL R6
  GETIMPORT R7 K8 [Instance.new]
  LOADK R8 K9 ["BindableEvent"]
  CALL R7 1 1
  NEWCLOSURE R8 P0
  CAPTURE REF R4
  CAPTURE REF R5
  CAPTURE VAL R7
  NEWCLOSURE R9 P1
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE REF R6
  NEWCLOSURE R10 P2
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE REF R5
  CAPTURE VAL R7
  CAPTURE REF R6
  CAPTURE VAL R8
  NEWTABLE R11 0 0
  DUPCLOSURE R12 K10 [PROTO_3]
  CAPTURE VAL R11
  DUPCLOSURE R13 K11 [PROTO_5]
  CAPTURE VAL R11
  DUPCLOSURE R14 K12 [PROTO_6]
  DUPCLOSURE R15 K13 [PROTO_7]
  CAPTURE VAL R11
  DUPCLOSURE R16 K14 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R15
  LOADK R19 K15 ["LocalPlayer"]
  NAMECALL R17 R1 K16 ["GetPropertyChangedSignal"]
  CALL R17 2 1
  NEWCLOSURE R19 P8
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE REF R6
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE REF R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  NAMECALL R17 R17 K17 ["Connect"]
  CALL R17 2 0
  NEWTABLE R17 4 0
  GETTABLEKS R18 R7 K18 ["Event"]
  SETTABLEKS R18 R17 K19 ["LocaleChanged"]
  NEWCLOSURE R18 P9
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE REF R5
  CAPTURE VAL R7
  CAPTURE REF R6
  CAPTURE VAL R8
  SETTABLEKS R18 R17 K20 ["TranslateGameText"]
  DUPCLOSURE R18 K21 [PROTO_11]
  CAPTURE VAL R11
  CAPTURE VAL R17
  GETTABLEKS R19 R0 K22 ["AutoTranslateWillRun"]
  MOVE R21 R18
  NAMECALL R19 R19 K17 ["Connect"]
  CALL R19 2 0
  DUPCLOSURE R19 K23 [PROTO_12]
  CAPTURE VAL R11
  CAPTURE VAL R15
  SETTABLEKS R19 R17 K24 ["TranslateAndRegister"]
  CLOSEUPVALS R3
  RETURN R17 1