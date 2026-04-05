require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("pylsp", {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {"E111", "E114", "E121", "E302", "E305", "E306", "E741", "W504"},
        }
      }
    }
  }
})

local servers = { "html", "cssls", "gopls", "pylsp" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
