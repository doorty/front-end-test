# namespaced object for Casey Quick
cq =
	
	homeClassName: "home"
	whitepaperClassName: "news"
	
	startAnimation: ->
		elAnim = $('#animation')
		imageClasses = ["experience", "expertise", "focus", "global-reach"]
		max = imageClasses.length
		index = 0
		
		animate = ->
			elAnim.attr('class', imageClasses[index])
			index++
			if (index > max) then index = 0
			setTimeout animate, 10000
			
		animate()
		
	homeClicked: ->
		document.body.className = cq.homeClassName

	whitepaperClicked: ->
		selectedWhitepaper = $(this).attr('id')
		bodyClasses = [cq.homeClassName, cq.whitepaperClassName, selectedWhitepaper]
		document.body.className = bodyClasses.join(" ")

	init: ->
		$('#home').bind('click', cq.homeClicked);
		$('#news-content').find('.whitepaper').bind('click', cq.whitepaperClicked);
		cq.startAnimation()
		
$(document).ready(cq.init);