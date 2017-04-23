$(window).load(function() {
	var options =

	{

		thumbBox: '.thumbBox',

		spinner: '.spinner',

		imgSrc: ''

	}

	var cropper = $('.imageBox').cropbox(options);

	var img="";

	$('#upload-file').on('change', function(){

		var reader = new FileReader();

		reader.onload = function(e) {

			options.imgSrc = e.target.result;

			cropper = $('.imageBox').cropbox(options);

			getImg();

		}

		reader.readAsDataURL(this.files[0]);

		this.files = [];

//		getImg();

	})

	$('#btnCrop').on('click', function(){

	swal("操作成功!", "图片上传喽!", "success");
	$("#IconMessage").html("头像选择成功,再次点击更换头像");
	var s=$("#haha1").attr("src");
	$("#hideInput").val(s);
	cancel_shield();
	})
	

	function getImg(){

		img = cropper.getDataURL();

		$('.cropped').html('');

		$('.cropped').append('<img src="'+img+'" align="absmiddle"  style="width:180px;margin-top:4px;border-radius:180px;box-shadow:0px 0px 12px #7E7E7E;"><p>180px*180px</p>');

		$('.cropped').append('<img src="'+img+'" align="absmiddle"  id="haha1" style="width:128px;margin-top:4px;border-radius:128px;box-shadow:0px 0px 12px #7E7E7E;"><p>128px*128px</p>');

		$('.cropped').append('<img src="'+img+'" align="absmiddle" style="width:64px;margin-top:4px;border-radius:64px;box-shadow:0px 0px 12px #7E7E7E;" ><p>64px*64px</p>');

		}

		

	$(".imageBox").on("mouseup",function(){

 		getImg();

  		});


	$('#btnZoomIn').on('click', function(){

		cropper.zoomIn();

	})

	$('#btnZoomOut').on('click', function(){

		cropper.zoomOut();

	})

});