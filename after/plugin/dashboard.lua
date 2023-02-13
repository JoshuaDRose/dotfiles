local db = require('dashboard')
db.custom_center = {
    { icon = '  ',
        desc = 'Refactor                                ',
        shortcut = ', s l',
        action = 'SessionLoad' },
    { icon = '  ',
        desc = 'Find  File                              ',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
        shortcut = ', p f' },
    { icon = '  ',
        desc = 'File Browser                            ',
        action = 'LSP Server',
        shortcut = ', p v' },
    { icon = '  ',
        desc = 'Find  word                              ',
        action = 'Telescope live_grep',
        shortcut = ', p s' }
}
