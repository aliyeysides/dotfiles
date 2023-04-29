local function custom_callback(callback_name)
  return string.format(":lua require('custom.snippets.treeutils').%s()<CR>", callback_name)
end

local NVIM_TREE_HEIGHT_RATIO = 0.8
local NVIM_TREE_WIDTH_RATIO = 0.5

return {
  live_filter = {
    prefix = "[FILTER] ",
    always_show_folders = false,
  },

  view = {
    relativenumber = true,
    float = {
      enable = true,
      open_win_config = function()
        local screen_w = vim.opt.columns:get()
        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
        local window_w = screen_w * NVIM_TREE_WIDTH_RATIO
        local window_h = screen_h * NVIM_TREE_HEIGHT_RATIO
        local window_w_int = math.floor(window_w)
        local window_h_int = math.floor(window_h)
        local center_x = (screen_w - window_w) / 2
        local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
        return {
          border = "rounded",
          relative = "editor",
          row = center_y,
          col = center_x,
          width = window_w_int,
          height = window_h_int,
        }
      end,
    },

    width = function()
      return math.floor(vim.opt.columns:get() * NVIM_TREE_WIDTH_RATIO)
    end,

    mappings = {
      list = {
        { key = "<C-f>", cb = custom_callback "launch_find_files" },
        { key = "<C-g>", cb = custom_callback "launch_live_grep" },
      },
    },
  },
}
