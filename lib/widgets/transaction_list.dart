import 'package:flutter/material.dart';
import 'package:expense/transaction.dart';
import 'transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;
const  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (ctx, index) {
        return TransactionItem(transaction: transactions[index], deleteTx: deleteTx);
      },
      itemCount: transactions.length,
    );
  }
}

