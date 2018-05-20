const express = require('express');
const app = express();
const bodyParser = require('body-parser');
 
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));
 
 
// default route
app.get('/', function (req, res) {
    return res.send({ error: true, message: 'hello' })
});
 
// port must be set to 8080 because incoming http requests are routed from port 80 to port 8080
app.listen(3000, function () {
    console.log('Node server  is running on port 3000 to exxpose RESTAPIs');
});