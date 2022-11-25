vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>", opts)
keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- Close buffer
keymap.set("n", "<C-q>", ":bd<CR>", opts)

-- Save buffer
keymap.set("n", "<C-s>", ":w<CR>", opts)

-- Increment and decrement numbers
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
keymap.set("v", "+", "<C-a>")
keymap.set("v", "-", "<C-x>")

-- Select all text
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Visual --
-- Stay in indent mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)


-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>ft", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- True-Zen
keymap.set("n", "<leader>zn", "<cmd>TZNarrow<CR>")
keymap.set("v", "<leader>zn", "<cmd>'<,'>TZNarrow<CR>")
keymap.set("n", "<leader>zf", "<cmd>TZFocus<CR>")
keymap.set("n", "<leader>zm", "<cmd>TZMinimalist<CR>")
keymap.set("n", "<leader>za", "<cmd>TZAtaraxis<CR>")

-- Nvim Tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- Vimux
keymap.set("n", "<leader>zq", "<cmd>VimuxCloseRunner<CR>")
keymap.set("n", "<leader>zc", "<cmd>VimuxClearTerminalScreen<CR>")
keymap.set("n", "<leader>zp", "<cmd>VimuxPromptCommand<CR>")
keymap.set("n", "<leader>zv", "<cmd>VimuxZoomRunner<CR>")

