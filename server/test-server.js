// Test Script for WebSocket Server
const WebSocket = require('ws');

const ws = new WebSocket('ws://localhost:8080');

ws.on('open', () => {
  console.log('Connected to server. Creating a room.');
  ws.send(JSON.stringify({ type: 'create_room' }));
});

ws.on('message', (message) => {
  console.log('Message from server:', message);
  const data = JSON.parse(message);

  if (data.type === 'room_created') {
    console.log(`Room created with ID: ${data.roomId}`);

    setTimeout(() => {
      console.log('Testing join room functionality.');
      ws.send(JSON.stringify({ type: 'join_room', roomId: data.roomId }));
    }, 1000);
  }

  if (data.type === 'player_joined') {
    console.log(`Another player joined room: ${data.roomId}`);
  }
});

ws.on('close', () => {
  console.log('Disconnected from server.');
});

ws.on('error', (error) => {
  console.error('WebSocket error:', error);
});