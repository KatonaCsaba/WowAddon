local SayInvisibility = CreateFrame("Frame")
SayInvisibility.playername = UnitName("player")

SayInvisibility:SetScript("OnEvent", function()
	local _,event, _,_,sourceName, _,_,_,destName, _,_,spellId = CombatLogGetCurrentEventInfo()
	if ((spellId == 66)
	and (destName == SayInvisibility.playername)
	and (event == "SPELL_AURA_APPLIED" or event == "SPELL_AURA_REFRESH"))
	then
		SendChatMessage("Invisibility!","SAY")
	end
end)

SayInvisibility:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
DEFAULT_CHAT_FRAME:AddMessage("SayInvisibility loaded")
