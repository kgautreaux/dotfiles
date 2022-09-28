tmux has-session -t dev
if [ $? != 0 ]
then
  tmux new-session -s dev -n vim -d
  tmux send-keys -t dev 'vim .' C-m
  tmux split-window -h -p 20 -t dev
  tmux new-window -n cli -t dev
  tmux select-pane -t dev:0.0
fi
tmux attach -t dev
