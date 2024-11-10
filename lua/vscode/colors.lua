local colors = {}
colors.get_colors = function()
    local mycolors = {} ---@type table<string,string>

    if vim.o.background == 'dark' then
        mycolors = {
            vscNone = 'NONE',
            vscFront = '#E2E2E2',
            vscBack = '#263238',  -- Material dark background

            vscTabCurrent = '#0d0d0d',
            vscTabOther = '#202020',
            vscTabOutside = '#202020',

            vscLeftDark = '#2E3C43',
            vscLeftMid = '#455A64',
            vscLeftLight = '#607D8B',

            vscPopupFront = '#222222',
            vscPopupBack = '#171717',
            vscPopupHighlightBlue = '#1565C0',
            vscPopupHighlightGray = '#455A64',

            vscSplitLight = '#78909C',
            vscSplitDark = '#546E7A',
            vscSplitThumb = '#455A64',

            vscCursorDarkDark = '#2E3C43',
            vscCursorDark = '#546E7A',
            vscCursorLight = '#B0BEC5',
            vscSelection = '#272728',
            vscLineNumber = '#78909C',

            vscDiffRedDark = '#B71C1C',
            vscDiffRedLight = '#C62828',
            vscDiffRedLightLight = '#EF5350',
            vscDiffGreenDark = '#2E7D32',
            vscDiffGreenLight = '#388E3C',
            vscSearchCurrent = '#546E7A',
            vscSearch = '#795548',

            vscGitAdded = '#81C784',
            vscGitModified = '#FF9800',  -- More true orange
            vscGitDeleted = '#E57373',
            vscGitRenamed = '#4DB6AC',
            vscGitUntracked = '#4DB6AC',
            vscGitIgnored = '#90A4AE',
            vscGitStageModified = '#FF9800',  -- More true orange
            vscGitStageDeleted = '#E57373',
            vscGitConflicting = '#FF7043',
            vscGitSubmodule = '#64B5F6',

            vscContext = '#455A64',
            vscContextCurrent = '#78909C',

            vscFoldBackground = '#1565C0',

            -- Syntax colors
            vscGray = '#90A4AE',
            vscViolet = '#9575CD',
            vscBlue = '#64B5F6',
            vscAccentBlue = '#40C4FF',
            vscDarkBlue = '#1565C0',
            vscMediumBlue = '#2196F3',
            vscDisabledBlue = '#78909C',
            vscLightBlue = '#81D4FA',
            vscGreen = '#81C784',
            vscBlueGreen = '#4EC9B0',
            vscLightGreen = '#A5D6A7',
            vscRed = '#EF5350',
            vscLightRed = '#E57373',
            vscOrange = '#CE9178',
            vscYellowOrange = '#D7BA7D',
            vscYellow = '#DCDCAA',
            vscDarkYellow = '#FFD602',
            vscPink = '#C586C0',

            -- Low contrast with default background
            vscDimHighlight = '#546E7A',
        }
    else
        mycolors = {
            vscNone = 'NONE',
            vscFront = '#424242',
            vscBack = '#FAFAFA',  -- Material light background

            vscTabCurrent = '#FAFAFA',
            vscTabOther = '#EEEEEE',
            vscTabOutside = '#F5F5F5',

            vscLeftDark = '#E0E0E0',
            vscLeftMid = '#EEEEEE',
            vscLeftLight = '#F5F5F5',

            vscPopupFront = '#212121',
            vscPopupBack = '#F5F5F5',
            vscPopupHighlightBlue = '#1976D2',
            vscPopupHighlightGray = '#BDBDBD',

            vscSplitLight = '#E0E0E0',
            vscSplitDark = '#BDBDBD',
            vscSplitThumb = '#9E9E9E',

            vscCursorDarkDark = '#E3F2FD',
            vscCursorDark = '#757575',
            vscCursorLight = '#9E9E9E',
            vscSelection = '#BBDEFB',
            vscLineNumber = '#2E7D32',

            vscDiffRedDark = '#FFCDD2',
            vscDiffRedLight = '#EF9A9A',
            vscDiffRedLightLight = '#FFCDD2',
            vscDiffGreenDark = '#C8E6C9',
            vscDiffGreenLight = '#E8F5E9',
            vscSearchCurrent = '#BCAAA4',
            vscSearch = '#FFCCBC',

            vscGitAdded = '#43A047',
            vscGitModified = '#F57C00',  -- More true orange
            vscGitDeleted = '#E53935',
            vscGitRenamed = '#00897B',
            vscGitUntracked = '#00897B',
            vscGitIgnored = '#757575',
            vscGitStageModified = '#F57C00',  -- More true orange
            vscGitStageDeleted = '#E53935',
            vscGitConflicting = '#E53935',
            vscGitSubmodule = '#1976D2',

            vscContext = '#E0E0E0',
            vscContextCurrent = '#9E9E9E',

            vscFoldBackground = '#E3F2FD',

            -- Syntax colors
            vscGray = '#212121',
            vscViolet = '#303F9F',
            vscBlue = '#1976D2',
            vscDarkBlue = '#0288D1',
            vscLightBlue = '#1565C0',
            vscGreen = '#388E3C',
            vscBlueGreen = '#00796B',
            vscLightGreen = '#2E7D32',
            vscRed = '#D32F2F',
            vscOrange = '#F57C00',  -- More true orange
            vscLightRed = '#C62828',
            vscYellowOrange = '#E65100',  -- Dark orange
            vscYellow = '#F57C00',  -- More orange than yellow
            vscPink = '#8E24AA',  -- More purple-leaning pink

            -- Low contrast with default background
            vscDimHighlight = '#B2DFDB',
        }
    end

    -- Other ui specific colors
    mycolors.vscUiBlue = '#1565C0'
    mycolors.vscUiOrange = '#F57C00'  -- More true orange
    mycolors.vscPopupHighlightLightBlue = '#E3F2FD'

    -- Extend the colors with overrides passed by `color_overrides`
    local config = require('vscode.config')
    if config.opts.color_overrides then
        mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
    end

    return mycolors
end

return colors
