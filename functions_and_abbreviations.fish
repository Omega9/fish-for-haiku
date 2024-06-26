### Functions

# Terminal Shortcuts
# https://itsfoss.com/linux-terminal-shortcuts/
function t-h --description 'Terminal Shortcuts'
    echo -n "Terminal Shortcuts
    ‣ Ctrl + A	        Move to the start of the line.
    ‣ Ctrl + E	        Move to the end of the line.
    ‣ Ctrl + U	        Delete from the cursor to the start of the line.
    ‣ Ctrl + K	        Delete from the cursor to the end of the line.
    ‣ Ctrl + W	        Delete the word before the cursor.
    ‣ Ctrl + L	        Clear the terminal screen.
    ‣ Ctrl + C	        Stop the current process/command.
    ‣ Ctrl + D	        Log out or exit the terminal.
    ‣ Ctrl + Z          Pause the current process (can be resumed).
    ‣ Ctrl + R          Search command history (backward search).
    ‣ Up Arrow          Show the previous command (from the command history).
    ‣ Down Arrow        Show the next command (from the command history).
    ‣ !!                Repeat the last command.
    ‣ !n                Repeat the nth command from history.
    ‣ Tab               Auto-complete commands, files, or directories.
    ‣ Tab twice         List all possible completions.
    ‣ Ctrl + Shift + C  Copy the selected text or command.
    ‣ Ctrl + Shift + V  Paste copied text or command.
    ‣ Ctrl + Shift + N  Open a new terminal window.
    ‣ Ctrl + Shift + T  Open a new tab in the terminal.
    ‣ Ctrl + Tab        Switch between terminal tabs.
    ‣ Ctrl + PageDown   Switch between terminal tabs.
    "
end

# Pkgman help
function p-h --description 'Pkgman functions'
    echo -n "Pkgman functions
    ‣ p-fs       Full-sync
    ‣ p-if       Info
    ‣ p-in       Install
    ‣ p-se       Search
    ‣ p-un       Uninstall
    ‣ p-up       Update
    ‣ p-ar       Add repo
    ‣ p-dr       Drop repo
    ‣ p-lr       List repos
    ‣ p-rr       Refresh repo(s)
    ‣ p-rd       Resolve dependecies
    "
end

# Pkgman
function p-fs --wraps='pkgman full-sync' --description 'Synchronizes the installed packages with the repositories (even by downgrading) (pkgman full-sync)'
    pkgman full-sync;
end

function p-if --wraps='pkgman info' --description 'Shows summary and description of the specified package (pkgman info)'
    pkgman info $argv;
end

function p-in --wraps='pkgman install' --description 'Installs one or more packages (pkgman install)'
    pkgman install $argv;
end

function p-se --wraps='pkgman search' --description 'Searches for packages matching <search-string> (pkgman search)'
    pkgman search $argv;
end

function p-un --wraps='pkgman uninstall' --description 'Uninstalls one or more packages (pkgman uninstall)'
    pkgman uninstall $argv;
end

function p-up --wraps='pkgman update' --description 'Updates the specified or all packages (pkgman update)'
    pkgman update $argv;
end

function p-ar --wraps='pkgman add-repo' --description 'Adds the repository with the given <repo-base-URL> (pkgman add-repo)'
    pkgman add-repo $argv;
end

function p-dr --wraps='pkgman drop-repo' --description 'Drops the repository with the given <repo-name> (pkgman drop-repo)'
    pkgman drop-repo $argv;
end

function p-lr --wraps='pkgman list-repos' --description 'Lists all repositories (pkgman list-repos)'
    pkgman list-repos;
end

function p-rr --wraps='pkgman drop-repo' --description ' Refreshes all or just the given repositories (pkgman refresh)'
    pkgman refresh $argv;
end

function p-rd --wraps='pkgman resolve-dependencies' --description ' Resolves all packages the given packages depend on (pkgman resolve-dependencies)'
    pkgman resolve-dependencies $argv;
end

# "command not found"
function fish_command_not_found
    __fish_default_command_not_found_handler $argv[1]
end

# Bash
function b --description "Exec command in bash. Useful when copy-pasting commands with incompatible syntax to fish "
    bash -c "$argv"
end

# Confirm before overwriting something
function rm --description 'rm safely'
    command rm -i $argv;
end

function mv --description 'mv safely'
    command mv -i $argv;
end

function cp --description 'cp safely'
    command cp -i $argv;
end

function mkcd --description "Create and cd to directory"
    mkdir $argv
    and cd $argv
end

## Copy full file path
function copypath --description "Copy full file path"
    readlink -e . | clipboard -i
    echo "copied to clipboard"
end

# ripgrep
function grep --description 'Color grep'
    command rg --color=auto $argv;
end

function du --description 'Count space'
    command du -h $argv;
end

function df --description 'alias df df -h'
    command df -h $argv;
end

# Micro
# function edit --wraps='micro' --description 'Edit file'
#     micro $argv;
# end

# Bat
function cat --wraps='bat' --description 'A cat(1) clone with wings'
    bat $argv;
end

# Backup file
function backup --argument filename --description 'Backup file'
    cp $filename $filename.bak
end

# Compress git repo
function gitprune --description 'Compress git repo'
    git gc --aggressive --prune=now
end

function !! --description "Run the last command"
    if test (count $argv) -ge 1
        set cmd $history[1]" $argv"
    else
        set cmd $history[1]
    end
    eval $cmd
end

function run --description "Make file executable, then run it"
    chmod +x "$argv"
    eval "./$argv"
end

function launch --description "Launch program"
    eval "$argv >/dev/null 2>&1 &" & disown
end

## Copypaste
function pbcopy --description "Copy data from STDIN to the clipboard"
	clipboard -c $argv
end

function pbpaste  --description "Paste data from the Clipboard"
    clipboard -p
end

# Generate password
function generate_password
    head /dev/urandom | tr -dc \[:graph:\] | head -c 30 && echo
end

## Untar
function untar --wraps='tar -zxvf ' --description 'Untar'
   tar -zxvf  $argv;
end

# NET
function myip --description 'What is my IP?'
    curl ifconfig.co
end

function whatismyip --description 'What is my IP?'
    curl ifconfig.co
end

function wget --description 'Download with Wget'
    command wget -c $argv;
end

function wgetb --description 'Batch download with Wget'
    command wget -c -i $argv;
end

function wgets --description 'Download website with Wget'
    command wget --mirror --convert-links --adjust-extension --page-requisites --no-parent $argv;
end

function ping --description 'Ping'
    command ping -c 5 $argv;
end

function www --wraps='python -m SimpleHTTPServer 8000' --description 'Simple web-server'
    python3 -m SimpleHTTPServer 8000;
end

function qrencode
    printf $argv | curl '-F-=<-' http://qrenco.de
end

function weather --description "Show weather"
    # resize -s $LINES 125
    curl wttr.in/$argv
end

function погода --description "Погода в Уфе"
    curl wttr.in/Ufa+Russia
end

function transfer --description "Upload file to transfer.sh"
    curl --progress-bar --upload-file $argv https://transfer.sh/(basename $argv)
end

function showgit --description "Show git origin"
    open (git remote get-url origin)
end

# FFmpeg
function ffc --description 'Convert anything with FFmpeg'
    ffmpeg -i $argv[1] -y $argv[1].$argv[2]
end

# ImageMagick
function imc --description 'Convert anything with ImageMagick'
    # magick $argv[1] $argv[1].$argv[2]
    convert $argv[1] $argv[1].$argv[2]
end

# The most needed function
function rickroll --description 'the terminal rickroll'
    curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash
end

### Abbreviations

# Yt-dlp extract
abbr yta-aac 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format aac'
abbr yta-best 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format best'
abbr yta-flac 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format flac'
abbr yta-m4a 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format m4a'
abbr yta-mp3 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format mp3'
abbr yta-opus 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format opus'
abbr yta-vorbis 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format vorbis'
abbr yta-wav 'yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format wav'
abbr ytv-best 'yt-dlp --cookies-from-browser vivaldi -f bestvideo+bestaudio'

# Torified Yt-dlp extract
abbr tyta-aac 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format aac'
abbr tyta-best 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format best'
abbr tyta-flac 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format flac'
abbr tyta-m4a 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format m4a'
abbr tyta-mp3 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format mp3'
abbr tyta-opus 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format opus'
abbr tyta-vorbis 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format vorbis'
abbr tyta-wav 'torify yt-dlp --cookies-from-browser vivaldi --extract-audio --audio-format wav'
abbr tytv-best 'torify yt-dlp --cookies-from-browser vivaldi -f bestvideo+bestaudio'

# Yt-dlp
abbr ydl 'yt-dlp --cookies-from-browser vivaldi'
abbr ydlb 'yt-dlp --cookies-from-browser vivaldi -a'
abbr tydl 'torify yt-dlp --cookies-from-browser vivaldi'
abbr tydlb 'torify yt-dlp --cookies-from-browser vivaldi -a'

# Gallery-dl
abbr gdl 'gallery-dl --cookies-from-browser vivaldi'
abbr gdlb 'gallery-dl --cookies-from-browser vivaldi -i'
abbr tgdl 'torify gallery-dl --cookies-from-browser vivaldi'
abbr tgdlb 'torify gallery-dl --cookies-from-browser vivaldi -i'
