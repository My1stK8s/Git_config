# Инструкция:
1) Репозиторий с кодом находится по адресу: https://github.com/My1stK8s/Git_config.git
Чтобы просмотреть существующий код в главной ветке "master", нужно:
- сгенерировать ssh-ключ, выполнив команду ssh-keygen. Полученный ssh-key выслать по эл.почте.
- в ответном письме получить подтверждение установки ssh-key на сервер. 
- открыть Visual Studio Code и создадим копию (удаленного) репозитория к себе на ПК. Нажимаем "F1", 
набираем git clone git@github.com:My1stK8s/Git_config.git 
- выбираем место на диске и каталог для хранения проекта.

2)Для того, чтобы добавить изменения в локальный репозиторий git, необходимо выполнить две команды в терминале:
а). Добавить файлы в Git: 
git add --all
б). Подтвердить изменения: 
git commit -m "Ваш комментарий"
в) Проверить статус git:
git status 

3) Ветки master и dev считаются основными ветками, их смысл состоит в том,
что они существуют до тех пор, пока существует сам проект. В ветке main всегда хранится стабильная версия проекта (релиз), 
в ветке develop хранится текущая рабочая версия проекта.

Имена функциональных веток должны кратко, в 1-2-3-4 слова (слова разделяются дефисом),
характеризовать назначение ветки. Нет необходимости включать в наименование ничего не значащие или понятные только вам аббревиатуры,
постфиксы, указания на нежелаемое поведение.

Хороший пример: fix-service-control

Плохой пример: ab1000610777_notStmt-branch - WTF?!


4) Перед началом работы необходимо внести изменения в config файл git. Для этого выполним команды:
git config --global user.name "Your Name"
git config --global user.email "your_email@whatever.com"
где "Your Name" - это Ваше имя и Фамилия, а "your_email@whatever.com" - Ваш эл.адрес.
Чтобы посмотреть все установленные настройки и узнать где именно они заданы, используйте команду:
git config --list --show-origin

5) Инструкция для младших сотрудников по слиянию веток:
- создать свою ветку:
git branch <Имя новой ветки>
- внести изменения в нее:
git add .
git commit -m "Добавить комментарий"
- слить эти изменения с основной кодовой базой:
git checkout develop
git merge <наименование ветки, которую нужно слить с основной>
 
