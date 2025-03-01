-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 🏁 Nastavení leader klávesy (pro vlastní klávesové zkratky)
vim.g.mapleader = " " -- Leader key je mezerník (Space)
vim.g.maplocalleader = "\\" -- Lokální leader key je zpětné lomítko (`\`)

-- 🔄 Automatické formátování kódu při uložení souboru
vim.g.autoformat = true -- Pokud nechceš, změň na `false`

-- 🎭 Animace v LazyVim (například animované přepínání mezi okny)
vim.g.snacks_animate = true -- Pokud nechceš animace, změň na `false`

-- 🔍 Výběr vyhledávacího nástroje (Telescope nebo FZF)
vim.g.lazyvim_picker = "auto" -- Pokud chceš jen Telescope, změň na `"telescope"`

-- ⚡ Výběr doplňování kódu (nvim-cmp nebo blink.cmp)
vim.g.lazyvim_cmp = "auto" -- Auto vybere nejlepší možnost

-- 🧠 Pokud AI podporuje doplňování, použije AI místo inline návrhů
vim.g.ai_cmp = true

-- 📂 Jak Neovim detekuje kořenový adresář projektu
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }
-- 1️⃣ LSP (pokud běží jazykový server)
-- 2️⃣ `.git` složka
-- 3️⃣ Složky obsahující `lua`
-- 4️⃣ Pokud nic nenajde, použije aktuální složku (`cwd`)

-- 🖥️ Použití terminálu (můžeš změnit na "bash", "zsh", "pwsh" atd.)
-- LazyVim.terminal.setup("pwsh")

-- 🚫 Ignorovat některé LSP servery (např. Copilot)
vim.g.root_lsp_ignore = { "copilot" }

-- 🚨 Skrýt varování o zastaralých funkcích v LazyVim
vim.g.deprecation_warnings = false -- Pokud chceš varování, změň na `true`

-- 📌 Zobrazit pozici v dokumentu (Trouble) v lualine (stavovém řádku)
vim.g.trouble_lualine = true -- Pokud nechceš, změň na `false`

-- 🔧 Hlavní nastavení editoru (vim.opt)
local opt = vim.opt

-- 📜 Automatické ukládání souboru při přepnutí okna
opt.autowrite = true

-- 📋 Synchronizace schránky s OS (pokud nejsi v SSH)
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

-- 🖱️ Povolení myši v Neovimu
opt.mouse = "a"

-- 🔤 Možnosti doplňování v menu
opt.completeopt = "menu,menuone,noselect"

-- 🔍 Ignorovat velikost písmen při hledání
opt.ignorecase = true
opt.smartcase = true -- Pokud napíšeš velké písmeno, bude hledání case-sensitive

-- 🔄 Náhled substitucí při hledání a nahrazování
opt.inccommand = "nosplit"

-- 📏 Zobrazení čísel řádků
opt.number = true -- Zapnout čísla řádků
opt.relativenumber = true -- Relativní čísla řádků

-- 📌 Lepší zalamování řádků
opt.linebreak = true
opt.wrap = false -- Pokud chceš zalamovat řádky, změň na `true`

-- ⏳ Zpoždění před spuštěním příkazů (např. WhichKey)
opt.timeoutlen = 300

-- 🎨 Povolit 24bitové barvy v terminálu
opt.termguicolors = true

-- 📜 Odsazování a formátování
opt.expandtab = true -- Používat mezery místo tabulátorů
opt.tabstop = 2 -- Tabulátor bude odpovídat 2 mezerám
opt.shiftwidth = 2 -- Automatické odsazení bude 2 mezery
opt.smartindent = true -- Automatické odsazování podle kódu

-- 🏎️ Rychlost editoru
opt.updatetime = 200 -- Jak často se ukládají změny
opt.undolevels = 10000 -- Počet kroků pro vrácení změn
opt.undofile = true -- Povolit historii změn i po restartu

-- 🔍 Nastavení hledání
opt.grepprg = "rg --vimgrep" -- Používat ripgrep (`rg`) místo grep
opt.grepformat = "%f:%l:%c:%m"

-- 📂 Možnosti session (uložené pracovní prostředí)
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }

-- 📌 Lepší skládání kódu (folding)
opt.foldlevel = 99 -- Kód je ve výchozím stavu rozbalený
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"

-- 📜 Zobrazení skrytých znaků
opt.list = true

-- 📌 Stavový řádek a boční sloupec
opt.signcolumn = "yes" -- Vždy zobrazit sloupec se značkami (např. LSP chyby)
opt.laststatus = 3 -- Globální status bar

-- 📌 Automatické skrolování při pohybu kurzorem
opt.scrolloff = 4 -- Vždy zobrazit 4 řádky nad/pod kurzorem
opt.sidescrolloff = 8 -- Vždy zobrazit 8 sloupců vlevo/vpravo

-- 📂 Nastavení rozdělení oken
opt.splitbelow = true -- Nová okna se otevírají pod aktuálním
opt.splitright = true -- Nová okna se otevírají napravo

-- ✍️ Automatické doplňování uvozovek, závorek a HTML tagů
opt.formatoptions = "jcroqlnt" -- Lepší formátování textu
opt.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"

-- 📌 Markdown konfigurace
vim.g.markdown_recommended_style = 0 -- Oprava odsazení v Markdownu

-- 🏁 Pokud máš Neovim 0.10+, povol smooth scrolling
if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
  opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
  opt.foldmethod = "expr"
  opt.foldtext = ""
else
  opt.foldmethod = "indent"
  opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end
