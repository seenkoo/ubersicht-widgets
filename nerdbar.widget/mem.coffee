command: "ps -A -o %mem | awk '{s+=\$1} END {print s}'"
refreshFrequency: 5000

render: (output) ->
  """
  <div class="mem">
    <span class="icon fa fa-hdd-o"></span>
    <span>#{output}</span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Hack
  right: 200px
  top: 6px
"""
