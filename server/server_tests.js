// Comprehensive Multiplayer Tests for WebSocket Server
const WebSocket = require('ws');
const assert = require('assert');

const TEST_SERVER_URL = 'ws://localhost:8080';

let roomId = null;

function testCreateRoom() {
  return new Promise((resolve, reject) => {
    const ws = new WebSocket(TEST_SERVER_URL);

    ws.on('open', () => {
      ws.send(JSON.stringify({ type: 'create_room' }));
    });

    ws.on('message', (message) => {
      const data = JSON.parse(message);
      if (data.type === 'room_created') {
        roomId = data.roomId;
        console.log('Room created with ID:', roomId);
        ws.close();
        resolve('Room creation passed');
      } else {
        reject('Room creation failed');
      }
    });
  });
}

async function runTests() {
  console.log('Starting WebSocket server tests...');
  try {
    const result1 = await testCreateRoom();
    console.log(result1);
  } catch (error) {
    console.error('Test failed:', error);
  }
}

runTests();