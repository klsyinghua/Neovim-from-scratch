local lspconfig = require("lspconfig")

-- 配置 gopls
lspconfig.gopls.setup{
  root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  cmd = { "gopls" },
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}