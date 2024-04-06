-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{ 'kaarmu/typst.vim', ft = "typst", lazy = false },
	{
		'folke/trouble.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {}
	},
	{
		'jonsmithers/vim-html-template-literals'
	}
}
