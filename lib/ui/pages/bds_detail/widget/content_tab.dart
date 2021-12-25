import 'package:cati/common/app_colors.dart';
import 'package:flutter/material.dart';

class ContentTab extends StatelessWidget {
  const ContentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.container_grey,
          border: Border.all(color: AppColors.borderContainer, width: 1),
          borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          rowData(context,'Chủ đầu tư:','Vingroup'),
          const SizedBox(height: 12),
          rowData(context,'Loại hình','Chung cư, Biệt thự'),
          const SizedBox(height: 12),
          rowData(context,'Trạng thái','Mở bán'),
          const SizedBox(height: 12),
          rowData(context,'Số tòa:','20'),
          const SizedBox(height: 12),
          rowData(context,'Số tầng:','2390 căn'),
          const SizedBox(height: 12),
          rowData(context,'Số căn:','Chung cư, Căn hộ'),
          const SizedBox(height: 12),
          rowData(context,'Cập nhật:','1 ngày trước'),
          const SizedBox(height: 12),
          rowData(context,'Tổng diện tích:','2.500 m2'),
          const SizedBox(height: 12),
          rowData(context,'Năm hoàn thành:','2023'),
        ],
      ),
    );
  }

  Widget rowData(BuildContext context, String title, String content) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Expanded(
          child: Text(
            content,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 13, color: AppColors.text_black_1),
          ),
        ),
      ],
    );
  }
}
