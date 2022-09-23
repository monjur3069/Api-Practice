import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import '../models/searchmodels/SearchModel.dart';
import '../providers/product_provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late ProductProvider provider;
  bool isFirst = true;
  SearchModel? searchModel;



  @override
  void didChangeDependencies() async{
    if(isFirst) {
      provider = await Provider.of<ProductProvider>(context);
      provider.getAllData();
      isFirst = false;
    }
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductProvider>(
        builder: (context,provider,_){
          return ListView.builder(
             itemCount: provider.searchModel!.data!.products!.results!.length,
            itemBuilder: (context,index){
               return Center(
                 child: SingleChildScrollView(
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       ListTile(
                         leading: CircleAvatar(
                           child: Image.network(provider.searchModel!.data!.products!.results![index].image!.toString()),
                         ),
                         title: Text(provider.searchModel!.data!.products!.results![index].productName!.toString()),
                         subtitle: Text(provider.searchModel!.data!.products!.results![index].brand!.slug!.toString()),
                         trailing: Text(provider.searchModel!.data!.products!.results![index].id!.toString()),
                       ),
                     ],
                   ),
                 ),
               );
            },
          );
        },
      ),
    );
  }

}
