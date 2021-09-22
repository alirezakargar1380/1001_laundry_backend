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

exports.add_products = async (req, res) =>
{
  try {
    response.success(res,
        await products_service.create(req.body)
    )
  } catch (e) {
    response.exception(res, e.message)
  }
}

exports.delete_products = async (req, res) =>
{
  const {id} = req.query
  try {
    response.success(res,
        await products_service.delete(id)
    )
  } catch (e) {
    response.exception(res, e.message)
  }
}
