const express = require('express')
const fs = require('fs')
const router = express.Router()

const getUserData = () => {
    const jsonData = fs.readFileSync('./user.json')
    return JSON.parse(jsonData);
}

const saveUserData = (data) => {
    const stringifyData = JSON.stringify(data, null, 2)
    fs.writeFileSync('./user.json', stringifyData)
}

const appendUserData = (data) => {
    const A = getUserData()
    A[data.id] = Object(data)
    JSON.stringify(A, null, 2)
    return A
}

const UpdateUserData = (id, data) => {
    const A = getUserData()
    A[id] = Object(data)
    JSON.stringify(A, null, 2)
    return A
}

const DeleteUserData = (id) => {
    const data_infile = getUserData()
    for (const k in data_infile) {
        if (data_infile[k].id == id) {
            delete data_infile[k]
        }
    }
    return data_infile
}

router.get('/', (req, res) => {
    const users = getUserData()
    res.send(users)
})

router.get('/:id', (req, res) => {
    const id = parseInt(req.params.id)
    const infile = getUserData()
    res.send(infile[id])
})

router.post('/', (req, res) => {
    const Ans = appendUserData(req.body)
    saveUserData(Ans)
    res.send(getUserData())
})

router.put('/:id', (req, res) => {
    const Ans = UpdateUserData(parseInt(req.params.id), req.body)
    saveUserData(Ans)
    res.send(getUserData())
})

router.delete('/:id', (req, res) => {
    const Ans = DeleteUserData(parseInt(req.params.id))
    saveUserData(Ans)
    res.send(getUserData())
})

module.exports = router