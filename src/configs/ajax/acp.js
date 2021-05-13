/*
	Изменение наименование проекта
*/
function edit_project() {
	var form_data = new FormData;
	form_data.append("phpaction", "1");
	form_data.append("token", $("#token").val());
	
		/*
			Дополнительные данные
		*/
	form_data.append("edit_project", "1");
	form_data.append("project", $("#project").val());
	
	$.ajax({
		type: "POST",
		url: "../configs/ajax/actions/acp.php",
		processData: false,
		contentType: false,
		data: form_data,
		dataType: "json",
		success: function(result) {
			$("#result_edit_project").html(result.html);
		}
	});
}

/*
	Загрузка списка шаблонов
*/
function load_templates() {
	var form_data = new FormData;
	form_data.append("phpaction", "1");
	form_data.append("token", $("#token").val());
	
		/*
			Дополнительные данные
		*/
	form_data.append("load_templates", "1");
	
	$.ajax({
		type: "POST",
		url: "../configs/ajax/actions/acp.php",
		processData: false,
		contentType: false,
		data: form_data,
		dataType: "json",
		success: function(result) {
			$("#template").html(result.html);
		}
	});
}

/*
	Изменение шаблона
*/
function edit_template() {
	var form_data = new FormData;
	form_data.append("phpaction", "1");
	form_data.append("token", $("#token").val());
	
		/*
			Дополнительные данные
		*/
	form_data.append("edit_template", "1");
	form_data.append("template", $("#template").val());
	
	$.ajax({
		type: "POST",
		url: "../configs/ajax/actions/acp.php",
		processData: false,
		contentType: false,
		data: form_data,
		dataType: "json",
		success: function(result) {
			$("#result_edit_template").html(result.html);
		}
	});
}

/*
	Изменение почтового адреса
*/
function edit_email() {
	var form_data = new FormData;
	form_data.append("phpaction", "1");
	form_data.append("token", $("#token").val());
	
		/*
			Дополнительные данные
		*/
	form_data.append("edit_email", "1");
	form_data.append("email", $("#email").val());
	
	$.ajax({
		type: "POST",
		url: "../configs/ajax/actions/acp.php",
		processData: false,
		contentType: false,
		data: form_data,
		dataType: "json",
		success: function(result) {
			$("#result_edit_email").html(result.html);
		}
	});
}

/*
	Изменение почтового адреса
*/
function edit_address() {
	var form_data = new FormData;
	form_data.append("phpaction", "1");
	form_data.append("token", $("#token").val());
	
		/*
			Дополнительные данные
		*/
	form_data.append("edit_address", "1");
	form_data.append("address", $("#address").val());
	
	$.ajax({
		type: "POST",
		url: "../configs/ajax/actions/acp.php",
		processData: false,
		contentType: false,
		data: form_data,
		dataType: "json",
		success: function(result) {
			$("#result_edit_address").html(result.html);
		}
	});
}

/*
	Изменение номера телефона
*/
function edit_phone() {
	var form_data = new FormData;
	form_data.append("phpaction", "1");
	form_data.append("token", $("#token").val());
	
		/*
			Дополнительные данные
		*/
	form_data.append("edit_phone", "1");
	form_data.append("phone", $("#phone").val());
	
	$.ajax({
		type: "POST",
		url: "../configs/ajax/actions/acp.php",
		processData: false,
		contentType: false,
		data: form_data,
		dataType: "json",
		success: function(result) {
			$("#result_edit_phone").html(result.html);
		}
	});
}

/*
	Получение списка товаров
*/
function product_table() {
	var form_data = new FormData;
	form_data.append("phpaction", "1");
	form_data.append("token", $("#token").val());
	
		/*
			Дополнительные данные
		*/
	form_data.append("product_table", "1");
	
	$.ajax({
		type: "POST",
		url: "../configs/ajax/actions/acp.php",
		processData: false,
		contentType: false,
		data: form_data,
		dataType: "json",
		success: function(result) {
			$("#product_table").html(result.html);
			FilePond.create(document.querySelector('.basic-filepond'), {allowImagePreview: false, allowMultiple: false,allowFileEncode: false, required: false});
		}
	});
}