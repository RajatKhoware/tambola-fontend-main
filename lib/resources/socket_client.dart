import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter/material.dart';

class SocketClient {
  io.Socket? socket;
  static SocketClient? _socketInstance;
  //192.168.1.10/
  SocketClient._internal() {
    socket = io.io('http://192.168.1.10:5000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket!.connect();
    socket!.onConnect((data) => debugPrint("Connected!"));
    debugPrint(socket!.connected.toString());
  }

  static SocketClient get instance {
    _socketInstance ??= SocketClient._internal();
    return _socketInstance!;
  }
}
