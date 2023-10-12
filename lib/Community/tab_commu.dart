import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mappage/Community/sub/Community3.dart';

class Tabcommu extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return const Center(
      child : Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(

        children: [
          makeButton(),
          post(),
          post(),
          post()],
      ),
    ),
    );
  }
}

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child:Column(
      children: [
        SizedBox(
          height: 10,
        ),
        tag(),
        SizedBox(
          height: 10,
        ),
        contents(),
        SizedBox(
          height: 15,
        ),
        information(),
        Divider(
          thickness: 1,
          height: 1,
          color: Colors.grey,
        )
      ],
    ),
    onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Community3()));
    },
    );
  }
}

class tag extends StatelessWidget {
  const tag({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: Colors.black26,
          ),
          child: const Text(
            "동네질문",
          ),
        ),
      ],
    );
  }
}

class contents extends StatelessWidget {
  const contents({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용");
  }
}

class information extends StatelessWidget {
  const information({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "0price, 남가좌동",
          style: TextStyle(color: Colors.black54),
        ),
        Text(
          "22분 전",
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}

class makeButton extends StatelessWidget {
  const makeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          child:  Text("전체"),
          onPressed: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(

          child: Text("아이"),
          onPressed: () {},
        ),const SizedBox(
          width: 10,
        ),
        ElevatedButton(

          child: const Text("노인"),
          onPressed: () {},
        ),const SizedBox(
          width: 10,
        ),
        ElevatedButton(

          child: const Text("장애"),
          onPressed: () {},
        ),const SizedBox(
          width: 10,
        ),
        ElevatedButton(

          child: const Text("보호자"),
          onPressed: () {},
        ),const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
