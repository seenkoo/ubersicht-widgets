command: "osascript -e 'tell application \"System Events\" to get name of first application process whose frontmost is true'"
refreshFrequency: 350

render: (output) ->
  """
  <div class="foc">
    <span class="icon fa fa-bars"></span>
    <span>#{@truncate(output, 80)}</span>
  </div>
  """

truncate: (str, len) ->
  if str.length > len then str.substr(0, len - 3) + "..." else str

style: """
  -webkit-font-smoothing: antialiased
  text-align: center
  color: #d5c4a1
  font: 12px Hack
  height: 16px
  left: 10px
  top: 6px
"""
