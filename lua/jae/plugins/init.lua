return {
	{ "rose-pine/neovim", name = "rose-pine" },
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.8', 
	dependencies = { 'nvim-lua/plenary.nvim' }},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-tree/nvim-tree.lua", version = "*", lazy = false, dependencies = { "nvim-tree/nvim-web-devicons", }, 
	config = function() 
		require("nvim-tree").setup {} 
	end, },
	{'folke/tokyonight.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
		build = function()
		  pcall(function()
			require("mason-registry").refresh()
		  end)
		end,
		event = "User FileOpened",
		lazy = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		cmd = { "LspInstall", "LspUninstall" },
		config = function()
		  -- automatic_installation is handled by lsp-manager
		  local settings = require "mason-lspconfig.settings"
		  settings.current.automatic_installation = false
		end,
		lazy = true,
		event = "User FileOpened",
		dependencies = "mason.nvim",
	},
	{
		"akinsho/toggleterm.nvim",
		branch = "main",
		init = function()
		  require("jae.core.terminal").init()
		end,
		config = function()
		  require("jae.core.terminal").setup()
		end,
		cmd = {
		  "ToggleTerm",
		  "TermExec",
		  "ToggleTermToggleAll",
		  "ToggleTermSendCurrentLine",
		  "ToggleTermSendVisualLines",
		  "ToggleTermSendVisualSelection",
		},
		-- keys = vim.builtin.terminal.open_mapping,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ 'Exafunction/codeium.vim' },
	{
	  'nvim-lualine/lualine.nvim',
	  dependencies = { 'nvim-tree/nvim-web-devicons' },
	  config = function()
		require("jae.core.lualine").setup()
	  end,
	},
	{
	  'akinsho/bufferline.nvim',
	  version = "*",
	  dependencies = 'nvim-tree/nvim-web-devicons',
	  config = function()
		require("jae.core.bufferline").setup()
	  end,
    },
	{
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	  },
	},
	{
	  "windwp/nvim-autopairs",
	  event = "InsertEnter",
	  config = function()
		require("jae.core.autopairs").setup()
	  end,
	  dependencies = { "nvim-treesitter/nvim-treesitter", "hrsh7th/nvim-cmp" },
	},
	{
	  "kylechui/nvim-surround",
	  version = "*", -- Use for stability; omit to use `main` branch for the latest features
	  event = {"BufReadPre", "BufNewFile"},
	  config = true
	},
	{
	  "lewis6991/gitsigns.nvim",
	  config = function()
		require("jae.core.gitsigns").setup()
	  end,
	  event = "User FileOpened",
	  -- event = {"BufReadPre", "BufNewFile"}
	},
}
