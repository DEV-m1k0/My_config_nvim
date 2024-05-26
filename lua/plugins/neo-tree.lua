--Конфигурационный файл для плагина neo-tree


-- Показ значка после названия файла, если есть какая-то ошибка или что-то другое
vim.fn.sign_define("DiagnosticSignError",
{text = " ", texthl = "DiagnosticSignError"})

vim.fn.sign_define("DiagnosticSignWarn",
{text = " ", texthl = "DiagnosticSignWarn"})
      
vim.fn.sign_define("DiagnosticSignInfo",
{text = " ", texthl = "DiagnosticSignInfo"})
      
vim.fn.sign_define("DiagnosticSignHint",
{text = "󰌵", texthl = "DiagnosticSignHint"})

-- Вызов самой функции для работы плагина
require("neo-tree").setup(

)
