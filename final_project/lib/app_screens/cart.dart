import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<CartItem> _cartItems = [
    CartItem(
        name: 'Item 1',
        price: 20.0,
        quantity: 1,
        image: const NetworkImage(
            "https://static.beautytocare.com/media/catalog/product/r/i/rimmel-london-lasting-finish-lipstick-170-4g.jpg")),
    CartItem(
        name: 'Item 2',
        price: 30.0,
        quantity: 2,
        image: const NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7CxWYX0KkMaDmcfd4NXJ1LQhBZMVbBnsmkgZ-PjzCgYCpdkdLheu-AgpNCkQwDAHwrdU&usqp=CAU")),
    CartItem(
        name: 'Item 3',
        price: 10.0,
        quantity: 3,
        image: const NetworkImage(
            "https://i5.walmartimages.com/seo/Lancome-La-Vie-Est-Belle-Eau-de-Parfum-Perfume-for-Women-3-4-oz_58c64918-43bb-43de-b59b-57c03197d78f_2.75529471134cc5ca27ec0dd1d0fd3a57.jpeg")),
    CartItem(
        name: 'Item 4',
        price: 10.0,
        quantity: 4,
        image: const NetworkImage(
            "https://www.chiltons.com/cdn/shop/products/Bed_ShakerClassicChry_85742.jpg?v=1661546339")),
    CartItem(
        name: 'Item 5',
        price: 50.0,
        quantity: 5,
        image: const NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7CxWYX0KkMaDmcfd4NXJ1LQhBZMVbBnsmkgZ-PjzCgYCpdkdLheu-AgpNCkQwDAHwrdU&usqp=CAU")),
    CartItem(
        name: 'Item 6',
        price: 40.0,
        quantity: 6,
        image: const NetworkImage(
            "https://www.ikea.com/eg/en/images/products/mammut-childrens-chair-in-outdoor-red__0727924_pe735940_s5.jpg?f=xs")),
    CartItem(
        name: 'Item 7',
        price: 60.0,
        quantity: 7,
        image: const NetworkImage(
            "https://static.beautytocare.com/media/catalog/product/r/i/rimmel-london-lasting-finish-lipstick-170-4g.jpg")),
  ];

  double get _totalPrice {
    return _cartItems.fold(
        0, (total, item) => total + (item.price * item.quantity));
  }

  void _updateQuantity(int index, int newQuantity) {
    setState(() {
      _cartItems[index].quantity = newQuantity;
    });
  }

  void _removeItem(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: _cartItems.length,
        itemBuilder: (context, index) {
          final item = _cartItems[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16.0),
              leading: SizedBox(
                height: 45,
                width: 45,
                child: Image(
                  image: item.image,
                ),
              ),
              title: Text(item.name),
              subtitle: Text('Price: \$${item.price}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      if (item.quantity > 1) {
                        _updateQuantity(index, item.quantity - 1);
                      }
                    },
                  ),
                  Text('${item.quantity}'),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      _updateQuantity(index, item.quantity + 1);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      _removeItem(index);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total: \$${_totalPrice.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 18)),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartItem {
  final String name;
  final NetworkImage image;
  final double price;
  int quantity;

  CartItem(
      {required this.name,
      required this.price,
      required this.quantity,
      required this.image});
}
