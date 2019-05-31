# dotfiles

Using this technique: [Hacker News](https://news.ycombinator.com/item?id=11071754), [Atlassian](https://www.atlassian.com/git/tutorials/dotfiles).

```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
config remote set-url origin git@github.com:YNedderhoff/dotfiles.git
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

One branch per device. `master` is no device.
