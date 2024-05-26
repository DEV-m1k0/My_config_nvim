-- Настройка всех горячих клавишь

vim.g.mapleader = " "

-- Плагин Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree<CR>')

-- Настройка горячих клавишь для редактора
vim.keymap.set('n', '<leader>q', ':q<CR>') -- Выход
vim.keymap.set('n', '<leader>w', ':w<CR>') -- Сохранение файла
