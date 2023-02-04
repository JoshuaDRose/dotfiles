return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local height = vim.api.nvim_win_get_height(0)
        telescope.setup({
            defaults = {
                layout_strategy = "bottom_pane",
                layout_config = { bottom_pane = { height = height } },
                file_ignore_patterns = { "node%_modules/.*", "node_modules", "node%20modules/*", "node_modules", "assets" },
                sorting_strategy = "ascending",
                winblend = 0,
                border = false,
                find_cmd = "rd"
            },
            pickers = {
                find_files = {
                    find_command = { "rg", "--files", "--hidden", "--glob", "!.git", "--glob", "!.stack-work" },
                },
            },
        })
        telescope.load_extension("fzf")
    end,
}
