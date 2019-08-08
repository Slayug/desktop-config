function start_tmux                                                                                                                                                                           
     if type tmux > /dev/null                                                                                                                                                                  
         #if not inside a tmux session, and if no session is started, start a new session                                                                                                      
         if test -z "$TMUX" ; and test -z $TERMINAL_CONTEXT                                                                                                                                    
             tmux -2 attach; or tmux -2 new-session                                                                                                                                            
         end                                                                                                                                                                                   
     end                                                                                                                                                                                       
 end                                                                                                                                                                                           
                                                                                                                                                                                               
 # npm                                                                                                                                                                                         
 set NPM_PACKAGES "$HOME/.npm-packages"                                                                                                                                                        
 set PATH $NPM_PACKAGES/bin $PATH                                                                                                                                                              
                                                                                                                                                                                               
 # Unset manpath so we can inherit from /etc/manpath via the `manpath` command                                                                                                                 
 set -e MANPATH                                                                                                                                                                                
 set MANPATH $NPM_PACKAGES/share/man $MANPATH                                                                                                                                                  
                                                                                                                                                                                               
 alias kub="kubectl"                                                                                                                                                                           
                                                                                                                                                                                               
 start_tmux                                                                                                                                                                                    
                                                                                                                                                                                               
 # The next line updates PATH for the Google Cloud SDK.                                                                                                                                        
 if [ -f '/home/bug/Documents/soft/google-cloud-sdk/path.fish.inc' ]; . '/home/bug/Documents/soft/google-cloud-sdk/path.fish.inc'; end                                                         
                                                                                                                                                                                               
 . ~/.config/fish/functions/notif.fish
