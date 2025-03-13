// in this file we established the connection with the database

// import the module
import { Sequelize } from "sequelize";
import dotenv from "dotenv";

// bring the configuration
dotenv.config();

// create variables
const username = process.env.USER;
const password = process.env.PASSWORD;
const database = process.env.DATABASE;
const host = process.env.LOCALHOST;

// connection configuration
const sequelize = new Sequelize(database, username, password, {
  host /* if they have same name, it's not necessary to specified */,
  dialect: "mysql",
});

// export it
export default sequelize;
