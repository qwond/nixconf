{...}: {
  programs.git = {
    enable = true;
    userName = "qwond";
    userEmail = "dmitry.qwond@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;

      url."ssh://git@git.softteampro.uz:2222/".insteadOf = "https://git.softteampro.uz/";
    };
    aliases = {
      undo = "reset HEAD~1 --mixed";
      amend = "commit -a --amend";
      #      prv = "!gh pr view";
      #      prc = "!gh pr create";
      #      prs = "!gh pr status";
      #      prm = "!gh pr merge -d";
    };
    #    extraConfig = {
    #      color = {
    #        ui = "auto";
    #      };
    #      diff = {
    #        tool = "vimdiff";
    #        mnemonicprefix = true;
    #      };
    #      merge = {
    #        tool = "splice";
    #      };
    #      push = {
    #        default = "simple";
    #      };
    #      pull = {
    #        rebase = true;
    #      };
    #      core = {
    #        excludesfile = "~/.gitignore_global";
    #      };
    #      branch = {
    #        autosetupmerge = true;
    #      };
    #      rerere = {
    #        enabled = true;
    #      };
    #      include = {
    #        path = "~/.gitconfig.local";
    #      };
    #    };
  };
}
