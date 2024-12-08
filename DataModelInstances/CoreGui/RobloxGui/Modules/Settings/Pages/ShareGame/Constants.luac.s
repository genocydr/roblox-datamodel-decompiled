MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CorePackages"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Workspace"]
  GETTABLEKS R5 R6 K7 ["Packages"]
  GETTABLEKS R4 R5 K8 ["UserLib"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K9 ["Models"]
  GETTABLEKS R1 R2 K10 ["UserModel"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Workspace"]
  GETTABLEKS R6 R7 K7 ["Packages"]
  GETTABLEKS R5 R6 K8 ["UserLib"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K11 ["Utils"]
  GETTABLEKS R2 R3 K12 ["ThumbnailRequest"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Workspace"]
  GETTABLEKS R5 R6 K7 ["Packages"]
  GETTABLEKS R4 R5 K8 ["UserLib"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K11 ["Utils"]
  GETTABLEKS R4 R5 K13 ["Constants"]
  DUPTABLE R5 K19 [{"PHONE_PORTRAIT", "PHONE_LANDSCAPE", "TABLET_PORTRAIT", "TABLET_LANDSCAPE", "DESKTOP"}]
  LOADK R6 K14 ["PHONE_PORTRAIT"]
  SETTABLEKS R6 R5 K14 ["PHONE_PORTRAIT"]
  LOADK R6 K15 ["PHONE_LANDSCAPE"]
  SETTABLEKS R6 R5 K15 ["PHONE_LANDSCAPE"]
  LOADK R6 K16 ["TABLET_PORTRAIT"]
  SETTABLEKS R6 R5 K16 ["TABLET_PORTRAIT"]
  LOADK R6 K17 ["TABLET_LANDSCAPE"]
  SETTABLEKS R6 R5 K17 ["TABLET_LANDSCAPE"]
  LOADK R6 K18 ["DESKTOP"]
  SETTABLEKS R6 R5 K18 ["DESKTOP"]
  DUPTABLE R6 K28 [{"WHITE", "GRAY1", "GRAY2", "GRAY3", "GRAY4", "GRAY5", "GRAY6", "RED"}]
  GETIMPORT R7 K31 [Color3.fromRGB]
  LOADN R8 255
  LOADN R9 255
  LOADN R10 255
  CALL R7 3 1
  SETTABLEKS R7 R6 K20 ["WHITE"]
  GETIMPORT R7 K31 [Color3.fromRGB]
  LOADN R8 25
  LOADN R9 25
  LOADN R10 25
  CALL R7 3 1
  SETTABLEKS R7 R6 K21 ["GRAY1"]
  GETIMPORT R7 K31 [Color3.fromRGB]
  LOADN R8 117
  LOADN R9 117
  LOADN R10 117
  CALL R7 3 1
  SETTABLEKS R7 R6 K22 ["GRAY2"]
  GETIMPORT R7 K31 [Color3.fromRGB]
  LOADN R8 184
  LOADN R9 184
  LOADN R10 184
  CALL R7 3 1
  SETTABLEKS R7 R6 K23 ["GRAY3"]
  GETIMPORT R7 K31 [Color3.fromRGB]
  LOADN R8 227
  LOADN R9 227
  LOADN R10 227
  CALL R7 3 1
  SETTABLEKS R7 R6 K24 ["GRAY4"]
  GETIMPORT R7 K31 [Color3.fromRGB]
  LOADN R8 242
  LOADN R9 242
  LOADN R10 242
  CALL R7 3 1
  SETTABLEKS R7 R6 K25 ["GRAY5"]
  GETIMPORT R7 K31 [Color3.fromRGB]
  LOADN R8 245
  LOADN R9 245
  LOADN R10 245
  CALL R7 3 1
  SETTABLEKS R7 R6 K26 ["GRAY6"]
  GETIMPORT R7 K31 [Color3.fromRGB]
  LOADN R8 254
  LOADN R9 68
  LOADN R10 72
  CALL R7 3 1
  SETTABLEKS R7 R6 K27 ["RED"]
  DUPTABLE R7 K42 [{"Color", "PresenceColors", "PresenceTextKey", "InviteStatus", "DeviceOrientation", "PageRoute", "SHARE_GAME_Z_INDEX", "DeviceLayout", "LayoutSpecific", "Triggers"}]
  SETTABLEKS R6 R7 K32 ["Color"]
  NEWTABLE R8 4 0
  GETTABLEKS R10 R1 K43 ["PresenceType"]
  GETTABLEKS R9 R10 K44 ["ONLINE"]
  GETIMPORT R10 K31 [Color3.fromRGB]
  LOADN R11 0
  LOADN R12 162
  LOADN R13 255
  CALL R10 3 1
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R1 K43 ["PresenceType"]
  GETTABLEKS R9 R10 K45 ["IN_GAME"]
  GETIMPORT R10 K31 [Color3.fromRGB]
  LOADN R11 2
  LOADN R12 183
  LOADN R13 87
  CALL R10 3 1
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R1 K43 ["PresenceType"]
  GETTABLEKS R9 R10 K46 ["IN_STUDIO"]
  GETIMPORT R10 K31 [Color3.fromRGB]
  LOADN R11 246
  LOADN R12 136
  LOADN R13 2
  CALL R10 3 1
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R1 K43 ["PresenceType"]
  GETTABLEKS R9 R10 K47 ["OFFLINE"]
  GETTABLEKS R10 R6 K23 ["GRAY3"]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R7 K33 ["PresenceColors"]
  NEWTABLE R8 4 0
  GETTABLEKS R10 R1 K43 ["PresenceType"]
  GETTABLEKS R9 R10 K44 ["ONLINE"]
  LOADK R10 K48 ["InGame.Presence.Label.Online"]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R1 K43 ["PresenceType"]
  GETTABLEKS R9 R10 K45 ["IN_GAME"]
  LOADK R10 K49 ["InGame.Presence.Label.InGame"]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R1 K43 ["PresenceType"]
  GETTABLEKS R9 R10 K46 ["IN_STUDIO"]
  LOADK R10 K50 ["InGame.Presence.Label.InStudio"]
  SETTABLE R10 R8 R9
  GETTABLEKS R10 R1 K43 ["PresenceType"]
  GETTABLEKS R9 R10 K47 ["OFFLINE"]
  LOADK R10 K51 ["InGame.Presence.Label.Offline"]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R7 K34 ["PresenceTextKey"]
  DUPTABLE R8 K56 [{"Success", "Moderated", "Failed", "Pending"}]
  LOADK R9 K52 ["Success"]
  SETTABLEKS R9 R8 K52 ["Success"]
  LOADK R9 K53 ["Moderated"]
  SETTABLEKS R9 R8 K53 ["Moderated"]
  LOADK R9 K54 ["Failed"]
  SETTABLEKS R9 R8 K54 ["Failed"]
  LOADK R9 K55 ["Pending"]
  SETTABLEKS R9 R8 K55 ["Pending"]
  SETTABLEKS R8 R7 K35 ["InviteStatus"]
  DUPTABLE R8 K60 [{"PORTRAIT", "LANDSCAPE", "INVALID"}]
  LOADK R9 K57 ["PORTRAIT"]
  SETTABLEKS R9 R8 K57 ["PORTRAIT"]
  LOADK R9 K58 ["LANDSCAPE"]
  SETTABLEKS R9 R8 K58 ["LANDSCAPE"]
  LOADK R9 K59 ["INVALID"]
  SETTABLEKS R9 R8 K59 ["INVALID"]
  SETTABLEKS R8 R7 K36 ["DeviceOrientation"]
  DUPTABLE R8 K64 [{"NONE", "SETTINGS_HUB", "SHARE_GAME"}]
  LOADK R9 K61 ["NONE"]
  SETTABLEKS R9 R8 K61 ["NONE"]
  LOADK R9 K62 ["SETTINGS_HUB"]
  SETTABLEKS R9 R8 K62 ["SETTINGS_HUB"]
  LOADK R9 K63 ["SHARE_GAME"]
  SETTABLEKS R9 R8 K63 ["SHARE_GAME"]
  SETTABLEKS R8 R7 K37 ["PageRoute"]
  LOADN R8 2
  SETTABLEKS R8 R7 K38 ["SHARE_GAME_Z_INDEX"]
  SETTABLEKS R5 R7 K39 ["DeviceLayout"]
  NEWTABLE R8 8 0
  GETTABLEKS R9 R5 K15 ["PHONE_LANDSCAPE"]
  DUPTABLE R10 K74 [{"HEADER_HEIGHT", "PAGE_TITLE_TEXT_SIZE", "SEARCH_BOX_MARGIN", "PAGE_SIDE_MARGINS", "BACK_BUTTON_HEIGHT", "BACK_BUTTON_WIDTH", "BACK_BUTTON_MODAL_WIDTH", "EXTEND_BOTTOM_SIZE", "TOAST_HEIGHT"}]
  LOADN R11 40
  SETTABLEKS R11 R10 K65 ["HEADER_HEIGHT"]
  LOADN R11 23
  SETTABLEKS R11 R10 K66 ["PAGE_TITLE_TEXT_SIZE"]
  LOADN R11 12
  SETTABLEKS R11 R10 K67 ["SEARCH_BOX_MARGIN"]
  LOADN R11 7
  SETTABLEKS R11 R10 K68 ["PAGE_SIDE_MARGINS"]
  LOADN R11 44
  SETTABLEKS R11 R10 K69 ["BACK_BUTTON_HEIGHT"]
  LOADN R11 44
  SETTABLEKS R11 R10 K70 ["BACK_BUTTON_WIDTH"]
  LOADN R11 44
  SETTABLEKS R11 R10 K71 ["BACK_BUTTON_MODAL_WIDTH"]
  LOADN R11 0
  SETTABLEKS R11 R10 K72 ["EXTEND_BOTTOM_SIZE"]
  LOADN R11 40
  SETTABLEKS R11 R10 K73 ["TOAST_HEIGHT"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R5 K14 ["PHONE_PORTRAIT"]
  DUPTABLE R10 K74 [{"HEADER_HEIGHT", "PAGE_TITLE_TEXT_SIZE", "SEARCH_BOX_MARGIN", "PAGE_SIDE_MARGINS", "BACK_BUTTON_HEIGHT", "BACK_BUTTON_WIDTH", "BACK_BUTTON_MODAL_WIDTH", "EXTEND_BOTTOM_SIZE", "TOAST_HEIGHT"}]
  LOADN R11 40
  SETTABLEKS R11 R10 K65 ["HEADER_HEIGHT"]
  LOADN R11 23
  SETTABLEKS R11 R10 K66 ["PAGE_TITLE_TEXT_SIZE"]
  LOADN R11 15
  SETTABLEKS R11 R10 K67 ["SEARCH_BOX_MARGIN"]
  LOADN R11 5
  SETTABLEKS R11 R10 K68 ["PAGE_SIDE_MARGINS"]
  LOADN R11 44
  SETTABLEKS R11 R10 K69 ["BACK_BUTTON_HEIGHT"]
  LOADN R11 44
  SETTABLEKS R11 R10 K70 ["BACK_BUTTON_WIDTH"]
  LOADN R11 44
  SETTABLEKS R11 R10 K71 ["BACK_BUTTON_MODAL_WIDTH"]
  LOADN R11 0
  SETTABLEKS R11 R10 K72 ["EXTEND_BOTTOM_SIZE"]
  LOADN R11 40
  SETTABLEKS R11 R10 K73 ["TOAST_HEIGHT"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R5 K16 ["TABLET_PORTRAIT"]
  DUPTABLE R10 K74 [{"HEADER_HEIGHT", "PAGE_TITLE_TEXT_SIZE", "SEARCH_BOX_MARGIN", "PAGE_SIDE_MARGINS", "BACK_BUTTON_HEIGHT", "BACK_BUTTON_WIDTH", "BACK_BUTTON_MODAL_WIDTH", "EXTEND_BOTTOM_SIZE", "TOAST_HEIGHT"}]
  LOADN R11 40
  SETTABLEKS R11 R10 K65 ["HEADER_HEIGHT"]
  LOADN R11 23
  SETTABLEKS R11 R10 K66 ["PAGE_TITLE_TEXT_SIZE"]
  LOADN R11 15
  SETTABLEKS R11 R10 K67 ["SEARCH_BOX_MARGIN"]
  LOADN R11 15
  SETTABLEKS R11 R10 K68 ["PAGE_SIDE_MARGINS"]
  LOADN R11 44
  SETTABLEKS R11 R10 K69 ["BACK_BUTTON_HEIGHT"]
  LOADN R11 44
  SETTABLEKS R11 R10 K70 ["BACK_BUTTON_WIDTH"]
  LOADN R11 44
  SETTABLEKS R11 R10 K71 ["BACK_BUTTON_MODAL_WIDTH"]
  LOADN R11 0
  SETTABLEKS R11 R10 K72 ["EXTEND_BOTTOM_SIZE"]
  LOADN R11 80
  SETTABLEKS R11 R10 K73 ["TOAST_HEIGHT"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R5 K17 ["TABLET_LANDSCAPE"]
  DUPTABLE R10 K74 [{"HEADER_HEIGHT", "PAGE_TITLE_TEXT_SIZE", "SEARCH_BOX_MARGIN", "PAGE_SIDE_MARGINS", "BACK_BUTTON_HEIGHT", "BACK_BUTTON_WIDTH", "BACK_BUTTON_MODAL_WIDTH", "EXTEND_BOTTOM_SIZE", "TOAST_HEIGHT"}]
  LOADN R11 60
  SETTABLEKS R11 R10 K65 ["HEADER_HEIGHT"]
  LOADN R11 23
  SETTABLEKS R11 R10 K66 ["PAGE_TITLE_TEXT_SIZE"]
  LOADN R11 15
  SETTABLEKS R11 R10 K67 ["SEARCH_BOX_MARGIN"]
  LOADN R11 5
  SETTABLEKS R11 R10 K68 ["PAGE_SIDE_MARGINS"]
  LOADN R11 44
  SETTABLEKS R11 R10 K69 ["BACK_BUTTON_HEIGHT"]
  LOADN R11 44
  SETTABLEKS R11 R10 K70 ["BACK_BUTTON_WIDTH"]
  LOADN R11 44
  SETTABLEKS R11 R10 K71 ["BACK_BUTTON_MODAL_WIDTH"]
  LOADN R11 68
  SETTABLEKS R11 R10 K72 ["EXTEND_BOTTOM_SIZE"]
  LOADN R11 80
  SETTABLEKS R11 R10 K73 ["TOAST_HEIGHT"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R5 K18 ["DESKTOP"]
  DUPTABLE R10 K74 [{"HEADER_HEIGHT", "PAGE_TITLE_TEXT_SIZE", "SEARCH_BOX_MARGIN", "PAGE_SIDE_MARGINS", "BACK_BUTTON_HEIGHT", "BACK_BUTTON_WIDTH", "BACK_BUTTON_MODAL_WIDTH", "EXTEND_BOTTOM_SIZE", "TOAST_HEIGHT"}]
  LOADN R11 60
  SETTABLEKS R11 R10 K65 ["HEADER_HEIGHT"]
  LOADN R11 29
  SETTABLEKS R11 R10 K66 ["PAGE_TITLE_TEXT_SIZE"]
  LOADN R11 0
  SETTABLEKS R11 R10 K67 ["SEARCH_BOX_MARGIN"]
  LOADN R11 0
  SETTABLEKS R11 R10 K68 ["PAGE_SIDE_MARGINS"]
  LOADN R11 44
  SETTABLEKS R11 R10 K69 ["BACK_BUTTON_HEIGHT"]
  LOADN R11 154
  SETTABLEKS R11 R10 K70 ["BACK_BUTTON_WIDTH"]
  LOADN R11 44
  SETTABLEKS R11 R10 K71 ["BACK_BUTTON_MODAL_WIDTH"]
  LOADN R11 68
  SETTABLEKS R11 R10 K72 ["EXTEND_BOTTOM_SIZE"]
  LOADN R11 80
  SETTABLEKS R11 R10 K73 ["TOAST_HEIGHT"]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R7 K40 ["LayoutSpecific"]
  DUPTABLE R8 K78 [{"DeveloperMultiple", "DeveloperSingle", "GameMenu"}]
  LOADK R9 K75 ["DeveloperMultiple"]
  SETTABLEKS R9 R8 K75 ["DeveloperMultiple"]
  LOADK R9 K76 ["DeveloperSingle"]
  SETTABLEKS R9 R8 K76 ["DeveloperSingle"]
  LOADK R9 K77 ["GameMenu"]
  SETTABLEKS R9 R8 K77 ["GameMenu"]
  SETTABLEKS R8 R7 K41 ["Triggers"]
  GETTABLEKS R9 R4 K79 ["RbxAvatarThumbnailTypesFromEnum"]
  GETTABLEKS R8 R9 K80 ["HeadShot"]
  SETTABLEKS R8 R7 K81 ["InviteAvatarThumbnailType"]
  GETTABLEKS R9 R4 K82 ["RbxThumbnailSizes"]
  GETTABLEKS R8 R9 K83 ["Size150x150"]
  SETTABLEKS R8 R7 K84 ["InviteAvatarThumbnailSize"]
  GETTABLEKS R9 R4 K85 ["RbxthumbTypes"]
  GETTABLEKS R8 R9 K86 ["AvatarHeadShot"]
  SETTABLEKS R8 R7 K87 ["InviteAvatarRbxthumbType"]
  DUPTABLE R8 K89 [{"InviteToGame"}]
  NEWTABLE R9 0 1
  GETTABLEKS R10 R2 K90 ["fromData"]
  GETTABLEKS R11 R7 K81 ["InviteAvatarThumbnailType"]
  GETTABLEKS R12 R7 K84 ["InviteAvatarThumbnailSize"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  SETTABLEKS R9 R8 K88 ["InviteToGame"]
  SETTABLEKS R8 R7 K12 ["ThumbnailRequest"]
  RETURN R7 1
