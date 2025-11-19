import 'package:flutter/material.dart';

import '../../../../data/models/ProjectItem.dart';

class RecentProjectsSection extends StatelessWidget {
  final List<ProjectItem> projects;
  final VoidCallback? onSeeAll;

  const RecentProjectsSection({
    super.key,
    required this.projects,
    this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// HEADER
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recent Projects",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: onSeeAll,
                child: const Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ) ,
          const SizedBox(height: 20),

          /// LIST
          Column(
            children: List.generate(projects.length, (index) {
              final item = projects[index];
              return Column(
                children: [
                  _ProjectTile(item: item),

                  // Divider kecuali item terakhir
                  if (index != projects.length - 1)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Divider(height: 1),
                    ),
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}

/// PROJECT TILE ITEM
class _ProjectTile extends StatelessWidget {
  final ProjectItem item;

  const _ProjectTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        /// IMAGE
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            item.imageUrl,
            width: 55,
            height: 55,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 15),

        /// TEXT
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                item.subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),

        Text(
          item.date,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}