on run argv
    tell application "iTerm"
        tell current window
            -- first tab
            create tab with default profile
            tell current session
                write text "" & item 1 of argv & ""
                split horizontally with default profile
            end tell

            -- second tab
            tell last session of last tab
                write text "" & item 2 of argv & ""
            end tell

        end tell
    end tell
end run
