import 'package:flutter/material.dart';
import 'package:news_app/components/explore_page/explore_search_result.dart';
import 'package:news_app/utils/thememode_color.dart';

class ExploreSearch extends StatefulWidget {
  const ExploreSearch({super.key});

  @override
  State<ExploreSearch> createState() => _ExploreSearchState();
}

class _ExploreSearchState extends State<ExploreSearch> {
  final TextEditingController _searchController = TextEditingController();
  bool _hasSearchValue = false;

  void _handleBack() {
    Navigator.pop(context);
  }

  void _handleOnChange(String value) {
    setState(() {
      _hasSearchValue = value.isNotEmpty;
    });
  }

  void _handleCancelText() {
    setState(() {
      _hasSearchValue = false;
      _searchController.text = "";
    });
  }

  void _handleOnSubmit(String value) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const ExploreSearchResult(),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  controller: _searchController,
                  onChanged: _handleOnChange,
                  onSubmitted: _handleOnSubmit,
                  autofocus: true,
                  cursorColor: textPrimary(isLightMode(context)),
                  keyboardType: TextInputType.text,
                  keyboardAppearance:
                      isLightMode(context) ? Brightness.light : Brightness.dark,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: textPrimary(isLightMode(context)),
                        fontWeight: FontWeight.normal,
                      ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    suffix: !_hasSearchValue
                        ? null
                        : GestureDetector(
                            onTap: _handleCancelText,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                width: 16,
                                height: 16,
                                color: const Color(0xFFCCCCCC),
                                child: Center(
                                  child: Icon(
                                    Icons.close,
                                    color: grey1(isLightMode(context)),
                                    size: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                    filled: true,
                    fillColor: grey1(isLightMode(context)),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    isDense: true,
                    hintText: "Search",
                    hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: textPrimary(isLightMode(context)),
                          fontWeight: FontWeight.normal,
                        ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: grey7(isLightMode(context)),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: grey7(isLightMode(context)),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: blue5(isLightMode(context)),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: _handleBack,
                child: Text(
                  "Cancel",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: textLink(isLightMode(context)),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
