This is my standard set of configuration files. It should be
compatible with bash and zsh. It also provides a standard setup for
vi, vim, and nvim. Finally there are a few useful programs.

Shell independent setup:
-----------------------

Both bash and zsh can use `.profile` to set up login shells. If zsh
finds a `.zprofile`, it will load that instead of `.profile`.  If bash
finds a `.bash_profile`, it will load that instead of `.profile`.  We
will put our common setup in `.profile` and create a `.zprofile` and
`.bash_profile` that source `.profile` in order to have that code in
one place.

- `.profile`
- `.zprofile`
- `.bash_profile`

Non-login startup files `.bashrc` and `.zshrc` can also share a lot of functionality.
These files will source a `.common_rc` file for reuse. They can provide additional
functionality unique to each shell as needed.

- `.common_rc`
- `.bashrc`
- `.zshrc`

In order to separate concerns we provide separate files for the definition of
environment variables, aliases, functions, and path settings. Once again we try
to provide common implementations for reuse in common files as well as shell-specific
functionality.

- `.common_env`
- `.common_aliases`
- `.common_functions`
- `.common_path`
- `.bash_env`
- `.bash_aliases`
- `.bash_functions`
- `.bash_path`
- `.zsh_env`
- `.zsh_aliases`
- `.zsh_functions`
- `.zsh_path`

Vi, Vim, and Neovim Configs:
---------------------------

For now we'll keep the old `.exrc` and `.vimrc` here. But a new repo
for this setup will be created.

Useful Programs:
---------------

The `bin` folder creates some simple useful programs for assorted
things. This should grow over time.


LEGACY
------

There used to be a mechanism to allow for machine specific configuration as
needed. This functionality needs to be added back more rationally.

- `.bashrc-airguitar`
- `.bashrc-prometheus`

When and if pyenv is set up again this can be reenabled.

- `.bash_pyenv`

Subcommand completion for various programs such as git should be reenabled.

- `git-completion.bash`
