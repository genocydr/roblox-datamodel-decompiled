PROTO_0:
  LOADK R1 K0 [0.75]
  JUMPIFNOTLT R1 R0 [+3]
  LOADN R1 8
  RETURN R1 1
  LOADK R1 K1 [0.5]
  JUMPIFNOTLT R1 R0 [+3]
  LOADN R1 6
  RETURN R1 1
  LOADK R1 K2 [0.25]
  JUMPIFNOTLT R1 R0 [+3]
  LOADN R1 4
  RETURN R1 1
  LOADN R1 0
  JUMPIFNOTLT R1 R0 [+3]
  LOADN R1 2
  RETURN R1 1
  LOADN R1 0
  RETURN R1 1

PROTO_1:
  SUB R4 R2 R1
  DIVK R3 R4 K0 [30]
  DIVK R6 R1 K0 [30]
  SUB R5 R0 R6
  DIV R4 R5 R3
  RETURN R4 1

PROTO_2:
  LOADB R3 0
  DIVK R4 R1 K0 [30]
  JUMPIFNOTLE R4 R0 [+6]
  DIVK R4 R2 K0 [30]
  JUMPIFLE R0 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_3:
  JUMPIFNOT R2 [+1]
  SUBRK R0 R0 K0 [0.266666666666667]
  MOVE R5 R0
  LOADB R4 0
  LOADN R6 0
  JUMPIFNOTLE R6 R5 [+6]
  LOADK R6 K1 [0.166666666666667]
  JUMPIFLE R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+18]
  MOVE R5 R0
  SUBK R6 R5 K2 [0]
  DIVK R4 R6 K1 [0.166666666666667]
  LOADN R6 16
  LOADN R8 6
  MUL R7 R8 R4
  ADD R5 R6 R7
  GETTABLEKS R6 R1 K3 ["size"]
  GETIMPORT R7 K6 [UDim2.new]
  LOADN R8 0
  MOVE R9 R5
  LOADN R10 0
  MOVE R11 R5
  CALL R7 4 -1
  CALL R6 -1 0
  RETURN R0 0
  MOVE R5 R0
  LOADB R4 0
  LOADK R6 K1 [0.166666666666667]
  JUMPIFNOTLE R6 R5 [+6]
  LOADK R6 K0 [0.266666666666667]
  JUMPIFLE R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+17]
  MOVE R5 R0
  SUBK R6 R5 K1 [0.166666666666667]
  DIVK R4 R6 K7 [0.1]
  LOADN R7 2
  MUL R6 R7 R4
  SUBRK R5 R8 K6 [UDim2.new]
  GETTABLEKS R6 R1 K3 ["size"]
  GETIMPORT R7 K6 [UDim2.new]
  LOADN R8 0
  MOVE R9 R5
  LOADN R10 0
  MOVE R11 R5
  CALL R7 4 -1
  CALL R6 -1 0
  RETURN R0 0
  LOADN R4 0
  JUMPIFNOTLT R0 R4 [+14]
  GETTABLEKS R4 R1 K3 ["size"]
  GETIMPORT R5 K6 [UDim2.new]
  LOADN R6 0
  LOADN R7 16
  LOADN R8 0
  LOADN R9 16
  CALL R5 4 -1
  CALL R4 -1 0
  MOVE R4 R3
  CALL R4 0 0
  RETURN R0 0
  GETTABLEKS R4 R1 K3 ["size"]
  GETIMPORT R5 K6 [UDim2.new]
  LOADN R6 0
  LOADN R7 20
  LOADN R8 0
  LOADN R9 20
  CALL R5 4 -1
  CALL R4 -1 0
  MOVE R4 R3
  CALL R4 0 0
  RETURN R0 0

PROTO_4:
  LOADB R4 0
  LOADN R5 0
  JUMPIFNOTLE R5 R0 [+6]
  LOADK R5 K0 [0.1]
  JUMPIFLE R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+17]
  SUBK R5 R0 K1 [0]
  DIVK R4 R5 K0 [0.1]
  LOADN R6 20
  LOADN R8 4
  MUL R7 R8 R4
  ADD R5 R6 R7
  GETTABLEKS R6 R1 K2 ["size"]
  GETIMPORT R7 K5 [UDim2.new]
  LOADN R8 0
  MOVE R9 R5
  LOADN R10 0
  MOVE R11 R5
  CALL R7 4 -1
  CALL R6 -1 0
  RETURN R0 0
  LOADB R4 0
  LOADK R5 K0 [0.1]
  JUMPIFNOTLE R5 R0 [+6]
  LOADK R5 K6 [0.2]
  JUMPIFLE R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+16]
  SUBK R5 R0 K0 [0.1]
  DIVK R4 R5 K0 [0.1]
  LOADN R7 4
  MUL R6 R7 R4
  SUBRK R5 R7 K6 [0.2]
  GETTABLEKS R6 R1 K2 ["size"]
  GETIMPORT R7 K5 [UDim2.new]
  LOADN R8 0
  MOVE R9 R5
  LOADN R10 0
  MOVE R11 R5
  CALL R7 4 -1
  CALL R6 -1 0
  RETURN R0 0
  GETTABLEKS R4 R1 K2 ["size"]
  GETIMPORT R5 K5 [UDim2.new]
  LOADN R6 0
  LOADN R7 20
  LOADN R8 0
  LOADN R9 20
  CALL R5 4 -1
  CALL R4 -1 0
  MOVE R4 R3
  CALL R4 0 0
  RETURN R0 0

PROTO_5:
  LOADB R4 0
  LOADN R5 0
  JUMPIFNOTLE R5 R0 [+6]
  LOADK R5 K0 [0.1]
  JUMPIFLE R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+14]
  SUBK R5 R0 K1 [0]
  DIVK R4 R5 K0 [0.1]
  GETTABLEKS R5 R1 K2 ["positionOffset"]
  GETIMPORT R6 K5 [UDim2.new]
  LOADN R7 0
  LOADN R9 252
  MUL R8 R9 R4
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 -1
  CALL R5 -1 0
  RETURN R0 0
  LOADB R4 0
  LOADK R5 K0 [0.1]
  JUMPIFNOTLE R5 R0 [+6]
  LOADK R5 K6 [0.2]
  JUMPIFLE R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+16]
  SUBK R5 R0 K0 [0.1]
  DIVK R4 R5 K0 [0.1]
  GETTABLEKS R5 R1 K2 ["positionOffset"]
  GETIMPORT R6 K5 [UDim2.new]
  LOADN R7 0
  LOADN R9 252
  LOADN R11 12
  MUL R10 R11 R4
  ADD R8 R9 R10
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 -1
  CALL R5 -1 0
  RETURN R0 0
  LOADB R4 0
  LOADK R5 K6 [0.2]
  JUMPIFNOTLE R5 R0 [+6]
  LOADK R5 K7 [0.266666666666667]
  JUMPIFLE R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+15]
  SUBK R5 R0 K6 [0.2]
  DIVK R4 R5 K8 [0.0666666666666667]
  GETTABLEKS R5 R1 K2 ["positionOffset"]
  GETIMPORT R6 K5 [UDim2.new]
  LOADN R7 0
  LOADN R10 16
  MUL R9 R10 R4
  SUBRK R8 R9 K9 [8]
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 -1
  CALL R5 -1 0
  RETURN R0 0
  LOADB R4 0
  LOADK R5 K7 [0.266666666666667]
  JUMPIFNOTLE R5 R0 [+6]
  LOADK R5 K10 [0.333333333333333]
  JUMPIFLE R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+16]
  SUBK R5 R0 K7 [0.266666666666667]
  DIVK R4 R5 K8 [0.0666666666666667]
  GETTABLEKS R5 R1 K2 ["positionOffset"]
  GETIMPORT R6 K5 [UDim2.new]
  LOADN R7 0
  LOADN R9 248
  LOADN R11 16
  MUL R10 R11 R4
  ADD R8 R9 R10
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 -1
  CALL R5 -1 0
  RETURN R0 0
  LOADB R4 0
  LOADK R5 K10 [0.333333333333333]
  JUMPIFNOTLE R5 R0 [+6]
  LOADK R5 K11 [0.4]
  JUMPIFLE R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+15]
  SUBK R5 R0 K10 [0.333333333333333]
  DIVK R4 R5 K8 [0.0666666666666667]
  GETTABLEKS R5 R1 K2 ["positionOffset"]
  GETIMPORT R6 K5 [UDim2.new]
  LOADN R7 0
  LOADN R10 16
  MUL R9 R10 R4
  SUBRK R8 R9 K9 [8]
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 -1
  CALL R5 -1 0
  RETURN R0 0
  LOADB R4 0
  LOADK R5 K11 [0.4]
  JUMPIFNOTLE R5 R0 [+6]
  LOADK R5 K12 [0.466666666666667]
  JUMPIFLE R0 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+16]
  SUBK R5 R0 K11 [0.4]
  DIVK R4 R5 K8 [0.0666666666666667]
  GETTABLEKS R5 R1 K2 ["positionOffset"]
  GETIMPORT R6 K5 [UDim2.new]
  LOADN R7 0
  LOADN R9 248
  LOADN R11 8
  MUL R10 R11 R4
  ADD R8 R9 R10
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 -1
  CALL R5 -1 0
  RETURN R0 0
  GETTABLEKS R4 R1 K2 ["positionOffset"]
  GETIMPORT R5 K5 [UDim2.new]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  CALL R5 4 -1
  CALL R4 -1 0
  MOVE R4 R3
  CALL R4 0 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R2 K2 [UDim2.new]
  LOADN R3 0
  LOADN R4 2
  LOADN R5 0
  LOADN R6 2
  CALL R2 4 1
  ADD R1 R0 R2
  RETURN R1 1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createBinding"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  LOADN R4 16
  LOADN R5 0
  LOADN R6 16
  CALL R2 4 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K4 ["sizeBinding"]
  SETTABLEKS R2 R0 K5 ["sizeBindingUpdate"]
  GETTABLEKS R1 R0 K4 ["sizeBinding"]
  DUPCLOSURE R3 K6 [PROTO_6]
  NAMECALL R1 R1 K7 ["map"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K8 ["largerSizeBinding"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createBinding"]
  GETIMPORT R2 K3 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  CALL R2 4 -1
  CALL R1 -1 2
  SETTABLEKS R1 R0 K9 ["positionOffsetBinding"]
  SETTABLEKS R2 R0 K10 ["positionOffsetBindingUpdate"]
  DUPTABLE R1 K13 [{"size", "positionOffset"}]
  GETTABLEKS R2 R0 K5 ["sizeBindingUpdate"]
  SETTABLEKS R2 R1 K11 ["size"]
  GETTABLEKS R2 R0 K10 ["positionOffsetBindingUpdate"]
  SETTABLEKS R2 R1 K12 ["positionOffset"]
  SETTABLEKS R1 R0 K14 ["updateBindings"]
  LOADNIL R1
  SETTABLEKS R1 R0 K15 ["animationStartTime"]
  LOADNIL R1
  SETTABLEKS R1 R0 K16 ["animationFunction"]
  LOADB R1 0
  SETTABLEKS R1 R0 K17 ["reverseAnimation"]
  LOADNIL R1
  SETTABLEKS R1 R0 K18 ["renderSteppedConnection"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["fillFraction"]
  LOADN R4 1
  JUMPIFNOTLE R4 R3 [+3]
  GETUPVAL R2 0
  JUMPIF R2 [+1]
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["createElement"]
  LOADK R4 K3 ["Frame"]
  DUPTABLE R5 K8 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency"}]
  GETTABLEKS R6 R0 K9 ["sizeBinding"]
  SETTABLEKS R6 R5 K4 ["Size"]
  GETTABLEKS R6 R1 K5 ["Position"]
  SETTABLEKS R6 R5 K5 ["Position"]
  GETTABLEKS R6 R1 K6 ["AnchorPoint"]
  SETTABLEKS R6 R5 K6 ["AnchorPoint"]
  LOADN R6 1
  SETTABLEKS R6 R5 K7 ["BackgroundTransparency"]
  DUPTABLE R6 K11 [{"PositionOffsetFrame"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["createElement"]
  LOADK R8 K3 ["Frame"]
  DUPTABLE R9 K14 [{"Position", "Size", "BorderSizePixel", "BackgroundColor3"}]
  GETTABLEKS R10 R0 K15 ["positionOffsetBinding"]
  SETTABLEKS R10 R9 K5 ["Position"]
  GETIMPORT R10 K18 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K4 ["Size"]
  LOADN R10 0
  SETTABLEKS R10 R9 K12 ["BorderSizePixel"]
  GETUPVAL R10 3
  SETTABLEKS R10 R9 K13 ["BackgroundColor3"]
  DUPTABLE R10 K27 [{"OuterRing", "InnerRing", "FillRingRotationFrame", "EdgeBlockers", "TopLeftFill", "BottomLeftFill", "BottomRightFill", "TopRightFill"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K31 [{"Image", "Size", "ImageColor3", "BackgroundTransparency", "ZIndex"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K32 ["Images"]
  GETTABLEKS R14 R15 K33 ["CircleCutout"]
  SETTABLEKS R14 R13 K28 ["Image"]
  GETIMPORT R14 K18 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Size"]
  GETTABLEKS R14 R1 K34 ["BackgroundColor"]
  SETTABLEKS R14 R13 K29 ["ImageColor3"]
  LOADN R14 1
  SETTABLEKS R14 R13 K7 ["BackgroundTransparency"]
  LOADN R14 10
  SETTABLEKS R14 R13 K30 ["ZIndex"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["OuterRing"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K35 [{"Image", "Size", "Position", "AnchorPoint", "ImageColor3", "BackgroundTransparency", "ZIndex"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K32 ["Images"]
  GETTABLEKS R14 R15 K36 ["Circle"]
  SETTABLEKS R14 R13 K28 ["Image"]
  GETIMPORT R14 K18 [UDim2.new]
  LOADN R15 1
  LOADN R16 252
  LOADN R17 1
  LOADN R18 252
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Size"]
  GETIMPORT R14 K18 [UDim2.new]
  LOADK R15 K37 [0.5]
  LOADN R16 0
  LOADK R17 K37 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K5 ["Position"]
  GETIMPORT R14 K39 [Vector2.new]
  LOADK R15 K37 [0.5]
  LOADK R16 K37 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K6 ["AnchorPoint"]
  GETTABLEKS R14 R1 K34 ["BackgroundColor"]
  SETTABLEKS R14 R13 K29 ["ImageColor3"]
  LOADN R14 1
  SETTABLEKS R14 R13 K7 ["BackgroundTransparency"]
  LOADN R14 10
  SETTABLEKS R14 R13 K30 ["ZIndex"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["InnerRing"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K2 ["createElement"]
  LOADK R12 K3 ["Frame"]
  DUPTABLE R13 K41 [{"BackgroundTransparency", "Size", "Position", "Rotation", "ZIndex"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K7 ["BackgroundTransparency"]
  GETIMPORT R14 K18 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Size"]
  GETIMPORT R14 K18 [UDim2.new]
  LOADK R15 K37 [0.5]
  LOADN R16 0
  LOADK R17 K37 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K5 ["Position"]
  GETTABLEKS R15 R1 K1 ["fillFraction"]
  MULK R14 R15 K42 [360]
  SETTABLEKS R14 R13 K40 ["Rotation"]
  GETTABLEKS R15 R1 K1 ["fillFraction"]
  LOADK R16 K43 [0.75]
  JUMPIFNOTLT R16 R15 [+3]
  LOADN R14 8
  JUMP [+16]
  LOADK R16 K37 [0.5]
  JUMPIFNOTLT R16 R15 [+3]
  LOADN R14 6
  JUMP [+11]
  LOADK R16 K44 [0.25]
  JUMPIFNOTLT R16 R15 [+3]
  LOADN R14 4
  JUMP [+6]
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+3]
  LOADN R14 2
  JUMP [+1]
  LOADN R14 0
  SETTABLEKS R14 R13 K30 ["ZIndex"]
  DUPTABLE R14 K46 [{"FillRing"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K47 [{"Image", "Size", "AnchorPoint", "ImageColor3", "BackgroundTransparency"}]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K32 ["Images"]
  GETTABLEKS R18 R19 K48 ["QuarterCircle"]
  SETTABLEKS R18 R17 K28 ["Image"]
  GETTABLEKS R18 R0 K49 ["largerSizeBinding"]
  SETTABLEKS R18 R17 K4 ["Size"]
  GETIMPORT R18 K39 [Vector2.new]
  LOADK R19 K37 [0.5]
  LOADK R20 K37 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K6 ["AnchorPoint"]
  SETTABLEKS R2 R17 K29 ["ImageColor3"]
  LOADN R18 1
  SETTABLEKS R18 R17 K7 ["BackgroundTransparency"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K45 ["FillRing"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K21 ["FillRingRotationFrame"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K2 ["createElement"]
  LOADK R12 K3 ["Frame"]
  DUPTABLE R13 K50 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K7 ["BackgroundTransparency"]
  GETIMPORT R14 K18 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Size"]
  LOADN R14 10
  SETTABLEKS R14 R13 K30 ["ZIndex"]
  DUPTABLE R14 K55 [{"Top", "Right", "Bottom", "Left"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K2 ["createElement"]
  LOADK R16 K3 ["Frame"]
  DUPTABLE R17 K56 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R18 K39 [Vector2.new]
  LOADK R19 K37 [0.5]
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K6 ["AnchorPoint"]
  GETIMPORT R18 K18 [UDim2.new]
  LOADK R19 K37 [0.5]
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K5 ["Position"]
  GETIMPORT R18 K18 [UDim2.new]
  LOADN R19 1
  LOADN R20 4
  LOADN R21 0
  LOADN R22 2
  CALL R18 4 1
  SETTABLEKS R18 R17 K4 ["Size"]
  GETTABLEKS R18 R1 K34 ["BackgroundColor"]
  SETTABLEKS R18 R17 K13 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K12 ["BorderSizePixel"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K51 ["Top"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K2 ["createElement"]
  LOADK R16 K3 ["Frame"]
  DUPTABLE R17 K56 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R18 K39 [Vector2.new]
  LOADN R19 0
  LOADK R20 K37 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K6 ["AnchorPoint"]
  GETIMPORT R18 K18 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADK R21 K37 [0.5]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K5 ["Position"]
  GETIMPORT R18 K18 [UDim2.new]
  LOADN R19 0
  LOADN R20 2
  LOADN R21 1
  LOADN R22 4
  CALL R18 4 1
  SETTABLEKS R18 R17 K4 ["Size"]
  GETTABLEKS R18 R1 K34 ["BackgroundColor"]
  SETTABLEKS R18 R17 K13 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K12 ["BorderSizePixel"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K52 ["Right"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K2 ["createElement"]
  LOADK R16 K3 ["Frame"]
  DUPTABLE R17 K56 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R18 K39 [Vector2.new]
  LOADK R19 K37 [0.5]
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K6 ["AnchorPoint"]
  GETIMPORT R18 K18 [UDim2.new]
  LOADK R19 K37 [0.5]
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K5 ["Position"]
  GETIMPORT R18 K18 [UDim2.new]
  LOADN R19 1
  LOADN R20 4
  LOADN R21 0
  LOADN R22 2
  CALL R18 4 1
  SETTABLEKS R18 R17 K4 ["Size"]
  GETTABLEKS R18 R1 K34 ["BackgroundColor"]
  SETTABLEKS R18 R17 K13 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K12 ["BorderSizePixel"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K53 ["Bottom"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K2 ["createElement"]
  LOADK R16 K3 ["Frame"]
  DUPTABLE R17 K56 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R18 K39 [Vector2.new]
  LOADN R19 1
  LOADK R20 K37 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K6 ["AnchorPoint"]
  GETIMPORT R18 K18 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADK R21 K37 [0.5]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K5 ["Position"]
  GETIMPORT R18 K18 [UDim2.new]
  LOADN R19 0
  LOADN R20 2
  LOADN R21 1
  LOADN R22 4
  CALL R18 4 1
  SETTABLEKS R18 R17 K4 ["Size"]
  GETTABLEKS R18 R1 K34 ["BackgroundColor"]
  SETTABLEKS R18 R17 K13 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K12 ["BorderSizePixel"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K54 ["Left"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["EdgeBlockers"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K2 ["createElement"]
  LOADK R12 K3 ["Frame"]
  DUPTABLE R13 K57 [{"Size", "BackgroundColor3", "BorderSizePixel", "ZIndex"}]
  GETIMPORT R14 K18 [UDim2.new]
  LOADK R15 K37 [0.5]
  LOADN R16 0
  LOADK R17 K37 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Size"]
  GETTABLEKS R15 R1 K1 ["fillFraction"]
  LOADN R16 1
  JUMPIFNOTLE R16 R15 [+3]
  MOVE R14 R2
  JUMPIF R14 [+1]
  GETUPVAL R14 3
  SETTABLEKS R14 R13 K13 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K12 ["BorderSizePixel"]
  GETTABLEKS R15 R1 K1 ["fillFraction"]
  LOADN R16 1
  JUMPIFNOTLE R16 R15 [+3]
  LOADN R14 9
  JUMP [+1]
  LOADN R14 7
  SETTABLEKS R14 R13 K30 ["ZIndex"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["TopLeftFill"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K2 ["createElement"]
  LOADK R12 K3 ["Frame"]
  DUPTABLE R13 K58 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel", "ZIndex"}]
  GETIMPORT R14 K18 [UDim2.new]
  LOADK R15 K37 [0.5]
  LOADN R16 0
  LOADK R17 K37 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Size"]
  GETIMPORT R14 K18 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADK R17 K37 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K5 ["Position"]
  GETTABLEKS R15 R1 K1 ["fillFraction"]
  LOADK R16 K43 [0.75]
  JUMPIFNOTLE R16 R15 [+3]
  MOVE R14 R2
  JUMPIF R14 [+1]
  GETUPVAL R14 3
  SETTABLEKS R14 R13 K13 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K12 ["BorderSizePixel"]
  GETTABLEKS R15 R1 K1 ["fillFraction"]
  LOADK R16 K43 [0.75]
  JUMPIFNOTLE R16 R15 [+3]
  LOADN R14 9
  JUMP [+1]
  LOADN R14 5
  SETTABLEKS R14 R13 K30 ["ZIndex"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["BottomLeftFill"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K2 ["createElement"]
  LOADK R12 K3 ["Frame"]
  DUPTABLE R13 K58 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel", "ZIndex"}]
  GETIMPORT R14 K18 [UDim2.new]
  LOADK R15 K37 [0.5]
  LOADN R16 0
  LOADK R17 K37 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Size"]
  GETIMPORT R14 K18 [UDim2.new]
  LOADK R15 K37 [0.5]
  LOADN R16 0
  LOADK R17 K37 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K5 ["Position"]
  GETTABLEKS R15 R1 K1 ["fillFraction"]
  LOADK R16 K37 [0.5]
  JUMPIFNOTLE R16 R15 [+3]
  MOVE R14 R2
  JUMPIF R14 [+1]
  GETUPVAL R14 3
  SETTABLEKS R14 R13 K13 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K12 ["BorderSizePixel"]
  GETTABLEKS R15 R1 K1 ["fillFraction"]
  LOADK R16 K37 [0.5]
  JUMPIFNOTLE R16 R15 [+3]
  LOADN R14 9
  JUMP [+1]
  LOADN R14 3
  SETTABLEKS R14 R13 K30 ["ZIndex"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["BottomRightFill"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K2 ["createElement"]
  LOADK R12 K3 ["Frame"]
  DUPTABLE R13 K58 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel", "ZIndex"}]
  GETIMPORT R14 K18 [UDim2.new]
  LOADK R15 K37 [0.5]
  LOADN R16 0
  LOADK R17 K37 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K4 ["Size"]
  GETIMPORT R14 K18 [UDim2.new]
  LOADK R15 K37 [0.5]
  LOADN R16 0
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K5 ["Position"]
  GETTABLEKS R15 R1 K1 ["fillFraction"]
  LOADK R16 K44 [0.25]
  JUMPIFNOTLE R16 R15 [+3]
  MOVE R14 R2
  JUMPIF R14 [+1]
  GETUPVAL R14 3
  SETTABLEKS R14 R13 K13 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K12 ["BorderSizePixel"]
  GETTABLEKS R15 R1 K1 ["fillFraction"]
  LOADK R16 K44 [0.25]
  JUMPIFNOTLE R16 R15 [+3]
  LOADN R14 9
  JUMP [+1]
  LOADN R14 1
  SETTABLEKS R14 R13 K30 ["ZIndex"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K26 ["TopRightFill"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K10 ["PositionOffsetFrame"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_9:
  GETTABLEKS R4 R1 K0 ["fillFraction"]
  GETTABLEKS R5 R1 K1 ["largerCircleFraction"]
  JUMPIFLE R5 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R6 R0 K2 ["props"]
  GETTABLEKS R5 R6 K0 ["fillFraction"]
  GETTABLEKS R7 R0 K2 ["props"]
  GETTABLEKS R6 R7 K1 ["largerCircleFraction"]
  JUMPIFLE R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFEQ R3 R4 [+6]
  GETUPVAL R7 0
  NOT R8 R4
  NAMECALL R5 R0 K3 ["playAnimation"]
  CALL R5 3 0
  GETTABLEKS R6 R1 K0 ["fillFraction"]
  GETTABLEKS R7 R1 K4 ["popCircleFraction"]
  JUMPIFLE R7 R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R8 R0 K2 ["props"]
  GETTABLEKS R7 R8 K0 ["fillFraction"]
  GETTABLEKS R9 R0 K2 ["props"]
  GETTABLEKS R8 R9 K4 ["popCircleFraction"]
  JUMPIFLE R8 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  JUMPIFNOT R6 [+6]
  JUMPIF R5 [+5]
  GETUPVAL R9 1
  LOADB R10 0
  NAMECALL R7 R0 K3 ["playAnimation"]
  CALL R7 3 0
  GETTABLEKS R8 R1 K0 ["fillFraction"]
  GETTABLEKS R9 R1 K5 ["shakeCircleFraction"]
  JUMPIFLE R9 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETTABLEKS R10 R0 K2 ["props"]
  GETTABLEKS R9 R10 K0 ["fillFraction"]
  GETTABLEKS R11 R0 K2 ["props"]
  GETTABLEKS R10 R11 K5 ["shakeCircleFraction"]
  JUMPIFLE R10 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  JUMPIFNOT R8 [+6]
  JUMPIF R7 [+5]
  GETUPVAL R11 2
  LOADB R12 0
  NAMECALL R9 R0 K3 ["playAnimation"]
  CALL R9 3 0
  RETURN R0 0

PROTO_10:
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["stopAnimation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["animationFunction"]
  GETIMPORT R2 K2 [tick]
  CALL R2 0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["animationStartTime"]
  SUB R1 R2 R3
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["updateBindings"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["reverseAnimation"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CALL R0 4 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R3 R0 K0 ["animationFunction"]
  JUMPIFNOT R3 [+9]
  GETTABLEKS R3 R0 K0 ["animationFunction"]
  LOADN R4 100
  GETTABLEKS R5 R0 K1 ["updateBindings"]
  GETTABLEKS R6 R0 K2 ["reverseAnimation"]
  DUPCLOSURE R7 K3 [PROTO_10]
  CALL R3 4 0
  GETIMPORT R3 K5 [tick]
  CALL R3 0 1
  SETTABLEKS R3 R0 K6 ["animationStartTime"]
  SETTABLEKS R1 R0 K0 ["animationFunction"]
  SETTABLEKS R2 R0 K2 ["reverseAnimation"]
  GETTABLEKS R3 R0 K7 ["renderSteppedConnection"]
  JUMPIF R3 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["RenderStepped"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K9 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K7 ["renderSteppedConnection"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["renderSteppedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["renderSteppedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["renderSteppedConnection"]
  RETURN R0 0

PROTO_15:
  NAMECALL R1 R0 K0 ["stopAnimation"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["CorePackages"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["InGameMenuDependencies"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Roact"]
  GETTABLEKS R4 R2 K10 ["t"]
  GETTABLEKS R5 R2 K11 ["UIBlox"]
  GETIMPORT R9 K13 [script]
  GETTABLEKS R8 R9 K14 ["Parent"]
  GETTABLEKS R7 R8 K14 ["Parent"]
  GETTABLEKS R6 R7 K14 ["Parent"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R6 K15 ["Resources"]
  GETTABLEKS R8 R9 K16 ["Assets"]
  CALL R7 1 1
  GETTABLEKS R10 R5 K17 ["Core"]
  GETTABLEKS R9 R10 K18 ["ImageSet"]
  GETTABLEKS R8 R9 K19 ["ImageSetLabel"]
  GETIMPORT R9 K22 [Color3.fromRGB]
  LOADN R10 98
  LOADN R11 98
  LOADN R12 99
  CALL R9 3 1
  GETIMPORT R10 K22 [Color3.fromRGB]
  LOADN R11 255
  LOADN R12 255
  LOADN R13 255
  CALL R10 3 1
  GETIMPORT R11 K22 [Color3.fromRGB]
  LOADN R12 196
  LOADN R13 0
  LOADN R14 1
  CALL R11 3 1
  GETTABLEKS R12 R3 K23 ["PureComponent"]
  LOADK R14 K24 ["FillCircle"]
  NAMECALL R12 R12 K25 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R4 K26 ["strictInterface"]
  DUPTABLE R14 K34 [{"Position", "AnchorPoint", "fillFraction", "largerCircleFraction", "popCircleFraction", "shakeCircleFraction", "BackgroundColor"}]
  GETTABLEKS R15 R4 K35 ["UDim2"]
  SETTABLEKS R15 R14 K27 ["Position"]
  GETTABLEKS R15 R4 K36 ["Vector2"]
  SETTABLEKS R15 R14 K28 ["AnchorPoint"]
  GETTABLEKS R15 R4 K37 ["number"]
  SETTABLEKS R15 R14 K29 ["fillFraction"]
  GETTABLEKS R15 R4 K37 ["number"]
  SETTABLEKS R15 R14 K30 ["largerCircleFraction"]
  GETTABLEKS R15 R4 K37 ["number"]
  SETTABLEKS R15 R14 K31 ["popCircleFraction"]
  GETTABLEKS R15 R4 K37 ["number"]
  SETTABLEKS R15 R14 K32 ["shakeCircleFraction"]
  GETTABLEKS R15 R4 K20 ["Color3"]
  SETTABLEKS R15 R14 K33 ["BackgroundColor"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K38 ["validateProps"]
  DUPCLOSURE R13 K39 [PROTO_0]
  DUPCLOSURE R14 K40 [PROTO_1]
  DUPCLOSURE R15 K41 [PROTO_2]
  DUPCLOSURE R16 K42 [PROTO_3]
  DUPCLOSURE R17 K43 [PROTO_4]
  DUPCLOSURE R18 K44 [PROTO_5]
  DUPCLOSURE R19 K45 [PROTO_7]
  CAPTURE VAL R3
  SETTABLEKS R19 R12 K46 ["init"]
  DUPCLOSURE R19 K47 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R19 R12 K48 ["render"]
  DUPCLOSURE R19 K49 [PROTO_9]
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R19 R12 K50 ["didUpdate"]
  DUPCLOSURE R19 K51 [PROTO_13]
  CAPTURE VAL R0
  SETTABLEKS R19 R12 K52 ["playAnimation"]
  DUPCLOSURE R19 K53 [PROTO_14]
  SETTABLEKS R19 R12 K54 ["stopAnimation"]
  DUPCLOSURE R19 K55 [PROTO_15]
  SETTABLEKS R19 R12 K56 ["willUnmount"]
  RETURN R12 1
