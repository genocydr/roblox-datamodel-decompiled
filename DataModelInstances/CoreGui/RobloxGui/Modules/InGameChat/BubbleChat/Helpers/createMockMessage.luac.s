PROTO_0:
  GETUPVAL R2 0
  ADDK R1 R2 K0 [1]
  SETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Dictionary"]
  GETTABLEKS R1 R2 K2 ["join"]
  DUPTABLE R2 K8 [{"name", "id", "userId", "text", "timestamp"}]
  LOADK R3 K9 ["Foo"]
  SETTABLEKS R3 R2 K3 ["name"]
  GETUPVAL R4 0
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K11 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["id"]
  LOADK R3 K12 ["1"]
  SETTABLEKS R3 R2 K5 ["userId"]
  LOADK R3 K13 ["Hello, World!"]
  SETTABLEKS R3 R2 K6 ["text"]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K7 ["timestamp"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  LOADN R2 0
  NEWCLOSURE R3 P0
  CAPTURE REF R2
  CAPTURE VAL R1
  CLOSEUPVALS R2
  RETURN R3 1
