
import 'package:flutter/material.dart';

import '../assets.dart';
import '../utility/string.dart';
import 'row_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, //y-axis
        crossAxisAlignment: CrossAxisAlignment.start, //x-axis
        children: [
          const RowWidget(),
          const SizedBox(height: 10),
          Image.asset(
            AppAssets.roseAsset,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Image.network(
            AppAssets.roseNetwork,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Center(child: Text('--Flexible Example--')),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            color: Colors.blueAccent,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Flexible(
                  child: Text(AppStrings.helloWorld),
                ), // it will render what space it requires
                Icon(Icons.abc),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Center(child: Text('--Expnaded Example--')),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            color: Colors.greenAccent,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Expanded(
                  child: Text(AppStrings.helloWorld),
                ), // will take over all space after rendering its sibling
                Icon(Icons.abc),
              ],
            ),
          ),
          const SizedBox(height: 10),
          //Intersecting mutliple widgets
          Stack(
            children: [
              Container(
                width: 100,
                height: 100,
                // color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  image: const DecorationImage(
                    image: AssetImage(AppAssets.roseAsset),
                    // image: NetworkImage(
                    //   AppAssets.roseNetwork,
                    // ),
                  ),
                  // borderRadius: BorderRadius.circular(16),
                ),
              ),
              Positioned(
                left: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFEDEDED),
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                child: Icon(
                  Icons.access_alarm,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.centerRight,
            child: Text('Aligment Widget'),
          ),
          const SizedBox(height: 16),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 4, //screen width
            height: MediaQuery.of(context).size.height / 4, //screen height
            color: Colors.red,
            child: const Text('MediaQuery'),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 200,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                //width: 0, //screen width
                height:
                    MediaQuery.of(context).size.height / 4, //screen height
                color: Colors.blue,
                child: const Text('double.infinity'),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(color: Colors.red),
          const SizedBox(height: 16),
          SizedBox(
            width: 200,
            child: LayoutBuilder(
              builder: (
                BuildContext ctx,
                BoxConstraints cons,
              ) {
                print('cons: $cons');
                print('Media-height: ${MediaQuery.of(context).size.height}');
                print('Media-width: ${MediaQuery.of(context).size.width}');
                return Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: Text('LayoutBuilder'),
                );
              },
            ),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
