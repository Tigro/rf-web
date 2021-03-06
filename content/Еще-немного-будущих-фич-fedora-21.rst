.. title: Еще немного будущих фич Fedora 21
.. slug: Еще-немного-будущих-фич-fedora-21
.. date: 2014-03-21 12:50:56
.. tags: systemd, gcc, x11
.. category: Fedora Changes
.. link:
.. description:
.. type: text
.. author: Peter Lemenkov

Прошло немного времени после `недавнего одобрения полудюжины фич будущей Fedora
21 </content/Будущие-фичи-fedora-21>`__, а уже одобрили еще немного:

- `Доработка autofs - добавление парсера amd-формата
  <https://fedoraproject.org/wiki/Changes/Add_amd_map_parser_to_autofs>`__
  (`automount daemon <http://www.am-utils.org/>`__). Проект am-utils заброшен,
  и autofs выглядит более перспективно, но, к сожалению, в autofs до сих пор не
  хватает некоторого функционала из am-utils, среди которого поддержка
  amd-формата. Вот его добавление и запланировано.

- `Полная поддержка чипов Allwinner sunxi (A10 / A13 / A20)
  <https://fedoraproject.org/wiki/Changes/AllwinnerSunxiSupport>`__
  (используются, например, в `CubieTruck <http://www.cubietruck.com/>`__).
  Работа будет проведена в рамках `Fedora ARM SIG
  <https://fedoraproject.org/wiki/Architectures/ARM>`__. До сих пор Fedora на
  этой платформе работала благодаря ремиксу, а теперь планируется включить все
  нужное прямо в Fedora для ARM. К сожалению, поддержка графического режима
  работы пока не планируется.

- `Поддержка ведения журнала CUPS в journald
  <https://fedoraproject.org/wiki/Changes/CupsJournalLogging>`__, который
  традиционно пишет в файлики в */var/log/* Это часть более значительного
  проекта по унификации ведения журнала во всех приложениях и демонах. Мы
  уверены, что все OpenSource-приложения должны перестать писать в файлики, в
  syslog и т.п, и переходить на унифицированный фреймворк, предоставляемый
  systemd, т.е. journald. И мы надеемся, что вы в ближайшее время услышите еще
  о фичах из этой серии.

- Очередное изменение во флагах GCC по умолчанию - `включение
  *-Werror=format-security*
  <https://fedoraproject.org/wiki/Changes/FormatSecurity>`__.

  Как обычно, будет запланирована полная пересборка всего дерева. В качестве
  теста мы уже попробовали пересобрать дерево, и нашли `почти две сотни проблем
  <https://bugzilla.redhat.com/showdependencytree.cgi?id=1038083&hide_resolved=0>`__,
  часть из которых уже исправлена (и патчи, как обычно, уже отправлены или
  отправляются в апстрим). Типичное исправление `выглядит довольно просто
  <https://src.fedoraproject.org/cgit/rtpproxy.git/tree/rtpproxy-0008-Fix-FTBFS-if-Werror-format-security-flag-is-used.patch>`__,
  но его нужно сделать, чем мы традиционно и занимаемся.

- `"Headless" Java <https://fedoraproject.org/wiki/Changes/HeadlessJava>`__.
  Одной из популярных претензий к большим языковым платформам, поставляемым в
  Fedora /RHEL, было "мне нужно запустить демон на %название\_языка%, а он
  тянет за собой пол-иксов" (например, так жалуются на `Erlang
  <https://bugzilla.redhat.com/784693>`__). Теперь появится возможность
  поставить Java без "десктопных" компонентов, таких, как X11 и PulseAudio.

- `System-wide jQuery <https://fedoraproject.org/wiki/Changes/jQuery>`__.
  Сейчас у нас нет пакета с jQuery в дистрибутиве, поэтому каждое приложение,
  которое его использует, тянет его как `bundled lib
  </content/bundled-libraries-немного-статистики-и-комментариев-к-ней>`__, и
  эта практика в общем случае `приводит к куче проблем
  </content/Досмеялись-Серьезная-ошибка-в-gnutls>`__. Теперь, после включения
  пакета в дистрибутив, от мэйнтейнеров приложений, использующих jQuery, будет
  требоваться перейти на system-wide копию, либо получить от FESCo разрешение.

- `Поддержка конфигурационных файлов syslinux в U-boot
  <https://fedoraproject.org/wiki/Changes/u-boot_syslinux>`__.

  Традиционно, в ARM-системах, то, как надо загружать систему, `"хардкодилось"
  прямо в U-boot </content/Текущие-недостатки-архитектуры-arm>`__, что, само
  собой, неудобно для дистрибутивов общего пользования. Поэтому было принято
  решение вынести платформо-специфичные настройки в отдельный файл
  конфигурации, который будет создаваться Anaconda или самим пользователем, и
  который будет использоваться U-boot во время загрузки. Возможно в будущем
  перейдут на `спецификации для загрузчиков от FreeDesktop.org
  <http://www.freedesktop.org/wiki/Specifications/BootLoaderSpec/>`__, но пока
  будет вот так.

- Долгожданный `X.org без прав суперпользователя
  <https://fedoraproject.org/wiki/Changes/XorgWithoutRootRights>`__.

  Эта фича стала возможно благодаря работе нашего коллеги, инженера Red Hat,
  `Hans de Goede <https://github.com/jwrdegoede>`__, о чем `вы уже могли
  слышать </content/xorg-без-привилегий-суперпользователя>`__.

Разумеется, это далеко еще не все - на подходе новые фичи.
