<div class="page-heading">
	<h3>Основные настройки</h3>
</div>
<div class="page-content">
	<section class="row">
		<div class="col-12 col-lg-12">
			<div class="row">
				<div class="col-6 col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body px-3 py-4-5">
							<div class="row">
								<div class="col-md-4">
									<div class="stats-icon purple">
										<i class="fas fa-shopping-basket"></i>
									</div>
								</div>
								<div class="col-md-8">
									<h6 class="text-muted font-semibold">Всего покупок</h6>
									<h6 class="font-extrabold mb-0">0</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body px-3 py-4-5">
							<div class="row">
								<div class="col-md-4">
									<div class="stats-icon blue">
										<i class="fab fa-product-hunt"></i>
									</div>
								</div>
								<div class="col-md-8">
									<h6 class="text-muted font-semibold">Всего товаров</h6>
									<h6 class="font-extrabold mb-0">0</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body px-3 py-4-5">
							<div class="row">
								<div class="col-md-4">
									<div class="stats-icon green">
										<i class="fas fa-money-bill-wave"></i>
									</div>
								</div>
								<div class="col-md-8">
									<h6 class="text-muted font-semibold">Общая прибыль</h6>
									<h6 class="font-extrabold mb-0">0</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6 col-lg-3 col-md-6">
					<div class="card">
						<div class="card-body px-3 py-4-5">
							<div class="row">
								<div class="col-md-4">
									<div class="stats-icon red">
										<i class="fas fa-envelope"></i>
									</div>
								</div>
								<div class="col-md-8">
									<h6 class="text-muted font-semibold">Подписок</h6>
									<h6 class="font-extrabold mb-0">0</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-12 col-lg-12">
			<div class="row">
				<section class="section">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
									<label for="project">Название проекта</label>
									<div class="input-group">
										<input id="project" type="text" class="form-control" value="{project}">
										
										<div class="input-group-append">
											<button class="btn btn-outline-success nlr" onclick="edit_project();">Изменить</button>
										</div>
									</div>
									<div id="result_edit_project"></div>
									
									<label class="mt-2" for="template">Стиль сайта</label>
									<div class="input-group">
										<select class="form-select" id="template"></select>
										<script>load_templates();</script>
										<div class="input-group-append">
											<button class="btn btn-outline-success nlr" onclick="edit_template();">Изменить</button>
										</div>
									</div>
									<div id="result_edit_template"></div>
                                </div>
								
								<div class="col-md-6">
									<label for="project">E-mail адрес</label>
									<div class="input-group">
										<input id="email" type="text" class="form-control" value="{email}">
										
										<div class="input-group-append">
											<button class="btn btn-outline-success nlr" onclick="edit_email();">Изменить</button>
										</div>
									</div>
									<div id="result_edit_email"></div>
									
									<label class="mt-2" for="address">Адрес</label>
									<div class="input-group">
										<input id="address" type="text" class="form-control" value="{address}">
										
										<div class="input-group-append">
											<button class="btn btn-outline-success nlr" onclick="edit_address();">Изменить</button>
										</div>
									</div>
									<div id="result_edit_address"></div>
									
									<label class="mt-2" for="phone">Номер телефона</label>
									<div class="input-group">
										<input id="phone" type="text" class="form-control" value="{phone}">
										
										<div class="input-group-append">
											<button class="btn btn-outline-success nlr" onclick="edit_phone();">Изменить</button>
										</div>
									</div>
									<div id="result_edit_phone"></div>
								</div>
                            </div>
                        </div>
                    </div>
                </section>
			</div>
		</div>
	</section>
</div>