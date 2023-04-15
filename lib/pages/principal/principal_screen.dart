import 'package:flexflix/models/movie_model.dart';
import 'package:flexflix/pages/principal/principal_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  List<MovieModel> _filmesPrincipais = [];
  @override
  void initState() {
    _carregarFilmesPrincipais();
    super.initState();
  }

  _carregarFilmesPrincipais() async {
    var filmes = await PrincipalController().getFilmesPrincipais();
    setState(() {
      _filmesPrincipais = filmes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(
                image: AssetImage("assets/logo.png"),
                height: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(TablerIcons.search),
                color: Colors.white,
              )
            ],
          ),
          CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: List.generate(
                _filmesPrincipais.length,
                (index) => Text(_filmesPrincipais[index].title ?? 'Desc'),
              ))
        ],
      ),
    );
  }
}
