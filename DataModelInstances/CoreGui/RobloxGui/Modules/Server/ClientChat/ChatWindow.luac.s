PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ClassicChatEnabled"]
  JUMPIFEQKNIL R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ClassicChatEnabled"]
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["ClassicChat"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["BubbleChatEnabled"]
  JUMPIFEQKNIL R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["BubbleChatEnabled"]
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["BubbleChat"]
  RETURN R0 1

PROTO_2:
  GETGLOBAL R1 K0 ["getClassicChatEnabled"]
  CALL R1 0 1
  NOT R0 R1
  JUMPIFNOT R0 [+3]
  GETGLOBAL R0 K1 ["getBubbleChatEnabled"]
  CALL R0 0 1
  RETURN R0 1

PROTO_3:
  JUMPIFNOT R0 [+1]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLE R7 R1 R5
  JUMPIFEQKNIL R7 [+2]
  SETTABLE R6 R1 R5
  FORGLOOP R2 2 [-5]
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 1
  GETIMPORT R2 K3 [Enum.ChatCallbackType.OnCreatingChatWindow]
  LOADNIL R3
  NAMECALL R0 R0 K4 ["InvokeChatCallback"]
  CALL R0 3 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+8]
  LOADK R3 K0 ["ScreenGui"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+3]
  GETTABLEKS R0 R0 K2 ["Parent"]
  JUMPBACK [-9]
  RETURN R0 1

PROTO_6:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  LOADB R0 1
  SETUPVAL R0 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  NAMECALL R0 R0 K0 ["IsDescendantOf"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+8]
  LOADK R4 K1 ["ScreenGui"]
  NAMECALL R2 R1 K2 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+3]
  GETTABLEKS R1 R1 K3 ["Parent"]
  JUMPBACK [-9]
  MOVE R0 R1
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K4 ["MinimumWindowSize"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K5 ["MaximumWindowSize"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K6 ["AbsoluteSize"]
  GETTABLEKS R4 R5 K7 ["Y"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K6 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K7 ["Y"]
  ADD R3 R4 R5
  GETTABLEKS R7 R1 K8 ["X"]
  GETTABLEKS R6 R7 K9 ["Scale"]
  GETTABLEKS R8 R0 K6 ["AbsoluteSize"]
  GETTABLEKS R7 R8 K8 ["X"]
  MUL R5 R6 R7
  GETTABLEKS R7 R1 K8 ["X"]
  GETTABLEKS R6 R7 K10 ["Offset"]
  ADD R4 R5 R6
  GETTABLEKS R9 R1 K7 ["Y"]
  GETTABLEKS R8 R9 K9 ["Scale"]
  GETTABLEKS R10 R0 K6 ["AbsoluteSize"]
  GETTABLEKS R9 R10 K7 ["Y"]
  MUL R7 R8 R9
  GETTABLEKS R9 R1 K7 ["Y"]
  GETTABLEKS R8 R9 K10 ["Offset"]
  ADD R6 R7 R8
  FASTCALL2 MATH_MAX R6 R3 [+4]
  MOVE R7 R3
  GETIMPORT R5 K13 [math.max]
  CALL R5 2 1
  GETTABLEKS R9 R2 K8 ["X"]
  GETTABLEKS R8 R9 K9 ["Scale"]
  GETTABLEKS R10 R0 K6 ["AbsoluteSize"]
  GETTABLEKS R9 R10 K8 ["X"]
  MUL R7 R8 R9
  GETTABLEKS R9 R2 K8 ["X"]
  GETTABLEKS R8 R9 K10 ["Offset"]
  ADD R6 R7 R8
  GETTABLEKS R10 R2 K7 ["Y"]
  GETTABLEKS R9 R10 K9 ["Scale"]
  GETTABLEKS R11 R0 K6 ["AbsoluteSize"]
  GETTABLEKS R10 R11 K7 ["Y"]
  MUL R8 R9 R10
  GETTABLEKS R10 R2 K7 ["Y"]
  GETTABLEKS R9 R10 K10 ["Offset"]
  ADD R7 R8 R9
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["AbsoluteSize"]
  GETTABLEKS R8 R9 K8 ["X"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["AbsoluteSize"]
  GETTABLEKS R9 R10 K7 ["Y"]
  JUMPIFNOTLT R8 R4 [+16]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  SUB R12 R4 R8
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  GETUPVAL R11 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K17 ["Size"]
  ADD R12 R13 R10
  SETTABLEKS R12 R11 K17 ["Size"]
  JUMP [+16]
  JUMPIFNOTLT R6 R8 [+15]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  SUB R12 R6 R8
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  GETUPVAL R11 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K17 ["Size"]
  ADD R12 R13 R10
  SETTABLEKS R12 R11 K17 ["Size"]
  JUMPIFNOTLT R9 R5 [+16]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  SUB R14 R5 R9
  CALL R10 4 1
  GETUPVAL R11 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K17 ["Size"]
  ADD R12 R13 R10
  SETTABLEKS R12 R11 K17 ["Size"]
  JUMP [+16]
  JUMPIFNOTLT R7 R9 [+15]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  SUB R14 R7 R9
  CALL R10 4 1
  GETUPVAL R11 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K17 ["Size"]
  ADD R12 R13 R10
  SETTABLEKS R12 R11 K17 ["Size"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K6 ["AbsoluteSize"]
  GETTABLEKS R11 R12 K8 ["X"]
  GETTABLEKS R13 R0 K6 ["AbsoluteSize"]
  GETTABLEKS R12 R13 K8 ["X"]
  DIV R10 R11 R12
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K6 ["AbsoluteSize"]
  GETTABLEKS R12 R13 K7 ["Y"]
  GETTABLEKS R14 R0 K6 ["AbsoluteSize"]
  GETTABLEKS R13 R14 K7 ["Y"]
  DIV R11 R12 R13
  GETUPVAL R12 1
  GETIMPORT R13 K16 [UDim2.new]
  MOVE R14 R10
  LOADN R15 0
  MOVE R16 R11
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K17 ["Size"]
  LOADB R12 0
  SETUPVAL R12 0
  RETURN R0 0

PROTO_7:
  JUMPIFNOTEQKS R0 K0 ["AbsoluteSize"] [+3]
  GETUPVAL R1 0
  CALL R1 0 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["Draggable"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["WindowDraggable"]
  JUMPIFNOTEQKB R1 FALSE [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["WindowResizable"]
  JUMPIFNOTEQKB R1 FALSE [+2]
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["AbsolutePosition"]
  SUB R2 R0 R3
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["AbsoluteSize"]
  ADD R1 R2 R3
  GETUPVAL R2 1
  GETIMPORT R3 K6 [UDim2.new]
  LOADN R4 0
  GETTABLEKS R5 R1 K7 ["X"]
  LOADN R6 0
  GETTABLEKS R7 R1 K8 ["Y"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K9 ["Size"]
  GETGLOBAL R2 K10 ["bubbleChatOnly"]
  CALL R2 0 1
  JUMPIFNOT R2 [+16]
  GETUPVAL R2 2
  GETIMPORT R3 K6 [UDim2.new]
  LOADN R4 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K7 ["X"]
  MINUS R5 R6
  LOADN R6 0
  LOADN R7 0
  CALL R3 4 1
  SETTABLEKS R3 R2 K11 ["Position"]
  RETURN R0 0
  GETUPVAL R2 2
  GETIMPORT R3 K6 [UDim2.new]
  LOADN R4 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K7 ["X"]
  MINUS R5 R6
  LOADN R6 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K3 ["AbsoluteSize"]
  GETTABLEKS R8 R9 K8 ["Y"]
  MINUS R7 R8
  CALL R3 4 1
  SETTABLEKS R3 R2 K11 ["Position"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["WindowDraggable"]
  SETTABLEKS R3 R2 K1 ["Draggable"]
  RETURN R0 0

PROTO_11:
  JUMPIFNOTEQKS R0 K0 ["AbsolutePosition"] [+17]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["Draggable"]
  JUMPIF R1 [+12]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADB R1 1
  SETUPVAL R1 1
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K0 ["AbsolutePosition"]
  CALL R1 1 0
  LOADB R1 0
  SETUPVAL R1 1
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  JUMPIFNOTEQKN R1 K0 [1] [+8]
  MOVE R1 R0
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["ChatChannelsTabTextSizePhone"]
  MOVE R0 R1
  JUMP [+6]
  MOVE R1 R0
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["ChatChannelsTabTextSize"]
  MOVE R0 R1
  MOVE R1 R0
  LOADN R4 32
  ADDK R5 R1 K4 [8]
  FASTCALL2 MATH_MAX R4 R5 [+3]
  GETIMPORT R3 K7 [math.max]
  CALL R3 2 1
  ADDK R2 R3 K3 [2]
  RETURN R2 1

PROTO_13:
  GETUPVAL R1 0
  JUMPIFNOTEQKN R1 K0 [1] [+8]
  MOVE R1 R0
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["ChatBarTextSizePhone"]
  MOVE R0 R1
  JUMP [+6]
  MOVE R1 R0
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["ChatBarTextSize"]
  MOVE R0 R1
  MOVE R1 R0
  ADDK R3 R1 K4 [14]
  ADDK R2 R3 K3 [10]
  RETURN R2 1

PROTO_14:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["Active"]
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K1 ["Draggable"]
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["Visible"]
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K1 ["Draggable"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Size"]
  GETTABLEKS R2 R3 K3 ["Y"]
  GETTABLEKS R1 R2 K4 ["Offset"]
  JUMPIFNOT R0 [+26]
  GETUPVAL R2 1
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 1
  MINUS R6 R1
  SUBK R5 R6 K8 [2]
  LOADN R6 0
  MOVE R7 R1
  CALL R3 4 1
  SETTABLEKS R3 R2 K2 ["Size"]
  GETGLOBAL R2 K9 ["bubbleChatOnly"]
  CALL R2 0 1
  JUMPIF R2 [+35]
  GETUPVAL R2 1
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 1
  MINUS R7 R1
  CALL R3 4 1
  SETTABLEKS R3 R2 K10 ["Position"]
  RETURN R0 0
  GETUPVAL R2 1
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  MOVE R7 R1
  CALL R3 4 1
  SETTABLEKS R3 R2 K2 ["Size"]
  GETGLOBAL R2 K9 ["bubbleChatOnly"]
  CALL R2 0 1
  JUMPIF R2 [+10]
  GETUPVAL R2 1
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 1
  MINUS R7 R1
  CALL R3 4 1
  SETTABLEKS R3 R2 K10 ["Position"]
  RETURN R0 0

PROTO_16:
  LOADNIL R1
  GETUPVAL R2 0
  JUMPIFNOTEQKN R2 K0 [1] [+8]
  MOVE R2 R1
  JUMPIF R2 [+3]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["ChatChannelsTabTextSizePhone"]
  MOVE R1 R2
  JUMP [+6]
  MOVE R2 R1
  JUMPIF R2 [+3]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["ChatChannelsTabTextSize"]
  MOVE R1 R2
  MOVE R2 R1
  LOADN R5 32
  ADDK R6 R2 K4 [8]
  FASTCALL2 MATH_MAX R5 R6 [+3]
  GETIMPORT R4 K7 [math.max]
  CALL R4 2 1
  ADDK R3 R4 K3 [2]
  MOVE R0 R3
  LOADNIL R2
  GETUPVAL R3 0
  JUMPIFNOTEQKN R3 K0 [1] [+8]
  MOVE R3 R2
  JUMPIF R3 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["ChatBarTextSizePhone"]
  MOVE R2 R3
  JUMP [+6]
  MOVE R3 R2
  JUMPIF R3 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["ChatBarTextSize"]
  MOVE R2 R3
  MOVE R3 R2
  ADDK R5 R3 K11 [14]
  ADDK R4 R5 K10 [10]
  MOVE R1 R4
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K12 ["ShowChannelsBar"]
  JUMPIFNOT R2 [+24]
  GETUPVAL R2 2
  GETIMPORT R3 K15 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 1
  ADD R10 R0 R1
  ADDK R9 R10 K3 [2]
  ADDK R8 R9 K3 [2]
  MINUS R7 R8
  CALL R3 4 1
  SETTABLEKS R3 R2 K16 ["Size"]
  GETUPVAL R2 2
  GETIMPORT R3 K15 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  ADDK R7 R0 K3 [2]
  CALL R3 4 1
  SETTABLEKS R3 R2 K17 ["Position"]
  RETURN R0 0
  GETUPVAL R2 2
  GETIMPORT R3 K15 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 1
  ADDK R9 R1 K3 [2]
  ADDK R8 R9 K3 [2]
  MINUS R7 R8
  CALL R3 4 1
  SETTABLEKS R3 R2 K16 ["Size"]
  GETUPVAL R2 2
  GETIMPORT R3 K15 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 2
  CALL R3 4 1
  SETTABLEKS R3 R2 K17 ["Position"]
  RETURN R0 0

PROTO_17:
  MOVE R2 R0
  GETUPVAL R3 0
  JUMPIFNOTEQKN R3 K0 [1] [+8]
  MOVE R3 R2
  JUMPIF R3 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["ChatChannelsTabTextSizePhone"]
  MOVE R2 R3
  JUMP [+6]
  MOVE R3 R2
  JUMPIF R3 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["ChatChannelsTabTextSize"]
  MOVE R2 R3
  MOVE R3 R2
  LOADN R6 32
  ADDK R7 R3 K4 [8]
  FASTCALL2 MATH_MAX R6 R7 [+3]
  GETIMPORT R5 K7 [math.max]
  CALL R5 2 1
  ADDK R4 R5 K3 [2]
  MOVE R1 R4
  GETUPVAL R2 2
  GETIMPORT R3 K10 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  MOVE R7 R1
  CALL R3 4 1
  SETTABLEKS R3 R2 K11 ["Size"]
  GETUPVAL R2 3
  CALL R2 0 0
  RETURN R0 0

PROTO_18:
  MOVE R2 R0
  GETUPVAL R3 0
  JUMPIFNOTEQKN R3 K0 [1] [+8]
  MOVE R3 R2
  JUMPIF R3 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["ChatBarTextSizePhone"]
  MOVE R2 R3
  JUMP [+6]
  MOVE R3 R2
  JUMPIF R3 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["ChatBarTextSize"]
  MOVE R2 R3
  MOVE R3 R2
  ADDK R5 R3 K4 [14]
  ADDK R4 R5 K3 [10]
  MOVE R1 R4
  GETUPVAL R2 2
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 1
  LOADN R5 0
  LOADN R6 0
  MOVE R7 R1
  CALL R3 4 1
  SETTABLEKS R3 R2 K8 ["Size"]
  GETGLOBAL R2 K9 ["bubbleChatOnly"]
  CALL R2 0 1
  JUMPIF R2 [+10]
  GETUPVAL R2 2
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 0
  LOADN R5 0
  LOADN R6 1
  MINUS R7 R1
  CALL R3 4 1
  SETTABLEKS R3 R2 K10 ["Position"]
  GETUPVAL R2 3
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 0
  MOVE R5 R1
  LOADN R6 0
  MOVE R7 R1
  CALL R3 4 1
  SETTABLEKS R3 R2 K8 ["Size"]
  GETUPVAL R2 3
  GETIMPORT R3 K7 [UDim2.new]
  LOADN R4 1
  MINUS R5 R1
  LOADN R6 1
  MINUS R7 R1
  CALL R3 4 1
  SETTABLEKS R3 R2 K10 ["Position"]
  GETUPVAL R2 4
  CALL R2 0 0
  GETUPVAL R2 5
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["WindowResizable"]
  CALL R2 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["Visible"]
  GETUPVAL R1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_20:
  JUMPIFNOTEQKS R0 K0 ["WindowDraggable"] [+8]
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K1 ["Active"]
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K2 ["Draggable"]
  RETURN R0 0
  JUMPIFNOTEQKS R0 K3 ["WindowResizable"] [+5]
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K4 ["ChatChannelsTabTextSize"] [+41]
  MOVE R3 R1
  GETUPVAL R4 2
  JUMPIFNOTEQKN R4 K5 [1] [+8]
  MOVE R4 R3
  JUMPIF R4 [+3]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K6 ["ChatChannelsTabTextSizePhone"]
  MOVE R3 R4
  JUMP [+6]
  MOVE R4 R3
  JUMPIF R4 [+3]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["ChatChannelsTabTextSize"]
  MOVE R3 R4
  MOVE R4 R3
  LOADN R7 32
  ADDK R8 R4 K8 [8]
  FASTCALL2 MATH_MAX R7 R8 [+3]
  GETIMPORT R6 K11 [math.max]
  CALL R6 2 1
  ADDK R5 R6 K7 [2]
  MOVE R2 R5
  GETUPVAL R3 4
  GETIMPORT R4 K14 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  MOVE R8 R2
  CALL R4 4 1
  SETTABLEKS R4 R3 K15 ["Size"]
  GETUPVAL R3 5
  CALL R3 0 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K16 ["ChatBarTextSize"] [+5]
  GETUPVAL R2 6
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K17 ["ShowChannelsBar"] [+6]
  GETUPVAL R2 4
  SETTABLEKS R1 R2 K18 ["Visible"]
  GETUPVAL R2 5
  CALL R2 0 0
  RETURN R0 0

PROTO_21:
  LOADNIL R2
  GETIMPORT R3 K1 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE REF R2
  CAPTURE UPVAL U0
  CALL R3 1 0
  GETGLOBAL R3 K2 ["mergeProps"]
  MOVE R4 R2
  GETUPVAL R5 1
  CALL R3 2 0
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K6 ["Frame"]
  CALL R3 1 1
  LOADN R4 1
  SETTABLEKS R4 R3 K7 ["BackgroundTransparency"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["WindowDraggable"]
  SETTABLEKS R4 R3 K9 ["Active"]
  SETTABLEKS R1 R3 K10 ["Parent"]
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["AutoLocalize"]
  GETIMPORT R4 K5 [Instance.new]
  LOADK R5 K6 ["Frame"]
  CALL R4 1 1
  LOADB R5 0
  SETTABLEKS R5 R4 K12 ["Selectable"]
  LOADK R5 K13 ["ChatBarParentFrame"]
  SETTABLEKS R5 R4 K14 ["Name"]
  LOADN R5 1
  SETTABLEKS R5 R4 K7 ["BackgroundTransparency"]
  SETTABLEKS R3 R4 K10 ["Parent"]
  GETIMPORT R5 K5 [Instance.new]
  LOADK R6 K6 ["Frame"]
  CALL R5 1 1
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["Selectable"]
  LOADK R6 K15 ["ChannelsBarParentFrame"]
  SETTABLEKS R6 R5 K14 ["Name"]
  LOADN R6 1
  SETTABLEKS R6 R5 K7 ["BackgroundTransparency"]
  GETIMPORT R6 K17 [UDim2.new]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K18 ["Position"]
  SETTABLEKS R3 R5 K10 ["Parent"]
  GETIMPORT R6 K5 [Instance.new]
  LOADK R7 K6 ["Frame"]
  CALL R6 1 1
  LOADB R7 0
  SETTABLEKS R7 R6 K12 ["Selectable"]
  LOADK R7 K19 ["ChatChannelParentFrame"]
  SETTABLEKS R7 R6 K14 ["Name"]
  LOADN R7 1
  SETTABLEKS R7 R6 K7 ["BackgroundTransparency"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K20 ["BackGroundColor"]
  SETTABLEKS R7 R6 K21 ["BackgroundColor3"]
  LOADK R7 K22 [0.6]
  SETTABLEKS R7 R6 K7 ["BackgroundTransparency"]
  LOADN R7 0
  SETTABLEKS R7 R6 K23 ["BorderSizePixel"]
  SETTABLEKS R3 R6 K10 ["Parent"]
  GETIMPORT R7 K5 [Instance.new]
  LOADK R8 K24 ["ImageButton"]
  CALL R7 1 1
  LOADB R8 0
  SETTABLEKS R8 R7 K12 ["Selectable"]
  LOADK R8 K25 [""]
  SETTABLEKS R8 R7 K26 ["Image"]
  LOADK R8 K22 [0.6]
  SETTABLEKS R8 R7 K7 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K23 ["BorderSizePixel"]
  LOADB R8 0
  SETTABLEKS R8 R7 K27 ["Visible"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K20 ["BackGroundColor"]
  SETTABLEKS R8 R7 K21 ["BackgroundColor3"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["Active"]
  GETGLOBAL R8 K28 ["bubbleChatOnly"]
  CALL R8 0 1
  JUMPIFNOT R8 [+14]
  GETIMPORT R8 K17 [UDim2.new]
  LOADN R9 1
  GETTABLEKS R12 R7 K29 ["AbsoluteSize"]
  GETTABLEKS R11 R12 K30 ["X"]
  MINUS R10 R11
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K18 ["Position"]
  JUMP [+17]
  GETIMPORT R8 K17 [UDim2.new]
  LOADN R9 1
  GETTABLEKS R12 R7 K29 ["AbsoluteSize"]
  GETTABLEKS R11 R12 K30 ["X"]
  MINUS R10 R11
  LOADN R11 1
  GETTABLEKS R14 R7 K29 ["AbsoluteSize"]
  GETTABLEKS R13 R14 K31 ["Y"]
  MINUS R12 R13
  CALL R8 4 1
  SETTABLEKS R8 R7 K18 ["Position"]
  SETTABLEKS R3 R7 K10 ["Parent"]
  GETIMPORT R8 K5 [Instance.new]
  LOADK R9 K32 ["ImageLabel"]
  CALL R8 1 1
  LOADB R9 0
  SETTABLEKS R9 R8 K12 ["Selectable"]
  GETIMPORT R9 K17 [UDim2.new]
  LOADK R10 K33 [0.8]
  LOADN R11 0
  LOADK R12 K33 [0.8]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K34 ["Size"]
  GETIMPORT R9 K17 [UDim2.new]
  LOADK R10 K35 [0.2]
  LOADN R11 0
  LOADK R12 K35 [0.2]
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K18 ["Position"]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["BackgroundTransparency"]
  LOADK R9 K36 ["rbxassetid://261880743"]
  SETTABLEKS R9 R8 K26 ["Image"]
  SETTABLEKS R7 R8 K10 ["Parent"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R3
  LOADN R10 3
  MOVE R12 R3
  JUMPIFNOT R12 [+8]
  LOADK R15 K37 ["ScreenGui"]
  NAMECALL R13 R12 K38 ["IsA"]
  CALL R13 2 1
  JUMPIF R13 [+3]
  GETTABLEKS R12 R12 K10 ["Parent"]
  JUMPBACK [-9]
  MOVE R11 R12
  GETTABLEKS R13 R11 K29 ["AbsoluteSize"]
  GETTABLEKS R12 R13 K30 ["X"]
  LOADN R13 128
  JUMPIFNOTLE R12 R13 [+3]
  LOADN R10 1
  JUMP [+8]
  GETTABLEKS R13 R11 K29 ["AbsoluteSize"]
  GETTABLEKS R12 R13 K30 ["X"]
  LOADN R13 0
  JUMPIFNOTLE R12 R13 [+2]
  LOADN R10 2
  LOADB R12 0
  NEWCLOSURE R13 P2
  CAPTURE REF R12
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CAPTURE VAL R4
  GETTABLEKS R14 R3 K39 ["Changed"]
  NEWCLOSURE R16 P3
  CAPTURE VAL R13
  NAMECALL R14 R14 K40 ["connect"]
  CALL R14 2 0
  GETTABLEKS R14 R7 K41 ["DragBegin"]
  NEWCLOSURE R16 P4
  CAPTURE VAL R3
  NAMECALL R14 R14 K40 ["connect"]
  CALL R14 2 0
  NEWCLOSURE R14 P5
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE VAL R7
  GETTABLEKS R15 R7 K42 ["DragStopped"]
  NEWCLOSURE R17 P6
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  NAMECALL R15 R15 K40 ["connect"]
  CALL R15 2 0
  LOADB R15 0
  GETTABLEKS R16 R7 K39 ["Changed"]
  NEWCLOSURE R18 P7
  CAPTURE VAL R3
  CAPTURE REF R15
  CAPTURE VAL R14
  CAPTURE VAL R7
  NAMECALL R16 R16 K40 ["connect"]
  CALL R16 2 0
  NEWCLOSURE R16 P8
  CAPTURE REF R10
  CAPTURE UPVAL U1
  NEWCLOSURE R17 P9
  CAPTURE REF R10
  CAPTURE UPVAL U1
  GETGLOBAL R18 K28 ["bubbleChatOnly"]
  CALL R18 0 1
  JUMPIFNOT R18 [+117]
  GETIMPORT R18 K17 [UDim2.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R4 K18 ["Position"]
  LOADB R18 0
  SETTABLEKS R18 R5 K27 ["Visible"]
  LOADB R18 0
  SETTABLEKS R18 R5 K9 ["Active"]
  LOADB R18 0
  SETTABLEKS R18 R6 K27 ["Visible"]
  LOADB R18 0
  SETTABLEKS R18 R6 K9 ["Active"]
  LOADN R18 0
  LOADN R19 0
  MOVE R21 R3
  JUMPIFNOT R21 [+8]
  LOADK R24 K37 ["ScreenGui"]
  NAMECALL R22 R21 K38 ["IsA"]
  CALL R22 2 1
  JUMPIF R22 [+3]
  GETTABLEKS R21 R21 K10 ["Parent"]
  JUMPBACK [-9]
  MOVE R20 R21
  JUMPIFNOTEQKN R10 K43 [1] [+16]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K44 ["DefaultWindowSizePhone"]
  GETTABLEKS R21 R22 K30 ["X"]
  GETTABLEKS R18 R21 K45 ["Scale"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K44 ["DefaultWindowSizePhone"]
  GETTABLEKS R21 R22 K30 ["X"]
  GETTABLEKS R19 R21 K46 ["Offset"]
  JUMP [+31]
  JUMPIFNOTEQKN R10 K47 [2] [+16]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K48 ["DefaultWindowSizeTablet"]
  GETTABLEKS R21 R22 K30 ["X"]
  GETTABLEKS R18 R21 K45 ["Scale"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K48 ["DefaultWindowSizeTablet"]
  GETTABLEKS R21 R22 K30 ["X"]
  GETTABLEKS R19 R21 K46 ["Offset"]
  JUMP [+14]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K49 ["DefaultWindowSizeDesktop"]
  GETTABLEKS R21 R22 K30 ["X"]
  GETTABLEKS R18 R21 K45 ["Scale"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K49 ["DefaultWindowSizeDesktop"]
  GETTABLEKS R21 R22 K30 ["X"]
  GETTABLEKS R19 R21 K46 ["Offset"]
  LOADNIL R22
  JUMPIFNOTEQKN R10 K43 [1] [+8]
  MOVE R23 R22
  JUMPIF R23 [+3]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K50 ["ChatBarTextSizePhone"]
  MOVE R22 R23
  JUMP [+6]
  MOVE R23 R22
  JUMPIF R23 [+3]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K51 ["ChatBarTextSize"]
  MOVE R22 R23
  MOVE R23 R22
  ADDK R25 R23 K53 [14]
  ADDK R24 R25 K52 [10]
  MOVE R21 R24
  GETIMPORT R22 K17 [UDim2.new]
  MOVE R23 R18
  MOVE R24 R19
  LOADN R25 0
  MOVE R26 R21
  CALL R22 4 1
  SETTABLEKS R22 R3 K34 ["Size"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K54 ["DefaultWindowPosition"]
  SETTABLEKS R22 R3 K18 ["Position"]
  JUMP [+37]
  MOVE R19 R3
  JUMPIFNOT R19 [+8]
  LOADK R22 K37 ["ScreenGui"]
  NAMECALL R20 R19 K38 ["IsA"]
  CALL R20 2 1
  JUMPIF R20 [+3]
  GETTABLEKS R19 R19 K10 ["Parent"]
  JUMPBACK [-9]
  MOVE R18 R19
  JUMPIFNOTEQKN R10 K43 [1] [+7]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K44 ["DefaultWindowSizePhone"]
  SETTABLEKS R19 R3 K34 ["Size"]
  JUMP [+13]
  JUMPIFNOTEQKN R10 K47 [2] [+7]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K48 ["DefaultWindowSizeTablet"]
  SETTABLEKS R19 R3 K34 ["Size"]
  JUMP [+5]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K49 ["DefaultWindowSizeDesktop"]
  SETTABLEKS R19 R3 K34 ["Size"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K54 ["DefaultWindowPosition"]
  SETTABLEKS R19 R3 K18 ["Position"]
  JUMPIFNOTEQKN R10 K43 [1] [+19]
  GETUPVAL R18 1
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K55 ["ChatWindowTextSizePhone"]
  SETTABLEKS R19 R18 K56 ["ChatWindowTextSize"]
  GETUPVAL R18 1
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K57 ["ChatChannelsTabTextSizePhone"]
  SETTABLEKS R19 R18 K58 ["ChatChannelsTabTextSize"]
  GETUPVAL R18 1
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K50 ["ChatBarTextSizePhone"]
  SETTABLEKS R19 R18 K51 ["ChatBarTextSize"]
  NEWCLOSURE R18 P10
  CAPTURE VAL R3
  NEWCLOSURE R19 P11
  CAPTURE VAL R7
  CAPTURE VAL R4
  NEWCLOSURE R20 P12
  CAPTURE REF R10
  CAPTURE UPVAL U1
  CAPTURE VAL R6
  NEWCLOSURE R21 P13
  CAPTURE REF R10
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CAPTURE VAL R20
  NEWCLOSURE R22 P14
  CAPTURE REF R10
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R19
  NEWCLOSURE R23 P15
  CAPTURE VAL R5
  CAPTURE VAL R20
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K58 ["ChatChannelsTabTextSize"]
  MOVE R26 R24
  JUMPIFNOTEQKN R10 K43 [1] [+8]
  MOVE R27 R26
  JUMPIF R27 [+3]
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K57 ["ChatChannelsTabTextSizePhone"]
  MOVE R26 R27
  JUMP [+6]
  MOVE R27 R26
  JUMPIF R27 [+3]
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K58 ["ChatChannelsTabTextSize"]
  MOVE R26 R27
  MOVE R27 R26
  LOADN R30 32
  ADDK R31 R27 K59 [8]
  FASTCALL2 MATH_MAX R30 R31 [+3]
  GETIMPORT R29 K62 [math.max]
  CALL R29 2 1
  ADDK R28 R29 K47 [2]
  MOVE R25 R28
  GETIMPORT R26 K17 [UDim2.new]
  LOADN R27 1
  LOADN R28 0
  LOADN R29 0
  MOVE R30 R25
  CALL R26 4 1
  SETTABLEKS R26 R5 K34 ["Size"]
  MOVE R26 R20
  CALL R26 0 0
  MOVE R24 R22
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K51 ["ChatBarTextSize"]
  CALL R24 1 0
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K8 ["WindowDraggable"]
  SETTABLEKS R24 R3 K9 ["Active"]
  SETTABLEKS R24 R3 K63 ["Draggable"]
  MOVE R24 R19
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K64 ["WindowResizable"]
  CALL R24 1 0
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K65 ["ShowChannelsBar"]
  SETTABLEKS R24 R5 K27 ["Visible"]
  MOVE R25 R20
  CALL R25 0 0
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K66 ["SettingsChanged"]
  NEWCLOSURE R26 P16
  CAPTURE VAL R3
  CAPTURE VAL R19
  CAPTURE REF R10
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CAPTURE VAL R20
  CAPTURE VAL R22
  NAMECALL R24 R24 K40 ["connect"]
  CALL R24 2 0
  SETTABLEKS R3 R0 K67 ["GuiObject"]
  GETTABLEKS R24 R0 K68 ["GuiObjects"]
  SETTABLEKS R3 R24 K69 ["BaseFrame"]
  GETTABLEKS R24 R0 K68 ["GuiObjects"]
  SETTABLEKS R4 R24 K13 ["ChatBarParentFrame"]
  GETTABLEKS R24 R0 K68 ["GuiObjects"]
  SETTABLEKS R5 R24 K15 ["ChannelsBarParentFrame"]
  GETTABLEKS R24 R0 K68 ["GuiObjects"]
  SETTABLEKS R6 R24 K19 ["ChatChannelParentFrame"]
  GETTABLEKS R24 R0 K68 ["GuiObjects"]
  SETTABLEKS R7 R24 K70 ["ChatResizerFrame"]
  GETTABLEKS R24 R0 K68 ["GuiObjects"]
  SETTABLEKS R8 R24 K71 ["ResizeIcon"]
  NAMECALL R24 R0 K72 ["AnimGuiObjects"]
  CALL R24 1 0
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_22:
  GETTABLEKS R1 R0 K0 ["ChatBar"]
  RETURN R1 1

PROTO_23:
  SETTABLEKS R1 R0 K0 ["ChatBar"]
  GETTABLEKS R2 R0 K0 ["ChatBar"]
  GETTABLEKS R5 R0 K1 ["GuiObjects"]
  GETTABLEKS R4 R5 K2 ["ChatBarParentFrame"]
  NAMECALL R2 R2 K3 ["CreateGuiObjects"]
  CALL R2 2 0
  RETURN R0 0

PROTO_24:
  SETTABLEKS R1 R0 K0 ["ChannelsBar"]
  GETTABLEKS R2 R0 K0 ["ChannelsBar"]
  GETTABLEKS R5 R0 K1 ["GuiObjects"]
  GETTABLEKS R4 R5 K2 ["ChannelsBarParentFrame"]
  NAMECALL R2 R2 K3 ["CreateGuiObjects"]
  CALL R2 2 0
  RETURN R0 0

PROTO_25:
  SETTABLEKS R1 R0 K0 ["MessageLogDisplay"]
  GETTABLEKS R3 R0 K0 ["MessageLogDisplay"]
  GETTABLEKS R2 R3 K1 ["GuiObject"]
  GETTABLEKS R4 R0 K2 ["GuiObjects"]
  GETTABLEKS R3 R4 K3 ["ChatChannelParentFrame"]
  SETTABLEKS R3 R2 K4 ["Parent"]
  RETURN R0 0

PROTO_26:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["SwitchCurrentChannel"]
  CALL R0 2 0
  RETURN R0 0

PROTO_27:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["GetChannel"]
  CALL R2 2 1
  JUMPIFNOT R2 [+8]
  GETIMPORT R2 K2 [error]
  LOADK R4 K3 ["Channel '"]
  MOVE R5 R1
  LOADK R6 K4 ["' already exists!"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["new"]
  MOVE R3 R1
  GETTABLEKS R4 R0 K6 ["MessageLogDisplay"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K7 ["Channels"]
  NAMECALL R4 R1 K8 ["lower"]
  CALL R4 1 1
  SETTABLE R2 R3 R4
  LOADB R5 0
  NAMECALL R3 R2 K9 ["SetActive"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K10 ["ChannelsBar"]
  MOVE R5 R1
  NAMECALL R3 R3 K11 ["AddChannelTab"]
  CALL R3 2 1
  GETTABLEKS R5 R3 K12 ["NameTag"]
  GETTABLEKS R4 R5 K13 ["MouseButton1Click"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R4 R4 K14 ["connect"]
  CALL R4 2 0
  MOVE R6 R3
  NAMECALL R4 R2 K15 ["RegisterChannelTab"]
  CALL R4 2 0
  RETURN R2 1

PROTO_28:
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K2 ["Channels"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  RETURN R5 1
  FORGLOOP R1 2 [-2]
  LOADNIL R1
  RETURN R1 1

PROTO_29:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["GetChannel"]
  CALL R2 2 1
  JUMPIF R2 [+7]
  GETIMPORT R2 K2 [error]
  LOADK R4 K3 ["Channel '"]
  MOVE R5 R1
  LOADK R6 K4 ["' does not exist!"]
  CONCAT R3 R4 R6
  CALL R2 1 0
  NAMECALL R2 R1 K5 ["lower"]
  CALL R2 1 1
  LOADB R3 0
  GETTABLEKS R5 R0 K6 ["Channels"]
  GETTABLE R4 R5 R2
  NAMECALL R5 R0 K7 ["GetCurrentChannel"]
  CALL R5 1 1
  JUMPIFNOTEQ R4 R5 [+6]
  LOADB R3 1
  LOADNIL R6
  NAMECALL R4 R0 K8 ["SwitchCurrentChannel"]
  CALL R4 2 0
  GETTABLEKS R5 R0 K6 ["Channels"]
  GETTABLE R4 R5 R2
  NAMECALL R4 R4 K9 ["Destroy"]
  CALL R4 1 0
  GETTABLEKS R4 R0 K6 ["Channels"]
  LOADNIL R5
  SETTABLE R5 R4 R2
  GETTABLEKS R4 R0 K10 ["ChannelsBar"]
  MOVE R6 R1
  NAMECALL R4 R4 K11 ["RemoveChannelTab"]
  CALL R4 2 0
  JUMPIFNOT R3 [+40]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["GeneralChannelName"]
  NAMECALL R5 R0 K0 ["GetChannel"]
  CALL R5 2 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["GeneralChannelName"]
  NAMECALL R6 R6 K5 ["lower"]
  CALL R6 1 1
  JUMPIFEQ R2 R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  LOADNIL R6
  JUMPIFNOT R4 [+5]
  JUMPIF R5 [+4]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["GeneralChannelName"]
  JUMP [+9]
  NAMECALL R7 R0 K13 ["GetFirstChannel"]
  CALL R7 1 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R8 R7 K14 ["Name"]
  JUMPIF R8 [+1]
  LOADNIL R8
  MOVE R6 R8
  MOVE R9 R6
  NAMECALL R7 R0 K8 ["SwitchCurrentChannel"]
  CALL R7 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K15 ["ShowChannelsBar"]
  JUMPIF R4 [+14]
  GETTABLEKS R5 R0 K16 ["ChatBar"]
  GETTABLEKS R4 R5 K17 ["TargetChannel"]
  JUMPIFNOTEQ R4 R1 [+9]
  GETTABLEKS R4 R0 K16 ["ChatBar"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["GeneralChannelName"]
  NAMECALL R4 R4 K18 ["SetChannelTarget"]
  CALL R4 2 0
  RETURN R0 0

PROTO_30:
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R0 K0 ["Channels"]
  NAMECALL R4 R1 K1 ["lower"]
  CALL R4 1 1
  GETTABLE R2 R3 R4
  JUMPIF R2 [+1]
  LOADNIL R2
  RETURN R2 1

PROTO_31:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ShowChannelsBar"]
  JUMPIF R1 [+5]
  GETTABLEKS R2 R0 K1 ["ChatBar"]
  GETTABLEKS R1 R2 K2 ["TargetChannel"]
  RETURN R1 1
  NAMECALL R1 R0 K3 ["GetCurrentChannel"]
  CALL R1 1 1
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K4 ["Name"]
  RETURN R2 1

PROTO_32:
  GETTABLEKS R1 R0 K0 ["CurrentChannel"]
  RETURN R1 1

PROTO_33:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ShowChannelsBar"]
  JUMPIF R2 [+15]
  MOVE R4 R1
  NAMECALL R2 R0 K1 ["GetChannel"]
  CALL R2 2 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R3 R0 K2 ["ChatBar"]
  GETTABLEKS R5 R2 K3 ["Name"]
  NAMECALL R3 R3 K4 ["SetChannelTarget"]
  CALL R3 2 0
  GETUPVAL R3 0
  GETTABLEKS R1 R3 K5 ["GeneralChannelName"]
  NAMECALL R2 R0 K6 ["GetCurrentChannel"]
  CALL R2 1 1
  MOVE R5 R1
  NAMECALL R3 R0 K1 ["GetChannel"]
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+9]
  GETIMPORT R4 K8 [error]
  GETIMPORT R5 K11 [string.format]
  LOADK R6 K12 ["Channel '%s' does not exist."]
  MOVE R7 R1
  CALL R5 2 -1
  CALL R4 -1 0
  JUMPIFEQ R3 R2 [+35]
  JUMPIFNOT R2 [+15]
  LOADB R6 0
  NAMECALL R4 R2 K13 ["SetActive"]
  CALL R4 2 0
  GETTABLEKS R4 R0 K14 ["ChannelsBar"]
  GETTABLEKS R6 R2 K3 ["Name"]
  NAMECALL R4 R4 K15 ["GetChannelTab"]
  CALL R4 2 1
  LOADB R7 0
  NAMECALL R5 R4 K13 ["SetActive"]
  CALL R5 2 0
  JUMPIFNOT R3 [+15]
  LOADB R6 1
  NAMECALL R4 R3 K13 ["SetActive"]
  CALL R4 2 0
  GETTABLEKS R4 R0 K14 ["ChannelsBar"]
  GETTABLEKS R6 R3 K3 ["Name"]
  NAMECALL R4 R4 K15 ["GetChannelTab"]
  CALL R4 2 1
  LOADB R7 1
  NAMECALL R5 R4 K13 ["SetActive"]
  CALL R5 2 0
  SETTABLEKS R3 R0 K16 ["CurrentChannel"]
  RETURN R0 0

PROTO_34:
  GETTABLEKS R1 R0 K0 ["GuiObject"]
  GETTABLEKS R2 R0 K1 ["Visible"]
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R0 K2 ["CoreGuiEnabled"]
  SETTABLEKS R2 R1 K1 ["Visible"]
  RETURN R0 0

PROTO_35:
  GETTABLEKS R1 R0 K0 ["Visible"]
  RETURN R1 1

PROTO_36:
  SETTABLEKS R1 R0 K0 ["Visible"]
  NAMECALL R2 R0 K1 ["UpdateFrameVisibility"]
  CALL R2 1 0
  RETURN R0 0

PROTO_37:
  GETTABLEKS R1 R0 K0 ["CoreGuiEnabled"]
  RETURN R1 1

PROTO_38:
  SETTABLEKS R1 R0 K0 ["CoreGuiEnabled"]
  NAMECALL R2 R0 K1 ["UpdateFrameVisibility"]
  CALL R2 1 0
  RETURN R0 0

PROTO_39:
  GETTABLEKS R2 R0 K0 ["GuiObjects"]
  GETTABLEKS R1 R2 K1 ["ChatResizerFrame"]
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["Active"]
  RETURN R0 0

PROTO_40:
  GETTABLEKS R2 R0 K0 ["GuiObjects"]
  GETTABLEKS R1 R2 K1 ["ChatResizerFrame"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["Active"]
  RETURN R0 0

PROTO_41:
  GETTABLEKS R2 R0 K0 ["ChannelsBar"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["FadeOutBackground"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K2 ["MessageLogDisplay"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["FadeOutBackground"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K3 ["ChatBar"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["FadeOutBackground"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K4 ["AnimParams"]
  LOADN R3 1
  SETTABLEKS R3 R2 K5 ["Background_TargetTransparency"]
  GETTABLEKS R2 R0 K4 ["AnimParams"]
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K6 ["NormalizedDefaultExptValueInSeconds"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K7 ["Background_NormalizedExptValue"]
  RETURN R0 0

PROTO_42:
  GETTABLEKS R2 R0 K0 ["ChannelsBar"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["FadeInBackground"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K2 ["MessageLogDisplay"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["FadeInBackground"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K3 ["ChatBar"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["FadeInBackground"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K4 ["AnimParams"]
  LOADK R3 K5 [0.6]
  SETTABLEKS R3 R2 K6 ["Background_TargetTransparency"]
  GETTABLEKS R2 R0 K4 ["AnimParams"]
  GETUPVAL R3 0
  MOVE R5 R1
  NAMECALL R3 R3 K7 ["NormalizedDefaultExptValueInSeconds"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K8 ["Background_NormalizedExptValue"]
  RETURN R0 0

PROTO_43:
  GETTABLEKS R2 R0 K0 ["MessageLogDisplay"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["FadeOutText"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K2 ["ChannelsBar"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["FadeOutText"]
  CALL R2 2 0
  RETURN R0 0

PROTO_44:
  GETTABLEKS R2 R0 K0 ["MessageLogDisplay"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["FadeInText"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K2 ["ChannelsBar"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["FadeInText"]
  CALL R2 2 0
  RETURN R0 0

PROTO_45:
  GETTABLEKS R2 R0 K0 ["GuiObjects"]
  GETTABLEKS R1 R2 K1 ["ChatChannelParentFrame"]
  GETTABLEKS R3 R0 K2 ["AnimParams"]
  GETTABLEKS R2 R3 K3 ["Background_CurrentTransparency"]
  SETTABLEKS R2 R1 K4 ["BackgroundTransparency"]
  GETTABLEKS R2 R0 K0 ["GuiObjects"]
  GETTABLEKS R1 R2 K5 ["ChatResizerFrame"]
  GETTABLEKS R3 R0 K2 ["AnimParams"]
  GETTABLEKS R2 R3 K3 ["Background_CurrentTransparency"]
  SETTABLEKS R2 R1 K4 ["BackgroundTransparency"]
  GETTABLEKS R2 R0 K0 ["GuiObjects"]
  GETTABLEKS R1 R2 K6 ["ResizeIcon"]
  GETTABLEKS R3 R0 K2 ["AnimParams"]
  GETTABLEKS R2 R3 K3 ["Background_CurrentTransparency"]
  SETTABLEKS R2 R1 K7 ["ImageTransparency"]
  RETURN R0 0

PROTO_46:
  GETTABLEKS R1 R0 K0 ["AnimParams"]
  LOADK R2 K1 [0.6]
  SETTABLEKS R2 R1 K2 ["Background_TargetTransparency"]
  GETTABLEKS R1 R0 K0 ["AnimParams"]
  LOADK R2 K1 [0.6]
  SETTABLEKS R2 R1 K3 ["Background_CurrentTransparency"]
  GETTABLEKS R1 R0 K0 ["AnimParams"]
  GETUPVAL R2 0
  LOADN R4 0
  NAMECALL R2 R2 K4 ["NormalizedDefaultExptValueInSeconds"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["Background_NormalizedExptValue"]
  RETURN R0 0

PROTO_47:
  GETTABLEKS R2 R0 K0 ["ChatBar"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["Update"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K2 ["ChannelsBar"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["Update"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K3 ["MessageLogDisplay"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["Update"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K4 ["AnimParams"]
  GETUPVAL R3 0
  GETTABLEKS R6 R0 K4 ["AnimParams"]
  GETTABLEKS R5 R6 K5 ["Background_CurrentTransparency"]
  GETTABLEKS R7 R0 K4 ["AnimParams"]
  GETTABLEKS R6 R7 K6 ["Background_TargetTransparency"]
  GETTABLEKS R8 R0 K4 ["AnimParams"]
  GETTABLEKS R7 R8 K7 ["Background_NormalizedExptValue"]
  MOVE R8 R1
  NAMECALL R3 R3 K8 ["Expt"]
  CALL R3 5 1
  SETTABLEKS R3 R2 K5 ["Background_CurrentTransparency"]
  NAMECALL R2 R0 K9 ["AnimGuiObjects"]
  CALL R2 1 0
  RETURN R0 0

PROTO_48:
  NEWTABLE R1 16 0
  GETUPVAL R2 0
  FASTCALL2 SETMETATABLE R1 R2 [+3]
  GETIMPORT R0 K1 [setmetatable]
  CALL R0 2 1
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["GuiObject"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K3 ["GuiObjects"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["ChatBar"]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["ChannelsBar"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["MessageLogDisplay"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K7 ["Channels"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["CurrentChannel"]
  LOADB R1 1
  SETTABLEKS R1 R0 K9 ["Visible"]
  LOADB R1 1
  SETTABLEKS R1 R0 K10 ["CoreGuiEnabled"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K11 ["AnimParams"]
  NAMECALL R1 R0 K12 ["InitializeAnimParams"]
  CALL R1 1 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K4 ["Chat"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R1 K5 ["LocalPlayer"]
  LOADK R6 K6 ["PlayerGui"]
  NAMECALL R4 R3 K7 ["WaitForChild"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K4 ["Chat"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  LOADK R8 K8 ["ClientChatModules"]
  NAMECALL R6 R5 K7 ["WaitForChild"]
  CALL R6 2 1
  GETIMPORT R8 K10 [script]
  GETTABLEKS R7 R8 K11 ["Parent"]
  GETIMPORT R8 K13 [require]
  LOADK R11 K14 ["ChatChannel"]
  NAMECALL R9 R7 K7 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  GETIMPORT R9 K13 [require]
  LOADK R12 K15 ["ChatSettings"]
  NAMECALL R10 R6 K7 ["WaitForChild"]
  CALL R10 2 -1
  CALL R9 -1 1
  GETIMPORT R10 K13 [require]
  LOADK R13 K16 ["CurveUtil"]
  NAMECALL R11 R7 K7 ["WaitForChild"]
  CALL R11 2 -1
  CALL R10 -1 1
  NEWTABLE R11 32 0
  SETTABLEKS R11 R11 K17 ["__index"]
  DUPCLOSURE R12 K18 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R1
  SETGLOBAL R12 K19 ["getClassicChatEnabled"]
  DUPCLOSURE R12 K20 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R1
  SETGLOBAL R12 K21 ["getBubbleChatEnabled"]
  DUPCLOSURE R12 K22 [PROTO_2]
  SETGLOBAL R12 K23 ["bubbleChatOnly"]
  DUPCLOSURE R12 K24 [PROTO_3]
  SETGLOBAL R12 K25 ["mergeProps"]
  DUPCLOSURE R12 K26 [PROTO_21]
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K27 ["CreateGuiObjects"]
  DUPCLOSURE R12 K28 [PROTO_22]
  SETTABLEKS R12 R11 K29 ["GetChatBar"]
  DUPCLOSURE R12 K30 [PROTO_23]
  SETTABLEKS R12 R11 K31 ["RegisterChatBar"]
  DUPCLOSURE R12 K32 [PROTO_24]
  SETTABLEKS R12 R11 K33 ["RegisterChannelsBar"]
  DUPCLOSURE R12 K34 [PROTO_25]
  SETTABLEKS R12 R11 K35 ["RegisterMessageLogDisplay"]
  DUPCLOSURE R12 K36 [PROTO_27]
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K37 ["AddChannel"]
  DUPCLOSURE R12 K38 [PROTO_28]
  SETTABLEKS R12 R11 K39 ["GetFirstChannel"]
  DUPCLOSURE R12 K40 [PROTO_29]
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K41 ["RemoveChannel"]
  DUPCLOSURE R12 K42 [PROTO_30]
  SETTABLEKS R12 R11 K43 ["GetChannel"]
  DUPCLOSURE R12 K44 [PROTO_31]
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K45 ["GetTargetMessageChannel"]
  DUPCLOSURE R12 K46 [PROTO_32]
  SETTABLEKS R12 R11 K47 ["GetCurrentChannel"]
  DUPCLOSURE R12 K48 [PROTO_33]
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K49 ["SwitchCurrentChannel"]
  DUPCLOSURE R12 K50 [PROTO_34]
  SETTABLEKS R12 R11 K51 ["UpdateFrameVisibility"]
  DUPCLOSURE R12 K52 [PROTO_35]
  SETTABLEKS R12 R11 K53 ["GetVisible"]
  DUPCLOSURE R12 K54 [PROTO_36]
  SETTABLEKS R12 R11 K55 ["SetVisible"]
  DUPCLOSURE R12 K56 [PROTO_37]
  SETTABLEKS R12 R11 K57 ["GetCoreGuiEnabled"]
  DUPCLOSURE R12 K58 [PROTO_38]
  SETTABLEKS R12 R11 K59 ["SetCoreGuiEnabled"]
  DUPCLOSURE R12 K60 [PROTO_39]
  SETTABLEKS R12 R11 K61 ["EnableResizable"]
  DUPCLOSURE R12 K62 [PROTO_40]
  SETTABLEKS R12 R11 K63 ["DisableResizable"]
  DUPCLOSURE R12 K64 [PROTO_41]
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K65 ["FadeOutBackground"]
  DUPCLOSURE R12 K66 [PROTO_42]
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K67 ["FadeInBackground"]
  DUPCLOSURE R12 K68 [PROTO_43]
  SETTABLEKS R12 R11 K69 ["FadeOutText"]
  DUPCLOSURE R12 K70 [PROTO_44]
  SETTABLEKS R12 R11 K71 ["FadeInText"]
  DUPCLOSURE R12 K72 [PROTO_45]
  SETTABLEKS R12 R11 K73 ["AnimGuiObjects"]
  DUPCLOSURE R12 K74 [PROTO_46]
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K75 ["InitializeAnimParams"]
  DUPCLOSURE R12 K76 [PROTO_47]
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K77 ["Update"]
  DUPCLOSURE R12 K78 [PROTO_48]
  CAPTURE VAL R11
  SETTABLEKS R12 R0 K79 ["new"]
  RETURN R0 1