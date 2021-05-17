import 'package:flutter/material.dart';


class NewForm extends StatefulWidget {
  @override
  NewFormState createState() {
    return NewFormState();
  }
}

class NewFormState extends State<NewForm> {
 
  final _formKey = GlobalKey<FormState>();
  String _uid,_name,_age,_spo2,_bp,_temp,_resprate,_pulse;

   bool validateAndSave() {
final form = _formKey.currentState;
          if(form.validate()){
      form.save();
       
       print('$_uid,$_name,$_age,$_spo2,$_bp,$_temp,$_resprate,$_pulse');
       return true;
        }else{
  print("Form invalid");
  return false;
      }




    }
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Info Page"),),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                   decoration:  textInputDecoration.copyWith(labelText:'Bed No') ,
               validator: (value)=>value.isEmpty?"  Please Enter Bed No":null,
                 onSaved:(value)=>_uid=value ,
                ),
                SizedBox(height: 20,),
                    TextFormField(   
                    decoration:  textInputDecoration.copyWith(labelText:'Name') ,
                 validator: (value)=>value.isEmpty?"  Please Enter Name":null,
                   onSaved:(value)=>_name=value ,
                ),
                SizedBox(height: 20,),
                    TextFormField(
                       decoration:  textInputDecoration.copyWith(labelText:'Age ') ,
                 validator: (value)=>value.isEmpty?"  Please Enter Age":null,
                 onSaved:(value)=>_age=value,
                ),
                SizedBox(height: 20,),
                    TextFormField(
                       decoration:  textInputDecoration.copyWith(labelText:'SpO2') ,
                 validator: (value)=>value.isEmpty?"  Please Enter SpO2 value":null,
                 onSaved:(value)=>_spo2=value,
                ),
                SizedBox(height: 20,),
                    TextFormField(
                       decoration:  textInputDecoration.copyWith(labelText:'Blood Pressure') ,
                 validator: (value)=>value.isEmpty?"  Please Enter Blood Pressure value":null,
                 onSaved:(value)=>_bp=value,
                ),
                    SizedBox(height: 20,),
                    TextFormField(
                       decoration:  textInputDecoration.copyWith(labelText:'Temperature') ,
                 validator: (value)=>value.isEmpty?"  Please Enter Temperature value":null,
                 onSaved:(value)=>_temp=value,
                ),
                 
                 SizedBox(height: 20,),
                    TextFormField(
                       decoration:  textInputDecoration.copyWith(labelText:'Respiratory Rate') ,
                 validator: (value)=>value.isEmpty?"  Please Enter Respiratory Rate":null,
                 onSaved:(value)=>_resprate=value,
                ),
                 
                 SizedBox(height: 20,),
                    TextFormField(
                       decoration:  textInputDecoration.copyWith(labelText:'Pulse') ,
                 validator: (value)=>value.isEmpty?"  Please Enter Pulse Rate":null,
                 onSaved:(value)=>_pulse=value,
                ),
               Padding(
                  
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child:
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       minimumSize: Size(10,50),
                   
                     ),
                    onPressed:validateAndSave,
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

























dynamic textInputDecoration=InputDecoration(
                              labelStyle: TextStyle(
                                color: Colors.blue,
                              ),
                           suffixIcon: IconButton(
 icon: Icon(Icons.check),
 onPressed: (){},
 ),
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.blue),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.black),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(),
                              ),
                            );