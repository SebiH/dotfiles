# Usage: extract <file> — extracts archives / mounts disk images.
# Ported from ~/.dotfiles/functions/extract (credit: nparikh.org/notes/zshrc.txt).
function extract --description 'Extract archived files / mount disk images'
    if not test -f $argv[1]
        echo "'$argv[1]' is not a valid file"
        return 1
    end
    switch $argv[1]
        case '*.tar.bz2'; tar -jxvf $argv[1]
        case '*.tar.gz';  tar -zxvf $argv[1]
        case '*.bz2';     bunzip2 $argv[1]
        case '*.dmg';     hdiutil mount $argv[1]
        case '*.gz';      gunzip $argv[1]
        case '*.tar';     tar -xvf $argv[1]
        case '*.tbz2';    tar -jxvf $argv[1]
        case '*.tgz';     tar -zxvf $argv[1]
        case '*.zip' '*.ZIP'; unzip $argv[1]
        case '*.pax';     pax -r < $argv[1]
        case '*.pax.Z';   uncompress $argv[1] --stdout | pax -r
        case '*.Z';       uncompress $argv[1]
        case '*';         echo "'$argv[1]' cannot be extracted/mounted via extract"
    end
end
