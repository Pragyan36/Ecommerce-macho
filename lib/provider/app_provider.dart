


import 'package:ecommerceshop/provider/controller/Product_state.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
List<SingleChildWidget>getProviders(){
  return [
    ChangeNotifierProvider(lazy: false,
    create: (context)=> ProductState(),)

  ];


}