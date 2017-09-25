local PLUGIN = PLUGIN;

Clockwork.setting:AddCheckBox("Admin ESP", "Show full bright.", "cwFullBright", "Whether or not to see in the dark in admin ESP.", function()
	return Clockwork.player:IsAdmin(Clockwork.Client);
end);

-- Called when the foreground HUD should be painted.
function PLUGIN:HUDPaintForeground()
	if (Clockwork.plugin:Call("PlayerCanSeeAdminESP") == false) then
		render.SetLightingMode(0);
	end;
end;

function PLUGIN:GetAdminESPInfo(info)
	if (CW_CONVAR_FULLBRIGHT:GetInt() == 1) then
		render.SetLightingMode(2);
	end;
end;