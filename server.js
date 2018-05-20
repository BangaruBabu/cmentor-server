const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const mysql = require('mysql');
 
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));


// connection configurations
const pool = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: '12345',
    port:3306,
    database: 'cmentordb'
});
 
// connect to database
pool.connect();
 
 
// default route
app.get('/', function (req, res) {
    return res.send({ error: false, message: 'Career Mentor RESTFUL API' })
});


// Retrieve all states 
app.get('/api/v1/states', function (req, res) {
    pool.query('SELECT * FROM CM_state', function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'States List' });
    });
});

// Retrieve all districts 
app.get('/api/v1/districts', function (req, res) {
    pool.query('SELECT * FROM CM_district', function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'District List' });
    });
});

 
// Retrieve districts by  state id 
app.get('/api/v1/district/:id', function (req, res) {
    let state_id = req.params.id;
    pool.query('SELECT * FROM CM_district where state_ref=?', state_id, function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'district list by state id.' });
    });
});


// Add a new todo  
app.post('/api/v1/institute', function (req, res) {
 
    let institute = req.body;
    
    if (!institute) {
        return res.status(400).send({ error:true, message: 'Please provide institute' });
    }
 
    pool.query("INSERT INTO CM_Institute_master SET ? ", institute, function (error, results, fields) {
        if (error) throw error;
        return res.send({ error: false, data: results, message: 'New institute has been created successfully.' });
    });
});

 
// port must be set to 8080 because incoming http requests are routed from port 80 to port 8080
app.listen(3000, function () {
    console.log('Node server  is running on port 3000 to expose RESTAPIS');
});