<div class="container-fluid bg-light py-5">
	<div class="col-md-6 m-auto text-center">
		<h1 class="h1">Наши контакты</h1>
		<p>Вы можете связаться с нами по контактам ниже</p>
	</div>
</div>

<div class="container py-5">
	<div class="row py-5">
		<form class="col-md-9 m-auto" method="post" role="form">
			<div class="row">
				<div class="form-group col-md-6 mb-3">
					<label for="inputname">Ваше имя</label>
					<input type="text" class="form-control mt-1" id="name" name="name" placeholder="Имя">
				</div>
				<div class="form-group col-md-6 mb-3">
					<label for="inputemail">Ваш E-mail</label>
					<input type="email" class="form-control mt-1" id="email" name="email" placeholder="E-mail">
				</div>
			</div>
			<div class="mb-3">
				<label for="inputsubject">Заголовок обращения</label>
				<input type="text" class="form-control mt-1" id="subject" name="subject" placeholder="Заголовок">
			</div>
			<div class="mb-3">
				<label for="inputmessage">Сообщение</label>
				<textarea class="form-control mt-1" id="message" name="message" placeholder="Сообщение" rows="8"></textarea>
			</div>
			<div class="row">
				<div class="col text-end mt-2">
					<button type="submit" class="btn btn-success btn-lg px-3">Отправить</button>
				</div>
			</div>
		</form>
	</div>
</div>