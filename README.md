# TestEasyMerch


* **

* ### Запуск проекта
    * Установить python версии 3.8
    * Установить необходимыве пакеты из файла requirements.txt. (Желательно активировать окружение)
    Для этого необходимо выполнить команду pip install requirements.txt в терминале.
      (Находиться в папке с файлом requirements.txt)
    * Установить Базу данных Postgreql.
    * Создать новую БД или загрузить БД из репозитория
    * в файле merchandiser/merchandiser/settings.py в переменной DATABASES проверить все данные подключения к БД.
    * Перейдите в каталог где находится файл manage.py и выполните следующие команды
      * python manage.py migrate ( для применения миграций БД )
      * python manage.py createsuperuser ( Для создания аккаунта администратора ) ps. следовать указаниям,
        которые выводятся после выполнения команды.
      * python manage.py runserver ( для запуска проета в локальной среде )

* ### URL для страниц
  
  |   URL | Описание |
  | ------ | ------ |
  | admin/ | Админ-панель ( Нужно ввести данные, которые указывали при manage.py createsuperuser ) |
  | api/v1/product-availability/ | Задание 1. Наличие товаров по магазинам. Фильры и критерии находятся во вкладке filters на данной странице  |
  | api/v1/product-category/1 | Задание 1. Вывод товаров по категориям  |
  | api/v1/exc-2/ | Задание 2. Весь код находится в файле  static/js/exc_2.js. html шаблон и также моковые данные находятся в templates/exc2.html |

* ### Комментарии
  Структура БД прописана в файле core/models.py.
  Первое задание представлено как rest-api.
  Для выполнения второго задания использовал SSR.
  
  #### Добавить или отредактировать данные для первого задания можно в админ панели.

  
      