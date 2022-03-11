local options = {
  -- 文件备份
  backup = false,                          -- creates a backup file
  undofile = true,                         -- enable persistent undo
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  swapfile = false,                        -- creates a swapfile

  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  -- 编码
  fileencoding = "utf-8",                  -- the encoding written to a file
  -- 搜索
  -- 高亮搜索
  hlsearch = true,                         -- highlight all matches on previous search pattern
  -- 边输入边搜索
  incsearch = true,
  -- 大小写不敏感
  ignorecase = true,                       -- ignore case in search patterns
  -- 包含大写时大小写敏感
  smartcase = true,                        -- smart case
  -- 鼠标
  mouse = "n",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  -- 显示当前模式
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore

  -- 顶部标签栏
  showtabline = 2,                         -- always show tabs
  -- split时,新窗口在当前窗口的下方
  splitbelow = true,                       -- force all horizontal splits to go below current window
  -- vsplit时,新窗口在当前窗口的右方
  splitright = true,                       -- force all vertical splits to go to the right of current window
  -- 等待快捷键连击时间
  timeoutlen = 100,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  updatetime = 300,                        -- faster completion (4000ms default)
  -- 行号
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  -- 缩进
  smartindent = true,                      -- make indenting smarter again
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  -- 高亮当前行
  cursorline = true,                       -- highlight the current line
  -- 左侧图标指示列
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  -- 右侧参考线
  colorcolumn = "80",
  -- 折行
  wrap = false,
  -- jk移动时，光标上下保留8行
  scrolloff = 8,
  sidescrolloff = 8,
  -- guifont
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  -- gui终端颜色支持(24位rgb色)
  termguicolors = true,                    -- set term gui colors (most terminals support this)
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
