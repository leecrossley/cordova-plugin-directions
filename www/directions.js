
var exec = require("cordova/exec");

var Directions = function () {
    this.name = "Directions";
};

Directions.prototype.navigateTo = function (latitude, longitude) {
    exec(null, null, "Directions", "navigateTo", [{latitude: latitude, longitude: longitude}]);
};

module.exports = new Directions();
