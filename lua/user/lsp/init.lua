local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- 导入 LSP 配置文件并调用
require("user.lsp.settings.gopls")
require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
