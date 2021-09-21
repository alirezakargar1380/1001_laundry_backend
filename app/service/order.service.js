const {
  orders, factors, customer, products
} = require("./../models")
const log = require('../utils/log.utility')
const Exception = require("../utils/error.utility")

exports.get_orders = async () =>
{
  try {
    return await factors.findAll({
      include: [
        {
          model: customer,
        },
        {
          model: orders,
          include: [
            {
              model: products
            }
          ]
        },
      ]
    })

  } catch (error) {
    log.error(error);
    throw Exception.setError(error, false);
  }
}

exports.add = async (json) =>
{
  try {
    return await orders.create(json)

  } catch (error) {
    log.error(error);
    throw Exception.setError(error, false);
  }
}
