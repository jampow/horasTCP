angular.module('trialBalance', [])
.controller('TrialBalanceController', [$scope, function($scope) {
  this.valueHour = 90;
  this.totalValue = 0;


  $scope.calcTotal = function () {
    this.totalValue = this.totalHour * this.valueHour;
    console.log(this.totalValue);
  };
}]);