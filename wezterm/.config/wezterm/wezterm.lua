local wezterm = require 'wezterm'

local act = wezterm.action

local my_colorschemes = {
    WhiteScheme = {
        ansi = {
            "#eeeeee",
            "#d75f87",
            "#00af00",
            "#ffaf00",
            "#8787ff",
            "#d700d7",
            "#0087d7",
            "#1c1c1c",
        },
        brights = {
            "#eeeeee",
            "#d75f87",
            "#00af00",
            "#ffaf00",
            "#8787ff",
            "#d700d7",
            "#0087d7",
            "#1c1c1c",
        },

        background    = "#eeeeee",
        foreground    = "#1c1c1c",
        cursor_bg     = "#1c1c1c",
        cursor_fg     = "#eeeeee",
        cursor_border = "#1c1c1c",
        selection_bg  = "#1c1c1c",
        selection_fg  = "#eeeeee",

        scrollbar_thumb = "#f00808",
        split           = "#1c1c1c",
        tab_bar = { background = "#eeeeee" },
    },
    BlackScheme = {
        ansi = {
            "#080808",
            "#d75f87",
            "#00af00",
            "#ffd787",
            "#8787ff",
            "#d700d7",
            "#87d7ff",
            "#b2b2b2",
        },
        brights = {
            "#080808",
            "#d75f87",
            "#00af00",
            "#ffd787",
            "#8787ff",
            "#d700d7",
            "#87d7ff",
            "#eeeeee",
        },

        background    = "#080808",
        foreground    = "#b2b2b2",
        cursor_bg     = "#080808",
        cursor_fg     = "#b2b2b2",
        cursor_border = "#b2b2b2",
        selection_bg  = "#b2b2b2",
        selection_fg  = "#080808",

        -- The color of the scrollbar "thumb"; the portion that represents the current viewport
        scrollbar_thumb = "#f00808",
        -- The color of the split lines between panes
        split           = "#b2b2b2",

        -- The color of the strip that goes along the top of the window
        -- (does not apply when fancy tab bar is in use)
        tab_bar = { background = "#080808" },
    },
}

local curr_scheme = 'BlackScheme'

local shortcuts = {}

function disable_all(keys)
    for _, v in ipairs(keys) do
        table.insert(shortcuts, {
            key = v[1],
            mods = v[2],
            action = wezterm.action.DisableDefaultAssignment,
        })
    end
end

-- keys to disable
disable_all({
    { "!", "CTRL" },
    { "!", "CTRL|SHIFT" },
    { "\"", "ALT|CTRL" },
    { "\"", "SHIFT|ALT|CTRL" },
    { "#", "CTRL" },
    { "#", "CTRL|SHIFT" },
    { "$", "CTRL" },
    { "$", "CTRL|SHIFT" },
    { "%", "CTRL" },
    { "%", "CTRL|SHIFT" },
    { "%", "ALT|CTRL" },
    { "%", "SHIFT|ALT|CTRL" },
    { "&", "CTRL" },
    { "&", "CTRL|SHIFT" },
    { "'", "SHIFT|ALT|CTRL" },
    { "(", "CTRL" },
    { "(", "CTRL|SHIFT" },
    { ")", "CTRL" },
    { ")", "CTRL|SHIFT" },
    { "*", "CTRL" },
    { "*", "CTRL|SHIFT" },
    { "+", "CTRL|SHIFT" },
    { "-", "CTRL|SHIFT" },
    { "-", "SUPER" },
    { "0", "CTRL" },
    { "0", "SHIFT|CTRL" },
    { "0", "SUPER" },
    { "1", "SHIFT|CTRL" },
    { "1", "SUPER" },
    { "2", "SHIFT|CTRL" },
    { "2", "SUPER" },
    { "3", "SHIFT|CTRL" },
    { "3", "SUPER" },
    { "4", "SHIFT|CTRL" },
    { "4", "SUPER" },
    { "5", "SHIFT|CTRL" },
    { "5", "SHIFT | ALT | CTRL" },
    { "5", "SUPER" },
    { "6", "SHIFT|CTRL" },
    { "6", "SUPER" },
    { "7", "SHIFT|CTRL" },
    { "7", "SUPER" },
    { "8", "SHIFT|CTRL" },
    { "8", "SUPER" },
    { "9", "SHIFT|CTRL" },
    { "9", "SUPER" },
    { "=", "CTRL" },
    { "=", "SHIFT | CTRL" },
    { "=", "SUPER" },
    { "@", "CTRL" },
    { "@", "CTRL|SHIFT" },
    { "U", "CTRL" },
    { "U", "SHIFT | CTRL" },
    { "[", "SHIFT | SUPER" },
    { "]", "SHIFT | SUPER" },
    { "^", "CTRL" },
    { "^", "SHIFT | CTRL" },
    { "_", "CTRL" },
    { "_", "SHIFT | CTRL" },
    { "u", "SHIFT | CTRL" },
    { "{", "SUPER" },
    { "{", "SHIFT | SUPER" },
    { "}", "SUPER" },
    { "}", "SHIFT | SUPER" },
    { "PageUp", "CTRL" },           -- ActivateTabRelative(-1 },
    { "PageUp", "SHIFT | CTRL" },   -- MoveTabRelative(-1 }
    { "PageDown", "CTRL" },         -- ActivateTabRelative(1 }
    { "PageDown", "SHIFT | CTRL" }, -- MoveTabRelative(1 }
    { "Insert", "SHIFT" },          -- PasteFrom(PrimarySelection }
    { "Insert", "CTRL" },           -- CopyTo(PrimarySelection  }
    { "K", "CTRL" },                -- ClearScrollback(ScrollbackOnly)
    { "K", "CTRL|SHIFT" },          -- ClearScrollback(ScrollbackOnly)
    { "L", "CTRL" },                -- ShowDebugOverlay
    { "L", "CTRL|SHIFT" },          -- ShowDebugOverlay
    { "M", "CTRL" },                -- Hide
    { "M", "CTRL|SHIFT" },          -- Hide
    { "c", "SUPER" },               -- CopyTo(Clipboard)
    { "f", "SUPER" },               -- Search(CurrentSelectionOrEmptyString)
    { "k", "SUPER" },               -- ClearScrollback(ScrollbackOnly)
    { "m", "SUPER" },               -- Hide
    { "PageUp", "SHIFT", },         -- ScrollByPage(NotNan(-1.0))
    { "PageDown", "SHIFT", },       -- ScrollByPage(NotNan(1.0))
    { "LeftArrow", "SHIFT|CTRL" },      -- ActivatePaneDirection(Left)
    { "LeftArrow", "SHIFT|ALT|CTRL" },  -- AdjustPaneSize(Left, 1)
    { "RightArrow", "SHIFT|CTRL" },     -- ActivatePaneDirection(Right)
    { "RightArrow", "SHIFT|ALT|CTRL" }, -- AdjustPaneSize(Right, 1)
    { "UpArrow", "SHIFT|CTRL" },        -- ActivatePaneDirection(Up)
    { "UpArrow", "SHIFT|ALT|CTRL" },    -- AdjustPaneSize(Up, 1)
    { "DownArrow", "SHIFT|CTRL" },      -- ActivatePaneDirection(Down)
    { "DownArrow", "SHIFT|ALT|CTRL" },  -- AdjustPaneSize(Down, 1)
})

for i = 1, 8 do
    table.insert(shortcuts, {
        key = tostring(i),
        mods = "ALT",
        action = wezterm.action.ActivateTab(i-1),
    })
end

table.insert(shortcuts, { key = "(", mods = "CTRL|SHIFT", action = wezterm.action.SplitHorizontal { domain = CurrentPaneDomain } })
table.insert(shortcuts, { key = ")", mods = "CTRL|SHIFT", action = wezterm.action.SplitVertical   { domain = CurrentPaneDomain } })
table.insert(shortcuts, { key = "D", mods = "CTRL|SHIFT", action = wezterm.action.ShowDebugOverlay })
table.insert(shortcuts, { key = 'D', mods = "CTRL",       action = wezterm.action.ShowDebugOverlay })
table.insert(shortcuts, { key = 'L', mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection 'Right' })
table.insert(shortcuts, { key = 'L', mods = "CTRL",       action = wezterm.action.ActivatePaneDirection 'Right' })
table.insert(shortcuts, { key = 'H', mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection 'Left' })
table.insert(shortcuts, { key = 'H', mods = "CTRL",       action = wezterm.action.ActivatePaneDirection 'Left' })
table.insert(shortcuts, { key = 'K', mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection 'Up' })
table.insert(shortcuts, { key = 'K', mods = "CTRL",       action = wezterm.action.ActivatePaneDirection 'Up' })
table.insert(shortcuts, { key = 'J', mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection 'Down' })
table.insert(shortcuts, { key = 'J', mods = "CTRL",       action = wezterm.action.ActivatePaneDirection 'Down' })

table.insert(shortcuts, {
    key = 'g',
    mods = "CTRL|SHIFT",
    action = wezterm.action.EmitEvent('change-colorscheme')
})

wezterm.on('change-colorscheme', function (window, pane)
    local curr_scheme = window:effective_config().color_scheme
    local overrides = window:get_config_overrides() or {}
    overrides.color_scheme = curr_scheme == 'BlackScheme' and 'WhiteScheme' or 'BlackScheme'
    window:set_config_overrides(overrides)
end)

-- Equivalent to POSIX basename(3)
-- Given "/foo/bar" returns "bar"
-- Given "c:\\foo\\bar" returns "bar"
function basename(s)
  return string.gsub(s, '(.*[/\\])(.*)', '%2')
end

function tab_title(tab)
    local title = tab.tab_title
    if title and #title > 0 then
        return title
    end
    title = basename(tab.active_pane.foreground_process_name)
    if title ~= "" then
        return title == 'vim.gtk3' and 'vim' or title
    end
    title = tab.active_pane.title
    if title ~= nil then
        return title
    end
    return ""
end

wezterm.on(
    "format-tab-title",
    function(tab, tabs, panes, config, hover, max_width)
        local curr_scheme = config.color_schemes[config.color_scheme]
        local edge_background = curr_scheme.background
        local background = curr_scheme.ansi[8]
        local foreground = curr_scheme.background

        if tab.is_active then
            background = curr_scheme.ansi[2]
            foreground = curr_scheme.background
        elseif hover then
            background = curr_scheme.foreground
            foreground = curr_scheme.background
        end

        local edge_foreground = background
        local title = tab_title(tab)

        return {
            { Background = { Color = edge_background } },
            { Foreground = { Color = edge_foreground } },
            { Text = ' ░▒▓' },
            { Background = { Color = background } },
            { Foreground = { Color = foreground } },
            { Text = ' ' .. title .. ' ' },
        }
    end
)

return {
    font = wezterm.font("Greybeard 18px", {weight="Medium", stretch="Normal", style="Normal"}),
    font_size = 13,
    -- font = wezterm.font('Hack'),
    -- font_size = 9.8,
    keys = shortcuts,
    hide_tab_bar_if_only_one_tab = true,

    window_padding = {
        left = 16, right = 16, top = 16, bottom = 16,
    },

    force_reverse_video_cursor = true,
    scrollback_lines = 3500,
    -- enable_scroll_bar = true,
    use_fancy_tab_bar = false,
    show_new_tab_button_in_tab_bar = false,
    default_cursor_style = 'BlinkingBlock',
    cursor_blink_rate = 1000,
    cursor_blink_ease_in = "Constant",
    cursor_blink_ease_out = "Constant",
    initial_cols = 100,
    initial_rows = 30,
    -- line_height = 1.0,
    -- custom_block_glyphs = false,

    color_schemes = my_colorschemes,
    color_scheme = curr_scheme,

    colors = {
        -- When the IME, a dead key or a leader key are being processed and are effectively
        -- holding input pending the result of input composition, change the cursor
        -- to this color to give a visual cue about the compose state.
        compose_cursor = 'red',
    }
}
