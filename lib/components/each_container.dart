import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LeaveContainer extends StatelessWidget {
  const LeaveContainer(
      {super.key,
      required this.name,
      required this.appliedDate,
      required this.LeaveDate,
      required this.duration,
      required this.leaveBalance,
      required this.reason});
  final String name;
  final DateTime LeaveDate;
  final DateTime appliedDate;
  final int duration;
  final int leaveBalance;
  final String reason;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 370,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(top: 8, right: 10, left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                child: Icon(Icons.person),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Column(
                children: [
                  const Text('Applied Date'),
                  Text(
                    DateFormat.yMMMd().format(LeaveDate),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(20)),
            child: const Text(
              'Sick leave',
              style: TextStyle(color: Colors.green, fontSize: 10),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Leave Date:',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(DateFormat.yMMMd().format(LeaveDate),
                  style: const TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Duration:',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(duration.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Leave Balace:',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(
                leaveBalance.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Reason:',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(
                reason,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  color: Colors.green.shade400,
                  child: const Center(
                      child: Text(
                    'Approve',
                    style: TextStyle(color: Colors.black),
                  )),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red.shade300,
                  child: const Center(
                      child: Text(
                    'Reject',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Expanded(
                  child:
                      TextButton(onPressed: () {}, child: const Text('Edit')))
            ],
          ))
        ],
      ),
    );
  }
}
