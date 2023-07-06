
// const app = require('express')()
// const http = require('http').createServer(app)
// const bodypraser=require("body-parser")
// app.use(bodypraser.json())

// app.use(bodypraser.urlencoded({ extended: false })); 
// const db=require("mongoose")
// db.connect("mongodb://127.0.0.1:27017").then(

// ()=>{
//     console.log("db connected");
// }
// )


// app.get('/', (req, res) => {
//     res.send("Node Server is running. Yay!!")
// })

// //Socket Logic
// const socketio = require('socket.io')(http)

// socketio.on("connection", (userSocket) => {
//     userSocket.on("send_message", (data) => {
//         console.log(data);
//         userSocket.broadcast.emit("receive_message", data)
//     })
// })

// http.listen(process.env.PORT)
// const server = require('http').createServer();
// const io = require('socket.io')(server);
// io.on('connection', client => {
//   client.on('event', data => { /* … */ });
//   client.on('disconnect', () => { /* … */ });
// });
// io.on("connection", (socket) => {
//     console.log(socket.id); // ojIckSD2jqNzOqIrAGzL
//   });
// server.listen(3000);
// server.js
const { log } = require('console');
const express = require('express');
const http = require('http');
const socketIO = require('socket.io');
const client=1
const app = express();
const server = http.createServer(app);
const io = socketIO(server);
io.on('connection', (socket) => {
    console.log('A user connected');
    const clientId = socket.id;

    socket.on('join', (room) => {
        console.log(` this is id ${room}`);
        socket.join(room);

        console.log(`User joined room: ${room}`);

    });

    socket.on('chat message', (data) => {

        io.to(data.room).emit('chat message', {
            'message':data.message,
            ""
        });
        console.log(`Message received: ${data.message}`);
        console.log(`this client id ${clientId} `);
    });

    socket.on('disconnect', () => {
        console.log('A user disconnected');
    });
});

const port = 3000;
server.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
// const express = require("express")
// const http = require("http")
// const app = express();


// const server = http.createServer(app)
// const io = require("socket.io")(server)
// io.on("connection", (socket) => {
//     console.log("A user connected ");
//     socket.on("join", (room) => {
//         room.join(room)
//         console.log(`this your id ${room}`)
//     })
//     socket.on("chat message",(data)=>{
//         io.to(data.room ).emit('"chat message',data.messsage)
//         console.log(`Message Recived ${data.messsage}`);
//     })
//     socket.on('disconnect',()=>{
//         console.log("user dis connected")
//     })
// })
// server.listen(3000,()=>{
//     console.log("server started");
// })