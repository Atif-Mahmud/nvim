local parent = (...):match("(.-)[^%.]+$")
require(parent .. "core.neovide")
require(parent .. "core.options")
require(parent .. "core.keymaps")
