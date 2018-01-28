
expand = (text)->
  text
    .replace /&/g, '&amp;'
    .replace /</g, '&lt;'
    .replace />/g, '&gt;'
    .replace /\*(.+?)\*/g, '<i>$1</i>'

emit = ($item, item) ->
  debugger
  if m = item.text.match /(\d{5,15})/
    tracks = m[1] 
  console.log 'tracks',tracks

  $item.append """
    <p style="background-color:#eee;padding:15px;">
      #{expand item.text}
      <iframe
        width="100%"
        height="166"
        scrolling="no"
        frameborder="no"
        allow="autoplay"
        src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/#{tracks}&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true">
    </iframe>    
    </p>
  """

bind = ($item, item) ->
  $item.dblclick -> wiki.textEditor $item, item

window.plugins.soundcloud = {emit, bind} if window?
module.exports = {expand} if module?

