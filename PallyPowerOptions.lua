local L = LibStub("AceLocale-3.0"):GetLocale("PallyPower");

PallyPower.options = {
	type = "group",
	handler = PallyPower,
	args = {
		config = {
		        name = L["BAS"],
			type = "execute",
			desc = L["BAS_DESC"],
			func = function() PallyPowerConfig_Toggle() end,
		},
		report = {
			name = L["BRPT"],
			type = "execute",
			desc = L["BRPT_DESC"],
			func = function() PallyPower:Report() end,
		},
		buffscale = {
			name = L["BSC"],
			type = "range",
			desc = L["BSC_DESC"],
			min = 0.4,
			max = 1.5,
			step = 0.05,
			get = "BuffScale",
			set = "BuffScale",
		},
		configscale = {
			name = L["CSC"],
			type = "range",
			desc = L["CSC_DESC"],
			min = 0.4,
			max = 1.5,
			step = 0.05,
			get = "ConfigScale",
			set = "ConfigScale",	
		},
		reset = {
			name = L["RESET"],
			type = "execute",
			desc = L["RESET_DESC"],
			func = function() PallyPower:Reset() end,			
			},
    smartbuff = {
        name = L["SBUFF"],
        type = "toggle",
        desc = L["SBUFF_DESC"],
        get = "ToggleSmartBuffs",
        set = "ToggleSmartBuffs",
    },
    smartpets = {
        name = L["SPET"],
        type = "toggle",
        desc = L["SPET_DESC"],
        get = "ToggleSmartPets",
        set = "ToggleSmartPets",
    },
        freeassign = {
            name = L["FREEASSIGN"],
            type = "toggle",
            desc = L["FREEASSIGN_DESC"],
            get = "ToggleFA",
            set = "ToggleFA",
        },

		display = {
			name = L["DISP"],
			type = "group",
			desc = L["DISP_DESC"],
			args = {
			    layout = {
					name = L["LAYOUT"],
				type = "select",
				desc = L["LAYOUT_DESC"],
				get = "layout",
				set = "layout",
				values = {
						["Standard"] = "Standard",
						["Layout 1"] = "Layout 1",
						["Layout 2"] = "Layout 2",
						["Layout 3"] = "Layout 3",
						["Layout 4"] = "Layout 4",
						["Layout 5"] = "Layout 5",
					},
				},
				skin = {
					name = L["SKIN"],
					type = "select",
					desc = L["SKIN_DESC"],
					get = "skinButtons",
					set = "skinButtons",
					values = {
							["None"] = "None",
							["Banto"] = "Banto",
							["BantoBarReverse"] = "BantoBarReverse",
							["Glaze"] = "Glaze",
							["Gloss"] = "Gloss",
							["Healbot"] = "Healbot",
							["oCB"] = "oCB",
							["Smooth"] = "Smooth",
					},
				},
				columns = {
					name = L["DISPCOL"],
					type = "range",
					desc = L["DISPCOL_DESC"],
					min = 1,
					max = 11,
					step = 1,
					get = "displayColumns",
					set = "displayColumns",	
				},
				rows = {
					name = L["DISPROWS"],
					type = "range",
					desc = L["DISPROWS_DESC"],
					min = 1,
					max = 11,
					step = 1,
					get = "displayRows",
					set = "displayRows",	
				},
				gapping = {
					name = L["DISPGAP"],
					type = "range",
					desc = L["DISPGAP_DESC"],
					min = 0,
					max = 5,
					step = 1,
					get = "displayGapping",
					set = "displayGapping",	
				},
                edges = {
                    name = L["DISPEDGES"],
                    type = "toggle",
                    desc = L["DISPEDGES_DESC"],
                    get = "ToggleEdges",
                    set = "ToggleEdges",
                },
                calign = {
                    name = L["DISPCL"],
                    type = "select",
                    desc = L["DISPCL_DESC"],
                    get = "displayAlignClassButtons",
                    set = "displayAlignClassButtons",
                    values = {
                            ["1"] = "1", 
                            ["3"] = "3", 
                            ["7"] = "7", 
                            ["9"] = "9"},
                },
                palign = {
                    name = L["DISPPL"],
                    type = "select",
                    desc = L["DISPCL_DESC"],
                    get = "displayAlignPlayerButtons",
                    set = "displayAlignPlayerButtons",
                    values = {	
                            ["top"] = "top", 
                            ["right"] = "right", 
                            ["bottom"] = "bottom", 
                            ["left"] = "left", 
                            ["compact-left"] = "compact-left", 
                            ["compact-right"] = "compact-right",
                    },
                },
                pbuttons = {
                    name = L["HIDEPB"],
                    type = "toggle",
                    desc = L["HIDEPB_DESC"],
                    get = "TogglePlayerButtons",
                    set = "TogglePlayerButtons",
                },
                cbuttons = {
                    name = L["HIDECB"],
                    type = "toggle",
                    desc = L["HIDECB_DESC"],
                    get = "ToggleClassButtons",
                    set = "ToggleClassButtons",
                },
                blink = {
                    name = L["BLINKPA"],
                    type = "toggle",
                    desc = L["BLINKPA_DESC"],
                    get = "ToggleFlashBuffAutoButtons",
                    set = "ToggleFlashBuffAutoButtons",
                },
                classcolor = {
                    name = L["CLASSC"],
                    type = "toggle",
                    desc = L["CLASSC_DESC"],
                    get = "ToggleClassColor",
                    set = "ToggleClassColor",
                },
                nameclasscolor = {
                    name = L["CLASSCN"],
                    type = "toggle",
                    desc = L["CLASSCN_DESC"],
                    get = "ToggleNameClassColor",
                    set = "ToggleNameClassColor",
                },
                handle = {
                    name = L["HIDEDH"],
                    type = "toggle",
                    desc = L["HIDEDH_DESC"],
                    get = "ToggleDragHandle",
                    set = "ToggleDragHandle",
                },
                showparty = {
                    name = L["SHOWPARTY"],
                    type = "toggle",
                    desc = L["SHOWPARTY_DESC"],
                    get = "ToggleShowParty",
                    set = "ToggleShowParty",
                },
                showsingle = {
                    name = L["SHOWSINGLE"],
                    type = "toggle",
                    desc = L["SHOWSINGLE_DESC"],
                    get = "ToggleShowSingle",
                    set = "ToggleShowSingle",
                },
				autobuff = {
					name = L["AUTOBUFF"],
					type = "group",
					desc = L["AUTOBUFF_DESC"],
					args = {
						autokey1 = {
							name = L["AUTOKEY1"],
							desc = L["AUTOKEY1_DESC"],
						type = "keybinding",
                        set = function(info, value)
                            			PallyPower:UnbindKeys()
                            			PallyPower.opt.autobuff.autokey1 = value
                            			PallyPower:BindKeys()
                              end,
                        		get = function() return PallyPower.opt.autobuff.autokey1 end
                        	},
						autokey2 = {
							name = L["AUTOKEY2"],
							desc = L["AUTOKEY2_DESC"],
						type = "keybinding",
                        set = function(info, value)
                            			PallyPower:UnbindKeys()
                            			PallyPower.opt.autobuff.autokey2 = value
                            			PallyPower:BindKeys()
                              end,
                        		get = function() return PallyPower.opt.autobuff.autokey2 end
                        	},
                    autobutton = {
                        name = L["AUTOBTN"],
                        type = "toggle",
                        desc = L["AUTOBTN_DESC"],
                        set = "ToggleAutoButton",
                        get = "ToggleAutoButton",
                    },
                    waitforpeople = {
                        name = L["WAIT"],
                        type = "toggle",
                        desc = L["WAIT_DESC"],
                        set = "ToggleWaitPeople",
                        get = "ToggleWaitPeople",
                    },
					},
				},
				rfs ={
					name = L["RFBUFF"],
					type = "group",
					desc = L["RFBUFF"],
					args = {
                rfbuff = {
                        name = L["RFBUFF"],
                        type = "toggle",
                        desc = L["RFBUFF_DESC"],
                        get = "ToggleRFButton",
                        set = "ToggleRFButton",
                },
						seal = {
							name = L["SEAL"],
							type = "range",
							desc = L["SEAL_DESC"],
							get = "ToggleSeal",
							set = "ToggleSeal",
							min = 1,
							max = 9,
							step = 1,
						},
                rfury = {
                        name = L["RFUSE"],
                        type = "toggle",
                        desc = L["RFUSE_DESC"],
                        get = "ToggleRF",
                        set = "ToggleRF",
                },
					},
				},
                auras = {
                    name = L["AURAS"],
                    type = "toggle",
                    desc = L["AURAS_DESC"],
                    get = "ToggleAuras",
                    set = "ToggleAuras",
                },
                extras = {
                    name = L["IGNOREEXTRA"],
                    type = "toggle",
                    desc = L["IGNOREEXTRADESC"],
                    get = "ToggleExtras",
                    set = "ToggleExtras",
                },
			},      -- display args
		}, -- main args
	},
}

function PallyPower:BuffScale(info, value)
    if value == nil then return self.opt.buffscale end
    self.opt.buffscale = value
    PallyPower:UpdateLayout();
end

function PallyPower:ConfigScale(info, value)
    if value == nil then return self.opt.configscale end
    self.opt.configscale = value
end

function PallyPower:skinButtons(info, value)
    if value == nil then
        return self.opt.skin
    else
        self.opt.skin = value
        PallyPower:ApplySkin(value)
    end
end

function PallyPower:ToggleEdges(value)
	if type(value) == "nil" then return self.opt.display.edges end
	self.opt.display.edges = value
	PallyPower:ApplySkin(self.opt.skin)	
end

function PallyPower:layout(info, value)
    if value == nil then
        return self.opt.layout;
    else
        self.opt.layout = value
        PallyPower:UpdateLayout();
    end
end
function PallyPower:displayRows(info, value)
    if value == nil then return self.opt.display.rows end
    self.opt.display.rows = value
    PallyPower:UpdateLayout();
end

function PallyPower:displayColumns(info, value)
    if value == nil then return self.opt.display.columns end
    self.opt.display.columns = value
    PallyPower:UpdateLayout();
end

function PallyPower:displayGapping(info, value)
    if value == nil then return self.opt.display.gapping end
    self.opt.display.gapping = value
    PallyPower:UpdateLayout();
end

function PallyPower:displayAlignClassButtons(info, value)
    if value == nil then return self.opt.display.alignClassButtons end
    self.opt.display.alignClassButtons = value
    PallyPower:UpdateLayout();
end

function PallyPower:displayAlignPlayerButtons(info, value)
    if value == nil then return self.opt.display.alignPlayerButtons end
    self.opt.display.alignPlayerButtons = value
    PallyPower:UpdateLayout();
end

function PallyPower:ToggleSmartBuffs(info, value)
    if type(value) == "nil" then return self.opt.smartbuffs end
    self.opt.smartbuffs = value
end

function PallyPower:ToggleSmartPets(info, value)
    if type(value) == "nil" then return self.opt.smartpets end
    self.opt.smartpets = value
end

function PallyPower:ToggleRFButton(info, value)
    if type(value) == "nil" then return self.opt.rfbuff end
    self.opt.rfbuff = value
    PallyPower:UpdateLayout()
end

function PallyPower:ToggleRF(info, value)
    if type(value) == "nil" then return self.opt.rf end
    self.opt.rf = value
    PallyPower:RFAssign(self.opt.rf)
end

function PallyPower:ToggleSeal(info, value)
    if type(value) == "nil" then return self.opt.seal end
    self.opt.seal = value
    PallyPower:SealAssign(self.opt.seal)
end

function PallyPower:ToggleFA(info, value)
    if type(value) == "nil" then return self.opt.freeassign end
    self.opt.freeassign = value
    PallyPower:UpdateLayout()
end

function PallyPower:ToggleShowParty(info, value)
    if type(value) == "nil" then return self.opt.ShowInParty end
    self.opt.ShowInParty = value
end

function PallyPower:ToggleShowSingle(info, value)
    if type(value) == "nil" then return self.opt.ShowWhenSingle end
    self.opt.ShowWhenSingle = value
end

function PallyPower:ToggleDragHandle(info, value)
    if type(value) == "nil" then return self.opt.display.hideDragHandle end
    self.opt.display.hideDragHandle = value
    PallyPower:UpdateLayout();
end

function PallyPower:TogglePlayerButtons(info, value)
    if type(value) == "nil" then return self.opt.display.hidePlayerButtons end
    self.opt.display.hidePlayerButtons = value
    PallyPower:UpdateLayout();
end

function PallyPower:ToggleClassButtons(info, value)
    if type(value) == "nil" then return self.opt.hideClassButtons end
    self.opt.hideClassButtons = value
    PallyPower:UpdateLayout(); 
end

function PallyPower:ToggleFlashBuffAutoButtons(info, value)
    if type(value) == "nil" then return self.opt.flashBuffAutoButtons end
    self.opt.flashBuffAutoButtons = value
    PallyPower:UpdateLayout();
end

function PallyPower:ToggleClassColor(info, value)
    if type(value) == "nil" then return self.opt.classColor end
    self.opt.classColor = value
    PallyPower:UpdateLayout();
end

function PallyPower:ToggleNameClassColor(info, value)
    if type(value) == "nil" then return self.opt.nameClassColor end
    self.opt.nameClassColor = value
    PallyPower:UpdateLayout();
end

function PallyPower:ToggleAutoButton(info, value)
    if type(value) == "nil" then return self.opt.autobuff.autobutton end
    self.opt.autobuff.autobutton = value
    PallyPower:UpdateLayout();
end

function PallyPower:ToggleWaitPeople(info, value)
    if type(value) == "nil" then return self.opt.autobuff.waitforpeople end
    self.opt.autobuff.waitforpeople = value
end

function PallyPower:ToggleAuras(info, value)
    if type(value) == "nil" then return self.opt.auras end
    self.opt.auras = value
    PallyPower:UpdateLayout();
end

function PallyPower:ToggleExtras(info, value)
    if type(value) == "nil" then return self.opt.extras end
    self.opt.extras = value
    PallyPower:UpdateRoster();
end
