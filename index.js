import Express from "express";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const app = Express();

const port = 8100;

app.get("/", async (req, res) => {
  const peserta = await prisma.peserta_pemilihan.findMany();
  res.json(peserta);
});

app.listen(port, () => {
  console.log("Listening on port " + port);
  console.log("\x1b[33m", `http://localhost:${port}`);
});
