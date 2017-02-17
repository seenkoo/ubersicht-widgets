command: "date +\"%a %d %b\""
refreshFrequency: 10000

render: (output) ->
  """
  <div class="cal">
    <span class="icon fa fa-calendar"></span>
    <span>#{output}</span>
  </div>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Hack
  right: 75px
  top: 6px
"""
