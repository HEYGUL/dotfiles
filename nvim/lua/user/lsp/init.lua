local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

vim.g.vim_svelte_plugin_use_typescript = 1

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
