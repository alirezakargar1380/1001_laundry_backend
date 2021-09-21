'use strict';
module.exports = function (sequelize, DataTypes) {
  const orders = sequelize.define('orders', {
    factor_id: {
      type: DataTypes.INTEGER,
    },
    product_id: {
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

  orders.associate = (models) =>
  {
    orders.hasMany(models.products,{
      foreignKey: "id",
      sourceKey: "product_id"
    })
  }

  return orders;
};