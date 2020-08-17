var testPage1 = '''
<!DOCTYPE html>
<html lang="ru-RU" prefix="og:https://ogp.me/ns#">
<head data-special-styles="/media/css/special.min.css">
    <meta charset="UTF-8">
    <meta name="format-detection" content="telephone=no">
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
    <meta name="cmsmagazine" content="76c5fb8872e8328840d5f6d32da019af">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no, user-scalable=no" id="metaViewport">
    <meta property="og:title" content="Услуги пассажирам" />
    <meta property="og:type" content="article" />
    <meta property="og:url" content="https://pass.rw.by/ru/route"/>
    <meta property="og:image" content="https://pass.rw.by/media/img/logo.svg" />
    <meta property="og:site_name" content="pass.rw.by" />
    <title>Услуги пассажирам</title>
    <link rel="icon" type="image/png" href="/media/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="/media/apple-touch-icon.png">
    <link rel="stylesheet" href="/media/css/app.min.css?v=1.0.20" id="mainStyles">
    <link rel="stylesheet" href="/media/css/override.css">
    <script type="text/javascript">
        msg_field_required = 'Заполните поле';
        root = '/ru/';
        root_no_lang = '/';
        backend_map = 'https://georasp.rw.by';
        //backend_sppd4 = 'https://10.200.3.35/';
        backend_sppd4 = root  + 'ajax/sppd4/';
        backend_sppd4_apikey = 'c11f8d06e3e1594815b9c4ebaddf19a0';

        no_geo_location = 'Ваш браузер не поддерживает функцию определения местоположения.';
        max_calendar_days = 60;
        curent_page_url = 'ru/route';
        serverDate = new Date(Date.parse('2020-07-06T13:16:18+03:00')); //ISO 8601 Extended YYYY-MM-DDTHH:mm:ss.sssZ
        isUnauthorizedPurchaseAllowed = false; // Разрешена ли покупа для неавторизованных пользователей
        isUserAuth = false; // Авторизован ли пользователь
    </script>
    
        <!-- Google Tag Manager -->
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
            })(window,document,'script','dataLayer','GTM-5JMN954');</script>
        <!-- End Google Tag Manager -->
    
    <script src="/media/js/libs/modernizr-custom.min.js"></script>
    <script src="/media/js/libs/jquery-3.3.1.min.js"></script>
    <script src="/media/js/libs/jquery.touchSwipe.min.js"></script>
    <script src="/media/js/libs/current-device.min.js"></script>
    <script src="/media/js/libs/jquery.validate.min.js"></script>
    <script src="/media/js/libs/jquery.formstyler.min.js"></script>
    <script src="/media/js/libs/jquery.webui-popover-custom.min.js"></script>
    <script src="/media/js/libs/jquery.mCustomScrollbar-custom.min.js"></script>
    <script src="/media/js/libs/jquery-ui.custom.min.js?v=1.0.20"></script>
    <script src="/media/js/libs/jquery.maskedinput.min.js"></script>
    <script src="/media/js/libs/jquery-ui.datepicker.ru.min.js"></script>
    <script src="/media/js/libs/markerclusterer.min.js"></script>
    <script src="/media/js/libs/bootstrap-notify.min.js"></script>
    <script src="/media/js/libs/slick.min.js"></script>
    <link rel="stylesheet" href="/media/css/libs/magnific-popup.min.css">
    <script src="/media/js/libs/jquery.magnific-popup.min.js"></script>
    <script src="/media/js/map4.js?v=0.1.0.2020-02-04"></script>
    <script src="/media/js/app.min.js?v=1.0.20"></script>
    <script src="/media/js/libs/special.min.js"></script>
    <script src="/media/js/route_filters.js"></script>
    <script src="/media/js/order.js"></script>
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



    <script type="text/javascript" src="https://georasp.rw.by/apimaps?key=9875f8b67aae8c23a520fda48c44befb&language=ru"></script>
    <script type="text/javascript" async src="/media/js/map5.js?v=0.1.0.2020-02-04"></script>
    <script type="text/javascript" async src="/media/js/map_functions.js?v=0.1.0.2020-02-04"></script>
    <script type="text/javascript">
        .ajaxSetup ({
            // Disable caching of AJAX responses
            cache: false
        });

            </script>
    <script> // Common i18n
    var WS_RW_APP = WS_RW_APP || {};
    WS_RW_APP.lang = WS_RW_APP.lang || {};
    WS_RW_APP.lang.Common = {
        from: "от",
        today: "сегодня",
        yesterday: "вчера",
        tomorrow: "завтра",
        everyday: "на все дни",
        months: [
                            "янв.",
                            "фев.",
                            "мар.",
                            "апр.",
                            "мая.",
                            "июня.",
                            "июля.",
                            "авг.",
                            "сент.",
                            "окт.",
                            "ноя.",
                            "дек.",
                    ]
    };
    WS_RW_APP.lang.OneRowMenu = {
        more: "Ещё"
    };

    .validator.messages = {
        required: "Заполните поле",
        remote: "Исправьте поля",
        email: "Некорректно заполнен email",
        url: "Введите корректный URL",
        date: "Введите правильную дату",
        dateISO: "Введите правильную дату (ISO)",
        birthday: "Неверная дата рождения",
        number: "Введите корректный номер",
        digits: "Введите только цифры",
        creditcard: "Введите корректный номер кредитной карты",
        equalTo: "Поля не совпадают",
        maxlength: .validator.format("Максимум {0} символов"),
        minlength: .validator.format("Минимум {0} символов"),
        rangelength: .validator.format("Введите значение длиной от {0} до {1} символов"),
        range: .validator.format("Введите значение между {0} и {1}"),
        max: .validator.format("Максимум {0}"),
        min: .validator.format("Минимум {0}"),
        requiredphone: "Заполните поле",
        minlenghtphone: "Заполните номер телефона полностью",
        documentNumber: "Некорректно заполены данные",
        login: "Некорректно заполены данные",
        latin: "Только латиница",
        extension: "Недопустимый формат файла",
        maxsize: "Недопустимый размер файла"
    };
</script>
</head>
<body class="ru js-off pm-close inner">

    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5JMN954"
                height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->


    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MM5CHB"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->



<div class="g-wrap" id="db">
    <div class="outer-bg pm-content">
        <div class="g-wrapper">
            <div class="g-wrapper_i">
                <header class="g-header">
    <div class="g-header_i">
        <div class="special-menu">
            <div class="special-menu__wrap clearfix">
                <div class="special-menu__fs">
                    <div class="special-menu__fs-title">Размер шрифта:</div><a class="special-menu__fs-btn special-menu__fs-btn--small" href="#" data-param="fontSize" data-value="special-fs-small"><span>A</span></a><a class="special-menu__fs-btn special-menu__fs-btn--medium" href="#" data-param="fontSize" data-value="special-fs-medium"><span>A</span></a><a class="special-menu__fs-btn special-menu__fs-btn--big" href="#" data-param="fontSize" data-value="special-fs-big"><span>A</span></a>
                </div>
                <div class="special-menu__themes">
                    <div class="special-menu__theme-title">Цвет сайта:</div><a class="special-menu__theme-btn special-menu__theme-btn--white" href="#" data-param="theme" data-value="special-theme-white"><span>Ц</span></a><a class="special-menu__theme-btn special-menu__theme-btn--black" href="#" data-param="theme" data-value="special-theme-black"><span>Ц</span></a><a class="special-menu__theme-btn special-menu__theme-btn--blue" href="#" data-param="theme" data-value="special-theme-blue"><span>Ц</span></a>
                </div>
                <div class="special-menu__settings"><a class="special-menu__settings-btn" href="#">Настройки</a></div>
            </div>
            <div class="special-menu__dropdown">
                <div class="special-menu__dropdown-main-title">Настройки</div>
                <div class="special-menu__font">
                    <div class="special-menu__dropdown-title">Шрифт:</div><a class="special-menu__font-btn" href="#" data-param="font" data-value="special-font-trebuchet"><span>Trebuchet MS</span></a><a class="special-menu__font-btn" href="#" data-param="font" data-value="special-font-georgia"><span>Georgia</span></a>
                </div>
                <div class="special-menu__ls">
                    <div class="special-menu__dropdown-title">Межбуквеное расстояние:</div><a class="special-menu__ls-btn" href="#" data-param="letterSpacing" data-value="special-ls-small"><span>Стандартное</span></a><a class="special-menu__ls-btn" href="#" data-param="letterSpacing" data-value="special-ls-medium"><span>Увеличенное</span></a><a class="special-menu__ls-btn" href="#" data-param="letterSpacing" data-value="special-ls-big"><span>Большое</span></a>
                </div>
                <div class="special-menu__theme-chooser">
                    <div class="special-menu__dropdown-title">Цветовая схема:</div>
                    <div class="special-menu__row">
                        <div class="special-menu__col"><a class="special-menu__theme-rect special-menu__theme-rect--white" href="#" data-param="theme" data-value="special-theme-white">
                                <div class="special-menu__theme-rect-wrap"><span>Чёрным по белому</span></div></a></div>
                        <div class="special-menu__col"><a class="special-menu__theme-rect special-menu__theme-rect--black" href="#" data-param="theme" data-value="special-theme-black">
                                <div class="special-menu__theme-rect-wrap"><span>Белым по чёрному</span></div></a></div>
                        <div class="special-menu__col"><a class="special-menu__theme-rect special-menu__theme-rect--blue" href="#" data-param="theme" data-value="special-theme-blue">
                                <div class="special-menu__theme-rect-wrap"><span>Тёмно-синим по голубому</span></div></a></div>
                    </div>
                </div>
                <div class="special-menu__dropdown-buttons"><a class="special-menu__reset-btn" href="#">Вернуть стандартные настройки</a><a class="special-menu__close-btn" href="#">Закрыть</a></div>
            </div>
        </div>
        <div class="header-top">
            <div class="lang">
                <ul class="list list-reset clearfix">
                                                                        <li class="item active"><span>Рус</span></li>
                                                                                                <li class="item"><a href="/be/?c=true">Бел</a></li>
                                                                                                <li class="item"><a href="/en/?c=true">Eng</a></li>
                                                            </ul>
            </div>
            <div id="Currency" class="currency">
                <a class="head js-current-currency" href="#" data-toggle="dropdown">BYN</a>
                <div class="dropdown">
                    <ul class="list list-reset clearfix">
                        <li class="item active"><a class="js-currency" data-currency-name='byn' href="#">BYN</a></li>
                        <li class="item"><a class="js-currency" data-currency-name='rub' href="#">RUB</a></li>
                        <li class="item"><a class="js-currency" data-currency-name='eur' href="#">EUR</a></li>
                        <li class="item"><a class="js-currency" data-currency-name='usd' href="#">USD</a></li>
                    </ul>
                </div>
            </div>
            <script>
                !function () {
                    'use strict';

                    (function () {
                        WS_RW_APP.Factory('Currency', {
                            block: ('#Currency')
                        });
                    });
                }();
            </script>
            <div class="contacts-head-4">
                <ul class="list list-reset break-word">
                    <li class="item"><a href="tel:105"><span>105</span></a></li>
                </ul>
            </div>
            <div class="spec-btn"><a href="#"><span>Версия для слабовидящих</span><span class="back-text">Обычная версия</span></a></div>
            <div class="head-search hide-print">
                <div class="backdrop"></div>
                <div class="wrap">
                    <div class="btn-open"></div>
                    <form class="search-form" action="/ru/search/" method="get">
                        <div class="form-wrap">
                            <input class="btn-search" type="submit" value="">
                            <input class="field" id="headSearch" type="search" placeholder="Поиск по сайту" name="q" maxlength="50" required="" value="">
                            <div class="btn-close"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="logo-png">
                <a class="pic" href="/ru/"><span class="pic-wrap"><img src="/media/img/logo.svg" alt="БелЖД" title="БелЖД"></span><span class="title">Онлайн-сервис по продаже билетов</span></a>
            </div>
            <div class="menu-drop-8 not-inited">
                <ul class="menu_level_1 break-word list-reset">
                    <li class="item_1"><a href="/ru/tablo/"><span class="icon svg-menu-drop-8-clock"></span><span>Онлайн-табло</span></a></li>
                    <li class="item_1 more"><span><span>Ещё</span><span class="icon"></span></span>
                        <div class="submenu">
                            <ul class="menu_level_2 list-reset"></ul>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="menu-drop-9">
                <ul class="menu_level_1 break-word list-reset">
                    <li class="item_1 tickets active" data-isBasketWasCleared="0">
                        <a href="/ru/order/payment/">
                            <span class="icon svg-menu-drop-9-ticket">
                                                            </span>
                            <span>Корзина заказов</span>
                        </a>
                                                <script>
                            !function () {
                                'use strict';

                                (window).on('load', function () {
                                    var block = ('.basket-hint');
                                    if (block.length > 0) {
                                        block.addClass('active');
                                    }
                                });
                            }();
                        </script>
                    </li>
                    <li class="item_1 cabinet">
                                                <a href="#" data-toggle="modal" data-target="#auth-popup" data-backdrop="static">
                            <span class="icon svg-menu-drop-9-profile"></span>
                            <span>Личный кабинет</span>
                        </a>
                                            </li>
                    <li class="item_1 info-link"><a class="js-open-help" href="#"><span class="icon svg-menu-drop-9-info"></span><span>Справка</span></a></li>
                </ul>
            </div>
            <div class="hamb-wrap">
                <button class="hamburger pm-opener closed"><span class="ico"></span></button>
                <div class="pm-closer"></div>
            </div>
        </div>
    </div>
</header>

                                    <div class="g-main">
                        <div class="g-main_i container">
                            <div class="row todo">
    <div class="col-xs-12">
        <div class="sch-stage">
            <div class="list-inner">
                <ul class="break-word list list-reset menu_level_1">
                    <li class="item_1 active">
                        <span><span>Выбор поезда</span></span>
                    </li>
                    <li class="item_1 unavail">
                        <span><span>Выбор вагона и места</span></span>
                    </li>
                    <li class="item_1 unavail">
                        <span><span>Данные пассажиров</span></span>
                    </li>
                    <li class="item_1 unavail">
                        <span><span>Корзина билетов</span></span>
                    </li>
                    <li class="item_1 unavail">
                        <span><span>Оплата</span></span>
                    </li>
                </ul>
            </div>
        </div>
        <h1 class="hidden" id="title">Минск-Пассажирский — Брест-Центральный</h1>
    </div>
</div>
                            <div class="row">
                                <main class="g-content col-xs-12 clearfix" id="workarea">
                                    <div class="route-collapse hideCollapse">
    <div class="route-collapse__wrap">
        <div class="route-collapse__inner">
            <div class="route-collapse__text">Составной маршрут (<span class='route-quant'>3</span> маршрута)</div>
            <div class="route-collapse__link-wrap"><a class="lnk-pseudo" href="#" data-target="#comlexRouteCollapse" data-toggle="collapse">Изменить маршрут</a></div>
        </div>
    </div>
    <div class="collapse in" id="comlexRouteCollapse">
        <div class="rasp-filter">
            <div class="rasp-filter__inner">
                <div class="rasp-filter__top">
                    <ul class="rasp-filter__radio-wrap list-reset" role="tablist">
                        <li class="rasp-filter__radio active">
                            <label data-toggle="tab" data-target="#filter-tab_2-1">
                                <input class="formstyler" type="radio" name="direction" value="option1"><span>В одну сторону</span>
                            </label>
                        </li>
                        <li class="rasp-filter__radio">
                            <label data-toggle="tab" data-target="#filter-tab_2-2">
                                <input class="formstyler" type="radio" name="direction" value="option2"><span>Туда-обратно</span>
                            </label>
                        </li>
                        <li class="rasp-filter__radio">
                            <label data-toggle="tab" data-target="#filter-tab_2-3">
                                <input class="formstyler" type="radio" name="direction" value="option3"><span>Составной маршрут</span>
                            </label>
                        </li>
                    </ul>
                    <div class="rasp-filter__help-link"><i class="svg-filter-sale"></i><a href="/ru/actions/skidki_na_proezd_v_soobschenii_belarus_r/">Скидки на проезд в сообщении Беларусь — Россия</a></div>
                </div>
                <div class="rasp-filter__bottom tab-content">
                    <div class="tab-pane fade in active" id="filter-tab_2-1" role="tabpanel">
                        <form class="rasp-form" action="/ru/route/">
                            <div class="rasp-form__row">
                                <div class="rasp-form__place-wrap">
                                    <div class="rasp-form__place storage-wrap">
                                        <div class="rasp-form__inp rasp-form__inp--place">
    <div class="rasp-form__history-backdrop"></div>
    <input id="one-way-raspFormFromTitle" class="storage form-control formstyler js-has-history valid-group-direction js-input-taber" type="text" data-storage="from" name="from" spellcheck="true" placeholder="Откуда" autocomplete="off" value="Гомель">
    <input id="one-way-raspFormFromExp" type="hidden" name="from_exp" class="exp" value="">
    <input id="one-way-raspFormFromEsr" type="hidden" name="from_esr" class="esr" value="">
    <div class="rasp-form__history">
        <div class="rasp-form__history-title">Последние просмотренные маршруты</div>
        <div class="rasp-form__history-list-wrap"></div>
    </div>
    <a class="rasp-form__closer" href="#" title="Очистить"></a>
    <a class="rasp-form__ico js-stations-map-open" href="javascript:void(0);" data-exp-id="one-way-raspFormFromExp" data-title-id="one-way-raspFormFromTitle" title="Карта"></a>
</div>
    <div class="rasp-form__tags">
        <a class="rasp-form__tag" href="#" data-from="Минск-Пассажирский" data-exp="2100001"><span>Минск-Пассажирский</span></a>
    </div>

                                    </div>
                                    <button class="rasp-form__direction-icon" type="button"></button>
                                    <div class="rasp-form__place storage-wrap">
                                        <div class="rasp-form__inp rasp-form__inp--place">
    <input id="one-way-raspFormToTitle" class="storage form-control formstyler valid-group-direction js-input-taber" type="text" data-storage="to" name="to" spellcheck="true" placeholder="Куда" autocomplete="off" value="Минск">
    <input id="one-way-raspFormToExp" type="hidden" name="to_exp" class="exp" value="">
    <input id="one-way-raspFormToEsr" type="hidden" name="to_esr" class="esr" value="">
    <a class="rasp-form__closer" href="#" title="Очистить"></a>
    <a class="rasp-form__ico js-stations-map-open" href="javascript:void(0);" data-exp-id="one-way-raspFormToExp" data-title-id="one-way-raspFormToTitle" title="Карта"></a>
</div>
    <div class="rasp-form__tags">
        <a class="rasp-form__tag" href="#" data-to="Молодечно" data-exp="2100280"><span>Молодечно</span></a>
    </div>

                                    </div>
                                </div>
                                <div class="rasp-form__date-wrap">
                                    <div class="rasp-form__date">
                                        <div class="rasp-form__inp input-group date">
    <input
            class="form-control formstyler valid-date js-input-taber"
            type="text"
            placeholder="Выбрать дату"
            autocomplete="off"
            value="сегодня"
            name="front_date"
            readonly
    >
    <input class="main-date hidden" type="hidden" name="date" value="today">
</div>
                                        <div class="rasp-form__tags">
    <a class="rasp-form__tag" href="#" data-date="today"><span>сегодня</span></a>
    <a class="rasp-form__tag" href="#" data-date="tomorrow"><span>завтра</span></a>
            <a class="rasp-form__tag" href="#" data-date="everyday"><span>все дни</span></a>
    </div>
                                    </div>
                                </div>
                                <div class="rasp-form__btn-wrap">
                                    <button class="btn btn-default btn-submit js-input-taber" type="submit" disabled="disabled">Найти</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="filter-tab_2-2" role="tabpanel">
                        <form class="rasp-form type-2" action="/ru/route/">
                            <div class="rasp-form__row">
                                <div class="rasp-form__place-wrap">
                                    <div class="rasp-form__place storage-wrap">
                                        <div class="rasp-form__inp rasp-form__inp--place">
    <div class="rasp-form__history-backdrop"></div>
    <input id="roundtrip-raspFormFromTitle" class="storage form-control formstyler js-has-history valid-group-direction js-input-taber" type="text" data-storage="from" name="from" spellcheck="true" placeholder="Откуда" autocomplete="off" value="Гомель">
    <input id="roundtrip-raspFormFromExp" type="hidden" name="from_exp" class="exp" value="">
    <input id="roundtrip-raspFormFromEsr" type="hidden" name="from_esr" class="esr" value="">
    <div class="rasp-form__history">
        <div class="rasp-form__history-title">Последние просмотренные маршруты</div>
        <div class="rasp-form__history-list-wrap"></div>
    </div>
    <a class="rasp-form__closer" href="#" title="Очистить"></a>
    <a class="rasp-form__ico js-stations-map-open" href="javascript:void(0);" data-exp-id="roundtrip-raspFormFromExp" data-title-id="roundtrip-raspFormFromTitle" title="Карта"></a>
</div>
    <div class="rasp-form__tags">
        <a class="rasp-form__tag" href="#" data-from="Минск-Пассажирский" data-exp="2100001"><span>Минск-Пассажирский</span></a>
    </div>

                                    </div>
                                    <button class="rasp-form__direction-icon" type="button"></button>
                                    <div class="rasp-form__place storage-wrap">
                                        <div class="rasp-form__inp rasp-form__inp--place">
    <input id="roundtrip-raspFormToTitle" class="storage form-control formstyler valid-group-direction js-input-taber" type="text" data-storage="to" name="to" spellcheck="true" placeholder="Куда" autocomplete="off" value="Минск">
    <input id="roundtrip-raspFormToExp" type="hidden" name="to_exp" class="exp" value="">
    <input id="roundtrip-raspFormToEsr" type="hidden" name="to_esr" class="esr" value="">
    <a class="rasp-form__closer" href="#" title="Очистить"></a>
    <a class="rasp-form__ico js-stations-map-open" href="javascript:void(0);" data-exp-id="roundtrip-raspFormToExp" data-title-id="roundtrip-raspFormToTitle" title="Карта"></a>
</div>
    <div class="rasp-form__tags">
        <a class="rasp-form__tag" href="#" data-to="Молодечно" data-exp="2100280"><span>Молодечно</span></a>
    </div>

                                    </div>
                                </div>
                                <div class="rasp-form__date-wrap">
                                    <div class="rasp-form__date">
                                        <div class="rasp-form__inp input-group date">
    <input
            class="form-control formstyler valid-date js-input-taber"
            type="text"
            placeholder="Выбрать дату"
            autocomplete="off"
            value="сегодня"
            name="front_date"
            readonly
    >
    <input class="main-date hidden" type="hidden" name="date" value="today">
</div>
                                        <div class="rasp-form__tags">
    <a class="rasp-form__tag" href="#" data-date="today"><span>сегодня</span></a>
    <a class="rasp-form__tag" href="#" data-date="tomorrow"><span>завтра</span></a>
    </div>
                                    </div>
                                    <div class="rasp-form__date">
                                        <div class="rasp-form__inp input-group date">
    <input
            class="form-control formstyler valid-date js-input-taber"
            type="text"
            placeholder="Дата обратно"
            autocomplete="off"
            value="сегодня"
            name="front_date2"
            readonly
    >
    <input class="main-date hidden" type="hidden" name="date2" value="today">
</div>
                                        <div class="rasp-form__tags">
    <a class="rasp-form__tag" href="#" data-date="today"><span>сегодня</span></a>
    <a class="rasp-form__tag" href="#" data-date="tomorrow"><span>завтра</span></a>
    </div>
                                    </div>
                                </div>
                                <div class="rasp-form__btn-wrap">
                                    <button class="btn btn-default btn-submit js-input-taber" type="submit" disabled="disabled">Найти</button>
                                </div>
                            </div>
                            <input type="hidden" name="roundtrip" value="1" />
                        </form>
                    </div>
                    <div class="tab-pane fade" id="filter-tab_2-3" role="tabpanel">
                        <form class="rasp-form complex-route" action="/ru/route/">
                            <div class="rasp-form__collapse-link"><a class="lnk-pseudo" href="#" data-target="#comlexRouteCollapse">Скрыть форму</a></div>
                            <div class="rasp-form__inner">
                                <div class="rasp-form__row-wrap">
                                                                                                                <div class="rasp-form__row">
                                            <div class="rasp-form__place-wrap">
                                                <div class="rasp-form__place storage-wrap">
                                                    <div class="rasp-form__inp rasp-form__inp--place">
    <div class="rasp-form__history-backdrop"></div>
    <input id="complex1-raspFormFromTitle" class="storage form-control formstyler js-has-history valid-group-direction js-input-taber" type="text" data-storage="from" name="from" spellcheck="true" placeholder="Откуда" autocomplete="off" value="Гомель">
    <input id="complex1-raspFormFromExp" type="hidden" name="from_exp" class="exp" value="">
    <input id="complex1-raspFormFromEsr" type="hidden" name="from_esr" class="esr" value="">
    <div class="rasp-form__history">
        <div class="rasp-form__history-title">Последние просмотренные маршруты</div>
        <div class="rasp-form__history-list-wrap"></div>
    </div>
    <a class="rasp-form__closer" href="#" title="Очистить"></a>
    <a class="rasp-form__ico js-stations-map-open" href="javascript:void(0);" data-exp-id="complex1-raspFormFromExp" data-title-id="complex1-raspFormFromTitle" title="Карта"></a>
</div>

                                                </div>
                                                <button class="rasp-form__direction-icon" type="button"></button>
                                                <div class="rasp-form__place storage-wrap">
                                                    <div class="rasp-form__inp rasp-form__inp--place">
    <input id="complex1-raspFormToTitle" class="storage form-control formstyler valid-group-direction js-input-taber" type="text" data-storage="to" name="to" spellcheck="true" placeholder="Куда" autocomplete="off" value="Минск">
    <input id="complex1-raspFormToExp" type="hidden" name="to_exp" class="exp" value="">
    <input id="complex1-raspFormToEsr" type="hidden" name="to_esr" class="esr" value="">
    <a class="rasp-form__closer" href="#" title="Очистить"></a>
    <a class="rasp-form__ico js-stations-map-open" href="javascript:void(0);" data-exp-id="complex1-raspFormToExp" data-title-id="complex1-raspFormToTitle" title="Карта"></a>
</div>

                                                </div>
                                            </div>
                                            <div class="rasp-form__date-wrap">
                                                <div class="rasp-form__date">
                                                    <div class="rasp-form__inp input-group date">
    <input
            class="form-control formstyler valid-date js-input-taber"
            type="text"
            placeholder="Выбрать дату"
            autocomplete="off"
            value="сегодня"
            name="front_date"
            readonly
    >
    <input class="main-date hidden" type="hidden" name="date" value="today">
</div>
                                                </div>
                                            </div>
                                            <div class="rasp-form__close-wrap">
                                                <div class="rasp-form__route-num">Маршрут №1</div>
                                                <button class="rasp-form__close js-remove-route" type="button"></button>
                                            </div>
                                        </div>
                                                                                                                <div class="rasp-form__row">
                                            <div class="rasp-form__place-wrap">
                                                <div class="rasp-form__place storage-wrap">
                                                    <div class="rasp-form__inp rasp-form__inp--place">
    <div class="rasp-form__history-backdrop"></div>
    <input id="complex2-raspFormFromTitle" class="storage form-control formstyler js-has-history valid-group-direction js-input-taber" type="text" data-storage="from" name="from2" spellcheck="true" placeholder="Откуда" autocomplete="off" value="">
    <input id="complex2-raspFormFromExp" type="hidden" name="from_exp2" class="exp" value="">
    <input id="complex2-raspFormFromEsr" type="hidden" name="from_esr2" class="esr" value="">
    <div class="rasp-form__history">
        <div class="rasp-form__history-title">Последние просмотренные маршруты</div>
        <div class="rasp-form__history-list-wrap"></div>
    </div>
    <a class="rasp-form__closer" href="#" title="Очистить"></a>
    <a class="rasp-form__ico js-stations-map-open" href="javascript:void(0);" data-exp-id="complex2-raspFormFromExp" data-title-id="complex2-raspFormFromTitle" title="Карта"></a>
</div>

                                                </div>
                                                <button class="rasp-form__direction-icon" type="button"></button>
                                                <div class="rasp-form__place storage-wrap">
                                                    <div class="rasp-form__inp rasp-form__inp--place">
    <input id="complex2-raspFormToTitle" class="storage form-control formstyler valid-group-direction js-input-taber" type="text" data-storage="to" name="to2" spellcheck="true" placeholder="Куда" autocomplete="off" value="">
    <input id="complex2-raspFormToExp" type="hidden" name="to_exp2" class="exp" value="">
    <input id="complex2-raspFormToEsr" type="hidden" name="to_esr2" class="esr" value="">
    <a class="rasp-form__closer" href="#" title="Очистить"></a>
    <a class="rasp-form__ico js-stations-map-open" href="javascript:void(0);" data-exp-id="complex2-raspFormToExp" data-title-id="complex2-raspFormToTitle" title="Карта"></a>
</div>

                                                </div>
                                            </div>
                                            <div class="rasp-form__date-wrap">
                                                <div class="rasp-form__date">
                                                    <div class="rasp-form__inp input-group date">
    <input
            class="form-control formstyler valid-date js-input-taber"
            type="text"
            placeholder="Выбрать дату"
            autocomplete="off"
            value="сегодня"
            name="front_date2"
            readonly
    >
    <input class="main-date hidden" type="hidden" name="date2" value="today">
</div>
                                                </div>
                                            </div>
                                            <div class="rasp-form__close-wrap">
                                                <div class="rasp-form__route-num">Маршрут №2</div>
                                                <button class="rasp-form__close js-remove-route" type="button"></button>
                                            </div>
                                        </div>
                                                                                                                <div class="rasp-form__row additional-row">
                                            <div class="rasp-form__place-wrap">
                                                <div class="rasp-form__place storage-wrap">
                                                    <div class="rasp-form__inp rasp-form__inp--place">
    <div class="rasp-form__history-backdrop"></div>
    <input id="complex3-raspFormFromTitle" class="storage form-control formstyler js-has-history valid-group-direction js-input-taber" type="text" data-storage="from" name="from3" spellcheck="true" placeholder="Откуда" autocomplete="off" value="">
    <input id="complex3-raspFormFromExp" type="hidden" name="from_exp3" class="exp" value="">
    <input id="complex3-raspFormFromEsr" type="hidden" name="from_esr3" class="esr" value="">
    <div class="rasp-form__history">
        <div class="rasp-form__history-title">Последние просмотренные маршруты</div>
        <div class="rasp-form__history-list-wrap"></div>
    </div>
    <a class="rasp-form__closer" href="#" title="Очистить"></a>
    <a class="rasp-form__ico js-stations-map-open" href="javascript:void(0);" data-exp-id="complex3-raspFormFromExp" data-title-id="complex3-raspFormFromTitle" title="Карта"></a>
</div>

                                                </div>
                                                <button class="rasp-form__direction-icon" type="button"></button>
                                                <div class="rasp-form__place storage-wrap">
                                                    <div class="rasp-form__inp rasp-form__inp--place">
    <input id="complex3-raspFormToTitle" class="storage form-control formstyler valid-group-direction js-input-taber" type="text" data-storage="to" name="to3" spellcheck="true" placeholder="Куда" autocomplete="off" value="">
    <input id="complex3-raspFormToExp" type="hidden" name="to_exp3" class="exp" value="">
    <input id="complex3-raspFormToEsr" type="hidden" name="to_esr3" class="esr" value="">
    <a class="rasp-form__closer" href="#" title="Очистить"></a>
    <a class="rasp-form__ico js-stations-map-open" href="javascript:void(0);" data-exp-id="complex3-raspFormToExp" data-title-id="complex3-raspFormToTitle" title="Карта"></a>
</div>

                                                </div>
                                            </div>
                                            <div class="rasp-form__date-wrap">
                                                <div class="rasp-form__date">
                                                    <div class="rasp-form__inp input-group date">
    <input
            class="form-control formstyler valid-date js-input-taber"
            type="text"
            placeholder="Выбрать дату"
            autocomplete="off"
            value="сегодня"
            name="front_date3"
            readonly
    >
    <input class="main-date hidden" type="hidden" name="date3" value="today">
</div>
                                                </div>
                                            </div>
                                            <div class="rasp-form__close-wrap">
                                                <div class="rasp-form__route-num">Маршрут №3</div>
                                                <button class="rasp-form__close js-remove-route" type="button"></button>
                                            </div>
                                        </div>
                                                                    </div>
                                <div class="rasp-form__btn-wrap">
                                    <button class="btn btn-default btn-submit js-input-taber" type="submit" disabled="disabled">Найти</button>
                                    <button class="rasp-form__add-route" type="button">Продолжить маршрут</button>
                                </div>
                            </div>
                            <input type="hidden" name="complex" value="1" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

                                    <div id="sch-route" class="row">
    <div class="col-xs-12">
        <div class="sch-title">
            <div class="sch-title__title h2">Гомель — Минск,</div>
            <div class="sch-title__date h3">06 июля (пн) </div>
                    </div>
                    <div class="sch-alert">
                <div class="sch-alert__inner">
                    <i class="sch-alert__icon svg-promt-icon"></i>
                    <div class="sch-alert__text">
                        Уважаемые пассажиры! В целях предупреждения распространения вирусных инфекций, просим вас придерживаться следущих рекомендаций:<br>1. Старайтесь придерживаться максимально возможной дистанции от других пассажиров в 1–1,5 метра.<br>2. По возможности наденьте маску и одноразовые перчатки, при входе и выходе из транспорта используйте для обработки рук антисептик.
                    </div>
                </div>
            </div>
                <div class="sch-links">
            <ul class="sch-links__nav list-reset">
                                                                                    <li class="sch-links__item active"><a class="sch-links__link" href="/ru/route/?from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_esr=&from_exp=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_esr=&to_exp=&date=2020-07-06"><span>06.07 (пн)</span></a></li>
                <li class="sch-links__item"><a class="sch-links__link" href="/ru/route/?from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_esr=&from_exp=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_esr=&to_exp=&date=2020-07-07"><span>07.07 (вт)</span></a></li>
                <li class="sch-links__item"><a class="sch-links__link" href="/ru/route/?from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_esr=&from_exp=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_esr=&to_exp=&date=2020-07-08"><span>08.07 (ср)</span></a></li>
                <li class="sch-links__item"><a class="sch-links__link" href="/ru/route/?from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_esr=&from_exp=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_esr=&to_exp=&date=everyday"><span>все дни</span></a></li>
            </ul>
        </div>
    </div>
    <div class="col-md-3 col-xs-12 pull-right">
    <form class="sch-filter js-route-filters" method="POST">
        <div class="sch-filter__header"><a class="h3 sch-filter__collapse-link collapsed" data-toggle="collapse" href="#sch-filter-main-collapse"><span>Подбор по параметрам</span></a>
            <input class="sch-filter__reset" type="reset" value="Очистить фильтры" disabled="disabled">
        </div>
        <div class="sch-filter__tags-wrap js-sch-tags"></div>
        <div class="collapse sch-filter__main-collapse" id="sch-filter-main-collapse">
            <div class="sch-filter__main-collapse-inner">
                <div class="sch-filter__item">
    <div class="sch-filter__item-inner">
        <div class="sch-filter__row">
            <div class="sch-filter__el">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-AVAIL-SEATS"><span class="checkbox-text" data-filter-id="other" data-filter-value="w_places">С наличием свободных мест</span>
                    </label>
                </div>
            </div>
            <div class="sch-filter__el">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-ER"><span class="checkbox-text has-popover" data-filter-id="other" data-filter-value="eregistration">Электронная регистрация<a class="js-popover" href="#" data-content="&lt;div class=&quot;popover__inner&quot;&gt;&lt;div class=&quot;popover__icon-wrap&quot;&gt;&lt;i class=&quot;svg-sch-filter_er--big&quot;&gt;&lt;/i&gt;&lt;/div&gt;&lt;div class=&quot;popover__text-wrap&quot;&gt;&lt;p&gt;Электронная регистрация означает, что Вам не нужно будет получать билеты в кассе Белорусской железной дороги. Посадка в поезд при электронной регистрации осуществляется при предъявлении проводнику вагона документа, удостоверяющего личность пассажира, указанного в заказе на покупку электронных билетов.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;"></a></span>
                    </label>
                </div>
            </div>
            <div class="sch-filter__el">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-SPECIAL"><span class="checkbox-text has-popover" data-filter-id="other" data-filter-value="special">
                        <!-- // <i class="svg-sch-filter_special"></i> -->
                        <!-- // <span> -->
                            Места для инвалидов-колясочников<a class="js-popover" href="#" data-content="&lt;div class=&quot;popover__inner&quot;&gt;&lt;div class=&quot;popover__icon-wrap&quot;&gt;&lt;i class=&quot;svg-sch-filter_special--big&quot;&gt;&lt;/i&gt;&lt;/div&gt;&lt;div class=&quot;popover__text-wrap&quot;&gt;&lt;p&gt;В поезде предусмотрены специально оборудованные места (специализированное купе) для перевозки инвалидов-колясочников.&lt;/p&gt;"></a></span>
                        <!-- // </span> -->
                       </label>
                   </div>
               </div>
           </div>
       </div>
   </div>
                <div class="sch-filter__item">
    <div class="sch-filter__link-wrap"><a class="sch-filter__link" data-toggle="collapse" href="#sch-filter-01"><span>Тип сообщения</span></a></div>
    <div class="collapse in" id="sch-filter-01">
        <div class="sch-filter__item-inner">
                        <div class="sch-filter__el js-line-types-filter">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-CITY_LINES"><span class="checkbox-text" data-filter-id="train_type" data-filter-value="bus"><i class="svg-bus"></i><span>Автобус</span></span>
                    </label>
                </div>
            </div>
                        <div class="sch-filter__el js-line-types-filter">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-CITY_LINES"><span class="checkbox-text" data-filter-id="train_type" data-filter-value="international"><i class="svg-international"></i><span>Международные линии</span></span>
                    </label>
                </div>
            </div>
                        <div class="sch-filter__el js-line-types-filter">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-CITY_LINES"><span class="checkbox-text" data-filter-id="train_type" data-filter-value="interregional_business"><i class="svg-interregional_business"></i><span>Межрегиональные линии бизнес-класса</span></span>
                    </label>
                </div>
            </div>
                        <div class="sch-filter__el js-line-types-filter">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-CITY_LINES"><span class="checkbox-text" data-filter-id="train_type" data-filter-value="interregional_economy"><i class="svg-interregional_economy"></i><span>Межрегиональные линии экономкласса</span></span>
                    </label>
                </div>
            </div>
                        <div class="sch-filter__el js-line-types-filter">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-CITY_LINES"><span class="checkbox-text" data-filter-id="train_type" data-filter-value="regional_business"><i class="svg-regional_business"></i><span>Региональные линии бизнес-класса</span></span>
                    </label>
                </div>
            </div>
                        <div class="sch-filter__el js-line-types-filter">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-CITY_LINES"><span class="checkbox-text" data-filter-id="train_type" data-filter-value="commercial"><i class="svg-commercial"></i><span>Коммерческие линии</span></span>
                    </label>
                </div>
            </div>
                        <div class="sch-filter__el js-line-types-filter">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-CITY_LINES"><span class="checkbox-text" data-filter-id="train_type" data-filter-value="regional_economy"><i class="svg-regional_economy"></i><span>Региональные линии экономкласса</span></span>
                    </label>
                </div>
            </div>
                        <div class="sch-filter__el js-line-types-filter">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-CITY_LINES"><span class="checkbox-text" data-filter-id="train_type" data-filter-value="city"><i class="svg-city"></i><span>Городские линии</span></span>
                    </label>
                </div>
            </div>
                        <div class="sch-filter__el js-line-types-filter">
                <div class="checkbox">
                    <label>
                        <input class="formstyler" type="checkbox" value="1" name="form-CITY_LINES"><span class="checkbox-text" data-filter-id="train_type" data-filter-value="airport"><i class="svg-airport"></i><span>Минск-Национальный аэропорт</span></span>
                    </label>
                </div>
            </div>
                    </div>
    </div>
</div>

                <div class="sch-filter__item">
    <div class="sch-filter__link-wrap"><a class="sch-filter__link" data-toggle="collapse" href="#sch-filter-02"><span>Категория вагона</span></a></div>
    <div class="collapse in" id="sch-filter-02">
        <div class="sch-filter__item-inner">
            <div class="row">
                                                                                                <div class="sch-filter__el col-sm-12 col-md-6">
                            <div class="checkbox">
                                <label>
                                    <input class="formstyler" type="checkbox" value="1" name="form-CAR_COMMON"><span class="checkbox-text" data-filter-id="car_type" data-filter-value="car_type_1">Общий</span>
                                </label>
                            </div>
                        </div>
                                                                                <div class="sch-filter__el col-sm-12 col-md-6">
                            <div class="checkbox">
                                <label>
                                    <input class="formstyler" type="checkbox" value="1" name="form-CAR_COMMON"><span class="checkbox-text" data-filter-id="car_type" data-filter-value="car_type_2">Сидячий</span>
                                </label>
                            </div>
                        </div>
                                                                                <div class="sch-filter__el col-sm-12 col-md-6">
                            <div class="checkbox">
                                <label>
                                    <input class="formstyler" type="checkbox" value="1" name="form-CAR_COMMON"><span class="checkbox-text" data-filter-id="car_type" data-filter-value="car_type_3">Плацкартный</span>
                                </label>
                            </div>
                        </div>
                                                                                <div class="sch-filter__el col-sm-12 col-md-6">
                            <div class="checkbox">
                                <label>
                                    <input class="formstyler" type="checkbox" value="1" name="form-CAR_COMMON"><span class="checkbox-text" data-filter-id="car_type" data-filter-value="car_type_4">Купейный</span>
                                </label>
                            </div>
                        </div>
                                                                                <div class="sch-filter__el col-sm-12 col-md-6">
                            <div class="checkbox">
                                <label>
                                    <input class="formstyler" type="checkbox" value="1" name="form-CAR_COMMON"><span class="checkbox-text" data-filter-id="car_type" data-filter-value="car_type_5">Мягкий</span>
                                </label>
                            </div>
                        </div>
                                                                                <div class="sch-filter__el col-sm-12 col-md-6">
                            <div class="checkbox">
                                <label>
                                    <input class="formstyler" type="checkbox" value="1" name="form-CAR_COMMON"><span class="checkbox-text" data-filter-id="car_type" data-filter-value="car_type_6">СВ</span>
                                </label>
                            </div>
                        </div>
                                                </div>
        </div>
    </div>
</div>

                <div class="sch-filter__item">
    <div class="sch-filter__link-wrap"><a class="sch-filter__link" data-toggle="collapse" href="#sch-filter-03"><span>Время</span></a></div>
    <div class="collapse in" id="sch-filter-03">
        <div class="sch-filter__item-inner">
            <div class="sch-filter__tabs">
                <ul class="list-reset sch-filter__tabs-nav" role="tablist">
                    <li class="sch-filter__tabs-item active"><a class="sch-filter__tabs-link" href="#departure-tab" role="tab" data-toggle="tab">Отправление</a></li>
                    <li class="sch-filter__tabs-item"><a class="sch-filter__tabs-link" href="#arrival-tab" role="tab" data-toggle="tab">Прибытие</a></li>
                </ul>
                <div class="sch-filter__tab-content">
                    <div class="sch-filter__tab-pane fade in active" id="departure-tab" role="tabpanel">
                        <div class="sch-filter__row">
                                                        <div class="sch-filter__el">
                                <div class="checkbox">
                                    <label>
                                        <input class="formstyler" type="checkbox" value="1" name="form-DEPARTURE_MORNING" data-direction="Отправление"><span class="checkbox-text" data-filter-id="time" data-filter-value="from_morning">Утро (с 06.00 - 11.59)</span>
                                    </label>
                                </div>
                            </div>
                                                        <div class="sch-filter__el">
                                <div class="checkbox">
                                    <label>
                                        <input class="formstyler" type="checkbox" value="1" name="form-DEPARTURE_MORNING" data-direction="Отправление"><span class="checkbox-text" data-filter-id="time" data-filter-value="from_aternoon">День (с 12.00 - 17.59)</span>
                                    </label>
                                </div>
                            </div>
                                                        <div class="sch-filter__el">
                                <div class="checkbox">
                                    <label>
                                        <input class="formstyler" type="checkbox" value="1" name="form-DEPARTURE_MORNING" data-direction="Отправление"><span class="checkbox-text" data-filter-id="time" data-filter-value="from_evening">Вечер (с 18.00 - 23.59)</span>
                                    </label>
                                </div>
                            </div>
                                                        <div class="sch-filter__el">
                                <div class="checkbox">
                                    <label>
                                        <input class="formstyler" type="checkbox" value="1" name="form-DEPARTURE_MORNING" data-direction="Отправление"><span class="checkbox-text" data-filter-id="time" data-filter-value="from_night">Ночь (с 00.00 - 05.59)</span>
                                    </label>
                                </div>
                            </div>
                                                    </div>
                    </div>
                    <div class="sch-filter__tab-pane fade" id="arrival-tab" role="tabpanel">
                        <div class="sch-filter__row">
                                                        <div class="sch-filter__el">
                                <div class="checkbox">
                                    <label>
                                        <input class="formstyler" type="checkbox" value="1" name="form-ARRIVAL_MORNING" data-direction="Прибытие"><span class="checkbox-text" data-filter-id="time" data-filter-value="to_morning">Утро (с 06.00 - 11.59)</span>
                                    </label>
                                </div>
                            </div>
                                                        <div class="sch-filter__el">
                                <div class="checkbox">
                                    <label>
                                        <input class="formstyler" type="checkbox" value="1" name="form-ARRIVAL_MORNING" data-direction="Прибытие"><span class="checkbox-text" data-filter-id="time" data-filter-value="to_aternoon">День (с 12.00 - 17.59)</span>
                                    </label>
                                </div>
                            </div>
                                                        <div class="sch-filter__el">
                                <div class="checkbox">
                                    <label>
                                        <input class="formstyler" type="checkbox" value="1" name="form-ARRIVAL_MORNING" data-direction="Прибытие"><span class="checkbox-text" data-filter-id="time" data-filter-value="to_evening">Вечер (с 18.00 - 23.59)</span>
                                    </label>
                                </div>
                            </div>
                                                        <div class="sch-filter__el">
                                <div class="checkbox">
                                    <label>
                                        <input class="formstyler" type="checkbox" value="1" name="form-ARRIVAL_MORNING" data-direction="Прибытие"><span class="checkbox-text" data-filter-id="time" data-filter-value="to_night">Ночь (с 00.00 - 05.59)</span>
                                    </label>
                                </div>
                            </div>
                                                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                <div class="sch-filter__item sch-filter__btn-wrap sch-filter__item--mob-btn">
                    <button type='button' data-target='#sch-filter-main-collapse' class='btn btn-default'>Найти</button>
                </div>
            </div>
        </div>
        <input class="sch-filter__reset hidden-xs hidden-sm" type="reset" value="Очистить фильтры" disabled="disabled">
    </form>
</div>

    <div class="col-md-9 col-xs-12">
            <div class="sch-alert todo">
        <div class="sch-alert__inner"><i
                    class="sch-alert__icon svg-promt-icon"></i>
            <p class="sch-alert__text">Учтены временные <a href='#'>изменения в расписании</a> на выбранную дату</p>
        </div>
    </div>
                    <div class="sch-le-wrap">
        <div class="sch-table js-schSort js-schedule">
            <div class="sch-table__sort">
                <div class="sch-table__sort-text">Сортировать по
                    :
                </div>
                <div class="sch-table__sort-select">
                    <select class="formstyler" name="sch-sort">
                        <option value="departure"
                                selected="">времени отправления</option>
                        <option value="arrival">времени прибытия</option>
                        <option value="duration">времени в пути</option>
                        <option value="cost">стоимости</option>
                    </select>
                </div>
            </div>
            <div class="sch-table__header">
                <div class="sch-table__row">
                    <div class="sch-table__cell cell-1">Поезд</div>
                    <div class="sch-table__cell cell-2">
                        <div class="sch-table__row_2">
                            <div class="sch-table__col departure"><a
                                        class="sch-table__sort-link js-sort-link"
                                        href="#"
                                        title="Для станций отправления, находящихся на территории Республики Беларусь, указано белорусское время.&#xA;Для станций отправления, находящихся на территории Российской Федерации, указано московское время.&#xA;Для станций отправления, находящихся на территории иных государств, указано местное время."
                                        data-sort="departure"><span>Отправление</span></a>
                            </div>
                            <div class="sch-table__col arrival"><a
                                        class="sch-table__sort-link js-sort-link"
                                        href="#"
                                        title="Для станций назначения, находящихся на территории Республики Беларусь, указано белорусское время.&#xA;Для станций назначения, находящихся на территории Российской Федерации, указано московское время.&#xA;Для станций назначения, находящихся на территории иных государств, указано местное время."
                                        data-sort="arrival"><span>Прибытие</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="sch-table__cell cell-3"><a
                                class="sch-table__sort-link js-sort-link"
                                href="#"
                                data-sort="duration"><span>В пути</span></a>
                    </div>
                    <div class="sch-table__cell cell-4"><a
                                class="sch-table__sort-link js-sort-link"
                                href="#"
                                title="Стоимость проездного документа указана для одного взрослого пассажира на заданную дату отправления (в указанную стоимость не  включены тарифные сборы за оформление проездных документов)&#xA;Стоимость в иностранной валюте является справочной и рассчитана на основании курса НБРБ."
                                data-sort="cost"><span>Стоимость</span></a>
                    </div>
                </div>
            </div>
                                                                <div class="sch-table__body-wrap">
                                    <div class="sch-table__departed js-route-departed">
                        <div class="sch-table__collapse-wrap">
                            <a class="sch-table__collapse-link collapsed lnk-pseudo"
                               href="#sch-table-collapse_1"
                               data-toggle="collapse">
                                <span class="closer">Скрыть отправившиеся</span>
                                <span class="opener">Показать отправившиеся</span>
                            </a>
                        </div>
                        <div class="collapse"
                             id="sch-table-collapse_1">
                            <div class="sch-table__body">
                                                                                                                                                        <div class="sch-table__row-wrap disabled js-row from_morning to_morning interregional_economy started"
                                                 data-train-info="{
                                    &quot;from&quot;:&quot;2100100&quot;,
                                    &quot;to&quot;:&quot;2100000&quot;,
                                    &quot;date&quot;:&quot;2020-07-06&quot;
                                    }">
                                                <div class="sch-table__row" data-ticket_selling_allowed="false" data-train-id="1_647Б_1594006200_1594022220" data-train-number="647Б" data-train-type="interregional_economy">
    <div class="sch-table__cell cell-1">
                        <div class="sch-table__train-type">
            <i class="svg-interregional_economy"></i>
            <span class="sch-table__route-type">Межрегиональные линии экономкласса</span>
        </div>
                    <a href="/ru/train/?train=647Б&from_exp=2100100&to_exp=2100000&date=today&from=Гомель&to=Минск" class="sch-table__route"><span class="train-number">647Б</span>&nbsp;<span class="train-route">Гомель&nbsp;&mdash; Минск-Пассажирский</span></a>
                <div class="sch-table__link-wrap">
                            <a href="#" class="dash js-load-route" data-href="/ru/train/?popup=true&train=647%D0%91&from_exp=2100100&to_exp=2100000&date=today&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA"><span>Маршрут</span></a>
                        <div class="sch-table__tags">
                                                                            </div>
        </div>
        <div class="sch-table__popover">
            <a href="#" class="js-popover" data-content="&lt;div class=&quot;sch-table__route-type&quot;&gt;Межрегиональные линии экономкласса&lt;/div&gt;&lt;div class=&quot;sch-table__route&quot;&gt;Гомель&nbsp;&mdash; Минск-Пассажирский&lt;/div&gt;&lt;div class=&quot;sch-table__descr&quot;&gt;&lt;i class=&quot;svg-cruising--white&quot;&gt;&lt;/i&gt;&lt;span&gt;Дни курсирования: ежедневно&lt;/span&gt;&lt;/div&gt;"></a>
        </div>
    </div>
    <div class="sch-table__cell cell-2">
        <div class="sch-table__cell-top">
            <div class="sch-table__row_2">
                <div class="sch-table__col departure">
                    <div class="sch-table__time train-from-time" data-sort="departure" data-value="-24378">06:30</div>
                    <div class="sch-table__station train-from-name">Гомель</div>
                </div>
                <div class="sch-table__col arrival">
                    <div class="sch-table__time train-to-time" data-sort="arrival" data-value="-8358">
                        10:57
                    </div>
                                        <div class="sch-table__station train-to-name">Минск</div>
                </div>
                <div class="sch-table__duration visible-xs"><span class="duration">4 ч 27 мин</span>
                </div>
            </div>
        </div>
        <div class="sch-table__cell-bottom">
            <div class="sch-table__descr">
                <i class="svg-cruising"></i>
                <span>Дни курсирования: ежедневно</span>
            </div>
        </div>
    </div>
    <div class="sch-table__cell cell-3">
        <div class="sch-table__duration train-duration-time" data-sort="duration" data-value="267">4 ч 27 мин</div>
    </div>
    <div class="sch-table__cell cell-4 empty">
        <div class="sch-table__tickets" data-sort="cost" data-value="0">
                                            </div>
        

                            </div>
</div>
                                            </div>
                                                                                                                                                                                                                                    <div class="sch-table__row-wrap disabled js-row from_morning to_morning interregional_business special started"
                                                 data-train-info="{
                                    &quot;from&quot;:&quot;2100100&quot;,
                                    &quot;to&quot;:&quot;2100000&quot;,
                                    &quot;date&quot;:&quot;2020-07-06&quot;
                                    }">
                                                <div class="sch-table__row" data-ticket_selling_allowed="false" data-train-id="1_707Б_1594008000_1594018200" data-train-number="707Б" data-train-type="interregional_business">
    <div class="sch-table__cell cell-1">
                            <div class="sch-table__label">
                <div class="sch-label sch-label--">
                    <div class="sch-label__text">Самый быстрый</div>
                </div>
            </div>
                <div class="sch-table__train-type">
            <i class="svg-interregional_business"></i>
            <span class="sch-table__route-type">Межрегиональные линии бизнес-класса</span>
        </div>
                    <a href="/ru/train/?train=707Б&from_exp=2100100&to_exp=2100000&date=today&from=Гомель&to=Минск" class="sch-table__route"><span class="train-number">707Б</span>&nbsp;<span class="train-route">Гомель&nbsp;&mdash; Минск-Пассажирский</span></a>
                <div class="sch-table__link-wrap">
                            <a href="#" class="dash js-load-route" data-href="/ru/train/?popup=true&train=707%D0%91&from_exp=2100100&to_exp=2100000&date=today&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA"><span>Маршрут</span></a>
                        <div class="sch-table__tags">
                                                                <i class="svg-tag-special" title="Есть места для инвалидов"></i>            </div>
        </div>
        <div class="sch-table__popover">
            <a href="#" class="js-popover" data-content="&lt;div class=&quot;sch-table__route-type&quot;&gt;Межрегиональные линии бизнес-класса&lt;/div&gt;&lt;div class=&quot;sch-table__route&quot;&gt;Гомель&nbsp;&mdash; Минск-Пассажирский&lt;/div&gt;&lt;div class=&quot;sch-table__descr&quot;&gt;&lt;i class=&quot;svg-cruising--white&quot;&gt;&lt;/i&gt;&lt;span&gt;Дни курсирования: ежедневно&lt;/span&gt;&lt;/div&gt;"></a>
        </div>
    </div>
    <div class="sch-table__cell cell-2">
        <div class="sch-table__cell-top">
            <div class="sch-table__row_2">
                <div class="sch-table__col departure">
                    <div class="sch-table__time train-from-time" data-sort="departure" data-value="-22578">07:00</div>
                    <div class="sch-table__station train-from-name">Гомель</div>
                </div>
                <div class="sch-table__col arrival">
                    <div class="sch-table__time train-to-time" data-sort="arrival" data-value="-12378">
                        09:50
                    </div>
                                        <div class="sch-table__station train-to-name">Минск</div>
                </div>
                <div class="sch-table__duration visible-xs"><span class="duration">2 ч 50 мин</span>
                </div>
            </div>
        </div>
        <div class="sch-table__cell-bottom">
            <div class="sch-table__descr">
                <i class="svg-cruising"></i>
                <span>Дни курсирования: ежедневно</span>
            </div>
        </div>
    </div>
    <div class="sch-table__cell cell-3">
        <div class="sch-table__duration train-duration-time" data-sort="duration" data-value="170">2 ч 50 мин</div>
    </div>
    <div class="sch-table__cell cell-4 empty">
        <div class="sch-table__tickets" data-sort="cost" data-value="0">
                                            </div>
        

                            </div>
</div>
                                            </div>
                                                                                                                                                                                                                                                                                                                                                                                                                        </div> 
                        </div>
                    </div>
                                <div class="sch-table__body js-sort-body">
                                                                                                                                                                                                <div class="sch-table__row-wrap js-row from_aternoon to_evening interregional_economy w_places eregistration car_type_3 car_type_4"
                                     data-train-info="{
                            &quot;from&quot;:&quot;2100100&quot;,
                            &quot;to&quot;:&quot;2100000&quot;,
                            &quot;date&quot;:&quot;2020-07-06&quot;
                            }">
                                    <div class="sch-table__row" data-ticket_selling_allowed="true" data-train-id="1_631Б_1594034220_1594065180" data-train-number="631Б" data-train-type="interregional_economy">
    <div class="sch-table__cell cell-1">
                        <div class="sch-table__train-type">
            <i class="svg-interregional_economy"></i>
            <span class="sch-table__route-type">Межрегиональные линии экономкласса</span>
        </div>
                    <a href="/ru/train/?train=631Б&from_exp=2100100&to_exp=2100000&date=today&from=Гомель&to=Минск" class="sch-table__route"><span class="train-number">631Б</span>&nbsp;<span class="train-route">Гомель&nbsp;&mdash; Гродно</span></a>
                <div class="sch-table__link-wrap">
                            <a href="#" class="dash js-load-route" data-href="/ru/train/?popup=true&train=631%D0%91&from_exp=2100100&to_exp=2100000&date=today&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA"><span>Маршрут</span></a>
                        <div class="sch-table__tags">
                <i class="svg-tag-er" title="Электронная регистрация на поезд"></i>                                <i class="svg-tag-express" title="Скорый поезд"></i>                            </div>
        </div>
        <div class="sch-table__popover">
            <a href="#" class="js-popover" data-content="&lt;div class=&quot;sch-table__route-type&quot;&gt;Межрегиональные линии экономкласса&lt;/div&gt;&lt;div class=&quot;sch-table__route&quot;&gt;Гомель&nbsp;&mdash; Гродно&lt;/div&gt;&lt;div class=&quot;sch-table__descr&quot;&gt;&lt;i class=&quot;svg-cruising--white&quot;&gt;&lt;/i&gt;&lt;span&gt;Дни курсирования: ежедневно&lt;/span&gt;&lt;/div&gt;"></a>
        </div>
    </div>
    <div class="sch-table__cell cell-2">
        <div class="sch-table__cell-top">
            <div class="sch-table__row_2">
                <div class="sch-table__col departure">
                    <div class="sch-table__time train-from-time" data-sort="departure" data-value="3642">14:17</div>
                    <div class="sch-table__station train-from-name">Гомель</div>
                </div>
                <div class="sch-table__col arrival">
                    <div class="sch-table__time train-to-time" data-sort="arrival" data-value="34602">
                        22:53
                    </div>
                                        <div class="sch-table__station train-to-name">Минск</div>
                </div>
                <div class="sch-table__duration visible-xs"><span class="duration">8 ч 36 мин</span>
                </div>
            </div>
        </div>
        <div class="sch-table__cell-bottom">
            <div class="sch-table__descr">
                <i class="svg-cruising"></i>
                <span>Дни курсирования: ежедневно</span>
            </div>
        </div>
    </div>
    <div class="sch-table__cell cell-3">
        <div class="sch-table__duration train-duration-time" data-sort="duration" data-value="516">8 ч 36 мин</div>
    </div>
    <div class="sch-table__cell cell-4">
        <div class="sch-table__tickets" data-sort="cost" data-value="11.89">
                                    
                                                            <div class="sch-table__t-item has-quant">
                            <div class="sch-table__t-name">Плацкартный</div>
                            <a class="sch-table__t-quant js-train-modal dash" data-get="/ru/ajax/route/car_places/?from=2100100&to=2100000&date=today&train_number=631%D0%91&car_type=3" data-car-type="3"><span>256</span></a>                            <div class="sch-table__t-cost">
                                                                <div class="ticket-wrap">
                                                                        <span data-cost-rub="346,05" data-currency-rub="RUB"  data-cost-eur="4,35" data-currency-eur="EUR"  data-cost-usd="4,91" data-currency-usd="USD"  data-cost-byn="11,89" data-currency-byn="BYN" class="js-price"><span class="ticket-cost">11,89</span> <span class="ticket-currency">BYN</span></span>
                                </div>
                                                            </div>
                        </div>
                                                
                                                            <div class="sch-table__t-item has-quant">
                            <div class="sch-table__t-name">Купейный</div>
                            <a class="sch-table__t-quant js-train-modal dash" data-get="/ru/ajax/route/car_places/?from=2100100&to=2100000&date=today&train_number=631%D0%91&car_type=4" data-car-type="4"><span>214</span></a>                            <div class="sch-table__t-cost">
                                                                <div class="ticket-wrap">
                                                                        <span data-cost-rub="479,06" data-currency-rub="RUB"  data-cost-eur="6,03" data-currency-eur="EUR"  data-cost-usd="6,80" data-currency-usd="USD"  data-cost-byn="16,46" data-currency-byn="BYN" class="js-price"><span class="ticket-cost">16,46</span> <span class="ticket-currency">BYN</span></span>
                                </div>
                                                            </div>
                        </div>
                                                        </div>
        

        
                        <div class="sch-table__btn-wrap">
            <form class="js-sch-item-form" action="/ru/order/places/" method="post">
            <a class="btn btn-index" href="javascript:void(0);" onclick="(this).closest('form').submit();">Выбрать места</a>            <input class="js-sch-item-route" type="hidden" name="route" value="a:43:{s:5:&quot;index&quot;;i:2;s:12:&quot;is_main_from&quot;;s:1:&quot;1&quot;;s:10:&quot;is_main_to&quot;;s:1:&quot;0&quot;;s:10:&quot;train_type&quot;;s:21:&quot;interregional_economy&quot;;s:13:&quot;car_accessory&quot;;s:0:&quot;&quot;;s:12:&quot;train_number&quot;;s:5:&quot;631Б&quot;;s:12:&quot;train_thread&quot;;s:0:&quot;&quot;;s:5:&quot;title&quot;;s:27:&quot;ГОМЕЛЬ - ГРОДНО&quot;;s:18:&quot;title_station_from&quot;;s:12:&quot;ГОМЕЛЬ&quot;;s:16:&quot;title_station_to&quot;;s:12:&quot;ГРОДНО&quot;;s:12:&quot;from_station&quot;;s:7:&quot;2100100&quot;;s:16:&quot;from_station_exp&quot;;s:7:&quot;2100100&quot;;s:15:&quot;from_station_db&quot;;s:12:&quot;Гомель&quot;;s:9:&quot;from_time&quot;;i:1594034220;s:10:&quot;to_station&quot;;s:7:&quot;2100000&quot;;s:14:&quot;to_station_exp&quot;;s:7:&quot;2100000&quot;;s:13:&quot;to_station_db&quot;;s:10:&quot;Минск&quot;;s:7:&quot;to_time&quot;;i:1594065180;s:8:&quot;duration&quot;;s:5:&quot;08:36&quot;;s:16:&quot;duration_minutes&quot;;i:516;s:12:&quot;car_category&quot;;s:0:&quot;&quot;;s:6:&quot;places&quot;;a:2:{i:0;a:5:{s:8:&quot;car_type&quot;;i:3;s:10:&quot;free_seats&quot;;s:0:&quot;&quot;;s:5:&quot;price&quot;;s:0:&quot;&quot;;s:10:&quot;price_type&quot;;s:0:&quot;&quot;;s:11:&quot;price_multi&quot;;a:1:{i:0;a:5:{s:6:&quot;places&quot;;i:256;s:6:&quot;prices&quot;;a:1:{i:0;d:11.890000000000001;}s:12:&quot;classservice&quot;;s:3:&quot;3П&quot;;s:14:&quot;tariff_service&quot;;d:2;s:11:&quot;sel_bedding&quot;;b:1;}}}i:1;a:5:{s:8:&quot;car_type&quot;;i:4;s:10:&quot;free_seats&quot;;s:0:&quot;&quot;;s:5:&quot;price&quot;;s:0:&quot;&quot;;s:10:&quot;price_type&quot;;s:0:&quot;&quot;;s:11:&quot;price_multi&quot;;a:1:{i:0;a:5:{s:6:&quot;places&quot;;i:214;s:6:&quot;prices&quot;;a:1:{i:0;d:16.460000000000001;}s:12:&quot;classservice&quot;;s:3:&quot;2К&quot;;s:14:&quot;tariff_service&quot;;d:2;s:11:&quot;sel_bedding&quot;;b:1;}}}}s:19:&quot;prices_by_direction&quot;;a:0:{}s:10:&quot;train_days&quot;;s:18:&quot;ежедневно&quot;;s:17:&quot;train_days_except&quot;;s:0:&quot;&quot;;s:11:&quot;train_stops&quot;;s:0:&quot;&quot;;s:7:&quot;is_left&quot;;b:0;s:14:&quot;from_date_part&quot;;s:13:&quot;from_aternoon&quot;;s:12:&quot;to_date_part&quot;;s:10:&quot;to_evening&quot;;s:7:&quot;service&quot;;s:4:&quot;sspd&quot;;s:4:&quot;info&quot;;a:0:{}s:12:&quot;all_stations&quot;;a:2:{i:0;s:12:&quot;Гомель&quot;;i:1;s:12:&quot;Гродно&quot;;}s:22:&quot;ticket_selling_allowed&quot;;b:1;s:16:&quot;is_special_train&quot;;b:0;s:12:&quot;days_of_sale&quot;;i:45;s:9:&quot;min_price&quot;;d:11.890000000000001;s:7:&quot;is_ukeb&quot;;b:1;s:16:&quot;is_ereg_possible&quot;;b:1;s:14:&quot;is_class_train&quot;;b:0;s:13:&quot;is_fast_train&quot;;b:1;s:14:&quot;train_dep_date&quot;;s:10:&quot;2020-07-06&quot;;s:25:&quot;ticket_selling_allowed_ex&quot;;a:1:{s:6:&quot;status&quot;;b:1;}s:5:&quot;is_by&quot;;b:1;}" />
            <input class="js-sch-item-url" type="hidden" name="url" value="/ru/route/?path=ru%2Froute%2F&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_exp=&from_esr=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_exp=&to_esr=&front_date=%D1%81%D0%B5%D0%B3%D0%BE%D0%B4%D0%BD%D1%8F&date=today" />
            </form>
        </div>
                                    </div>
</div>
                                </div>
                                                                                                                                                            <div class="sch-table__row-wrap js-row from_aternoon to_evening interregional_business w_places eregistration special car_type_2"
                                     data-train-info="{
                            &quot;from&quot;:&quot;2100100&quot;,
                            &quot;to&quot;:&quot;2100000&quot;,
                            &quot;date&quot;:&quot;2020-07-06&quot;
                            }">
                                    <div class="sch-table__row" data-ticket_selling_allowed="true" data-train-id="1_739Б_1594037400_1594048140" data-train-number="739Б" data-train-type="interregional_business">
    <div class="sch-table__cell cell-1">
                        <div class="sch-table__train-type">
            <i class="svg-interregional_business"></i>
            <span class="sch-table__route-type">Межрегиональные линии бизнес-класса</span>
        </div>
                    <a href="/ru/train/?train=739Б&from_exp=2100100&to_exp=2100000&date=today&from=Гомель&to=Минск" class="sch-table__route"><span class="train-number">739Б</span>&nbsp;<span class="train-route">Гомель&nbsp;&mdash; Минск-Пассажирский</span></a>
                <div class="sch-table__link-wrap">
                            <a href="#" class="dash js-load-route" data-href="/ru/train/?popup=true&train=739%D0%91&from_exp=2100100&to_exp=2100000&date=today&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA"><span>Маршрут</span></a>
                        <div class="sch-table__tags">
                <i class="svg-tag-er" title="Электронная регистрация на поезд"></i>                <i class="svg-tag-fp" title="Фирменный поезд"></i>                <i class="svg-tag-express" title="Скорый поезд"></i>                <i class="svg-tag-special" title="Есть места для инвалидов"></i>            </div>
        </div>
        <div class="sch-table__popover">
            <a href="#" class="js-popover" data-content="&lt;div class=&quot;sch-table__route-type&quot;&gt;Межрегиональные линии бизнес-класса&lt;/div&gt;&lt;div class=&quot;sch-table__route&quot;&gt;Гомель&nbsp;&mdash; Минск-Пассажирский&lt;/div&gt;&lt;div class=&quot;sch-table__descr&quot;&gt;&lt;i class=&quot;svg-cruising--white&quot;&gt;&lt;/i&gt;&lt;span&gt;Дни курсирования: по пн, вт, ср, чт&lt;/span&gt;&lt;/div&gt;"></a>
        </div>
    </div>
    <div class="sch-table__cell cell-2">
        <div class="sch-table__cell-top">
            <div class="sch-table__row_2">
                <div class="sch-table__col departure">
                    <div class="sch-table__time train-from-time" data-sort="departure" data-value="6822">15:10</div>
                    <div class="sch-table__station train-from-name">Гомель</div>
                </div>
                <div class="sch-table__col arrival">
                    <div class="sch-table__time train-to-time" data-sort="arrival" data-value="17562">
                        18:09
                    </div>
                                        <div class="sch-table__station train-to-name">Минск</div>
                </div>
                <div class="sch-table__duration visible-xs"><span class="duration">2 ч 59 мин</span>
                </div>
            </div>
        </div>
        <div class="sch-table__cell-bottom">
            <div class="sch-table__descr">
                <i class="svg-cruising"></i>
                <span>Дни курсирования: по пн, вт, ср, чт</span>
            </div>
        </div>
    </div>
    <div class="sch-table__cell cell-3">
        <div class="sch-table__duration train-duration-time" data-sort="duration" data-value="179">2 ч 59 мин</div>
    </div>
    <div class="sch-table__cell cell-4">
        <div class="sch-table__tickets" data-sort="cost" data-value="11.64">
                                    
                                                            <div class="sch-table__t-item has-quant">
                            <div class="sch-table__t-name">Сидячий</div>
                            <a class="sch-table__t-quant js-train-modal dash" data-get="/ru/ajax/route/car_places/?from=2100100&to=2100000&date=today&train_number=739%D0%91&car_type=2" data-car-type="2"><span>2</span></a>                            <div class="sch-table__t-cost">
                                                                <div class="ticket-wrap">
                                                                        <span data-cost-rub="677,26" data-currency-rub="RUB"  data-cost-eur="8,52" data-currency-eur="EUR"  data-cost-usd="9,61" data-currency-usd="USD"  data-cost-byn="23,27" data-currency-byn="BYN" class="js-price"><span class="ticket-cost">23,27</span> <span class="ticket-currency">BYN</span></span>
                                </div>
                                                            </div>
                        </div>
                                            <div class="sch-table__t-item has-quant">
                            <div class="sch-table__t-name"></div>
                            <a class="sch-table__t-quant js-train-modal dash" data-get="/ru/ajax/route/car_places/?from=2100100&to=2100000&date=today&train_number=739%D0%91&car_type=2" data-car-type="2"><span>67</span></a>                            <div class="sch-table__t-cost">
                                                                <div class="ticket-wrap">
                                                                        <span data-cost-rub="338,78" data-currency-rub="RUB"  data-cost-eur="4,26" data-currency-eur="EUR"  data-cost-usd="4,81" data-currency-usd="USD"  data-cost-byn="11,64" data-currency-byn="BYN" class="js-price"><span class="ticket-cost">11,64</span> <span class="ticket-currency">BYN</span></span>
                                </div>
                                                            </div>
                        </div>
                                                        </div>
        

        
                        <div class="sch-table__btn-wrap">
            <form class="js-sch-item-form" action="/ru/order/places/" method="post">
            <a class="btn btn-index" href="javascript:void(0);" onclick="(this).closest('form').submit();">Выбрать места</a>            <input class="js-sch-item-route" type="hidden" name="route" value="a:43:{s:5:&quot;index&quot;;i:3;s:12:&quot;is_main_from&quot;;s:1:&quot;1&quot;;s:10:&quot;is_main_to&quot;;s:1:&quot;0&quot;;s:10:&quot;train_type&quot;;s:22:&quot;interregional_business&quot;;s:13:&quot;car_accessory&quot;;s:0:&quot;&quot;;s:12:&quot;train_number&quot;;s:5:&quot;739Б&quot;;s:12:&quot;train_thread&quot;;s:0:&quot;&quot;;s:5:&quot;title&quot;;s:34:&quot;ГОМЕЛЬ - МИНСК ПАСС&quot;;s:18:&quot;title_station_from&quot;;s:12:&quot;ГОМЕЛЬ&quot;;s:16:&quot;title_station_to&quot;;s:19:&quot;МИНСК ПАСС&quot;;s:12:&quot;from_station&quot;;s:7:&quot;2100100&quot;;s:16:&quot;from_station_exp&quot;;s:7:&quot;2100100&quot;;s:15:&quot;from_station_db&quot;;s:12:&quot;Гомель&quot;;s:9:&quot;from_time&quot;;i:1594037400;s:10:&quot;to_station&quot;;s:7:&quot;2100000&quot;;s:14:&quot;to_station_exp&quot;;s:7:&quot;2100000&quot;;s:13:&quot;to_station_db&quot;;s:10:&quot;Минск&quot;;s:7:&quot;to_time&quot;;i:1594048140;s:8:&quot;duration&quot;;s:5:&quot;02:59&quot;;s:16:&quot;duration_minutes&quot;;i:179;s:12:&quot;car_category&quot;;s:0:&quot;&quot;;s:6:&quot;places&quot;;a:1:{i:0;a:5:{s:8:&quot;car_type&quot;;i:2;s:10:&quot;free_seats&quot;;s:0:&quot;&quot;;s:5:&quot;price&quot;;s:0:&quot;&quot;;s:10:&quot;price_type&quot;;s:0:&quot;&quot;;s:11:&quot;price_multi&quot;;a:2:{i:0;a:3:{s:6:&quot;places&quot;;i:2;s:6:&quot;prices&quot;;a:1:{i:0;d:23.27;}s:12:&quot;classservice&quot;;s:3:&quot;2Р&quot;;}i:1;a:3:{s:6:&quot;places&quot;;i:67;s:6:&quot;prices&quot;;a:1:{i:0;d:11.640000000000001;}s:12:&quot;classservice&quot;;s:3:&quot;2В&quot;;}}}}s:19:&quot;prices_by_direction&quot;;a:0:{}s:10:&quot;train_days&quot;;s:27:&quot;по пн, вт, ср, чт&quot;;s:17:&quot;train_days_except&quot;;s:0:&quot;&quot;;s:11:&quot;train_stops&quot;;s:0:&quot;&quot;;s:7:&quot;is_left&quot;;b:0;s:14:&quot;from_date_part&quot;;s:13:&quot;from_aternoon&quot;;s:12:&quot;to_date_part&quot;;s:10:&quot;to_evening&quot;;s:7:&quot;service&quot;;s:4:&quot;sspd&quot;;s:4:&quot;info&quot;;a:2:{i:0;s:1:&quot;*&quot;;i:1;s:6:&quot;ИНВ&quot;;}s:12:&quot;all_stations&quot;;a:2:{i:0;s:12:&quot;Гомель&quot;;i:1;s:35:&quot;Минск-Пассажирский&quot;;}s:22:&quot;ticket_selling_allowed&quot;;b:1;s:16:&quot;is_special_train&quot;;b:1;s:12:&quot;days_of_sale&quot;;i:45;s:9:&quot;min_price&quot;;d:11.640000000000001;s:7:&quot;is_ukeb&quot;;b:1;s:16:&quot;is_ereg_possible&quot;;b:1;s:14:&quot;is_class_train&quot;;b:1;s:13:&quot;is_fast_train&quot;;b:1;s:14:&quot;train_dep_date&quot;;s:10:&quot;2020-07-06&quot;;s:25:&quot;ticket_selling_allowed_ex&quot;;a:1:{s:6:&quot;status&quot;;b:1;}s:5:&quot;is_by&quot;;b:1;}" />
            <input class="js-sch-item-url" type="hidden" name="url" value="/ru/route/?path=ru%2Froute%2F&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_exp=&from_esr=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_exp=&to_esr=&front_date=%D1%81%D0%B5%D0%B3%D0%BE%D0%B4%D0%BD%D1%8F&date=today" />
            </form>
        </div>
                                    </div>
</div>
                                </div>
                                                                                                                                                            <div class="sch-table__row-wrap js-row from_evening to_evening interregional_business w_places eregistration special car_type_2"
                                     data-train-info="{
                            &quot;from&quot;:&quot;2100100&quot;,
                            &quot;to&quot;:&quot;2100000&quot;,
                            &quot;date&quot;:&quot;2020-07-06&quot;
                            }">
                                    <div class="sch-table__row" data-ticket_selling_allowed="true" data-train-id="1_715Б_1594051500_1594063140" data-train-number="715Б" data-train-type="interregional_business">
    <div class="sch-table__cell cell-1">
                        <div class="sch-table__train-type">
            <i class="svg-interregional_business"></i>
            <span class="sch-table__route-type">Межрегиональные линии бизнес-класса</span>
        </div>
                    <a href="/ru/train/?train=715Б&from_exp=2100100&to_exp=2100000&date=today&from=Гомель&to=Минск" class="sch-table__route"><span class="train-number">715Б</span>&nbsp;<span class="train-route">Гомель&nbsp;&mdash; Минск-Пассажирский</span></a>
                <div class="sch-table__link-wrap">
                            <a href="#" class="dash js-load-route" data-href="/ru/train/?popup=true&train=715%D0%91&from_exp=2100100&to_exp=2100000&date=today&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA"><span>Маршрут</span></a>
                        <div class="sch-table__tags">
                <i class="svg-tag-er" title="Электронная регистрация на поезд"></i>                <i class="svg-tag-fp" title="Фирменный поезд"></i>                <i class="svg-tag-express" title="Скорый поезд"></i>                <i class="svg-tag-special" title="Есть места для инвалидов"></i>            </div>
        </div>
        <div class="sch-table__popover">
            <a href="#" class="js-popover" data-content="&lt;div class=&quot;sch-table__route-type&quot;&gt;Межрегиональные линии бизнес-класса&lt;/div&gt;&lt;div class=&quot;sch-table__route&quot;&gt;Гомель&nbsp;&mdash; Минск-Пассажирский&lt;/div&gt;&lt;div class=&quot;sch-table__descr&quot;&gt;&lt;i class=&quot;svg-cruising--white&quot;&gt;&lt;/i&gt;&lt;span&gt;Дни курсирования: ежедневно&lt;/span&gt;&lt;/div&gt;"></a>
        </div>
    </div>
    <div class="sch-table__cell cell-2">
        <div class="sch-table__cell-top">
            <div class="sch-table__row_2">
                <div class="sch-table__col departure">
                    <div class="sch-table__time train-from-time" data-sort="departure" data-value="20922">19:05</div>
                    <div class="sch-table__station train-from-name">Гомель</div>
                </div>
                <div class="sch-table__col arrival">
                    <div class="sch-table__time train-to-time" data-sort="arrival" data-value="32562">
                        22:19
                    </div>
                                        <div class="sch-table__station train-to-name">Минск</div>
                </div>
                <div class="sch-table__duration visible-xs"><span class="duration">3 ч 14 мин</span>
                </div>
            </div>
        </div>
        <div class="sch-table__cell-bottom">
            <div class="sch-table__descr">
                <i class="svg-cruising"></i>
                <span>Дни курсирования: ежедневно</span>
            </div>
        </div>
    </div>
    <div class="sch-table__cell cell-3">
        <div class="sch-table__duration train-duration-time" data-sort="duration" data-value="194">3 ч 14 мин</div>
    </div>
    <div class="sch-table__cell cell-4">
        <div class="sch-table__tickets" data-sort="cost" data-value="11.64">
                                    
                                                            <div class="sch-table__t-item has-quant">
                            <div class="sch-table__t-name">Сидячий</div>
                            <a class="sch-table__t-quant js-train-modal dash" data-get="/ru/ajax/route/car_places/?from=2100100&to=2100000&date=today&train_number=715%D0%91&car_type=2" data-car-type="2"><span>2</span></a>                            <div class="sch-table__t-cost">
                                                                <div class="ticket-wrap">
                                                                        <span data-cost-rub="677,26" data-currency-rub="RUB"  data-cost-eur="8,52" data-currency-eur="EUR"  data-cost-usd="9,61" data-currency-usd="USD"  data-cost-byn="23,27" data-currency-byn="BYN" class="js-price"><span class="ticket-cost">23,27</span> <span class="ticket-currency">BYN</span></span>
                                </div>
                                                            </div>
                        </div>
                                            <div class="sch-table__t-item has-quant">
                            <div class="sch-table__t-name"></div>
                            <a class="sch-table__t-quant js-train-modal dash" data-get="/ru/ajax/route/car_places/?from=2100100&to=2100000&date=today&train_number=715%D0%91&car_type=2" data-car-type="2"><span>123</span></a>                            <div class="sch-table__t-cost">
                                                                <div class="ticket-wrap">
                                                                        <span data-cost-rub="338,78" data-currency-rub="RUB"  data-cost-eur="4,26" data-currency-eur="EUR"  data-cost-usd="4,81" data-currency-usd="USD"  data-cost-byn="11,64" data-currency-byn="BYN" class="js-price"><span class="ticket-cost">11,64</span> <span class="ticket-currency">BYN</span></span>
                                </div>
                                                            </div>
                        </div>
                                                        </div>
        

        
                        <div class="sch-table__btn-wrap">
            <form class="js-sch-item-form" action="/ru/order/places/" method="post">
            <a class="btn btn-index" href="javascript:void(0);" onclick="(this).closest('form').submit();">Выбрать места</a>            <input class="js-sch-item-route" type="hidden" name="route" value="a:43:{s:5:&quot;index&quot;;i:4;s:12:&quot;is_main_from&quot;;s:1:&quot;1&quot;;s:10:&quot;is_main_to&quot;;s:1:&quot;0&quot;;s:10:&quot;train_type&quot;;s:22:&quot;interregional_business&quot;;s:13:&quot;car_accessory&quot;;s:0:&quot;&quot;;s:12:&quot;train_number&quot;;s:5:&quot;715Б&quot;;s:12:&quot;train_thread&quot;;s:0:&quot;&quot;;s:5:&quot;title&quot;;s:34:&quot;ГОМЕЛЬ - МИНСК ПАСС&quot;;s:18:&quot;title_station_from&quot;;s:12:&quot;ГОМЕЛЬ&quot;;s:16:&quot;title_station_to&quot;;s:19:&quot;МИНСК ПАСС&quot;;s:12:&quot;from_station&quot;;s:7:&quot;2100100&quot;;s:16:&quot;from_station_exp&quot;;s:7:&quot;2100100&quot;;s:15:&quot;from_station_db&quot;;s:12:&quot;Гомель&quot;;s:9:&quot;from_time&quot;;i:1594051500;s:10:&quot;to_station&quot;;s:7:&quot;2100000&quot;;s:14:&quot;to_station_exp&quot;;s:7:&quot;2100000&quot;;s:13:&quot;to_station_db&quot;;s:10:&quot;Минск&quot;;s:7:&quot;to_time&quot;;i:1594063140;s:8:&quot;duration&quot;;s:5:&quot;03:14&quot;;s:16:&quot;duration_minutes&quot;;i:194;s:12:&quot;car_category&quot;;s:0:&quot;&quot;;s:6:&quot;places&quot;;a:1:{i:0;a:5:{s:8:&quot;car_type&quot;;i:2;s:10:&quot;free_seats&quot;;s:0:&quot;&quot;;s:5:&quot;price&quot;;s:0:&quot;&quot;;s:10:&quot;price_type&quot;;s:0:&quot;&quot;;s:11:&quot;price_multi&quot;;a:2:{i:0;a:3:{s:6:&quot;places&quot;;i:2;s:6:&quot;prices&quot;;a:1:{i:0;d:23.27;}s:12:&quot;classservice&quot;;s:3:&quot;2Р&quot;;}i:1;a:3:{s:6:&quot;places&quot;;i:123;s:6:&quot;prices&quot;;a:1:{i:0;d:11.640000000000001;}s:12:&quot;classservice&quot;;s:3:&quot;2В&quot;;}}}}s:19:&quot;prices_by_direction&quot;;a:0:{}s:10:&quot;train_days&quot;;s:18:&quot;ежедневно&quot;;s:17:&quot;train_days_except&quot;;s:0:&quot;&quot;;s:11:&quot;train_stops&quot;;s:0:&quot;&quot;;s:7:&quot;is_left&quot;;b:0;s:14:&quot;from_date_part&quot;;s:12:&quot;from_evening&quot;;s:12:&quot;to_date_part&quot;;s:10:&quot;to_evening&quot;;s:7:&quot;service&quot;;s:4:&quot;sspd&quot;;s:4:&quot;info&quot;;a:2:{i:0;s:1:&quot;*&quot;;i:1;s:6:&quot;ИНВ&quot;;}s:12:&quot;all_stations&quot;;a:2:{i:0;s:12:&quot;Гомель&quot;;i:1;s:35:&quot;Минск-Пассажирский&quot;;}s:22:&quot;ticket_selling_allowed&quot;;b:1;s:16:&quot;is_special_train&quot;;b:1;s:12:&quot;days_of_sale&quot;;i:45;s:9:&quot;min_price&quot;;d:11.640000000000001;s:7:&quot;is_ukeb&quot;;b:1;s:16:&quot;is_ereg_possible&quot;;b:1;s:14:&quot;is_class_train&quot;;b:1;s:13:&quot;is_fast_train&quot;;b:1;s:14:&quot;train_dep_date&quot;;s:10:&quot;2020-07-06&quot;;s:25:&quot;ticket_selling_allowed_ex&quot;;a:1:{s:6:&quot;status&quot;;b:1;}s:5:&quot;is_by&quot;;b:1;}" />
            <input class="js-sch-item-url" type="hidden" name="url" value="/ru/route/?path=ru%2Froute%2F&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_exp=&from_esr=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_exp=&to_esr=&front_date=%D1%81%D0%B5%D0%B3%D0%BE%D0%B4%D0%BD%D1%8F&date=today" />
            </form>
        </div>
                                    </div>
</div>
                                </div>
                                                                                                                                                            <div class="sch-table__row-wrap js-row from_evening to_night interregional_economy w_places eregistration car_type_2 car_type_3 car_type_4"
                                     data-train-info="{
                            &quot;from&quot;:&quot;2100100&quot;,
                            &quot;to&quot;:&quot;2100000&quot;,
                            &quot;date&quot;:&quot;2020-07-06&quot;
                            }">
                                    <div class="sch-table__row" data-ticket_selling_allowed="true" data-train-id="1_621Б_1594062360_1594090080" data-train-number="621Б" data-train-type="interregional_economy">
    <div class="sch-table__cell cell-1">
                <div class="sch-table__label">
            <div class="sch-label sch-label--success">
                <div class="sch-label__text">Самый недорогой</div>
            </div>
        </div>
                        <div class="sch-table__train-type">
            <i class="svg-interregional_economy"></i>
            <span class="sch-table__route-type">Межрегиональные линии экономкласса</span>
        </div>
                    <a href="/ru/train/?train=621Б&from_exp=2100100&to_exp=2100000&date=today&from=Гомель&to=Минск" class="sch-table__route"><span class="train-number">621Б</span>&nbsp;<span class="train-route">Гомель&nbsp;&mdash; Минск-Пассажирский</span></a>
                <div class="sch-table__link-wrap">
                            <a href="#" class="dash js-load-route" data-href="/ru/train/?popup=true&train=621%D0%91&from_exp=2100100&to_exp=2100000&date=today&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA"><span>Маршрут</span></a>
                        <div class="sch-table__tags">
                <i class="svg-tag-er" title="Электронная регистрация на поезд"></i>                                <i class="svg-tag-express" title="Скорый поезд"></i>                            </div>
        </div>
        <div class="sch-table__popover">
            <a href="#" class="js-popover" data-content="&lt;div class=&quot;sch-table__route-type&quot;&gt;Межрегиональные линии экономкласса&lt;/div&gt;&lt;div class=&quot;sch-table__route&quot;&gt;Гомель&nbsp;&mdash; Минск-Пассажирский&lt;/div&gt;&lt;div class=&quot;sch-table__descr&quot;&gt;&lt;i class=&quot;svg-cruising--white&quot;&gt;&lt;/i&gt;&lt;span&gt;Дни курсирования: ежедневно&lt;/span&gt;&lt;/div&gt;"></a>
        </div>
    </div>
    <div class="sch-table__cell cell-2">
        <div class="sch-table__cell-top">
            <div class="sch-table__row_2">
                <div class="sch-table__col departure">
                    <div class="sch-table__time train-from-time" data-sort="departure" data-value="31782">22:06</div>
                    <div class="sch-table__station train-from-name">Гомель</div>
                </div>
                <div class="sch-table__col arrival">
                    <div class="sch-table__time train-to-time" data-sort="arrival" data-value="59502">
                        05:48
                    </div>
                                                            <div class="sch-table__date">
                        07 июля, вт
                    </div>
                                        <div class="sch-table__station train-to-name">Минск</div>
                </div>
                <div class="sch-table__duration visible-xs"><span class="duration">7 ч 42 мин</span>
                </div>
            </div>
        </div>
        <div class="sch-table__cell-bottom">
            <div class="sch-table__descr">
                <i class="svg-cruising"></i>
                <span>Дни курсирования: ежедневно</span>
            </div>
        </div>
    </div>
    <div class="sch-table__cell cell-3">
        <div class="sch-table__duration train-duration-time" data-sort="duration" data-value="462">7 ч 42 мин</div>
    </div>
    <div class="sch-table__cell cell-4">
        <div class="sch-table__tickets" data-sort="cost" data-value="7.74">
                                    
                                                            <div class="sch-table__t-item has-quant">
                            <div class="sch-table__t-name">Сидячий</div>
                            <a class="sch-table__t-quant js-train-modal dash" data-get="/ru/ajax/route/car_places/?from=2100100&to=2100000&date=today&train_number=621%D0%91&car_type=2" data-car-type="2"><span>109</span></a>                            <div class="sch-table__t-cost">
                                                                <div class="ticket-wrap">
                                                                        <span data-cost-rub="225,27" data-currency-rub="RUB"  data-cost-eur="2,83" data-currency-eur="EUR"  data-cost-usd="3,20" data-currency-usd="USD"  data-cost-byn="7,74" data-currency-byn="BYN" class="js-price"><span class="ticket-cost">7,74</span> <span class="ticket-currency">BYN</span></span>
                                </div>
                                                            </div>
                        </div>
                                                
                                                            <div class="sch-table__t-item has-quant">
                            <div class="sch-table__t-name">Плацкартный</div>
                            <a class="sch-table__t-quant js-train-modal dash" data-get="/ru/ajax/route/car_places/?from=2100100&to=2100000&date=today&train_number=621%D0%91&car_type=3" data-car-type="3"><span>154</span></a>                            <div class="sch-table__t-cost">
                                                                <div class="ticket-wrap">
                                                                        <span data-cost-rub="346,05" data-currency-rub="RUB"  data-cost-eur="4,35" data-currency-eur="EUR"  data-cost-usd="4,91" data-currency-usd="USD"  data-cost-byn="11,89" data-currency-byn="BYN" class="js-price"><span class="ticket-cost">11,89</span> <span class="ticket-currency">BYN</span></span>
                                </div>
                                                            </div>
                        </div>
                                                
                                                            <div class="sch-table__t-item has-quant">
                            <div class="sch-table__t-name">Купейный</div>
                            <a class="sch-table__t-quant js-train-modal dash" data-get="/ru/ajax/route/car_places/?from=2100100&to=2100000&date=today&train_number=621%D0%91&car_type=4" data-car-type="4"><span>56</span></a>                            <div class="sch-table__t-cost">
                                                                <div class="ticket-wrap">
                                                                        <span data-cost-rub="479,06" data-currency-rub="RUB"  data-cost-eur="6,03" data-currency-eur="EUR"  data-cost-usd="6,80" data-currency-usd="USD"  data-cost-byn="16,46" data-currency-byn="BYN" class="js-price"><span class="ticket-cost">16,46</span> <span class="ticket-currency">BYN</span></span>
                                </div>
                                                            </div>
                        </div>
                                                        </div>
        

        
                        <div class="sch-table__btn-wrap">
            <form class="js-sch-item-form" action="/ru/order/places/" method="post">
            <a class="btn btn-index" href="javascript:void(0);" onclick="(this).closest('form').submit();">Выбрать места</a>            <input class="js-sch-item-route" type="hidden" name="route" value="a:44:{s:5:&quot;index&quot;;i:5;s:12:&quot;is_main_from&quot;;s:1:&quot;1&quot;;s:10:&quot;is_main_to&quot;;s:1:&quot;0&quot;;s:10:&quot;train_type&quot;;s:21:&quot;interregional_economy&quot;;s:13:&quot;car_accessory&quot;;s:0:&quot;&quot;;s:12:&quot;train_number&quot;;s:5:&quot;621Б&quot;;s:12:&quot;train_thread&quot;;s:0:&quot;&quot;;s:5:&quot;title&quot;;s:34:&quot;ГОМЕЛЬ - МИНСК ПАСС&quot;;s:18:&quot;title_station_from&quot;;s:12:&quot;ГОМЕЛЬ&quot;;s:16:&quot;title_station_to&quot;;s:19:&quot;МИНСК ПАСС&quot;;s:12:&quot;from_station&quot;;s:7:&quot;2100100&quot;;s:16:&quot;from_station_exp&quot;;s:7:&quot;2100100&quot;;s:15:&quot;from_station_db&quot;;s:12:&quot;Гомель&quot;;s:9:&quot;from_time&quot;;i:1594062360;s:10:&quot;to_station&quot;;s:7:&quot;2100000&quot;;s:14:&quot;to_station_exp&quot;;s:7:&quot;2100000&quot;;s:13:&quot;to_station_db&quot;;s:10:&quot;Минск&quot;;s:7:&quot;to_time&quot;;i:1594090080;s:8:&quot;duration&quot;;s:5:&quot;07:42&quot;;s:16:&quot;duration_minutes&quot;;i:462;s:12:&quot;car_category&quot;;s:0:&quot;&quot;;s:6:&quot;places&quot;;a:3:{i:0;a:5:{s:8:&quot;car_type&quot;;i:2;s:10:&quot;free_seats&quot;;s:0:&quot;&quot;;s:5:&quot;price&quot;;s:0:&quot;&quot;;s:10:&quot;price_type&quot;;s:0:&quot;&quot;;s:11:&quot;price_multi&quot;;a:1:{i:0;a:3:{s:6:&quot;places&quot;;i:109;s:6:&quot;prices&quot;;a:1:{i:0;d:7.7400000000000002;}s:12:&quot;classservice&quot;;s:3:&quot;3С&quot;;}}}i:1;a:5:{s:8:&quot;car_type&quot;;i:3;s:10:&quot;free_seats&quot;;s:0:&quot;&quot;;s:5:&quot;price&quot;;s:0:&quot;&quot;;s:10:&quot;price_type&quot;;s:0:&quot;&quot;;s:11:&quot;price_multi&quot;;a:1:{i:0;a:5:{s:6:&quot;places&quot;;i:154;s:6:&quot;prices&quot;;a:1:{i:0;d:11.890000000000001;}s:12:&quot;classservice&quot;;s:3:&quot;3П&quot;;s:14:&quot;tariff_service&quot;;d:2;s:11:&quot;sel_bedding&quot;;b:1;}}}i:2;a:5:{s:8:&quot;car_type&quot;;i:4;s:10:&quot;free_seats&quot;;s:0:&quot;&quot;;s:5:&quot;price&quot;;s:0:&quot;&quot;;s:10:&quot;price_type&quot;;s:0:&quot;&quot;;s:11:&quot;price_multi&quot;;a:1:{i:0;a:5:{s:6:&quot;places&quot;;i:56;s:6:&quot;prices&quot;;a:1:{i:0;d:16.460000000000001;}s:12:&quot;classservice&quot;;s:3:&quot;2К&quot;;s:14:&quot;tariff_service&quot;;d:2;s:11:&quot;sel_bedding&quot;;b:1;}}}}s:19:&quot;prices_by_direction&quot;;a:0:{}s:10:&quot;train_days&quot;;s:18:&quot;ежедневно&quot;;s:17:&quot;train_days_except&quot;;s:0:&quot;&quot;;s:11:&quot;train_stops&quot;;s:0:&quot;&quot;;s:7:&quot;is_left&quot;;b:0;s:14:&quot;from_date_part&quot;;s:12:&quot;from_evening&quot;;s:12:&quot;to_date_part&quot;;s:8:&quot;to_night&quot;;s:7:&quot;service&quot;;s:4:&quot;sspd&quot;;s:4:&quot;info&quot;;a:0:{}s:12:&quot;all_stations&quot;;a:2:{i:0;s:12:&quot;Гомель&quot;;i:1;s:35:&quot;Минск-Пассажирский&quot;;}s:22:&quot;ticket_selling_allowed&quot;;b:1;s:16:&quot;is_special_train&quot;;b:0;s:12:&quot;days_of_sale&quot;;i:45;s:9:&quot;min_price&quot;;d:7.7400000000000002;s:7:&quot;is_ukeb&quot;;b:1;s:16:&quot;is_ereg_possible&quot;;b:1;s:14:&quot;is_class_train&quot;;b:0;s:13:&quot;is_fast_train&quot;;b:1;s:14:&quot;train_dep_date&quot;;s:10:&quot;2020-07-06&quot;;s:25:&quot;ticket_selling_allowed_ex&quot;;a:1:{s:6:&quot;status&quot;;b:1;}s:5:&quot;is_by&quot;;b:1;s:11:&quot;is_cheapest&quot;;b:1;}" />
            <input class="js-sch-item-url" type="hidden" name="url" value="/ru/route/?path=ru%2Froute%2F&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_exp=&from_esr=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_exp=&to_esr=&front_date=%D1%81%D0%B5%D0%B3%D0%BE%D0%B4%D0%BD%D1%8F&date=today" />
            </form>
        </div>
                                    </div>
</div>
                                </div>
                                                                                                                                                                                    <div data-ordertype="date" id="ordertype"><!-- --></div>
                                    </div>
            </div>
            <div class="sch-table__no-result-wrap">
                <div class="sch-table__no-result">По Вашим параметрам маршрут не найден</div>
            </div>
        </div>
        <div class="sch-caption">
            <ul class="sch-caption__list list-reset">
                <li class="sch-caption__item"><i
                            class="sch-caption__icon svg-sch-caption_er"></i><span
                            class="sch-caption__name">— Электронная регистрация на поезд</span>
                </li>
                <li class="sch-caption__item"><i
                            class="sch-caption__icon svg-sch-caption_fp"></i><span
                            class="sch-caption__name">— Фирменный поезд</span>
                </li>
                <li class="sch-caption__item"><i
                            class="sch-caption__icon svg-sch-caption_express"></i><span
                            class="sch-caption__name">— Скорый поезд</span>
                </li>
                <li class="sch-caption__item"><i
                            class="sch-caption__icon svg-sch-caption_special"></i><span
                            class="sch-caption__name">— Есть места для инвалидов</span>
                </li>
            </ul>
        </div>
        <div class="sch-add-links">
            <a class="sch-add-links__link" href="/ru/routemulti/?path=ru%2Froute%2F&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_exp=&from_esr=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_exp=&to_esr=&front_date=%D1%81%D0%B5%D0%B3%D0%BE%D0%B4%D0%BD%D1%8F&date=today"><i class="svg-sch-add-link_routes"></i><span>Маршруты с пересадками</span></a>
            <div class="sch-add-links__link js-print">
                <form class="sch-add-links__form js-print-form" action="/ru/route/?path=ru%2Froute%2F&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_exp=&from_esr=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_exp=&to_esr=&front_date=%D1%81%D0%B5%D0%B3%D0%BE%D0%B4%D0%BD%D1%8F&date=today&print=true" method="post" target="_blank">
                    <input class="js-print-filter-routes-input" type="hidden" name="filter_routes">
                    <button class="sch-add-links__submit js-print-submit" type="submit"><i class="svg-sch-add-link_print"></i><span>Распечатать</span></button>
                </form>
            </div>
                            <script>
                    !function () {
                        'use strict';

                        (function () {
                            var scheduleWrap = ('.g-content');
                            scheduleWrap.each(function () {
                                WS_RW_APP.Factory('PrintRoutes', {
                                    block: (this)
                                });
                            });
                        });
                    }();
                </script>
                    </div>
    </div>

                <div class="sl-offer">
    <div class="title-wrap">
        <div class="h2 m-title">Специальные предложения БелЖД</div>
        <div class="sl-nav-4"><a class="prev" href="#"></a><a class="next" href="#"></a></div>
    </div>
    <div class="wrap cursor inited-not">
        <div class="slider">
                                    <div class="slide"><a class="sl-offer-slide" href="/ru/actions/skidki_na_proezd_v_soobschenii_belarus_r/">
                    <div class="pic">
                        <div class="pic-inner"><img class="img" src="/uploads/iblock/6b7/Belarus-_-Rossiya.jpg"  alt="Скидки на проезд в сообщении Беларусь—Россия на 2020 год" title="Скидки на проезд в сообщении Беларусь—Россия на 2020 год"></div>
                    </div>
                    <div class="b-wrap">
                        <div class="h4 title">Скидки на проезд в сообщении Беларусь—Россия на 2020 год</div>
                        <div class="text"><p>
	 В&nbsp;2020 году в&nbsp;сообщении БЧ—РЖД применяются следующие тарифные условия:
</p></div>
                    </div></a>
            </div>
                                                <div class="slide"><a class="sl-offer-slide" href="/ru/actions/information-on-calendar-periods-flexible-charting-the-changes-in-the-coefficients-of-indexation-to-t/">
                    <div class="pic">
                        <div class="pic-inner"><img class="img" src="/uploads/iblock/886/kalendar.jpg"  alt="Информация о календарных периодах гибких графиков изменения коэффициентов индексации на 2020 год" title="Информация о календарных периодах гибких графиков изменения коэффициентов индексации на 2020 год"></div>
                    </div>
                    <div class="b-wrap">
                        <div class="h4 title">Информация о календарных периодах гибких графиков изменения коэффициентов индексации на 2020 год</div>
                        <div class="text"></div>
                    </div></a>
            </div>
                                                <div class="slide"><a class="sl-offer-slide" href="/ru/actions/discounts-when-you-travel-in-a-group/">
                    <div class="pic">
                        <div class="pic-inner"><img class="img" src="/uploads/iblock/dba/zaglushka.png"  alt="Скидки при проезде в составе группы" title="Скидки при проезде в составе группы"></div>
                    </div>
                    <div class="b-wrap">
                        <div class="h4 title">Скидки при проезде в составе группы</div>
                        <div class="text"><p>
	 При проезде организованных групп в&nbsp;направлении государств-участников СНГ, а&nbsp;также Латвии, Литвы и&nbsp;Эстонии предоставляются скидки с&nbsp;общей стоимости проезда:
</p></div>
                    </div></a>
            </div>
                                                                                                                                                                                                        </div>
    </div>
    <div class="js-sl-pager sl-pager-8"></div>
</div>
    </div>
</div>
<div class="vertical-center electr-modal modal fade" id="electr-popup" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="electr-modal__header">
                <div class="electr-modal__title">Проездной документ (билет) на дату</div>
                <button class="close" type="button" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="electr-modal__body">
                <p>Оформив билеты на поезд с ненумерованными местами, Вы сможете совершить поездку  в указанную дату на любом поезде выбранного вами типа линий.  Данный проездной документ будет действителен до 02.00 следующих суток.</p>
                <a class="btn btn-index" href="javascript:void(0);">Перейти к оформлению</a>
            </div>
        </div>
    </div>
</div>
<div class="vertical-center timeout-modal modal fade" id="timeout-popup" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="timeout-modal__header">
                <div class="timeout-modal__title">Результаты поиска могли устареть</div>
                <button class="close close--black" type="button" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="timeout-modal__body">
                <a class="timeout-modal__link lnk-pseudo" href="/ru/route/?path=ru%2Froute%2F&from=%D0%93%D0%BE%D0%BC%D0%B5%D0%BB%D1%8C&from_exp=&from_esr=&to=%D0%9C%D0%B8%D0%BD%D1%81%D0%BA&to_exp=&to_esr=&front_date=%D1%81%D0%B5%D0%B3%D0%BE%D0%B4%D0%BD%D1%8F&date=today">Обновите результаты</a>
                или
                <a class="timeout-modal__link lnk-pseudo" href="/ru/">перейдите на главную страницу</a>
            </div>
        </div>
    </div>
</div>
<script>
    !function () {
        'use strict';

        (function () {
            setTimeout(function(){
                var tModal = ('#timeout-popup');
                if (tModal.length) {
                    tModal.modal('show');
                }
            }, 1800000);
        });
    }();
</script>
<script>
    'use strict';
    var WS_RW_APP = WS_RW_APP || {};
    WS_RW_APP.lang = WS_RW_APP.lang || {};
    WS_RW_APP.lang.CarriageSchema = {
        requestError: "Ошибка загрузки вагона",
        seatTypes: {
            "T": "верхнее",
            "B": "нижнее",
            "M": "среднее",
            "ST": "верхнее боковое",
            "SB": "нижнее боковое"
        },
        seatLegend: {
            "F": "свободное место",
            "B": "купленное место",
            "N": "недоступное место",
            "I": "место для людей с ограниченными возможностями",
            "C": "выбранное место",
            "R": "выбранный диапазон мест"
        },
        coupeGender: "Тип купе",
        genderNames: {
            male: "Мужское",
            female: "Женское",
            whole: "Целое",
            hybrid: "Смешанное"
        },
        seatGendersFull: {
            "F": "Женское купе",
            "M": "Мужское купе",
            "H": "Смешанное купе",
            "W": "Целое купе"
        },
        seatGendersShort: {
            "F": "Ж",
            "M": "М",
            "H": "С",
            "W": "Ц"
        },
        onlyCasses: '(можно купить только в ж/д-кассе)',
        currency: 'BYN',
        choosenTip: 'Чтобы выбрать места нажмите на первом месте или первом и последнем свободных местах, которые Вы хотите выбрать. Места будут зарезервированы из выбранного Вами диапазона.<br> Если необходимо выбрать одно место, то нажмите один раз на свободном месте.',
        unchoosenTip: 'Выбор мест на схеме вагона осуществляется на этапе покупки проездных документов при вводе данных пассажиров.',
        carrier: 'Перевозчик',
        owner: 'Принадлежность вагона',
        freePlacesNums: 'Номера свободных мест',
        noSchema: 'Для данного вагона нет схемы расположения мест',
        specialSeatsAttention: 'В вагоне есть места для лиц с ограниченными физическими возможностями (указанные места можно приобрести только в билетной кассе)',
        noElReg: "Необходимо получить билет в кассе Белорусской железной дороги!",
        saleOnTwo: "2M - В тариф включена стоимость за 2 места",
        layering: "Ярусность мест (нижнее/верхнее)",
        any: "Любая",
        layerAny: "Любое",
        upperCountWord: "верхн",
        lowerCountWord: "нижн",
        countWordEnd1: "ее",
        countWordEnd2: "их",
        countWordEnd3: "их"
    };
</script>
<script>
    'use strict';
    var WS_RW_APP = WS_RW_APP || {};
    WS_RW_APP.lang = WS_RW_APP.lang || {};
    WS_RW_APP.lang.CarriageModal = {
        freeSeatsTitle: 'Свободные места',
        departure: 'Отправление',
        arrival: 'Прибытие',
        price: 'Стоимость',
        timeInWay: 'В пути',
        totalFreeSeatsCount: 'Всего свободно мест',
        freeSeatsCount: 'Свободные места',
        carriage: 'Вагон',
        buyTicket: 'Выбрать места',
        currency: 'BYN',
        carriageTip: 'Выбор мест на схеме вагона осуществляется на этапе покупки проездных документов при вводе данных пассажиров.',
        priceTip: 'Внимание! Стоимость проездного документа указана в белорусских рублях на заданную дату отправления для одного взрослого пассажира (в указанную стоимость не включены тарифные сборы за оформление проездных документов).',
        noPriceTip: 'Стоимость проездного документа можно узнать на этапе оформления проездного документа',
        noPrice: 'Нет информации',
        trainDetailReqError: 'Информация недоступна, попробуйте повторить запрос',
        retryRequest: 'Повторить запрос',
        totalPlaces: 'Всего свободно мест',
        upperPlaces: 'Верхние',
        lowerPlaces: 'Нижние',
        upperSidePlaces: 'Верхние боковые',
        lowerSidePlaces: 'Нижние боковые',
        elReg: 'Электронная регистрация',
        noElReg: 'Необходимо получить билет в кассе Белорусской железной дороги!',
        specialSeatsAttention: 'В вагоне есть места для лиц с ограниченными физическими возможностями (указанные места можно приобрести только в билетной кассе)',
        seatsOnlyForDisabled: 'Оставшиеся места можно приобрести только в билетной кассе'
    };
</script>
<script>
    (function() {
        if (typeof blockScroller !== 'undefined') {
            blockScroller.init({
                block: ('#sch-route ')
            });
        }
    });
</script>

<script type="text/javascript">
    (function(){
        ('#electr-popup').on('show.bs.modal', function (event) {
            ('#electr-popup a.btn.btn-index').click(function(){
                (event.relatedTarget).closest('form').submit();
            });
        })
    })
</script>
<script>
    var WS_RW_APP = WS_RW_APP || {};
    WS_RW_APP.lang = WS_RW_APP.lang || {};
    WS_RW_APP.lang.TicketClarification = {
        title: "Для покупки билета уточните параметры",
        lineType: "Тип линии",
        chooseLineType: "Выберите тип линий",
        fromStation: "Станция отправления",
        chooseFromStation: "Выберите станцию отправления",
        tariff: "полный тариф",
        currency: "BYN",
        continueBtn: "Продолжить",
        onlyForAuthUsers: "Покупка поездок доступна только для авторизованных пользователей",
        lineTypes: {
            "bus": "Автобус",
            "city": "Городские линии",
            "regional_economy": "Региональные линии экономкласса",
            "regional_business": "Региональные линии бизнес-класса",
            "interregional_economy": "Межрегиональные линии экономкласса",
            "interregional_business": "Межрегиональные линии бизнес-класса",
            "international": "Международные линии"
        }
    };
    WS_RW_APP.lang.UnauthorizedPurchase = {
        purchaseOnlyForAuthUsers: "Покупка доступна только для авторизованных пользователей"
    };
</script>
<script>
    !function () {
        'use strict';

        (function () {
            var unauthorizedPurchase = WS_RW_APP.Factory('UnauthorizedPurchase', {
                authModal: ('#auth-popup')
            });
            WS_RW_APP.Factory('TicketClarification', {
                block: ('#TicketClarification'),
                unauthorizedPurchase: unauthorizedPurchase
            });
        });
    }();
</script>
                                </main>
                            </div>
                        </div>
                    </div>
                            </div>
        </div>
        <div id="stationsMap" class="stations-map">
    <div id="bMapModal" class="stations-map__modal modal fade vertical-center" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="stations-map__modal-dialog modal-dialog">
            <div class="stations-map__modal-content modal-content">
                <button class="stations-map__close close" type="button" data-dismiss="modal" aria-hidden="true"></button>
                <div class="stations-map__preloader preloader active">
                    <div class="preloader__spinner xs"></div>
                </div>
                <div class="b-map popup" id="PopupMap">
                    <div class="map_inner">
                        <h2 class="stations-map__title">Найти станцию или населенный пункт</h2>
                        <div class="stations-map__inner">
                            <div class="stations-map__content">
                                <a class="stations-map__geo-btn stations-map__geo-btn--mob">
                                    <i class="stations-map__geo-btn-ic"></i>
                                    <span>Определить моё местоположение</span>
                                </a>
                                <form class="map_search stations-map__search-form" action="/">
                                    <div class="map_field">
                                        <input class="map_input form-control stations-map__search-input" type="text" id="map_search_form" name="term" placeholder="Введите название станции/населенного пункта"/>
                                    </div>
                                    <div class="b-btn middle-yellow">
                                        <button class="btn btn-default" type="submit">Найти</button>
                                    </div><!-- // b-btn -->
                                </form>
                                <div class="map_view stations-map__map" id="map4" style="width: 667px; height: 479px"></div>
                                <div class="stations-map__mob-error">
                                    <span class="stations-map__error"></span>
                                </div>
                            </div>
                            <div class="stations-map__side">
                                <a class="stations-map__geo-btn">
                                    <i class="stations-map__geo-btn-ic"></i>
                                    <span>Определить моё местоположение</span>
                                </a>
                                <div class="stations-map__side-inner">
                                    <span class="stations-map__error"></span>
                                    <ul class="stations-map__points-list list-reset"></ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- // b-map -->
            </div>
        </div>
    </div>
    <script>
        var WS_RW_APP = WS_RW_APP || {};
        WS_RW_APP.lang = WS_RW_APP.lang || {};
        WS_RW_APP.lang.StationsMap = {
            noPointError: 'Внимание! Поиск только по территории РБ!',
            searchMinChars: 'Наберите не менее трех букв',
            chooseStation: 'Выбрать станцию',
            noGeolocation: 'Ваш браузер не поддерживает функцию определения местоположения.'
        };

        !function () {
            'use strict';

            (function () {
                WS_RW_APP.Factory('StationsMap', {
                    block: ('#stationsMap'),
                    mapInitScriptUrl: '/apimaps?key=2dbcd492534996d38157ff4c4ef5f302&language=ru',
                    mapProxyHost: '/cgi-bin/proxy.cgi?url=',
                    backendMap: 'https://georasp.rw.by',
                    filter: 'gid,by_only,non_multistation',
                    minSearchValueLength: 3
                });
            });
        }();
    </script>
</div>

        <footer class="g-footer hide-print">
<div class="container">
	<div class="g-footer_i">
		<div class="row row_x2">
			<div class="col-md-9 col-sm-12 col-md-push-3">
				<div class="menu-foot-2 hide-print clearfix">
					<div class="row row_x2 js-height">
						<div class="col-sm-4 col-xs-12 item">
							<ul class="menu_level_1 break-word list-reset js-trg">
								<li class="item_1"><a href="/ru/people_with_disabilities/">Поддержка лиц с&nbsp;ограниченными физическими возможностями</a></li>
								<li class="item_1"><a href="/ru/points_of_sale/">Пункты продажи билетов</a></li>
								<li class="item_1"><a href="/ru/tablo/">Онлайн-табло</a></li>
								<li class="item_1"><a href="https://www.rw.by/passengers_services/information_services/calendar_of_the_passenger/">Календарь пассажира</a></li>
								<li class="item_1"><a href="/ru/actions/">Скидки и&nbsp;специальные предложения</a></li>
								 <!--<li class="item_1"><a href="/ru/companies/" ><span>Компании-перевозчики</span></a> </li>-->
							</ul>
						</div>
						<div class="col-sm-4 col-xs-12 item">
							<ul class="menu_level_1 break-word list-reset js-trg">
								<li class="item_1"><a href="/ru/railway_stations/">Железнодорожные вокзалы</a>
								<div class="submenu">
									<ul class="menu_level_2 list-reset">
										<li class="item_2"><a href="/ru/railway_stations/minsk_passenger/">Минск-Пассажирский</a></li>
										<li class="item_2"><a href="/ru/railway_stations/brest/">Брест-Центральный</a></li>
										<li class="item_2"><a href="/ru/railway_stations/vitebsk/">Витебск</a> </li>
										<li class="item_2"><a href="/ru/railway_stations/gomel/">Гомель</a></li>
										<li class="item_2"><a href="/ru/railway_stations/grodno/">Гродно</a></li>
										<li class="item_2"><a href="/ru/railway_stations/mogilev/">Могилев</a></li>
									</ul>
								</div>
 </li>
								 <!--<li class="item_1"><a href="/ru/personal/" ><span>Личный кабинет</span></a></li>--> <!--<li class="item_1"><a href="/ru#" ><span>Партнерам</span></a></li>-->
								<li class="item_1"><a href="/ru/dev/">Разработчикам</a></li>
							</ul>
						</div>
						<div class="col-sm-4 col-xs-12 item">
							<ul class="menu_level_1 break-word list-reset js-trg">
								<li class="item_1"><a href="/ru/help/">Справочная информация</a>
								<div class="submenu">
									<ul class="menu_level_2 list-reset">
										<li class="item_2"><a href="/ru/help/travel-documents-tickets/">Проездные документы (билеты)</a></li>
										<li class="item_2"><a href="/ru/help/transportation_of_baggage/">Провоз ручной клади</a></li>
										<li class="item_2"><a href="/ru/help/transportation-of-luggage/">Перевозка багажа, грузобагажа</a></li>
										<li class="item_2"><a href="/ru/help/children_transportation/">Перевозка детей</a></li>
										<li class="item_2"><a href="/ru/help/found_things/">Найденные вещи</a></li>
										<li class="item_2"><a href="/ru/help/services_in_trains/">Услуги в&nbsp;поездах</a></li>
										<li class="item_2"><a href="/ru/help/e-invoices/"><span>Порядок получения электронных <span class="nowrap">счетов-фактур</span></span></a></li>
										<li class="item_2"><a href="/ru/help/direct-mixed-traffic/">Прямое смешанное сообщение (поезд и&nbsp;автобус)</a></li>
										 <!-- <li class="item_2"><a href="/ru/help/procedure-of-crossing-the-state-border/" ><span>О&nbsp;порядке пересечения Государственной границы Республики Беларусь, выезда и&nbsp;нахождения на&nbsp;территории других государств</span></a> </li>

                          <li class="item_2"><a href="/ru/help/amateur-photos-and-video/" ><span>Порядок проведения любительской фото- видеосъемки при нахождении на&nbsp;объектах железнодорожного транспорта</span></a> </li>

                          <li class="item_2"><a href="/ru/help/the-list-of-issues/" ><span>Перечень вопросов, по&nbsp;которым возможно обратиться к&nbsp;работникам <span class="nowrap">Контакт-центра</span></span></a> </li>-->
									</ul>
								</div>
 </li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-12 col-md-pull-9">
				<div class="row row_x2">
					<div class="col-md-12 col-sm-6 col-xs-12">
						<div class="logo-foot">
							<div class="logo">
 <img alt="Белорусская железная дорога" src="https://cms.rw.by/local/templates/.default/img/logo-footer.svg" class="img-responsive" title="Белорусская железная дорога">
							</div>
							<div class="title">
								 Онлайн-сервис по&nbsp;продаже билетов
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-6 col-xs-12">
						<div class="foot-search">
							<form class="search-form" action="/ru/search/" method="get">
								<fieldset class="field">
 <input class="input" id="headSearch-2" placeholder="Поиск по сайту" name="q" maxlength="50" required="" type="search"> <label class="submit"> <input name="btn-search" value="" type="submit"> </label>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
				<div class="row row_x2">
					<div class="col-md-12 col-sm-6 col-xs-12">
						<div class="contacts-foot-2">
							<div class="contacts-foot-2__address">
								 220030, Республика Беларусь, г.&nbsp;Минск, ул. Ленина, 17
							</div>
							<div class="contacts-foot-2__list">
 <a class="contacts-foot-2__link" href="tel:105"><i class="contacts-foot-2__icon svg-contacts-foot-2_phone"></i><span class="contacts-foot-2__num">105</span>Контакт-центр</a><a class="contacts-foot-2__link" href="tel:151"><i class="contacts-foot-2__icon svg-contacts-foot-2_phone"></i><span class="contacts-foot-2__num">151</span>Служба поддержки пассажиров</a>
							</div>
							<div class="contacts-foot-2__apps">
                                <a href="https://apps.apple.com/us/app/бч-мой-поезд/id1489334970?ls=1" target="_blank"><img alt="App Store" src="https://cms.rw.by/local/templates/.default/img/tmp/contacts-foot-2_appstore.svg"></a>
                                <a href="https://play.google.com/store/apps/details?id=by.rw.client" target="_blank"><img alt="Google Play" src="https://cms.rw.by/local/templates/.default/img/tmp/contacts-foot-2_gplay.svg"></a>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-6 col-xs-12">
						<div class="payment">
							<ul class="list list-reset">
								<li class="item"><img alt="VISA" src="https://cms.rw.by/local/templates/.default/img/tmp/payment_01.png"></li>
								<li class="item"><img alt="Master Card" src="https://cms.rw.by/local/templates/.default/img/tmp/payment_02.png"></li>
								<li class="item"><img src="https://cms.rw.by/local/templates/.default/img/tmp/payment_03.png" alt="Расчет"></li>
								<li class="item"><img src="https://cms.rw.by/local/templates/.default/img/tmp/payment_04.png" alt="Белкарт"></li>
								<li class="item"><img src="https://cms.rw.by/local/templates/.default/img/tmp/payment_05.png" alt="Беларусбанк"></li>
								<li class="item"><img alt="V-BANKING" src="https://cms.rw.by/local/templates/.default/img/tmp/payment_06.png"></li>
							</ul>
						</div>
						<div class="menu-foot hide-print clearfix">
							<ul class="menu_level_1 break-word list-reset">
								<li class="item_1"><a target="_blank" href="https://www.rw.by/">Корпоративный сайт БЖД</a> </li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-small">
			<div class="row">
				<div class="col-sm-6 col-xs-12">
					<div class="logo-foot-2">
						<div class="title">
							 © 2020 Белорусская железная дорога
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-xs-12">
					<div class="studio">
						<div class="pic">
 <img alt="Студия Борового" src="https://cms.rw.by/local/templates/.default/img/studio.svg" title="Студия Борового">
						</div>
						<div class="text-wrap">
							 Создание сайта - <a class="link" href="https://www.db.by/" target="_blank">Студия Борового</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
 </footer>
        <div class="scroll-to-top"></div>
        <div class="city">
    <div class="modal fade" id="cityPopup" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="city__inner">
                    <div class="city__header">
                        <div class="city__info">
                            <div class="h2 city__title">Выберите вокзал</div>
                        </div>
                        <button class="close city__close" type="button" data-dismiss="modal" aria-hidden="true"></button>
                    </div>
                    <div class="city__body city__index">
                        <div class="city__list" data-cols-lg="6" data-cols-md="6" data-cols-sm="4" data-cols-xs="3" data-cols-mob="2">
                            <div class="city__cols">
                                                                                                            <div class="city__item city__item--link">
                                                                                            <a class="city__link" href="/ru/tablo/?set_exp=2100035">Брест-Центральный</a>
                                                                                    </div>
                                                                                                                                                <div class="city__item city__item--link">
                                                                                            <a class="city__link" href="/ru/tablo/?set_exp=2100001">Минск-Пассажирский</a>
                                                                                    </div>
                                                                                                                                                <div class="city__item city__item--link">
                                                                                            <a class="city__link" href="/ru/tablo/?set_exp=2100100">Гомель</a>
                                                                                    </div>
                                                                                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        <div class="city city--question">
    <div class="modal fade" id="cityQuestionPopup" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="city__inner">
                    <div class="city__body city__question">
                        <div class="h3 city__title">Ваша станция — ?</div>
                        <div class="city__btn-wrap">
                            <input class="btn btn-default" type="button" onclick="location.href='/ru/tablo/?set_exp='" value="Да">
                            <input class="btn btn-link uppercase" type="button" value="Нет, изменить" id="city__question__no">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<a class="info-table__link hidden" href="#" data-toggle="modal" data-target="#cityQuestionPopup" id="cityQuestionPopupTrigger"></a>
        <div class="route-modal modal fade vertical-center" id="route-popup" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-inner"></div>
                    <div class="modal-error">
                        <div class="route-modal__header">
                            <div class="route-modal__caption">
                                <p class="text-center pt_2">Связь с сервером не удалась. <a class="js-route-modal-more" href="#">Попробовать еще раз</a></p></div>
                            <button class="close" type="button" data-dismiss="modal" aria-hidden="true"></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="auth-modal modal fade vertical-center" id="auth-popup" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="auth-modal__header">
                <div class="auth-modal__title h3">Авторизация</div>
                <button class="close close--black" type="button" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="auth-modal__body">
                <div class="auth-modal__notify"></div>
                                <form class="auth-modal__form" id="form-auth" method="post" action="">
                    <fieldset class="fieldset">
                        <div class="form-group control-group">
                            <label class="form-label">
                                <div class="name">Логин/E-mail</div>
                                <div class="text">
                                    <input class="form-control" type="text" name="login" maxlength="50" spellcheck="true" value="" required="" placeholder="">
                                </div>
                            </label>
                            <div class="controls"></div>
                        </div>
                        <div class="auth-modal__row">
                            <div class="auth-modal__inp-wrap">
                                <div class="form-group control-group">
                                    <label class="form-label">
                                        <div class="name">Пароль</div>
                                        <div class="text show-password-wrap">
                                            <input class="form-control" type="password" name="password" maxlength="50" spellcheck="true" value="" required="">
                                            <button class="show-password" type="button"></button>
                                        </div>
                                    </label>
                                    <div class="controls"></div>
                                </div>
                            </div>
                            <div class="auth-modal__link-wrap"><a class="auth-modal__link" href="/ru/registration/pwd_restore/">Забыли пароль?</a></div>
                        </div>
                        <div class="form-group control-group">
                            <input class="btn btn-index btn_submit" type="submit" name="dologin" value="Войти">
                        </div>
                    </fieldset>
                </form>
                <div class="auth-modal__social">
                    <div class="auth-modal__social-title">Войти с помощью соцсетей:</div>
                    <div class="auth-modal__social-list">
                                                    <a class="auth-modal__social-item auth-modal__social-item--vk" href="http://oauth.vk.com/authorize?client_id=7017287&response_type=code&redirect_uri=https://pass.rw.by/ru/registration/VK/"></a>
                                                    <a class="auth-modal__social-item auth-modal__social-item--fb" href="https://www.facebook.com/dialog/oauth?client_id=848051612233581&response_type=code&redirect_uri=https://pass.rw.by/ru/registration/FB/"></a>
                                                    <a class="auth-modal__social-item auth-modal__social-item--inst" href="https://api.instagram.com/oauth/authorize?client_id=89429901ad1e4066b94032a392241d92&response_type=code&redirect_uri=https://pass.rw.by/ru/registration/IG/"></a>
                                                    <a class="auth-modal__social-item auth-modal__social-item--ok" href="http://www.odnoklassniki.ru/oauth/authorize?client_id=1279463424&response_type=code&redirect_uri=https://pass.rw.by/ru/registration/OK/"></a>
                                            </div>
                </div>
            </div>
            <div class="auth-modal__footer">
                <div class="auth-modal__caption">Нет аккаунта? <a href="/ru/registration/">Зарегистрироваться</a></div>
            </div>
        </div>
    </div>
</div>
<script>
    !function () {
        'use strict';

        // Form validation
        function initValid() {
            // Validation options http://jqueryvalidation.org/documentation/
            var form_validator = ('#form-auth');
            if (form_validator.length && .fn.validate) {
                form_validator.validate({
                    rules: {
                        'form-LOGIN': {
                            required: true,
                            minlength: 2
                        },
                        'form-PASSWORD': {
                            required: true,
                            minlength: 5
                        }
                    }
                });
            }
        }

        (function () {
            initValid();
        });
    }();
</script>
        <div class="help-popup">
    <div class="help-popup__backdrop"></div>
    <div class="help-popup__wrap">
        <div class="help-popup__preloader preloader">
            <div class="preloader__spinner xs"></div>
        </div>
        <div class="help-popup__inner">
            <div class="help-popup__menu">
                <nav class="menu-aside-3">
                    <ul class="menu_level_1 list-reset break-word">
                        <li class="item_1 panel">
                            <div class="item-wrap"><span>Справка</span></div>
                            <ul class="menu_level_2 list-reset break-word" id="help-popup-menu-aside-0">
                                                                                                                                                                                                                                                                                                                                                                                                <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a class="collapse-link collapsed" data-toggle="collapse" data-parent="#help-popup-menu-aside-0" href="#help-popup-menu-aside-0-0">Проездные документы (билеты)<span class="icon"></span></a>
                                                                                            </div>
                                                                                            <ul class="collapse menu_level_3 list-reset" id="help-popup-menu-aside-0-0">
                                                                                                                                                                                                                                                                                    <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/travel-documents-tickets/travel-documents/">Оформление проездных документов</a></div>
                                                            </li>
                                                                                                                                                                                                                                                                                                                                            <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/travel-documents-tickets/the-validity-of-travel-documents/">Срок действия проездных документов</a></div>
                                                            </li>
                                                                                                                                                                                                                                <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/travel-documents-tickets/renewal-of-travel-documents/">Переоформление проездных документов</a></div>
                                                            </li>
                                                                                                                                                                                                                                <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/travel-documents-tickets/return-tickets/">Возврат проездных документов</a></div>
                                                            </li>
                                                                                                                                                                                                                                <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/travel-documents-tickets/recovery-of-travel-documents/">Восстановление проездных документов</a></div>
                                                            </li>
                                                                                                                                                                                                                                <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/travel-documents-tickets/discounts-and-travel-benefits/">Скидки и льготы на проезд</a></div>
                                                            </li>
                                                                                                                                                                                                                                <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/travel-documents-tickets/electronic-travel-documents/">Электронные проездные документы</a></div>
                                                            </li>
                                                                                                                                                                                                                                <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/travel-documents-tickets/the-cost-of-a-single-travel-document/">Стоимость единого проездного документа (городские линии и общественный транспорт г. Минска)</a></div>
                                                            </li>
                                                                                                                                                                                                                                <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/travel-documents-tickets/direct-mixed-traffic/">Прямое смешанное сообщение (поезд и автобус)</a></div>
                                                            </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                </ul>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a href="/ru/help/transportation_of_baggage/">Провоз ручной клади</a>
                                                                                            </div>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a href="/ru/help/found_things/">Найденные вещи</a>
                                                                                            </div>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a href="/ru/help/transportation-of-luggage/">Перевозка багажа, грузобагажа</a>
                                                                                            </div>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a href="/ru/help/children_transportation/">Перевозка детей</a>
                                                                                            </div>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a href="/ru/help/services_in_trains/">Услуги в поездах</a>
                                                                                            </div>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a href="/ru/help/amateur-photos-and-video/">Порядок проведения любительской фото- видеосъемки</a>
                                                                                            </div>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a href="/ru/help/the-list-of-issues/">Перечень вопросов, по которым возможно обратиться к работникам Контакт-центра</a>
                                                                                            </div>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a href="/ru/help/procedure-of-crossing-the-state-border/">Порядок пересечения границы</a>
                                                                                            </div>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a class="collapse-link collapsed" data-toggle="collapse" data-parent="#help-popup-menu-aside-0" href="#help-popup-menu-aside-0-19">Поезда<span class="icon"></span></a>
                                                                                            </div>
                                                                                            <ul class="collapse menu_level_3 list-reset" id="help-popup-menu-aside-0-19">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/trains/message-types/">Типы сообщений</a></div>
                                                            </li>
                                                                                                                                                                                                                                <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/trains/corporate-train/">Фирменные поезда</a></div>
                                                            </li>
                                                                                                                                                                                                                                <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/trains/category-cars/">Категории вагонов</a></div>
                                                            </li>
                                                                                                                                                                                                                                <li class="item_3 panel">
                                                                <div class="item-wrap"><a href="/ru/help/trains/the-cars-for-passengers-with-disabilities/">Вагоны для пассажиров с ограниченными физическими возможностями</a></div>
                                                            </li>
                                                                                                                                                                                                                                                                                                                                                                                    </ul>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a href="/ru/help/regulatory-documents/">Нормативные документы</a>
                                                                                            </div>
                                                                                    </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <li class="item_2 panel">
                                            <div class="item-wrap">
                                                                                                    <a href="/ru/help/information-covid-19/">Информация COVID-19</a>
                                                                                            </div>
                                                                                    </li>
                                                                                                    <li class="item_2 panel special">
                                    <div class="item-wrap"><a href="/ru/help/faq/&filter=topElements">Часто задаваемые вопросы</a></div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="help-popup__content">
                <div class="help-popup__content">
	<div class="help-start">
		<div class="h3 help-start__m-title">
			 Начало работы со справкой
		</div>
		<div class="help-start__list">
			<div class="help-start__item">
				<div class="h4 help-start__title">
 <span class="num">1.</span>Просмотрите список часто задаваемых вопросо<span>в<i class="help-start__icon svg-help-pointer_01"></i></span>
				</div>
				 <ul class="list-reset"><li><a href="/ru/help/travel-documents-tickets/return-tickets/return_abroad.html">Возврат неиспользованных проездных документов (билетов) в дальнее зарубежье</a></li><li><a href="/ru/help/travel-documents-tickets/travel-documents/za_kakoe_vremja_mozhno_priobr1.html">За какое время можно приобрести проездные документы (билеты)?</a></li><li><a href="/ru/help/travel-documents-tickets/renewal-of-travel-documents/reordering.html">В каких случаях проездной документ (билет) можно переоформить?</a></li><li><a href="/ru/help/travel-documents-tickets/recovery-of-travel-documents/chto_delat_esli_bilet_uterjan2.html">Что делать, если проездной документ (билет) утерян или испорчен?</a></li><li><a href="/ru/help/transportation_of_baggage/pravila_perevozki_velosipedov2.html">Правила перевозки велосипедов, излишней ручной клади</a></li><li><a href="/ru/help/children_transportation/uslovija_proezda_detej.html">Перевозка детей</a></li><li><a href="/ru/help/travel-documents-tickets/electronic-travel-documents/pravila_oformlenija_ispol_zova.html">Правила оформления, использования и возврата электронных проездных документов на поезда с ненумерованными местами</a></li></ul>
			</div>
			<div class="help-start__item">
 <i class="help-start__icon svg-help-pointer_02"></i>
				<div class="h4 help-start__title">
 <span class="num">2.</span>Воспользуйтесь боковым меню справки
				</div>
				<p>
					 Просмотрите справочные рубрики сервиса БелЖД, которые выделены в боковом меню. Рубрики имеют вложенность (подрубрики) для более четкого cтруктурирования информации
				</p>
			</div>
			<div class="help-start__item">
				<div class="h4 help-start__title">
 <span class="num">3.</span>Используйте поисковую строку
				</div>
				<p>
					 Быстрый поиск информационных статей по ключевым словам. Например, <a class="dash" href="/ru/search/?q=велосипед">велосипед</a><i class="help-start__icon svg-help-pointer_03"></i>
				</p>
				<div class="search-input">
					<div class="search-input__wrap">
						<div class="search-input__inner">
							<form class="search-input__form" action="/ru/search/" method="get">
								<div class="search-input__form-wrap">
 <input class="search-input__field" id="searchInput" placeholder="Поиск по справке" name="q" maxlength="50" required="" type="search"> <input name="filter" value="help" type="hidden"> <input class="btn btn-default search-input__btn" name="btn-search" value="Найти" type="submit">
								</div>
 <input name="filter" value="help" type="hidden">
							</form>
						</div>
					</div>
				</div>
			</div>
			 <!--<div class="help-start__item">
               <div class="h4 help-start__title"><span class="num">4.</span>Посмотрите видео-ролики по работе с
                   сервисом<i class="help-start__icon svg-help-pointer_01"></i></div>
               <div class="video-help">
                   <div class="video-help__item"><a class="video-help__inner" href="#">
                           <div class="video-help__pic"><img src="../img/tmp/help-placeholder-80x50.png" alt="Покупка ж/д-билетов онлайн"
                                                             title="title"></div>
                           <div class="video-help__text">Покупка ж/д-билетов онлайн</div>
                       </a></div>
                   <div class="video-help__item"><a class="video-help__inner" href="#">
                           <div class="video-help__pic"><img src="../img/tmp/help-placeholder-80x50.png" alt="Пользование калькулятором багажа"
                                                             title="title"></div>
                           <div class="video-help__text">Пользование калькулятором багажа</div>
                       </a></div>
                   <div class="video-help__item"><a class="video-help__inner" href="#">
                           <div class="video-help__pic"><img src="../img/tmp/help-placeholder-80x50.png" alt="Обзор возможностей личного кабинета"
                                                             title="title"></div>
                           <div class="video-help__text">Обзор возможностей личного кабинета</div>
                       </a></div>
                   <div class="video-help__item"><a class="video-help__inner" href="#">
                           <div class="video-help__pic"><img src="../img/tmp/help-placeholder-80x50.png" alt="Просмотр онлайн-табло"
                                                             title="title"></div>
                           <div class="video-help__text">Просмотр онлайн-табло</div>
                       </a></div>
               </div>
           </div>-->
			<div class="help-start__item">
				<div class="h4 help-start__title">
 <span class="num">4.</span>Обратитесь в Контакт-центр БелЖД
				</div>
				<p>
					 Если Вы не смогли найти необходимую Вам информацию в справке, <a class="dash" href="#modal-feedback" data-target="#modal-feedback" data-toggle="modal">напишите</a>&nbsp;электронное сообщение или позвоните по&nbsp;номеру <span style="color:#065da5; font-weight:bold;">105</span> <img alt="beltelecom" src="/uploads/medialibrary/011/beltelekom_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block"> <img alt="mts" src="/uploads/medialibrary/5c3/MTS_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">&nbsp; <img alt="velcom" src="/uploads/medialibrary/091/velkom_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">&nbsp; <img alt="life" src="/uploads/medialibrary/efa/layf_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
				</p>
				<ul>
					<li>Бронирование билетов по телефону <span class="nowrap">105&nbsp;<img alt="beltelecom" src="/uploads/medialibrary/011/beltelekom_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block"><img alt="mts" src="/uploads/medialibrary/5c3/MTS_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">&nbsp;<img alt="velcom" src="/uploads/medialibrary/091/velkom_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block"><img alt="life" src="/uploads/medialibrary/efa/layf_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block"></span> (круглосуточно).</li>
					<li>Служба поддержки пассажиров Белорусской железной дороги по телефону <span class="nowrap">151&nbsp;<img alt="beltelecom" src="/uploads/medialibrary/011/beltelekom_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">&nbsp;<img alt="mts" src="/uploads/medialibrary/5c3/MTS_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">&nbsp;<img alt="velcom" src="/uploads/medialibrary/091/velkom_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">&nbsp;<img alt="life" src="/uploads/medialibrary/efa/layf_b.png" class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block"></span> (круглосуточно), электронному адресу <a href="mailto:brail@rw.by">brail@rw.by</a></li>
					<li><span style="margin-right: 4px;">Справочные услуги для лиц с нарушением слуха</span> <img alt="skype" src="https://cms.rw.by/upload/medialibrary/f35/help_start_skype.png" class="help-start__contact-icon">&nbsp;<a href="skype:live:9191-belog?call">Минск</a>, <a href="skype:live:grodno9191?call">Гродно</a>, <a href="skype:live:85ae74bcf284695f">Гомель</a></li>
					<li>Поддержка пассажиров, находящихся за пределами Республики Беларусь, по телефону <a href="tel:+375222392547">(+375 222) 39 25 47</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
            </div>
        </div>
    </div>
</div>
<script>
    var WS_RW_APP = WS_RW_APP || {};
    WS_RW_APP.lang = WS_RW_APP.lang || {};
    WS_RW_APP.lang.HelpArticle = {
        openUrl: "Открыть в новой вкладке",
        isArticleHelpful: "Была ли полезна статья?",
        yes: "Да",
        no: "Нет",
        kb: "Кб",
        mb: "Мб",
        peoplesRating: "пользователей считают эту статью полезной",
        errorTitle: "Информация недоступна, попробуйте повторить запрос",
        repeatRequest: "Повторить запрос"
    };
    WS_RW_APP.lang.HelpRating = {
        thanksForVoting: "Спасибо за Ваш отзыв!",
        specify: "Уточните, почему"
    };

    !function () {
        'use strict';

        (function () {
            WS_RW_APP.Factory('HelpPopup', {
                block: ('.help-popup'),
                voteUrl: "https://cms.rw.by/local/include/ru/help.php?login=test&pass=test&internal_call=1",
                noBenefitReasons: [
                    {
                        title: "Нет ответа на мой вопрос",
                        id: '1'
                    },
                    {
                        title: "Мне не нравится, как это работает",
                        id: '2'
                    },
                    {
                        title: "Рекомендации не помогли",
                        id: '3'
                    },
                    {
                        title: "Содержание статьи не соответствует заголовку",
                        id: '4'
                    },
                    {
                        title: "Текст трудно понять",
                        id: '5'
                    },
                    {
                        title: "Другая причина",
                        id: '6'
                    }
                ]
            });
        });
    }();
</script>

                        <div class="modal-feedback modal fade vertical-center" id="modal-feedback" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="min-height:200px;">
            <div class="preloader" id="preloader-feedback">
                <div class="preloader__spinner xs"></div>
            </div>
            <div class="modal-start">
                <div class="modal-header">
                    <button class="close close--black" type="button" data-dismiss="modal" aria-hidden="true"></button>
                    <div class="h3 modal-title">Отзыв о работе сервиса</div>
                </div>
                <div class="modal-body">
                    <form id="form-feedback" method="post" action="" enctype="multipart/form-data">
                        <fieldset class="fieldset">
                            <div class="form-group control-group">
                                <div class="row">
                                    <div class="col-xs-12 col-md-4">
                                        <label class="form-label" for="feedback_subject">
                                            <div class="name">Тема<span class="f-star">&nbsp;*</span>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-xs-12 col-md-8">
                                        <div class="text">
                                            <select class="form-control formstyler" id="feedback_subject" name="subject" required="">
                                                                                                    <option value="" selected="selected" disabled="disabled">Выберите из списка</option>
                                                                                                    <option value="feedback">Отзыв</option>
                                                                                                    <option value="recommendation">Рекомендация</option>
                                                                                            </select>
                                        </div>
                                        <div class="controls"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group control-group">
                                <div class="row">
                                    <div class="col-xs-12 col-md-4">
                                        <label class="form-label" for="feedback_name">
                                            <div class="name">Вас зовут<span class="f-star">&nbsp;*</span>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-xs-12 col-md-8">
                                        <div class="text">
                                            <input class="form-control" id="feedback_name" type="text" name="name" value="" required="">
                                        </div>
                                        <div class="controls"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group control-group">
                                <div class="row">
                                    <div class="col-xs-12 col-md-4">
                                        <label class="form-label" for="feedback_message">
                                            <div class="name">Ваш отзыв<span class="f-star">&nbsp;*</span>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-xs-12 col-md-8">
                                        <div class="text">
                                            <textarea class="form-control" id="feedback_message" name="message" cols="60" rows="4" spellcheck="true" required=""></textarea>
                                        </div>
                                        <div class="controls"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group control-group">
                                <div class="row">
                                    <div class="col-xs-12 col-md-4">
                                        <label class="form-label" for="feedback_contact">
                                            <div class="name">Эл.почта<span class="f-star">&nbsp;*</span>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-xs-12 col-md-8">
                                        <div class="text">
                                            <input class="form-control" id="feedback_contact" type="email" name="contacts" value="" required="">
                                        </div>
                                        <div class="controls"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group control-group">
                                <div class="row">
                                    <div class="col-xs-12 col-md-4">
                                        <label class="form-label" for="feedback_contact">
                                            <div class="name">Прикрепить файл</div>
                                        </label>
                                    </div>
                                    <div class="col-xs-12 col-md-8">
                                        <div class="text file-wrap">
                                            <input class="form-control formstyler" id="feedback_file" type="file" name="file" value="">
                                            <label class="no-attachments" id="feedback_file_name" for="feedback_file">Файл не выбран</label>
                                            <label class="file-chooser btn btn-default" id="feedback_file_label" for="feedback_file">Обзор...</label>
                                        </div>
                                        <div class="controls"></div>
                                        <div class="help-block">Внимание! Для вложений допустимы форматы файлов: doc, docx, pdf, jpg, txt. Размер вложенного файла не может превышать 3 Мб.</div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-12 col-md-8 col-xs-offset-0 col-md-offset-4">
                                        <input class="btn btn-default btn_submit" type="submit" name="feedback_submit" value="Отправить отзыв"><br>
                                        <div class="form_required"><span class="f-star">&nbsp;*</span> — поля обязательные к заполнению
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <div class="hidden">
                            <input type="text" name="field_1" value="" />
                            <input type="text" name="field_2" value="445DD124-EBB6-4ad2-802C-0C5BEFF64A95" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-success" style="display: none;">
                <div class="modal-header">
                    <button class="close close--black" type="button" data-dismiss="modal" aria-hidden="true"></button>
                    <div class="h3 modal-title">Отзыв отправлен</div>
                </div>
                <div class="modal-body">
                    <p>Спасибо! Ваш отзыв помогает нам делать электронное расписание лучше.</p>
                    <div class="btn-wrap">
                        <a class="btn btn-default js-try-more" href="#">Отправить еще раз</a>
                        <button class="btn btn-link" type="button" data-dismiss="modal">Закрыть</button>
                    </div>
                </div>
            </div>
            <div class="modal-error" style="display: none;">
                <div class="modal-header">
                    <button class="close close--black" type="button" data-dismiss="modal" aria-hidden="true"></button>
                    <div class="h3 modal-title">Ошибка</div>
                </div>
                <div class="modal-body">
                    <p>При отправке произошла ошибка</p>
                    <div class="btn-wrap">
                        <a class="btn btn-default js-try-more" href="#">Отправить еще раз</a>
                        <button class="btn btn-link" type="button" data-dismiss="modal">Закрыть</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    !function () {
        'use strict';

        function initValid() {
            // Validation options http://jqueryvalidation.org/documentation/
            var form_validator = ('#form-feedback');
            if (form_validator.length && .fn.validate) {
                var preloader = ('#preloader-feedback');
                var modal = ('#modal-feedback');
                var start = modal.find('.modal-start');
                var success = modal.find('.modal-success');
                var error = modal.find('.modal-error');

                start.show();
                success.hide();
                error.hide();

                form_validator.validate({
                    rules: {
                        'subject': {
                            required: true
                        },
                        'name': {
                            required: true
                        },
                        'message': {
                            required: true
                        },
                        'contact': {
                            required: true,
                            email: true
                        },
                        'file': {
                            maxsize: 3145728, // 3 MB in bytes
                            extension: 'doc|docx|pdf|jpg|txt'
                        }
                    }/*,
                    submitHandler: function (form) {
                        _showPreloader(preloader);
                        .ajax({
                            type: 'GET',
                            data: (form).serialize(),
                            url: '/media/html/ajax-form-feedback.json',
                            success: function (data) {
                                if (data.status !== undefined && data.status === 'success') {
                                    start.slideUp();
                                    success.slideDown();
                                    error.hide();
                                } else {
                                    console.error(data);
                                    start.slideUp();
                                    success.hide();
                                    error.slideDown();
                                }
                                _hidePreloader(preloader);
                            },
                            error: function (err) {
                                console.log(err);
                                start.slideUp();
                                success.hide();
                                error.slideDown();
                                _hidePreloader(preloader);
                            }
                        });
                    }*/
                });

                var tryMore = ('.js-try-more');
                if (tryMore.length) {
                    tryMore.each(function() {
                        var self = (this);
                        self.off('click.ws').on('click.ws', function(e) {
                            e.preventDefault();
                            form_validator.trigger('reset');
                            start.slideDown();
                            success.slideUp();
                            error.slideUp();
                        });
                    });
                }
            }
        }

        (function () {
            initValid();
        });
    }();
</script>
    </div>
    <div id="root-preloader" class="preloader"><div class="preloader__spinner xs"></div></div>
            <div class="srv" id="srv"></div>
        <script>
            var WS_RW_APP = WS_RW_APP || {};
            WS_RW_APP.lang = WS_RW_APP.lang || {};
            WS_RW_APP.lang.SRV = {
                feedback: "Обратная связь",
                close: "Закрыть"
            };

            !function () {
                'use strict';

                (window).on('load', function () {
                    var styles = document.createElement('link');
                    styles.rel = 'stylesheet';
                    styles.href = '/media/css/libs/srv.min.css?v=1.0.0';
                    styles.type = 'text/css';
                    document.getElementsByTagName('body')[0].appendChild(styles);

                    var script = document.createElement('script');
                    script.src = '/media/js/libs/srv.min.js?v=1.0.1';
                    script.async = true;
                    script.defer = true;
                    document.getElementsByTagName('body')[0].appendChild(script);
                });
            }();
        </script>
        <div class="modal fade vertical-center" id="questModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" type="button" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body">
                <div class="h2 title">Задать вопрос</div>
                <form class="form-horizontal" id="form-quest" method="post" action="/">
                    <fieldset class="fieldset">
                        <!-- row-->
                        <div class="form-group control-group">
                            <label class="name label-pt col-lg-3 col-sm-3 col-xs-12" for="form-NAME-q">Ваше имя<span class="f-star">&nbsp;*</span>
                            </label>
                            <div class="text col-lg-6 col-sm-5 col-xs-12">
                                <input class="form-control" id="form-NAME-q" type="text" name="form-NAME-q" maxlength="50" spellcheck="true" value="" required="">
                            </div>
                            <div class="controls col-lg-3 col-sm-4 col-xs-12"></div>
                        </div>
                        <!-- row-->
                        <div class="form-group control-group">
                            <label class="name label-pt col-lg-3 col-sm-3 col-xs-12" for="form-PHONE-q">Телефон<span class="f-star">&nbsp;*</span>
                            </label>
                            <div class="text col-lg-6 col-sm-5 col-xs-12">
                                <input class="form-control" id="form-PHONE-q" type="tel" name="form-PHONE-q" maxlength="50" spellcheck="true" required="">
                                <p class="help-block">Например: +375 (29) 123-45-67</p>
                            </div>
                            <div class="controls col-lg-3 col-sm-4 col-xs-12"></div>
                        </div>
                        <!-- row-->
                        <div class="form-group control-group">
                            <label class="name label-pt col-lg-3 col-sm-3 col-xs-12" for="form-MAIL-q">Эл. почта<span class="f-star">&nbsp;*</span>
                            </label>
                            <div class="text col-lg-6 col-sm-5 col-xs-12">
                                <input class="form-control" id="form-MAIL-q" type="email" name="form-EMAIL-q" maxlength="50" spellcheck="true" value="" placeholder="email@example.com" required="">
                            </div>
                            <div class="controls col-lg-3 col-sm-4 col-xs-12"></div>
                        </div>
                        <!-- row-->
                        <div class="form-group control-group">
                            <label class="name label-pt col-lg-3 col-sm-3 col-xs-12" for="form-MESSAGE-q">Вопрос<span class="f-star">&nbsp;*</span>
                            </label>
                            <div class="text col-lg-6 col-sm-5 col-xs-12">
                                <textarea class="form-control" id="form-MESSAGE-q" name="form-MESSAGE-q" maxlength="500" cols="60" rows="4" spellcheck="true" required=""></textarea>
                            </div>
                            <div class="controls col-lg-3 col-sm-4 col-xs-12"></div>
                        </div>
                        <!-- row-->
                        <div class="form-group">
                            <div class="col-xs-12 col-xs-offset-0 col-sm-offset-3">
                                <input class="btn btn-default btn_submit" type="submit" name="submit" value="Отправить">
                            </div>
                        </div>
                    </fieldset>
                </form>
                <script>
                    !function () {
                        'use strict';

                        // Form validation
                        function initQuestValid() {
                            // Validation options http://jqueryvalidation.org/documentation/
                            var form_validator = ('#form-quest');
                            if (form_validator.length && .fn.validate) {
                                form_validator.validate({
                                    rules: {
                                        'form-NAME-q': {
                                            required: true,
                                            minlength: 4
                                        },
                                        'form-PHONE-q': {
                                            required: true,
                                            minlength: 4
                                        },
                                        'form-MAIL-q': {
                                            required: true,
                                            minlength: 4
                                        },
                                        'form-MESSAGE-q': {
                                            required: true,
                                            minlength: 10
                                        }
                                    }
                                });
                            }
                        }

                        (function () {
                            initQuestValid();
                        });
                    }();
                </script>
            </div>
        </div>
    </div>
</div>
    <div class="pm">
	<div class="pm-backdrop">
	</div>
	<div class="pm-wrap">
		<div class="hamburger-closer">
			<div class="pm-closer closed">
			</div>
		</div>
		<div class="pm-inner">
			<div class="mob-search">
				<div class="wrap">
					<form class="search-form" action="/ru/search/" method="get">
						<div class="form-wrap">
 <input class="field" id="mobSearch" type="search" placeholder="Поиск по сайту" name="q" maxlength="50" required=""> <button class="btn-search" type="submit"></button>
						</div>
					</form>
				</div>
			</div>
			<div class="menu-mob">
				<ul class="menu_level_1 list-reset break-word">
					<li class="item_1"> <a href="/ru/tablo/">
					Онлайн-табло </a> </li>
					<li class="item_1"> <a href="/ru/people_with_disabilities/">
					Поддержка лиц с ограниченными физическими возможностями </a> </li>
					<li class="item_1"> <a href="/ru/help/">
					Справка </a>
					    <a class="icon collapsed" data-toggle="collapse" href="#accordion-m-13"></a>
    <div class="collapse submenu" id="accordion-m-13">
        <ul class="menu_level_2 list-reset">
                            <li class="item_2">
                    <a href="/ru/help/travel-documents-tickets/"><span>Проездные документы (билеты)</span></a>
                                            <a class="icon collapsed" data-toggle="collapse" href="#accordion-m-231"></a>
                        <div class="submenu collapse" id="accordion-m-231">
                            <ul class="menu_level_3 list-reset">
                                                                    <li class="item_3">
                                        <a href="/ru/help/travel-documents-tickets/travel-documents/"><span>Оформление проездных документов</span></a>
                                                                                    <a class="icon collapsed" data-toggle="collapse" href="#accordion-m-234"></a>
                                            <div class="submenu collapse" id="accordion-m-234">
                                                <ul class="menu_level_4 list-reset">
                                                                                                            <li class="item_4">
                                                            <a href="/ru/help/travel-documents-tickets/travel-documents/e-invoices/"><span>Порядок получения электронных счетов-фактур</span></a>
                                                        </li>
                                                                                                    </ul>
                                            </div>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/travel-documents-tickets/the-validity-of-travel-documents/"><span>Срок действия проездных документов</span></a>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/travel-documents-tickets/renewal-of-travel-documents/"><span>Переоформление проездных документов</span></a>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/travel-documents-tickets/return-tickets/"><span>Возврат проездных документов</span></a>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/travel-documents-tickets/recovery-of-travel-documents/"><span>Восстановление проездных документов</span></a>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/travel-documents-tickets/discounts-and-travel-benefits/"><span>Скидки и льготы на проезд</span></a>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/travel-documents-tickets/electronic-travel-documents/"><span>Электронные проездные документы</span></a>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/travel-documents-tickets/the-cost-of-a-single-travel-document/"><span>Стоимость единого проездного документа (городские линии и общественный транспорт г. Минска)</span></a>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/travel-documents-tickets/direct-mixed-traffic/"><span>Прямое смешанное сообщение (поезд и автобус)</span></a>
                                                                            </li>
                                                            </ul>
                        </div>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/transportation_of_baggage/"><span>Провоз ручной клади</span></a>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/found_things/"><span>Найденные вещи</span></a>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/transportation-of-luggage/"><span>Перевозка багажа, грузобагажа</span></a>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/children_transportation/"><span>Перевозка детей</span></a>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/services_in_trains/"><span>Услуги в поездах</span></a>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/amateur-photos-and-video/"><span>Порядок проведения любительской фото- видеосъемки</span></a>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/the-list-of-issues/"><span>Перечень вопросов, по которым возможно обратиться к работникам Контакт-центра</span></a>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/procedure-of-crossing-the-state-border/"><span>Порядок пересечения границы</span></a>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/trains/"><span>Поезда</span></a>
                                            <a class="icon collapsed" data-toggle="collapse" href="#accordion-m-244"></a>
                        <div class="submenu collapse" id="accordion-m-244">
                            <ul class="menu_level_3 list-reset">
                                                                    <li class="item_3">
                                        <a href="/ru/help/trains/message-types/"><span>Типы сообщений</span></a>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/trains/corporate-train/"><span>Фирменные поезда</span></a>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/trains/category-cars/"><span>Категории вагонов</span></a>
                                                                            </li>
                                                                    <li class="item_3">
                                        <a href="/ru/help/trains/the-cars-for-passengers-with-disabilities/"><span>Вагоны для пассажиров с ограниченными физическими возможностями</span></a>
                                                                            </li>
                                                            </ul>
                        </div>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/regulatory-documents/"><span>Нормативные документы</span></a>
                                    </li>
                            <li class="item_2">
                    <a href="/ru/help/information-covid-19/"><span>Информация COVID-19</span></a>
                                    </li>
                    </ul>
    </div>

 </li>
					<li class="item_1"> <a href="/ru/points_of_sale/">
					Пункты продажи билетов </a> </li>
					<li class="item_1"> <a href="/ru/actions/">
					Скидки и специальные предложения </a> </li>
					<li class="item_1"> <a href="/ru/railway_stations/">
					Железнодорожные вокзалы </a>
					    <a class="icon collapsed" data-toggle="collapse" href="#accordion-m-15"></a>
    <div class="collapse submenu" id="accordion-m-15">
        <ul class="menu_level_2 list-reset">
                            <li class="item_2">
                    <a href="/ru/railway_stations/minsk_passenger/"><span>Вокзал станции Минск-Пассажирский</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/brest/"><span>Вокзал станции Брест-Центральный</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/vitebsk/"><span>Вокзал станции Витебск</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/gomel/"><span>Вокзал станции Гомель</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/grodno/"><span>Вокзал станции Гродно</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/mogilev/"><span>Вокзал станции Могилев</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/baranovichi/"><span>Вокзал станции Барановичи-Полесские</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/bobruisk/"><span>Вокзал станции Бобруйск</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/borisov/"><span>Вокзал станции Борисов</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/zhlobin/"><span>Вокзал станции Жлобин</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/kalinkovichi/"><span>Вокзал станции Калинковичи</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/railway_station_krichev/"><span>Вокзал станции Кричев</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/lida/"><span>Вокзал станции Лида</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/luninets/"><span>Вокзал станции Лунинец</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/molodechno/"><span>Вокзал станции Молодечно</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/orsha/"><span>Вокзал станции Орша-Центральная</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/osipovichi/"><span>Вокзал станции Осиповичи</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/pinsk/"><span>Вокзал станции Пинск</span></a>
                </li>
                            <li class="item_2">
                    <a href="/ru/railway_stations/polotsk/"><span>Вокзал станции Полоцк</span></a>
                </li>
                    </ul>
    </div>
 </li>
					 					<li class="item_1"> <a href="/ru/dev/">
					Разработчикам </a> </li>
				</ul>
			</div>
			 <!--<div class="mob-profile">
                <div class="mob-profile__name-wrap">
                    <a class="mob-profile__name" href="/ru/personal/">Личный кабинет</a>
                </div>
                <div class="mob-profile__btn-wrap">
                    <a class="btn btn-default" href="#" data-toggle="modal" data-target="#auth-popup">Войти</a>
                </div>
            </div>
            <div class="head-city-mob">
                <div class="head-city-mob__wrap"><a class="head-city-mob__item" href="#cityPopup" data-toggle="modal" data-target="#cityPopup">Минск</a></div>
            </div>-->
			<div class="contacts-mob-4 mt_1">
				<div class="contacts-mob-4__wrap">
                    <a class="contacts-mob-4__item contacts-mob-4__item--tel" href="tel:105"><span class="contacts-mob-4__number">105</span> (Контакт-центр)</a>
                    <div class="contacts-mob-4__icons-list">
                        <div class="contacts-mob-4__icon-item"><img class="contacts-mob-4__icon" alt="beltelecom" src="https://cms.rw.by/upload/medialibrary/011/beltelekom_b.png"></div>
                        <div class="contacts-mob-4__icon-item"><img class="contacts-mob-4__icon" alt="mts" src="https://cms.rw.by/upload/medialibrary/5c3/MTS_b.png"></div>
                        <div class="contacts-mob-4__icon-item"><img class="contacts-mob-4__icon" alt="velcom" src="https://cms.rw.by/upload/medialibrary/091/velkom_b.png"></div>
                        <div class="contacts-mob-4__icon-item"><img class="contacts-mob-4__icon" alt="life" src="https://cms.rw.by/upload/medialibrary/efa/layf_b.png"></div>
                    </div>
				</div>
                <div class="contacts-mob-4__wrap">
                    <a class="contacts-mob-4__item contacts-mob-4__item--tel" href="tel:151"><span class="contacts-mob-4__number">151</span> (Служба поддержки пассажиров)</a>
                    <div class="contacts-mob-4__icons-list">
                        <div class="contacts-mob-4__icon-item"><img class="contacts-mob-4__icon" alt="beltelecom" src="https://cms.rw.by/upload/medialibrary/011/beltelekom_b.png"></div>
                        <div class="contacts-mob-4__icon-item"><img class="contacts-mob-4__icon" alt="mts" src="https://cms.rw.by/upload/medialibrary/5c3/MTS_b.png"></div>
                        <div class="contacts-mob-4__icon-item"><img class="contacts-mob-4__icon" alt="velcom" src="https://cms.rw.by/upload/medialibrary/091/velkom_b.png"></div>
                        <div class="contacts-mob-4__icon-item"><img class="contacts-mob-4__icon" alt="life" src="https://cms.rw.by/upload/medialibrary/efa/layf_b.png"></div>
                    </div>
                </div>
                <div class="contacts-mob-4__wrap">
                    <div class="contacts-mob-4__item">Справочные услуги для лиц с нарушением слуха <img class="contacts-mob-4__contact-icon" src="https://cms.rw.by/upload/medialibrary/f35/help_start_skype.png" alt="skype">&nbsp;<a href="skype:live:9191-belog?call">Минск</a>, <a href="skype:live:grodno9191?call">Гродно</a>, <a href="skype:live:85ae74bcf284695f">Гомель</a></div>
                </div>
                <div class="contacts-mob-4__wrap">
                    <div class="contacts-mob-4__item">Поддержка пассажиров, находящихся за пределами Республики Беларусь, по телефону <a href="tel:+375222392547">(+375&nbsp;222)&nbsp;39&nbsp;25&nbsp;47</a></div>
                </div>
			</div>
		</div>
	</div>
</div>
</div>
<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "Organization",
  "address": {
    "@type": "PostalAddress",
     "addressLocality": "Минск, Беларусь",
    "streetAddress": "ул. Ленина,17"
  },
  "name": "Белорусская железная дорога",
  "telephone": "105"
}
</script>
</body>
</html>
''';
