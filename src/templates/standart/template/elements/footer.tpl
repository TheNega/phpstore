<!--[ Нижняя часть ]-->
<footer class="bg-dark" id="tempaltemo_footer">
	<div class="container">
		<div class="row">
			<div class="col-md-4 pt-5">
				<h2 class="h2 text-success border-bottom pb-3 border-light logo">PHP Store</h2>
				<ul class="list-unstyled text-light footer-link-list">
					<li>
						<i class="fas fa-map-marker-alt fa-fw"></i>
						<?=$this->conf->address;?>
					</li>
					<li>
						<i class="fa fa-phone fa-fw"></i>
						<a class="text-decoration-none"><?=$this->conf->phone;?></a>
					</li>
					<li>
						<i class="fa fa-envelope fa-fw"></i>
						<a class="text-decoration-none" href="mailto:<?=$this->conf->email;?>"><?=$this->conf->email;?></a>
					</li>
				</ul>
			</div>

			<div class="col-md-4 pt-5">
				<h2 class="h2 text-light border-bottom pb-3 border-light">Полезная информация</h2>
				<ul class="list-unstyled text-light footer-link-list">
					<li><a class="text-decoration-none" href="#">Договор публичной оферты</a></li>
				</ul>
			</div>
			
			<div class="col-md-4 pt-5">
				<h2 class="h2 text-light border-bottom pb-3 border-light">Навигация</h2>
				<ul class="list-unstyled text-light footer-link-list">
					<li><a class="text-decoration-none" href="/">Главная страница</a></li>
					<li><a class="text-decoration-none" href="/about">О нас</a></li>
					<li><a class="text-decoration-none" href="/contact">Контакты</a></li>
				</ul>
			</div>

		</div>

		<div class="row text-light mb-4">
			<div class="col-12 mb-3">
				<div class="w-100 my-3 border-top border-light"></div>
			</div>
			<div class="col-auto me-auto">
				<ul class="list-inline text-left footer-icons">
					<li class="list-inline-item border border-light rounded-circle text-center">
						<a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
					</li>
					<li class="list-inline-item border border-light rounded-circle text-center">
						<a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
					</li>
					<li class="list-inline-item border border-light rounded-circle text-center">
						<a class="text-light text-decoration-none" target="_blank" href="https://vk.com/phpestore"><i class="fab fa-vk fa-lg fa-fw"></i></a>
					</li>
				</ul>
			</div>
			<div class="col-auto">
				<label class="sr-only" for="subscribeEmail">Информировать об акциях</label>
				<div class="input-group mb-2">
					<input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="E-mail адрес">
					<div class="input-group-text btn-success text-light">Подписаться</div>
				</div>
			</div>
		</div>
	</div>

	<div class="w-100 bg-black py-3">
		<div class="container">
			<div class="row pt-2">
				<div class="col-12">
				<p class="text-left text-light">
				Копирайт &copy; 2021 <a href="https://worksma.ru" target="_blank">WORKSMA</a>, все права сохранены.
				| Дизайн от <a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
				</p>
				</div>
			</div>
		</div>
	</div>
</footer>