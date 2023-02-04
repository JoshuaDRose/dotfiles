local builtin = require('telescope.builtin')

local function goto_dotfiles()
    builtin.git_files {
        shorten_path = true,
        cwd = '~/.config/nvim',
        prompt = '~ dotfiles ~',
        height = 10,

        layout_strategy = "horizontal",
        layout_options = {
            preview_width = 0.75,
        },
    }
end

vim.keymap.set('n', '<leader>ld', goto_dotfiles)
vim.keymap.set('n', '<leader>ps', builtin.grep_string)
vim.keymap.set('n', '<leader>pb', builtin.buffers)

