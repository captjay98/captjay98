lvim.builtin.terminal.open_mapping = "<c-t>"
lvim.log.level = "warn"
lvim.colorscheme = "ayu-dark"

vim.opt.shiftwidth = 2
vim.opt.tabstop = 4
vim.opt.relativenumber = true

lvim.log.level = "info"
-- lvim.use_icons = false

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
	return server ~= "jedi_language_server"
end, lvim.lsp.automatic_configuration.skipped_servers)

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "stylua", filetypes = { "lua" } },

	{
		command = "prettier",
		extra_args = { "--print-width", "100" },
		filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	},

	{
		command = "black",
		extra_args = { "--print-width", "100" },
		filetypes = { "python" },
	},
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "flake8", filetypes = { "python" } },
	{
		command = "shellcheck",
		args = { "--severity", "warning" },
	},
})

lvim.format_on_save = {
	enabled = true,
	pattern = { "*jsx", "*.lua", "*.html", "*.js", "*.py", "*.ts", "*.css" },
	timeout = 1000,
}

lvim.plugins = {
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{ "ray-x/starry.nvim" },
	{ "ChristianChiarulli/nvcode-color-schemes.vim" },
	{ "ofirgall/ofirkai.nvim" },
	{ "savq/melange-nvim" },
	{ "sainnhe/gruvbox-material" },
	{ "catppuccin/nvim" },
	{ "luisiacc/gruvbox-baby" },
	{ "wakatime/vim-wakatime" },
	{ "nikvdp/ejs-syntax" },
	{ "Shatur/neovim-ayu" },
}

-- {
--     "tzachar/cmp-tabnine",
--     run = "./install.sh",
--     requires = "hrsh7th/nvim-cmp",
--     config = function()
--       local tabnine = require "cmp_tabnine.config"
--       tabnine:setup {
--         max_lines = 1000,
--         max_num_results = 10,
--         sort = true,
--       }
--     end,
--     opt = true,
--     event = "InsertEnter",
--   },
