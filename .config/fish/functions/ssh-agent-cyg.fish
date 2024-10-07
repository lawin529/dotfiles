function ssh-agent-cyg --wraps='eval ssh-agent' --description 'alias ssh-agent-cyg=eval ssh-agent'
  eval ssh-agent $argv
        
end
