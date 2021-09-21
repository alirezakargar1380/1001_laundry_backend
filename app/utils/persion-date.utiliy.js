const persianDate = require("persian-date");

module.exports = {
  date: () => {
    const date = new persianDate().toLeapYearMode('algorithmic');
    const year = date.year();
    const month = date.month();
    const day = date.date();
    const h = new persianDate().hour();
    const m = new persianDate().minute();
    return year + "/" + month + "/" + day
  },
  time: () => {
    const h = new persianDate().hour();
    const m = new persianDate().minute();
    return h + ":" + m
  },
  year: () => {
    const date = new persianDate().toLeapYearMode('algorithmic');
    const year = date.year();
    const month = date.month();
    const day = date.date();
    return year
  },
  month: () => {
    const date = new persianDate().toLeapYearMode('algorithmic');
    const month = date.month();
    return month
  },
  day: () => {
    const date = new persianDate().toLeapYearMode('algorithmic');
    const day = date.date();
    return day
  },
}