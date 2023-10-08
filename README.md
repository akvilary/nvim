# About
It is one of the best nvim configs in web because:
- it is prepared for four languages:
  - python
  - golang
  - javascript
  - typescript
- it has distributed code structure
- you could apply it for nvim (whole repo) and for vim (configs in 'settings' folder)

# How to use
## For Nvim
1. Install llvm to let nvim to compile tree-sitter configurations of languages:
  - For example: https://formulae.brew.sh/formula/llvm
2. Set following enviroment variables:
  - Host to publish markdown in realtime editing
      - MARKDOWN_SERVER_HOST. Usually it is localhost. For example: "127.0.0.1".
      - MARKDOWN_SERVER_PORT. For example: 7576.
  - Host to publish debug event.
      - NVIM_DEBUG_HOST. Usually it is your IP address (if you debug in docker container) or localhost. For example: "125.125.126.01"
      - NVIM_DEBUG_PORT. For example: 7337.

  - NVIM_PYTHON. For example: "/usr/bin/python3.11"
  - REPOS_DIR. For example: "/home/the_user/repos/"
  - REPOS_DIR_REL. For example: "/repos/"

3. Put repo content to ~/.config/nvim/

# Structure
- lua/modules - contains all configs for installed plugins in lua language
- settings - containts vim configs in vimscript language:
  - keymaps - key bindings
  - plugins - list of plugins to install
  - sets - common vim settings
