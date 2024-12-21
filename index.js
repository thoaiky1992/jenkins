const express = require("express");
const cors = require("cors");

const PORT = 3000;
const app = express();
app.use(cors());
app.use(express.json());

app.get("/", (_, res) => {
  res.json({
    message: "Hello KySomaio đẹp trai và kute phô mai que , hehe !!!",
    statusCode: 200,
    version: "1.0.87",
  });
});

app.listen(PORT, () => console.log(`server starting on port ${PORT}`));
