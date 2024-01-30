import 'dart:developer';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../locales/localization/l10n.dart';
import '../../../common/utils/extensions/context.dart';

import '../../../domain/entities/key_valu_option/key_value_option.dart';
import '../../../domain/entities/ui_state/ui_state.dart';
import 'buttons/app_btn.dart';
import 'custom_checkbox.dart';
import 'dropdown_placeholder.dart';
import 'list_tile_error.dart';

class KeyValueSelection extends ConsumerStatefulWidget {
  final KeyValueOptionEntity? selectedItem;
  final String? title;
  final Function()? onRefresh;
  final UiState<List<KeyValueOptionEntity>> stateProvider;
  final Function(KeyValueOptionEntity? value)? onSelect;
  const KeyValueSelection(
      {super.key,
      this.selectedItem,
      this.onSelect,
      this.title,
      this.onRefresh,
      this.stateProvider = const UiState.initial()});

  @override
  ConsumerState createState() => _BranchesState();
}

class _BranchesState extends ConsumerState<KeyValueSelection> {
  final _branchesPopupValidationKey =
      GlobalKey<DropdownSearchState<KeyValueOptionEntity>>();

  KeyValueOptionEntity? selectType;
  @override
  void initState() {
    selectType = widget.selectedItem;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ref.listen(selectedBranchProvider, (previous, next) {
    //   setState(() {
    //     selectType = null;
    //   });
    // });
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.stateProvider.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () => const DropDownPlaceholder(),
          data: (data) => _items(data),
          error: (error) => ListTileErrorWidget(
            message: error.message,
            // onReCheck: () {
            //   print("dool...");
            //   print(widget.onRefresh==null);
            //  widget.onRefresh!();
            // },
            onReCheck: () =>  widget.onRefresh!(),
          ),
        ),
        // _item(
        //   widget.title ?? '',
        //   widget.stateProvider.maybeWhen(
        //     orElse: () => const SizedBox.shrink(),
        //     loading: () => const DropDownPlaceholder(),
        //     data: (data) => _items(data),
        //     error: (error) => ListTileErrorWidget(
        //       message: error.message,
        //       onReCheck: () => widget.onRefresh,
        //     ),
        //   ),
        // ),
        _selectedItem(),
      ],
    );
  }

  Widget _selectedItem() {
    if (selectType != null) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          horizontalTitleGap: 0,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  "${selectType?.value}",
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.check_circle, color: Colors.green),
            ],
          ),
        ),
      );
    }
    return const SizedBox();
  }

  Widget _item(String label, Widget child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        child,
      ],
    );
  }

  Widget _items(List<KeyValueOptionEntity> data) {
    log("***********************************************");
    log(data.toString());
    log("***********************************************");
    // final branch = ref.read(selectedBranchProvider);
    // data = data.where((element) => element.branchId == branch?.id).toList();

    return DropdownSearch<KeyValueOptionEntity>(
      key: _branchesPopupValidationKey,
      items: data,
      // asyncItems: (text) async {
      //   return ref
      //       .read(branchesViewModelProvider.notifier)
      //       .loadAreasFromRemote();
      // },
      compareFn: (i, s) => i.key == s.key,
      selectedItem: selectType,
      // items: getSystems(),
      dropdownBuilder: (context, selectedItems) {
        return Text(
          widget.title ?? '',
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey[500],
          ),
        );
      },
      popupProps: PopupPropsMultiSelection.bottomSheet(
        showSearchBox: true,
        showSelectedItems: true,
        // constraints: BoxConstraints(minWidth: double.infinity),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close))
          ],
        ),
        selectionWidget: (context, item, isSelected) => Text(
          item.value ?? '',
          style: TextStyle(
            fontSize: context.isPhone ? 14 : 22,
          ),
        ),
        validationWidgetBuilder: (context, item) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppBtn(
            text: Localization.of(context).save,
            onPressed: () {
              _branchesPopupValidationKey.currentState?.popupOnValidate();
            },
          ),
        ),
        emptyBuilder: (context, searchEntry) => Center(
          child: Text(
            "لا توجد بيانات",
          ),
        ),
        itemBuilder: (context, item, isSelected) => Container(
          decoration: const BoxDecoration(
              border: Border(
            bottom: BorderSide(color: Colors.black26, width: .4),
          )),
          child: ListTile(
            title: Text("${item.value}"),
            trailing: AppCustomCheckBox(
              color: Colors.red,
              isRadio: false,
              isChecked: isSelected,
            ),
          ),
        ),
        searchFieldProps: TextFieldProps(
          decoration: InputDecoration(
            hintText:
                Localization.of(context).searchForItem(widget.title ?? ''),
            suffixIcon: const Icon(Icons.search_outlined),
          ),
        ),
        // disabledItemFn: (SystemModel s) => selectedItems,
      ),
      onChanged: (value) {
        if (value != null) {
          setState(() {
            selectType = value;
          });
          if (widget.onSelect != null) {
            widget.onSelect!(selectType);
          }
        }
      },
      dropdownButtonProps: const DropdownButtonProps(
        icon: Icon(Icons.keyboard_arrow_down),
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          hintText: Localization.of(context).selectItem(widget.title ?? ''),
          suffixIcon: const Icon(Icons.rectangle),
          // suffix: Icon(Icons.arrow_forward_ios)
        ),
      ),
      // selectedItems: ["Brazil"],
    );
  }
}
