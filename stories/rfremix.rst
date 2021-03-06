.. title: RFRemix
.. slug: rfremix
.. date: 2016-09-17 15:28:23 UTC+03:00
.. tags:
.. category:
.. link:
.. description:
.. type: text

.. _ремикс: https://fedoraproject.org/wiki/Remix/ru

RFRemix (ранее Russian Fedora Remix) - это `ремикс`_ дистрибутива
Fedora с использованием репозиториев RPM Fusion и Russian
Fedora. Основным отличием является то, что RFRemix содержит множество
пакетов, недоступных в Fedora из-за патентных ограничений в
Соединённых Штатах, а так же из-за несоответствия различных
компонентов допустимым свободным лицензиям, например, модулей для
видеокарт ATi и NVIDIA.

На установочном диске RFRemix содержатся все необходимые кодеки,
драйвера к видеокартам, а также большое количество дополнительного ПО
(например, рабочие столы XFCE и LXDE), что сильно упрощает работу
неподготовленного пользователя и экономит время специалистов.

В RFRemix мы стараемся устранять различные проблемы, на которые
разработчики Fedora, могут практически не обращать внимания. Мы
стараемся, чтобы все изменения, которые допускает политика Fedora,
были включены в основной дистрибутив.

RFRemix создан не только для русскоязычных пользователей. Установочные
диски поддерживают все языки, которые есть в оригинальной Fedora.

RFRemix распространяется свободно в виде установочных дисков (DVD и
CD), а также Live-образов.

Отличия RFRemix от Fedora
-------------------------

* Установочные образы RFRemix содержат большое количество
  дополнительных пакетов. Мультимедиа кодеки, проприетарные модули
  видеокарт ATi и NVIDIA, различных сетевых адаптеров, Adobe Flash,
  прошивки и т.п.
* На установочном DVD присутствуют помимо GNOME и KDE среды LXDE и
  XFCE.
* В установщик добавлена возможность создания VPN соединений.
* В установщик добавлены сценарии установки различных рабочих столов
  (GNOME, KDE, XFCE, LXDE и минимальные установки GNOME и KDE.>
* Поддержка репозиториев RPM Fusion и Russian Fedora в установщике.
* Добавлена возможность выбора различных клавиатурных комбинация для
  смены раскладок (для русского языка). По умолчанию используется
  Alt+Shift.
* В Firstboot добавлен дополнительный экран для быстрой настройки
  системы (выбор между KDM и GDM, включение некоторых полезных
  настроек в GNOME, включение комбинации Ctrl+Alt+Backspace, перевод
  SELinux в разрешающий режим и др.
* При первом запуске системы запускается скрипт rfremixconf, для
  конфигурации раскладок, изменения системного шрифта, удаления
  setroubleshoot (если в системе выключен SELinux).
* Система мониторинга Smolt отсылает в качестве названия дистрибутива
  не Fedora, а RFRemix.
* Пакет Freetype собран с поддержкой subpixel rendering.
* Пакеты fontconfig и libXft собраны с lcd патчами из Ubuntu.
* Словарь hunspell для русского языка содержит как русские, так и
  английские слова, что позволяет проверять орфографию сразу на двух
  языках, когда приложение этого не позволяет.
* Unzip нормально распаковывает архивы с русскими буквами, созданные в
  Windows.
