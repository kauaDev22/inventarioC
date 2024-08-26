<template>
  <div>
    <table>
      <thead>
        <tr>
          <th>Computador ID</th>
          <th>Modelo do Computador</th>
          <th>Patrimônio</th>
          <th>Ações</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="computador in computadores" :key="computador.computador_id">
          <td>{{ computador.computador_id }}</td>
          <td v-if="currentComputador !== computador">
            <span>{{ computador.computador_modelo }}</span>
          </td>
          <td v-else><input v-model="computador.computador_modelo" /></td>
          <td v-if="currentComputador !== computador">
            <span>{{ computador.patrimonio }}</span>
          </td>
          <td v-else><input v-model="computador.patrimonio" /></td>
          <td>
            <button
              v-if="currentComputador !== computador"
              @click="editComputador(computador)"
            >
              Editar
            </button>
            <button v-else @click="updateComputador(computador)">Salvar</button>
            <button @click="deleteComputador(computador.computador_id)">
              Deletar
            </button>
          </td>
        </tr>
      </tbody>
    </table>
    <button @click="previousPage" :disabled="page === 0">Anterior</button>
    <button @click="nextPage" :disabled="page >= totalPages - 1">
      Próximo
    </button>
    <button @click="createComputador">Criar</button>
  </div>
</template>
<script>
import axios from "axios";

export default {
  data() {
    return {
      computadores: [],
      page: 0,
      totalPages: 0,
      currentComputador: null,
    };
  },
  async created() {
    await this.fetchData();
  },
  methods: {
    async fetchData() {
      const response = await axios.get(
        `http://localhost:8080/computadores?page=${this.page}&size=10`
      );
      this.computadores = response.data.content;
      this.totalPages = response.data.totalPages;
    },
    async nextPage() {
      this.page++;
      await this.fetchData();
    },
    async previousPage() {
      this.page--;
      await this.fetchData();
    },

    editComputador(computador) {
      this.currentComputador = computador;
    },
    async updateComputador(computador) {
      if (computador.computador_id) {
        await axios.put(
          `http://localhost:8080/computadores/${computador.computador_id}`,
          computador
        );
      } else {
        await axios.post(`http://localhost:8080/computador`, computador);
      }
      this.currentComputador = null;
      this.fetchData();
    },
    async deleteComputador(id) {
      await axios.delete(`http://localhost:8080/computadores/${id}`);
      this.fetchData();
    },
    createComputador() {
      const newComputador = {
        computador_id: null, // ou um valor temporário único
        computador_modelo: "",
        patrimonio: "",
      };
      this.computadores.push(newComputador);
      this.currentComputador = newComputador;
    },
  },
};
</script>
<style scoped>
body {
  font-family: Arial, sans-serif;
}

table {
  width: 100%;
  border-collapse: collapse;
  font-family: Arial, sans-serif; /* Use a fonte desejada */
}

th {
  background-color: #00b215;
  color: #333;
  text-align: left;
  padding: 10px;
  font-weight: normal;
}
td {
  border: 1px solid #ddd;
  padding: 10px;
  color: #555;
}
button {
  background-color: #00b215; /* Cor de fundo */
  border: none; /* Remove as bordas */
  color: white; /* Cor do texto */
  padding: 15px 32px; /* Espaçamento interno */
  text-align: center; /* Alinhamento do texto */
  text-decoration: none; /* Remove o sublinhado */
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer; /* Muda o cursor para um ponteiro quando passa por cima */
  border-radius: 12px; /* Borda arredondada */
}

/* Estilo para o botão quando o mouse passa por cima */
button:hover {
  background-color: #45a049;
}
</style>
