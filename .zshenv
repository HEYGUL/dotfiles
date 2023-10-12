alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias garcon="wakeonlan 00:11:32:8D:F7:7A"

# Carnet de bord aliases
alias cdb:daily='open -n -a "Firefox" --args "https://webinaire.numerique.gouv.fr/meeting/signin/1590/creator/1356/hash/e7493ca71a9489deadac04362d46f04e5195a2bc"'

alias cowfortune='fortune | cowsay -f $(ls /usr/local/Cellar/cowsay/3.04_1/share/cows/ | gshuf -n 1)'
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"
