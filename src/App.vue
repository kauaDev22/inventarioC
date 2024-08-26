<template>
  <div id="app">
    <br />
    <BarraNav />
    <tabela-monitores />
    <p></p>
    <tabela-computadores />

    <tabela-diversos />

    <br />
  </div>
</template>

<script>
import BarraNav from "./components/BarraNav.vue";
import TabelaComputadores from "./components/TabelaComputadores.vue";
import TabelaDiversos from "./components/TabelaDiversos.vue";
import TabelaMonitores from "./components/TabelaMonitores.vue";

export default {
  components: {
    BarraNav,
    TabelaComputadores,
    TabelaMonitores,
    TabelaDiversos,
  },
};
</script>
