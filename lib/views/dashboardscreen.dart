import 'package:flutter/material.dart';
import 'package:gsos/views/widgets/text.dart';

class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen> {
  static const List<Map<String, dynamic>> menuData = [
    {
      "Dashboard": [
        {"icon": Icon(Icons.home)},
        {"route": "/dashboardscreen"}
      ]
    },
    {
      "Vision & Mission": [
        {"icon": Icon(Icons.lightbulb)},
        {"route": "/missionvision"}
      ]
    },
    {
      "Compliance Documents": [
        {"icon": Icon(Icons.file_copy)},
        {"route": "/cmpliancedocs"}
      ]
    },
    {
      "Risk Management": [
        {"icon": Icon(Icons.shield)},
        {"route": "/riskmanagement"}
      ]
    },
    {
      "Security Awareness": [
        {"icon": Icon(Icons.check_circle)},
        {"route": "/securityawareness"}
      ]
    },
    {
      "Table-Top Simulation": [
        {"icon": Icon(Icons.table_chart)},
        {"route": "/tabletop"}
      ]
    },
    {
      "Project Management": [
        {"icon": Icon(Icons.table_view)},
        {"route": "/projectmanagement"}
      ]
    },
    {
      "Help": [
        {"icon": Icon(Icons.help)},
        {"route": "/help"}
      ]
    },
  ];

  static const List<Map<String, String>> dashboardData = [
    {"Governance": "/governance"},
    {"Risk Management": "/riskmanagement"},
    {"Compliance": "/compliance"},
    {"SEC Tools": "/sectool"},
    {"Vendor Management": "/vendormanagement"},
    {"Awareness": "/awareness"},
    {"Project Management": "/projectmanagement"},
    {"Add-Ons": "/addons"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: getBoldText(text: "G-SOS"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: menuData.length,
          itemBuilder: (context, index) {
            final menuItem = menuData[index];
            final title = menuItem.keys.first;
            final icon = menuItem.values.first[0]['icon']; // Get the icon
            // final route = menuItem.values.first[1]['route']; // Get the route
            return ListTile(
              leading: icon, // Add the icon to the ListTile
              title: Text(title),
              // onTap: () {
              //   Navigator.pushNamed(context, route);
              // },
            );
          },
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: dashboardData.length,
        itemBuilder: (context, index) {
          final dashboardItem = dashboardData[index];
          final title = dashboardItem.keys.first;
          // final route = dashboardItem.values.first;
          return Card(
            child: InkWell(
              // onTap: () {
              //   Navigator.pushNamed(context, route);
              // },
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
