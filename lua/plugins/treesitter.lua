require'nvim-treesitter.configs'.setup {
	ensure_installed = { "javascript", "html", "javascript", "typescript", "tsx","css", "scss" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true
	}
}
