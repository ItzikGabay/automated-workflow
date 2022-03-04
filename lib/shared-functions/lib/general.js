const axios = require("axios");

function test() {
  console.log("works");
  return "works fine.";
}

async function async_test() {
  const request = await axios.get("https://jsonplaceholder.typicode.com/todos/1");
  return await request.data;
}

module.exports = {
  test,
  async_test,
};
