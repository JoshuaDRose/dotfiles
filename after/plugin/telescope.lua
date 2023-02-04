local builtin = require('telescope.builtin')
require('telescope').load_extension('media_files')
require('telescope').setup({
    defaults = {
        file_ignore_patterns = { "node%_modules/.*", "node_modules", "node%20modules/*", "node_modules" },
    },
    extensions = {
        media_files = {
            filetypes = {"png", "webp", "jpg", "jpeg", "pdf", "webm", "mp4"},
            find_cmd = "rd"
        }
    }
})
local function browse_media()
    require('telescope').extensions.media_files.media_files()
end
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pi', browse_media, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

