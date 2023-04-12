import 'package:flutter/material.dart';

import '../login_page/login_page.dart';


class WalkThrough extends StatefulWidget {
  const WalkThrough({Key? key}) : super(key: key);

  @override
  State<WalkThrough> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
          children: [
            Container(
              width: 278,
              height: 256,
              margin: const EdgeInsets.only(top: 120,right: 28),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(image: AssetImage('lib/images/walkthrough.png'),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 65,top: 20),
              child: const Text("""Hoof boots
from the
expert team""",
                  style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            ),
            Container(
              width: 250,
              height: 36,
              margin: const EdgeInsets.only(top: 15,right: 45),
              child: const Text("""Explore all the most exciting job roles based on your interest and study major.""",
                  style: TextStyle(
                    fontFamily: 'DMSans' ,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
            ),
            Container(
              width: 60,
                height: 60,
                margin: const EdgeInsets.only(top: 40,left: 250,right: 26),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    color: Colors.white,
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (c)=> const LogInScreen()));
                  },
                )
            )
          ]
        ),
    );
  }
}
