local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[               dc;,......,;c                 ]],
[[           xc;...          ...,cx            ]],
[[        k:..                     .ck         ]],
[[      kc'.                        .'ck       ]],
[[    0l;,'.    ..                   .,;o0     ]],
[[   O:,,,,.  .lxdolc::;;;::clol,   .',,,cO    ]],
[[  O:,,,,,'. :0KKKKKKKKKKKKKKKKx'  .',,,,c0   ]],
[[  l,,,,,,'..c0KKKKKKKKKKKKKKKKx.  .,,,,,,o   ]],
[[  ;,,,,,,,..c00KKKKKKKKKKKKKKKo. .',,,,,,:   ]],
[[  ,,,,,,,,..;:;::ldOK00ko:;:;ol. .,,,,,,,,   ]],
[[  ,,,,,,,,';dxddoodOK0Oxllccclx:..,,,,,,,,   ]],
[[  ;,,,,,,,;lOKKKKKKKKKKKKKKKKKOc,;,,,,,,,;   ]],
[[  l,,,,,,,;oOKKKKKKKKKKKKKKKKKkooc,,,,,,,o   ]],
[[  O:,,,,,,,ckKKKKKKKKKKKKKKKKKOkd;,,,,,,c0   ]],
[[   k:,,,,,,;d0KOxolcclooxk0KKK0d:,,,,,,cO    ]],
[[     l,,,,,,ckx,.'',''....;kKOo;,,,,,,l      ]],
[[      x:,,,,,cooxO000OOkxlcxxc,,,,,,ck       ]],
[[        kl;,,,;cx0KKKKKKKK0d:,,,,;lk         ]],
[[           xo:;:lxOO0000OOkl:ccox            ]],
 
-- [[                               __                ]],
-- [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
-- [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
-- [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
-- [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
-- [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
  dashboard.button("m", "更 Matrix", ":TermExec cmd='cmatrix -ab'<CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "zhouyuhan@pku.edu.cn"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Include"
--[[ dashboard.section.header.opts.hl = "Include" ]]
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
