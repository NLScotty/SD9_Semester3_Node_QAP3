const express = require("express");
const app = express();

const PORT =  3000;

global.DEBUG = true;

app.set('view engine', 'ejs');

app.get("/", (request, response) => {
    if(DEBUG) console.log("root route.")
    response.send("the route for the sites root /.")
})

app.use((request, response) => {
    if(DEBUG) console.log('404 - route not found.');
    response.status(404).write('404 - route not found.');
    response.end();
}) 

app.listen(PORT, () => {
    console.log(`Simple app running on port ${PORT}.`)
});