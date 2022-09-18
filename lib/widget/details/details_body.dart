import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widget/details/proudect_image.dart';
import 'package:store_app/modles/proudect.dart';

import 'color_dot.dart';

class Detailsbody extends StatelessWidget {
  final Product proudect;

  const Detailsbody({super.key, required this.proudect});

  @override
  Widget build(BuildContext context) {
    //تستخدم الميدياكويري لمعرفة عرض وارتفاع الشاشه
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: proudectimage(
                  size: size,
                  image: proudect.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      filcolor: kTextLightColor,
                      isslected: true,
                    ),
                    ColorDot(
                      filcolor: Colors.blue,
                      isslected: false,
                    ),
                    ColorDot(
                      filcolor: Colors.red,
                      isslected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  proudect.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                'السعر: \$${proudect.price}',
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor),
              ),
              SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              proudect.description,
              style: TextStyle(color: Colors.white, fontSize: 19.0),
            )),
      ],
    );
  }
}
