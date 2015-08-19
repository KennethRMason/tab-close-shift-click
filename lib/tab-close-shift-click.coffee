$ = require('jquery');

module.exports =
  activate: ->
    $(".panes").on "click", ".tab", ->
      if e.shift-clicking
        tabIndex = $(".tab").index($(this))
        itemToDestroy = atom.workspace.getPaneItems()[tabIndex]
        clickedPane = atom.workspace.paneForItem(itemToDestroy)
        clickedPane.destroyItem(itemToDestroy)
