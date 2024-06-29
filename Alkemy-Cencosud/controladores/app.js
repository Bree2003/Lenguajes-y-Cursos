import dotenv from "dotenv";
import express from "express";

// we bring config from .env file
dotenv.config();

// create express app
const app = express();

// serialize app to json, global middleware
app.use(express.json());

// we indicate port to use
const port = process.env.PORT || 3001;
console.log(port);

// define route with callback middleware specified
app.get("/", (req, res) => {
  res.send(req.method);
  res.send(req.route);
}); /* mehtod: GET */

// start app
app.listen(port);
