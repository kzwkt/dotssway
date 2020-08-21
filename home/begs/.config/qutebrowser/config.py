# Autosave session when qutebrowser is being closed
c.auto_save.session = True
# Recolor all pages
c.colors.webpage.darkmode.enabled = True
# Smart recolor images
#c.colors.webpage.darkmode.policy.images = "smart"
# Source nord theme config file (see https://github.com/Linuus/nord-qutebrowser)
config.source('nord-qutebrowser.py')
# qute-pass bindings
config.bind('<z><l>', 'spawn --userscript qute-pass -d "wofi -S dmenu"')
config.bind('<z><u><l>', 'spawn --userscript qute-pass --username-only -d "wofi -S dmenu"')
config.bind('<z><p><l>', 'spawn --userscript qute-pass --password-only -d "wofi -S dmenu"')
config.bind('<z><o><l>', 'spawn --userscript qute-pass --otp-only -d "wofi -S dmenu"')
