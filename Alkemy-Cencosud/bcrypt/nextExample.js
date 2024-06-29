import express from "express";

const app = express();

app.use(function (req, res, next) {
  console.log("Time: ", Date.now());
  next();
});

// verify if token exists
const isLogged = (req, res, next) => {
  if (!token) {
    return res.status(401).json({ msg: "token is required" });
  }

  const userId = verifyToken(token);
  if (!userId) {
    res.status(401);
  } else {
    req.user = userId;
  }
  // continue with the requests flow
  next();
};
