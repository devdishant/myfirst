var exec = require('cordova/exec');

exports.displayInput = function (arg0, success, error) {
    exec(success, error, 'CheckInputPlugin', 'displayInput', [arg0]);
};
