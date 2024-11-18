{

#    environment.pathsToLink = ["/share/zsh"];

    programs = {
        less.enable = true;

        zsh = {
            enable = true;
            autosuggestion.enable = true;
            syntaxHighlighting = {
                enable = true;
                patterns = {"rf -rf *" = "fg=black,bg=red";};
                styles = {"alias"="fg=magenta";};
                highlighters = ["main" "brackets" "pattern"];
            };
        };
    };
}
