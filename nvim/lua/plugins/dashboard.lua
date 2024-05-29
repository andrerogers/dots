return {
	"echasnovski/mini.starter",
	dependencies = {
		"MaximilianLloyd/ascii.nvim",
		"MunifTanjim/nui.nvim",
	},
	version = "*",
	config = function()
		local starter = require("mini.starter")
		local ascii = require("ascii")

		-- Header
		local header_art = ascii.art.misc.skulls.threeskulls_v1
		-- Footer
		local footer_art = [[
        --[ Sensei - The Coding Master ]--
]]

		local function tableToString(tbl)
			local result = ""
			for _, line in ipairs(tbl) do
				result = result .. line .. "\n"
			end
			return result
		end

		starter.setup({
			-- evaluate_single = true,
			items = {
				starter.sections.sessions(5, true),
				starter.sections.builtin_actions(),
				starter.sections.telescope(),
			},
			content_hooks = {
				function(content)
					local blank_content_line = { { type = "empty", string = "" } }
					local section_coords = starter.content_coords(content, "section")
					-- Insert backwards to not affect coordinates
					for i = #section_coords, 1, -1 do
						table.insert(content, section_coords[i].line + 1, blank_content_line)
					end
					return content
				end,
				starter.gen_hook.adding_bullet("» "),
				starter.gen_hook.aligning("center", "center"),
			},
			header = tableToString(header_art),
			footer = footer_art,
		})
	end,
}
