-- This file is a port of my Neovim configuration to the Lua language

-- Show line numbers
vim.opt.number = true

-- Show the distance in line numbers from the current line
-- vim.opt.relativenumber = true

-- Show the line number in the status bar
vim.opt.ruler = true

-- Highlight the current line
-- vim.opt.cursorline = true

-- Don't split words on line breaks
vim.opt.linebreak = true

-- Tabs are converted to 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Number of lines that will always be kept at the screen edge when scrolling
vim.opt.so = 3

-- Optimize the color scheme for a dark beckground
vim.opt.background = "dark"

-- Define some specific rules for file types.
-- The Lua configuration doesn't support autocmd natively,
-- so this is a workaround.
autocmds = {
    -- HTML
    [[ autocmd FileType html set ts=2 ]],
    [[ autocmd FileType html set shiftwidth=2 ]],
    [[ autocmd FileType html set spell spelllang=en_us ]],
    -- XML
    [[ autocmd FileType xml set ts=2]],
    [[ autocmd FileType xml set shiftwidth=2 ]],
    [[ autocmd FileType xml set spell spelllang=en_us ]],
    -- DocBook
    [[ autocmd FileType docbk set ts=2 ]],
    [[ autocmd FileType docbk set shiftwidth=2 ]],
    [[ autocmd FileType docbk set spell spelllang=en_us ]],
    -- See https://superuser.com/questions/505353/vim-is-spellchecking-in-xml-files-where-i-dont-want-it-to-and-only-there
    [[ autocmd FileType docbk syntax spell toplevel ]],
    [[ autocmd FileType xml syntax spell toplevel ]],
    -- AsciiDoc
    [[ autocmd FileType asciidoc set ts=2 ]],
    [[ autocmd FileType asciidoc set shiftwidth=2 ]],
    [[ autocmd FileType asciidoc set spell spelllang=en_us ]],
}

-- Execute the autocmds defined earlier
for i = 1, #autocmds do
    vim.api.nvim_exec(autocmds[i], false)
end
