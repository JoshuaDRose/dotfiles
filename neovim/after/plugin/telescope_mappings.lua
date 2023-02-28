local builtin = require('telescope.builtin');

local function locate_dotfiles()
    builtin.git_files {
        shorten_path = true,
        cwd = '~/.config',
        prompt = '~ dotfiles ~',
        height = 10,

        layout_strategy = "horizontal",
        layout_options = {
            preview_width = 0.75,
        },
    }
end

vim.keymap.set('n', '<leader>td', locate_dotfiles)
-- vim.keymap.set('n', '<leader>ps', builtin.grep_string)
vim.keymap.set('n', '<leader>pb', builtin.buffers)
vim.keymap.set('n', '<leader>pf', builtin.find_files)

-- EMOJI MENU --
vim.keymap.set('n', '<leader>we', require('telescope.builtin').symbols)

--[[
vim.keymap.set('n', '<leader>wk', builtin.symbols{ sources = { 'kaomoji' }})
vim.keymap.set('n', '<leader>wg', builtin.symbols{ sources = { 'gitmoji' }})
vim.keymap.set('n', '<leader>wl', builtin.symbols{ sources = { 'latex' }})
vim.keymap.set('n', '<leader>wj', builtin.symbols{ sources = { 'julia' }})
vim.keymap.set('n', '<leader>wm', builtin.symbols{ sources = { 'math' }})
vim.keymap.set('n', '<leader>wn', builtin.symbols{ sources = { 'nerd' }})
]] --
