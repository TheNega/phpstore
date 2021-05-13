<div id="sidebar" class="active">
	<div class="sidebar-wrapper active">
		<div class="sidebar-header">
			<div class="d-flex justify-content-between">
				<div class="logo">
					<a href="/acp">PHP Store</a>
				</div>
				<div class="toggler">
					<a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
				</div>
			</div>
		</div>
		<div class="sidebar-menu">
			<ul class="menu">
				<li class="sidebar-title">Навигация</li>
				<li class="sidebar-item">
					<a href="/acp" class="sidebar-link">
						<i class="bi bi-grid-fill"></i>
						<span>Основные настройки</span>
					</a>
				</li>
				<li class="sidebar-item">
					<a href="#" class="sidebar-link" data-bs-toggle="collapse" data-bs-target="#submenu-product" aria-expanded="false">
						<i class="fas fa-shopping-basket"></i>
						<span>Магазин</span>
					</a>
					
					<div class="collapse" id="submenu-product">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li class="sidebar-item">
								<a href="/acp/product" class="sidebar-link">
									<i class="fas fa-cart-plus"></i>
									<span>Товары</span>
								</a>
							</li>
							<li class="sidebar-item">
								<a href="/acp/product/category" class="sidebar-link">
									<i class="fas fa-filter"></i>
									<span>Категории</span>
								</a>
							</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
	</div>
</div>