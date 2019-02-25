//Not fully there with the database just yet,,, check out null values when trying to update to-do list ???


import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Analytics extends StatefulWidget {
  @override
  AnalyticsState createState() {
    return AnalyticsState();
  }
}

class AnalyticsState extends State<Analytics> {
  String id; //used when we create an item
  final db = Firestore.instance; //reference to our database
  final _formKey = GlobalKey<FormState>(); //Input for database

  String name; //store value from form in name
  String toodoo;



  Widget buildTodoFormField() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      child: new TextFormField(
        maxLines: 1,
        autofocus: false,
        decoration: new InputDecoration(
            hintText: 'Add to list',
            icon: new Icon(
              Icons.plus_one,
              color: Colors.grey,
            )),
        validator: (value1) => value1.isEmpty ? 'This cant be left empty' : null,
        onSaved: (value1) => toodoo = value1,
      ),
    );
  }



  Card buildItem(DocumentSnapshot doc) {
    //basically a material design card, just has rounded corners and some shadow functions etc
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Module: ${doc.data['name']}',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Text(
            'To-Do for Module: \n',
            style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold ),
          ),
          Text(
            ' ${doc.data['todo']}',
            style: TextStyle(fontSize: 19),
          ),
          SizedBox(height: 12),
          buildTodoFormField(),
          Row(
            //now we add a row
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () => updateData(doc),              //first button is update data made with a simple flat button
                child:
                    Text('Update To-Do List', style: TextStyle(color: Colors.white)),
                color: Colors.green,
              ),
              SizedBox(width: 8),
              FlatButton(
                onPressed: () => deleteData(doc),              //second is delete the data
                child: Text('Delete Module'),
              ),
            ],
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {  //use this to get the name of our modules
    //Here i have just implemented a basic flutter list view layout with some added extras like padding

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    TextFormField buildTextFormField() {    //for the name of module
      //A method that we use later to return our form
      return TextFormField(
        //NB try tp keep within theme ???
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Please enter your the module',
          //hint text for our input form
          fillColor: Colors.grey[300],
          filled: true,
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'please enter some text';
          }
        },
        onSaved: (value) => name = value,
      );
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    return Scaffold(
      //NB remember to add our background and color before saving !!
      appBar: AppBar(title: Text("Your Study to-do list")),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          //Creating our form, using a form key
          Form(
            key: _formKey,                 //Input module names
            child: buildTextFormField(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: createData,
                child: Text('Add Module', style: TextStyle(color: Colors.white)),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: id != null ? readData : null,
                child: Text('Search For Module', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
              ),
            ],
          ),
          StreamBuilder<QuerySnapshot>(
              //snapshot here is used as a listener so we can get data as soon as it's updated in firebase.
              stream: db.collection('CRUD').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  // if we have data we'll display the column
                  return Column(
                      children: snapshot.data.documents
                          .map((doc) => buildItem(doc))
                          .toList()); //instead of using a method for children we'll use a map function(allows us to transform every element were looking for and return them)
                } else {
                  //if not we'll display a SizedBox(This just creates a fix sized box).
                  return SizedBox();
                }
              })
        ],
      ),
    );
  }

  void createData() async {
    if (_formKey.currentState.validate()) {
      //We create our methods from above raised buttons here. First we check if we have a form key
      _formKey.currentState
          .save(); //if its validated we save it into the name variable
      DocumentReference ref = await db
          .collection('CRUD')
          .add({'Name of Module': '$name ', 'To-Do For Module': ''});
      setState(() => id = ref
          .documentID); //set id at top that we created before to the reference of Document ID
      print("here");
      print(ref.documentID);
    }
  }

  void readData() async {
    //basically do the same for read data
    DocumentSnapshot snapshot = await db
        .collection('CRUD')
        .document(id)
        .get(); //we call database and get collection of CRUD then get document that we saved when we created item and I called get
    print(snapshot.data['name']);
  }

  void updateData(DocumentSnapshot doc) async {
    await db.collection('CRUD').document(doc.documentID).updateData({'todo': '$toodoo'});  //very similar to one above the only difference is that we call updateData, for obvious reasons
  }

  void deleteData(DocumentSnapshot doc) async {
    await db.collection('CRUD').document(doc.documentID).delete();                            //here we call delete function on document ID we have already gotten.
    setState(() => id = null);                                                                //this disables our read button
  }

}
