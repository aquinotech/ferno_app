import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();

  final _passController = TextEditingController();

  bool _senhaVisivel = false;
  bool _checkBoxSalvarDados = false;

  /* void _carregarEmailSenha() async {
    var _email = await DadosLocal().pegarEmailSalvo();
    var _password = await DadosLocal().pegarSenhaCpfSalva();
    var _checkBox = await DadosLocal().pegarCheckBoxSalvo();

    if (_checkBox != false) {
      _emailController.text = _email;
      _passwordController.text = _password;
      _checkBoxSalvarDados = true;
      setState(() {});
    }
  }*/
  /*void initState() {
    _carregarEmailSenha();
    _senhaVisivel = false;
    super.initState();
    timerLogin();
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(
                    "assets/images/fundo-grafite.jpg",
                  ).image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 18, left: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      runSpacing: 10,
                      children: [
                        Image.asset("assets/images/logo-interna.png", width: 150, color: Colors.white),
                      ],
                    ),
                    Wrap(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          cursorColor: Color(0xff666666),
                          decoration: const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            fillColor: Color(0xfff2f2f2),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                              borderSide: BorderSide(
                                color: Color(0xff4c4c4c),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff4c4c4c),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            contentPadding: EdgeInsets.only(left: 35),
                            labelText: 'Digite seu e-mail',
                            labelStyle: TextStyle(color: Color(0xff666666)),
                          ),
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: _passController,
                            obscureText: !_senhaVisivel,
                            cursorColor: Color(0xff666666),
                            decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              suffixIcon: Padding(
                                padding: const EdgeInsetsDirectional.only(end: 10.0),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _senhaVisivel = !_senhaVisivel;
                                    });
                                  },
                                  icon: Icon(_senhaVisivel ? Icons.visibility : Icons.visibility_off, color: _senhaVisivel ? Color(0xff2c2c2c) : Color(0xff666666)),
                                ),
                              ),
                              fillColor: Color(0xfff2f2f2),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(18),
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xff4c4c4c),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff4c4c4c),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(18),
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(left: 35),
                              labelText: 'Digite sua senha',
                              labelStyle: const TextStyle(color: Color(0xff666666)),
                            ),
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Container(
                            width: double.maxFinite,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    // ignore: sized_box_for_whitespace
                                    Container(
                                      height: 18,
                                      width: 26,
                                      child: Checkbox(
                                        side: BorderSide(
                                          color: Color(0xfff2f2f2),
                                        ),
                                        checkColor: Color(0xfff2f2f2),
                                        activeColor: Colors.transparent,
                                        value: _checkBoxSalvarDados,
                                        onChanged: (value) {
                                          setState(() {
                                            _checkBoxSalvarDados = !_checkBoxSalvarDados;
                                          });
                                        },
                                      ),
                                    ),
                                    const Text(
                                      'Salvar meus dados',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xfff2f2f2),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 52,
                          width: double.maxFinite,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xfff2f2f2),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                            ),
                            onPressed: () async {
                              _onSuccess();
                              /*setState(() {
                                
                                /*
                                DadosLocal().salvarCheckBox(_checkBoxSalvarDados);
                                DadosLocal().salvarLembrarEmail(_emailController.text);
                                DadosLocal().salvarLembrarSenha(_passwordController.text);*/
                              });*/

                              //FocusScope.of(context).unfocus();

                              //fazLogin();
                            },
                            child: const Text(
                              'ACESSAR',
                              style: TextStyle(color: Color(0xff0a1128), fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.all(12),
                              primary: Color(0xfff2f2f2),
                              textStyle: const TextStyle(fontSize: 8, color: Color(0xfff2f2f2)),
                            ),
                            onPressed: () {
                              //launch(Constantes.link_qrcode);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Conheça nosso produto. ',
                                  style: TextStyle(color: Color(0xff666666), fontSize: 16),
                                ),
                                Text(
                                  'Clique aqui!',
                                  style: TextStyle(color: Color(0xffC9C8CE), fontSize: 16, fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onSuccess() {
    Navigator.pushNamedAndRemoveUntil(context, "/HomePage", (r) => false);
  }

  void _onFail() {
    SnackBar(
      content: Text("Falha ao Entrar!"),
      backgroundColor: Colors.redAccent,
      duration: Duration(seconds: 2),
    );
  }
}
