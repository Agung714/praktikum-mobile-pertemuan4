// stateles
import 'package:flutter/material.dart';
import 'package:prak3/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  
}
class _LoginPageState extends State<LoginPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();
  String? jenisKelamin,hobistring;
  bool? hobi,hobi2;
  // TextEditingController username = TextEditingController();
  // TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // const SizedBox(height: 20),
        // CustomTextfield(Controller: username,label:'username' ,hint:'masukkan username' ,),
        // const SizedBox(height: 20),
        // CustomTextfield(Controller: password,label:'password' ,hint:'masukkan password' ,),
        // const SizedBox(height: 20),
        CustomTextfield(Controller: nama,label:'nama' ,hint:'masukkan nama' ,),
        const SizedBox(height: 20),
        CustomTextfield(Controller: email,label:'email' ,hint:'masukkan email' ,),
        const SizedBox(height: 20),
        CustomTextfield(Controller: umur,label:'umur' ,hint:'masukkan umur' ,),
        const SizedBox(height: 20),
        const Text("Jenis Kelamin"),
        const SizedBox(height: 20),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: Text("Pria"),
              leading: Radio(
                value: 'Pria',
                 groupValue: jenisKelamin, 
                 onChanged: (value){
                setState(() {
                  jenisKelamin = value;
                });
              }),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: Text("Wanita"),
              leading: Radio(
                value: 'Wanita',
                 groupValue: jenisKelamin, 
                 onChanged: (value){
                setState(() {
                  jenisKelamin = value;
                });
              },
              ),
            ),
            
        const SizedBox(height: 20),
        const Text("Hobi"),
// ListTile(
//               contentPadding: const EdgeInsets.only(left: 50),
//               title: Text("Belajar"),
//               leading: Checkbox(
//                 value: hobi,
//                 //  groupValue: hobi, 
//                  onChanged: (bool? value){
//                 setState(() {
//                   hobi = value ?? false;
//                 });
//               }),
//             ),
// ListTile(
//               contentPadding: const EdgeInsets.only(left: 50),
//               title: Text("Main"),
//               leading: Checkbox(
//                 value: hobi2,
//                 //  groupValue: hobi2, 
//                  onChanged: (bool? value){
//                 setState(() {
//                   if(hobi2){
//                     hobistring="main";
//                   }
//                   hobi2 = value ?? false;
//                 });
//               }),
//             ),
        const SizedBox(height: 5),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: (){
            setState(() {
              // print("username : ${username.text}\n password: ${password.text}");
              // username.clear();
              // password.clear();
            });
          }, 
          style: ElevatedButton.styleFrom(foregroundColor: Colors.blue ),
         child: const Text(
          'Submit',
          style: TextStyle(color: Colors.black),
         ),),
      ]
    ),
      ) 
    );
    
  }
}