local _
local FrameMain
local CheckButtonRaid
local CheckButtonParty
local CheckButtonGuid
local CheckButton1
local CheckButton2
local CheckButton3
local CheckButton4
local CheckButton5
local CheckButton6
local CheckButton7
local CheckButton8
local CheckButton9
local CheckButton10
local CheckButtonYell
local EditBox1

local isHide = true

function Init(frame)
    FrameMain = frame
    CheckButtonRaid, CheckButtonParty, CheckButtonGuid, CheckButton1, CheckButton2, CheckButton3, CheckButton4, CheckButton5, CheckButton6, CheckButton7, CheckButton8, CheckButton9, CheckButton10, CheckButtonYell, _, _, EditBox1, _ =
        FrameMain:GetChildren()
    CheckButtonRaid = CheckButtonRaid:GetChildren()
    CheckButtonParty = CheckButtonParty:GetChildren()
    CheckButtonGuid = CheckButtonGuid:GetChildren()
    CheckButton1 = CheckButton1:GetChildren()
    CheckButton2 = CheckButton2:GetChildren()
    CheckButton3 = CheckButton3:GetChildren()
    CheckButton4 = CheckButton4:GetChildren()
    CheckButton5 = CheckButton5:GetChildren()
    CheckButton6 = CheckButton6:GetChildren()
    CheckButton7 = CheckButton7:GetChildren()
    CheckButton8 = CheckButton8:GetChildren()
    CheckButton9 = CheckButton9:GetChildren()
    CheckButton10 = CheckButton10:GetChildren()
    CheckButtonYell = CheckButtonYell:GetChildren()
    -- FrameMain:RegisterEvent("ADDON_LOADED")
end

function YellMax_OnEvent(frame, event, ...)
    if event == "ADDON_LOADED" then
        if not YellMaxDB then YellMaxDB = {} end
        YellMaxDB["CheckButtonRaid"] = YellMaxDB["CheckButtonRaid"] or false
        YellMaxDB["CheckButtonParty"] = YellMaxDB["CheckButtonParty"] or false
        YellMaxDB["CheckButtonGuid"] = YellMaxDB["CheckButtonGuid"] or false
        YellMaxDB["CheckButton1"] = YellMaxDB["CheckButton1"] or false
        YellMaxDB["CheckButton2"] = YellMaxDB["CheckButton2"] or false
        YellMaxDB["CheckButton3"] = YellMaxDB["CheckButton3"] or false
        YellMaxDB["CheckButton4"] = YellMaxDB["CheckButton4"] or false
        YellMaxDB["CheckButton5"] = YellMaxDB["CheckButton5"] or false
        YellMaxDB["CheckButton6"] = YellMaxDB["CheckButton6"] or false
        YellMaxDB["CheckButton7"] = YellMaxDB["CheckButton7"] or false
        YellMaxDB["CheckButton8"] = YellMaxDB["CheckButton8"] or false
        YellMaxDB["CheckButton9"] = YellMaxDB["CheckButton9"] or false
        YellMaxDB["CheckButton10"] = YellMaxDB["CheckButton10"] or false
        YellMaxDB["CheckButtonYell"] = YellMaxDB["CheckButtonYell"] or false
        YellMaxDB["Text"] = YellMaxDB["Text"] or ""

        CheckButtonRaid:SetChecked(YellMaxDB["CheckButtonRaid"])
        CheckButtonParty:SetChecked(YellMaxDB["CheckButtonParty"])
        CheckButtonGuid:SetChecked(YellMaxDB["CheckButtonGuid"])
        CheckButton1:SetChecked(YellMaxDB["CheckButton1"])
        CheckButton2:SetChecked(YellMaxDB["CheckButton2"])
        CheckButton3:SetChecked(YellMaxDB["CheckButton3"])
        CheckButton4:SetChecked(YellMaxDB["CheckButton4"])
        CheckButton5:SetChecked(YellMaxDB["CheckButton5"])
        CheckButton6:SetChecked(YellMaxDB["CheckButton6"])
        CheckButton7:SetChecked(YellMaxDB["CheckButton7"])
        CheckButton8:SetChecked(YellMaxDB["CheckButton8"])
        CheckButton9:SetChecked(YellMaxDB["CheckButton9"])
        CheckButton10:SetChecked(YellMaxDB["CheckButton10"])
        CheckButtonYell:SetChecked(YellMaxDB["CheckButtonYell"])
        EditBox1:SetText(YellMaxDB["Text"])

    end
end

function SaveChanged()
    EditBox1:ClearFocus()
    YellMaxDB["CheckButtonRaid"] = CheckButtonRaid:GetChecked()
    YellMaxDB["CheckButtonGuid"] = CheckButtonGuid:GetChecked()
    YellMaxDB["CheckButtonParty"] = CheckButtonParty:GetChecked()
    YellMaxDB["CheckButton1"] = CheckButton1:GetChecked()
    YellMaxDB["CheckButton2"] = CheckButton2:GetChecked()
    YellMaxDB["CheckButton3"] = CheckButton3:GetChecked()
    YellMaxDB["CheckButton4"] = CheckButton4:GetChecked()
    YellMaxDB["CheckButton5"] = CheckButton5:GetChecked()
    YellMaxDB["CheckButton6"] = CheckButton6:GetChecked()
    YellMaxDB["CheckButton7"] = CheckButton7:GetChecked()
    YellMaxDB["CheckButton8"] = CheckButton8:GetChecked()
    YellMaxDB["CheckButton9"] = CheckButton9:GetChecked()
    YellMaxDB["CheckButton10"] = CheckButton10:GetChecked()
    YellMaxDB["CheckButtonYell"] = CheckButtonYell:GetChecked()
    YellMaxDB["Text"] = EditBox1:GetText()
end

function Send()
    SaveChanged()
    text = EditBox1:GetText()
    if CheckButtonRaid:GetChecked() then
        SendChatMessage(text, "RAID", nil)
    end
    if CheckButtonParty:GetChecked() then
        SendChatMessage(text, "PARTY", nil)
    end
    if CheckButtonGuid:GetChecked() then
        SendChatMessage(text, "GUILD", nil)
    end
    if CheckButton1:GetChecked() then
        SendChatMessage(text, "CHANNEL", nil, "1")
    end
    if CheckButton2:GetChecked() then
        SendChatMessage(text, "CHANNEL", nil, "2")
    end
    if CheckButton3:GetChecked() then
        SendChatMessage(text, "CHANNEL", nil, "3")
    end
    if CheckButton4:GetChecked() then
        SendChatMessage(text, "CHANNEL", nil, "4")
    end
    if CheckButton5:GetChecked() then
        SendChatMessage(text, "CHANNEL", nil, "5")
    end
    if CheckButton6:GetChecked() then
        SendChatMessage(text, "CHANNEL", nil, "6")
    end
    if CheckButton7:GetChecked() then
        SendChatMessage(text, "CHANNEL", nil, "7")
    end
    if CheckButton8:GetChecked() then
        SendChatMessage(text, "CHANNEL", nil, "8")
    end
    if CheckButton9:GetChecked() then
        SendChatMessage(text, "CHANNEL", nil, "9")
    end
    if CheckButton10:GetChecked() then
        SendChatMessage(text, "CHANNEL", nil, "10")
    end
    if CheckButtonYell:GetChecked() then
        SendChatMessage(text, "YELL", nil)
    end
end

function GUIClose()
    EditBox1:ClearFocus()
    FrameMain:Hide()
    isHide = true
end

SlashCmdList["YELLMAX"] = function(msg)
    if isHide then
        FrameMain:Show()
    else
        FrameMain:Hide()
    end
    isHide = not isHide
end

SLASH_YELLMAX1 = "/YM"
SLASH_YELLMAX2 = "/YELLMAX"
