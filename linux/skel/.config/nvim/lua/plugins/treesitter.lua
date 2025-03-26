return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local treesitter_config = require("nvim-treesitter.configs")
		treesitter_config.setup({
			-- ensure_installed = { "lua", "javascript", "c", "cpp", "vim", "vimdoc", "query", "java", "pascal", "bash", "c_sharp", "python" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
