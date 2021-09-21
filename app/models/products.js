'use strict';
module.exports = function (sequelize, DataTypes) {
  const products = sequelize.define('products', {
    name: {
      type: DataTypes.TEXT,
    },
    price: {
      type: DataTypes.INTEGER,
    },
  }, {
    tableName: "products",
    paranoid: true,
    timestamps: false
  });

  return products;
};