const response = require("../utils/response.utitlity");

exports.add_orders = async (req, res) =>
{
  try {
    var result = "helo"
    response.success(res, result)

  } catch (e) {
    response.exception(res, e.message)
  }

}