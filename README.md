mddubs / dotfiles
=================
Matt Williamson's configuration files.

My config files have been created with this in mind...

* Start from scratch, learn the native functionality first.
* Never override native keybindings (my VIM mappings are all prefixed with the default `\` leader).
* Only add what I need and actually use.  Use as few plugins or customizations as necessary.

# Learning VIM
While learning VIM, I found there was an important factor that was very difficult to piece together online... **HOW** people use these powerful tools and countless features.  For example, when I started I was overwhelmed with *how to best use* buffers, windows and tabs.  Although there's a ton of information on all of these subjects, it was frustrating not finding a single blog post or video of someone anticipating exactly what I wanted to work on, how I wanted to work on it, and then explaining that to my feeble newbie brain.  And I knew why, just as well then as I do now, but I was convinced I could find the shortcut like I do with the rest of my magnificient time saving internet searches.  And I struggled with that for a while, so if you're reading this let me save you some time, you can't.  You need to start from nothing, learn the basics, then start customizing your own vimrc from scratch.  Don't load someone else's, use theirs as a reference and bring lines over one-by-one as you learn what they do.

# Installation
Clone to home directory...
```
git clone git@github.com:mddubs/dotfiles.git ~/dotfiles
```

Then symlink the files you want to use...
```
ln -s ~/dotfiles/vimrc ~/.vimrc
```
