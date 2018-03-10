command: "curl -4fNs https://api.ipify.org?format=text"
refreshFrequency: 20000

render: ->
  @template

update: (output, domEl) ->
  $(domEl).find('.public_ip .output')
    .toggleClass('error', !output)
    .text(output)
  $(domEl).find('.public_ip .icon')
    .toggleClass('error fa-pulse', !output)
    .toggleClass('success', !!output)

template: """
<div class="public_ip">
  <span class="icon fa fa-globe"></span>
  <span class="output"></span>
</div>
"""

style: """
  color: #d5c4a1
  font: 12px Hack
  right: 405px
  top: 6px

  .info
    color: #519aba
  .success
    color: #8dc149
  .error
    color: #cc3e44
  .warn
    color: #cbcb41

  .text-purple
    color: #6f42c1
"""
