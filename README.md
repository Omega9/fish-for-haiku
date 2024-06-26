# My fish config for Haiku

```
                  ___
   ___======____=---=)
 /T            \_--===)
 [ \ (0)   \~    \_-==)
  \      / )J~~    \-=)
   \\___/  )JJ~~~   \)
    \_____/JJ~~~~~    \
    / \  , \J~~~~~     \
   (-\)\=|\\\~~~~       L__
   (\\)  (\\\)_           \==__
    \V    \\\) ===_____   \\\\\\
           \V)     \_) \\\\JJ\J\)
                       /J\JT\JJJJ)
                       (JJJ| \UUU)
                        (UU)
```
This is a lighter version of [my daily driver](https://github.com/Omega9/fish) for [Haiku](https://www.haiku-os.org).

This configuration has [fisher](https://github.com/jorgebucaran/fisher) installed and several add-ons that can be updated with it:
- [bobthefish](https://github.com/oh-my-fish/theme-bobthefish)
- [fzf](https://github.com/jethrokuan/fzf)
- [Foreign Environment](https://github.com/oh-my-fish/plugin-foreign-env)
- [replay.fish](https://github.com/jorgebucaran/replay.fish)
- [to-fish](https://github.com/joehillen/to-fish)
- [fish-abbreviation-tips](https://github.com/gazorby/fish-abbreviation-tips)
- [done](https://github.com/franciscolourenco/done)
- [extract](https://github.com/oh-my-fish/plugin-extract)
- [fish-bd](https://github.com/0rax/fish-bd)
- [fish-async-prompt](https://github.com/acomagu/fish-async-prompt)
- [Sponge](https://github.com/meaningful-ooo/sponge)
- [up](https://github.com/shannonmoeller/up)

`/functions` contains fisher and all functions installed with it.

All functions and abbreviations I added are contained in `functions_and_abbreviations.fish`
Some part I carried over from my zsh configuration. Some of them were added by me, others may have come across to you before on the Github.

Quick reference:
- `t-h` for terminal shortcuts
- `p-h` for `pkgman` commands

## Instructions
0. Pull this repo to `/boot/home/config/settings/fish/`
1. Modify `config.fish` and `functions_and_abbreviations.fish` to your likings
2. Add anything to your PATH with `fish_add_path`
3. `fisher update` to update functions

## Dependencies and recommendations
- [Bat](https://github.com/sharkdp/bat) for `cat`
- [ripgrep](https://github.com/BurntSushi/ripgrep) for `grep`
- [yt-dlp](https://github.com/yt-dlp/yt-dlp)
- [Gallery-dl](https://github.com/mikf/gallery-dl)
- Tor for torifying Youtube-dl and Gallery-dl
- [FFmpeg](https://ffmpeg.org) for `ffc`
- [ImageMagick](https://imagemagick.org) for `imc`

* * *
## Other
- [fish logo](https://github.com/fish-shell/fish-shell/issues/114)
- [fish logo](https://github.com/laughedelic/fish_logo) for `fish_greeting`
