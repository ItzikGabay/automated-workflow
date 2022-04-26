import express from "express";

const app = express();

app.get("/", (req, res) => {
  res.status(200).json({ status: 200, message: "OK" });
});

app.listen(3001, () => {
  console.log("Health service is running on port 3001");
});
