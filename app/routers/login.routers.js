const express = require("express")
const Route = express.Router();
const controller = require("./../controller/login.controller")

Route
    .route("/auth/login")
    .get(controller.login)

module.exports = Route