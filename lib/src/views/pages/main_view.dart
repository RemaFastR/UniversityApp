import 'package:flutter/material.dart';
import 'package:university_app/src/bll/models/category.dart';
import 'package:university_app/src/bll/models/ientity.dart';
import 'package:university_app/src/bll/models/profession.dart';
import 'package:university_app/src/views/utils/custom_list_view.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: statusBarHeight),
        child: Column(
          children: [
            Container(
                child: HeaderWidget(
              width: screenWidth,
              heigth: screenHeigth,
            )),
            CategoriesWidget(heigth: screenHeigth, width: screenWidth),
            ProfessionsWidget(heigth: screenHeigth, width: screenWidth)
          ],
        ),
      ),
    );
  }
}

// шапка
class HeaderWidget extends StatelessWidget {
  // ширина шапки
  double width;
  // высота шапки
  double heigth;

  HeaderWidget({this.width, this.heigth});

  @override
  Widget build(BuildContext context) {
    return Container(
      // задаем ширину всей шапки
      width: width,
      // высота шапки - половина от высоты экрана смартфона
      height: heigth / 2.5,
      // текст шапки
      child: Container(
        // паддинг текста
        padding: EdgeInsets.all(50),
        // располагаем текст сверху слева
        alignment: Alignment.topLeft,
        // сам текст
        child: Text(
          'Атлас профессий ЧГУ',
          // устанавливаем стили: цвет текста, начертание (полужирное) и размер шрифта
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.w300, fontSize: 36),
        ),
      ),
      // фон контейнера
      decoration: BoxDecoration(
          // цвет фона
          color: const Color(0xff7c94b6),
          // в качестве фона устанавливаем изображение
          image: DecorationImage(
            // устанвливаем само изображение
            image: AssetImage(
              'lib/assets/images/test_img.png',
            ),
            // заполняем контейнер полностью
            fit: BoxFit.fill,
            // устанавливаем цветовой фильтр
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
          )),
    );
  }
}

List<IEntity> categories = [
  new Category(name: 'BackEnd', image: 'lib/assets/images/test_img.png'),
  new Category(name: 'FrontEnd', image: 'lib/assets/images/test_img.png'),
  new Category(name: 'GameDev', image: 'lib/assets/images/test_img.png')
];

class CategoriesWidget extends StatelessWidget {
  double heigth;
  double width;

  CategoriesWidget({this.heigth, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: heigth / 3.7,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'категории профессий',
              // устанавливаем стили: цвет текста, начертание (полужирное) и размер шрифта
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
          ),
          CustomListView(
            itemWidth: width,
            items: categories,
          )
        ],
      ),
    );
  }
}

List<IEntity> professions = [
  new Category(name: 'Java-developer', image: 'lib/assets/images/test_img.png'),
  new Category(name: 'Game-designer', image: 'lib/assets/images/test_img.png'),
  new Category(name: 'DataScientist', image: 'lib/assets/images/test_img.png')
];

class ProfessionsWidget extends StatelessWidget {
  double heigth;
  double width;

  ProfessionsWidget({this.heigth, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: heigth / 3.7,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              'все профессии',
              // устанавливаем стили: цвет текста, начертание (полужирное) и размер шрифта
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
          ),
          CustomListView(
            itemWidth: width,
            items: professions,
          )
        ],
      ),
    );
  }
}
