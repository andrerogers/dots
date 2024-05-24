return {
  "nvim-treesitter/nvim-treesitter",
  build = "TSUpdate",
  config = function()
    -- Treesitter
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = {
        "c",
        "cpp",
        "bash",
        "make",
        "vim",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "go",
        "lua",
        "sql",
        "json",
        "javascript",
        "typescript",
        "graphql",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "python",
        "terraform",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
