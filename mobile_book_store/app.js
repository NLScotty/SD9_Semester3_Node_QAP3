const express = require("express");
const apiRoutes = require('./routes/api-routes');
const uiRoutes = require('./routes/ui-routes');


const app = express();

const PORT =  3000;

global.DEBUG = true;

app.set('view engine', 'ejs');

app.use(express.urlencoded({extended:true}));

app.use('/', uiRoutes)

app.use('/api', apiRoutes);

app.use((request, response) => {
    if(DEBUG) console.log('404 - route not found.');
    response.status(404).write('404 - route not found.');
    response.end();
}) 

app.listen(PORT, () => {
    console.log(`Simple app running on port ${PORT}.`)
});