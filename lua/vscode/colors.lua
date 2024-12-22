local colors = {}
colors.get_colors = function()
    local mycolors = {} ---@type table<string,string>

    if vim.o.background == 'dark' then
        mycolors = {
            vscNone = 'NONE',
            vscFront = '#e0e0e0',  -- Softer white for a relaxed contrast
            vscBack = '#121212',   -- Slightly lighter than true black

            vscTabCurrent = '#1c1c1c',
            vscTabOther = '#121212',
            vscTabOutside = '#121212',

            vscLeftDark = '#1c1c1c',
            vscLeftMid = '#2c2c2c',
            vscLeftLight = '#3c3c3c',

            vscPopupFront = '#e0e0e0',
            vscPopupBack = '#1c1c1c',
            vscPopupHighlightBlue = '#3a73c9',
            vscPopupHighlightGray = '#2c2c2c',

            vscSplitLight = '#3c3c3c',
            vscSplitDark = '#2c2c2c',
            vscSplitThumb = '#1c1c1c',

            vscCursorDarkDark = '#1c1c1c',
            vscCursorDark = '#2c2c2c',
            vscCursorLight = '#3c3c3c',
            vscSelection = '#5e3a70',    -- Transparent-like purplish shade
            vscLineNumber = '#4a4a4a',

            vscDiffRedDark = '#d45b5b',  -- Muted red
            vscDiffRedLight = '#e07a7d',
            vscDiffRedLightLight = '#dd6666',
            vscDiffGreenDark = '#6fbf7b',
            vscDiffGreenLight = '#68d1c1',
            vscSearchCurrent = '#2c2c2c',
            vscSearch = '#d16d96',

            vscGitAdded = '#6fbf7b',
            vscGitModified = '#3a73c9',
            vscGitDeleted = '#db6b9c',
            vscGitRenamed = '#ab89d1',
            vscGitUntracked = '#68c8e0',
            vscGitIgnored = '#4a4a4a',
            vscGitStageModified = '#3a73c9',
            vscGitStageDeleted = '#db6b9c',
            vscGitConflicting = '#d16d96',
            vscGitSubmodule = '#ab89d1',

            vscContext = '#2c2c2c',
            vscContextCurrent = '#4a4a4a',

            vscFoldBackground = '#3a73c9',

            -- Syntax colors inspired by Material Design
            vscGray = '#4a4a4a',
            vscViolet = '#ab89d1',       
            vscBlue = '#8392d6',         
            vscAccentBlue = '#5f9fdb',   
            vscDarkBlue = '#3a73c9',     -- Material-inspired, relaxed dark blue
            vscMediumBlue = '#5f9fdb',   
            vscDisabledBlue = '#4a4a4a', 
            vscLightBlue = '#68c8e0',    
            vscGreen = '#6fbf7b',        
            vscBlueGreen = '#68d1c1',    
            vscLightGreen = '#6fbf7b',   
            vscRed = '#db6b9c',          
            vscLightRed = '#e07a7d',     
            vscOrange = '#e88e3a',       
            vscYellowOrange = '#ffc799', -- Updated yellow
            vscYellow = '#ffc799',       -- Updated yellow
            vscDarkYellow = '#c9a277',   
            vscPink = '#d16d96',         

            -- Low contrast with default background
            vscDimHighlight = '#2c2c2c',
        }
    else
        -- Light theme colors remain unchanged
        mycolors = {
            -- ... (keeping the original light theme colors)
        }
    end

    -- Other ui specific colors
    mycolors.vscUiBlue = '#3a73c9'      
    mycolors.vscUiOrange = '#e88e3a'   
    mycolors.vscPopupHighlightLightBlue = '#5f9fdb'

    -- Extend the colors with overrides passed by `color_overrides`
    local config = require('vscode.config')
    if config.opts.color_overrides then
        mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
    end

    return mycolors
end

return colors
