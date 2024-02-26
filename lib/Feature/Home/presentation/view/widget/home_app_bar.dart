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
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBGSEKSjd3QDc-fmnm6DWuybbxkh4LXzMLGdMoBasK7Q&s'))),
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
