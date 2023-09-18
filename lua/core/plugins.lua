local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("lazy").setup({
	{"nvim-neo-tree/neo-tree.nvim", branch = "v3.x",
    		dependencies = {
      			"nvim-lua/plenary.nvim",
      			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      			"MunifTanjim/nui.nvim",}
	},
	--{'joshdick/onedark.vim'},
	{'talha-akram/noctis.nvim'},
	{'nvim-treesitter/nvim-treesitter'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/nvim-cmp',
        dependencies = {
            {"quangnguyen30192/cmp-nvim-ultisnips",
                config = function()
                    require("cmp_nvim_ultisnips").setup{}
                end,    
            }
        }
    },
	{'neovim/nvim-lspconfig'},
    {"williamboman/mason.nvim"},
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'jose-elias-alvarez/null-ls.nvim'},
    {'windwp/nvim-autopairs'},
    {'windwp/nvim-ts-autotag'},
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {'terrortylor/nvim-comment'},
    {
        'glepnir/dashboard-nvim',event = 'VimEnter',
        dependencies = {'nvim-tree/nvim-web-devicons'}
    },
    {'lewis6991/gitsigns.nvim'},
    {'nvim-lualine/lualine.nvim'},
    {'rebelot/terminal.nvim'},
    {'s1n7ax/nvim-terminal'},
    {"folke/which-key.nvim"},
    {'ethanholz/nvim-lastplace'},
    {'MunifTanjim/prettier.nvim'},
    {'SirVer/ultisnips'},
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    }, 
    { 
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim",
        'haydenmeade/neotest-jest',
    },
    {
        'haydenmeade/neotest-jest',
    },
    { "folke/neodev.nvim"}
}
    -- {'akinsho/toggleterm.nvim', version = "*", config = true},
})
