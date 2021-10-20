// ignore: file_names
import 'package:flutter/material.dart';

class TransferenceWireItem extends StatelessWidget {
  final Transference _transference;
  // ignore: use_key_in_widget_constructors
  const TransferenceWireItem(this._transference);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('${_transference.value.toString()} R\$ '),
        subtitle: Text('${_transference.account.toString()}'),
      ),
    );
  }
}

class Transference {
  late final double? value;
  late final int? account;
  Transference({this.value, this.account});

  @override
  String toString() => 'Transference(value: $value, account: $account)';
}
