# mono-teste

# api

##  Como rodar a aplicação

1. **Clone o repositório**

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

4. **Acesse a API**:

O servidor estará rodando em:

```
http://localhost:3000
```

---

## Como rodar a aplicação **usando Docker**

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