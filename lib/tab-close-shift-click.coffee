$ = require('jquery');

module.exports =
  activate: ->
    $(".panes").on "click", ".tab", (e) ->
      if e.shiftKey
        tabIndex = $(".tab").index($(this))
        itemToDestroy = atom.workspace.getPaneItems()[tabIndex]
        clickedPane = atom.workspace.paneForItem(itemToDestroy)
        clickedPane.destroyItem(itemToDestroy)
