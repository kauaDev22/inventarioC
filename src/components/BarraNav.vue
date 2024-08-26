<template>
  <div>
    <navbar class="navbar"> <h1>CTI - Inventário bloco C</h1></navbar>
    <div>
      <router-view></router-view>
    </div>
  </div>
</template>
<style>
.navbar {
  display: flex;
  flex-direction: column;
  align-items: center; /* Alinha os itens horizontalmente ao centro */
  justify-content: center; /* Alinha os itens verticalmente ao centro */
  background-color: #4caf50;
  padding: 20px;
  color: white;
}

.navbar .logo {
  font-size: 24px;
}

.navbar .menu {
  display: flex;
  gap: 20px;
}

.navbar .menu a {
  color: white;
  text-decoration: none;
}

.navbar .search {
  display: flex;
  align-items: center;
  gap: 10px;
}

.navbar .search input {
  padding: 5px;
}

.navbar .button {
  background-color: #388e3c;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 12px;
}
</style>
