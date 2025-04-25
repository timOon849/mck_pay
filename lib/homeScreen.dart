import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hey George!'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Шапка с профилем
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                      'https://example.com/profile.jpg',
                    ), // Заменить на реальное изображение
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brie Larson',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Hey George!', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),

            // Информация о карте
            Card(
              color: Colors.indigo,
              margin: EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'VISA',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          '**** 3854',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Due Date 10th Oct',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '£3,499.50',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('PAY'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.indigo,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Популярные операции
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular operations',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      _buildOperationCard(Icons.lightbulb, 'Electricity Bill'),
                      _buildOperationCard(Icons.wifi, 'Internet Recharge'),
                      _buildOperationCard(Icons.tv, 'Cable Bill'),
                      _buildOperationCard(Icons.phone, 'Mobile Recharge'),
                      _buildOperationCard(Icons.receipt_long, 'OTT Bill'),
                    ],
                  ),
                ],
              ),
            ),

            // Транзакции
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  _buildTransactionRow(
                    Icons.payment,
                    'Figma',
                    '15 Dec, 5:00 PM',
                    '£149.50',
                  ),
                  _buildTransactionRow(
                    Icons.movie,
                    'Netflix',
                    '14 Dec, 4:30 PM',
                    '£46.00',
                  ),
                  _buildTransactionRow(
                    Icons.medical_services,
                    'Medical Center',
                    '14 Dec, 2:10 PM',
                    '£92.50',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOperationCard(IconData icon, String label) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(height: 8),
          Text(label, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildTransactionRow(
    IconData icon,
    String title,
    String date,
    String amount,
  ) {
    return ListTile(
      leading: Icon(icon, color: Colors.indigo),
      title: Text(title),
      subtitle: Text(date),
      trailing: Text(amount, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
