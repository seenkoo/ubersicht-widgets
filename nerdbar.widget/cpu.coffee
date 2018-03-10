command: "ps -A -o %cpu |
awk -v NUMBER_OF_CORES=$(/usr/local/bin/gnproc) \
'{s+=\$1} END {printf(\"%.2f\", s/NUMBER_OF_CORES)}'"
refreshFrequency: 5000

render: (output) ->
  """
  <div class="cpu">
    <span class="icon fa fa-server"></span>
    <span>#{output}</span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Hack
  right: 265px
  top: 6px
"""
