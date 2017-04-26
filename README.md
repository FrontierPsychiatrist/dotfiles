# My public dotfiles

These are my dotfiles to use on my UNIX machines.

They can be managed with [GNU stow](https://www.gnu.org/software/stow/). The best way
to do that is to clone this repository into `~/.dotfiles`.

```sh
git clone https://github.com/FrontierPsychiatrist/dotfiles ~/.dotfiles
cd ~/.dotfiles
stow emacs
```

This will create symlinks for emacs config files in the home directory.

# Notes
## Emacs systemd daemon
After running `stow systemd` the service has to be enabled with
```sh
systemctl enable --user emacs.service
```

# Links
Idea from a [blog post by Brandon Invergo](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)

