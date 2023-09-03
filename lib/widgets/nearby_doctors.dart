import 'package:flutter/material.dart';
import 'package:health_app_ui/models/doctor_model.dart';
import 'package:ionicons/ionicons.dart';

class NearByDoctor extends StatelessWidget {
  const NearByDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyDoctors.length, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 18),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(nearbyDoctors[index].profile),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nearbyDoctors[index].name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(nearbyDoctors[index].position),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Icon(
                        Ionicons.star,
                        color: Colors.yellow[700],
                        size: 18,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 4, right: 6),
                        child: Text(
                          "4.0",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text("195 Reviews")
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
