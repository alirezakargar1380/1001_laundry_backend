const response = require("../utils/response.utitlity");
const products_service = require("./../service/products.service")

exports.get_products = async (req, res) =>
{
  try {
    response.success(res, 
        await products_service.get({})
    )
  } catch (e) {
    response.exception(res, e.message)
  }

}