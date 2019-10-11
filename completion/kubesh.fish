# completion for kubesh
# (put in ~/.config/fish/completions)
complete -f -c kubesh -a '(kubectl get pods -o=jsonpath=\'{range .items[*]}{.metadata.name}{"\n"}{end}\')'
