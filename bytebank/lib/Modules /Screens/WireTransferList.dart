import 'package:flutter/material.dart';
import '../Components/TransferenceForm.dart';
import '../Components/TransferenceWireItem.dart';

class WireTransferList extends StatefulWidget {
  const WireTransferList({Key? key}) : super(key: key);

  @override
  _WireTransferListState createState() => _WireTransferListState();
}

class _WireTransferListState extends State<WireTransferList> {
  List<Transference> _transferencelist = [];

  void setScreenList(Future future) {
    future.then((receptedtransference) {
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          if (receptedtransference != null) {
            debugPrint('$receptedtransference');
            _transferencelist.add(receptedtransference);
          }
        });
      });
    });
  }

  void _newTransference(BuildContext context) {
    final Future future =
        Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TransferenceForm();
    }));
    setState(() {
      setScreenList(future);
    });
    print('Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text('Transferências'),
        ),
        body: ListView.builder(
          itemCount: _transferencelist.length,
          itemBuilder: (contex, index) {
            final _transference = _transferencelist[index];
            return TransferenceWireItem(_transference);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _newTransference(context);
          },
          child: Icon(Icons.add),
        ));
  }
}
