local wezterm = require 'wezterm'
local act     = wezterm.action

local shortcuts = {}

function disable(k, m) table.insert(shortcuts, { key = k, mods = m, action = wezterm.action.DisableDefaultAssignment, }) end

-- keys to disable
disable("!", "CTRL")
disable("!", "CTRL|SHIFT")
disable("\"", "ALT|CTRL")
disable("\"", "SHIFT|ALT|CTRL")
disable("#", "CTRL")
disable("#", "CTRL|SHIFT")
disable("$", "CTRL")
disable("$", "CTRL|SHIFT")
disable("%", "CTRL")
disable("%", "CTRL|SHIFT")
disable("%", "ALT|CTRL")
disable("%", "SHIFT|ALT|CTRL")
disable("&", "CTRL")
disable("&", "CTRL|SHIFT")
disable("'", "SHIFT|ALT|CTRL")
disable("(", "CTRL")
disable("(", "CTRL|SHIFT")
disable(")", "CTRL")
disable(")", "CTRL|SHIFT")
disable("*", "CTRL")
disable("*", "CTRL|SHIFT")
-- disable("+", "CTRL")
disable("+", "CTRL|SHIFT")
-- disable("-", "CTRL")
disable("-", "CTRL|SHIFT")
disable("-", "SUPER")
disable("0", "CTRL")
disable("0", "SHIFT|CTRL")
disable("0", "SUPER")
disable("1", "SHIFT|CTRL")
disable("1", "SUPER")
disable("2", "SHIFT|CTRL")
disable("2", "SUPER")
disable("3", "SHIFT|CTRL")
disable("3", "SUPER")
disable("4", "SHIFT|CTRL")
disable("4", "SUPER")
disable("5", "SHIFT|CTRL")
disable("5", "SHIFT | ALT | CTRL")
disable("5", "SUPER")
disable("6", "SHIFT|CTRL")
disable("6", "SUPER")
disable("7", "SHIFT|CTRL")
disable("7", "SUPER")
disable("8", "SHIFT|CTRL")
disable("8", "SUPER")
disable("9", "SHIFT|CTRL")
disable("9", "SUPER")
disable("=", "CTRL")
disable("=", "SHIFT | CTRL")
disable("=", "SUPER")
disable("@", "CTRL")
disable("@", "CTRL|SHIFT")
-- disable("C", "CTRL")
-- disable("C", "SHIFT | CTRL")
-- disable("F", "CTRL")
-- disable("F", "SHIFT | CTRL")
-- disable("K", "CTRL")
-- disable("K", "SHIFT | CTRL")
-- disable("L", "CTRL")
-- disable("L", "SHIFT | CTRL")
-- disable("M", "CTRL")
-- disable("M", "SHIFT | CTRL")
-- disable("N", "CTRL")
-- disable("N", "SHIFT | CTRL")
-- disable("P", "CTRL")
-- disable("P", "SHIFT | CTRL")
-- disable("R", "CTRL")
-- disable("R", "SHIFT | CTRL")
-- disable("T", "CTRL")
-- disable("T", "SHIFT | CTRL")
disable("U", "CTRL")
disable("U", "SHIFT | CTRL")
-- disable("V", "CTRL")
-- disable("V", "SHIFT | CTRL")
-- disable("W", "CTRL")
-- disable("W", "SHIFT | CTRL")
-- disable("X", "CTRL")
-- disable("X", "SHIFT | CTRL")
-- disable("Z", "CTRL")
-- disable("Z", "SHIFT | CTRL")
disable("[", "SHIFT | SUPER")
disable("]", "SHIFT | SUPER")
disable("^", "CTRL")
disable("^", "SHIFT | CTRL")
disable("_", "CTRL")
disable("_", "SHIFT | CTRL")
-- disable("c", "SHIFT | CTRL")
-- disable("c", "SUPER")
-- disable("f", "SHIFT | CTRL")
-- disable("f", "SUPER")
-- disable("k", "SHIFT | CTRL")
-- disable("k", "SUPER")
-- disable("l", "SHIFT | CTRL")
-- disable("m", "SHIFT | CTRL")
-- disable("m", "SUPER")
-- disable("n", "SHIFT | CTRL")
-- disable("n", "SUPER")
-- disable("p", "SHIFT | CTRL")
-- disable("r", "SHIFT | CTRL")
-- disable("r", "SUPER")
-- disable("t", "SHIFT | CTRL")
-- disable("t", "SUPER")
disable("u", "SHIFT | CTRL")
-- disable("v", "SHIFT | CTRL")
-- disable("v", "SUPER")
-- disable("w", "SHIFT | CTRL")
-- disable("w", "SUPER")
-- disable("x", "SHIFT | CTRL")
-- disable("z", "SHIFT | CTRL")
disable("{", "SUPER")
disable("{", "SHIFT | SUPER")
disable("}", "SUPER")
disable("}", "SHIFT | SUPER")
-- disable("Space (Physical)", "SHIFT|CTRL") --           ->   QuickSelect
-- disable("PageUp", "SHIFT") --                             ->   ScrollByPage(NotNan(-1.0))
disable("PageUp", "CTRL") --                              ->   ActivateTabRelative(-1)
disable("PageUp", "SHIFT | CTRL") --                      ->   MoveTabRelative(-1)
-- disable("PageDown", "SHIFT") --                           ->   ScrollByPage(NotNan(1.0))
disable("PageDown", "CTRL") --                            ->   ActivateTabRelative(1)
disable("PageDown", "SHIFT | CTRL") --                    ->   MoveTabRelative(1)
-- disable("LeftArrow", "SHIFT | CTRL") --                   ->   ActivatePaneDirection(Left)
-- disable("LeftArrow", "SHIFT | ALT | CTRL") --             ->   AdjustPaneSize(Left, 1)
-- disable("RightArrow", "SHIFT | CTRL") --                  ->   ActivatePaneDirection(Right)
-- disable("RightArrow", "SHIFT | ALT | CTRL") --            ->   AdjustPaneSize(Right, 1)
-- disable("UpArrow", "SHIFT | CTRL") --                     ->   ActivatePaneDirection(Up)
-- disable("UpArrow", "SHIFT | ALT | CTRL") --               ->   AdjustPaneSize(Up, 1)
-- disable("DownArrow", "SHIFT | CTRL") --                   ->   ActivatePaneDirection(Down)
-- disable("DownArrow", "SHIFT | ALT | CTRL") --             ->   AdjustPaneSize(Down, 1)
disable("Insert", "SHIFT") --                             ->   PasteFrom(PrimarySelection)
disable("Insert", "CTRL") --                              ->   CopyTo(PrimarySelection)
-- disable("Copy", "") --               ->   CopyTo(Clipboard)
-- disable("Paste", "") --             ->   PasteFrom(Clipboard)

for i = 1, 8 do
    table.insert(shortcuts, {
        key = tostring(i),
        mods = "ALT",
        action = wezterm.action.ActivateTab(i-1),
    })
end

table.insert(shortcuts, {
    key = "(",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitHorizontal { domain = CurrentPaneDomain }
})

table.insert(shortcuts, {
    key = ")",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitVertical { domain = CurrentPaneDomain }
})

wezterm.on(
    "format-tab-title",
    function(tab, tabs, panes, config, hover, max_width)
        return ' ' .. tab.active_pane.title .. ' '
    end
)

return {
    font = wezterm.font('Hack'),
    font_size = 9.8,
    keys = shortcuts,
    colors = {
        foreground      = '#b2b2b2',
        background      = '#080808',
        cursor_fg       = '#080808',
        cursor_bg       = '#b2b2b2',
        cursor_border   = '#b2b2b2',
        selection_fg    = '#080808',
        selection_bg    = '#b2b2b2',
        scrollbar_thumb = '#b2b2b2',    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
        split = '#b2b2b2',          -- The color of the split lines between panes

        brights = {
            '#080808', '#d75f87', '#00af00', '#ffd787',
            '#8787ff', '#d700d7', '#87d7ff', '#eeeeee',
        },

        ansi = {
            '#080808', '#d75f87', '#00af00', '#ffd787',
            '#8787ff', '#d700d7', '#87d7ff', '#eeeeee',
        },

        -- ansi = {
        --     '#080808', '#870000', '#008700', '#ffaf00',
        --     '#5f5fff', '#af00d7', '#00afff', '#b2b2b2'
        -- },

        -- When the IME, a dead key or a leader key are being processed and are effectively
        -- holding input pending the result of input composition, change the cursor
        -- to this color to give a visual cue about the compose state.
        compose_cursor = 'red',

        tab_bar = {
            -- The color of the strip that goes along the top of the window
            -- (does not apply when fancy tab bar is in use)
            background = '#080808',

            -- The active tab is the one that has focus in the window
            active_tab = {
                bg_color = '#d75f87',
                fg_color = '#080808',
                intensity = 'Bold', -- Half, Normal or Bold
                underline = 'None', -- None, Single or Double
                -- italic = true,
                -- strikethrough = false,
            },

            -- Inactive tabs are the tabs that do not have focus
            inactive_tab = {
                bg_color = '#8a8a8a',
                fg_color = '#080808',
            },

            inactive_tab_hover = {
                bg_color = '#b2b2b2',
                fg_color = '#080808',
            },

            -- The new tab button that let you create new tabs
            new_tab = {
                bg_color = '#4e4e4e',
                fg_color = '#080808',
            },

            new_tab_hover = {
                bg_color = '#b2b2b2',
                fg_color = '#080808',
            },
        },
    },
    hide_tab_bar_if_only_one_tab = true,

    window_padding = {
        left = 16, right = 16, top = 16, bottom = 16,
    },

    force_reverse_video_cursor = true,
    scrollback_lines = 3500,
    -- enable_scroll_bar = true,
    use_fancy_tab_bar = false,
    default_cursor_style = 'BlinkingBlock',
    cursor_blink_rate = 1000,
    cursor_blink_ease_in = "Constant",
    cursor_blink_ease_out = "Constant",
    initial_cols = 120,
    initial_rows = 36,
    line_height = 1.0
}
