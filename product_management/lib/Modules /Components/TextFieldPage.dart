import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/Modules%20/Shared/Themes/TextStyle.dart';

class TextFieldApp extends StatefulWidget {
  const TextFieldApp({Key? key}) : super(key: key);

  @override
  _TextFieldAppState createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  final TextEditingController _controllerProduct = TextEditingController();
  final TextEditingController _controllerCode = TextEditingController();
  final TextEditingController _controllerPrice = TextEditingController();

  void listen(String product, String code, String price) {
    print('${product} ${code} ${price}');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextField(
              controller: _controllerProduct,
              style: AppText.mainTextStyle,
              decoration: InputDecoration(
                  labelText: 'Product Name',
                  hintText: 'Car',
                  icon: Icon(Icons.production_quantity_limits_sharp)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: TextField(
              controller: _controllerCode,
              style: AppText.mainTextStyle,
              decoration: InputDecoration(
                  labelText: 'Product ID',
                  hintText: '001',
                  icon: Icon(Icons.format_list_numbered)),
              keyboardType: TextInputType.number,
            ),
          ),
          TextField(
            controller: _controllerPrice,
            style: AppText.mainTextStyle,
            decoration: InputDecoration(
              labelText: 'Product Price',
              hintText: '0.00\$',
              icon: Icon(Icons.monetization_on),
            ),
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 100, left: 50, right: 50, bottom: 10),
            child: ElevatedButton(
              onPressed: () {
                listen(
                    this._controllerProduct.toString(),
                    this._controllerCode.toString(),
                    this._controllerPrice.toString());
              },
              style: ElevatedButton.styleFrom(primary: Colors.purple[200]),
              child: Center(
                child: Text(
                  'Confirmation',
                  style: AppText.buttonTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
