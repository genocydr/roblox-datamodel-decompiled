PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["hasMicPermissions"]
  NAMECALL R1 R1 K1 ["init"]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R6 R0 K7 ["RobloxGui"]
  GETTABLEKS R5 R6 K8 ["Modules"]
  GETTABLEKS R4 R5 K9 ["Settings"]
  GETTABLEKS R3 R4 K10 ["getCamMicPermissions"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R8 R0 K7 ["RobloxGui"]
  GETTABLEKS R7 R8 K8 ["Modules"]
  GETTABLEKS R6 R7 K9 ["Settings"]
  GETTABLEKS R5 R6 K11 ["Resources"]
  GETTABLEKS R4 R5 K12 ["MicrophoneDevicePermissionsLogging"]
  CALL R3 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R1 K13 ["Workspace"]
  GETTABLEKS R8 R9 K14 ["Packages"]
  GETTABLEKS R7 R8 K15 ["PermissionsProtocol"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K15 ["PermissionsProtocol"]
  GETTABLEKS R4 R5 K16 ["default"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R9 R0 K7 ["RobloxGui"]
  GETTABLEKS R8 R9 K8 ["Modules"]
  GETTABLEKS R7 R8 K17 ["Flags"]
  GETTABLEKS R6 R7 K18 ["getFFlagMicrophoneDevicePermissionsPromptLogging"]
  CALL R5 1 1
  MOVE R6 R5
  CALL R6 0 1
  JUMPIFNOT R6 [+14]
  DUPCLOSURE R6 K19 [PROTO_0]
  CAPTURE VAL R3
  MOVE R7 R2
  MOVE R8 R6
  NEWTABLE R9 0 1
  GETTABLEKS R11 R4 K20 ["Permissions"]
  GETTABLEKS R10 R11 K21 ["MICROPHONE_ACCESS"]
  SETLIST R9 R10 1 [1]
  LOADB R10 1
  CALL R7 3 0
  RETURN R0 0