<!--[ Баннер ]!-->
<div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
	<ol class="carousel-indicators">
		<li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
	</ol>
	<div class="carousel-inner">
		<div class="carousel-item active">
			<div class="container">
				<div class="row p-5">
					<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
						<img class="img-fluid" src="{assets}/img/stickers/done.png" alt="">
					</div>
					<div class="col-lg-6 mb-0 d-flex align-items-center">
						<div class="text-align-left align-self-center">
							<h1 class="h1 text-success">Поздравляем!</h1>
							<h3 class="h2">Ваш магазин успешно создан.</h3>
							<p>
								Для того, чтобы начать работу с нашей системой, Вам потребуется перейти в <a href="/acp" class="text-success">Панель управления</a>.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
		<i class="fas fa-chevron-left"></i>
	</a>
	<a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
		<i class="fas fa-chevron-right"></i>
	</a>
</div>

<!--[ Топ товары ]!-->
<section class="container py-5">
	<div class="row text-center pt-3">
		<div class="col-lg-6 m-auto">
			<h1 class="h1">Популярные товары</h1>
			<p>Несмотря на большой спектр услуг нашего магазина, мы хотим показать Вам самые популярные товары!</p>
		</div>
	</div>
	<div class="row" id="top_product"></div>
</section>

<!--[ Отзывы клиентов ]!-->
<section class="bg-light">
	<div class="container py-5">
		<div class="row text-center py-3">
			<div class="col-lg-6 m-auto">
				<h1 class="h1">Отзывы клиентов</h1>
				<p>Каждый отзыв нашего клиента является достоверным!</p>
			</div>
		</div>
		<div class="row" id="comments"></div>
	</div>
</section>

<script>get_website_comments();</script>