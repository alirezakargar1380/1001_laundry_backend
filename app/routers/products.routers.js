const express = require("express")
const Route = express.Router();
const controller = require("./../controller/products.controller")

Route
    .route("/products/get")
    .get(controller.get_products)

module.exports = Route