local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    },
    height = 0.7,
    width = 0.85,
    border = "rounded"
  },

})

lspconfig.setup {
  --ensure_installed = { 'tailwindcss', 'astro', 'tsserver', 'flow-language-server' },
  automatic_installation = true
}
--require 'lspconfig'.tailwindcss.setup {}
