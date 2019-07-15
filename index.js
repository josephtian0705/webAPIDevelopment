const mysql = require('mysql');
const express = require('express');
const axios = require('axios');
var app = express();
var router = express.Router();
const bodyparser = require('body-parser');
const path = require('path');
const PORT = process.env.PORT || 5000;

app.use(bodyparser.json());
app.use(bodyparser.urlencoded({extended: true}));
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));


const title1 = 'Marvel';
const title2 = 'Guardian of the galaxy';
const title3 = 'Superman';
const apikey = '4d3398b0';
const apikey2 = '276640c89d6d2c00b9c8dda8d76101ea';

const querystr = `http://www.omdbapi.com/?s=${title1}&apikey=${apikey}`;
const querystr2 = `https://api.themoviedb.org/3/search/movie?api_key=${apikey2}&query=${title2}`;
const querystr3 = `https://api.themoviedb.org/3/search/movie?api_key=${apikey2}&query=${title3}`;

// database connection
const db = mysql.createConnection({
    host: 'jsk3f4rbvp8ayd7w.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
    user: '	ij66kkaqdw8cw4a8',
    password: '	l6u9kixymc2dned4',
    database: 'rxnutcwbsbrp3acq',
 })


//Check Connection 
db.connect((err) =>{
     if(!err){
         console.log('Connect Successfully');
     }else{
         console.log('Failed To Connect');
     }
 });

//listen to the port
app.listen(PORT, ()=>{
   console.log('Portal 3000 is listen');
});


 //insert data to database
 app.get('/insertdata1', (req, res) => {
    axios.post(querystr).then((response) =>{
        
       // console.log(response.data['Search']);
    
       for(var i = 0; i < response.data['Search'].length; i++){
    
          let main = {"title": response.data['Search'][i]['Title'], "year": response.data['Search'][i]['Year'], "poster": response.data['Search'][i] + ['Poster']   };
          let sql = "INSERT IGNORE INTO movie SET ?";
    
          let query = db.query(sql, main,(err, result) => {
             
             if(err){
                throw(err);
                console.log(result);
             }
          });
       }
       
       res.send('data inserted');
    
});
});

 //insert data to database
 app.get('/insertdata2', (req, res) => {
   axios.post(querystr2).then((response) =>{
      
      console.log(response.data['results']);

   
      for(var i = 0; i < response.data['results'].length; i++){
   
         let main = {"title": response.data['results'][i]['title'], "year": response.data['results'][i]['release_date'], "poster": 'https://image.tmdb.org/t/p/w600_and_h900_bestv2' + response.data['results'][i]['poster_path']   };
         let sql = "INSERT IGNORE INTO movie SET ?";
   
         let query = db.query(sql, main,(err, result) => {

            if(err){
               throw(err);
               console.log(result);
            }
         });
      }
      
      res.send('data 2 inserted');
   
});
});


 //insert data to database
 app.get('/insertdata3', (req, res) => {
   axios.post(querystr3).then((response) =>{
      
      console.log(response.data['results']);

   
      for(var i = 0; i < response.data['results'].length; i++){
   
         let main = {"title": response.data['results'][i]['title'], "year": response.data['results'][i]['release_date'], "poster": 'https://image.tmdb.org/t/p/w600_and_h900_bestv2' + response.data['results'][i]['poster_path']   };
         let sql = "INSERT IGNORE INTO movie SET ?";
   
         let query = db.query(sql, main,(err, result) => {

            if(err){
               throw(err);
               console.log(result);
            }
         });
      }
      
      res.send('data 3 inserted');
   
});
});

//  //get the movie
//  app.get('/getmovie',(req, res) =>{
//     var sql = 'SELECT * FROM movie';
//     db.query(sql, (err, rows, field) =>{

//         if(!err){
//             res.send(rows)
//         }else{
//             res.send(err)
//         }
        
//     })   
//  })

//Show the list of movie
app.get('/', (req, res, next) => {
    db.query('SELECT * FROM movie', (err, result) =>{

      if(!err){
       res.render('listMovies', {
          movies: result
         });
      } else {

         res.send(err);
      }

    });
});


//Insert Movie Function
app.post('/', (req,res,next) => {
   
   var movie = req.body.inputMovie;
   console.log(movie);

   db.query('INSERT INTO movie SET ?', [req.body], (err, result) => {

      if(!err){
         res.redirect('/');
      }else{
         res.send(err);
      }
   });
 });
 

//get detail of movie function
app.get('/edit', (req, res, next) => {

   var sql = 'SELECT * FROM movie WHERE id = ?';
   db.query(sql, req.query.id, (err, result)=>{
      
      res.render('form', {
         movies: result[0]
      });
   });

});


//edit movie function
app.post('/edit', (req, res, next) =>{

   var sql = 'UPDATE movie SET ? WHERE id = ?';

   // console.log(id)
      var params=[
         req.body,
         req.body['id']
      ];

   db.query(sql, params, (err, result) =>{

      //console.log(req.body);
      // var id = req.body['id'];
      //console.log(req.body['title']);
      if(!err){
         res.redirect('/');

      }else{
         res.send(err);
 
      }
   });
});


 //delete movie function
 app.get('/delete', (req, res, next) => {

    var sql = 'DELETE FROM movie WHERE id = ?';

    console.log(req.query.id);

    db.query(sql, req.query.id, (err, result) => {

      if(!err){
         res.redirect('/');

      } else {
         res.send(err); 

      }
    });
 });



 
 

