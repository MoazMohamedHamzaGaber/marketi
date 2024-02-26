import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

PreferredSizeWidget customAppBar(){
  return AppBar(
    title: Row(
      children: [
        SizedBox(
          width: 48,
          height: 48,
          child: Stack(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const ShapeDecoration(
                  //  color: Color(0xFF3F80FF),
                  shape: OvalBorder(
                      side: BorderSide(
                          color: Color(0xFF3F80FF),
                          width: 1
                      )),
                ),
              ),
              Center(
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/291647816_1234434427092672_409719422878525664_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeFJlARVZzhJTswyT1bNq1k61OlLWUzwqtnU6UtZTPCq2fi3qDnrwbV9xcvgFSL7olqt2PQ7dG3yMEyU9TISbTx_&_nc_ohc=pkKf8eJKV5IAX-7gsf1&_nc_ht=scontent.fcai19-3.fna&oh=00_AfAmjMo2wb9IBglKB04SC5Lrl8l-SsbR_w38rmJoAsO5-w&oe=65DFD626'))),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          'Hi Moaz !',
          style: AppStyles.styleMedium20.copyWith(color: const Color(0xFF001640)),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: (){},
        icon: const Icon(Icons.notifications_none_sharp,size: 28,color: Colors.blue,),
      ),
    ],
  );
}
