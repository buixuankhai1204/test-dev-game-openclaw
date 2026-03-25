// WebSocket Server for Multiplayer
const WebSocket = require('ws');
const wss = new WebSocket.Server({ port: 8080 });

const rooms = {}; // Track all game rooms

wss.on('connection', (ws) => {
  console.log('A player connected.');

  ws.on('message', (message) => {
    const data = JSON.parse(message);
    switch (data.type) {
      case 'create_room':
        const roomId = generateRoomId();
        rooms[roomId] = { players: [ws] };
        ws.send(JSON.stringify({ type: 'room_created', roomId }));
        break;

      case 'join_room':
        const room = rooms[data.roomId];
        if (room && room.players.length < 2) {
          room.players.push(ws);
          room.players.forEach(player =>
            player.send(JSON.stringify({ type: 'player_joined', roomId: data.roomId }))
          );
        } else {
          ws.send(JSON.stringify({ type: 'error', message: 'Room full or not found.' }));
        }
        break;
    }
  });

  ws.on('close', () => {
    console.log('A player disconnected.');
  });
});

function generateRoomId() {
  return Math.random().toString(36).substr(2, 8);
}

console.log('WebSocket server is running on ws://localhost:8080');