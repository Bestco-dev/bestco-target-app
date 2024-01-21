import 'dart:math';

import 'package:flutter/material.dart';

import 'load_more_errors.dart';
import 'state/pagination_state.dart';

typedef PaginationItemPressed<T> = Future<void> Function(T t);
typedef PaginationDataRequest<T> = Future<void> Function();
typedef FeedbackWidgetBuilder<T> = Widget Function(String message);
typedef PaginationItemBuilder<T> = Widget Function(T t);

class PaginationView<T> extends StatefulWidget {
  final String name;
  final EdgeInsets padding;
  final Widget loadingWidget;
  final Widget loadMoreWidget;
  final Widget emptyWidget;
  final Widget? appbar;
  final PaginationState<T> state;
  final PaginationItemBuilder<T> itemBuilder;
  final Widget? divider;

  final PaginationItemPressed<T>? onItemPressed;
  final PaginationDataRequest<T> onLoad;
  final PaginationDataRequest<T> onRefresh;
  final FeedbackWidgetBuilder<T> errorBuilder;
  final bool inNestedScrollView;

  const PaginationView(
      {Key? key,
      required this.name,
      required this.state,
      required this.errorBuilder,
      required this.emptyWidget,
      required this.loadingWidget,
      required this.loadMoreWidget,
      required this.onLoad,
      required this.onRefresh,
      required this.itemBuilder,
      this.divider,
      this.appbar,
      this.onItemPressed,
      this.padding = const EdgeInsets.only(),
      this.inNestedScrollView = true})
      : super(key: key);

  @override
  State<PaginationView> createState() => PaginationViewState<T>();
}

class PaginationViewState<T> extends State<PaginationView<T>> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onLoad();
    });
  }

  _scrollListener() {
    if (_controller.position.atEdge &&
        _controller.position.pixels != 0 &&
        !widget.state.endReached &&
        !widget.state.hasError) {
      widget.onLoad();
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(builder: (context) {
        return RefreshIndicator(
          edgeOffset: 72,
          onRefresh: () async {
            await widget.onRefresh();
            if (!widget.state.hasError) {
              _controller.animateTo(
                0,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 200),
              );
            }
          },
          child: CustomScrollView(
            key: PageStorageKey<String>(widget.name),
            controller: _controller,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              // if (widget.inNestedScrollView)
              //   SliverOverlapInjector(
              //     handle:
              //         NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              //   ),
              if (widget.appbar != null) widget.appbar!,
              SliverPadding(
                padding: widget.padding,
                sliver: _buildList(widget.state),
              ),
              SliverPadding(
                padding: widget.padding,
                sliver: const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 64,
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  Widget _buildList(PaginationState<T> state) {
    if (state.initialize) {
      return SliverFillRemaining(child: widget.loadingWidget);
    }
    if (state.isRefresh) {
      return SliverFillRemaining(child: widget.loadingWidget);
    }
    if (state.entities.isEmpty &&
        (state.errorMessage != null) &&
        !state.isRefresh) {
      return SliverFillRemaining(
          child: widget.errorBuilder(state.errorMessage!));
    }
    if (state.entities.isEmpty &&
        (state.endReached || !state.isRefresh) &&
        !state.loadingMore) {
      return SliverFillRemaining(child: widget.emptyWidget);
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final itemIndex = index ~/ 2;
          if (index.isEven) {
            if (itemIndex >= state.entities.length) {
              // Maybe use load function to load data
              if (state.loadMoreError != null &&
                  state.loadMoreError!.isNotEmpty) {
                return LoadMoreError(
                  onPressed: widget.onLoad,
                  message: state.loadMoreError!,
                );
              }
              if (state.loadingMore) {
                return widget.loadMoreWidget;
              }
              return const SizedBox();
            }
            return GestureDetector(
              onTap: () => widget.onItemPressed?.call(
                state.entities[itemIndex],
              ),
              child: widget.itemBuilder(state.entities[itemIndex]),
            );
          }
          return widget.divider ??
              const Divider(height: 1, color: Color(0xFFE0E0E0));
        },
        semanticIndexCallback: (widget, localIndex) {
          if (localIndex.isEven) {
            return localIndex ~/ 2;
          }
          // ignore: avoid_returning_null
          return null;
        },
        childCount: max(
            0,
            (state.endReached || state.errorMessage != null
                        ? state.entities.length
                        : state.entities.length + 1) *
                    2 -
                1),
      ),
    );
  }
}
