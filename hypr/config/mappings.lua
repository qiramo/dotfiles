local mod = "SUPER"

local terminal = "kitty"
local menu = "fuzzel"

hl.bind(mod .. " + 0", hl.dsp.exec_cmd("systemctl suspend & hyprlock"))

hl.bind(mod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mod .. " + P", hl.dsp.exec_cmd(menu))

hl.bind(mod .. " + SHIFT + E", hl.dsp.exit())

hl.bind(mod .. "+ Q", hl.dsp.window.close())
hl.bind(mod .. "+ V", hl.dsp.window.float({ action = "toggle" }))

for i = 1, 9 do
	hl.bind(mod .. " + " .. i, hl.dsp.focus({ workspace = i }))
	hl.bind(mod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(mod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mod .. " + L", hl.dsp.focus({ direction = "right" }))

hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true})
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true})

hl.bind(mod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
