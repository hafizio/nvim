if janus#is_plugin_enabled("neomake")
  autocmd! BufWritePost * Neomake
endif
