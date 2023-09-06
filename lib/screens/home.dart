import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/models/todo.dart';
import 'package:flutter_application_1/widgets/todo_item.dart';


class Home extends StatelessWidget {
  Home({super.key});

  final todosList = ToDo.todoList();

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
        appBar: _buildAppBar(),
        body: Stack(
          children: [
            Container(
              child: Column(
                children: [
                 Expanded(
                   child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:50, bottom: 20),
                        child: Text('All ToDos', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                 
                      ),
                      for (ToDo todoo in todosList)
                      ToDoItem(todo: todoo,)

                    ],
                   ),
                 ) 
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(children:[
                Expanded(child: Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20,
                  )
                ),)
              ]),
            )
          ],
        ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: tdBGColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
            ),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/pessoa.jpg'),)
              
            )
        ],),
      );
  }
}
