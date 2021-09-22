const response = require("../utils/response.utitlity");

exports.login = async (req, res) =>
{
  try {
    const {query} = req
    if (query.username === "alireza" && query.password === "009881951")
      return response.success(res, {
        basic: {
          authorization: 'Basic dmV0ZXJpbmFyeTo5N3M3cXdyMTRhczdmOTg='
        }
      })

    response.error(res)


  } catch (e) {
    response.exception(res, e.message)
  }
}