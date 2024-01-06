
const path = require('path');
const fs = require('fs');
const validator = require('validator');

const PDFGenerator = async (req, res) => {
    const { BonDepot } = req.params;
    const {
        Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, Wilaya, CentreDepot,
        DateDepot, type, postalCode, NbrSerie, ActinoCorrective, UserID
    } = req.body;

    const pdfTemplate = require(`../documents/${BonDepot}`);
    const BonID = generateUniqueID(type, Wilaya, postalCode);
    const NbrSeries = NbrSerie ? NbrSerie : ' ';

    try {
        if (NbrSerie !== undefined && ((type === 'BL' && ActinoCorrective === false) || validator.isEmpty(NbrSerie))) {
            if (type === 'BL') {
                return res.status(400).send({ message: "Veuillez remplir les champs obligatoires (Actino Corrective, NbrSerie)" });
            } else if (type === 'BD') {
                return res.status(400).send({ message: "N° de serie est obligatoire" });
            }
        }

        // Create a PDF document
        const PDFDocument = require('pdfkit');
        const doc = new PDFDocument({ size: 'A4' });

        // Pipe the PDF document to a file
        const uniqueFilename = `${BonID}.pdf`;
        const filePath = path.join(__dirname, '..', 'files', uniqueFilename);
        const stream = doc.pipe(fs.createWriteStream(filePath));

        // Add content to the PDF
        const content = pdfTemplate({
            Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, Wilaya, CentreDepot,
            DateDepot, BonID, NbrSerie: NbrSeries,
        });
        const topImagePath = path.join(__dirname, '..', 'images', 'topimg.png');
        const bottomImagePath = path.join(__dirname, '..', 'images', 'bottomPDF.png');
        //add top image
        doc.image(topImagePath, 0, 0, { width: 595, fontWeight: '700'});

        (BonDepot == 'BonV1') ? TicketDeDepot(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, Wilaya, CentreDepot,
            DateDepot, BonID, NbrSeries) : (BonDepot == 'BonV3') ? BonDeDepot(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, Wilaya, CentreDepot,
                DateDepot, BonID, NbrSeries) : BonDeLivraison(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, Wilaya, CentreDepot,
                    DateDepot, BonID, NbrSeries);
        
        
        //add bottom image
        doc.image(bottomImagePath, 0, 740, { width: 595, fontWeight: '700'});
        
        // Finalize the PDF
        doc.end();
        stream.on('finish', () => {
            res.status(200).json({ uniqueFilename });
        });

    } catch (err) {
        console.log(err);
        res.status(500).send("Error generating PDF");
    }
};

const PDFSender = async (req, res) => {
    try {
        const filename = req.query.filename;
        if (!filename) {
            return res.status(400).send("Filename parameter missing");
        }

        const filePath = path.join(__dirname, '..', 'files', filename);

        res.status(200).sendFile(filePath);
    } catch (err) {
        console.log(err);
        res.status(500).send("Error sending PDF");
    }
};

const PDFDownloader = async (req, res) => {
    try {
        const {filename} = req.params;

        if (!filename) {
            return res.status(400).send("Filename parameter missing");
        }

        const filePath = path.join(__dirname, '..', 'files', filename);

        // Check if the file exists
        if (fs.existsSync(filePath)) {
            // If the file exists, send it to the browser for download
            res.download(filePath, filename, (err) => {
                if (err) {
                    console.log(err);
                    res.status(500).send("Error downloading the file");
                }
            });
        } else {
            res.status(404).send("File not found");
        }
    } catch (err) {
        console.log(err);
        res.status(500).send("Error processing the request");
    }
};

// generate PDF unique ID
function generateUniqueID(type, willaya, postalCode) {
    // Generate a random 4-digit number
    const randomNum = Math.floor(Math.random() * 1000).toString().padStart(4, '0');
  
    // Get the current date and time in a specific format
    const currentDate = new Date();
    const datePart = currentDate.toISOString().slice(0, 19).replace(/[-T:]/g, '');
  
    // Combine all the parts to create the unique ID
    const uniqueID = `${type}${randomNum}${datePart}${postalCode*1000}`;
  
    return uniqueID;
}
function TicketDeDepot(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, CentreDepot,
    DateDepot, BonID, NbrSeries) {        
    doc.moveDown();
    doc.fontSize(15);
    doc.text('Ticket de depot', 20, 90,{ 
        width: 595, 
        align: 'center',
        fontWeight: '700'
    }).moveDown(2);
    doc.fontSize(8);
    doc.text(`SAV ${CentreDepot}`,{
        align: 'left',
    });

    doc.moveDown();
    const DateDepotText = `Date de depot : .........................................................................................................................................................................................................................`;
    const CentreDepotText = `SAV : ........................................................................................................................................................................................................................................`;
    const EmailText = `ID client : ...................................................................................................................................................................................................................................`;
    const NomPrenomText = `Nom et prenom : .......................................................................................................................................................................................................................`;
    const TelephoneText = `N° Tel : .......................................................................................................................................................................................................................................`;
    const ReferanceProduitText = `Produit : .....................................................................................................................................................................................................................................`;
    const NbrSerieText = `N° série : ...................................................................................................................................................................................................................................`;
    const TypePanneText = `Type de panne : .........................................................................................................................................................................................................................`;
    const NomPrenom = `${Nom}${' '}${Prenom}`
    const lines1 = [DateDepot, CentreDepot, Email, NomPrenom, Telephone, ReferanceProduit, NbrSeries, TypePanne];
    const lines2 = [DateDepotText, CentreDepotText, EmailText, NomPrenomText, TelephoneText, ReferanceProduitText, NbrSerieText, TypePanneText];

    // Repeating the above block three times (as in your original code)
    doc.fontSize(8);
    for (let i = 0; i < lines2.length; i++) {
        const lineText = lines2[i];
        const lineTitle = lines1[i];

        doc.text(lineTitle, {
            width: 595,
            align: 'center',
        }).moveDown(0);

        doc.text(lineText, {
            width: 595,
            align: 'left',
        }).moveDown(0.5);
    }
  
    return doc;
}
function BonDeDepot(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, CentreDepot,
    DateDepot, BonID, NbrSeries) {        
    doc.moveDown();
    doc.fontSize(15);
    doc.text('Bon de depot', 20, 90,{ 
        width: 595, 
        align: 'center',
        fontWeight: '700'
    }).moveDown(2);
    doc.fontSize(8);
    doc.text(`SAV ${CentreDepot}`,{
        align: 'left',
    });
    doc.moveUp();
    doc.fontSize(8);
    doc.text(`Ref: ${BonID}`,{
        align: 'right',
    }).moveDown(1);

    doc.moveDown();
    const DateDepotText = `Date de depot : .........................................................................................................................................................................................................................`;
    const CentreDepotText = `SAV : ........................................................................................................................................................................................................................................`;
    const EmailText = `ID client : ...................................................................................................................................................................................................................................`;
    const NomPrenomText = `Nom et prenom : .......................................................................................................................................................................................................................`;
    const TelephoneText = `N° Tel : .......................................................................................................................................................................................................................................`;
    const ReferanceProduitText = `Produit : .....................................................................................................................................................................................................................................`;
    const NbrSerieText = `N° série : ...................................................................................................................................................................................................................................`;
    const TypePanneText = `Type de panne : .........................................................................................................................................................................................................................`;
    const NomPrenom = `${Nom}${' '}${Prenom}`
    const lines1 = [DateDepot, CentreDepot, Email, NomPrenom, Telephone, ReferanceProduit, NbrSeries, TypePanne];
    const lines2 = [DateDepotText, CentreDepotText, EmailText, NomPrenomText, TelephoneText, ReferanceProduitText, NbrSerieText, TypePanneText];

    // Repeating the above block three times (as in your original code)
    doc.fontSize(8);
    for (let i = 0; i < lines2.length; i++) {
        const lineText = lines2[i];
        const lineTitle = lines1[i];

        doc.text(lineTitle, {
            width: 595,
            align: 'center',
        }).moveDown(0);

        doc.text(lineText, {
            width: 595,
            align: 'left',
        }).moveDown(0.5);
    }

    doc.moveDown(1);
    // Function to draw a checkbox at the specified coordinates
    function drawCheckbox(x, y) {
        doc.lineJoin('miter').rect(x, y, 10, 10).stroke();
    }
    
    // Function to add a line of text with checkboxes
    function addCheckboxLine(text, checkboxes) {
        doc.fontSize(8);
        doc.text(text, { align: 'left' }).moveDown(1);
    
        checkboxes.forEach((checkbox) => {
            drawCheckbox(checkbox.x, checkbox.y);
        });
    }
    
    // First line with warranty options
    addCheckboxLine(
        'Garantie :                                           Sous Garantie                                           Hors Garantie                                        Sous réserve',
        [{ x: 210, y: 360 }, { x: 360, y: 360 }, { x: 510, y: 360 }]
    );
    
    // Second line with accessory options
    addCheckboxLine(
        'Accessoires :                            TLC                        Carton                        Pied                        Support Mural                        Sans accessoires',
        [
            { x: 150, y: 380 },
            { x: 230, y: 380 },
            { x: 300, y: 380 },
            { x: 400, y: 380 },
            { x: 520, y: 380 },
        ]
    );
  
    return doc;
}
function BonDeLivraison(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, CentreDepot,
    DateDepot, BonID, NbrSeries) {        
    doc.moveDown();
    doc.fontSize(15);
    doc.text('Bon de livraison', 20, 90,{ 
        width: 595, 
        align: 'center',
        fontWeight: '700'
    }).moveDown(2);
    doc.fontSize(8);
    doc.text(`SAV ${CentreDepot}`,{
        align: 'left',
    });
    doc.moveUp();
    doc.fontSize(8);
    doc.text(`Ref: ${BonID}`,{
        align: 'right',
    }).moveDown(1);

    doc.moveDown();
    const DateDepotText = `Date de depot : .........................................................................................................................................................................................................................`;
    const CentreDepotText = `SAV : ........................................................................................................................................................................................................................................`;
    const EmailText = `ID client : ...................................................................................................................................................................................................................................`;
    const NomPrenomText = `Nom et prenom : .......................................................................................................................................................................................................................`;
    const TelephoneText = `N° Tel : .......................................................................................................................................................................................................................................`;
    const TypePanneText = `Type de panne : .........................................................................................................................................................................................................................`;
    const NomPrenom = `${Nom}${' '}${Prenom}`
    const lines1 = [DateDepot, CentreDepot, Email, NomPrenom, Telephone, TypePanne];
    const lines2 = [DateDepotText, CentreDepotText, EmailText, NomPrenomText, TelephoneText, TypePanneText];

    // Repeating the above block three times (as in your original code)
    doc.fontSize(8);
    for (let i = 0; i < lines2.length; i++) {
        const lineText = lines2[i];
        const lineTitle = lines1[i];

        doc.text(lineTitle, {
            width: 595,
            align: 'center',
        }).moveDown(0);

        doc.text(lineText, {
            width: 595,
            align: 'left',
        }).moveDown(0.5);
    }

    doc.moveDown(1);

    //Table
    
    return doc;
}
module.exports = {
    PDFGenerator,
    PDFSender,
    PDFDownloader,
};
