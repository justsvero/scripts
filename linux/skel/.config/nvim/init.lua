-- Color scheme & transparency
vim.cmd.colorscheme("unokai")
--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

-- Basic settings
vim.opt.number = true				-- Show line numbers
vim.opt.cursorline = true			-- Highlight current line
vim.opt.wrap = false				-- Do not wrap long lines
vim.opt.scrolloff = 10				-- Keep 10 lines above/below cursor
vim.opt.sidescrolloff = 8			-- Keep 8 columns left/right of cursor

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true			-- Case sensitive if uppercase in search
vim.opt.hlsearch = false			-- Do not highlight search results
vim.opt.incsearch = true			-- Show matches as you type

-- Visual settings
vim.opt.termguicolors = true			                  -- Enable 24-bit colors
vim.opt.signcolumn = "yes"			                    -- Always show sign column
vim.opt.colorcolumn = "100"			                    -- Highlight column at 100 characters
vim.opt.showmatch = true                            -- Highlight matching brackets
vim.opt.cmdheight = 1                               -- Command line height
vim.opt.completeopt = "menuone,noinsert,noselect"   -- Completion options
--vim.opt.showmode = false                            -- Do not show mode in command line
vim.opt.pumheight = 10                              -- Popup menu height
vim.opt.pumblend = 10                               -- Popup menu transparency
vim.opt.winblend = 0                                -- Floating window transparency
vim.opt.conceallevel = 0                            -- Do not hide markup
vim.opt.concealcursor = ""                          -- Do not hide cursor line markup
vim.opt.lazyredraw = true                           -- Do not redraw during macros
vim.opt.synmaxcol = 300                             -- Syntax highlighing limit

-- File handling
vim.opt.backup = false                              -- Do not create backup files
vim.opt.writebackup = false                         -- Do not create backup files before writing
vim.opt.swapfile = false                            -- Do not create swap files
vim.opt.undofile = true                             -- Persistent undo
vim.opt.undodir = vim.fn.expand("~/.vim/undodir") -- Undo directory
vim.opt.updatetime = 300                            -- Faster completion
vim.opt.timeoutlen = 500                            -- Key timeout duration
vim.opt.ttimeoutlen = 0                             -- Key code timeout
vim.opt.autoread = true                             -- Auto reload files changed outside of neovim
vim.opt.autowrite = false                           -- Do not autosave

-- Behavior settings
vim.opt.hidden = true                               -- Allow hidden buffers
vim.opt.errorbells = false                          -- No error bells
vim.opt.backspace = "indent,eol,start"              -- Use backspace to delete
vim.opt.autochdir = false                           -- Do not autochange directory
vim.opt.iskeyword:append("_")                       -- Treat dash as part of a keyword
vim.opt.path:append("**")                           -- Include sub directories in searches
vim.opt.selection = "exclusive"                     -- 
vim.opt.mouse = "a"                                 -- Enable mouse support
vim.opt.clipboard:append("unnamedplus")             -- Use system clipboard
vim.opt.modifiable = true                           -- Allow buffer modifications
vim.opt.encoding = "UTF-8"                          -- Use UTF-8 by default

-- Cursor settings
vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Key mappings
vim.g.mapleader = " "                               -- Set leader and local leader key to SPACE
vim.g.maplocalleader = " "

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Quick file navigation
vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file" })

-- Quick config editing
vim.keymap.set("n", "<leader>rc", ":e ~/.config/nvim/init.lua<CR>", { desc = "Edit config" })

-- Copy the full file path of the current file
vim.keymap.set("n", "<leader>pa", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  print("file:", path)
end)

local augroup = vim.api.nvim_create_augroup("UserConfig", {})

vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Set cursor to the last position if posible when reopening a file
vim.api.nvim_create_autocmd("BufReadPost", {
  group = augroup,
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Create directories when saving files
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  callback = function()
    local dir = vim.fn.expand('<afile>:p:h')
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, 'p')
    end
  end,
})

-- Performance options
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000

-- Command-line completion
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar", "*.dll", "*.exe" })

-- Better diff options
vim.opt.diffopt:append("linematch:60")

-- Create undo directory if it does not exist already
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end
