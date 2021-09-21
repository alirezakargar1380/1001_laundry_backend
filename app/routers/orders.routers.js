const express = require("express")
const Route = express.Router();
const controller = require("./../controller/orders.controller")

Route
    .route("/orders/add")
    .post(controller.add_orders)

Route
    .route("/orders/get")
    .get(controller.get_orders)

module.exports = Route