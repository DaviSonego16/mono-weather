const express = require('express');
const app = express();
const indexRouter = require('./routes/index');

const PORT = 3000;

// Middleware para interpretar JSON
app.use(express.json());

// Usar as rotas definidas em /routes
app.use('/', indexRouter);

// Iniciar servidor
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
