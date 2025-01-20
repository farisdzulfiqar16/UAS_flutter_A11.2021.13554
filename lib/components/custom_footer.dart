import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import untuk url_launcher

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FooterButton(
            label: 'Call',
            icon: Icons.call,
            onTap: () async {
              // Membuka dialer untuk panggilan
              final Uri phoneUri = Uri(scheme: 'tel', path: '1234567890'); // Ganti dengan nomor telepon yang sesuai
              if (await canLaunch(phoneUri.toString())) {
                await launch(phoneUri.toString());
              } else {
                print('Tidak dapat membuka panggilan');
              }
            },
          ),
          FooterButton(
            label: 'SMS',
            icon: Icons.sms,
            onTap: () async {
              // Membuka aplikasi SMS
              final Uri smsUri = Uri(scheme: 'sms', path: '081234567899'); // Ganti dengan nomor telepon yang sesuai
              if (await canLaunch(smsUri.toString())) {
                await launch(smsUri.toString());
              } else {
                print('Tidak dapat membuka SMS');
              }
            },
          ),
          FooterButton(
            label: 'Maps',
            icon: Icons.map,
            onTap: () async {
              // Membuka aplikasi Maps
              final Uri mapsUri = Uri.parse('https://maps.google.com/?q=loc:0,0'); // Ganti dengan lokasi yang sesuai
              if (await canLaunch(mapsUri.toString())) {
                await launch(mapsUri.toString());
              } else {
                print('Tidak dapat membuka Maps');
              }
            },
          ),
          FooterButton(
            label: 'Pay',
            icon: Icons.payment,
            onTap: ()async {
              // Membuka aplikasi Maps
              final Uri mapsUri = Uri(scheme: 'sms', path:'checkout_screen.dart' ); 
              if (await canLaunch(mapsUri.toString())) {
                await launch(mapsUri.toString());
              } else {
                print('Tidak dapat membuka Maps');
              }
            }
          ),
        ],
      ),
    );
  }
}

class FooterButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const FooterButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 28, color: Colors.blue[800]),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
