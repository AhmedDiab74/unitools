import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unitools/models/item_model.dart';

class FavoriteProvider extends ChangeNotifier {
  List<ItemModel> _items = [];
  List<ItemModel> get items => _items;

  void toggleFavorite(ItemModel item) {
    final isExist = _items.contains(item);
    if (isExist) {
      _items.remove(item);
    } else {
      _items.add(item);
    }
    notifyListeners();
  }

  bool isExist(ItemModel item) {
    final isExist = _items.contains(item);
    return isExist;
  }

  void clearFavorite() {
    _items = [];
    notifyListeners();
  }

  static FavoriteProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}