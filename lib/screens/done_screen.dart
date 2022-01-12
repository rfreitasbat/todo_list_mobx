import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ignite_flutter_todo_list/home_controller.dart';

import '../shared/models/todo_item.dart';
import 'components/todo_item_list_tile.dart';

class DoneScreen extends StatefulWidget {
  HomeController controller = HomeController();
  DoneScreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 24),
        Text(
          'Concluídas',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontSize: 24),
        ),
        Flexible(
          child: Observer(
            builder: (context) => ListView.builder(
              itemCount: widget.controller.doneItemList.length,
              itemBuilder: (context, index) {
                final item = widget.controller.doneItemList[index];

                return ToDoItemListTile(
                  item: item,
                  onRemoveItem: () => widget.controller.onRemoveDoneItem(item),
                  onChangeItem: () => widget.controller.onResetItem(item),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
