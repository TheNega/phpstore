<div class="page-heading">
	<h3>Управление товарами</h3>
</div>
<div class="page-content">
	<section class="row">
		<div class="col-12 col-lg-12">
			<div class="row">
				<section class="section">
                    <div class="card">
						<div class="card-header">
							<h4>Товары</h4>
						</div>
                        <div class="card-body">
							<link rel="stylesheet" href="{assets}/vendors/simple-datatables/style.css">
							<link href="https://unpkg.com/filepond/dist/filepond.css" rel="stylesheet">
							
							<table class="table table-striped" id="product_list">
                                <thead>
                                    <tr>
										<th>#</th>
										<th>Наименование</th>
										<th>Категория</th>
										<th>Стоимость</th>
										<th>Дата публикации</th>
										<th>Файл</th>
                                    </tr>
                                </thead>
								
                                <tbody id="product_table"></tbody>
							</table>
							
							<script src="https://unpkg.com/filepond-plugin-file-validate-size/dist/filepond-plugin-file-validate-size.js"></script>
							<script src="https://unpkg.com/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.js"></script>
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
									FilePondPluginImagePreview,
									FilePondPluginImageFilter,
									FilePondPluginImageExifOrientation,
									FilePondPluginImageResize,
								);
							</script>
							
							<script src="{assets}/vendors/simple-datatables/simple-datatables.js"></script>
							<script>
								product_table();
								let table = document.querySelector('#product_list');
								let dataTable = new simpleDatatables.DataTable(table);
							</script>
                        </div>
                    </div>
                </section>
			</div>
		</div>
	</section>
</div>