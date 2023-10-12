import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabcommu extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return const Center(
      child : Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [post()],
      ),
    ),
    );
  }
}

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        tag(),
        SizedBox(
          height: 10,
        ),
        contents(),
        SizedBox(
          height: 15,
        ),
        information(),
        makeButton(),
      ],
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
        ElevatedButton.icon(
          icon: const Icon(Icons.add_task),
          label: const Text("궁금해요"),
          onPressed: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.message),
          label: const Text("답변하기"),
          onPressed: () {},
        ),
      ],
    );
  }
}
