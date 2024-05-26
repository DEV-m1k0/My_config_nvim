


-- Настройка lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


-- Вызoв пакетного менеджера lazy.nvim
require("lazy").setup({
	-- Добавление плагинов

	-- Тема для редактора
	{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},

	-- Дерево файлов
	{
	  "nvim-neo-tree/neo-tree.nvim",
	  branch = "v3.x",
    	  dependencies = {
      	    "nvim-lua/plenary.nvim",
      	    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      	    "MunifTanjim/nui.nvim",
      	    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    	  }
	},

	-- Подсветка синтаксиса treesitter
	{ "nvim-treesitter/nvim-treesitter" },

	-- Mason
	{
	 "williamboman/mason.nvim",
	 "williamboman/mason-lspconfig.nvim",
	 "neovim/nvim-lspconfig",
 	},

	-- Иконки для автодополнения
--	{ 'onsails/lspkind-nvim' },

	-- Инсталлер для серверов LSP
--	{ 'williamboman/nvim-lsp-installer' },


--	{ "hrsh7th/cmp-nvim-lsp" },
})
