function rgu -d "Remove untracked git files"
    set -l output (git ls-files --exclude-standard --others)
    for line in $output
        if command -q trash-put
            trash-put $line && echo "Removed $line"
        else
            rm $line && echo "Removed $line"
        end
    end
end