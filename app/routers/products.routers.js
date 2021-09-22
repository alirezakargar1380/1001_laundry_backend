const express = require("express")
const Route = express.Router();
const controller = require("./../controller/products.controller")

Route
    .route("/products/get")
    .get(controller.get_products)

Route
    .route("/products/add")
    .post(controller.add_products)

Route
    .route("/products/delete")
    .delete(controller.delete_products)

module.exports = Route