import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/modles/proudect.dart';
import 'package:store_app/widget/details/details_body.dart';
import 'package:store_app/widget/details/proudect_image.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppbar(context),
      body:  Detailsbody(
        proudect: product,
      ),
    );
  }

  AppBar detailsAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(right: kDefaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context); //عند الضغط على السهم يرجع للصفحة الاولى
        },
      ),
      //centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
