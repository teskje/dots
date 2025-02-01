function dots --wraps='git --git-dir=$HOME/.dots/ --work-tree=$HOME' --description 'alias dots=git --git-dir=$HOME/.dots/ --work-tree=$HOME'
  git --git-dir=$HOME/.dots/ --work-tree=$HOME $argv
end
