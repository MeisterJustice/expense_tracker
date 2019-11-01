import 'package:expense_tracker/models/transaction.dart';
import 'package:flutter/material.dart';
import './transaction_item.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return TransactionItem(transaction: transactions[index], deleteTx: deleteTx);
        },
        itemCount: transactions.length,
      ),
    );
  }
}

