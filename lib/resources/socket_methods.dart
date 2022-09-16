import 'package:flutter/material.dart';
import 'package:tambola_frontend/resources/socket_client.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  void addNewUsers(String userId) {
    if (userId.isNotEmpty) {
      _socketClient.emit("new-user-add", userId);
    }
  }

  void createMatch(String name) {
    if (name.isNotEmpty) {
      _socketClient.emit('createMatch', {'name': name});
      debugPrint("Match created $name");
    }
  }

  void getUsers() {
    _socketClient.on("get-users", (data) {
      final resp = data;
      if (resp.isNotEmpty) {
        debugPrint("THE FILTERED LIST OF ACTIVE USERS ${resp.first.socketId}");
      }
    });
  }

  /*void createRoomSuccessListener(BuildContext context) {
    _socketClient.on('createRoomSuccess', (room) {
      Provider.of<RoomDataProvider>(context, listen: false)
          .updateRoomData(room);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SelectRoomScreen()));
    });
  }*/

  void errorOccuredListener(BuildContext context) {
    _socketClient.on('errorOccured', (data) {
      debugPrint(data);
    });
  }

  void startGame(List drawSequence, List matchMembers) {
    _socketClient.emit("/StartGame", {drawSequence});
  }
}
