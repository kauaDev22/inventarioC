<template>
  <table>
    <thead>
      <tr>
        <th>Monitor ID</th>
        <th>Modelo do Monitor</th>
        <th>Patrimônio</th>
        <th>Ações</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="monitor in monitores" :key="monitor.monitor_id">
        <td>{{ monitor.monitor_id }}</td>
        <td v-if="currentMonitor !== monitor">
          <span>{{ monitor.monitor_modelo }}</span>
        </td>
        <td v-else><input v-model="monitor.monitor_modelo" /></td>
        <td v-if="currentMonitor !== monitor">
          <span>{{ monitor.patrimonio }}</span>
        </td>
        <td v-else><input v-model="monitor.patrimonio" /></td>
        <td>
          <button
            v-if="currentMonitor !== monitor"
            @click="editMonitor(monitor)"
          >
            Editar
          </button>
          <button v-else @click="updateMonitor(monitor)">Salvar</button>
          <button @click="deleteMonitor(monitor.monitor_id)">Deletar</button>
        </td>
      </tr>
    </tbody>
  </table>
  <button @click="previousPage" :disabled="page === 0">Anterior</button>
  <button @click="nextPage" :disabled="page >= totalPages - 1">Próximo</button>
  <button @click="createMonitor">Criar</button>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      monitores: [],
      page: 0,
      totalPages: 0,
      currentMonitor: null,
    };
  },
  async created() {
    await this.fetchData();
  },
  methods: {
    async fetchData() {
      const response = await axios.get(
        `http://localhost:8080/monitores?page=${this.page}&size=10`
      );
      this.monitores = response.data.content;
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

    editMonitor(monitor) {
      this.currentMonitor = monitor;
    },
    async updateMonitor(monitor) {
      if (monitor.monitor_id) {
        await axios.put(
          `http://localhost:8080/monitores/${monitor.monitor_id}`,
          monitor
        );
      } else {
        await axios.post(`http://localhost:8080/monitores`, monitor);
      }
      this.currentMonitor = null;
      this.fetchData();
    },
    async deleteMonitor(id) {
      await axios.delete(`http://localhost:8080/monitores/${id}`);
      this.fetchData();
    },
    createMonitor() {
      const newMonitor = {
        monitor_id: null, // ou um valor temporário único
        monitor_modelo: "",
        patrimonio: "",
      };
      this.monitores.push(newMonitor);
      this.currentMonitor = newMonitor;
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
