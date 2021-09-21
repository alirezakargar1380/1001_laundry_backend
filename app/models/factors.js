'use strict';
module.exports = function (sequelize, DataTypes) {
  const factors = sequelize.define('factors', {
    customer_id: {
      type: DataTypes.INTEGER,
    },
    date: {
      type: DataTypes.TEXT,
    },
    year: {
      type: DataTypes.TEXT,
    },
  }, {
    tableName: "factors",
    paranoid: true,
    timestamps: false
  });

  return factors;
};