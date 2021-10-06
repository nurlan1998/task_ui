import 'package:auth_learn/request_token_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final Dio _dio = Dio();
  bool isLoading = false;
  bool _enabled = true;
  String errorMessage = '';
  bool passwordVisible = false;
  bool validate = false;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if(_enabled){
      _onPressed = () {
        setState(() {
          isLoading = true;
          if(!validate){
            isLoading = false;
          }else{
            isLoading = true;
          }
          getToken(usernameController.text,passwordController.text);
          usernameController.text.isEmpty ? validate = true : validate = false;
          passwordController.text.isEmpty ? validate = true : validate = false;
        });
      };
    }
    return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'username',
                        errorText: validate ? 'Заполните все поля' : null,
                      icon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0)
                        )
                    ),
                    controller: usernameController,
                  ),
                  const SizedBox(height: 16.0,),
                  TextField(
                    obscureText: !passwordVisible,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      errorText: validate ? 'Заполните все поля' : null,
                      hintText: 'password',
                      icon: const Icon(Icons.password),
                      suffixIcon:  IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      )
                    ),
                    controller: passwordController,
                  ),
                ],
              )
            ),
                  isLoading ? const CircularProgressIndicator(): Text(errorMessage.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
                onPressed: _onPressed,
                child: const Text('LogIn')
            ),
            ElevatedButton(
                onPressed: (){},
                child: const Text('SignUp')),
          ],
       ),
          ],
    );
  }

  getToken(username,password) async{
    final response = await _dio
        .get('https://api.themoviedb.org/3/authentication/token/new?api_key=7d6c3c25fa66a886b27c1c4437b07c16'
    );
    final Map<String,dynamic> parsed = response.data;
    final request = RequestTokenModel.fromJson(parsed);
    print(request.requestToken);
    setState(() {
      logIn(request.requestToken,username,password);
    });
  }

  logIn(token,username,password) async{
    var formData = FormData.fromMap({
      'username' : username,
      'password' : password,
      'request_token' : token
    });
    try{
      final response = await _dio
          .post("https://api.themoviedb.org/3/authentication/token/validate_with_login?api_key=7d6c3c25fa66a886b27c1c4437b07c16",
          data: formData,
          options: Options(
            headers: {"Content-Type": "application/json"},
          )
      );
      setState(() {
        if(response.statusCode == 200) {
          isLoading = false;
        }
        errorMessage = '';
        _enabled = true;
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomePage())
        );
      });
      print(response.data);

    }on DioError catch(e){
      if(e.response?.statusCode == 401){
        setState(() {
          isLoading = false;
          _enabled = true;
          errorMessage = 'ввели не правильный email или password';
        });
        print(e.response?.statusCode);
      }else{
        print(e.message);
      }
    }
  }
}