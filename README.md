📝 Notes Project  

Notes Project — приложение для заметок на Django (backend) + Vue 3 (frontend) с использованием PostgreSQL, Nginx и Docker Compose.  

Проект поддерживает CI/CD, что позволяет автоматически собирать и деплоить контейнеры на сервер при каждом обновлении.  

---

- **Backend:** Django + Django REST Framework + Gunicorn
- **Frontend:** Vue 3 + Vite + TailwindCSS
- **База данных:** PostgreSQL
- **Веб-сервер:** Nginx
- **Контейнеризация:** Docker, Docker Compose

Проект поддерживает **CI/CD** с автоматической сборкой и деплоем.

---

## 🚀 Установка и запуск

1. Клонируем репозиторий:

   ```bash
   git clone https://github.com/raynowww/Notes_project.git
   cd Notes_project

2. Создаем .env-файл (шаблон есть в .env.example).

3. Запускаем проект:

       docker compose up -d --build

4. Применяем миграции:

       docker exec -it notes_backend python manage.py migrate 
  
## 🌐 Доступ  

Фронтенд: http://localhost  

API (пример): http://localhost/api/v1/notes/  

Админ-панель: http://localhost/admin/  

---

## 🛠 CI/CD  
Проект использует GitHub Actions для автоматизации сборки и деплоя.   

Actions secrets:  
ENV_FILE	-- Путь к файлу с переменными окружения для деплоя  

SSH_PRIVATE_KEY  --	 Приватный ключ для SSH-подключения к серверу  

VDS_FP  --  Путь до файла-ключа для авторизации на сервере  

VDS_HOS  --  Адрес сервера для деплоя  

VDS_SSH_PORT  --  Порт SSH-соединения  

VDS_USER  --  Пользователь на сервере для деплоя  


Автоматизация включает:  
- Сборку Docker-образов Backend/Frontend
- Деплой на сервер
- Применение миграций Django  