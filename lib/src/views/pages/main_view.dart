import 'package:flutter/material.dart';

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
            CategoriesWidget(
              heigth: screenHeigth,
            )
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

class CategoriesWidget extends StatelessWidget {
  double heigth;

  CategoriesWidget({this.heigth});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      alignment: Alignment.topLeft,
      height: heigth / 3,
      child: Column(
        children: [
          Text(
            'категории профессий',
            // устанавливаем стили: цвет текста, начертание (полужирное) и размер шрифта
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 24),
          ),
        ],
      ),
    );
  }
}
