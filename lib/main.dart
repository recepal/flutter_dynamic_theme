import 'package:dynamic_theme/app_themes.dart';
import 'package:dynamic_theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ThemeManager(),
          ),
        ],
        child: Consumer<ThemeManager>(builder: (context, theme, child) {
          return MaterialApp(
              title: 'Theme App',
              debugShowCheckedModeBanner: false,
              theme: theme.themeData,
              home: Scaffold(
                appBar: AppBar(
                  title: Text('Dinamik Tema'),
                  backgroundColor: Colors.blue,
                ),
                body: Center(
                  child: Container(
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(8.0), child: Icon(Icons.color_lens)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 130,
                              child: Text("Tema", style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              shape: StadiumBorder(),
                              visualDensity: VisualDensity.compact,
                              onPressed: () {
                                theme.setTheme(AppTheme
                                    .Dark); // Eğer başka sayfadan değiştirmek istiyorsanız. Provider.of<ThemeManager>(context, listen: false).setTheme(AppTheme.Dark); kullanabilirsiniz.
                              },
                              child: Text("Koyu"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              shape: StadiumBorder(),
                              visualDensity: VisualDensity.compact,
                              onPressed: () {
                                theme.setTheme(AppTheme.Light);
                              },
                              child: Text("Açık"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ));
        }));
  }
}
