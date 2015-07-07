
var exec = require("cordova/exec");

var Directions = function () {
    this.name = "Directions";
};

Directions.prototype.navigateTo = function (latitude, longitude) {
    exec(null, null, "Directions", "navigateTo", [{latitude: latitude, longitude: longitude}]);
};

Directions.prototype.navigateToAddress = function (address) {
exec(null, null, "Directions", "navigateTo", [{address: address}]);
};

module.exports = new Directions();
