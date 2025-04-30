# api

##  Clonando o repositório

```bash
git clone https://github.com/seu-usuario/mono-weather.git
```

##  Como rodar a aplicação

1. **Acesse a pasta da api**

```bash
cd mono-weather/api-backend
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
docker build -t api-backend-app .
```

2. **Rode o container**:

```bash
docker run -p 3000:3000 api-backend-app
```

✅ Pronto! Agora o backend estará disponível em:

```
http://localhost:3000
```



# app

##  Como rodar o aplicativo

1. **Acesse a pasta do aplicativo com a api rodando**

```bash
cd mono-weather/flutter_app
```

2. **Instale as dependências**:

```bash
flutter pub get
```

3. **Rode o aplicativo**:

```bash
flutter run
```