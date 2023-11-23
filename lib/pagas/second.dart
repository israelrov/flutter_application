import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/modelvisit.dart';
import 'package:flutter_application_1/srvices/apiservice.dart';
import 'package:flutter_application_1/pagas/three.dart';

class class_second extends StatefulWidget {
  final String days;
  late String dest;

  class_second({Key? key, required this.days, required this.dest}) : super(key: key);

  @override
  State<class_second> createState() => _class_secondState();
}

class _class_secondState extends State<class_second> {
  late TripPlan allplan;
  bool run = false;

  send_rapid_api() async {
    allplan = await RapidApiService.getapi().fetchDataFromRapidAPI(widget.days, widget.dest);
    print(allplan.plan.toString());
    setState(() {
      run = true;
    });
  }

  @override
  void initState() {
    super.initState();
    send_rapid_api();
  }

  @override
  Widget build(BuildContext context) {
    if (run == false) {
      return const Text("סבלנות");
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip Plan'),
      ),
      body: ListView.builder(
        itemCount: allplan.plan.length,
        itemBuilder: (context, index) {
          final tripPlan = allplan.plan[index];
          return Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tripPlan.day.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                for (var activity in tripPlan.activities)
                  ListTile(
                    title: Text(activity.time),
                    subtitle: Text(activity.description),
                  ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        
        onPressed: () {
          Navigator.push(
            context,

            MaterialPageRoute(builder: (context) => class_Weather(city: widget.dest)),
          );
        },
        child:
         const Text("Want to know what the weather is like in London today? Click here"),
        
      ),
      backgroundColor: const Color.fromARGB(255, 232, 224, 199),
    );
  }
}
