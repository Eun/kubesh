_kubesh()
{
	  local curr_arg;
	  curr_arg=${COMP_WORDS[COMP_CWORD]}
	  COMPREPLY=( $(compgen -W "- $(kubectl get pods -o=jsonpath='{range .items[*].metadata.name}{@}{"\n"}{end}')" -- $curr_arg ) );
}

complete -F _kubesh kubesh
