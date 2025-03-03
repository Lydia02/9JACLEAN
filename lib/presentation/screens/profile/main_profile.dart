import 'package:flutter/material.dart';
import 'package:untitled/presentation/screens/profile/withdrawal_screen.dart';
import 'package:untitled/presentation/screens/profile/Withdrawal_History.dart';
import 'package:untitled/presentation/screens/profile/change_password.dart';
import 'package:untitled/presentation/screens/profile/profile_account.dart';


class MainProfile extends StatefulWidget {
  const MainProfile({super.key});

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  double balance = 50046.00;
  String fisrtName = "Simeon";
  String lastName ="Azeh";


  String profilePicUrl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLhrdK20s0iXZZGFaTC6M9tLEZi01K0GrPLw&s';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:const Text(
          "Profile",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),

      ),
     body: SingleChildScrollView(

       physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(16),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // profile card
              Container(

                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xff1FC776),
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(profilePicUrl),
                    ),
                    const SizedBox(width: 16,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hello,",
                          style: TextStyle(
                            color: Colors.white,
                              fontSize: 16,

                          ),
                        ),

                        Text(
                          "$fisrtName $lastName",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // balance section
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200),

                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Wallet Balance",
                      style: TextStyle(
                        color: Color(0xff555555),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),

                    ),
                    const SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                        children: [
                        Text(
                          "₦ $balance",
                          style: const TextStyle(
                            color: Color(0xff1E8754),
                            fontSize: 24.24,

                          ),
                        ),
                        const SizedBox(width: 8,),
                        const Icon(Icons.visibility, color: Color(0xff000000),),
                  ]),

                        ElevatedButton(
                            onPressed: (){

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context)=> const WithdrawalScreen())
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff1FC776),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              )
                            ),
                            child: const Text('withdraw', style:
                            TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,

                              ),

                            )
                        ),
                      ],

                    ),
                    const SizedBox(height: 8,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder:
                              (context)=> const WithdrawalHistory())
                        );
                      },
                      child: const Row(
                          children: [
                            Text(
                                "History",
                                style: TextStyle(
                                  color: Color(0xffF54210),
                                ),

                            ),
                           Icon(Icons.chevron_right, color: Color(0xffF54210), size: 16,)

                          ],
                        ),
                    )
                  ],
                )
              ),
              const SizedBox(height: 20,),
              //Action Settings
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200)
                ),
                child:  Column(
                  children: [
                    ListTile(
                      onTap: (){

                        Navigator.push(context, MaterialPageRoute(builder:
                            (context) => ProfileAccount(
                                firstName:fisrtName,
                                lastName: lastName,

                            )
                        ));

                      },
                      leading: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xffd6efe3),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Icon(Icons.person_outlined, color: Color(0xff1FC776),),
                      ),
                      title: const Text('My Account',
                      style:
                        TextStyle(
                            color: Color(0xff181D27),
                            fontSize: 18,
                            fontWeight: FontWeight.w400

                        )
                        ,),
                      subtitle: const Text('Make changes to your account',
                      style: TextStyle(
                        fontSize: 12
                      ),),
                      trailing: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Icon(Icons.warning, color: Color(0xffEC5865) ,),
                          SizedBox(width: 8,),
                          Icon(Icons.chevron_right,)

                        ],
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: const Color(0xffd6efe3),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Icon(Icons.person_outlined, color: Color(0xff1FC776),),
                      ),
                      title: const Text('Manage Bank Accounts',
                        style:TextStyle(
                            color: Color(0xff181D27),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                        ),),
                      subtitle: const Text('Manage your saved account',
                      style: TextStyle(
                        fontSize: 12
                      ),),
                      trailing: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Icon(Icons.chevron_right,)

                        ],
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: const Color(0xffd6efe3),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Icon(Icons.lock, color: Color(0xff1FC776),),
                      ),
                      title: const Text('Face ID / Touch ID',
                        style:TextStyle(
                            color: Color(0xff181D27),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                        ),),
                      subtitle: const Text('Manage your device security',
                      style: TextStyle(
                        fontSize: 12
                      ),),
                      trailing: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [


                          Icon(Icons.toggle_off, size: 60, color: Color(0xffE8E8E8),)

                        ],
                      ),
                    ),
                    ListTile(

                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                        (context)=> const ChangePassword()));
                      },

                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: const Color(0xffd6efe3),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Icon(Icons.security_outlined, color: Color(0xff1FC776),),
                      ),
                      title: const Text('Change Password', style:TextStyle(
                        color: Color(0xff181D27),
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),),
                      subtitle: const Text('Make changes to your account',
                        style: TextStyle(
                          fontSize: 12
                        ),
                      ),
                      trailing: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.chevron_right,)

                        ],
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: const Color(0xffd6efe3),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Icon(Icons.logout_outlined, color: Color(0xff1FC776),),
                      ),
                      title: const Text('Log out',
                        style:TextStyle(
                            color: Color(0xff181D27),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                        ),),
                      subtitle: const Text('Further secure your account for safety',
                      style: TextStyle(
                        fontSize: 12
                      ),),
                      trailing: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Icon(Icons.chevron_right,)

                        ],
                      ),
                    ),


                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Text("More",
                style:TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                ) ,),
              const SizedBox(height: 12,),
              Container(
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xffd6efe3),
                          borderRadius: BorderRadius.circular(20)
                      ),

                      child: const Icon(Icons.notifications, color: Color(0xff1FC776) ,),
                    ),
                    title: const Text("Help and Support"),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xffd6efe3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(Icons.favorite_border_outlined, color: Color(0xff1FC776),),
                    ),
                    title: const Text("About App"),
                    trailing: const Icon(Icons.chevron_right),
                  )
                ],
              ),


              ),
              const SizedBox(height: 50,),
            ],

          ),
        ),
      ),
     );

  }
}
