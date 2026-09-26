return {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },
	version = '1.*',
	opts = {
		keymap = { preset = 'default' },
		appearance = {
			nerd_font_variant = 'mono'
		},
		completion = {
			trigger = {
				show_on_keyword = true,
				show_on_trigger_character = true,
				show_on_insert = false,
			},
			documentation = {
				auto_show = true,
			},
		},
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default" }
}
