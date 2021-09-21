const {
  products
} = require("./../models")
const log = require('../utils/log.utility')
const Exception = require("../utils/error.utility")

exports.get = async (where) =>
{
  try {
    return await products.findAll({
      where: where
    })

  } catch (error) {
    log.error(error);
    throw Exception.setError(error, false);
  }
}

exports.create = async (json) =>
{
  try {
    await vaccines.create(json)
    return {
      status: true
    }

  } catch (error) {
    log.error(error);
    throw Exception.setError(error, false);
  }
}

exports.delete = async (id) =>
{
  try {
    await livestock_type.destroy(
        {
          where: {
            id: id
          }
        }
    )
    return {
      status: true
    }

  } catch (error) {
    log.error(error);
    throw Exception.setError(error, false);
  }
}