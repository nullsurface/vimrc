vim.opt.number = true
vim.cmd [[packadd packer.nvim]]
vim.opt.list = true
vim.opt.listchars:append('tab:> ')
vim.opt.shiftwidth = 4
vim.opt.cursorline = false
vim.opt.termguicolors = true
vim.opt.smartindent = true
vim.opt.guicursor = ''
vim.opt.relativenumber = true


return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'morhetz/gruvbox'
    use 'junegunn/fzf'
    use 'nvim-lualine/lualine.nvim'
    require('lualine').setup {
	options = {
	    icons_enabled = true,
	    theme = 'auto',
	    component_separators = { left = '', right = ''},
	    section_separators = { left = '', right = ''},
	    disabled_filetypes = {
		statusline = {},
		winbar = {},
	    },
	    ignore_focus = {},
	    always_divide_middle = true,
	    globalstatus = false,
	    refresh = {
		statusline = 1000,
		tabline = 1000,
		winbar = 1000,
	    }
	    },
	    sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	    },
	    inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	    },
	    tabline = {},
	    winbar = {},
	    inactive_winbar = {},
	    extensions = {}
    }
    vim.cmd [[colorscheme gruvbox]]
    use 'nvim-treesitter/nvim-treesitter'
    require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "rust" },
    highlight = {
	enable = true,
	},
    }
end)

