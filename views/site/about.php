<?php
/* @var $this yii\web\View */
use yii\helpers\Html;
$this->title = 'About Tatoo';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>
    <div class="entry-content">
    <p>
        Блог «Tatoo» был разработан для людей, которые в поиске интересных стилей и дизайнов для своих будущих тату
    </p>

    <p>
		Команда разработчиков устала его писать.
	</p>
    <div class="post-thumb">
        <a href="https://geekprank.com/hacker/"><img src="/public/images/about(2).jpg"></a>
    </div>
    </div>
</div>