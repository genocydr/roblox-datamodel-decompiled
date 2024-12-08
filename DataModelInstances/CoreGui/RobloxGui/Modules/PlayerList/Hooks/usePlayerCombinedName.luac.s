PROTO_0:
  GETUPVAL R2 0
  GETUPVAL R4 1
  JUMPIFNOT R4 [+6]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["Queries"]
  GETTABLEKS R3 R4 K1 ["userProfilesInExperienceNamesByUserIds"]
  JUMP [+5]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["Queries"]
  GETTABLEKS R3 R4 K2 ["userProfilesCombinedNameByUserIds"]
  DUPTABLE R4 K4 [{"variables"}]
  DUPTABLE R5 K6 [{"userIds"}]
  NEWTABLE R6 0 1
  MOVE R7 R0
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K5 ["userIds"]
  SETTABLEKS R5 R4 K3 ["variables"]
  CALL R2 2 1
  GETTABLEKS R4 R2 K7 ["data"]
  JUMPIFNOT R4 [+22]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+10]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["Selectors"]
  GETTABLEKS R3 R4 K9 ["getInExperienceCombinedNameFromId"]
  GETTABLEKS R4 R2 K7 ["data"]
  MOVE R5 R0
  CALL R3 2 1
  JUMP [+11]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["Selectors"]
  GETTABLEKS R3 R4 K10 ["getCombinedNameFromId"]
  GETTABLEKS R4 R2 K7 ["data"]
  MOVE R5 R0
  CALL R3 2 1
  JUMP [+1]
  LOADNIL R3
  OR R4 R3 R1
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["ApolloClient"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useQuery"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Workspace"]
  GETTABLEKS R5 R6 K6 ["Packages"]
  GETTABLEKS R4 R5 K10 ["UserProfiles"]
  CALL R3 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Workspace"]
  GETTABLEKS R7 R8 K6 ["Packages"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K12 ["FFlagInExperienceNameQueryEnabled"]
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1