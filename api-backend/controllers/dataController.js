const axios = require('axios');

const BASE_URL = 'https://jsonplaceholder.typicode.com/todos/';

async function fetchData(res) {
  try {
    let url = BASE_URL
    const response = await axios.get(url);
    res.json(response.data);
  } catch (error) {
    console.error(error.response?.data || error.message);
    res.status(error.response?.status || 500).json({ error: 'Erro ao buscar dados' });
  }
}

exports.getAll = (req, res) => {
  fetchData(res);
};