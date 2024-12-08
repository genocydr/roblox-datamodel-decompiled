PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  LOADB R3 0
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["layout"]
  SETTABLEKS R1 R0 K2 ["layoutValues"]
  GETTABLEKS R2 R0 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["overrideStore"]
  JUMPIF R1 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["Store"]
  GETTABLEKS R1 R2 K0 ["new"]
  GETUPVAL R2 2
  NEWTABLE R3 0 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["store"]
  GETTABLEKS R2 R0 K3 ["props"]
  GETTABLEKS R1 R2 K7 ["overrideLocale"]
  JUMPIF R1 [+3]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K8 ["RobloxLocaleId"]
  GETUPVAL R2 4
  MOVE R3 R1
  CALL R2 1 1
  SETTABLEKS R2 R0 K9 ["localizationContext"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  LOADK R1 K1 ["ScreenGui"]
  DUPTABLE R2 K4 [{"AutoLocalize", "IgnoreGuiInset"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["AutoLocalize"]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["IgnoreGuiInset"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["props"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Children"]
  GETTABLE R3 R4 R5
  CALL R0 3 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K3 [{"isTenFootInterface", "render"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["isTenFootInterface"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  SETTABLEKS R3 R2 K2 ["render"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  LOADB R2 0
  GETTABLEKS R4 R0 K0 ["props"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Children"]
  GETTABLE R3 R4 R5
  JUMPIFEQKNIL R3 [+13]
  GETTABLEKS R5 R0 K0 ["props"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["Children"]
  GETTABLE R4 R5 R6
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K2 [+4]
  LOADK R3 K2 ["UnitTestContainer: no children provided, nothing will be tested"]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["StoreProvider"]
  DUPTABLE R3 K8 [{"store"}]
  GETTABLEKS R4 R0 K7 ["store"]
  SETTABLEKS R4 R3 K7 ["store"]
  DUPTABLE R4 K10 [{"LocaleProvider"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K12 [{"locale"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K13 ["RobloxLocaleId"]
  SETTABLEKS R8 R7 K11 ["locale"]
  DUPTABLE R8 K15 [{"StyleProvider"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K17 [{"LocalizationContextProvider"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K20 [{"localizationContext", "render"}]
  GETTABLEKS R15 R0 K18 ["localizationContext"]
  SETTABLEKS R15 R14 K18 ["localizationContext"]
  NEWCLOSURE R15 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K19 ["render"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["LocalizationContextProvider"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["StyleProvider"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K9 ["LocaleProvider"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["LocalizationService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["CorePackages"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K4 [game]
  LOADK R5 K7 ["CorePackages"]
  NAMECALL R3 R3 K6 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R3 K10 ["Workspace"]
  GETTABLEKS R6 R7 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["PurchasePromptDeps"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["Roact"]
  GETTABLEKS R6 R4 K14 ["Rodux"]
  GETTABLEKS R7 R4 K15 ["RoactRodux"]
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R3 K10 ["Workspace"]
  GETTABLEKS R10 R11 K11 ["Packages"]
  GETTABLEKS R9 R10 K16 ["IAPExperience"]
  CALL R8 1 1
  GETTABLEKS R10 R8 K17 ["Locale"]
  GETTABLEKS R9 R10 K18 ["LocaleProvider"]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R0 K19 ["Components"]
  GETTABLEKS R12 R13 K20 ["Connection"]
  GETTABLEKS R11 R12 K21 ["LayoutValuesProvider"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R0 K19 ["Components"]
  GETTABLEKS R13 R14 K20 ["Connection"]
  GETTABLEKS R12 R13 K22 ["LocalizationContextProvider"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R0 K23 ["Localization"]
  GETTABLEKS R13 R14 K24 ["getLocalizationContext"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R0 K25 ["Reducers"]
  GETTABLEKS R14 R15 K26 ["Reducer"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R0 K27 ["Services"]
  GETTABLEKS R15 R16 K28 ["LayoutValues"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R3 K10 ["Workspace"]
  GETTABLEKS R17 R18 K11 ["Packages"]
  GETTABLEKS R16 R17 K29 ["Style"]
  CALL R15 1 1
  GETTABLEKS R16 R15 K30 ["StyleProviderWithDefaultTheme"]
  GETTABLEKS R17 R5 K31 ["Component"]
  LOADK R19 K32 ["UnitTestContainer"]
  NAMECALL R17 R17 K33 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K34 [PROTO_0]
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R12
  SETTABLEKS R18 R17 K35 ["init"]
  DUPCLOSURE R18 K36 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLEKS R18 R17 K37 ["render"]
  RETURN R17 1
