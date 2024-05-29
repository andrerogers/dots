return {
	"echasnovski/mini.sessions",
	version = "*",
	config = function()
		local sessions = require("mini.sessions")
		sessions.setup({
			-- Whether to read latest session if Neovim opened without file arguments
			autoread = false,
			-- Whether to write current session before quitting Neovim
			autowrite = false,
			-- Directory where global sessions are stored (use `''` to disable)
			directory = "~/.nvim/sessions",
			-- File for local session (use `''` to disable)
			file = "", -- 'Session.vim',
		})
	end,
}
