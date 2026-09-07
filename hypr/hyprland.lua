hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "auto",
})

hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpaper")
end)

require("config.general")
require("config.mappings")
