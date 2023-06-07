-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{'kaarmu/typst.vim', ft="typst", lazy=false},
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		},
		config = function()
			require("nvim-tree").setup({
				sort_by = "case_sensitive",
				view = {
					width = 30,
				},
				renderer = {
					group_empty = true,
				},
				filters = {
					dotfiles = false,
				},
				git = {
					enable = true,
					ignore = false,
					timeout = 500
				}
			})
		end
	},
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			require('bufferline').setup{
				options = {
					hover = {
	          enabled = true,
			      delay = 200,
						reveal = {'close'}
					},
					diagnostics = 'nvim_lsp'
				}
			}
		end
	},
	{
		'andweeb/presence.nvim',
		config = function()
			require('presence').setup({
				-- General options
				auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
				neovim_image_text   = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
				main_image          = "neovim",                   -- Main image display (either "neovim" or "file")
				log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
				debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
				enable_line_number  = false,                      -- Displays the current line number instead of the current project
				blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
				buttons             = false,                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
				file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
				show_time           = true,                       -- Show the timer

				-- Rich Presence text options
				editing_text        = "Editing %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
				file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
				git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
				plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
				reading_text        = "Reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
				workspace_text      = "Working on %s",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
				line_number_text    = "Line %s out of %s",
			})
		end
	},
	{'folke/trouble.nvim',
		dependencies = {'nvim-tree/nvim-web-devicons'},
		opts = {}
	}
}
