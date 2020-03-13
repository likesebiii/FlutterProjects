class Transaction{
  String id;//identify each transaction
  String title;//allow to find out why the amount was spent about
  double amount;//the amount spent
  DateTime date;//the date when the transaction was initiated/finished

  Transaction({
    this.id,
    this.title,
    this.amount,
    this.date,
  });
}