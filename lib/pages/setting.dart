import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting')
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: const [
            Text("Information", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
            SizedBox(height: 20.0),
            Text(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos, cupiditate. Natus dignissimos delectus repellat quibusdam iusto, beatae sint repudiandae perspiciatis blanditiis eaque tempore libero nam illo nobis possimus quam eligendi itaque qui vel unde numquam. Velit, ab fugiat fuga quas placeat at dolorum! Recusandae sit, eveniet, minus quas expedita error, voluptate unde molestias dolore magni dignissimos deserunt. Sequi, fuga corporis iusto quo facilis quis nemo, saepe, accusantium soluta laboriosam rem sed? Asperiores aut autem sit quibusdam necessitatibus nihil at nemo numquam animi molestiae, reprehenderit harum ab aliquid incidunt, quisquam nesciunt? Blanditiis, velit repellendus rem impedit sequi ad temporibus voluptate pariatur!',
              textAlign: TextAlign.justify,
            )
          ],
        )
      )
    );
  }
}