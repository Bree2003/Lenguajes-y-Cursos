import e from "express";
import jwt from "jsonwebtoken";
try {
  const token = jwt.sign(
    {
      name: "jose",
      role: "guest",
    },
    "7hThjF78",
    { expiresIn: "60" } /* numero es segundos, string es milisegundos */
  );
  console.log(token);
  setTimeout(() => {
    const isTokenVerified = jwt.verify(token, "7hThjF78");
    console.log(isTokenVerified);
  }, 60);
} catch (error) {
  console.log(error);
}
