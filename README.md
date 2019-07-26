# Pantheon ssh
Bash script that sshs into pantheon localdev docker instance with provided pantheon site alias.

## Instructions
Place this script on your machine, give it execute permissions, then add an alias to execute the script.

### Adding Alias
For instance go into ~/.zsh/aliases.zsh and add an alias line.

`alias whatyoutypeintoterminaltoexecutealias='~/directory/directory/filename.sh'`

### Reload Sourcefile To Load New Alias
Then reload source so your new alias is registered in your termial instance:
  `source ~/.zsh/aliases.zsh`

### Execute
Then if you type `whatyoutypeintoterminaltoexecutealias` into terminal, the script will be executed.

For usage instruction pass the '-help' parameter.
