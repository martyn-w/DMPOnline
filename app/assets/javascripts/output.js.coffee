jQuery ->
  $('#sortable>ol').sortable
    axis: 'y'
    cursor: 'move'
    containment: '#sortable'
    handle: '.handle'
    placeholder: 'ui-state-highlight'
    update: ->
      $('li.sort-position>input[type=number]').each (i, element) ->
        $(element).val(i + 1) 

  # Hide the position field.  Done here so degrades if JS not running
  $('head').append '<style>#sortable li.sort-position { display: none; }</style>'
  
  $('.add_fields').parent().on 'insertion-callback', ->
    $('li.sort-position>input[type=number]').each (i, element) -> 
      $(element).val(i + 1)
  
  # Repository
  $("input#doc_deposit").click ->
    has_deposited_media = $("input#has_deposited_media").val()
    confirmation = $("input#has_deposited_media").data("confirmation")
    has_deposited_media == 'false' || confirm confirmation
