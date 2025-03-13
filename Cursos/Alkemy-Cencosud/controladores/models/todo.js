// import sequelize and connection
import { DataTypes, Sequelize } from "sequelize";
import sequelize from "../database/sequelize";

// define model todo in database
const Todo = sequelize.define("todo", {
  // they're define as objects
  title: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  completed: {
    type: DataTypes.BOOLEAN,
    defaultValue: false,
  },
});

export default Todo;
