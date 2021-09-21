const factor_service = require("../service/factors.service")
const order_service = require("../service/order.service")
const response = require("../utils/response.utitlity");

exports.add_orders = async (req, res) =>
{
  try {
    let result = await factor_service.add({
      customer_id: req.body.customer_id
    })
    // console.log(req.body.orders)
    const {orders} = req.body
    let values = {}
    for (let i = 0; i < orders.length; i++)
    {
      orders[i].factor_id = result.id
      await order_service.add(orders[i])
    }
    // is factor id
    response.success(res, {
      status: true
    })

  } catch (e) {
    response.exception(res, e.message)
  }

}

exports.get_orders = async (req, res) =>
{
  try {
    var result = "helo"
    response.success(res, req.body)

  } catch (e) {
    response.exception(res, e.message)
  }

}