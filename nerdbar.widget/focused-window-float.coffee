command: "/usr/local/bin/kwmc query window focused float"
refreshFrequency: 350

render: (output) ->
  """
  <div class="foc">
     #{@parse(output)}
  </div>
  """

parse: (str) ->
  if str == 'true\n' then '<span class="icon fa fa-clone"> Floating</span>' else ''

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font: 12px Hack
  height: 16px
  right: 430px
  top: 6px
"""
