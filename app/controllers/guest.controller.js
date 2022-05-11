const { guest } = require("../models");
const db = require("../models");
const Guest = db.guest;

exports.insertGuest = (req, res) => {
    Guest.create({
        name: req.body.name,
        fullname: req.body.fullname,
        address: req.body.address,
        telephone: req.body.telephone,
        enable: req.body.enable,
    }).then(balanceHistory => {
        if (balanceHistory) {
            res.send({ message: "Guest inserted successfully!" });
        } else {
            res.status(400).send('Error in insert new record');
        }
    })
};

exports.getAllGuest = (req, res) => {
    Guest.findAll().then(guests => {
        res.status(200).send({
            message: "Yes, Got it!",
            data: guests,
        });
        return;
    })
};