command: "date +\"%H:%M\""
refreshFrequency: 10000

render: (output) ->
  """
  <div class="time">
    <span class="icon fa fa-clock-o"></span>
    <span>#{output}</span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Hack
  right: 10px
  top: 6px
"""
