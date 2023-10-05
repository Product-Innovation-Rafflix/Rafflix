import 'package:flutter/material.dart';

class SendInstructionsView extends StatelessWidget {
  const SendInstructionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        'Back',
        style: TextStyle(color: Colors.black),
      ),
      leadingWidth: 30,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ListView(
              children: [
                Text(
                  'Reset Password',
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Enter the email associated with your acounnt and we\,ll send an email with instructuions to reset your password.',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Email address',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                    height: 50,
                    child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )))),
                SizedBox(
                  height: 8,
                )
              ],
            ))
      ],
    ));
  }
}
