'use strict';
module.exports = function (sequelize, DataTypes) {
  const customer = sequelize.define('customer', {
    phone: {
      type: DataTypes.TEXT,
    },
    name: {
      type: DataTypes.TEXT,
    },
    state: {
      type: DataTypes.TEXT,
    },
    address: {
      type: DataTypes.TEXT,
    },
  }, {
    tableName: "customers",
    paranoid: true,
    timestamps: false
  });

  return customer;
};