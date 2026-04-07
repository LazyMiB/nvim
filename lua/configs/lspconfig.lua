require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

local servers = { "html", "cssls", "ts_ls", "clangd" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
  vim.lsp.enable(lsp)
end

vim.lsp.config("textlsp", {
  filetypes = { "text", "tex", "org", "markdown" },
  autostart = false,
})

vim.lsp.enable({
  "pylsp",
  "bashls",
  "vuels",
  "markdown-oxide",
  "zls",
  "rust_analyzer",
  "kotlin_language_server",
  "oxlint",
  "tsp_server",
  "gopls",
  -- "textlsp",
  "ols",
  "haxe-language-server",
  "nimlangserver",
  "jdtls",
})
