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

			$.fancybox({
				modal: 	    true,
				content:    "<div class='confirmation'>
											<div class='inner'>
												<p>Are you sure?</p>
												
												<input id='decline' type='button' value='No' /> 
												<input id='accept' type='button' value='Yes' />
											</div>
										</div>",
				
				onComplete: () ->
					$( '#decline' ).click( () -> $.fancybox.close() )
					$( '#accept' ).click( () ->
						$.rails.handleRemote $(form)
						$.fancybox.close()
					)	
			})
		)
	)
	
)