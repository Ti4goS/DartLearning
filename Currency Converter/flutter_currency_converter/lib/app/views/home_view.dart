import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_currency_converter/app/widgets/app_colors.dart';
import 'package:flutter_currency_converter/app/views/converter_box.dart';
import 'package:flutter_currency_converter/app/widgets/constans.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CURRENCY CONVERTER',
            style: headLine,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  ConverterBox(
                      prefixCurrency: '\$',
                      title: Text(
                        'USD',
                        style: headLine,
                      ),
                      subtitle: const Text('American Dollar'),
                      urlFlag:
                          'https://cdn-icons-png.flaticon.com/512/206/206626.png'),
                  const SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: const Alignment(0, 0),
                          height: 50,
                          width: 50,
                          child: Text('=', style: containerText),
                          decoration: containerDecoration,
                        ),
                        SizedBox(
                          height: 50,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(
                                    Icons.compare_arrows_outlined,
                                    color: AppColors.buttonColor,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Switch currencies',
                                    style: buttonText,
                                  ),
                                ],
                              ),
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: const Color(0x2F4B55C5),
                                  side: const BorderSide(
                                      color: AppColors.buttonColor))),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ConverterBox(
                      prefixCurrency: 'R\$',
                      urlFlag:
                          'https://cdn-icons-png.flaticon.com/512/206/206597.png',
                      title: Text(
                        'BRL',
                        style: headLine,
                      ),
                      subtitle: const Text('Brazilian Real'))
                ],
              ),
            ),
          ),
        ));
  }
}
