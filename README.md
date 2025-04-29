# mono-weather

# 📚 Meu Backend Express - API com Docker

Este é um projeto de backend básico usando **Node.js**, **Express** e containerizado com **Docker**.

---

## 🚀 Como rodar a aplicação **sem Docker**

1. **Clone o repositório** (caso ainda não tenha feito):

```bash
git clone https://github.com/seu-usuario/meu-backend.git
cd meu-backend
```

2. **Instale as dependências**:

```bash
npm install
```

3. **Rode o servidor**:

```bash
npm start
```
ou
```bash
node server.js
```

4. **Acesse a API**:

O servidor estará rodando em:

```
http://localhost:3000
```

---

## 🐳 Como rodar a aplicação **usando Docker**

1. **Build da imagem Docker**:

```bash
docker build -t meu-backend-app .
```

2. **Rode o container**:

```bash
docker run -p 3000:3000 meu-backend-app
```

✅ Pronto! Agora o backend estará disponível em:

```
http://localhost:3000
```

---

## 🛤️ Rotas disponíveis

| Método | Endpoint             | Descrição                                       |
|:------:|:--------------------- |:----------------------------------------------- |
| GET    | `/`                   | Página inicial (Home)                          |
| GET    | `/sobre`               | Sobre o projeto                                |
| GET    | `/weather`             | Consulta clima atual (mock)                    |
| GET    | `/forecast`            | Consulta previsão do tempo (mock)              |
| GET    | `/air_pollution`       | Consulta qualidade do ar (mock)                |
| GET    | `/air_pollution/history` | Consulta histórico de poluição (mock)         |
| GET    | `/weather/coords`      | Consulta clima por coordenadas (mock)          |
| GET    | `/buscar/:id`          | Buscar recurso pelo ID passado na URL          |

---

## 📦 Estrutura do projeto

```bash
meu-backend/
├── server.js
├── routes/
│   └── index.js
├── controllers/
│   └── exemploController.js
├── package.json
└── Dockerfile
```

---

## 📄 Requisitos

- [Node.js](https://nodejs.org/)
- [Docker](https://www.docker.com/) (opcional, se quiser rodar com container)

---

## ✨ Observações

- A aplicação está configurada para rodar na porta **3000**.
- Se necessário alterar a porta, edite a variável de ambiente `PORT` ou modifique diretamente no `server.js`.

---

# 🔥 Bora rodar!  
Se tiver qualquer dúvida, só abrir uma issue ou perguntar!
