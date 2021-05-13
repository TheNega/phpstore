<link rel="stylesheet" href="{assets}/vendors/quill/quill.bubble.css">
<link rel="stylesheet" href="{assets}/vendors/quill/quill.snow.css">

<link href="https://unpkg.com/filepond/dist/filepond.css" rel="stylesheet">
<link href="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css" rel="stylesheet">

<div class="page-heading">
	<h3>Добавление товара</h3>
</div>
<div class="page-content">
	<section class="row">
		<div class="col-12 col-lg-12">
			<div class="row">
				<section class="section">
                    <div class="card">
                        <div class="card-body">
							<div class="row">
								<label for="file">Файл</label>
								<input id="file" type="file" class="basic-filepond">
								
								<label for="images">Изображения</label>
								<input id="images" type="file" class="multiple-files-filepond">
							</div>
                        </div>
                    </div>
                </section>
			</div>
		</div>
	
		<div class="col-12 col-lg-12">
			<div class="row">
				<section class="section">
                    <div class="card">
						<div class="card-header">
							<h4 class="card-title">Текстовые данные</h4>
						</div>
                        <div class="card-body">
							<div class="row">
								<input class="form-control mb-2" type="text" placeholder="Наименование">
								<div id="snow">Описание</div>
							</div>
                        </div>
                    </div>
                </section>
			</div>
		</div>
	</section>
</div>

<script src="{assets}/vendors/quill/quill.min.js"></script>
<script src="{assets}/js/pages/form-editor.js"></script>
    
<!-- filepond validation -->
<script src="https://unpkg.com/filepond-plugin-file-validate-size/dist/filepond-plugin-file-validate-size.js"></script>
<script src="https://unpkg.com/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.js"></script>

<!-- image editor -->
<script src="https://unpkg.com/filepond-plugin-image-exif-orientation/dist/filepond-plugin-image-exif-orientation.js"></script>
<script src="https://unpkg.com/filepond-plugin-image-crop/dist/filepond-plugin-image-crop.js"></script>
<script src="https://unpkg.com/filepond-plugin-image-filter/dist/filepond-plugin-image-filter.js"></script>
<script src="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.js"></script>
<script src="https://unpkg.com/filepond-plugin-image-resize/dist/filepond-plugin-image-resize.js"></script>

<script src="https://unpkg.com/filepond/dist/filepond.js"></script>
<script>
	FilePond.registerPlugin(
		FilePondPluginFileValidateSize,
		FilePondPluginFileValidateType,
		FilePondPluginImageCrop,
		FilePondPluginImageFilter,
		FilePondPluginImageExifOrientation,
		FilePondPluginImageResize,
	);

	FilePond.create( document.querySelector('.basic-filepond'), { 
		allowImagePreview: false,
		allowMultiple: false,
		allowFileEncode: false,
		required: false
	});
	
    // Filepond: Multiple Files
    FilePond.create( document.querySelector('.multiple-files-filepond'), { 
        allowImagePreview: false,
        allowMultiple: true,
        allowFileEncode: false,
        required: false
    });
</script>