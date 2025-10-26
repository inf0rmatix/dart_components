import 'package:custom_design/custom_design.dart';
import 'package:flutter/material.dart';

class ControlsDemoScreen extends StatefulWidget {
  const ControlsDemoScreen({super.key});

  @override
  State<ControlsDemoScreen> createState() => _ControlsDemoScreenState();
}

enum _FavoriteColor { red, green, blue }

class _ControlsDemoScreenState extends State<ControlsDemoScreen> {
  bool _switchValue = true;
  bool _checkboxValue = false;
  _FavoriteColor? _favoriteColor = _FavoriteColor.red;
  double _sliderValue = 40;
  RangeValues _rangeValues = const RangeValues(20, 80);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: _SectionHeader(title: 'Buttons')),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated'),
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text('Filled'),
                ),
                FilledButton.tonal(
                  onPressed: () {},
                  child: const Text('Tonal'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Outlined'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Text'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                  tooltip: 'Icon Button',
                ),
              ],
            ),
          ),
        ),

        const SliverToBoxAdapter(child: _SectionHeader(title: 'Toggles')),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('Enable feature'),
                  value: _switchValue,
                  onChanged: (v) => setState(() => _switchValue = v),
                ),
              ],
            ),
          ),
        ),

        const SliverToBoxAdapter(child: _SectionHeader(title: 'Selection')),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CheckboxListTile(
                  title: const Text('Accept terms'),
                  value: _checkboxValue,
                  onChanged: (v) => setState(() => _checkboxValue = v ?? false),
                ),
                RadioGroup<_FavoriteColor>(
                  groupValue: _favoriteColor,
                  onChanged: (v) => setState(() => _favoriteColor = v),
                  child: const Column(
                    children: [
                      RadioListTile<_FavoriteColor>(
                        title: Text('Red'),
                        value: _FavoriteColor.red,
                      ),
                      RadioListTile<_FavoriteColor>(
                        title: Text('Green'),
                        value: _FavoriteColor.green,
                      ),
                      RadioListTile<_FavoriteColor>(
                        title: Text('Blue'),
                        value: _FavoriteColor.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        const SliverToBoxAdapter(child: _SectionHeader(title: 'Sliders')),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomText.labelLarge(
                    'Value: ${_sliderValue.round()}',
                  ),
                ),
                Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 100,
                  divisions: 20,
                  label: _sliderValue.round().toString(),
                  onChanged: (v) => setState(() => _sliderValue = v),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomText.labelLarge(
                    'Range: ${_rangeValues.start.round()} - ${_rangeValues.end.round()}',
                  ),
                ),
                RangeSlider(
                  values: _rangeValues,
                  min: 0,
                  max: 100,
                  divisions: 20,
                  labels: RangeLabels(
                    _rangeValues.start.round().toString(),
                    _rangeValues.end.round().toString(),
                  ),
                  onChanged: (v) => setState(() => _rangeValues = v),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(
      top: 32.0,
      bottom: 16.0,
      left: 16.0,
      right: 16.0,
    ),
    child: CustomText.titleMedium(
      title,
    ),
  );
}
