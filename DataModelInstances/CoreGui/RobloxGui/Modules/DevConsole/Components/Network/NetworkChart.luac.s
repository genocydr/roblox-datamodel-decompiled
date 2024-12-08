PROTO_0:
  GETUPVAL R2 0
  DUPTABLE R4 K1 [{"expandIndex"}]
  LOADB R5 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["state"]
  GETTABLEKS R6 R7 K0 ["expandIndex"]
  GETUPVAL R7 1
  JUMPIFEQ R6 R7 [+2]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K0 ["expandIndex"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["scrollingRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  GETTABLEKS R0 R1 K2 ["CanvasPosition"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["state"]
  GETTABLEKS R1 R2 K4 ["canvasPos"]
  JUMPIFEQ R1 R0 [+17]
  GETUPVAL R1 0
  DUPTABLE R3 K6 [{"absScrollSize", "canvasPos"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["scrollingRef"]
  GETTABLEKS R5 R6 K1 ["current"]
  GETTABLEKS R4 R5 K7 ["AbsoluteSize"]
  SETTABLEKS R4 R3 K5 ["absScrollSize"]
  SETTABLEKS R0 R3 K4 ["canvasPos"]
  NAMECALL R1 R1 K8 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["getOnExpandEntry"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onCanvasPosChanged"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["ref"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["scrollingRef"]
  DUPTABLE R1 K6 [{"expandIndex"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K5 ["expandIndex"]
  SETTABLEKS R1 R0 K7 ["state"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["canvasPosConnector"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["canvasPosConnector"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["scrollingRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+33]
  GETTABLEKS R2 R0 K0 ["scrollingRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  LOADK R3 K2 ["CanvasPosition"]
  NAMECALL R1 R1 K3 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  GETTABLEKS R4 R0 K4 ["onCanvasPosChanged"]
  NAMECALL R2 R1 K5 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K6 ["canvasPosConnector"]
  GETTABLEKS R4 R0 K0 ["scrollingRef"]
  GETTABLEKS R3 R4 K1 ["current"]
  GETTABLEKS R2 R3 K7 ["AbsoluteSize"]
  GETTABLEKS R4 R0 K8 ["state"]
  GETTABLEKS R3 R4 K9 ["absScrollSize"]
  JUMPIFEQ R3 R2 [+7]
  DUPTABLE R5 K10 [{"absScrollSize"}]
  SETTABLEKS R2 R5 K9 ["absScrollSize"]
  NAMECALL R3 R0 K11 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["scrollingRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+35]
  GETTABLEKS R2 R0 K0 ["scrollingRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  LOADK R3 K2 ["CanvasPosition"]
  NAMECALL R1 R1 K3 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  GETTABLEKS R4 R0 K4 ["onCanvasPosChanged"]
  NAMECALL R2 R1 K5 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K6 ["canvasPosConnector"]
  DUPTABLE R4 K9 [{"absScrollSize", "canvasPos"}]
  GETTABLEKS R7 R0 K0 ["scrollingRef"]
  GETTABLEKS R6 R7 K1 ["current"]
  GETTABLEKS R5 R6 K10 ["AbsoluteSize"]
  SETTABLEKS R5 R4 K7 ["absScrollSize"]
  GETTABLEKS R7 R0 K0 ["scrollingRef"]
  GETTABLEKS R6 R7 K1 ["current"]
  GETTABLEKS R5 R6 K2 ["CanvasPosition"]
  SETTABLEKS R5 R4 K8 ["canvasPos"]
  NAMECALL R2 R0 K11 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["httpEntryList"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["chartHeight"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["width"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["searchTerm"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["layoutOrder"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["reverseSort"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["onSortChanged"]
  GETTABLEKS R9 R0 K8 ["state"]
  GETTABLEKS R8 R9 K9 ["expandIndex"]
  GETTABLEKS R10 R0 K8 ["state"]
  GETTABLEKS R9 R10 K10 ["absScrollSize"]
  GETTABLEKS R11 R0 K8 ["state"]
  GETTABLEKS R10 R11 K11 ["canvasPos"]
  NEWTABLE R11 0 0
  GETIMPORT R12 K13 [ipairs]
  GETUPVAL R13 0
  CALL R12 1 3
  FORGPREP_INEXT R12
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K14 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K19 [{"text", "size", "pos", "sortfunction"}]
  SETTABLEKS R16 R19 K15 ["text"]
  GETUPVAL R21 3
  GETTABLE R20 R21 R15
  SETTABLEKS R20 R19 K16 ["size"]
  GETUPVAL R21 4
  GETTABLE R20 R21 R15
  SETTABLEKS R20 R19 K17 ["pos"]
  SETTABLEKS R7 R19 K18 ["sortfunction"]
  CALL R17 2 1
  SETTABLE R17 R11 R16
  FORGLOOP R12 2 [inext] [-20]
  LOADN R14 2
  GETUPVAL R15 5
  LENGTH R12 R15
  LOADN R13 1
  FORNPREP R12
  GETIMPORT R15 K22 [string.format]
  LOADK R16 K23 ["VerticalLine_%d"]
  MOVE R17 R14
  CALL R15 2 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K14 ["createElement"]
  LOADK R17 K24 ["Frame"]
  DUPTABLE R18 K29 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R19 K32 [UDim2.new]
  LOADN R20 0
  GETUPVAL R21 6
  LOADN R22 0
  GETUPVAL R23 7
  CALL R19 4 1
  SETTABLEKS R19 R18 K25 ["Size"]
  GETUPVAL R20 5
  GETTABLE R19 R20 R14
  SETTABLEKS R19 R18 K26 ["Position"]
  GETUPVAL R19 8
  SETTABLEKS R19 R18 K27 ["BackgroundColor3"]
  LOADN R19 0
  SETTABLEKS R19 R18 K28 ["BorderSizePixel"]
  CALL R16 2 1
  SETTABLE R16 R11 R15
  FORNLOOP R12
  NEWTABLE R12 0 0
  LOADN R13 0
  LOADN R14 255
  LOADN R15 0
  LENGTH R16 R1
  LOADN R17 0
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K14 ["createElement"]
  LOADK R19 K33 ["UIListLayout"]
  DUPTABLE R20 K38 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R21 K41 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K34 ["FillDirection"]
  GETIMPORT R21 K43 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K35 ["HorizontalAlignment"]
  GETIMPORT R21 K45 [Enum.VerticalAlignment.Top]
  SETTABLEKS R21 R20 K36 ["VerticalAlignment"]
  GETIMPORT R21 K47 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K37 ["SortOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R12 K33 ["UIListLayout"]
  JUMPIFNOT R10 [+178]
  JUMPIFNOT R9 [+177]
  GETIMPORT R18 K13 [ipairs]
  MOVE R19 R1
  CALL R18 1 3
  FORGPREP_INEXT R18
  LOADB R23 1
  JUMPIFEQKS R4 K48 [""] [+31]
  LOADB R24 1
  GETIMPORT R25 K50 [string.find]
  GETTABLEKS R26 R22 K51 ["RequestType"]
  NAMECALL R26 R26 K52 ["lower"]
  CALL R26 1 1
  NAMECALL R27 R4 K52 ["lower"]
  CALL R27 1 -1
  CALL R25 -1 1
  JUMPIFNOTEQKNIL R25 [+16]
  GETIMPORT R25 K50 [string.find]
  GETTABLEKS R26 R22 K53 ["Url"]
  NAMECALL R26 R26 K52 ["lower"]
  CALL R26 1 1
  NAMECALL R27 R4 K52 ["lower"]
  CALL R27 1 -1
  CALL R25 -1 1
  JUMPIFNOTEQKNIL R25 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  MOVE R23 R24
  GETTABLEKS R24 R22 K51 ["RequestType"]
  JUMPIFEQKS R24 K54 ["Default"] [+108]
  JUMPIFNOT R23 [+106]
  ADDK R17 R17 K55 [1]
  GETTABLEKS R25 R22 K56 ["Num"]
  JUMPIFEQ R8 R25 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  GETUPVAL R25 9
  LOADN R26 0
  JUMPIFNOT R24 [+35]
  GETUPVAL R27 10
  ADD R25 R25 R27
  GETTABLEKS R28 R0 K57 ["ref"]
  GETTABLEKS R27 R28 K58 ["current"]
  JUMPIFNOT R27 [+28]
  GETIMPORT R27 K60 [Vector2.new]
  GETTABLEKS R32 R0 K57 ["ref"]
  GETTABLEKS R31 R32 K58 ["current"]
  GETTABLEKS R30 R31 K61 ["AbsoluteSize"]
  GETTABLEKS R29 R30 K62 ["X"]
  GETUPVAL R30 11
  MUL R28 R29 R30
  LOADK R29 K63 [100000000]
  CALL R27 2 1
  GETUPVAL R28 12
  GETTABLEKS R30 R22 K64 ["Response"]
  GETUPVAL R31 13
  GETUPVAL R32 14
  MOVE R33 R27
  NAMECALL R28 R28 K65 ["GetTextSize"]
  CALL R28 5 1
  GETUPVAL R29 10
  GETTABLEKS R30 R28 K66 ["Y"]
  ADD R26 R29 R30
  ADD R25 R25 R26
  ADD R27 R13 R25
  GETTABLEKS R28 R10 K66 ["Y"]
  JUMPIFNOTLE R28 R27 [+56]
  GETTABLEKS R27 R9 K66 ["Y"]
  JUMPIFNOTLT R15 R27 [+46]
  JUMPIFNOT R6 [+2]
  SUB R27 R16 R21
  JUMPIF R27 [+1]
  MOVE R27 R21
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K14 ["createElement"]
  GETUPVAL R29 15
  DUPTABLE R30 K74 [{"size", "entry", "entryCellSize", "cellOffset", "verticalOffsets", "showResponse", "responseBodyHeight", "layoutOrder", "onButtonPress"}]
  GETIMPORT R31 K32 [UDim2.new]
  LOADN R32 1
  LOADN R33 0
  LOADN R34 0
  MOVE R35 R25
  CALL R31 4 1
  SETTABLEKS R31 R30 K16 ["size"]
  SETTABLEKS R22 R30 K67 ["entry"]
  GETUPVAL R31 16
  SETTABLEKS R31 R30 K68 ["entryCellSize"]
  GETUPVAL R31 4
  SETTABLEKS R31 R30 K69 ["cellOffset"]
  GETUPVAL R31 5
  SETTABLEKS R31 R30 K70 ["verticalOffsets"]
  SETTABLEKS R24 R30 K71 ["showResponse"]
  SETTABLEKS R26 R30 K72 ["responseBodyHeight"]
  ADDK R31 R27 K55 [1]
  SETTABLEKS R31 R30 K5 ["layoutOrder"]
  GETTABLEKS R31 R0 K75 ["getOnExpandEntry"]
  GETTABLEKS R32 R22 K56 ["Num"]
  CALL R31 1 1
  SETTABLEKS R31 R30 K73 ["onButtonPress"]
  CALL R28 2 1
  SETTABLE R28 R12 R21
  LOADN R27 0
  JUMPIFNOTLT R14 R27 [+3]
  MOVE R14 R13
  JUMP [+1]
  ADD R15 R15 R25
  ADD R13 R13 R25
  FORGLOOP R18 2 [inext] [-145]
  LOADN R18 0
  JUMPIFNOTLT R18 R17 [+24]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K14 ["createElement"]
  LOADK R19 K24 ["Frame"]
  DUPTABLE R20 K77 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R21 K32 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  MOVE R25 R14
  CALL R21 4 1
  SETTABLEKS R21 R20 K25 ["Size"]
  LOADN R21 1
  SETTABLEKS R21 R20 K76 ["BackgroundTransparency"]
  LOADN R21 1
  SETTABLEKS R21 R20 K46 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R12 K78 ["WindowingPadding"]
  JUMPIFEQKN R16 K79 [0] [+3]
  JUMPIFNOTEQKN R17 K79 [0] [+31]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K14 ["createElement"]
  LOADK R19 K80 ["TextLabel"]
  DUPTABLE R20 K83 [{"Size", "Text", "TextColor3", "BackgroundTransparency"}]
  GETIMPORT R21 K32 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  MOVE R25 R2
  CALL R21 4 1
  SETTABLEKS R21 R20 K25 ["Size"]
  LOADK R21 K84 ["No Network Entries Found"]
  SETTABLEKS R21 R20 K81 ["Text"]
  GETUPVAL R23 17
  GETTABLEKS R22 R23 K85 ["Color"]
  GETTABLEKS R21 R22 K81 ["Text"]
  SETTABLEKS R21 R20 K82 ["TextColor3"]
  LOADN R21 1
  SETTABLEKS R21 R20 K76 ["BackgroundTransparency"]
  CALL R18 2 1
  SETTABLEKS R18 R12 K86 ["NONE FOUND"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K14 ["createElement"]
  LOADK R19 K24 ["Frame"]
  NEWTABLE R20 8 0
  GETIMPORT R21 K32 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  MOVE R25 R2
  CALL R21 4 1
  SETTABLEKS R21 R20 K25 ["Size"]
  LOADN R21 1
  SETTABLEKS R21 R20 K76 ["BackgroundTransparency"]
  LOADB R21 1
  SETTABLEKS R21 R20 K87 ["ClipsDescendants"]
  SETTABLEKS R5 R20 K46 ["LayoutOrder"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K88 ["Ref"]
  GETTABLEKS R22 R0 K57 ["ref"]
  SETTABLE R22 R20 R21
  DUPTABLE R21 K93 [{"Layout", "Header", "HorizontalLine_1", "scrollingFrameEntries"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K14 ["createElement"]
  LOADK R23 K33 ["UIListLayout"]
  DUPTABLE R24 K38 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R25 K41 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K34 ["FillDirection"]
  GETIMPORT R25 K43 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R25 R24 K35 ["HorizontalAlignment"]
  GETIMPORT R25 K45 [Enum.VerticalAlignment.Top]
  SETTABLEKS R25 R24 K36 ["VerticalAlignment"]
  GETIMPORT R25 K47 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K37 ["SortOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K89 ["Layout"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K14 ["createElement"]
  LOADK R23 K24 ["Frame"]
  DUPTABLE R24 K77 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R25 K32 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  GETUPVAL R29 7
  CALL R25 4 1
  SETTABLEKS R25 R24 K25 ["Size"]
  LOADN R25 1
  SETTABLEKS R25 R24 K76 ["BackgroundTransparency"]
  LOADN R25 1
  SETTABLEKS R25 R24 K46 ["LayoutOrder"]
  MOVE R25 R11
  CALL R22 3 1
  SETTABLEKS R22 R21 K90 ["Header"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K14 ["createElement"]
  LOADK R23 K24 ["Frame"]
  DUPTABLE R24 K94 [{"Size", "BackgroundColor3", "BorderSizePixel", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R25 K32 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 0
  GETUPVAL R29 6
  CALL R25 4 1
  SETTABLEKS R25 R24 K25 ["Size"]
  GETUPVAL R25 8
  SETTABLEKS R25 R24 K27 ["BackgroundColor3"]
  LOADN R25 0
  SETTABLEKS R25 R24 K28 ["BorderSizePixel"]
  LOADN R25 0
  SETTABLEKS R25 R24 K76 ["BackgroundTransparency"]
  LOADN R25 2
  SETTABLEKS R25 R24 K46 ["LayoutOrder"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K91 ["HorizontalLine_1"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K14 ["createElement"]
  LOADK R23 K95 ["ScrollingFrame"]
  NEWTABLE R24 8 0
  GETIMPORT R25 K32 [UDim2.new]
  LOADN R26 1
  LOADN R27 0
  LOADN R28 1
  GETUPVAL R30 7
  MINUS R29 R30
  CALL R25 4 1
  SETTABLEKS R25 R24 K25 ["Size"]
  GETIMPORT R25 K32 [UDim2.new]
  LOADN R26 0
  MOVE R27 R3
  LOADN R28 0
  MOVE R29 R13
  CALL R25 4 1
  SETTABLEKS R25 R24 K96 ["CanvasSize"]
  LOADN R25 6
  SETTABLEKS R25 R24 K97 ["ScrollBarThickness"]
  LOADN R25 1
  SETTABLEKS R25 R24 K76 ["BackgroundTransparency"]
  LOADN R25 3
  SETTABLEKS R25 R24 K46 ["LayoutOrder"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K88 ["Ref"]
  GETTABLEKS R26 R0 K98 ["scrollingRef"]
  SETTABLE R26 R24 R25
  MOVE R25 R12
  CALL R22 3 1
  SETTABLEKS R22 R21 K92 ["scrollingFrameEntries"]
  CALL R18 3 -1
  RETURN R18 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["TextService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETIMPORT R8 K10 [script]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K11 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K13 ["NetworkFormatting"]
  GETTABLEKS R4 R5 K14 ["ChartHeaderNames"]
  GETTABLEKS R6 R3 K13 ["NetworkFormatting"]
  GETTABLEKS R5 R6 K15 ["ChartCellWidths"]
  GETTABLEKS R7 R3 K13 ["NetworkFormatting"]
  GETTABLEKS R6 R7 K16 ["CellPadding"]
  GETTABLEKS R8 R3 K13 ["NetworkFormatting"]
  GETTABLEKS R7 R8 K17 ["HeaderFrameHeight"]
  GETTABLEKS R9 R3 K13 ["NetworkFormatting"]
  GETTABLEKS R8 R9 K18 ["EntryFrameHeight"]
  GETTABLEKS R10 R3 K19 ["GeneralFormatting"]
  GETTABLEKS R9 R10 K20 ["LineWidth"]
  GETTABLEKS R11 R3 K19 ["GeneralFormatting"]
  GETTABLEKS R10 R11 K21 ["LineColor"]
  GETTABLEKS R12 R3 K22 ["DefaultFontSize"]
  GETTABLEKS R11 R12 K23 ["MainWindow"]
  GETTABLEKS R13 R3 K24 ["Font"]
  GETTABLEKS R12 R13 K23 ["MainWindow"]
  GETTABLEKS R14 R3 K13 ["NetworkFormatting"]
  GETTABLEKS R13 R14 K25 ["ResponseStrHeight"]
  GETTABLEKS R15 R3 K13 ["NetworkFormatting"]
  GETTABLEKS R14 R15 K26 ["ResponseWidthRatio"]
  GETIMPORT R19 K10 [script]
  GETTABLEKS R18 R19 K11 ["Parent"]
  GETTABLEKS R17 R18 K11 ["Parent"]
  GETTABLEKS R16 R17 K11 ["Parent"]
  GETTABLEKS R15 R16 K27 ["Components"]
  GETIMPORT R16 K6 [require]
  GETTABLEKS R17 R15 K28 ["HeaderButton"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETIMPORT R20 K10 [script]
  GETTABLEKS R19 R20 K11 ["Parent"]
  GETTABLEKS R18 R19 K29 ["NetworkChartEntry"]
  CALL R17 1 1
  LOADN R18 0
  GETIMPORT R19 K31 [pairs]
  MOVE R20 R5
  CALL R19 1 3
  FORGPREP_NEXT R19
  ADD R18 R18 R23
  FORGLOOP R19 2 [-2]
  LOADN R19 0
  NEWTABLE R20 0 0
  NEWTABLE R21 0 0
  NEWTABLE R22 0 0
  GETIMPORT R23 K33 [ipairs]
  MOVE R24 R5
  CALL R23 1 3
  FORGPREP_INEXT R23
  MOVE R29 R20
  GETIMPORT R30 K36 [UDim2.new]
  LOADN R31 0
  ADD R32 R19 R6
  LOADN R33 0
  LOADN R34 0
  CALL R30 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R28 K39 [table.insert]
  CALL R28 -1 0
  MOVE R29 R21
  GETIMPORT R30 K36 [UDim2.new]
  LOADN R31 0
  SUB R32 R27 R6
  LOADN R33 0
  MOVE R34 R7
  CALL R30 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R28 K39 [table.insert]
  CALL R28 -1 0
  MOVE R29 R22
  GETIMPORT R30 K36 [UDim2.new]
  LOADN R31 0
  SUB R32 R27 R6
  LOADN R33 0
  MOVE R34 R8
  CALL R30 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R28 K39 [table.insert]
  CALL R28 -1 0
  ADD R19 R19 R27
  FORGLOOP R23 2 [inext] [-38]
  MOVE R24 R20
  GETIMPORT R25 K36 [UDim2.new]
  LOADN R26 0
  ADD R27 R19 R6
  LOADN R28 0
  LOADN R29 0
  CALL R25 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R23 K39 [table.insert]
  CALL R23 -1 0
  MOVE R24 R21
  GETIMPORT R25 K36 [UDim2.new]
  LOADN R26 1
  MINUS R28 R18
  SUB R27 R28 R6
  LOADN R28 0
  MOVE R29 R7
  CALL R25 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R23 K39 [table.insert]
  CALL R23 -1 0
  MOVE R24 R22
  GETIMPORT R25 K36 [UDim2.new]
  LOADN R26 1
  MINUS R28 R18
  SUB R27 R28 R6
  LOADN R28 0
  MOVE R29 R8
  CALL R25 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R23 K39 [table.insert]
  CALL R23 -1 0
  NEWTABLE R23 0 0
  GETIMPORT R24 K33 [ipairs]
  MOVE R25 R20
  CALL R24 1 3
  FORGPREP_INEXT R24
  GETIMPORT R29 K36 [UDim2.new]
  GETTABLEKS R31 R28 K40 ["X"]
  GETTABLEKS R30 R31 K41 ["Scale"]
  GETTABLEKS R33 R28 K40 ["X"]
  GETTABLEKS R32 R33 K42 ["Offset"]
  SUB R31 R32 R6
  GETTABLEKS R33 R28 K43 ["Y"]
  GETTABLEKS R32 R33 K41 ["Scale"]
  GETTABLEKS R34 R28 K43 ["Y"]
  GETTABLEKS R33 R34 K42 ["Offset"]
  CALL R29 4 1
  SETTABLE R29 R23 R27
  FORGLOOP R24 2 [inext] [-22]
  GETTABLEKS R24 R2 K44 ["Component"]
  LOADK R26 K45 ["NetworkChart"]
  NAMECALL R24 R24 K46 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K47 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R25 R24 K48 ["init"]
  DUPCLOSURE R25 K49 [PROTO_4]
  SETTABLEKS R25 R24 K50 ["willUpdate"]
  DUPCLOSURE R25 K51 [PROTO_5]
  SETTABLEKS R25 R24 K52 ["didUpdate"]
  DUPCLOSURE R25 K53 [PROTO_6]
  SETTABLEKS R25 R24 K54 ["didMount"]
  DUPCLOSURE R25 K55 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R23
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R17
  CAPTURE VAL R22
  CAPTURE VAL R3
  SETTABLEKS R25 R24 K56 ["render"]
  RETURN R24 1