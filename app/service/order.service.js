const {
  orders
} = require("./../models")
const log = require('../utils/log.utility')
const Exception = require("../utils/error.utility")

exports.get = async () =>
{
  try {
    return await livestock_type.findAll()

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
