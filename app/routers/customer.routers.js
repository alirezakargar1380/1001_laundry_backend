const express = require("express")
const Route = express.Router();
const controller = require("../controller/customer.controller")

Route
    .route("/add_customer")
    .post(controller.add_user)

Route
    .route("/customers/get")
    .get(controller.get_users)

Route
    .route("/update_user")
    .put(controller.update_user)

Route
    .route("/delete_user")
    .delete(controller.delete_user)

module.exports = Route