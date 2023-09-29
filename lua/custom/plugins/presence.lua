return {
	{
		"copypasteonly/presence.nvim",
		config = function()
			require("presence").setup({
				auto_update = true,
				neovim_image_text = "Superiority Complex",
				main_image = "neovim",
				buttons = true,
				show_time = true,
			})
		end
	}
}
