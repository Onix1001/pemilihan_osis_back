import Express from "express";

const app = Express();
import router from "./router/index.js";

const port = 8100;

app.use(router);

app.listen(port, () => {
  console.log("Listening on port " + port);
  console.log("\x1b[33m", `http://localhost:${port}`);
});
