import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Manager App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SearchBar(
            //   elevation: WidgetStatePropertyAll(4),
            //   backgroundColor: WidgetStatePropertyAll(blueAccent),
            //   hintText: "Search for Task,Events",
            // ),
            Container(
              height: height * 0.06,
              width: width * 1,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: blueAccent,
                border: Border.all(width: 1, color: Colors.black38),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  const Text(
                    "Search for Task , Events",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Categories",
              style: TextStyle(
                fontSize: 22,
                fontFamily: "Roboto",
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: height * 0.33,
              width: width,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Container(
                    height: height * 0.1,
                    width: width * 0.2,
                    margin: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      // color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.work,
                          color: blue,
                        ),
                        const Text("Work")
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today Task",style: TextStyle(fontSize: 18),),
                  Text("See all",style: TextStyle(fontSize: 18,color: blue),),
                ],
              ),
            ),
            SizedBox(height: height * 0.01,),
            Container(
              height: height * 0.06,
              width: width * 1,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: blueAccent,
                border: Border.all(width: 1, color: Colors.black38),
              ),
              child: Row(
                children: [
                  Radio(value: 1, groupValue: 1, onChanged: (value) {

                  },),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  const Text(
                    "Finish Report",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: width * 0.3,),
                  Text("10:00 am",style: TextStyle(fontSize: 16,color: blue),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
