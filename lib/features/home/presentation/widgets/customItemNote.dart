import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomItemNote extends StatelessWidget {
  const CustomItemNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 24,),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xffFFCC80)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text("Flutter Tips",style: TextStyle(
              color: Colors.black,
              fontSize: 26
            ),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text("Build your career with Amr BahaaELdin",style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade600,
              ),),
            ),
            trailing: IconButton(onPressed: () {
            }, icon:Icon( CupertinoIcons.trash,color: Colors.black,size: 22,),),

          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("12/5/2023",style: TextStyle(color:Colors.grey.shade600,fontSize: 16),),
          )
        ],
      ),

    );
  }
}
