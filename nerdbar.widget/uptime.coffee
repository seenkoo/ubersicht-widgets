# command: 'expr $(/usr/local/bin/gdate +%s) - $(sysctl -n kern.boottime | cut -c9-18) | awk \'{printf "%02d:%02d:%02d", int($1/3600), int(($1%3600)/60), int($1%60)}\''
command: 'expr $(/usr/local/bin/gdate +%s) - $(sysctl -n kern.boottime | cut -c9-18);'
refreshFrequency: 1000

render: (output) ->
  """
  <div class="cpu">
    <span class="icon fa fa-spinner"></span>
    <span>#{output}</span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Hack
  right: 335px
  top: 6px
"""
