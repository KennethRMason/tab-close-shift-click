$ = require('jquery');

module.exports =
  activate: ->
    $(".pane").on "dblclick", ".tab", ->
      activePane = atom.workspace.getActivePane()
      index = $(".tab").index($(this))
      dblClickedItem = activePane.itemAtIndex(index)
      activePane.destroyItem(dblClickedItem)
