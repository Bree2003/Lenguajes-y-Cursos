import db from "../models";
import { verifyToken } from "../utils/jwt";

const isAdmin = async (req, res, next) => {
  try {
    const auth = req.headers.authorization;
    const token = auth?.replace("Bearer ", "");
    const decodeToken = await verifyToken(token);

    const user = await db.User.findOne({
      where: {
        id: decodeToken.id,
      },
    });
    if (user.roleId !== 1) {
      throw new Error("Access denied");
    }
  } catch (error) {
    return res.status(403).json({ data: { msg: "Access denied" } });
  }
};
