import 'package:fan_app/utils/colors/colors.dart';
import 'package:fan_app/utils/fonts/main_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget teacherList(List<Map<String, String>> list) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: list
          .map(
            (entry) => Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0.01.sh,
                horizontal: 0.02.sh,
              ),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: MainColors.primary,
                      borderRadius: BorderRadius.circular(
                        50.r,
                      ),
                      image: DecorationImage(
                        image: Image.network(
                          entry["image"]!,
                        ).image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ), // 아이콘과 텍스트 사이의 가로 간격 조정
                  Text(
                    entry["name"] ?? "",
                    style: MainTextStyle.bold_18,
                  ), // 텍스트를 아이콘 오른쪽으로 배치
                ],
              ),
            ),
          )
          .toList(),
    ),
  );
}
