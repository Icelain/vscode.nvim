local colors = {}
colors.get_colors = function()
    local mycolors = {} ---@type table<string,string>

    if vim.o.background == 'dark' then
        mycolors = {
            vscNone = 'NONE',
            vscFront = '#f2f4f8',  -- Brighter white for better contrast
            vscBack = '#161616',   -- True black background like Oxocarbon

            vscTabCurrent = '#262626',
            vscTabOther = '#161616',
            vscTabOutside = '#161616',

            vscLeftDark = '#262626',
            vscLeftMid = '#393939',
            vscLeftLight = '#525252',

            vscPopupFront = '#f2f4f8',
            vscPopupBack = '#262626',
            vscPopupHighlightBlue = '#33b1ff',
            vscPopupHighlightGray = '#393939',

            vscSplitLight = '#525252',
            vscSplitDark = '#393939',
            vscSplitThumb = '#262626',

            vscCursorDarkDark = '#262626',
            vscCursorDark = '#393939',
            vscCursorLight = '#525252',
            vscSelection = '#264f78',
            vscLineNumber = '#525252',

            vscDiffRedDark = '#ff4d4d',
            vscDiffRedLight = '#ff8389',
            vscDiffRedLightLight = '#fa4b4b',
            vscDiffGreenDark = '#42be65',
            vscDiffGreenLight = '#3ddbd9',
            vscSearchCurrent = '#393939',
            vscSearch = '#ee5396',

            vscGitAdded = '#42be65',     -- Oxocarbon green
            vscGitModified = '#33b1ff',   -- Oxocarbon blue
            vscGitDeleted = '#ff7eb6',    -- Oxocarbon pink
            vscGitRenamed = '#be95ff',    -- Oxocarbon purple
            vscGitUntracked = '#82cfff',  -- Light blue
            vscGitIgnored = '#525252',    -- Gray
            vscGitStageModified = '#33b1ff',
            vscGitStageDeleted = '#ff7eb6',
            vscGitConflicting = '#ee5396',
            vscGitSubmodule = '#be95ff',

            vscContext = '#393939',
            vscContextCurrent = '#525252',

            vscFoldBackground = '#33b1ff',

            -- Syntax colors inspired by Oxocarbon
            vscGray = '#525252',
            vscViolet = '#be95ff',        -- Purple
            vscBlue = '#33b1ff',          -- Bright blue
            vscAccentBlue = '#82cfff',    -- Light blue
            vscDarkBlue = '#0f62fe',      -- Deep blue
            vscMediumBlue = '#78a9ff',    -- Medium blue
            vscDisabledBlue = '#525252',  -- Gray
            vscLightBlue = '#82cfff',     -- Light blue
            vscGreen = '#42be65',         -- Green
            vscBlueGreen = '#3ddbd9',     -- Cyan
            vscLightGreen = '#42be65',    -- Green
            vscRed = '#ff7eb6',           -- Pink
            vscLightRed = '#ff8389',      -- Light pink
            vscOrange = '#ff6f00',        -- Orange
            vscYellowOrange = '#ff832b',  -- Light orange
            vscYellow = '#ffab91',        -- Peach
            vscDarkYellow = '#ff7eb6',    -- Pink
            vscPink = '#ee5396',          -- Deep pink

            -- Low contrast with default background
            vscDimHighlight = '#393939',
        }
    else
        -- Light theme colors remain unchanged
        mycolors = {
            -- ... (keeping the original light theme colors)
        }
    end

    -- Other ui specific colors
    mycolors.vscUiBlue = '#33b1ff'       -- Oxocarbon blue
    mycolors.vscUiOrange = '#ff832b'      -- Bright orange
    mycolors.vscPopupHighlightLightBlue = '#78a9ff'

    -- Extend the colors with overrides passed by `color_overrides`
    local config = require('vscode.config')
    if config.opts.color_overrides then
        mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
    end

    return mycolors
end

return colors
