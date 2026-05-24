import express from 'express';
import path from 'path';

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.static(path.join(__dirname, '../public')));

app.get('/api/status', (req, res) => {
  res.json({ status: 'TONPUMP backend online', timestamp: new Date().toISOString() });
});

app.listen(PORT, () => {
  console.log(`🚀 TONPUMP running on http://localhost:${PORT}`);
});
