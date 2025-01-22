# docker-django-llama-colab

A test project to implement a Django server running inside Docker, connected to a Llama 3.1 LLM hosted on a Google Colab VM with an Nvidia T4 GPU.

## 📌 About

This project demonstrates how to build and run a Dockerized Python Django web server with a MySQL database. It also connects to an instance of Llama 3.1 (8B) running on a Google Colab VM, allowing AI-powered interactions via the Django backend.

## 🛠️ Prerequisites

Ensure you have the following installed on your system:
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Google Colab](https://colab.research.google.com/) account with GPU access

## 🚀 Setup & Installation

### 1️⃣ Clone the Repository
```sh
git clone https://github.com/luiz-bcardoso/docker-django-llama-colab
cd docker-django-llama-colab
```

### 2️⃣ Create a `.env` File
Create a `.env` file in the project's root directory and add the following configuration:

```env
# Django settings
DJANGO_SECRET_KEY='=%6aqk0p^aux0qvolqn_7efyj(@wh*wtc_!n10u8_o4!l#k6)h'
DJANGO_DEBUG=True
DJANGO_ALLOWED_HOSTS=localhost 127.0.0.1 [::1]

# MySQL settings
MYSQL_ROOT_PASSWORD=your-root-password
MYSQL_DATABASE=docker-django-llama-colab
MYSQL_USER=your-mysql-user
MYSQL_PASSWORD=your-mysql-password
```
> **Note:** Replace `your-root-password`, `your-mysql-user`, and `your-mysql-password` with your actual credentials.

### 3️⃣ Build and Run the Docker Containers

Run the following command to build and start the containers:
```sh
docker-compose up --build
```

### 4️⃣ Access the Web Application

Once the containers are running, open your web browser and go to:
```
http://localhost:8000
```

### 5️⃣ (Optional) Check MySQL Database
If you want to verify the database service, you can connect using MySQL Workbench or another MySQL client with the credentials from the `.env` file.

## 🖥️ Running Llama 3.1 on Google Colab

To connect the Django server to the Llama 3.1 model:

//TODO

## 🏗️ Contributing
Feel free to fork this repository and contribute! Open an issue for bugs or feature requests.

## 📄 License
This project is licensed under the [MIT License](LICENSE).

---
