local api = vim.api

-- Start NERDTree when Vim is started WITH file arguments.
api.nvim_create_autocmd(
    "StdinReadPre", { pattern="*", command = "[[let s:std_in=1]]"}
)

api.nvim_create_autocmd(
    "VimEnter", { pattern = "*", command = [[if argc() >= 1 && !exists('s:std_in') | NERDTree | wincmd p | endif]]}
)
