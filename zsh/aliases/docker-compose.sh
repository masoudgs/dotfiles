# Docker Compose Aliases (dcp pattern)
# Based on docker-compose man page commands

# Core commands
alias dcp='docker compose up'                    # up (default action)
alias dcpd='docker compose up -d'               # up detached
alias dcdown='docker compose down'              # down
alias dcstop='docker compose stop'              # stop
alias dcstart='docker compose start'            # start
alias dcrestart='docker compose restart'        # restart
alias dcpause='docker compose pause'            # pause
alias dcunpause='docker compose unpause'        # unpause

# Build commands
alias dcbuild='docker compose build'            # build
alias dcpull='docker compose pull'              # pull
alias dcpush='docker compose push'              # push

# Service management
alias dcps='docker compose ps'                  # ps (list containers)
alias dctop='docker compose top'                # top (display running processes)
alias dcstats='docker compose stats'            # stats
alias dcport='docker compose port'              # port

# Logs and monitoring
alias dclogs='docker compose logs'              # logs
alias dclogsf='docker compose logs -f'          # logs follow
alias dclogst='docker compose logs --tail'      # logs tail
alias dcevents='docker compose events'          # events

# Execution and interaction
alias dcexec='docker compose exec'              # exec
alias dcrun='docker compose run'                # run
alias dcrm='docker compose rm'                  # rm (remove stopped containers)

# Configuration and validation
alias dcconfig='docker compose config'          # config (validate and view)
alias dcversion='docker compose version'        # version

# Volume and network management
alias dcvolume='docker compose volume'          # volume subcommands (if available)
alias dcnetwork='docker compose network'        # network subcommands (if available)

# Advanced operations
alias dccreate='docker compose create'          # create
alias dckill='docker compose kill'              # kill
alias dcscale='docker compose scale'            # scale (deprecated but still available)
alias dccp='docker compose cp'                  # cp (copy files)

# Utility aliases for common combinations
alias dcupb='docker compose up --build'         # up with build
alias dcupd='docker compose up -d'              # up detached
alias dcdownv='docker compose down -v'          # down with volumes
alias dcdownrmi='docker compose down --rmi all' # down and remove images
alias dcrma='docker compose rm -f'              # force remove all stopped containers
alias dcpulla='docker compose pull --ignore-pull-failures' # pull all, ignore failures

# Development workflow aliases
alias dcdev='docker compose -f docker-compose.yml -f docker-compose.dev.yml' # development override
alias dcprod='docker compose -f docker-compose.yml -f docker-compose.prod.yml' # production override
alias dctest='docker compose -f docker-compose.test.yml'    # test configuration

# Quick shortcuts for common tasks
alias dcr='docker compose down && docker compose up'        # restart (down then up)
alias dcrb='docker compose down && docker compose up --build' # rebuild and restart
alias dcclean='docker compose down -v --rmi all --remove-orphans' # complete cleanup
