module TooltipHelper
	def tooltip_for(id, tip)
	
	  js = <<-EOJS
	    Event.observe($('#{id}'), 'mouseover', function () {	
      	$('tooltip').innerHTML= "#{tip}"
      	$('tooltip').show()
      	return false
      });

      Event.observe($('#{id}'), 'mouseout',  function (){
      	$('tooltip').hide()
      });
      
      document.observe('mousemove', function (e) {
        if ($('tooltip').visible())
      	  {
            $('tooltip').setStyle('left: ' + e.pointerX() + 'px;');
            $('tooltip').setStyle('top: ' + (e.pointerY() - 30) + 'px;');
      	  }
      });
    EOJS
    content_for :javascript do
      javascript_tag js
    end
    
    content_for :head do 
      stylesheet_link_tag 'tooltip'
    end
    
    "<div id='tooltip' style='display: none'></div>"
  end
end