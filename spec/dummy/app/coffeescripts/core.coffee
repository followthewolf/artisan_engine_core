$(document).ready( () ->

	# Notification Dismiss links.
	$( '.notification a' ).live( 'click', (e) ->
		e.preventDefault()
		$(this).parents( '.notification' ).slideUp()
	)
	
	# Modal delete button confirmations.
	$( 'input[value="Delete"]' ).live( 'click', (e) ->
		$(this).parents( 'form:first' ).submit( (ev) ->
			ev.preventDefault()
			form = $(this)

			$.fn.colorbox({
				transition: 'none',
				html: "<div class='confirmation'><div class='inner'><p>Are you sure?</p><input id='decline' type='button' value='No' /><input id='accept' type='button' value='Yes' /></div></div>",
				onComplete: () -> 
					$('#cboxClose').hide()
					$('#decline').click( () -> $.colorbox.close() )
					$( '#accept' ).click( () ->
						$.rails.handleRemote $(form)
						$.colorbox.close()
					)
			})
		)
	)	
)