# .dotfiles

## Fresh computer setup:

1. Install [NodeJS & npm](https://nodejs.org/en/download/)
2. Install [Homebrew](https://brew.sh/)
3. Setup `git`:
```bash
# Config a git user
git config --global user.email "EMAIL"
git config --global user.name "NAME"

# Generate a new ssh key and copy it 
ssh-keygen -t rsa -b 4096 -C "EMAIL"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub

# Go to github.com -> Settings -> SSH and GPG Keys
# Click "New SSH Key" -> name, paste, save.
```

## How to install my **prime** `terminal` setup 💻 :

1. Install [iTerm2](https://www.iterm2.com/)
2. Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
3. Download and copy `.zshrc` from my [.dotfiles](https://github.com/txwkx/.dotfiles) repo
4. Install [FiraCode](https://github.com/tonsky/FiraCode) font
5. Set **Font** to *FiraCode* in `iTerm2 -> Preferences -> Profiles -> Text`
6. Install [zsh-autosuggestion](https://github.com/zsh-users/zsh-autosuggestions) plugin 
7. Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) plugin
8. Install [spaceship-promt](https://github.com/denysdovhan/spaceship-prompt)
9. Start hacking 👾