<template>
  <div>
    <table>
      <thead>
        <tr>
          <th>ID's</th>
          <th>Item</th>
          <th>Quantidade</th>
          <th>Ações</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="item in itensDiversos" :key="item.item_id">
          <td>{{ item.item_id }}</td>
          <td v-if="currentItem !== item">
            <span>{{ item.item }}</span>
          </td>
          <td v-else><input v-model="item.item_modelo" /></td>
          <td v-if="currentItem !== Item">
            <span>{{ item.item_qtd }}</span>
          </td>
          <td v-else><input v-model="item.item_qtd" /></td>
          <td>
            <button v-if="currentItem !== item" @click="editItem(Item)">
              Editar
            </button>
            <button v-else @click="updateItem(item)">Salvar</button>
            <button @click="deleteItem(item.item_id)">Deletar</button>
          </td>
        </tr>
      </tbody>
    </table>
    <button @click="previousPage" :disabled="page === 0">Anterior</button>
    <button @click="nextPage" :disabled="page >= totalPages - 1">
      Próximo
    </button>
    <button @click="createItem">Criar</button>
  </div>
</template>
<script>
import axios from "axios";

export default {
  data() {
    return {
      itensDiversos: [],
      page: 0,
      totalPages: 0,
      currentItem: null,
    };
  },
  async created() {
    await this.fetchData();
  },
  methods: {
    async fetchData() {
      const response = await axios.get(
        `http://localhost:8080/itens_diversos?page=${this.page}&size=10`
      );
      this.itensDiversos = response.data.content;
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

    editItem(item) {
      this.currentItem = item;
    },
    async updateItem(item) {
      if (item.item_id) {
        await axios.put(
          `http://localhost:8080/itens_diversos/${item.item_id}`,
          item
        );
      } else {
        await axios.post(`http://localhost:8080/itens_diversos`, item);
      }
      this.currentItem = null;
      this.fetchData();
    },
    async deleteItem(id) {
      await axios.delete(`http://localhost:8080/itens_diversos/${id}`);
      this.fetchData();
    },
    createItem() {
      const newItem = {
        item_id: null, // ou um valor temporário único
        item_modelo: "",
        item_qtd: "",
      };
      this.itensDiversos.push(newItem);
      this.currentItem = newItem;
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
