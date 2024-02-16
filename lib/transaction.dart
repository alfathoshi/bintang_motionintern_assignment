import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class transaction extends StatelessWidget {
  const transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Image.asset(
              'assets/images/starbucks.png',
              scale: 3,
            ),
            leading: const Icon(
              Icons.chevron_left_outlined,
              size: 36,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.ios_share,
                  size: 30,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: ([
                  const SizedBox(
                    height: 51,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            offset: const Offset(0, 9),
                            blurRadius: 27,
                            spreadRadius: 1)
                      ],
                    ),
                    height: 326,
                    width: 378,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 22,
                        ),
                        Container(
                          height: 63,
                          width: 63,
                          child: Image.asset('assets/images/success.png'),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Transaksi Berhasil',
                          style: GoogleFonts.poppins(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          'Rp. 58,000',
                          style: GoogleFonts.poppins(
                              fontSize: 27, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 33,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Invoice Number',
                              style: GoogleFonts.poppins(
                                  fontSize: 13, color: Colors.black54),
                            ),
                            Text('000085752257',
                                style: GoogleFonts.poppins(
                                    fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tanggal Transaksi',
                              style: GoogleFonts.poppins(
                                  fontSize: 13, color: Colors.black54),
                            ),
                            Text('16 Juni 2023',
                                style: GoogleFonts.poppins(
                                    fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jenis Pembayaran',
                              style: GoogleFonts.poppins(
                                  fontSize: 13, color: Colors.black54),
                            ),
                            Text('QRIS',
                                style: GoogleFonts.poppins(
                                    fontSize: 13, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  Column(
                    children: ([
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(0, 9),
                                blurRadius: 27,
                                spreadRadius: 1)
                          ],
                        ),
                        height: 188,
                        width: 378,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 31,
                            ),
                            Text(
                              'Detail Pesanan',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Jenis Pesanan',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.black54),
                                ),
                                Text('2x Frappucino - Monte',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Nama Pemesan',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.black54),
                                ),
                                Text('Asep Knalpot',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Pesanan',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13, color: Colors.black54),
                                ),
                                Text('Rp. 58,000',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 51,
                  ),
                  Container(
                    height: 55,
                    width: 381,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: const Color(0xFF00623B),
                    ),
                    child: Center(
                      child: Text(
                        'Download E - Ticket',
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 132,
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
