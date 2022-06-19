#!/usr/bin/env bash -eu

if ! kubectl -v <the_command> &> /dev/null
then
    echo "kubectl could not be found. \n Please install Docker Dekstop and enable Kubernetes."
    echo "To install Docker Desktop go here https://www.docker.com/products/docker-desktop/"
    exit 1
fi

commandToExecture="$1"
case $commandToExecture in
        "help")
                cat << EOF
usage: skc <command>
c, context: get contexts
c, context <>: get contexts
EOF
                ;;
        "HowLinux")
                echo "That's right!"
                ;;
esac

context() {
    local var='func1 local'
    func2
}
