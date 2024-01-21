import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final List<Widget>? actions;
  final Widget? subTitle;
  const CustomAppBar({super.key, this.title, this.actions, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.only(bottom: 20,top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: ()=>Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.28999999165534973),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                  child: const Center(
                    child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title ?? '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ...?actions,
            ],
          ),
          if(subTitle!=null)const SizedBox(height: 20),
          subTitle??const SizedBox(),
        ],
      ),
    );
  }
}
