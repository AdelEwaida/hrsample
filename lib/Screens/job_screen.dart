import 'package:hrsample/Components/text_styles.dart';

import 'package:flutter/material.dart';

import '../Components/date_time_button_widget.dart';
import '../Components/employee_status_details_widget.dart';
import '../Components/employee_status_heading_widget.dart';
import '../Components/job_information_detail_widget.dart';
import '../Components/job_information_heading_widget.dart';
import '../Components/social_media_widget.dart';
import '../Components/text_icon_row_widgets.dart';
import '../Constants/constants.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                color: Colors.grey[300],
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      const RowIcon400Widget(
                        icon: Icons.location_city,
                        text: "141-1241-124 Ext. 132",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowIcon400Widget(
                        icon: Icons.phone_android,
                        text: "141-1241-124",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowIcon400Widget(
                        icon: Icons.email,
                        text: "1dummy@email.com",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SocialMediaWidget(),
                      const SizedBox(
                        height: 25,
                      ),
                      Divider(
                        color: Colors.grey[500],
                        height: 1,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Hire Date",
                        style: ten400TextStyle(color: darkGreenColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "May 8, 2021",
                        style: ten400TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "4y - 1m -233d",
                        style: ten400TextStyle(color: Colors.grey[600]),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Divider(
                        color: Colors.grey[500],
                        height: 1,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const RowIcon400Widget(
                        icon: Icons.tag,
                        text: "9",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowIcon400Widget(
                        icon: Icons.share_arrival_time,
                        text: "Full Time",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowIcon400Widget(
                        icon: Icons.group,
                        text: "IT",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowIcon400Widget(
                        icon: Icons.my_location,
                        text: "North America",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowIcon400Widget(
                        icon: Icons.location_on,
                        text: "London",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const RowIcon400Widget(
                        icon: Icons.access_time_sharp,
                        text: "1:52 AM Local Time",
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Divider(
                        color: Colors.grey[500],
                        height: 1,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.work,
                                  color: darkGreenColor,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Job",
                                  style: twentyFour700TextStyle(
                                      color: darkGreenColor),
                                ),
                              ],
                            ),
                            Text(
                              "Edit Fields",
                              style: fourteen500TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Divider(
                          color: Colors.grey[500],
                          height: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Hire Date",
                          style: fourteen500TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const DateTimeButtonWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        Divider(
                          color: Colors.grey[500],
                          height: 1,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.document_scanner,
                              color: darkGreenColor,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Employment Status",
                              style:
                                  fourteen500TextStyle(color: darkGreenColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const EmployeeStatusHeadingWidget(),
                        Column(
                          children: [
                            const EmployeeStatusDetailsWidget(),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Divider(
                                height: 1,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Divider(
                          color: Colors.grey[500],
                          height: 1,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.work,
                              color: darkGreenColor,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Job Information",
                              style:
                                  fourteen500TextStyle(color: darkGreenColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const JobInformationHeadingWidget(),
                        for (int i = 0; i < 5; i++)
                          Column(
                            children: [
                              const JobInformationDetailWidget(),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Divider(
                                  height: 1,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
