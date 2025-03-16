# Django + PostgreSQL + Nginx Docker Framework

This is a Docker-based Django + PostgreSQL + Nginx development framework for quickly deploying new Django projects without manual database installation.

## 📌 Features
- Manage Django and PostgreSQL with **Docker Compose**
- Reusable framework for new project development
- `.env` configuration for flexibility
- Supports volume persistence for PostgreSQL data

## 🚀 Getting Started

### **1. Clone the Repository**
```bash
git clone https://github.com/yoyolien/django-docker-framework.git
cd django-docker-framework
```

### **2. Create a `.env` File**
Create a `.env` file in the project directory and add:
```ini
POSTGRES_DB=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=0000
```

### **3. Start Docker Containers**
```bash
docker-compose -f docker-compose.yml up
```
### **5. Create a Superuser (Optional)**
```bash
docker-compose exec web python manage.py createsuperuser
```

### **6. Access Django in Browser**
Open `http://localhost:8000/` to see the Django app.


