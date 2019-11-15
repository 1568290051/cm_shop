const mysql = require('mysql')

const config = require('../config')

const conn = mysql.createConnection(config.db)

conn.connect()

module.exports = conn