/*
	Получение отзывов
*/
function get_website_comments() {
	var form_data = new FormData;
	form_data.append("phpaction", "1");
	form_data.append("token", $("#token").val());
	
		/*
			Дополнительные данные
		*/
	form_data.append("get_website_comments", "1");
	
	$.ajax({
		type: "POST",
		url: "../configs/ajax/actions/main.php",
		processData: false,
		contentType: false,
		data: form_data,
		dataType: "json",
		success: function(result) {
			$("#comments").html(result.html);
		}
	});
}

/*
	Загрузка товаров
*/
function load_product() {
	var form_data = new FormData;
	form_data.append("phpaction", "1");
	form_data.append("token", $("#token").val());
	
		/*
			Дополнительные данные
		*/
	form_data.append("load_product", "1");
	
	$.ajax({
		type: "POST",
		url: "../configs/ajax/actions/main.php",
		processData: false,
		contentType: false,
		data: form_data,
		dataType: "json",
		success: function(result) {
			$("#product").html(result.html);
		}
	});
}