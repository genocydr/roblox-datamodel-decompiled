PROTO_0:
  JUMPIF R0 [+1]
  RETURN R0 0
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETTABLEKS R9 R6 K2 ["id"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K5 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["LocalPlayer"]
  GETUPVAL R3 2
  GETTABLEKS R5 R2 K7 ["UserId"]
  GETTABLEKS R6 R0 K8 ["conversationId"]
  MOVE R7 R1
  NAMECALL R3 R3 K9 ["onActivatedInviteSent"]
  CALL R3 4 0
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["inviteStatus"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["Failed"]
  JUMPIFEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["analytics"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["users"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["inviteUser"]
  LENGTH R4 R2
  JUMPIFNOTEQKN R4 K6 [1] [+16]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  DUPCLOSURE R5 K7 [PROTO_1]
  MOVE R6 R3
  GETTABLEN R8 R2 1
  GETTABLEKS R7 R8 K8 ["id"]
  CALL R6 1 1
  MOVE R8 R4
  MOVE R9 R5
  NAMECALL R6 R6 K9 ["andThen"]
  CALL R6 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  GETUPVAL R2 1
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["eventStream"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K2 ["onInvite"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["visible"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["layoutOrder"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["zIndex"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["size"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["subtitle"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K6 ["title"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["users"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K8 ["inviteStatus"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K9 ["presence"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K10 ["UIBloxThemeEnabled"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["createElement"]
  LOADK R12 K12 ["ImageButton"]
  NEWTABLE R13 16 0
  SETTABLEKS R1 R13 K13 ["Visible"]
  LOADB R14 1
  SETTABLEKS R14 R13 K14 ["Selectable"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K15 ["color"]
  LOADK R15 K16 ["PlayerRowFrame"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K17 ["BackgroundColor3"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K18 ["transparency"]
  LOADK R15 K16 ["PlayerRowFrame"]
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["BackgroundTransparency"]
  JUMPIF R10 [+2]
  LOADK R14 K20 ["rbxasset://textures/ui/dialog_white.png"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K21 ["Image"]
  JUMPIF R10 [+2]
  LOADK R14 K22 [0.85]
  JUMP [+1]
  LOADN R14 0
  SETTABLEKS R14 R13 K23 ["ImageTransparency"]
  JUMPIF R10 [+3]
  GETIMPORT R14 K27 [Enum.ScaleType.Slice]
  JUMPIF R14 [+2]
  GETIMPORT R14 K29 [Enum.ScaleType.Stretch]
  SETTABLEKS R14 R13 K25 ["ScaleType"]
  JUMPIF R10 [+2]
  GETUPVAL R14 2
  JUMPIF R14 [+3]
  GETIMPORT R14 K32 [Rect.new]
  CALL R14 0 1
  SETTABLEKS R14 R13 K33 ["SliceCenter"]
  SETTABLEKS R4 R13 K34 ["Size"]
  SETTABLEKS R2 R13 K35 ["LayoutOrder"]
  SETTABLEKS R3 R13 K36 ["ZIndex"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K37 ["Event"]
  GETTABLEKS R14 R15 K38 ["Activated"]
  GETTABLEKS R15 R0 K39 ["onInvite"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K46 [{"UICorner", "UIPadding", "UIListLayout", "Thumbnail", "Details", "InviteButton"}]
  JUMPIFNOT R10 [+12]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  LOADK R16 K40 ["UICorner"]
  DUPTABLE R17 K48 [{"CornerRadius"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K49 ["MenuContainerCornerRadius"]
  SETTABLEKS R18 R17 K47 ["CornerRadius"]
  CALL R15 2 1
  JUMPIF R15 [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K40 ["UICorner"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  LOADK R16 K41 ["UIPadding"]
  DUPTABLE R17 K54 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
  GETIMPORT R18 K56 [UDim.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K50 ["PaddingLeft"]
  GETIMPORT R18 K56 [UDim.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K51 ["PaddingRight"]
  GETIMPORT R18 K56 [UDim.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K52 ["PaddingTop"]
  GETIMPORT R18 K56 [UDim.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K53 ["PaddingBottom"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K41 ["UIPadding"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  LOADK R16 K42 ["UIListLayout"]
  DUPTABLE R17 K62 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R18 K64 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K57 ["FillDirection"]
  GETIMPORT R18 K66 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K58 ["HorizontalAlignment"]
  GETIMPORT R18 K68 [Enum.VerticalAlignment.Center]
  SETTABLEKS R18 R17 K59 ["VerticalAlignment"]
  GETIMPORT R18 K69 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K60 ["SortOrder"]
  GETIMPORT R18 K56 [UDim.new]
  LOADN R19 0
  LOADN R20 12
  CALL R18 2 1
  SETTABLEKS R18 R17 K61 ["Padding"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["UIListLayout"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K70 [{"users", "size", "layoutOrder", "zIndex"}]
  SETTABLEKS R7 R17 K7 ["users"]
  GETIMPORT R18 K72 [UDim2.new]
  LOADN R19 0
  LOADN R20 32
  LOADN R21 0
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K4 ["size"]
  LOADN R18 0
  SETTABLEKS R18 R17 K2 ["layoutOrder"]
  SETTABLEKS R3 R17 K3 ["zIndex"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K43 ["Thumbnail"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K73 [{"title", "subtitle", "presence", "size", "layoutOrder", "zIndex"}]
  SETTABLEKS R6 R17 K6 ["title"]
  SETTABLEKS R5 R17 K5 ["subtitle"]
  SETTABLEKS R9 R17 K9 ["presence"]
  GETIMPORT R18 K72 [UDim2.new]
  LOADN R19 1
  LOADN R20 131
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K4 ["size"]
  LOADN R18 1
  SETTABLEKS R18 R17 K2 ["layoutOrder"]
  SETTABLEKS R3 R17 K3 ["zIndex"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K44 ["Details"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K74 [{"size", "layoutOrder", "zIndex", "onInvite", "inviteStatus"}]
  GETIMPORT R18 K72 [UDim2.new]
  LOADN R19 0
  LOADN R20 69
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K4 ["size"]
  LOADN R18 2
  SETTABLEKS R18 R17 K2 ["layoutOrder"]
  SETTABLEKS R3 R17 K3 ["zIndex"]
  GETTABLEKS R18 R0 K39 ["onInvite"]
  SETTABLEKS R18 R17 K39 ["onInvite"]
  SETTABLEKS R8 R17 K8 ["inviteStatus"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K45 ["InviteButton"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["Players"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["RbxAnalyticsService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K6 ["CoreGui"]
  NAMECALL R5 R5 K3 ["GetService"]
  CALL R5 2 1
  GETTABLEKS R4 R5 K7 ["RobloxGui"]
  GETTABLEKS R3 R4 K8 ["Modules"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R0 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R3 K13 ["Settings"]
  GETTABLEKS R6 R7 K14 ["Theme"]
  CALL R5 1 1
  GETTABLEKS R8 R3 K13 ["Settings"]
  GETTABLEKS R7 R8 K15 ["Pages"]
  GETTABLEKS R6 R7 K16 ["ShareGame"]
  GETIMPORT R7 K10 [require]
  GETTABLEKS R9 R6 K17 ["Components"]
  GETTABLEKS R8 R9 K18 ["ConversationDetails"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R10 R6 K17 ["Components"]
  GETTABLEKS R9 R10 K19 ["ConversationThumbnail"]
  CALL R8 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R14 R0 K20 ["Workspace"]
  GETTABLEKS R13 R14 K11 ["Packages"]
  GETTABLEKS R12 R13 K21 ["Analytics"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K22 ["AnalyticsReporters"]
  GETTABLEKS R9 R10 K23 ["EventStream"]
  GETIMPORT R10 K10 [require]
  GETTABLEKS R12 R6 K17 ["Components"]
  GETTABLEKS R11 R12 K24 ["InviteButton"]
  CALL R10 1 1
  GETIMPORT R11 K10 [require]
  GETTABLEKS R12 R6 K25 ["Constants"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K26 ["InviteStatus"]
  GETIMPORT R13 K29 [Rect.new]
  LOADN R14 10
  LOADN R15 10
  LOADN R16 10
  LOADN R17 10
  CALL R13 4 1
  GETTABLEKS R14 R4 K30 ["PureComponent"]
  LOADK R16 K31 ["ConversationEntry"]
  NAMECALL R14 R14 K32 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K33 [PROTO_3]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K34 ["init"]
  DUPCLOSURE R15 K35 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R10
  SETTABLEKS R15 R14 K36 ["render"]
  RETURN R14 1
