MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Workspace"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["AppCommonLib"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K9 ["Signal"]
  GETTABLEKS R2 R1 K10 ["new"]
  CALL R2 0 -1
  RETURN R2 -1
