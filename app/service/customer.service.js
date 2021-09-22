const {
  customer
} = require("./../models")
const log = require('../utils/log.utility')
const Exception = require("../utils/error.utility")
const { Op } = require("sequelize");

exports.create = async (json) =>
{
  try {

    await customer.create(json)
    return {
      status: true
    }

  } catch (error) {
    log.error(error);
    throw Exception.setError(error.message, false);
  }
}

exports.select = async ({name, phone, id}) =>
{
  try {
    return await customer.findAll({
      where: {
        id: { [Op.like]: `%${id}` },
        name: { [Op.like]: `%${name}%` },
        phone: { [Op.like]: `%${phone}%` },
      }
    })

  } catch (error) {
    log.error(error);
    throw Exception.setError(error.message, false);
  }
}

exports.delete_user = async (id) =>
{
  try {

    await users.destroy({
      where: {
        id: id
      }
    })

    return {
       status: true
    }
  } catch (error) {
    log.error(error);
    throw Exception.setError(error.message, false);
  }
}

exports.update = async (id, newUser) => {
  try {

    const User = await users.findByPk(id)

    if (!User) {
      throw Exception.setError("این کاربر موجود نمیباشد", true);
    }

    await users.update(newUser,{
      where: {
        id: id
      }
    })

    return {
      status: true
    }
  } catch (error) {
    log.error(error);
    throw Exception.setError(error.message, false);
  }
}

