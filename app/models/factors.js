'use strict';
module.exports = function (sequelize, DataTypes) {
  const factors = sequelize.define('factors', {
    customer_id: {
      type: DataTypes.INTEGER,
    },
    total_price: {
      type: DataTypes.INTEGER,
    },
    date: {
      type: DataTypes.TEXT,
    },
    year: {
      type: DataTypes.TEXT,
    },
    month: {
      type: DataTypes.TEXT,
    },
    day: {
      type: DataTypes.TEXT,
    },
    hour: {
      type: DataTypes.TEXT,
    },
  }, {
    tableName: "factors",
    paranoid: true,
    timestamps: false
  });

  factors.associate = (models) =>
  {
    factors.hasOne(models.customer, {
      foreignKey: "id",
      sourceKey: "customer_id"
    })

    factors.hasMany(models.orders, {
      foreignKey: "factor_id",
      sourceKey: "id"
    })

    // models.orders.belongsTo(factors,{
    //   foreignKey: "id",
    //   sourceKey: "factor_id"
    // })

  }

  return factors;
};