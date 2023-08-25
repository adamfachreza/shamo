import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
          ),
        ),
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ),
          ),
        ],
      );
    }

    Widget formInput() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
                TextFormField(
                  style: primaryTextStyle,
                  decoration: InputDecoration(
                    hintText: 'Alex Keinnzal',
                    hintStyle: primaryTextStyle,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: subtitleColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
                TextFormField(
                  style: primaryTextStyle,
                  decoration: InputDecoration(
                    hintText: '@alexkeinn',
                    hintStyle: primaryTextStyle,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: subtitleColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email Address',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
                TextFormField(
                  style: primaryTextStyle,
                  decoration: InputDecoration(
                    hintText: 'alex.kinnzal@gmail.com',
                    hintStyle: primaryTextStyle,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: subtitleColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
            formInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
