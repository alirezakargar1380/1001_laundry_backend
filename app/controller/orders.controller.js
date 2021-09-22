const factor_service = require("../service/factors.service")
const order_service = require("../service/order.service")
const products_service = require("../service/products.service")
const response = require("../utils/response.utitlity");
const persion_date = require("../utils/persion-date.utiliy");

exports.add_orders = async (req, res) => {
  try {
    const {orders} = req.body
    let price = []
    let total_price = 0

    for (let i = 0; i < orders.length; i++) {
      if (!orders[i].product_id || !orders[i].number)
        return
      const products = await products_service.get({ id: orders[i].product_id })
      // console.log(products[0].id + " " + orders[i].product_id)
      // console.log(products[0].price * orders[i].number)
      price.push(products[0].price * orders[i].number)
    }

    for (let i = 0; i < price.length; i++) {
      total_price += price[i];
    }

    // console.log("total :"+total_price)

    let result = await factor_service.add({
      customer_id: req.body.customer_id,
      total_price: total_price,
      date: persion_date.date(),
      hour: persion_date.time(),
      year: persion_date.year(),
      month: persion_date.month(),
      day: persion_date.day(),
    })

    for (let i = 0; i < orders.length; i++) {
      orders[i].factor_id = result.id
      await order_service.add(orders[i])
    }

    response.success(res, {
      status: true
    })

  } catch (e) {
    response.exception(res, e.message)
  }

}

exports.get_orders = async (req, res) => {
  try {
    var result = await order_service.get_orders()
    response.success(res, result)

  } catch (e) {
    response.exception(res, e.message)
  }

}