module.exports = (app) => {
  app.use(
      "/api",
      require("./customer.routers"),
      require("./test.router"),
      require("./livestock.routers"),
      require("./livestock_types.routers"),
      require("./livestock_information.routers"),
      require("./products.routers"),
      require("./address.router"),
      require("./vaccines_detail.router"),
      require("./orders.routers"),
  )
}