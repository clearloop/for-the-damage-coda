while true; do
    read -p "Execution or Program Interaction? (e/p)" dir
    case $dir in
        [Ee]*) cd execution && mdbook serve; break;;
        [Pp]* ) cd execution && mdbook serve; break;;
        * ) echo "Please answer yes or no.";;
    esac
done
