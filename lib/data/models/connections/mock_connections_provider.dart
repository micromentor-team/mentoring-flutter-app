import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import 'connections_provider.dart';

class MockConnectionsProvider extends Mock implements ConnectionsProvider {
  List participants;
  MockConnectionsProvider({required this.participants});
  @override
  Widget queryConnections({required onData, onLoading, onError}) {
    return onData(participants.toList());
  }
}
