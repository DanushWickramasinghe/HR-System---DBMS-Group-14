require("dotenv").config();

const fs = require("fs");

var mysql = require("mysql");

// var con = mysql.createConnection({
//   port: process.env.DB_PORT,
//   host: process.env.DB_HOST,
//   user: process.env.DB_USER,
//   password: process.env.DB_PASSWORD,
//   database: process.env.DB_DATABASE,
//   multipleStatements: true
// });
// const app = express();
// app.use(cors());
// app.use(express.json());
// app.use(bodyParser.urlencoded({ extended: true }));

var config = {
  host: "localhost",
  user: "root",
  password: "bojitha123",
  database: "test1",
};

//console.log("back");
con = new mysql.createConnection(config);

con.connect(function (err) {
  if (err) throw err;
  //console.log("Connected!");
});

module.exports = con;
