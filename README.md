# Dot files

I use *org-mode* to keep organize most of my dotfiles.

For example:

```
#+BEGIN_SRC sh :tangle ~/.zshrc
 alias l="ls -1AXF --group-directories-first"
 alias ll="ls -XAF --group-directories-first"
#+END_SRC
```

You can save this snipp code in a file with extension .org and
open it in Emacs.

Now you tangle the file by pressing C-c C-v t.
This will create a file with the name .zshrc in the home directory (~).

