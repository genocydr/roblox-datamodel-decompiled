MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["SafetyBubbleTransparencyPercent"]
  LOADN R3 95
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 -1
  RETURN R0 -1