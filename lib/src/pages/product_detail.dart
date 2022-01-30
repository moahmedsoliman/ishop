import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/model/data.dart';
import 'package:flutter_ecommerce_app/src/model/product.dart';
import 'package:flutter_ecommerce_app/src/themes/light_color.dart';
import 'package:flutter_ecommerce_app/src/themes/theme.dart';
import 'package:flutter_ecommerce_app/src/widgets/title_text.dart';
import 'package:flutter_ecommerce_app/src/widgets/extentions.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:toggle_switch/toggle_switch.dart';

late String nameproduct;
late String describtionproduct;
late double priceproduct;
late String imageproduct;
late int idproduct;
late bool islikedproduct;
late bool isSelectedproduct;
late String categoryproduct;

class ProductDetailPage extends StatefulWidget {
  ProductDetailPage(int id, String name, double price, String image,
      String describtion, bool isliked, bool isSelected, String category) {
    nameproduct = name;
    describtionproduct = describtion;
    priceproduct = price;
    imageproduct = image;
    idproduct = id;
    islikedproduct = isliked;
    isSelectedproduct = isSelected;
    categoryproduct = category;
  }

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInToLinear));
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget _appBar() {
    return Container(
      padding: AppTheme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 15,
            padding: 12,
            isOutLine: true,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          _icon(islikedproduct ? Icons.favorite : Icons.favorite_border,
              color: islikedproduct ? LightColor.red : LightColor.lightGrey,
              size: 15,
              padding: 12,
              isOutLine: false, onPressed: () {
            setState(() {
              islikedproduct = true;
              AppData.favoriteList.add(Product(
                id: idproduct,
                image: imageproduct,
                name: nameproduct,
                describtion: describtionproduct,
                price: priceproduct,
                isliked: islikedproduct,
                category: categoryproduct,
              ));
            });
          }),
        ],
      ),
    );
  }

  Widget _icon(
    IconData icon, {
    Color color = LightColor.iconColor,
    double size = 20,
    double padding = 10,
    bool isOutLine = false,
    required Function onPressed,
  }) {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(padding),
      // margin: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        border: Border.all(
            color: LightColor.iconColor,
            style: isOutLine ? BorderStyle.solid : BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color:
            isOutLine ? Colors.transparent : Theme.of(context).backgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xfff8f8f8),
              blurRadius: 5,
              spreadRadius: 10,
              offset: Offset(5, 5)),
        ],
      ),
      child: Icon(icon, color: color, size: size),
    ).ripple(() {
      onPressed();
    }, borderRadius: BorderRadius.all(Radius.circular(13)));
  }

  Widget _productImage() {
    return AnimatedBuilder(
      builder: (context, child) {
        return AnimatedOpacity(
          duration: Duration(milliseconds: 500),
          opacity: animation.value,
          child: child,
        );
      },
      animation: animation,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[Image.asset(imageproduct)],
      ),
    );
  }

  Widget _detailWidget() {
    return DraggableScrollableSheet(
      maxChildSize: .8,
      initialChildSize: .53,
      minChildSize: .53,
      builder: (context, scrollController) {
        return Container(
          padding: AppTheme.padding.copyWith(bottom: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                        color: LightColor.iconColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          nameproduct,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              TitleText(
                                text: "\$ ",
                                fontSize: 18,
                                color: LightColor.red,
                              ),
                              TitleText(
                                text: priceproduct.toString(),
                                fontSize: 25,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.star,
                                  color: LightColor.yellowColor, size: 17),
                              Icon(Icons.star,
                                  color: LightColor.yellowColor, size: 17),
                              Icon(Icons.star,
                                  color: LightColor.yellowColor, size: 17),
                              Icon(Icons.star,
                                  color: LightColor.yellowColor, size: 17),
                              Icon(Icons.star_border, size: 17),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _availableSize(),
                SizedBox(
                  height: 20,
                ),
                _availableColor(),
                SizedBox(
                  height: 20,
                ),
                _description(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _availableSize() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleText(
          text: "Size",
          fontSize: 14,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ToggleSwitch(
              initialLabelIndex: 0,
              totalSwitches: 4,
              labels: [
                "US 6",
                "US 7",
                "US 8",
                "US 9",
              ],
              activeBgColor: [Color(0xffE65829)],
              activeFgColor: Colors.white,
              inactiveBgColor: Color(0xffE1E2E4),
              inactiveFgColor: Color(0xff20262C),
              onToggle: (index) {
                print('switch to: $index');
              },
            ),
          ],
        )
      ],
    );
  }

  List<bool> _selections = List.generate(5, (index) => false);
  Widget _availableColor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleText(
          text: "Color",
          fontSize: 14,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ToggleButtons(
              children: <Widget>[
                _colorWidget(
                  LightColor.yellowColor,
                ),
                _colorWidget(LightColor.lightBlue),
                _colorWidget(LightColor.black),
                _colorWidget(LightColor.red),
                _colorWidget(LightColor.skyBlue),
              ],
              onPressed: (int index) {
                setState(() {
                  for (int buttonIndex = 0;
                      buttonIndex < _selections.length;
                      buttonIndex++) {
                    if (buttonIndex == index) {
                      _selections[buttonIndex] = true;
                    } else {
                      _selections[buttonIndex] = false;
                    }
                  }
                });
              },
              isSelected: _selections,
              borderWidth: 0,
              borderColor: Colors.white,
            ),
          ],
        )
      ],
    );
  }

  Widget _colorWidget(Color color, {bool isSelected = false}) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: color.withAlpha(150),
      child: isSelected
          ? Icon(
              Icons.check_circle,
              color: color,
              size: 18,
            )
          : CircleAvatar(radius: 7, backgroundColor: color),
    );
  }

  Widget _description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleText(
          text: "Description",
          fontSize: 14,
        ),
        SizedBox(height: 10),
        Text(describtionproduct),
      ],
    );
  }

  FloatingActionButton _flotingButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: LightColor.orange,
      child: IconButton(
        icon: Icon(Icons.shopping_basket),
        color: Theme.of(context).floatingActionButtonTheme.backgroundColor,
        onPressed: () {
          AppData.cartList.add(Product(
            id: idproduct,
            image: imageproduct,
            name: nameproduct,
            describtion: describtionproduct,
            price: priceproduct,
            isliked: islikedproduct,
            category: categoryproduct,
          ));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _flotingButton(),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xfffbfbfb),
              Color(0xfff7f7f7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  _appBar(),
                  _productImage(),
                  //_categoryWidget(),
                ],
              ),
              _detailWidget()
            ],
          ),
        ),
      ),
    );
  }
}
