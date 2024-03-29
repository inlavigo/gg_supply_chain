// @license
// Copyright (c) 2019 - 2023 Dr. Gabriel Gatzsche. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'node.dart';

/// Interface used by nodes to communicate with its supply chain manager
abstract class ScmNodeInterface {
  // ...........................................................................
  // Register nodes

  /// Adds a node to scm
  void addNode(Node<dynamic> node);

  /// Removes the node from scm
  void removeNode(Node<dynamic> node);

  // ...........................................................................
  // Animate nodes

  /// Calling this method will nominate the node on each tick
  void animateNode(Node<dynamic> node);

  /// Calling this method will not nominate the node on each tick anymore
  void deanimateNode(Node<dynamic> node);

  // ...........................................................................
  // Prioritization
  /// This delegate is called when the priority of a node has changed
  void priorityHasChanged(Node<dynamic> node);

  // ...........................................................................
  // Production live cycle

  /// Nominate node for production
  void nominate(Node<dynamic> node);

  /// Inform scm about an update
  void hasNewProduct(Node<dynamic> node);
}

// #############################################################################

/// Example implementation of [ScmNodeInterface] for test purposes
class ExampleScmNodeInterface implements ScmNodeInterface {
  @override
  void addNode(Node<dynamic> node) => print('addNode: ${node.name}');
  @override
  void removeNode(Node<dynamic> node) => print('removeNode: ${node.name}');
  @override
  void animateNode(Node<dynamic> node) => print('animateNode: ${node.name}');
  @override
  void deanimateNode(Node<dynamic> node) =>
      print('deanimateNode: ${node.name}');
  @override
  void priorityHasChanged(Node<dynamic> node) =>
      print('priorityHasChanged: ${node.name}');
  @override
  void nominate(Node<dynamic> node) => print('nominate: ${node.name}');
  @override
  void hasNewProduct(Node<dynamic> node) =>
      print('hasNewProduct: ${node.name}');
}
