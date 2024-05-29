--return {
--	"catppuccin/nvim",
--	name = "catppuccin",
--	lazy = false,
--	priority = 1000,
--	config = function()
--		local catppuccin = require("catppuccin")
--		catppuccin.setup({
--			flavour = "mocha",
--		})
--		vim.cmd.colorscheme("catppuccin")
--	end,
--}
return {
  "rebelot/kanagawa.nvim",
  config = function()
		vim.cmd.colorscheme("kanagawa-dragon")
  end
}
