alias start-docker-zsh="docker run \
-d \
-w /Users/$USER \
--name zsh \
--mount type=bind,source=/Users,target=/Users \
anorakj/zsh"
if [ ! "$(docker ps -q -f name=zsh)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=zsh)" ]; then
        # cleanup
        docker rm zsh
    fi
    # run your container
    start-docker-zsh
fi
alias docker-zsh="docker exec \
-it \
-w /Users/$USER \
zsh /bin/zsh"
docker-zsh