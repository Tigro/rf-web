.. title: Текущий статус поддержки UEFI в Fedora 18
.. slug: Текущий-статус-поддержки-uefi-в-fedora-18
.. date: 2012-09-05 12:10:36
.. tags:
.. category:
.. link:
.. description:
.. type: text
.. author: Peter Lemenkov

**Это архивная статья**


Matthew Garrett подвел промежуточный итог и `описал ситуацию с UEFI в
выходящей через пару месяцев Fedora
18 <http://mjg59.dreamwidth.org/16863.html>`__. Вкратце - все готово для
загрузки подписанных образов, и сейчас идет окончательный юридический
анализ перед тем, как начать подписывать необходимые компоненты ключом
от Microsoft. Будет запрещен kexec, так что я ожидаю проблемы у Oracle и
их Ksplice. Написаны патчи для ядра Linux и отправлены в список рассылки
(где вызвали какие-то детские эмоции у некоторых разработчиков, слегка
перечитавшихся киберпанковского бульварного чтива, но в целом приняты
хорошо). Начиная с Fedora 18 Beta необходимые компоненты будут подписаны
(скорее всего тестовым ключом, не тем, что от Microsoft). Будут приняты
`улучшения, предложенные коммьюнити
SUSE </content/suse-объявило-о-своих-планах-на-restricted-boot-тн-secure-boot>`__,
и сейчас Matthew активно сотрудничает с ними по унификации всего
необходимого.

А ваш дистрибутив уже покупает ключи для подписи загрузчика? Конечно,
всегда будет возможность купить подержанное железо. Например, на ебее
можно купить еще рабочую Unix-станцию на базе sparc или mips за
несколько десятков или сотен долларов США. Там вполне можно запустить
проприетарный Unix, под некоторые из которых есть даже фотошоп и автокад
(очень нужные многим, судя по форумным сообщениям), или даже вполне
рабочий Debian конца 1990х и наслаждаться свободой. Этого барахла
навалом, т.к. сейчас многие компании списывают устаревшие Unix-машины,
заменяя их на x86\_64 с RHEL. Участникам Fedora PPC SIG вообще пару лет
назад предлагали IBM-сервер на PowerPC забесплатно (`IBM Power 595 с 64
процессорами и 512 гигабайтами
памяти <http://www.redbooks.ibm.com/redpapers/pdfs/redp4440.pdf>`__) с
самовывозом - UEFI там точно нет, и вполне сгодилось бы для
интернет-серфинга (флэш-плейера и скайпа там, правда, тоже нет).

