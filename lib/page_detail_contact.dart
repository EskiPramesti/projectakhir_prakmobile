import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/contact_model.dart';
import 'package:untitled1/data_contact.dart';

class PageDetailContact extends StatefulWidget {
  const PageDetailContact({Key? key}) : super(key: key);
  @override
  _PageDetailContactState createState() => _PageDetailContactState();
}

class _PageDetailContactState extends State<PageDetailContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Detail"),
      ),
      body: _buildDetailContactBody(),
    );
  }

  Widget _buildDetailContactBody() {
    return Container(
      child: FutureBuilder(
        future: DataContact.instance.loadNamaContact(),
        builder: (
            BuildContext context,
            AsyncSnapshot<dynamic> snapshot,
            ) {
          if (snapshot.hasError) {
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            ContactModel contactModel =
            ContactModel.fromJson(snapshot.data);
            return _buildSuccessSection(contactModel);
          }
          return _buildLoadingSection();
        },
      ),
    );
  }

  Widget _buildErrorSection() {
    return Text("Error");
  }

  Widget _buildEmptySection() {
    return Text("Empty");
  }

  Widget _buildLoadingSection() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildSuccessSection(ContactModel data) {
    return ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: data.data?.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage:
              NetworkImage("${data.data[index].avatar}"),
            ),
            title: Text("${data.data[index].firstName}" + " " + "${data.data[index].lastName}"),
            subtitle: Text("${data.data[index].email}",
            ));
        });
  }

  Widget _buildItemCountries(String value) {
    return Text(value);
  }
}
