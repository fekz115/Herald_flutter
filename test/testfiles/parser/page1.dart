var testPage1 = '''
<!doctype html>
<!--[if IE 7 ]><html lang="ru-RU" class="ie ie7 ie78"><![endif]-->
<!--[if IE 8 ]><html lang="ru-RU" class="ie ie8 ie78"><![endif]-->
<!--[if IE 9 ]><html lang="ru-RU" class="ie ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html lang="ru-RU"><!--<![endif]-->
	<head>
        
			<!-- Google Tag Manager -->
			<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-MM5CHB');</script>
			<!-- End Google Tag Manager -->
        
		<meta charset="UTF-8"/>
		<meta http-equiv="Cache-Control" content="max-age=31536000" />
		<meta http-equiv="Expires" content="Mon, 19 Apr 2060 20:00:00 GMT" />
		<meta name="Revisit-after" content="21 days" />
		<title>Расписание движения поездов</title>
		<script type="text/javascript">
			root = '/ru/';
			root_no_lang = '/';
			lang_var = 'ru';
			complex_route_limit = 3;
			max_calendar_days = 60;
			proxy_map = '';
			backend_map = 'https://georasp.rw.by';
			choose_station = 'Выбрать станцию';
			timetable_today = 'Расписание на сегодня';
			no_geo_location = 'Ваш браузер не поддерживает функцию определения местоположения.';
			//var pathZdscripts = proxy_map + "http://194.158.199.113";
						route_everyday = false;
					</script>
		<link rel="stylesheet" href="/media/css/common.css?v=0.1.0.2020-03-31">
		<link rel="stylesheet" href="/media/css/calc.css?v=0.1.0.2020-03-31">
		<!--[if lt IE 9 ]>
		<script type="text/javascript" src="/media/js/lib/jquery-1.10.1.js"></script>
		<![endif]-->
		<!--[if (gte IE 9)|!(IE)]><!-->
		<script type="text/javascript" src="/media/js/lib/jquery-2.0.3.min.js"></script>
		<!--<![endif]-->
		<script type="text/javascript" src="/media/js/lib/jquery-ui.min.1.10.3.js"></script>
		<script type="text/javascript" src="/media/js/i18n_ru.js?v=0.1.0.2020-03-31"></script>
		<script type="text/javascript" src="/media/js/plugins.js?v=0.1.0.2020-03-31"></script>
		<script type="text/javascript" src="/media/js/main.js?v=0.1.0.2020-03-31"></script>
		<script type="text/javascript" src="/media/js/ajax.js?v=0.1.0.2020-03-31"></script>
		<script type="text/javascript" async src="/media/js/forms.js?v=0.1.0.2020-03-31"></script>
		<script type="text/javascript" src="/media/js/lib/jquery.validate.min.js"></script>
		<script type="text/javascript" src="https://georasp.rw.by/apimaps?key=2dbcd492534996d38157ff4c4ef5f302&language=ru"></script>
		<script type="text/javascript" src="https://georasp.rw.by/apimaps?key=9875f8b67aae8c23a520fda48c44befb&language=ru"></script>
		<script type="text/javascript" async src="/media/js/map4.js?v=0.1.0.2020-03-31"></script>
		<script type="text/javascript" async src="/media/js/map5.js?v=0.1.0.2020-03-31"></script>
		<script type="text/javascript" async src="/media/js/map_functions.js?v=0.1.0.2020-03-31"></script>
		<script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-31356575-1']);
            _gaq.push(['_setDomainName', 'rw.by']);
            _gaq.push(['_addOrganic', 'akavita.by', 'z']);
            _gaq.push(['_addOrganic', 'tut.by', 'query']);
            _gaq.push(['_addOrganic', 'search.tut.by', 'query']);
            _gaq.push(['_addOrganic', 'all.by', 'query']);
            _gaq.push(['_addOrganic', 'go.mail.ru',  'q']);
            _gaq.push(['_addOrganic', 'nova.rambler.ru',  'query']);
            _gaq.push(['_addOrganic', 'nigma.ru', 's']);
            _gaq.push(['_addOrganic', 'webalta.ru', 'q']);
            _gaq.push(['_addOrganic', 'aport.ru', 'r']);
            _gaq.push(['_addOrganic', 'poisk.ru', 'text']);
            _gaq.push(['_addOrganic', 'km.ru', 'sq']);
            _gaq.push(['_addOrganic', 'liveinternet.ru', 'ask']);
            _gaq.push(['_addOrganic', 'quintura.ru', 'request']);
            _gaq.push(['_addOrganic', 'search.qip.ru', 'query']);
            _gaq.push(['_addOrganic', 'gde.ru', 'keywords']);
            _gaq.push(['_addOrganic', 'gogo.ru', 'q']);
            _gaq.push(['_addOrganic', 'ru.yahoo.com', 'p']);
            _gaq.push(['_addOrganic', 'meta.ua', 'q']);
            _gaq.push(['_addOrganic', 'bigmir.net', 'q']);
            _gaq.push(['_trackPageview']);
            _gaq.push(['_trackPageLoadTime']);

            (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();

        </script>



		<link rel="shortcut icon" href="/media/favicon.ico">
		<link rel="apple-touch-icon-precomposed" href="/apple-touch-icon.png">
		<link rel="apple-touch-icon-precomposed" sizes="180x180" href="/apple-touch-icon-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="120x120" href="/apple-touch-icon-120x120.png">
		<link rel="apple-touch-icon-precomposed" sizes="120x120" href="/apple-touch-icon-120x120-precomposed.png">
	</head>
	<body>
		
		    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MM5CHB"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->



		<div class="b-adv">
	<a href="http://poezd.rw.by" class="adv_inner" target="_blank">Покупка билетов через Интернет <span class="lnk">poezd.rw.by</span></a>
	<i class="adv_close"></i>
</div><!-- // b-adv -->
		<div class="g-wrapper">
			<div class="g-header">
	<div class="g-header_inner">

		<div class="b-logo">
			<a href="http://rw.by" class="logo_link" target="_blank"><img class="logo_img" src="/media/i/logo_ru.png" alt=""/></a>
		</div><!-- // b-logo -->

		<div class="b-tools">
			<div class="tools_lang">
												<span class="lang current">Русский</span>
																<a href="/be/?c=true" class="lang">Беларуская</a>
																<a href="/en/?c=true" class="lang">English</a>
											</div>
			<div class="tools_reference" data-popup="PopupHelper">
				<i class="tools_pic"></i><span class="dot">Контакт-центр</span>
			</div>
			<div class="tools_help">
				<i class="tools_pic"></i><span class="dot">Чем вам помочь?</span>

				<div class="b-drop">
					<div class="drop_item help">
												<a class="drop_link" href="http://www.rw.by/help/" target="_blank"><i class="drop_ico"></i>Справочная информация</a>
											</div>
					<i class="drop_arr"></i>
				</div><!-- // b-drop-help -->
			</div>
			<a class="tools_mobi" href="/m/ru/route/?path=ru%2Froute%2F&from=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&from_exp=&from_esr=&to=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to_exp=&to_esr=&date=2020-06-15&s=mobile">
				<i class="tools_pic"></i><span class="lnk">Мобильная версия</span>
			</a>
		</div><!-- // b-tools -->

	</div>
</div>
			<div class="g-wrapper_inner">
				<div class="g-main">
										<div class="b-finder">
						<h1 class="finder_title"><a href="/ru/">Расписание движения поездов</a></h1>
						<div class="finder_main">
							<form action="/ru/route/" class="finder_form" method="get">
	<div class="b-btn middle-yellow">
		<span class="btn_txt">Найти</span><i class="btn_crn"></i>
		<input class="btn_hidden" type="submit"/>
	</div><!-- // b-btn -->

	<div class="finder_labels">
		<div class="finder_label label_from">Откуда</div>
		<div class="finder_label label_where">Куда</div>
		<div class="finder_label label_date">Когда</div>
	</div>
	<div class="finder_inner">
								<div class="finder_row">
	<div class="finder_section finder_start-route">
		<div class="b-field field_text">
			<div class="field_outer">
				<input name="from" type="text" class="field_input" id="main_search_from" value="Минск" placeholder="Начните вводить название станции"/>
												<input type="hidden" class="from_exp" id="main_search_from_exp" name="from_exp" value="" />
				<input type="hidden" class="from_esr" id="main_search_from_esr" name="from_esr" value="" />
				<div class="field_picker show-map"><i class="field_ico"></i></div>
			</div>
		</div><!-- // b-field -->
	</div>
	<i class="finder_div"></i>
	<div class="finder_section finder_end-route">
		<div class="b-field field_text">
			<div class="field_outer">
				<input name="to" type="text" class="field_input" id="main_search_to" value="Гомель" placeholder="Начните вводить название станции"/>
												<input type="hidden" class="to_exp" id="main_search_to_exp" name="to_exp" value="" />
				<input type="hidden" class="to_esr" id="main_search_to_esr" name="to_esr" value="" />
				<div class="field_picker show-map"><i class="field_ico"></i></div>
			</div>
		</div><!-- // b-field -->
	</div>
	<div class="finder_section finder_date-route">

		<div class="b-field field_date">
			<div class="field_outer">
				<input class="field_input date_input" type="text" placeholder="Выбрать дату"/>
				<input name="date" id="main_search_date" type="hidden" class="orig_date" value="2020-06-15" />
				<div class="field_picker show-dp" title="Дату отправления можно ввести вручную или выбрать с помощью календаря. Задается в интервале от 0 до 60 суток до отправления поезда, начиная с сегодняшнего дня"><i class="field_ico"></i></div>
			</div>
		</div><!-- // b-field -->

	</div>
	<i class="finder_delete-row" title="Удалить маршрут"></i>
</div>
																	</div>
		<div class="finder_helpers">
		<div class="finder_helper helper_from">
			<span class="finder_help dot" data-from="Минск" data-from-exp="2100000" data-from-esr="">Минск</span>
		</div>
		<div class="finder_helper helper_where">
			<span class="finder_help dot" data-to="Гомель" data-to-exp="2100100" data-to-esr="">Гомель</span>
		</div>
		<div class="finder_helper helper_date">
			<span class="finder_help dot" data-date="today" data-value="2020-06-15">сегодня</span>,
			<span class="finder_help dot" data-date="tomorrow" data-value="2020-06-16">завтра</span>,
			<span class="finder_help dot" data-date="everyday" data-value="everyday">на все дни</span>
		</div>
	</div>
	<div id="FINDER_ADD" class="finder_add">
		<div class="finder_add-trigger">
			<i class="finder_add-pic"></i>
			<span class="dot">Продолжить маршрут</span>
		</div>
	</div>
</form>
						</div>
												<div class="finder_routes">
	<div class="finder_routes-history">
		<span id="FINDER_ROUTES" class="finder_routes-trigger">История маршрутов</span><i class="finder_routes-arr"></i>
		<div class="finder_routes-list"><i class="finder_routes-placer"></i>
						<div class="finder_route" title="Минск &mdash; Гомель" id="route_history_0">
				<a href="/ru/route/?from=Минск&from_exp=2100000&to=Гомель&to_exp=2100100&date=2020-06-15" class="finder_route-name">Минск &mdash; Гомель</a>
				<i class="finder_route-close" title="Удалить из истории" onclick="javascript:return get('/ru/ajax/search/delete', { 'key': 0 }, 'callbackSearchDelete')"></i>
			</div>
					</div>
	</div>
</div>

											</div><!-- // b-finder -->
										<div class="g-sidebar">

		

	<div class="b-box" id="filter_box">
	<div class="box_heading">Подобрать поезд</div>
	<form id="filter" action="#" class="box_inner">
		<fieldset class="box_group">
			<span class="non_regional_only">
				<div class="b-label filter_block">
	<label class="label_inner">
		<input type="checkbox" name="" class="label_cb" id="filter_w_places"/>
		<span class="label_text">Cо свободными местами</span>
	</label>
</div><!-- // b-label -->
			</span>
			<div class="b-toggle">
	<span class="toggle_key active" data-value="start">Отправление</span>
	<span class="toggle_key" data-value="coming">Прибытие</span>
	<input type="hidden" class="toggle_input" name="sort" value="start"/>
</div>
<div class="clear"><!-- --></div><br />
<div class="filter_block day_part_start">
		<div class="b-label">
		<label class="label_inner">
			<input type="checkbox" name="" class="label_cb" id="filter_from_morning"/>
			<span class="label_text">Утро (с 06.00 - 11.59)</span>
		</label>
	</div><!-- // b-label -->
		<div class="b-label">
		<label class="label_inner">
			<input type="checkbox" name="" class="label_cb" id="filter_from_aternoon"/>
			<span class="label_text">День (с 12.00 - 17.59)</span>
		</label>
	</div><!-- // b-label -->
		<div class="b-label">
		<label class="label_inner">
			<input type="checkbox" name="" class="label_cb" id="filter_from_evening"/>
			<span class="label_text">Вечер (с 18.00 - 23.59)</span>
		</label>
	</div><!-- // b-label -->
		<div class="b-label">
		<label class="label_inner">
			<input type="checkbox" name="" class="label_cb" id="filter_from_night"/>
			<span class="label_text">Ночь (с 00.00 - 05.59)</span>
		</label>
	</div><!-- // b-label -->
	</div>

<div class="filter_block hidden day_part_coming">
		<div class="b-label">
		<label class="label_inner">
			<input type="checkbox" name="" class="label_cb" id="filter_to_morning"/>
			<span class="label_text">Утро (с 06.00 - 11.59)</span>
		</label>
	</div><!-- // b-label -->
		<div class="b-label">
		<label class="label_inner">
			<input type="checkbox" name="" class="label_cb" id="filter_to_aternoon"/>
			<span class="label_text">День (с 12.00 - 17.59)</span>
		</label>
	</div><!-- // b-label -->
		<div class="b-label">
		<label class="label_inner">
			<input type="checkbox" name="" class="label_cb" id="filter_to_evening"/>
			<span class="label_text">Вечер (с 18.00 - 23.59)</span>
		</label>
	</div><!-- // b-label -->
		<div class="b-label">
		<label class="label_inner">
			<input type="checkbox" name="" class="label_cb" id="filter_to_night"/>
			<span class="label_text">Ночь (с 00.00 - 05.59)</span>
		</label>
	</div><!-- // b-label -->
	</div>
		</fieldset>
		<fieldset class="box_group">
	<h4 class="box_title">
		<span class="dot">Тип поезда</span><i class="box_drop"></i>
	</h4>
	<div class="box_box filter_block filter_train_type">
				<div class="b-label">
			<label class="label_inner">
				<i class="b-pic train_type bus"></i>
				<input type="checkbox" name="" class="label_cb" id="filter_bus"/>
				<span class="label_text">Автобус</span>
			</label>
			<span class="b-help" title="Подробности"></span>
		</div><!-- // b-label -->
				<div class="b-label">
			<label class="label_inner">
				<i class="b-pic train_type international"></i>
				<input type="checkbox" name="" class="label_cb" id="filter_international"/>
				<span class="label_text">Международные линии</span>
			</label>
			<span class="b-help" title="Подробности"></span>
		</div><!-- // b-label -->
				<div class="b-label">
			<label class="label_inner">
				<i class="b-pic train_type interregional_business"></i>
				<input type="checkbox" name="" class="label_cb" id="filter_interregional_business"/>
				<span class="label_text">Межрегиональные линии бизнес-класса</span>
			</label>
			<span class="b-help" title="Подробности"></span>
		</div><!-- // b-label -->
				<div class="b-label">
			<label class="label_inner">
				<i class="b-pic train_type interregional_economy"></i>
				<input type="checkbox" name="" class="label_cb" id="filter_interregional_economy"/>
				<span class="label_text">Межрегиональные линии экономкласса</span>
			</label>
			<span class="b-help" title="Подробности"></span>
		</div><!-- // b-label -->
				<div class="b-label">
			<label class="label_inner">
				<i class="b-pic train_type regional_business"></i>
				<input type="checkbox" name="" class="label_cb" id="filter_regional_business"/>
				<span class="label_text">Региональные линии бизнес-класса</span>
			</label>
			<span class="b-help" title="Подробности"></span>
		</div><!-- // b-label -->
				<div class="b-label">
			<label class="label_inner">
				<i class="b-pic train_type commercial"></i>
				<input type="checkbox" name="" class="label_cb" id="filter_commercial"/>
				<span class="label_text">Коммерческие линии</span>
			</label>
			<span class="b-help" title="Подробности"></span>
		</div><!-- // b-label -->
				<div class="b-label">
			<label class="label_inner">
				<i class="b-pic train_type regional_economy"></i>
				<input type="checkbox" name="" class="label_cb" id="filter_regional_economy"/>
				<span class="label_text">Региональные линии экономкласса</span>
			</label>
			<span class="b-help" title="Подробности"></span>
		</div><!-- // b-label -->
				<div class="b-label">
			<label class="label_inner">
				<i class="b-pic train_type city"></i>
				<input type="checkbox" name="" class="label_cb" id="filter_city"/>
				<span class="label_text">Городские линии</span>
			</label>
			<span class="b-help" title="Подробности"></span>
		</div><!-- // b-label -->
				<div class="b-label">
			<label class="label_inner">
				<i class="b-pic train_type airport"></i>
				<input type="checkbox" name="" class="label_cb" id="filter_airport"/>
				<span class="label_text">Минск-Национальный аэропорт</span>
			</label>
			<span class="b-help" title="Подробности"></span>
		</div><!-- // b-label -->
			</div>
</fieldset>
				<fieldset class="box_group">
	<h4 class="box_title">
		<span class="dot">Тип вагона</span><i class="box_drop"></i>
	</h4>
	<div class="box_box filter_block">
										<div class="b-label">
			<label class="label_inner">
				<input type="checkbox" name="" class="label_cb" id="filter_car_type_1"/>
				<span class="label_text">Общий</span>
			</label>
		</div><!-- // b-label -->
								<div class="b-label">
			<label class="label_inner">
				<input type="checkbox" name="" class="label_cb" id="filter_car_type_2"/>
				<span class="label_text">Сидячий</span>
			</label>
		</div><!-- // b-label -->
								<div class="b-label">
			<label class="label_inner">
				<input type="checkbox" name="" class="label_cb" id="filter_car_type_3"/>
				<span class="label_text">Плацкартный</span>
			</label>
		</div><!-- // b-label -->
								<div class="b-label">
			<label class="label_inner">
				<input type="checkbox" name="" class="label_cb" id="filter_car_type_4"/>
				<span class="label_text">Купе</span>
			</label>
		</div><!-- // b-label -->
								<div class="b-label">
			<label class="label_inner">
				<input type="checkbox" name="" class="label_cb" id="filter_car_type_5"/>
				<span class="label_text">Мягкий</span>
			</label>
		</div><!-- // b-label -->
								<div class="b-label">
			<label class="label_inner">
				<input type="checkbox" name="" class="label_cb" id="filter_car_type_6"/>
				<span class="label_text">СВ</span>
			</label>
		</div><!-- // b-label -->
					</div>
</fieldset>
			</form>
	<i class="box_sh"></i>
</div><!-- // b-box -->


	<div class="b-tiser">
	Покупка билетов через Интернет <a href="http://poezd.rw.by" target="_blank">poezd.rw.by</a>
</div><!-- // b-tiser -->

	<!--
	<div class="b-box tablo">
		<div class="box_heading">Онлайн-табло</div>
		<div class="stations">
			<div class="item">
				<a href="http://test1.rasp.rw.by/ru/tablo/?set_exp=2100000"><span>ст. Минск-Пассажирский</span></a>
			</div>
			<div class="item">
				<a href="http://test1.rasp.rw.by/ru/tablo/?set_exp=2100035"><span>ст. Брест-Центральный</span></a>
			</div>
		</div>
		<i class="box_sh"></i>
	</div>
	-->

	<div class="b-tiser">
	ОНЛАЙН-ТАБЛО<br /><a id="TISER_TABLO" href="/ru/tablo/">движения поездов</a>
</div>

    <div class="b-changes">
		<h3 class="changes_heading">Вниманию пользователей!</h3>
		
<div class="changes_group"> 	 
<!-- <div class="changes_item">Информационно-справочная система &laquo;Расписание движения поездов&raquo; находится в режиме опытной эксплуатации.</div>
 
  <br /> -->
 
<!-- mailto:ktc@upr.mnsk.rw.by, cnti_martusevich@mnsk.rw.by, svetlana@db.by, kazalexminsk@mail.ru, grundik85@mail.ru, matushina@upr.mnsk.rw.by -->
 
  <div class="changes_item"> 

<!--
    <p>По техническим причинам расписание движения поездов временно недоступно.</p>
   
    <p>Приносим извинения за причиненные неудобства.</p>
   
    <p>Для получения информации о расписании поездов Вы можете воспользоваться сайтом <a href="https://poezd.rw.by/wps/portal/home/rp" >poezd.rw.by</a></p>
-->
   
	<p>Вы можете оставить свои замечания и предложения о работе системы, <a id="bxid_670060" href="javascript:void();" class="feedback_trigger" >отправив сообщение.</a></p>
 </div>
 </div>

    </div><!-- // b-changes -->

    <div class="b-info">
		<h3 class="info_title"><a href="#">Ваш проводник</a></h3>
<div class="info_description">Справочная информация для пассажиров:</div>
<div class="info_list">
	<a class="info_item" href="#"><span class="lnk">За какое время можно приобрести билеты?</span></a>
	<a class="info_item" href="#"><span class="lnk">Документы, необходимые для приобретения билетов</span></a>
	<a class="info_item" href="#"><span class="lnk">Общие требования к перевозке грузобагажа</span></a>
	<a class="info_item" href="#"><span class="lnk">Пользование постельными принадлежностями и бельем</span></a>
</div>
    </div><!-- // b-info -->

</div>
<div class="g-content">
	<div class="b-schedule">
				<h2 class="b-page-title">
	<span class="page-title_heading">Расписание поездов</span>
	<b>Минск&nbsp;&mdash; Гомель</b>, <span class="page-title_date">15 июня, понедельник</span>
</h2><!-- // b-page_title -->
		<div class="schedule_back">
	<div class="schedule_picker">
				<form action="/ru/route/" method="get" target="_blank">
			Расписание обратно, <span class="lnk schedule_back-trigger" onclick="(this).closest('form').submit();">
								15 июня
							</span>
			<input type="hidden" name="from" value="Гомель" />
			<input type="hidden" name="from_esr" value="" />
			<input type="hidden" name="from_exp" value="" />
			<input type="hidden" name="to" value="Минск" />
			<input type="hidden" name="to_esr" value="" />
			<input type="hidden" name="to_exp" value="" />
			<input type="hidden" name="date" value="2020-06-15" />
		</form>
		<i class="schedule_back-calendar"></i>
		<input type="text" class="schedule_back-date"/>
			</div>
	<div class="schedule_back-select">
				<span class="schedule_back-item">15 июня</span>
		<a href="/ru/route/?from=Минск&to=Гомель&date=2020-06-16&from_esr=&from_exp=&to_esr=&to_exp=" class="schedule_back-item">16 июня</a>
		<a href="/ru/route/?from=Минск&to=Гомель&date=2020-06-17&from_esr=&from_exp=&to_esr=&to_exp=" class="schedule_back-item">17 июня</a>
		<a href="/ru/route/?from=Минск&to=Гомель&date=everyday&from_esr=&from_exp=&to_esr=&to_exp=" class="schedule_back-item">на все дни</a>
			</div>
</div>

		        <table class="schedule_main hide_started">
            <thead class="schedule_header">
    <tr>
        <th class="schedule_train schedule_info sorting" data-sorting="info">
            <div class="schedule_inn">
                <span class="dot" onclick="sortTrains(this, '.train_item .train_text', false);">Поезд</span>
                <i class="arr"></i>
            </div>
        </th>
        <th class="schedule_train schedule_start sorting" data-sorting="start">
            <div class="schedule_inn">
                <span class="dot" onclick="sortTrains(this, '.train_start > .hidden', true);" title="Для станций отправления, находящихся на территории Республики Беларусь, указано белорусское время.&#10;Для станций отправления, находящихся на территории Российской Федерации, указано московское время.&#10;Для станций отправления, находящихся на территории иных государств, указано местное время.">Отправление</span>
                <i class="arr"></i>
            </div>
        </th>
        <th class="schedule_train schedule_end sorting" data-sorting="end">
            <div class="schedule_inn">
                <span class="dot" onclick="sortTrains(this, '.train_end > .hidden', true);" title="Для станций назначения, находящихся на территории Республики Беларусь, указано белорусское время.&#10;Для станций назначения, находящихся на территории Российской Федерации, указано московское время.&#10;Для станций назначения, находящихся на территории иных государств, указано местное время.">Прибытие</span>
                <i class="arr"></i>
            </div>
        </th>
        <th class="schedule_train schedule_time sorting" data-sorting="time">
            <div class="schedule_inn">
                <span class="dot" onclick="sortTrains(this, '.train_time > .hidden', true);">Время в пути</span>
                <i class="arr"></i>
            </div>
        </th>
        <th class="schedule_train schedule_halts everyday_regional_only regional_only hidden">
            <div class="schedule_inn">
                <span class="dot">Остановки</span>
            </div>
        </th>
        <th class="schedule_train schedule_days regional_only hidden">
            <div class="schedule_inn">
                <span class="dot">Дни курсирования</span>
            </div>
        </th>
        <th class="schedule_train schedule_details sorting non_regional_only" data-sorting="details">
            <div class="schedule_inn">
                <span class="dot" onclick="sortTrains(this, '.train_details > .hidden', true);" title="Стоимость проездного документа указана для одного взрослого пассажира на заданную дату отправления (в указанную стоимость не  включены тарифные сборы за оформление проездных документов)">Стоимость (б.р.)</span>
                <i class="arr"></i>
            </div>
        </th>
        <th class="schedule_train schedule_place non_regional_only">
            <div class="schedule_inn">
                <span class="dot">Своб. места</span>
            </div>
        </th>
    </tr>
</thead>
            <tbody class="schedule_started-text">
    <tr>
        <td colspan="6">
            <span class="dot" data-alt="Скрыть отправившиеся">Показать отправившиеся</span>
        </td>
    </tr>
</tbody>

            <tbody class="schedule_list">
                                        <!-- -->


        <tr class="b-train started from_night to_night interregional_economy" id="1_684Б_1592169900_1592189460" data-info="Jun 15, 2020;Jun 15, 2020" onclick="return { sort:{ 'start':1592169900, 'end':1592189460,'time':326,'price':0 } }">
        <td class="train_item train_info">
            <div class="train_inner">
                <i class="b-pic train_type interregional_economy"></i>
                <small class="train_id">684Б</small>
                <div class="train_name -map">
                    <a href="/ru/train/?train=684Б&from_exp=2100000&to_exp=2100100&date=2020-06-15&from=Минск&to=Гомель" class="train_text">Минск-Пассажирский&nbsp;&mdash; Гомель</a>&nbsp;                </div>
                <div class="train_description">Межрегиональные линии экономкласса</div>                <div class="train_about">
                                                                            </div>
            </div>
        </td>
        <td class="train_item train_start">
            <span class="hidden">-40823</span>
            <b class="train_start-time">00:25</b>
            <a href="/ru/station/?station=Минск&exp=2100000&date=2020-06-15" class="train_start-place -map">Минск</a>
        </td>
        <td class="train_item train_end">
            <span class="hidden">-21263</span>
			<b class="train_end-time">05:51</b>
            <a href="/ru/station/?station=Гомель&exp=2100100&date=2020-06-15" class="train_end-place -map">Гомель</a>
        </td>
        <td class="train_item train_time">
            <span class="hidden">326</span>
            <span class="train_time-total">5 ч 26 мин</span>
        </td>
        <td class="train_item train_halts regional_only everyday_regional_only hidden">
            
        </td>
        <td class="train_item train_days regional_only hidden">
			15.06, 22.06, 29.06        </td>
        <td class="train_item train_details non_regional_only" colspan="2">
			<span class="hidden">0</span>        </td>
    </tr><!-- // b-train -->
                                                <!-- -->


        <tr class="b-train started from_morning to_morning interregional_business" id="1_716Б_1592194080_1592205660" data-info="Jun 15, 2020;Jun 15, 2020" onclick="return { sort:{ 'start':1592194080, 'end':1592205660,'time':193,'price':0 } }">
        <td class="train_item train_info">
            <div class="train_inner">
                <i class="b-pic train_type interregional_business"></i>
                <small class="train_id">716Б</small>
                <div class="train_name -map">
                    <a href="/ru/train/?train=716Б&from_exp=2100000&to_exp=2100100&date=2020-06-15&from=Минск&to=Гомель" class="train_text">Минск-Пассажирский&nbsp;&mdash; Гомель</a>&nbsp;                </div>
                <div class="train_description">Межрегиональные линии бизнес-класса</div>                <div class="train_about">
                                                                            </div>
            </div>
        </td>
        <td class="train_item train_start">
            <span class="hidden">-16643</span>
            <b class="train_start-time">07:08</b>
            <a href="/ru/station/?station=Минск&exp=2100000&date=2020-06-15" class="train_start-place -map">Минск</a>
        </td>
        <td class="train_item train_end">
            <span class="hidden">-5063</span>
			<b class="train_end-time">10:21</b>
            <a href="/ru/station/?station=Гомель&exp=2100100&date=2020-06-15" class="train_end-place -map">Гомель</a>
        </td>
        <td class="train_item train_time">
            <span class="hidden">193</span>
            <span class="train_time-total">3 ч 13 мин</span>
        </td>
        <td class="train_item train_halts regional_only everyday_regional_only hidden">
            
        </td>
        <td class="train_item train_days regional_only hidden">
			ежедневно        </td>
        <td class="train_item train_details non_regional_only" colspan="2">
			<span class="hidden">0</span>        </td>
    </tr><!-- // b-train -->
                                                <!-- -->


        <tr class="b-train from_aternoon to_evening interregional_business" id="1_718Б_1592222220_1592234040" data-info="Jun 15, 2020;Jun 15, 2020" onclick="return { sort:{ 'start':1592222220, 'end':1592234040,'time':197,'price':0 } }">
        <td class="train_item train_info">
            <div class="train_inner">
                <i class="b-pic train_type interregional_business"></i>
                <small class="train_id">718Б</small>
                <div class="train_name -map">
                    <a href="/ru/train/?train=718Б&from_exp=2100000&to_exp=2100100&date=2020-06-15&from=Минск&to=Гомель" class="train_text">Минск-Пассажирский&nbsp;&mdash; Гомель</a>&nbsp;                </div>
                <div class="train_description">Межрегиональные линии бизнес-класса</div>                <div class="train_about">
                                                                            </div>
            </div>
        </td>
        <td class="train_item train_start">
            <span class="hidden">11497</span>
            <b class="train_start-time">14:57</b>
            <a href="/ru/station/?station=Минск&exp=2100000&date=2020-06-15" class="train_start-place -map">Минск</a>
        </td>
        <td class="train_item train_end">
            <span class="hidden">23317</span>
			<b class="train_end-time">18:14</b>
            <a href="/ru/station/?station=Гомель&exp=2100100&date=2020-06-15" class="train_end-place -map">Гомель</a>
        </td>
        <td class="train_item train_time">
            <span class="hidden">197</span>
            <span class="train_time-total">3 ч 17 мин</span>
        </td>
        <td class="train_item train_halts regional_only everyday_regional_only hidden">
            
        </td>
        <td class="train_item train_days regional_only hidden">
			по пн, вт, ср, чт, пт, вс        </td>
        <td class="train_item train_details non_regional_only" colspan="2">
			<span class="hidden">0</span>        </td>
    </tr><!-- // b-train -->
                                                                                    <!-- -->


        <tr class="b-train w_places car_type_2 car_type_3 car_type_4 from_aternoon to_evening interregional_economy" id="1_648Б_1592227620_1592242920" data-info="Jun 15, 2020;Jun 15, 2020" onclick="return { sort:{ 'start':1592227620, 'end':1592242920,'time':255,'price':10.04 } }">
        <td class="train_item train_info">
            <div class="train_inner">
                <i class="b-pic train_type interregional_economy"></i>
                <small class="train_id">648Б</small>
                <div class="train_name -map">
                    <a href="/ru/train/?train=648Б&from_exp=2100000&to_exp=2100100&date=2020-06-15&from=Минск&to=Гомель" class="train_text">Минск-Пассажирский&nbsp;&mdash; Гомель</a>&nbsp;                </div>
                <div class="train_description">Межрегиональные линии экономкласса</div>                <div class="train_about">
                                        <i class="b-spec spec_reserved" title="Возможна электронная регистрация"></i>
                                                                                <i class="b-spec spec_speed" title="Скорый поезд"></i>
                                    </div>
            </div>
        </td>
        <td class="train_item train_start">
            <span class="hidden">16897</span>
            <b class="train_start-time">16:27</b>
            <a href="/ru/station/?station=Минск&exp=2100000&date=2020-06-15" class="train_start-place -map">Минск</a>
        </td>
        <td class="train_item train_end">
            <span class="hidden">32197</span>
			<b class="train_end-time">20:42</b>
            <a href="/ru/station/?station=Гомель&exp=2100100&date=2020-06-15" class="train_end-place -map">Гомель</a>
        </td>
        <td class="train_item train_time">
            <span class="hidden">255</span>
            <span class="train_time-total">4 ч 15 мин</span>
        </td>
        <td class="train_item train_halts regional_only everyday_regional_only hidden">
            
        </td>
        <td class="train_item train_days regional_only hidden">
			ежедневно        </td>
        <td class="train_item train_details non_regional_only" colspan="2">
			<span class="hidden">10.04</span><ul class="train_details-group"><li class="train_note">Сидячий</li><li class="train_place"><a class="train_seats lnk" data-get="/ru/ajax/route/car_places/?from=2100000&to=2100100&date=2020-06-15&train_number=648%D0%91&car_type=2">41</a><br /></li><li class="train_price"><span>10,04</span>&nbsp;<span>руб.</span><br /></li></ul><ul class="train_details-group"><li class="train_note">Плацкартный</li><li class="train_place"><a class="train_seats lnk" data-get="/ru/ajax/route/car_places/?from=2100000&to=2100100&date=2020-06-15&train_number=648%D0%91&car_type=3">183</a><br /></li><li class="train_price"><span>10,04</span>&nbsp;<span>руб.</span><br /></li></ul><ul class="train_details-group"><li class="train_note">Купе</li><li class="train_place"><a class="train_seats lnk" data-get="/ru/ajax/route/car_places/?from=2100000&to=2100100&date=2020-06-15&train_number=648%D0%91&car_type=4">22</a><br /></li><li class="train_price"><span>13,92</span>&nbsp;<span>руб.</span><br /></li></ul>        </td>
    </tr><!-- // b-train -->
                                                                                    <!-- -->


        <tr class="b-train w_places car_type_2 car_type_3 car_type_4 from_aternoon to_night interregional_economy" id="1_670Б_1592230260_1592254980" data-info="Jun 15, 2020;Jun 16, 2020" onclick="return { sort:{ 'start':1592230260, 'end':1592254980,'time':412,'price':7.74 } }">
        <td class="train_item train_info">
            <div class="train_inner">
                <i class="b-pic train_type interregional_economy"></i>
                <small class="train_id">670Б</small>
                <div class="train_name -map">
                    <a href="/ru/train/?train=670Б&from_exp=2100000&to_exp=2100100&date=2020-06-15&from=Минск&to=Гомель" class="train_text">Минск-Пассажирский&nbsp;&mdash; Гомель</a>&nbsp;                </div>
                <div class="train_description">Межрегиональные линии экономкласса</div>                <div class="train_about">
                                        <i class="b-spec spec_reserved" title="Возможна электронная регистрация"></i>
                                                                                <i class="b-spec spec_speed" title="Скорый поезд"></i>
                                    </div>
            </div>
        </td>
        <td class="train_item train_start">
            <span class="hidden">19537</span>
            <b class="train_start-time">17:11</b>
            <a href="/ru/station/?station=Минск&exp=2100000&date=2020-06-15" class="train_start-place -map">Минск</a>
        </td>
        <td class="train_item train_end">
            <span class="hidden">44257</span>
			<b class="train_end-time">00:03<span class="train_end-day">, 16 июня</span></b>
            <a href="/ru/station/?station=Гомель&exp=2100100&date=2020-06-15" class="train_end-place -map">Гомель</a>
        </td>
        <td class="train_item train_time">
            <span class="hidden">412</span>
            <span class="train_time-total">6 ч 52 мин</span>
        </td>
        <td class="train_item train_halts regional_only everyday_regional_only hidden">
            
        </td>
        <td class="train_item train_days regional_only hidden">
			ежедневно        </td>
        <td class="train_item train_details non_regional_only" colspan="2">
			<span class="hidden">7.74</span><ul class="train_details-group"><li class="train_note">Сидячий</li><li class="train_place"><a class="train_seats lnk" data-get="/ru/ajax/route/car_places/?from=2100000&to=2100100&date=2020-06-15&train_number=670%D0%91&car_type=2">5</a><br /></li><li class="train_price"><span>7,74</span>&nbsp;<span>руб.</span><br /></li></ul><ul class="train_details-group"><li class="train_note">Плацкартный</li><li class="train_place"><a class="train_seats lnk" data-get="/ru/ajax/route/car_places/?from=2100000&to=2100100&date=2020-06-15&train_number=670%D0%91&car_type=3">347</a><br /></li><li class="train_price"><span>11,89</span>&nbsp;<span>руб.</span><br /></li></ul><ul class="train_details-group"><li class="train_note">Купе</li><li class="train_place"><a class="train_seats lnk" data-get="/ru/ajax/route/car_places/?from=2100000&to=2100100&date=2020-06-15&train_number=670%D0%91&car_type=4">60</a><br /></li><li class="train_price"><span>16,46</span>&nbsp;<span>руб.</span><br /></li></ul>        </td>
    </tr><!-- // b-train -->
                                                            <!-- -->


        <tr class="b-train w_places car_type_2 from_evening to_evening interregional_business" id="1_708Б_1592236800_1592247000" data-info="Jun 15, 2020;Jun 15, 2020" onclick="return { sort:{ 'start':1592236800, 'end':1592247000,'time':170,'price':14.54 } }">
        <td class="train_item train_info">
            <div class="train_inner">
                <i class="b-pic train_type interregional_business"></i>
                <small class="train_id">708Б</small>
                <div class="train_name -map">
                    <a href="/ru/train/?train=708Б&from_exp=2100000&to_exp=2100100&date=2020-06-15&from=Минск&to=Гомель" class="train_text">Минск-Пассажирский&nbsp;&mdash; Гомель</a>&nbsp;                </div>
                <div class="train_description">Межрегиональные линии бизнес-класса</div>                <div class="train_about">
                                        <i class="b-spec spec_reserved" title="Возможна электронная регистрация"></i>
                                                            <i class="b-spec spec_comfort" title="Фирменный поезд"></i>
                                                            <i class="b-spec spec_speed" title="Скорый поезд"></i>
                                    </div>
            </div>
        </td>
        <td class="train_item train_start">
            <span class="hidden">26077</span>
            <b class="train_start-time">19:00</b>
            <a href="/ru/station/?station=Минск&exp=2100000&date=2020-06-15" class="train_start-place -map">Минск</a>
        </td>
        <td class="train_item train_end">
            <span class="hidden">36277</span>
			<b class="train_end-time">21:50</b>
            <a href="/ru/station/?station=Гомель&exp=2100100&date=2020-06-15" class="train_end-place -map">Гомель</a>
        </td>
        <td class="train_item train_time">
            <span class="hidden">170</span>
            <span class="train_time-total">2 ч 50 мин</span>
        </td>
        <td class="train_item train_halts regional_only everyday_regional_only hidden">
            
        </td>
        <td class="train_item train_days regional_only hidden">
			ежедневно        </td>
        <td class="train_item train_details non_regional_only" colspan="2">
			<span class="hidden">14.54</span><ul class="train_details-group"><li class="train_note">Сидячий</li><li class="train_place"><a class="train_seats lnk" data-get="/ru/ajax/route/car_places/?from=2100000&to=2100100&date=2020-06-15&train_number=708%D0%91&car_type=2">3</a><br /><a class="train_seats lnk" data-get="/ru/ajax/route/car_places/?from=2100000&to=2100100&date=2020-06-15&train_number=708%D0%91&car_type=2">134</a><br /></li><li class="train_price"><span>20,16</span>&nbsp;<span>руб.</span><br /><span>14,54</span>&nbsp;<span>руб.</span><br /></li></ul>        </td>
    </tr><!-- // b-train -->
                                                            <!-- -->


        <tr class="b-train w_places car_type_3 from_evening to_morning interregional_economy" id="1_632Б_1592254560_1592283240" data-info="Jun 15, 2020;Jun 16, 2020" onclick="return { sort:{ 'start':1592254560, 'end':1592283240,'time':478,'price':11.89 } }">
        <td class="train_item train_info">
            <div class="train_inner">
                <i class="b-pic train_type interregional_economy"></i>
                <small class="train_id">632Б</small>
                <div class="train_name -map">
                    <a href="/ru/train/?train=632Б&from_exp=2100000&to_exp=2100100&date=2020-06-15&from=Минск&to=Гомель" class="train_text">Гродно&nbsp;&mdash; Гомель</a>&nbsp;                </div>
                <div class="train_description">Межрегиональные линии экономкласса</div>                <div class="train_about">
                                        <i class="b-spec spec_reserved" title="Возможна электронная регистрация"></i>
                                                                                <i class="b-spec spec_speed" title="Скорый поезд"></i>
                                    </div>
            </div>
        </td>
        <td class="train_item train_start">
            <span class="hidden">43837</span>
            <b class="train_start-time">23:56</b>
            <a href="/ru/station/?station=Минск&exp=2100000&date=2020-06-15" class="train_start-place -map">Минск</a>
        </td>
        <td class="train_item train_end">
            <span class="hidden">72517</span>
			<b class="train_end-time">07:54<span class="train_end-day">, 16 июня</span></b>
            <a href="/ru/station/?station=Гомель&exp=2100100&date=2020-06-15" class="train_end-place -map">Гомель</a>
        </td>
        <td class="train_item train_time">
            <span class="hidden">478</span>
            <span class="train_time-total">7 ч 58 мин</span>
        </td>
        <td class="train_item train_halts regional_only everyday_regional_only hidden">
            
        </td>
        <td class="train_item train_days regional_only hidden">
			ежедневно        </td>
        <td class="train_item train_details non_regional_only" colspan="2">
			<span class="hidden">11.89</span><ul class="train_details-group"><li class="train_note">Плацкартный</li><li class="train_place"><a class="train_seats lnk" data-get="/ru/ajax/route/car_places/?from=2100000&to=2100100&date=2020-06-15&train_number=632%D0%91&car_type=3">93</a><br /></li><li class="train_price"><span>11,89</span>&nbsp;<span>руб.</span><br /></li></ul>        </td>
    </tr><!-- // b-train -->
            </tbody>
        </table>
		
		<div class="schedule_legend">
			<span class="schedule_legend-item" title="На данный поезд Вы можете выполнить электронную регистрацию.
Электронная регистрация означает, что Вам не нужно будет получать проездные документы (билеты) в кассе Белорусской железной дороги. Посадка на поезд при электронной регистрации будет осуществляться при предъявлении проводнику вагона документа, удостоверяющего личность пассажира, указанного в  заказе на покупку проездных документов (билетов)"><i class="b-spec spec_reserved"></i> Возможна электронная регистрация</span>
			<span class="schedule_legend-item"><i class="b-spec spec_comfort"></i> Фирменный поезд</span>
			<span class="schedule_legend-item"><i class="b-spec spec_speed"></i> Скорый поезд</span>
		</div>
		<div class="schedule_footer test2">
			<div class="b-btn small-white"><i class="btn_crn"></i>
				<i class="btn_ico print"></i>
				<a class="btn_txt" href="javascript:void(0);" onclick="do_print('/ru/route/?from=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&from_exp=&from_esr=&to=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to_exp=&to_esr=&date=2020-06-15&print=true')" target="_blank">Распечатать маршрут</a>
			</div><!-- // b-btn -->

            			<div class="b-btn small-white"><i class="btn_crn"></i>
				<a id="TRANSFER_ROUTES_BTN" class="btn_txt" href="/ru/routemulti/?path=ru%2Froute%2F&from=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&from_exp=&from_esr=&to=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to_exp=&to_esr=&date=2020-06-15">Посмотреть маршруты с пересадками</a>
			</div><!-- // b-btn -->
            		</div>
		<script type="text/javascript">
(document).ready(function(){
	setTimeout(function(){ ('#PopupRefresh').show(); }, 1800000);
});
</script>

<div class="b-refresh popup hidden" id="PopupRefresh">
	<div class="refresh_inner">
		<h2 class="refresh_title">Результаты поиска могли устареть</h2>
		<div class="refresh_content">
			<div class="refresh_text">
								<span class="dash" onclick="location.reload()">Обновите результаты</span>
								или
				<span class="dash" onclick="location.href='/ru/'">перейдите на главную страницу</span>
			</div>
		</div>
	</div>
	</div>
			</div><!-- // b-schedule -->

	<div class="b-ugc">
		<p><b>*Внимание!</b> Стоимость проездного документа указана в белорусских рублях на заданную дату отправления для одного взрослого пассажира (в указанную стоимость не включены тарифные сборы за оформление проездных документов).</p>
<p>Свои пожелания и замечания по вопросам, связанным с работой системы &laquo;Расписание движения поездов&raquo;, Вы можете направить по адресу <a href="mailto:okir@cnti.rw.by, ktc@upr.mnsk.rw.by, cnti_martusevich@upr.mnsk.rw.by, om@db.by" >okir@cnti.rw.by</a>.</p>
<p>Свои пожелания и замечания по вопросам, связанным с работой системы продажи проездных документов через Интернет poezd.rw.by, Вы можете направить по адресу <a href="mailto:brail@rw.by, matushina@upr.mnsk.rw.by" >brail@rw.by</a>.</p>
<p>В случае обнаружения неточностей в расписании движения поездов региональных линий экономкласса, городских линий, Вы можете направить их по адресу <a href="mailto:ktc@upr.mnsk.rw.by, cnti_martusevich@upr.mnsk.rw.by, matushina@upr.mnsk.rw.by, rasp@ktc.by" >rasp@ktc.by</a>.</p>


	</div><!-- // b-ugc -->

</div><!-- // g-content -->
<script type="text/javascript">
    set_regional_flag = false;
	</script>

<script type="text/template" id="PopupPlacesInnerTpl">
	<div class="popup_inner" style="display:none">
	<h3 class="popup_title">Свободные места</h3>

		<form class="b-places" action="">
			<div class="places_train"><i class="b-pic train_type {{trainType}}"></i> {{trainNumber}} {{from}} &mdash; {{to}} <small>{{isFastTrain == '' ? '' : 'Скорый поезд'}}</small></div>
			<div class="places_details">
				<div class="places_route {{route.hidden == 'false' ? 'hidden' : ''}}">Маршрут следования пассажира: <b>{{route.from}} &mdash; {{route.to}}</b></div>
				<table class="places_route-details">
					<tr>
						<th class="places_route-start">Отправление:</th>
						<th class="places_route-end">Прибытие:</th>
						<th class="places_route-time{{route.timeInWay == '' ? ' hidden' : ''}}">Время в пути:</th>
					</tr>
					<tr>
						<td class="places_route-start">
							{{route.startDate}} {{route.startTime}} ({{route.startDateFormatted}})
						</td>
						<td class="places_route-end">{{route.endDate}} {{route.endTime}}</td>
						<td class="places_route-time{{route.timeInWay == '' ? ' hidden' : ''}}">{{route.timeInWay}}</td>
					</tr>
				</table>
			</div>
			<div class="places_content{{isSimplePopup ? ' hidden': ''}}">
				{{#tariffs}}
				<div class="places_wagon">
					<div class="places_wagon-type">
						<h4{{type == '' ? ' class=hidden' : ''}}>{{type}}</h4>
						<span class="hidden car_type_box">{{typeAbbr}}</span>
						<span class="hidden car_type_int_box">{{typeAbbrInt}}</span>
						<div class="b-help" style="{{type == '' ? 'display:none' : ''}}"><i class="help_ico"></i>
							<div class="help_inner"><i class="help_arr"></i>
								<div class="help_content">{{{description}}}</div>
							</div>
						</div>
						<div class="places_description{{sign ? '' : 'hidden'}}">{{sign || ''}}</div>
					</div>
					<div class="places_wagon-head">
						<div class="places_wagon-text">Номер вагона:
							<div class="b-help"><i class="help_ico"></i>
								<div class="help_inner"><i class="help_arr"></i>
									<div class="help_content">Для получения детализированной информации по выбранному вагону перейдите по ссылке с номером вагона.</div>
								</div>
							</div>
						</div>
						<ul class="places_wagon-numbers">
							{{#cars}}
							<li class="places_wagon-number">
								<span class="car_number_box">{{number}}</span> <sup>({{totalPlaces}})</sup>
								<span class="car_hash_box hidden">{{hash}}</span>
							</li>
							{{/cars}}
						</ul>
					</div>
					<div class="places_wagon-body">
						{{#cars}}
						<div class="places_wagon-tab">
							<div class="places_wagon-side">
								<div class="places_ttl{{../price_byn == 0 ? ' hidden' : ''}}">Тариф:</div>
								<div class="places_val{{../price_byn == 0 ? ' hidden' : ''}}">
									<span><b>{{../price_byn || ''}}{{../price_byn2 == '' ? '' : ' / '}}{{../price_byn2 || ''}}{{../price_byn == '' ? '' : ' руб.'}}</b></span>
									<div class="b-help{{../price ? '' : ' hiddeni'}}"><i class="help_ico"></i>
										<div class="help_inner"><i class="help_arr"></i>
											<div class="help_content">Стоимость проездного документа указана для одного взрослого пассажира (в указанную стоимость не включены тарифные сборы за оформление проездных документов)</div>
										</div>
									</div>
								</div>
								<div class="places_ttl{{carrier == '' ? ' hidden' : ''}}">Перевозчик: {{carrier}}</div>
								<div class="places_ttl{{owner == '' ? ' hidden' : ''}}">Принадлежность вагона: {{owner}}</div>
								<span class="places_wagon-trigger {{imgSrc ? '' : 'hidden'}} {{../../hideCarImage ? 'hidden' : ''}}">схема вагона</span>
							</div>
							<div class="places_wagon-main">
								<div class="places_ttl">Свободных мест: <b class="places_total-free">{{totalFree}}</b>
                                    {{../typeAbbrPostfix ? '(' : ''}}{{{../isBicycle ? '<span class="icon-bicycle"></span>&nbsp;' : ''}}}{{../typeAbbrPostfix}}{{../typeAbbrPostfix ? ')' : ''}}
                                </div>
								<div class="places_val">
									{{{upperPlaces ? '<span class="places_free">
										верхних &mdash; ' : ''}}}{{upperPlaces || ''}}
									{{{upperPlaces ? '</span>' : ''}}}
									{{{lowerPlaces ? '<span class="places_free">
										нижних &mdash; ' : ''}}}{{lowerPlaces || ''}}
									{{{lowerPlaces ? '</span>' : ''}}}
									{{{upperSidePlaces ? '<span class="places_free">
										верхних боковых &mdash; ' : ''}}}{{upperSidePlaces || ''}}
									{{{upperSidePlaces ? '</span>' : ''}}}
									{{{lowerSidePlaces ? '<span class="places_free">
										нижних боковых &mdash; ' : ''}}}{{lowerSidePlaces || ''}}
									{{{lowerSidePlaces ? '</span>' : ''}}}
								</div>
								<div class="places_ttl{{emptyPlaces == '' ? ' hidden' : ''}}">Номера свободных мест:</div>
								<div class="places_val{{emptyPlaces == '' ? ' hidden' : ''}}"><span>{{emptyPlaces.join(', ')}}</span></div>

								<div class="places_ttl{{noSmoking ? '': ' hidden'}}">
                                    <span class="icon-nosmok"></span>
                                    Внимание! Вагон для некурящих.
                                </div>

								<a class="{{../../allow_order ? 'submit-btn' : 'disabled'}} b-btn middle-yellow {{../price ? '' : ' hiddeni'}} {{../is_car_for_disabled ? ' hiddeni' : ''}}" href="javascript:void(0);">
									<span class="btn_txt">Перейти к покупке</span><i class="btn_crn"></i>
								</a>
								{{{../../allow_order ? '' : '<div class="b-note"><i class="note_pic"></i><span>Оформление заказа в сутки отправления поезда осуществляется не позднее, чем за 1 час до отправления поезда со станции посадки пассажира.</span></div>'}}}

								<div class="places_wagon-legend {{hideLegend ? 'hidden' : ''}}">
									<div class="places_ttl">Признаки наличия свободных мест в:</div>
									<div class="places_val">Ц - целом купе &nbsp;&nbsp;&nbsp; С - смешанном купе &nbsp;&nbsp;&nbsp; М – мужском купе &nbsp;&nbsp;&nbsp; Ж - женском купе</div>
								</div>
							</div>
							<div class="places_wagon-map" style="display:none">
								<img class="places_wagon-pic" src="{{imgSrc}}" alt=""/>
								<div class="b-note">
									<i class="note_pic"></i>
									<span>ВНИМАНИЕ!  Схема расположения мест в вагоне СТАНДАРТНОГО типа. <br />Схема расположения мест в вагоне может отличаться от стандартной</span>
								</div>
							</div>
						</div>
						{{/cars}}
					</div>
				</div>
				{{/tariffs}}
			</div>
			<div class="b-note">
				<i class="note_pic"></i>
				<span class="{{isSimplePopup ? 'hidden' : ''}}">Стоимость проездного документа указана для одного взрослого пассажира (в указанную стоимость не включены тарифные сборы за оформление проездных документов)</span>
				<span class="{{isSimplePopup ? '' : 'hidden'}}">Проездные документы можно оформить только в международных кассах</span>
			</div>
		</form>
		<form method="POST" action="https://poezd.rw.by/wps/PA_eTicketInquire/PaymentRedirect" id="order_ticket_form">
			<input type="hidden" name="ClientNumber" value="1">
			<input type="hidden" name="DepartureStation" value="{{fromCode}}">
			<input type="hidden" name="ArrivalStation" value="{{toCode}}">
			<input type="hidden" name="TrainNumber" value="{{trainNumber}}">
			<input type="hidden" name="DepartureDate" value="{{route.startDateForRequest}}">
			<input type="hidden" name="DepartureTime" value="{{route.startTime}}">
			<input type="hidden" name="CarriageNumber" class="car_number_input" value="">
			<input type="hidden" name="ServiceClass" class="car_type_input" value="">
			<input type="hidden" name="ServiceClassInt" class="car_type_int_input" value="">
			
			<input type="hidden" name="CancelUrl" value="http://rasp.rw.by/ru/route/?path=ru%2Froute%2F&from=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&from_exp=&from_esr=&to=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to_exp=&to_esr=&date=2020-06-15">
			<input type="hidden" name="SuccessUrl" value="http://rasp.rw.by/ru">
			<input type="hidden" name="CheckValue" value="" class="car_hash_input">
			
		</form>
	</div>
</script>
<script type="text/template" id="PopupPlacesTpl">
	<div class="b-overlay">
        <div class="b-popup b-popup_places" id="Popupplaces">
			<div class="popup_loader"></div>
            <a class="popup_close" title="Закрыть"></a>
        </div>
    </div>
</script>

					<div class="b-page-tools">
	    <div class="page-tools_print" onclick="window.open('/ru/route/?path=ru%2Froute%2F&from=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&from_exp=&from_esr=&to=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to_exp=&to_esr=&date=2020-06-15&print=true', '_')">
        <i class="page-tools_pic"></i><span class="dot">Распечатать</span>
    </div>
	    <div class="page-tools_up" onclick="utils.scrollUp()">
        <i class="page-tools_pic"></i><span class="dot">Наверх</span>
    </div>
</div>
				</div><!-- // g-main -->
				<div class="g-main_bottom">
        <div class="b-feedback">
        <div class="feedback_inner" id="feedback_inner" data-popup="PopupFeedback">
            <i class="feedback_pic"></i>
            <span class="feedback_review dot">Обратная связь</span>
        </div>
    </div><!-- // b-feedback -->
    
    <div class="b-misc">
        <div class="misc_item"><a class="misc_link" href="/ru/companies/">Компании-перевозчики</a></div>
        <div class="misc_item"><a class="misc_link" href="/ru/dev/">Для разработчиков</a></div>        <div class="misc_item"><a class="misc_link" href="/m/ru/route/?path=ru%2Froute%2F&from=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&from_exp=&from_esr=&to=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to_exp=&to_esr=&date=2020-06-15&s=mobile">Мобильная версия</a></div>
    </div><!-- // b-misc -->

</div><!-- // g-footer_inner -->

			</div>
		</div>
		<div class="g-footer">
			<div class="g-footer_bottom">

				<div class="b-copy">
					<div class="copy_owner">&copy; 2020  Белорусская железная дорога</div>
					<div class="copy_madein">Создание сайта <a href="http://db.by">Студия Борового</a></div>
				</div><!-- // b-copy -->
			</div><!-- // g-footer_bottom -->
		</div>
		<div class="b-overlay">
			<div class="popup popup-105 " id="PopupHelper">
	<div class="wrapper">
		<i class="helper_close popup_close close" title="Закрыть"></i>
		<div class="station-phone">
			<h3>Контакт-центр Белорусской железной дороги по вопросам пассажирских перевозок</h3>
			<div class="phones-container">
				<div class="phones">
					<div class="tel-wrap">
						<div class="num-name">телефон</div>
						<span class="num">105</span><span class="icon-list"><span class="icon-item"><img src="/media/i/105-beltelecom-big.png" alt="beltelecom"></span><span class="icon-item"><img src="/media/i/105-mts-big.png" alt="mts"></span><span class="icon-item"><img src="/media/i/105-velcom-big.png" alt="velcom"></span><span class="icon-item"><img src="/media/i/105-life-big.png" alt="life"></span></span>
					</div>
                    						<div class="full-info"><a href="https://www.rw.by/corporate/contacts/treatment_of_citizens/contact_center/">электронное сообщение</a></div>
									</div>
			</div>
		</div>
		<div class="depos-phones-container">
            <div class="depos-phones with-clear wysiwyg"> 
  <ul> 
    <li> <a href="https://www.rw.by/help/perechen_voprosov_po_kotorim_v/" >Перечень вопросов</a>, по которым Вы можете обратиться к работникам Контакт-центра</li>
   
    <li> <a href="https://www.rw.by/passengers_services/railway_stations/" >Контактная инфомация&nbsp; и услуги</a>, предоставляемые железнодорожными вокзалами&nbsp;</li>
   
    <li>Бронирование билетов по телефону 105 <span class="image-wrap"><img alt="beltelecom" src="/media/i/105-beltelecom.png"  /><img alt="mts" src="/media/i/105-mts.png"  /><img alt="velcom" src="/media/i/105-velcom.png"  /><img alt="life" src="/media/i/105-life.png"  /></span> </li>
   
    <li>Служба поддержки пассажиров Белорусской железной дороги по телефону 151 <span class="image-wrap"><img alt="beltelecom" src="/media/i/105-beltelecom.png"  /><img alt="mts" src="/media/i/105-mts.png"  /><img alt="velcom" src="/media/i/105-velcom.png"  /><img alt="life" src="/media/i/105-life.png"  /></span>, электронному адресу <a href="mailto:brail@rw.by" >brail@rw.by</a> 
      <div class="messengers"> 
        <div class="messengers__text">и в мессенджерах</div>
       
        <div class="messengers__list"> 
         <div class="messengers__item"> <a class="messengers__link" href="https://wa.me/375298352547" target="_blank" title="whatsapp" > <img src="/media/i/popup-whatsapp.svg"  /> </a> </div>
         
          <div class="messengers__item"> <a class="messengers__link" href="viber://pa?chatURI=brailbot" target="_blank" title="viber" > <img src="/media/i/popup-viber.svg"  /> </a> </div>
         
          <div class="messengers__item"> <a class="messengers__link" href="https://t.me/brail_bot" target="_blank" title="telegram" > <img src="/media/i/popup-telegram.svg"  /> </a> </div>
         </div>
       </div>
     </li>
  
    <li> 		
      <div class="messengers__text"> 			Справочные услуги для лиц с нарушением слуха&nbsp;&nbsp;<span class="image-wrap"><img alt="beltelecom" src="/media/i/skype_logo(1).png"  /></span> <a href="skype:live:9191-belog?call" target="_blank" title="minsk" >Минск</a>, <a href="skype:live:grodno9191?call" target="_blank" title="grodno" >Гродно</a>, <a href="skype:live:85ae74bcf284695f" target="_blank" title="gomel" >Гомель</a></div>
     	</li>
   </ul>
 
  <p><strong>Поддержка физически ослабленных лиц по телефонам (ежедневно, круглосуточно)</strong></p>
 
  <p><span class="image-wrap"><img alt="beltelecom" src="/media/i/105-beltelecom.png"  /></span> (+375 222) 39 25 47</p>
 
  <p><span class="image-wrap"><img alt="mts" src="/media/i/105-mts.png"  /></span> (+375 29) 739 25 47</p>
 
  <p><span class="image-wrap"><img alt="velcom" src="/media/i/105-velcom.png"  /></span> (+375 29) 659 25 47</p>
 
  <p><span class="image-wrap"><img alt="life" src="/media/i/105-life.png"  /></span> (+375 25) 739 25 47</p>
 
  <p><b>Поддержка пассажиров, находящихся за пределами Республики Беларусь, по телефону</b> (+375 222) 39 25 47</p>
 </div>
		</div>
	</div>
</div><!-- // b-helper -->
			<div class="b-mailer popup" id="PopupFeedback">
	<div class="mailer_inner">
		<h2 class="mailer_title">Отзыв о работе сервиса</h2>
		<form class="b-form mailer_content" action="" method="POST" enctype="multipart/form-data">
			<div class="form_row required">
				<label class="form_title">Тема отзыва</label>
				<div class="form_field">
					<select class="form_select" name="subject" id="feedback_subject">
													<option value="" selected="selected" disabled="disabled">Выберите из списка</option>
													<option value="feedback">Отзыв</option>
													<option value="recommendation">Рекомендация</option>
											</select>
					<small class="form_helper"></small>
                    <i class="btn-clear"></i>
				</div>
				<i class="form_validate"></i>
			</div>
			<div class="form_row required">
				<label class="form_title">Вас зовут</label>
				<div class="form_field">
					<input class="form_input" type="text" name="name" id="feedback_name" value=""/>
					<small class="form_helper"></small>
                    <i class="btn-clear"></i>
				</div>
				<i class="form_validate"></i>
			</div>
			<div class="form_row required">
				<label class="form_title">Ваш отзыв</label>
				<div class="form_field">
					<textarea class="form_area" name="message" id="feedback_message"></textarea>
					<small class="form_helper"></small>
                    <i class="btn-clear"></i>
				</div>
				<i class="form_validate"></i>
			</div>
			<div class="form_row required">
				<label class="form_title">Эл.почта</label>
				<div class="form_field">
					<input class="form_input" type="text" name="contacts" id="feedback_contact" value=""/>
					<small class="form_helper"></small>
                    <i class="btn-clear"></i>
				</div>
				<i class="form_validate"></i>
			</div>
			<div class="form_row">
				<label class="form_title">Прикрепить файл</label>
				<div class="form_field">
					<input class="form_input" type="file" name="file" id="feedback_file"/>
					<small class="form_helper"></small>
				</div>
				<i class="form_validate"></i>
			</div>
			<div class="form_submit">

				<div class="b-btn large-yellow disabled">
					<span class="btn_txt">Отправить отзыв</span><i class="btn_crn"></i>
					<input class="btn_hidden w100" type="submit" name="feedback_submit" disabled/>
				</div><!-- // b-btn -->

				<div class="form_empty">
					<span class="form_empty-title">Осталось заполнить:</span>
				</div>
			</div>
			<div class="hidden">
				<input type="text" name="field_1" value="" />
				<input type="text" name="field_2" value="445DD124-EBB6-4ad2-802C-0C5BEFF64A95" />
			</div>
		</form>
	</div>
	<i class="mailer_close popup_close" title="Закрыть"></i>
</div><!-- // b-mailer -->

<div class="b-alert popup" id="PopupAlert">
	<div class="alert_inner">
		<h2 class="alert_title">Отзыв отправлен</h2>
		<div class="alert_content">
			<div class="alert_text">Спасибо! Ваш отзыв помогает нам делать электронное расписание лучше.</div>
			<div class="alert_footer">

				<div class="b-btn large-yellow">
					<span class="btn_txt">Закрыть</span><i class="btn_crn"></i>
					<input class="btn_hidden w100" type="button"/>
				</div><!-- // b-btn -->

			</div>
		</div>
	</div>
	<i class="alert_close popup_close" title="Закрыть"></i>
</div>
			<div class="b-map popup" id="PopupMap">
	<div class="map_inner">
		<h2 class="map_title">Найти станцию или населенный пункт</h2>
		<div class="map_main">
			<div class="map_side expanded">
				<a class="map_geo">
					<i class="map_geo-pic"></i>
					<span class="dot">Определить местоположение</span>
				</a>
				<div class="map_result">
					<span class="no_data hidden">Внимание! Поиск только по территории РБ!</span>
					<ul class="map_items">
						<li class="map_item hidden">
							<i class="map_cnt"></i>
							<a href="javascript:;"></a>
							<div class="map_descr"></div>
						</li>
					</ul>
				</div>
				<div class="map_side-trigger"></div>
			</div>
			<div class="map_content">
				<div class="map_view" id="map4" style="width: 682px; height: 540px"></div>
			</div>
		</div>
	</div>
	<i class="map_close popup_close" title="Закрыть"></i>
	<input type="hidden" id="trigger_field" />
</div><!-- // b-map -->

			<div id="cityQuestion" class="city-question popup">
    <div class="popup_close close_icon"></div>
	<div class="wrap-inner">
		<h2 class="title-inner">Ваша станция — ?</h2>
		<div class="controls">
			<div class="b-btn large-yellow">
				<span class="btn_txt">Да</span><i class="btn_crn"></i>
				<input class="btn_hidden w100" type="submit" onclick="location.href='/ru/tablo/?set_exp='">
			</div>
			<a class="lnk-change popup_close" href="#" data-popup="citySelect"><span>Нет, изменить</span></a>
		</div>
	</div>
</div>
			<div id="citySelect" class="city-select popup">
    <div class="popup_close close_icon"></div>
	<div class="wrap-inner">
		<h2 class="title-inner">Популярные станции</h2>
		<div class="b-popular">
			<div class="popular_list">
												<div class="popular_item">
										<a href="/ru/tablo/?set_exp=2100035">Брест-Центральный</a>
									</div>
																<div class="popular_item">
										<a href="/ru/tablo/?set_exp=2100001">Минск-Пассажирский</a>
									</div>
																<div class="popular_item">
										<a href="/ru/tablo/?set_exp=2100100">Гомель</a>
									</div>
											</div>
		</div>
	</div>
</div>
			<div class="b-alert popup" id="PopupDevAlert">
				<div class="alert_inner">
					<h2 class="alert_title">Заявка принята!</h2>
					<div class="alert_content">
						<div class="alert_footer">

							<div class="b-btn large-yellow">
								<span class="btn_txt">Закрыть</span><i class="btn_crn"></i>
								<input class="btn_hidden w100" type="button"/>
							</div><!-- // b-btn -->

						</div>
					</div>
				</div>
				<i class="alert_close popup_close" title="Закрыть"></i>
			</div>
		</div><!-- // overlay -->
		<noscript class="b-bisable-js">Для полной функциональности этого сайта необходимо включить JavaScript. Вот <a rel="nofollow" href="http://www.enable-javascript.com/ru/" target="_blank"> инструкции, как включить JavaScript в вашем браузере</a>.</noscript>
	</body>
</html>
''';
