import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:wireframe_mobile/common/utils/app_key.dart';
import 'package:wireframe_mobile/common/utils/app_style.dart';
import 'package:wireframe_mobile/common/widgets/action_button_styled.dart';
import 'package:wireframe_mobile/router/routes.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime now = DateTime.now();

    String formattedDate = DateFormat('dd-MM-yyyy').format(now);
    String formattedTime = DateFormat('HH:mm').format(now);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppStyle.pastelBlue, AppStyle.pastelGreen],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 0.04.sh),
              Center(
                child: Image.asset(
                  AppKey.appIcon,
                  height: 0.24.sh,
                ),
              ),
              SizedBox(height: 0.04.sh),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.1.sw),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: AppStyle.pastelWhite.withOpacity(0.9),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Selamat Datang di Aplikasi!',
                          style: AppStyle.textTitleBOLD.copyWith(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Di sini Anda dapat memindai Buku dan mendapatkan informasi tentang letak buku tersebut. Gunakan tombol di bawah untuk memulai.',
                          style: AppStyle.textBodyGrey,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.1.sh),
              ActionButtonStyled(
                btnColor: AppStyle.pastelBlue,
                onPressed: () async {
                  const ScannerRoute().push(context);
                },
                label: Text(
                  'BUKA SCANNER',
                  style: AppStyle.textSubTitleWhite,
                ),
              ),
              SizedBox(height: 0.02.sh),
              ActionButtonStyled(
                btnColor: AppStyle.pastelBlue,
                onPressed: () async {
                  const AboutRoute().push(context);
                },
                label: Text(
                  'INFORMASI APLIKASI',
                  style: AppStyle.textSubTitleWhite,
                ),
              ),
              SizedBox(height: 0.1.sh),
            ],
          ),
        ),
      ),
    );
  }
}
