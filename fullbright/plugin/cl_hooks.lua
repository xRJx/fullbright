local PLUGIN = PLUGIN;

-- Called when the client initializes.
function PLUGIN:Initialize()
	CW_CONVAR_FULLBRIGHT = Clockwork.kernel:CreateClientConVar("cwFullBright", 0, false, false);
end;