
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late ProductProvider provider;
  bool isFirst = true;
  var len = 0;


  @override
  void didChangeDependencies() async {
    if (isFirst) {
      provider = await Provider.of<ProductProvider>(context);
      provider.getAllData();
      len = provider.searchModel!.data!.products!.results!.length;
      isFirst = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ProductProvider>(
          builder: (context, provider, _) =>
          ListView.builder(
            itemCount: len,
            itemBuilder: (context, index) {
              return Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Image.network(
                              provider.searchModel!.data!.products!
                                  .results![index].image!.toString()),
                        ),
                        title: Text('${provider.searchModel!.data!.products!.results![index].productName!}',style: TextStyle(fontFamily: 'Tiro Bangla Italic'),),
                        subtitle: Text(provider.searchModel!.data!.products!
                            .results![index].brand!.slug!.toString()),
                        trailing: Text(provider.searchModel!.data!.products!
                            .results![index].id!.toString()),
                      ),
                      Html(
                        data: provider.searchModel!.data!.products!.results![index].description!,
                      )
                    ],
                  ),
                ),
              );
            },
          )
      ),
    );
  }

}
