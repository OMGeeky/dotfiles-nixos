{...}:{

#    environment.pathsToLink = ["/share/zsh"];

    programs = {
        less.enable = true;

        zsh = {
            enable = true;
            autosuggestions.enable = true;
            syntaxHighlighting = {
                enable = true;
                patterns = {"rf -rf *" = "fg=black,bg=red";};
                styles = {"alias"="fg=magenta";};
                highlighters = ["main" "brackets" "pattern"];
            };

            # use direnv to have specific versions of stuff only for some 
            # directories
            interactiveShellInit =''eval "$(direnv hook $SHELL)"''; 
        };
    };
}
