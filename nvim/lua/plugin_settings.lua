--  >>>>>>>>>>>>> Settings  and Configuration for plugins <<<<<<<<<

-- >> LSP Settings 

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "pyright", "julials" },
}
-- After setting up mason-lspconfig you may set up servers via lspconfig
require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}

-- << LSP Settings  

-- >> TS settings 

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "julia", "python" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    --
    disable = {"latex" }, -- vimtex uses vim_regex_highlighting fro expansion of some snippets 
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
-- << TS settings

-- >> Luasnip settings 
require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip/"})
require("luasnip").config.set_config({ -- Setting LuaSnip config
  -- Enable autotriggered snippets
  enable_autosnippets = true,
  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})
vim.keymap.set('', '<Leader>U', '<Cmd>lua require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/LuaSnip/"})<CR>')
-- << luasnip settings

-- -- >> Autocompletion Settings 
--   -- Set up nvim-cmp.
--   local cmp = require'cmp'

--   cmp.setup({
--     snippet = {
--       -- REQUIRED - you must specify a snippet engine
--       expand = function(args)
--         vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
--         -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
--         -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
--         -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
--       end,
--     },
--     window = {
--       -- completion = cmp.config.window.bordered(),
--       -- documentation = cmp.config.window.bordered(),
--     },
--     mapping = cmp.mapping.preset.insert({
--       ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--       ['<C-f>'] = cmp.mapping.scroll_docs(4),
--       ['<C-Space>'] = cmp.mapping.complete(),
--       ['<C-e>'] = cmp.mapping.abort(),
--       ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--     }),
--     sources = cmp.config.sources({
--       { name = 'nvim_lsp' },
--       { name = 'vsnip' }, -- For vsnip users.
--       { name = 'neorg' }, -- For norg 
--       -- { name = 'luasnip' }, -- For luasnip users.
--       -- { name = 'ultisnips' }, -- For ultisnips users.
--       -- { name = 'snippy' }, -- For snippy users.
--     }, {
--       { name = 'buffer' },
--     })
--   })

--   -- Set configuration for specific filetype.
--   cmp.setup.filetype('gitcommit', {
--     sources = cmp.config.sources({
--       { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
--     }, {
--       { name = 'buffer' },
--     })
--   })

--   -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
--   cmp.setup.cmdline({ '/', '?' }, {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = {
--       { name = 'buffer' }
--     }
--   })

--   -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--   cmp.setup.cmdline(':', {
--     mapping = cmp.mapping.preset.cmdline(),
--     sources = cmp.config.sources({
--       { name = 'path' }
--     }, {
--       { name = 'cmdline' }
--     })
--   })
-- -- << Autocompletion Settings
