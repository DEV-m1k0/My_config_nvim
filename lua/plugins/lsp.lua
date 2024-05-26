require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { "lua_ls", "pyright", "black", "mypy", "pylint" },
})

require('lspconfig').lua_ls.setup {}
require('lspconfig').pyright.setup {}
require('lspconfig').black.setup {}
require('lspconfig').mypy.setup {}
require('lspconfig').pylint.setup {}
