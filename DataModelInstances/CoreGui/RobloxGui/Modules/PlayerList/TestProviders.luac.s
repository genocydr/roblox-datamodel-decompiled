PROTO_0:
  DUPTABLE R1 K2 [{"userId", "names"}]
  SETTABLEKS R0 R1 K0 ["userId"]
  DUPTABLE R2 K10 [{"alias", "combinedName", "contactName", "displayName", "username", "platformName", "inExperienceCombinedName"}]
  LOADK R4 K11 ["alias%*"]
  MOVE R6 R0
  NAMECALL R4 R4 K12 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K3 ["alias"]
  LOADK R4 K13 ["combinedName%*"]
  MOVE R6 R0
  NAMECALL R4 R4 K12 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K4 ["combinedName"]
  LOADK R4 K14 ["contactName%*"]
  MOVE R6 R0
  NAMECALL R4 R4 K12 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K5 ["contactName"]
  LOADK R4 K15 ["displayName%*"]
  MOVE R6 R0
  NAMECALL R4 R4 K12 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K6 ["displayName"]
  LOADK R4 K16 ["username%*"]
  MOVE R6 R0
  NAMECALL R4 R4 K12 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K7 ["username"]
  LOADK R4 K17 ["platformName%*"]
  MOVE R6 R0
  NAMECALL R4 R4 K12 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K8 ["platformName"]
  LOADK R4 K18 ["inExperienceCombinedName%*"]
  MOVE R6 R0
  NAMECALL R4 R4 K12 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K9 ["inExperienceCombinedName"]
  SETTABLEKS R2 R1 K1 ["names"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["map"]
  GETTABLEKS R5 R1 K1 ["userIds"]
  DUPCLOSURE R6 K2 [PROTO_0]
  CALL R4 2 1
  RETURN R4 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["userId"]
  FASTCALL1 TOSTRING R2 [+2]
  GETIMPORT R1 K2 [tostring]
  CALL R1 1 1
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["names"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Store"]
  GETTABLEKS R1 R2 K1 ["new"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  DUPTABLE R3 K3 [{"mockResolvers"}]
  DUPTABLE R4 K6 [{"Query", "UserProfile"}]
  DUPTABLE R5 K8 [{"userProfiles"}]
  DUPCLOSURE R6 K9 [PROTO_1]
  CAPTURE UPVAL U3
  SETTABLEKS R6 R5 K7 ["userProfiles"]
  SETTABLEKS R5 R4 K4 ["Query"]
  DUPTABLE R5 K12 [{"id", "names"}]
  DUPCLOSURE R6 K13 [PROTO_2]
  SETTABLEKS R6 R5 K10 ["id"]
  DUPCLOSURE R6 K14 [PROTO_3]
  SETTABLEKS R6 R5 K11 ["names"]
  SETTABLEKS R5 R4 K5 ["UserProfile"]
  SETTABLEKS R4 R3 K2 ["mockResolvers"]
  CALL R2 1 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K15 ["createElement"]
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K16 ["StoreProvider"]
  DUPTABLE R5 K18 [{"store"}]
  GETTABLEKS R7 R0 K17 ["store"]
  OR R6 R7 R1
  SETTABLEKS R6 R5 K17 ["store"]
  DUPTABLE R6 K20 [{"ApolloProvider"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K15 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K22 [{"client"}]
  GETTABLEKS R11 R0 K21 ["client"]
  OR R10 R11 R2
  SETTABLEKS R10 R9 K21 ["client"]
  DUPTABLE R10 K24 [{"LayoutValuesProvider"}]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K15 ["createElement"]
  GETUPVAL R12 7
  DUPTABLE R13 K26 [{"layoutValues"}]
  GETTABLEKS R14 R0 K25 ["layoutValues"]
  JUMPIF R14 [+3]
  GETUPVAL R14 8
  LOADB R15 0
  CALL R14 1 1
  SETTABLEKS R14 R13 K25 ["layoutValues"]
  DUPTABLE R14 K28 [{"ThemeProvider"}]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K15 ["createElement"]
  GETUPVAL R18 9
  GETTABLEKS R17 R18 K29 ["Style"]
  GETTABLEKS R16 R17 K30 ["Provider"]
  NEWTABLE R17 0 0
  GETTABLEKS R18 R0 K31 ["children"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K27 ["ThemeProvider"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["LayoutValuesProvider"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K19 ["ApolloProvider"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["UIBlox"]
  CALL R4 1 1
  GETIMPORT R6 K12 [script]
  GETTABLEKS R5 R6 K13 ["Parent"]
  GETTABLEKS R6 R5 K14 ["Reducers"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K15 ["Reducer"]
  CALL R7 1 1
  GETIMPORT R10 K12 [script]
  GETTABLEKS R9 R10 K13 ["Parent"]
  GETTABLEKS R8 R9 K16 ["Components"]
  GETTABLEKS R9 R8 K17 ["Connection"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R9 K18 ["LayoutValues"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K19 ["Provider"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K6 ["Packages"]
  GETTABLEKS R13 R14 K20 ["ApolloClient"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K21 ["ApolloProvider"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K22 ["Workspace"]
  GETTABLEKS R16 R17 K6 ["Packages"]
  GETTABLEKS R15 R16 K23 ["GraphQLServer"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K24 ["ApolloClientTestUtils"]
  GETTABLEKS R16 R15 K25 ["mockApolloClient"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R20 R0 K6 ["Packages"]
  GETTABLEKS R19 R20 K26 ["LuauPolyfill"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K27 ["Array"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R5 K28 ["CreateLayoutValues"]
  CALL R18 1 1
  DUPCLOSURE R19 K29 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R4
  RETURN R19 1
