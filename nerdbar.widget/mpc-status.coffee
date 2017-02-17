command: "/usr/local/bin/mpc -h 87.224.193.7 status"
refreshFrequency: 5000

render: (_output) ->
  """
  <div class="np">
    <span class="icon"></span>
    <span class="text" ></span>
  </div>
  """

afterRender: (el) ->
  el.onclick = () => @run("/usr/local/bin/mpc -h 87.224.193.7 toggle")

update: (output, el) ->
  [current_song, status] = output.split("\n")
  $(".np span.text", el).text(current_song) if status
  $(".np span.icon", el).removeClass().addClass("icon fa #{@icon(status)}")

icon: (status) ->
  return if status.substring(0, 9) == "[playing]"
      "fa-play-circle-o"
  else if status.substring(0, 8) == "[paused]"
      "fa-pause-circle-o"
  else
      "fa-stop-circle-o"

style: """
  -webkit-font-smoothing: antialiased
  text-align: center
  color: #d5c4a1
  font: 12px Hack
  height: 16px
  left: 25%
  top: 6px
  width: 50%
"""
