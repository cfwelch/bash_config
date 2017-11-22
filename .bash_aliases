# sorted disk usage of folders and files
alias dus='du -hs * | sort -h'
# stage removal of deleted files for git
alias rmgit='git ls-files --deleted -z | xargs -0 git rm'
# list who is using which GPUs
alias wg='nvidia-smi --query-compute-apps=gpu_uuid,used_gpu_memory,pid --format=csv,noheader | xargs -I {} sh -c "echo -n {} --\ ;echo -n {} | cut -d\  -f4 | xargs ps -u -p | tail -n1 | cut -d\  -f1"'
# show who is running a process with given PID
alias wr='function wr01(){ ps -u -p $1 | tail -n1 | cut -d" " -f1; unset -f wr01; }; wr01'
# auto commit changes to git
alias gg='git add .;hostname | xargs -I {} sh -c "git commit -m \"Automatic repository sync @ {}\"";git push'
# sometimes the left hand is a little faster...
alias sl='ls'
# find file names in subdirectories and show paths as a tree
alias efind='tree --prune -P $1'
# find lines in files files matching a given pattern of a given file type in the current directory or any subdirectories
alias gfind='function gfind01(){ grep -r -n --include=\*$2 $1; unset -f gfind01; }; gfind01'
