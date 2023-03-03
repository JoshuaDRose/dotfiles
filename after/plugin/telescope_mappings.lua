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
vim.keymap.set('n', '<leader>we', function() builtin.symbols{ sources = { 'emoji' }}end)
vim.keymap.set('n', '<leader>wk', function() builtin.symbols{ sources = { 'kaomoji' }}end)
vim.keymap.set('n', '<leader>wg', function() builtin.symbols{ sources = { 'gitmoji' }}end)
vim.keymap.set('n', '<leader>wl', function() builtin.symbols{ sources = { 'latex' }}end)
vim.keymap.set('n', '<leader>wj', function() builtin.symbols{ sources = { 'julia' }}end)
vim.keymap.set('n', '<leader>wm', function() builtin.symbols{ sources = { 'math' }}end)
vim.keymap.set('n', '<leader>wn', function() builtin.symbols{ sources = { 'nerd' }}end)
