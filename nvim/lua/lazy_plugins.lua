require("lazy").setup({

-- >> LSP
{ -- mason nvim 
    'williamboman/mason.nvim', -- portable package manager
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
},
'williamboman/mason-lspconfig.nvim', -- bridges gap between mason.nvim and lspconfig
'neovim/nvim-lspconfig', -- nvim lsp config
-- << LSP

-- >> TS
{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
-- << TS 

-- >> Autocompletion Feature 
-- {
--    'hrsh7th/nvim-cmp',
--    dependencies = {
--    'hrsh7th/cmp-nvim-lsp',
--    'hrsh7th/cmp-buffer',
--    'hrsh7th/cmp-path',
--    'hrsh7th/cmp-vsnip',
--    'hrsh7th/vim-vsnip',
--    },
-- },
-- << Autocompletion Feature 

-- >> Snippets
{
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
},
-- << Snippets 

-- >> Gui enhancement 
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
  'mhinz/vim-startify', -- The fancy start screen for Vim
  'lukas-reineke/indent-blankline.nvim', -- for indent guides
-- << GUI Enhancement 

-- >> Language Specific Plugins 
   'JuliaEditorSupport/julia-vim',   -- for Julia programming Language
   'lervag/vimtex',      -- For tex 
-- << Language Specific Plugins

-- >> Additional Plugins 
   'tpope/vim-commentary', -- comment stuff
   'junegunn/fzf', -- fuzzy finder
   'junegunn/fzf.vim' ,
-- << Additionnal Plugins

-- >> Organizational Plugins 
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        opts = {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            computer_works = "~/computer_works",
			    works = "~/works",
			    study = "~/study"
                        },
                    },
                },
            },
        },
        dependencies = { { "nvim-lua/plenary.nvim" } },
    },
-- << Organizational Plugins
})
