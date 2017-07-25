import React from 'react';
import { StyleSheet, Button, View } from 'react-native';
import { NativeModules } from 'react-native';

export default class App extends React.Component {
  render() {
    return (
      <View style={styles.container}>
          <Button onPress={addContact} title="Add contact"/>
      </View>
    );
  }
}

function addContact(){
    let ContactsManager = NativeModules.ContactsManager;
    ContactsManager.addContact('John', 'Doe', '(555) 424-5920');
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
