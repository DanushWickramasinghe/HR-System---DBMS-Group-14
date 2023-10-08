const jwt = require("jsonwebtoken");
const { JWT_SECRET } = require("../constants");

const config = process.env;

const verifyToken = (req, res, next) => {
  if (!req.headers["authorization"]) {
    return res.status(403).send("A token is required for authentication");
  }

  const token = req.headers["authorization"].split(" ")[1];

  if (!token) {
    return res.status(403).send("A token is required for authentication");
  }
  try {
    const decoded = jwt.verify(token, JWT_SECRET);
    req.user = decoded;
  } catch (err) {
    return res.status(401).send("Invalid Token");
  }
  return next();
};

const hasPaygrade = (paygrades) => {
  return (req, res, next) => {
    const userGrade = req.user.paygrade;
    if (paygrades.includes(userGrade)) {
      next();
    } else {
      return res.status(403).send("Incorrect user type. Not authorized.");
    }
  };
};

let requireAuth = (req, res, next) => {
  let errmsg = "Your login session has expired, please re-login to proceed!";
  let token;
  try {
    token = req.headers["token"].replace(/['"]+/g, "");
  } catch (err) {
    return res.json({
      status: "error",
      error: errmsg,
    });
  }

  //check whether jwt exists and it is verified
  if (token) {
    jwt.verify(token, JWT_SECRET, (err, decodedToken) => {
      if (err) {
        console.log(err.message);
        return res.json({
          status: "error",
          error: errmsg,
        });
      } else {
        next();
      }
    });
  } else {
    console.log("not token");
    return res.json({
      status: "error",
      error: errmsg,
    });
  }
};

let requireRouteAuth = (req, res, next) => {
  let token;
  try {
    token = req.headers["token"].replace(/['"]+/g, "");
  } catch (err) {
    return res.json({
      status: "auth-error",
      error: errmsg,
    });
  }

  //check whether jwt exists and it is verified
  if (token) {
    jwt.verify(token, process.JWT_SECRET, (err, decodedToken) => {
      if (err) {
        console.log(err.message);
        return res.json({
          status: "auth-error",
          error: errmsg,
        });
      } else {
        next();
      }
    });
  } else {
    console.log("not token");
    return res.json({
      status: "auth-error",
      error: errmsg,
    });
  }
};

const maxAge = 1 * 24 * 60 * 60;
const createToken = async (user) => {
  const accessToken = await jwt.sign(
    {
      username: user.username,
      userId: user.id,
      role: user.type,
      paygrade: user.paygrade,
    },
    process.env.JWT_SECRET,
    {
      expiresIn: maxAge,
    }
  );
  return accessToken;
};

module.exports = {
  verifyToken,
  hasPaygrade,
  requireAuth,
  requireRouteAuth,
  createToken,
};
