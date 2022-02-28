import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_backend/models/models.dart';
import 'package:flutter_food_delivery_backend/widgets/widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.index,
  }) : super(key: key);

  final Product product;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: (index == 0)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Container(
                            height: 400,
                            width: 500,
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Add a Product',
                                  style: Theme.of(context).textTheme.headline2,
                                ),
                                const SizedBox(height: 20),
                                CustomTextFormField(
                                  maxLines: 1,
                                  title: 'Name',
                                  hasTitle: true,
                                  initialValue: '',
                                  onChanged: (value) {},
                                ),
                                CustomTextFormField(
                                  maxLines: 1,
                                  title: 'Category',
                                  hasTitle: true,
                                  initialValue: '',
                                  onChanged: (value) {},
                                ),
                                CustomTextFormField(
                                  maxLines: 1,
                                  title: 'Price',
                                  hasTitle: true,
                                  initialValue: '',
                                  onChanged: (value) {},
                                ),
                                CustomTextFormField(
                                  maxLines: 1,
                                  title: 'Image URL',
                                  hasTitle: true,
                                  initialValue: '',
                                  onChanged: (value) {},
                                ),
                                CustomTextFormField(
                                  maxLines: 1,
                                  title: 'Price',
                                  hasTitle: true,
                                  initialValue: '',
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                          ),
                        );

                        // Container(
                        //   width: 400,
                        //   height: 400,
                        //   color: Theme.of(context).colorScheme.background,
                        // );
                      },
                    );
                  },
                  iconSize: 40,
                  icon: Icon(
                    Icons.add_circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Add a Product',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    product.imageUrl,
                  ),
                ),
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  '\$${product.price}',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
    );
  }
}
