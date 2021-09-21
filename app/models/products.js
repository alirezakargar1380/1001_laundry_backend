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

  // products.associate = (models) =>
  // {
  //   products.hasMany(models.orders, {
  //     foreignKey: "product_id",
  //     sourceKey: "id"
  //   })
  // }

  return products;
};