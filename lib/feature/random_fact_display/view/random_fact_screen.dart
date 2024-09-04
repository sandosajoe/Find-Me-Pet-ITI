import 'package:find_me_iti/drawer_screen.dart';
import 'package:find_me_iti/feature/random_fact_display/data/api_service.dart';
import 'package:find_me_iti/feature/random_fact_display/manager/fact_bloc.dart';
import 'package:find_me_iti/feature/random_fact_display/manager/fact_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomFactScreen extends StatelessWidget {
  const RandomFactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FactBloc(FactApiService.api)..fetchFact(),
      child: Scaffold(
        appBar: AppBar(
          title:const  Text(
            "Enjoy Our Facts",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrange.shade100,
                  Colors.deepOrange.shade200,
                  Colors.deepOrange.shade300,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        drawer: const Drawer(child: DrawerScreen(),),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.orange.shade100,
                Colors.orange.shade200,
                Colors.deepOrange.shade100,
                Colors.deepOrange.shade300,
               
                
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: BlocBuilder<FactBloc, FactState>(
                builder: (context, state) {
                  if (state is LoadingState) {
                    return  CircularProgressIndicator(color: Colors.orange[900],);
                  } else if (state is ScucessState) {
                    return Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Do You Know?',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange.shade400,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              state.fact,
                              style:const TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.center,
                            ),
                             const SizedBox(height: 30),
                            ElevatedButton(
                              onPressed: () {
                                context.read<FactBloc>().fetchFact(); 
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange.shade400,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text('Generate New Fact',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            ),
                          
                            Image.asset(
                              'assets/images/splashScreen/8.png', 
                              height: 300, 
                              fit: BoxFit.cover, 
                            ),
                          ],
                        ),
                      ),
                    );
                  } else if (state is FailedState) {
                    return Text("Error: ${state.message}");
                  } else {
                    return const Text("Can't Fetch Fact");
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

