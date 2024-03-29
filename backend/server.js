require('dotenv').config();

const express = require('express');
const cors = require('cors');
const path = require('path');
const sequelize = require('./config/Database');
const PannesRoute = require('./routes/PannesRoute');
const UserRoute = require('./routes/users');
const DashboardRoute = require('./routes/dashboard');
const PDFGeneratorRoute = require('./routes/PDFGenerator');
const SAVRoute = require('./routes/ServiceApresVente');
const AgentRoute = require('./routes/AgentAgree');
const EmailSenderRoute = require('./routes/EmailSenderRoute');
const ProductRoute = require('./routes/Product');
const WillayaRoute = require('./routes/wilayaOfAlgeria');

const port = process.env.PORT || 8080;

//express app
const app = express();

//midleware
app.use(cors());
app.use(express.json({ limit: '10mb' }));
app.use(express.urlencoded({ limit: '10mb', extended: true }));
app.use("/images", express.static("./images"))
app.use(express.static("./public/build"));


//routes
app.use('/Pannes', PannesRoute);
app.use('/User', UserRoute);
app.use('/Dashboard', DashboardRoute);
app.use('/EmailGenerator', PDFGeneratorRoute);
app.use('/SAV', SAVRoute);
app.use('/Agent', AgentRoute);
app.use('/EmailSender', EmailSenderRoute);
app.use('/Product', ProductRoute);
app.use('/Willaya', WillayaRoute);

app.get("*", (req, res) => {
  res.sendFile(path.resolve(__dirname, "public","build", "index.html"));
});

//connect to db
sequelize
  .sync()
  .then(() => {
    app.listen(port, () => {
      console.log(`Server is running on port ${port}`);
    });
  })
  .catch((error) => {
    console.error('Database connection error:', error);
  });
