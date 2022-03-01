import 'package:chat_flutter/routes/routes.dart';
import 'package:chat_flutter/services/chat_service.dart';
import 'package:chat_flutter/services/push_notification_provider.dart';
import 'package:chat_flutter/services/socket_service.dart';
import 'package:chat_flutter/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'services/auth_service.dart';
import 'services/local_storage.dart';
import 'services/users_service.dart';

PushNotificationProvider pushNotificationProvider = PushNotificationProvider();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.configurePrefs();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  pushNotificationProvider.initNotifications();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    pushNotificationProvider.onMessageListener();
  }

  @override
  Widget build(BuildContext context) {
    final darkMode = LocalStorage.prefs.getInt("darkTheme")??1;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => SocketService()),
        ChangeNotifierProvider(create: (_) => ChatService()),
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => UsersService(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeChanger(darkMode ?? 1),
        ),
      ],
      child: Builder(builder: (context) {
        var appTheme = context.watch<ThemeChanger>().currentTheme;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          initialRoute: 'loading',
          theme: appTheme,
          routes: appRoutes,
        );
      }),
    );
  }
}
