local status_ok, nvim_lsp = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("plugins.lsp.lsp-installer")
local handler = require("plugins.lsp.handlers")
handler.setup()
require("plugins.lsp.null-ls")

-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = handler.on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

-- Tailwind
nvim_lsp.tailwindcss.setup {}
