# dotfiles-chromebook

## Install

1. create ssh secret key:

```bash
ssh-keygen -t ed25519
```

2. register `~/.ssh/id_ed25519.pub` key to github.

3. then, clone this repository:

```bash
git clone git@github.com:tmatz/dotfiles-chromebook.git dotfiles
```

4. finally, setup environment:

```bash
~/dotfiles/setup
```

## Other Settings

#### Visual Studio Code

```json
{
  "window.titleBarStyle": "custom"
}
```

#### Font

* https://github.com/yuru7/udev-gothic




