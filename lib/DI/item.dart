class ItemsService {

  String findAll() {
    return '外部でインスタンス化されたクラスの値';
  }
}

class ItemsController {
  ItemsService _itemsService;

  ItemsController(this._itemsService);

  String findAll() {
    return _itemsService.findAll();
  }
}

void main() {
  final itemsService = ItemsService();
  final itemsController = ItemsController(itemsService);
  print(itemsController.findAll());// 外部でインスタンス化されたクラスの値
}