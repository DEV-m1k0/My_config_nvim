-- Файл конфигурации Mason

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup()
--require("mason-lspconfig").setup({
--    ensure_installed = { "black", "pyright", "pylint", "mypy" },
--})
