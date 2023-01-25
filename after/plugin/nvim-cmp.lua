local cmp = require'cmp'

cmp.setup({
	completion = {
      autocomplete = false
    },
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
		--	vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
			-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' }, -- For vsnip users.
		-- { name = 'luasnip' }, -- For luasnip users.
		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
	}, {
		{ name = 'buffer' },
	})
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--require('lspconfig')['pyright'].setup {
--	capabilities = capabilities
--}
require('lspconfig')['pylsp'].setup {
	capabilities = capabilities,
	on_attach = on_attach,
	flags = {
		-- This will be the default in neovim 0.7+
		debounce_text_changes = 150,
	},
	settings = {
		-- configure plugins in pylsp
		pylsp = {
			plugins = {
				pyflakes = {enabled = false},
				pylint = {enabled = false},
			},
		},
	},
}
require('lspconfig')['sumneko_lua'].setup {
	capabilities = capabilities
}
