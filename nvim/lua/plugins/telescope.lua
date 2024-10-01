return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-live-grep-args.nvim",
		},
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			local live_grep_args_shortcuts = require("telescope-live-grep-args.shortcuts")

			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})
			vim.keymap.set("n", "<leader>fx", builtin.search_history, {})
			vim.keymap.set("n", "<leader>fw", builtin.grep_string, {})
			vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})

			vim.keymap.set(
				"n",
				"<leader>fa",
				"<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
				{ desc = "Live Grep (args)" }
			)
			vim.keymap.set("n", "<leader>fc", live_grep_args_shortcuts.grep_word_under_cursor)

			telescope.load_extension("live_grep_args")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				pickers = {
					live_grep = {
						find_ignore_patterns = { "node_modules", ".git", ".venv" },
						additional_args = function()
							return { "--hidden" }
						end,
					},
					find_files = {
						find_ignore_patterns = { "node_modules", ".git", ".venv" },
						hidden = true,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
