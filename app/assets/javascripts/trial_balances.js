angular.module('trialBalance', [])
.controller('TrialBalanceController', function() {
  this.valueHour = 90;
  this.totalValue = 0;

  this.calcTotal = function calcTotal() {
    this.totalValue = this.totalHours * this.valueHour;
  };
});