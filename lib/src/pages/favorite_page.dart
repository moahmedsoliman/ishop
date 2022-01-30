import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/model/data.dart';
import 'package:flutter_ecommerce_app/src/model/product.dart';
import 'package:flutter_ecommerce_app/src/themes/light_color.dart';
import 'package:flutter_ecommerce_app/src/themes/theme.dart';
import 'package:flutter_ecommerce_app/src/widgets/title_text.dart';

class FavoritePage extends StatelessWidget {
  Widget _favoriteItems() {
    return Column(children: AppData.favoriteList.map((x) => _item(x)).toList());
  }

  late BuildContext context;

  Widget _item(Product model) {
    return Container(
      height: 80,
      child: Row(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.2,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 70,
                    width: 70,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            decoration: BoxDecoration(
                                color: LightColor.lightGrey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 9,
                  bottom: 8,
                  child: Image.asset(model.image,
                    width: 50,
                    height: 50,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListTile(
                  title: TitleText(
                    text: model.name,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      TitleText(
                        text: '\$ ',
                        color: LightColor.red,
                        fontSize: 12,
                      ),
                      TitleText(
                        text: model.price.toString(),
                        fontSize: 14,
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: LightColor.lightGrey.withAlpha(150),
                        borderRadius: BorderRadius.circular(10)),
                    child: TitleText(
                      text: 'x1',
                      fontSize: 12,
                    ),
                  )))
        ],
      ),
    );
  }

  Widget _price() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TitleText(
          text: '${AppData.favoriteList.length} Items',
          color: LightColor.grey,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Container(
      padding: AppTheme.padding,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _favoriteItems(),
            Divider(
              thickness: 1,
              height: 70,
            ),
            _price(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
