command: "osascript -e 'tell application \"System Events\" to get name of first application process whose frontmost is true'"
refreshFrequency: 1500
desktopMode: '…'
windowMode: '…'

render: (output) ->
  @run '/usr/local/bin/chunkc tiling::query --desktop mode', (err, out) =>
    @desktopMode = out
  @run '/usr/local/bin/chunkc tiling::query --window float', (err, out) =>
    @windowMode = if out == '1' then 'floating' else 'tiled'
  """
  <div class="foc">
    <span class="fa fa-window-maximize">
      &nbsp;#{@truncate(output, 30)} : #{@windowMode}, #{@desktopMode}
    </span>
  </div>
  """

truncate: (str, len = 79) ->
  if str.length > len then str.substr(0, len) + "…" else str

style: """
  -webkit-font-smoothing: antialiased
  color: #d5c4a1
  font-size: 12px
  margin-top: 6px
  margin-left: 10px
"""
