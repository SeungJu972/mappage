import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mappage/Community/sub/Community.dart';
import 'package:mappage/Community/sub/Community2.dart';
import 'package:mappage/Community/sub/Community3.dart';
import 'package:flutter/material.dart';
import 'package:mappage/Community/sub/Community4.dart';

class Tabcommu extends StatefulWidget {
  @override
  _TabCommu createState() => _TabCommu();
}

class _TabCommu extends State<Tabcommu> {
  int buttonNum = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Community4()));
                  },
                  icon: Image.asset(
                    "repo/images/search.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Community()));
                  },
                  icon: Image.asset(
                    "repo/images/newspaper.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Community2()));
                  },
                  icon: Image.asset(
                    "repo/images/alaram.png",
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            ),
            makeButton(),
            post(
              context: "내용",
              name: "이름",
              info: "정보",
            ),
            post(
              context: "내용1",
              name: "이름1",
              info: "정보1",
            ),
            post(
              context: "내용2",
              name: "이름2",
              info: "정보2",
            )
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() => SearchPageState();
}

class SearchPageState extends State<Tabcommu> {
  int test = 0;

  void UpdateState(int id) {
    setState(() {
      test = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class post extends StatefulWidget {
  const post(
      {super.key,
      required String this.context,
      required String this.name,
      required String this.info});

  final String context;
  final String name;
  final String info;

  @override
  State<StatefulWidget> createState() => _post();
}

class _post extends State<post> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          tag(),
          SizedBox(
            height: 10,
          ),
          contents(content: widget.context),
          SizedBox(
            height: 15,
          ),
          information(name: widget.name, info: widget.info),
          Divider(
            thickness: 1,
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Community3()));
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

class contents extends StatefulWidget {
  const contents({super.key, required String this.content});

  final String content;

  @override
  State<StatefulWidget> createState() => _contents();
}

class _contents extends State<contents> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.content);
  }
}

class information extends StatefulWidget {
  const information(
      {super.key, required String this.name, required String this.info});

  final String name;
  final String info;

  @override
  State<StatefulWidget> createState() => _information();
}

class _information extends State<information> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.name,
          style: TextStyle(color: Colors.black54),
        ),
        Text(
          widget.info,
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }
}

class makeButton extends StatelessWidget {
  MaterialStatesController AllBtn = MaterialStatesController();
  MaterialStatesController ChildBtn = MaterialStatesController();
  MaterialStatesController OldBtn = MaterialStatesController();
  MaterialStatesController CapBtn = MaterialStatesController();
  MaterialStatesController SafBtn = MaterialStatesController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          statesController: AllBtn,
          child: Text("전체"),
          onPressed: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          child: Text("아이"),
          onPressed: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          child: const Text("노인"),
          onPressed: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          child: const Text("장애"),
          onPressed: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          child: const Text("보호자"),
          onPressed: () {},
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

void ChangeBtnColor(String btn) {}
