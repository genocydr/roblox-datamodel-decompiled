PROTO_0:
  GETIMPORT R2 K1 [require]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Workspace"]
  GETTABLEKS R4 R5 K3 ["Packages"]
  GETTABLEKS R3 R4 K4 ["GenericChallenges"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K5 ["Middleware"]
  GETTABLEKS R0 R1 K6 ["InitExperienceChallengeInterceptor"]
  MOVE R1 R0
  CALL R1 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  LOADK R3 K4 ["RobloxGui"]
  NAMECALL R1 R0 K5 ["WaitForChild"]
  CALL R1 2 1
  LOADK R4 K6 ["Modules"]
  NAMECALL R2 R1 K5 ["WaitForChild"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["CorePackages"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R5 K1 [game]
  GETTABLEKS R4 R5 K8 ["PlaceId"]
  LOADK R6 K9 ["#"]
  FASTCALL1 SELECT_VARARG R6 [+3]
  GETIMPORT R5 K11 [select]
  GETVARARGS R7 -1
  CALL R5 -1 1
  LOADN R6 0
  JUMPIFNOTLE R4 R6 [+11]
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+8]
  LOADN R7 1
  FASTCALL1 SELECT_VARARG R7 [+3]
  GETIMPORT R6 K11 [select]
  GETVARARGS R8 -1
  CALL R6 -1 1
  MOVE R4 R6
  GETIMPORT R6 K1 [game]
  LOADK R8 K12 ["EnableExperienceGenericChallengeRenderingOnLoadingScript"]
  LOADB R9 0
  NAMECALL R6 R6 K13 ["DefineFastFlag"]
  CALL R6 3 1
  JUMPIFNOT R6 [+6]
  GETIMPORT R7 K16 [coroutine.wrap]
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R3
  CALL R7 1 1
  CALL R7 0 0
  GETIMPORT R8 K19 [require]
  GETTABLEKS R11 R3 K20 ["Workspace"]
  GETTABLEKS R10 R11 K21 ["Packages"]
  GETTABLEKS R9 R10 K22 ["ExperienceLoadingScript"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K23 ["loadingScript"]
  GETIMPORT R8 K16 [coroutine.wrap]
  MOVE R9 R7
  CALL R8 1 1
  MOVE R9 R4
  LOADN R10 72
  CALL R8 2 0
  RETURN R0 0
