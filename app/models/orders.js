'use strict';
module.exports = function (sequelize, DataTypes) {
  const orders = sequelize.define('orders', {
    factor_id: {
      type: DataTypes.INTEGER,
    },
    product_id: {
      type: DataTypes.INTEGER,
    },
    customer_id: {
      type: DataTypes.INTEGER,
    },
    number: {
      type: DataTypes.INTEGER,
    },
  }, {
    tableName: "orders",
    paranoid: true,
    timestamps: false
  });

  return orders;
};