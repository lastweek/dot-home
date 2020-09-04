# Ubuntu Related Hacks


## Terminal Profiles

References:

- https://unix.stackexchange.com/questions/448811/how-to-export-a-gnome-terminal-profile
- https://gist.github.com/reavon/0bbe99150810baa5623e5f601aa93afc

Save:

```
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf
```

Restore:

```
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
```
