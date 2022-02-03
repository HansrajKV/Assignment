const express = require('express')

const app = express()

app.use(express.json())

const UsersRouter = require('./routes/server')
app.use('/server', UsersRouter)

app.listen(8090, () => {
    console.log('Server started')
})