local status, moonlight = pcall(require, "moonlight")
if not status then
  return
end

-- function okay() {
--
-- }

-- Example config in lua
vim.g.moonlight_italic_comments = true
vim.g.moonlight_italic_keywords = false
vim.g.moonlight_italic_functions = false
vim.g.moonlight_italic_variables = false
-- vim.g.moonlight_italic_strings = false
vim.g.moonlight_contrast = true
vim.g.moonlight_borders = false 
vim.g.moonlight_disable_background = false


-- Load the colorscheme
moonlight.set()

-- material.set()
