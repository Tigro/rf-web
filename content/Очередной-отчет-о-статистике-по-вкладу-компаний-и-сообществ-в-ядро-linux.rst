.. title: Очередной отчет о статистике по вкладу компаний и сообществ в ядро Linux
.. slug: Очередной-отчет-о-статистике-по-вкладу-компаний-и-сообществ-в-ядро-linux
.. date: 2013-09-17 10:50:56
.. tags: kernel, statistics, android, canonical, microsoft, debian, ubuntu
.. category: статистика
.. link:
.. description:
.. type: text
.. author: Peter Lemenkov

Вышел очередной отчет от Linux Foundation `по участию в разработке ядра
Linux в 2012
году <http://www.linuxfoundation.org/news-media/announcements/2013/09/linux-foundation-releases-annual-linux-development-report>`__
(мы уже обращали ваше внимание на `отчет за 2012
год </content/В-очередной-раз-вышла-статистика-по-ядру-linux-версии-39>`__,
выложенный на LWN, и на `отчет по 2011
году </content/кто-разрабатывал-ядро-linux-в-2011-году>`__ от Linux
Foundation). Новость `уже обсуждается на
OpenNET.ru <https://www.opennet.ru/opennews/art.shtml?num=37926>`__.

Изменений мало - лидеры все те же, правда вот увеличился вклад
"железячных" компаний (спасибо, Android!), из Top 25 исчезла компания
Microsoft, а компания Canonical все никак не может войти в Top 25 (для
этого им надо было бы нанять хотя-бы одного активного разработчика ядра,
или внести тысячу патчей). А свободных разработчиков становится все
меньше, к слову говоря. Товар-то дефицитный, и разбирают быстро.

Раз уж заговорили о Canonical, знаете как они исправляют нетривиальные
ошибки в своем дистрибутиве в отсутствие квалифицированных
разработчиков? Если ошибка еще не исправлена в Debian, что вполне
возможно, учитывая медленный темп разработки Debian, то они открывают
тикет у нас, в багзилле Fedora, ждут, пока наши участники их исправят, а
потом пытаются перенести к себе. Например, не осилив исправить
`ошибку <https://bugs.launchpad.net/ubuntu/+source/eglibc/+bug/838975>`__
силами разработчиков Debian и Ubuntu, `открыли
тикет <https://bugs.launchpad.net/ubuntu/+source/eglibc/+bug/838975/comments/4>`__
в `bugzilla.redhat.com <https://bugzilla.redhat.com/737387>`__,
подождали, пока `наши коллеги исправят
ошибку <http://sourceware.org/git/?p=glibc.git;a=commitdiff;h=8bd6836>`__,
и только потом включили ее к себе, в eglibc. И так у них все. Без
установленной в параллель Fedora разработка Ubuntu невозможна. На самом
деле, это очень здорово, что участники Ubuntu обращаются к нам - мы ведь
обладаем высокой квалификацией, и у нас больше опыта в решении проблем,
чем у них. Немногочисленные разработчики Canonical давно и плодотворно
сотрудничают с нами, и ничего зазорного в этом ни мы, ни они, не видим.

Например, один из лучших разработчиков Canonical, Martin Pitt, помимо
того огромного нечеловеческого объема работы, который он осиливает в
одиночку, `участвует в разработке systemd, и вносит улучшения в Ubuntu в
т.ч. и по рекомендациям наших
участников <https://bugzilla.redhat.com/989103#c11>`__.
