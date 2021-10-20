import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Screens/WireTransferList.dart';
import 'package:bytebank/Modules%20/Components/TransferenceWireItem.dart';
import 'package:flutter/widgets.dart';

class TransferenceForm extends StatefulWidget {
  const TransferenceForm({Key? key}) : super(key: key);

  @override
  _TransferenceFormState createState() => _TransferenceFormState();
}

class _TransferenceFormState extends State<TransferenceForm> {
  late final TextEditingController _controllerAccount = TextEditingController(),
      _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GeneralTextField(_controllerAccount,
                  labelText: 'Conta',
                  hint: '0000',
                  icon: Icons.account_circle_outlined),
              GeneralTextField(_controllerValue,
                  labelText: 'Valor',
                  hint: '0.00',
                  icon: Icons.monetization_on),
              ButtonOfConfirmation(_controllerAccount, _controllerValue),
            ],
          ),
        ),
      ),
    );
  }
}

class GeneralTextField extends StatelessWidget {
  final String? labelText;
  final String? hint;
  var _controllerGeneral = TextEditingController();
  IconData? icon;
  GeneralTextField(this._controllerGeneral,
      {this.labelText, this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
      child: TextField(
        controller: _controllerGeneral,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
            labelText: labelText, hintText: hint, icon: Icon(icon)),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

class ButtonOfConfirmation extends StatelessWidget {
  var _controllerAccount = TextEditingController();
  var _controllerValue = TextEditingController();

  ButtonOfConfirmation(this._controllerAccount, this._controllerValue);

  void createTransference(int account, double value, BuildContext context) {
    if (account != null &&
        value != null &&
        value != 0.0 &&
        _controllerAccount != int) {
      final createdeTransference = Transference(account: account, value: value);
      debugPrint('${createdeTransference}');
      Navigator.pop(context, createdeTransference);
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 4, left: width * 0.1, right: width * 0.1),
      child: ElevatedButton(
        onPressed: () {
          debugPrint(_controllerAccount.text);
          debugPrint(_controllerValue.text);
          final int? account = int.tryParse(_controllerAccount.text);
          final double? value = double.tryParse(_controllerValue.text);
          createTransference(account!, value!, context);
        },
        child: Center(
          child: Text(
            'Confirmar',
            style: TextStyle(fontSize: 19),
          ),
        ),
      ),
    );
  }
}
