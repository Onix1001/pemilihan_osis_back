import Express from "express";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const router = Express.Router();

router.get("/", (req, res) => {
  res.send("hello world");
});

router.post("/add_peserta", (req, res) => {
  res.send(req.method);
});
export default router;
