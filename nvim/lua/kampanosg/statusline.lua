local modes = {
    ["n"] = "NORMAL <(•ᴗ•)>",
    ["no"] = "NORMAL <(•ᴗ•)>",
    ["v"] = "VISUAL (v•-•)v",
    ["V"] = "VISUAL LINE (>•-•)>",
    [""] = "VISUAL BLOCK (v•-•)v",
    ["s"] = "SELECT (>*-*)>",
    ["S"] = "SELECT LINE (>*-*)>",
    [""] = "SELECT BLOCK (>*-*)>",
    ["i"] = "INSERT ᕙ(⇀‸↼‶)ᕗ",
    ["ic"] = "INSERT ᕙ(⇀‸↼‶)ᕗ",
    ["R"] = "REPLACE ¯\\_(ツ)_/¯",
    ["Rv"] = "VISUAL REPLACE ¯\\_(ツ)_/¯",
    ["c"] = "COMMAND ヾ(⌐■_■)ノ♪",
    ["cv"] = "VIM EX ლ(╹◡╹ლ)",
    ["ce"] = "EX ლ(╹◡╹ლ)",
    ["r"] = "PROMPT ლ(ಠ益ಠლ)",
    ["rm"] = "MOAR ʕ •ᴥ•ʔ",
    ["r?"] = "CONFIRM ¯\\(º_o)/¯",
    ["!"] = "SHELL (• ε •)",
    ["t"] = "TERMINAL (╥﹏╥)",
}

local function mode()
    local current_mode = vim.api.nvim_get_mode().mode
    return string.format(" %s ", modes[current_mode]):upper()
end

local function update_mode_colors()
    local current_mode = vim.api.nvim_get_mode().mode
    local mode_color = "%#StatusLineAccent#"
    if current_mode == "n" then
        mode_color = "%#StatuslineAccent#"
    elseif current_mode == "i" or current_mode == "ic" then
        mode_color = "%#StatuslineInsertAccent#"
    elseif current_mode == "v" or current_mode == "V" or current_mode == "" then
        mode_color = "%#StatuslineVisualAccent#"
    elseif current_mode == "R" then
        mode_color = "%#StatuslineReplaceAccent#"
    elseif current_mode == "c" then
        mode_color = "%#StatuslineCmdLineAccent#"
    elseif current_mode == "t" then
        mode_color = "%#StatuslineTerminalAccent#"
    end
    return mode_color
end

local function filepath()
    local fpath = vim.fn.fnamemodify(vim.fn.expand "%", ":~:.:h")
    if fpath == "" or fpath == "." then
        return " "
    end

    return string.format(" %%<%s/", fpath)
end

local function filename()
    local fname = vim.fn.expand "%:t"
    if fname == "" then
        return ""
    end
    return fname .. " "
end

local function lsp()
    local count = {}
    local levels = {
        errors = "Error",
        warnings = "Warn",
        info = "Info",
        hints = "Hint",
    }

    for k, level in pairs(levels) do
        count[k] = vim.tbl_count(vim.diagnostic.get(0, { severity = level }))
    end

    local errors = ""
    local warnings = ""
    local hints = ""
    local info = ""

    if count["errors"] ~= 0 then
        errors = " %#LspDiagnosticsSignError#❌ " .. count["errors"]
    end
    if count["warnings"] ~= 0 then
        warnings = " %#LspDiagnosticsSignWarning#⚠️ " .. count["warnings"]
    end
    if count["hints"] ~= 0 then
        hints = " %#LspDiagnosticsSignHint#🤔 " .. count["hints"]
    end
    if count["info"] ~= 0 then
        info = " %#LspDiagnosticsSignInformation#ℹ️ " .. count["info"]
    end

    return errors .. warnings .. hints .. info .. "%#Normal#"
end

local function filetype()
  return string.format(" %s ", vim.bo.filetype):upper()
end

local function lineinfo()
  if vim.bo.filetype == "alpha" then
    return ""
  end
  return " %P %l:%c "
end

local function unsaved()
    return "%m%r"
end

Statusline = {}

Statusline.active = function()
  return table.concat {
    "%#Statusline#",
    update_mode_colors(),
    mode(),
    "%#Normal# ",
    filepath(),
    filename(),
    unsaved(),
    "%#Normal#",
    lsp(),
    "%=%#StatusLineExtra#",
    filetype(),
    lineinfo(),
  }
end

function Statusline.inactive()
  return " %F"
end

function Statusline.short()
  return "%#StatusLineNC#   NvimTree"
end

vim.api.nvim_exec([[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Statusline.short()
  augroup END
]], false)
