vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
	open_on_setup = false,
	view = {
		side = "left",
		width = 30,
	},
	actions = {
		open_file = {
			resize_window = true,
		}
	},
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true
	},
})

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})

