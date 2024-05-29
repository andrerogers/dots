return {
  "echasnovski/mini.sessions",
  version = "*",
  config = function()
    local sessions = require("mini.sessions")

    --- Wrapper around mini.sessions functions. Returns a function that
    --- behaves differently based on the given scope.
    ---
    ---@param scope "local"|"write"|"read"|"delete"
    ---@return function
    local function session(scope)
      return function()
        if scope == "write" then
          local session_name = vim.fn.input("Enter session name: ")
          MiniSessions.write(session_name)
        else
          MiniSessions.select(scope)
        end
      end
    end

    sessions.setup({
      -- Whether to read latest session if Neovim opened without file arguments
      autoread = false,
      -- Whether to write current session before quitting Neovim
      autowrite = true,
      directory = ".sessions",
      file = '',
      verbose = {
        read = true,
      },
    })

    -- Mappings
    vim.keymap.set("n", "<Leader>sw", session("write"), {})
    vim.keymap.set("n", "<Leader>sr", session("read"), {})
    vim.keymap.set("n", "<Leader>sd", session("delete"), {})
  end,
}
