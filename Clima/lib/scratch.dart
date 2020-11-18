import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
   task1();
   String task2Result = await task2();
   task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {

  String result;

  Duration threeSeconds = Duration(seconds: 3);
  // sleep(threeSeconds);
  await Future.delayed(threeSeconds,(){
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String data) {
  print(data);
}