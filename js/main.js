	jQuery(document).on('submit','#formlg', function (event) {
		
		event.preventDefault();

		jQuery.ajax({
			url: 'login.php',
			type: 'POST',
			dataType: 'json',
			data: $(this).serialize(),
			beforeSend: function(){
				$('.botonlg').val('Validando...');	
			},
			success:  function(respuesta){
				console.log(respuesta);
			if(!respuesta.error){
				console.log("Ingreso a la Redireccion");
				location.href='index.php';
	
			}else{
				$('.error').slideDown('slow');
				setTimeout(function(){
					$('.error').slideUp('slow');
				},3000);
				$('.botonlg').val('Iniciar Sesion');	
			}	
			},
			error:function(err){
			alert(err);
			}
		})		
		.fail(function(resp){
			console.log(resp.responseText);
		})
		.always(function(){
			console.log("complete");
		});

	});

$(window, document, undefined).ready(function() {

  $('input').blur(function() {
    var $this = $(this);
    if ($this.val())
      $this.addClass('used');
    else
      $this.removeClass('used');
  });

  var $ripples = $('.ripples');

  $ripples.on('click.Ripples', function(e) {

    var $this = $(this);
    var $offset = $this.parent().offset();
    var $circle = $this.find('.ripplesCircle');

    var x = e.pageX - $offset.left;
    var y = e.pageY - $offset.top;

    $circle.css({
      top: y + 'px',
      left: x + 'px'
    });

    $this.addClass('is-active');

  });

  $ripples.on('animationend webkitAnimationEnd mozAnimationEnd oanimationend MSAnimationEnd', function(e) {
  	$(this).removeClass('is-active');
  });

});
