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

#### SmartGit

smartgit requires java-21 or newer.

* https://www.syntevo.com/smartgit/download/
* https://jdk.java.net/23/
* ~/bin/smartgit
```bash
#!/bin/bash
SMARTGIT_JAVA_HOME=~/jdk-23.0.1 ~/smartgit/bin/smartgit.sh >/dev/null 2>&1 &
```
