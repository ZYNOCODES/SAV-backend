
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
        const PDFDocument = require('pdfkit-table');
        const doc = new PDFDocument({ size: 'A4' });

        // Pipe the PDF document to a file
        const uniqueFilename = `${BonID}.pdf`;
        const filePath = path.join(__dirname, '..', 'files', uniqueFilename);
        const stream = doc.pipe(fs.createWriteStream(filePath));
        const topImagePath = path.join(__dirname, '..', 'images', 'topimg.png');
        const bottomImagePath = path.join(__dirname, '..', 'images', 'bottomPDF.png');
        //add top image
        doc.image(topImagePath, 0, 0, { width: 495,align: 'left'});

        (BonDepot == 'BonV1') ? TicketDeDepot(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, CentreDepot,
            DateDepot, BonID, NbrSeries) : (BonDepot == 'BonV3') ? BonDeDepot(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, CentreDepot,
                DateDepot, BonID, NbrSeries) : BonDeLivraison(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, CentreDepot,
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
    doc.fontSize(8);
    doc.text(`Réf : FOR-SAV-24-03`,495,20,{
        align: 'center',
        width: 100,
    }).moveDown(1.3);
    doc.text(`Date d’application`,495,doc.y,{
        align: 'center',
        width: 100,
    }).moveDown(1);
    doc.text(`03/10/2023`,495,doc.y,{
        align: 'center',
        width: 100,
    }).moveDown(1.3);
    doc.text(`Page 1 sur 9`,495,doc.y,{
        align: 'center',
        width: 100,
    });
    doc.moveDown();
    doc.fontSize(15);
    doc.text('Bon de depot', 20, 60,{ 
        width: 595, 
        align: 'center',
        fontWeight: '700'
    }).moveDown(2);
    doc.fontSize(7);
    doc.text(`SAV ${CentreDepot}`,{
        align: 'left',
    });
    doc.moveUp();
    doc.fontSize(7);
    doc.text(`Ref: ${BonID}`,{
        align: 'right',
    }).moveDown(1);

    doc.moveDown();
    const DateDepotText = `Date de depot : ......................................................................................................................................................................................................................................................`;
    const CentreDepotText = `SAV : .....................................................................................................................................................................................................................................................................`;
    const EmailText = `ID client : ................................................................................................................................................................................................................................................................`;
    const NomPrenomText = `Nom et prenom : ....................................................................................................................................................................................................................................................`;
    const TelephoneText = `N° Tel : ....................................................................................................................................................................................................................................................................`;
    const ReferanceProduitText = `Produit : ..................................................................................................................................................................................................................................................................`;
    const NbrSerieText = `N° série : ................................................................................................................................................................................................................................................................`;
    const TypePanneText = `Type de panne : ......................................................................................................................................................................................................................................................`;
    const NomPrenom = `${Nom}${' '}${Prenom}`
    const lines1 = [DateDepot, CentreDepot, Email, NomPrenom, Telephone, ReferanceProduit, NbrSeries, TypePanne];
    const lines2 = [DateDepotText, CentreDepotText, EmailText, NomPrenomText, TelephoneText, ReferanceProduitText, NbrSerieText, TypePanneText];

    // Repeating the above block three times (as in your original code)
    doc.fontSize(7);
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
        doc.lineJoin('miter').rect(x, y, 8, 8).stroke();
    }
    
    // Function to add a line of text with checkboxes
    function addCheckboxLine(text, checkboxes) {
        doc.fontSize(7);
        doc.text(text, { align: 'left' }).moveDown(1);
    
        checkboxes.forEach((checkbox) => {
            drawCheckbox(checkbox.x, checkbox.y);
        });
    }
    
    // First line with warranty options
    addCheckboxLine(
        'Garantie :                                                     Sous Garantie                                                     Hors Garantie                                                       Sous réserve',
        [{ x: 210, y: 305 }, { x: 360, y: 305 }, { x: 510, y: 305 }]
    );
    
    // Second line with accessory options
    addCheckboxLine(
        'Accessoires :                                  TLC                            Carton                               Pied                            Support Mural                              Sans accessoires',
        [
            { x: 150, y: 320 },
            { x: 230, y: 320 },
            { x: 300, y: 320 },
            { x: 400, y: 320 },
            { x: 520, y: 320 },
        ]
    );
    
    doc.moveDown(1);
    doc.fontSize(7);
    doc.text(`Cause de l’annulation de la garantie :`,{
        align: 'left',
    }).moveDown(0.5);

    // Calculate the width of the text
    const firstLineWidth = doc.widthOfString(`Présence d’insectes`);
    const secondLineWidth = doc.widthOfString(`Présence de moisissure`);
    // Calculate the x-coordinate for centering
    const centerX = (395 - Math.max(firstLineWidth, secondLineWidth)) / 2;
    // Add the text
    doc.text(`Présence d’insectes`, centerX, doc.y, { align: 'left' });
    doc.moveUp();
    doc.text(`Présence de moisissure`, (centerX + 200), doc.y, { align: 'left' }).moveDown(0.5);
    doc.text(`Sticker ouvert`, centerX, doc.y, { align: 'left' });
    doc.moveUp();
    doc.text(`Dalle cassée`, (centerX + 200), doc.y, { align: 'left' }).moveDown(0.5);
    doc.text(`Manque fiche de garantie`, centerX, doc.y, { align: 'left' });
    doc.moveUp();
    doc.text(`Autre`, (centerX + 200), doc.y, { align: 'left' });
    function addCheckboxLine2(checkboxes) {
        checkboxes.forEach((checkbox) => {
            drawCheckbox(checkbox.x, checkbox.y);
        });
    }
    addCheckboxLine2(
        [
            { x: 230, y: 358 },
            { x: 210, y: 369 },
            { x: 250, y: 382 },
            { x: 450, y: 358 },
            { x: 410, y: 369 },
            { x: 390, y: 382 },
        ]
    );
    doc.moveDown(1);
    const DiagnostiqueText = `Diagnostique initial : ..............................................................................................................................................................................................................................................`;
    const PrixText = `Prix de réparation estimé  : ..................................................................................................................................................................................................................................`;
    const DateRecupirationText = `Date de récupération prévisionnelle : `;
    const lines3 = [DiagnostiqueText, PrixText, DateRecupirationText];

    // Repeating the above block three times (as in your original code)
    doc.fontSize(7);
    for (let i = 0; i < lines3.length; i++) {
        const lineText = lines3[i];
        doc.text(lineText,20,doc.y, {
            width: 595,
            align: 'left',
        }).moveDown(0.5);
    }
    // Add the text
    doc.fontSize(7);
    doc.text(`01 ........................................................................................................................................................................DA`, 120, doc.y, { align: 'centre',fontWeight: '700' }).moveDown(0.5);
    doc.text(`02 ........................................................................................................................................................................DA`, 120, doc.y, { align: 'centre',fontWeight: '700' }).moveDown(0.5);
    doc.text(`Prix Total ..............................................................................................................................................................DA`, 120, doc.y, { align: 'centre',fontWeight: '700' }).moveDown(1);
    
    doc.moveDown(1);
    doc.fontSize(7);
    doc.text(`Remarque :`,20, doc.y,{
        align: 'left',
    }).moveDown(0.5);
    const paragraph = '- Ce document prouve le dépôt du produit et ce dernier ne peut être récupéré sans la présentation de ce document. Le produit peut être récupérer par une tierce personne, sous condition de présenté une photocopie de la CNI du déposant. \n - Le placement du produit sous la catégorique (sous réserve) signifie que le produit peut être en ‘’sous garantie’’ ou ‘’hors garantie’’ jusqu’à l’établissement du rapport de diagnostic prouvant l’état du produit. \n - Conformément aux dispositions de l\'article 11 du décret exécutif numéro 21-244, la société BOMARE COMPANY et/ou ses mandataires agréés ne sont pas responsables des produits dont la durée de dépôt a dépassé une année à compter de la date de restitution estimée. BOMARE COMPANY se réserve le droit d\'agir conformément aux dispositions de l\'article susmentionné. \n';
    doc.fontSize(7);
    doc.text(`${paragraph}`,40, doc.y ,{
        width: 500,
        align: 'left'
    }
    );
    doc.moveDown(1);

    const paragraph2 = 'Afin de suivre l’état d’avancement de la réparation de votre produit Veuillez scanner le code QR en y insérant votre nom et ID client ou bien de vous connecter à la plateforme via vos identifiants sur le lien suivant: https://sav.streamsystem.com/index.php';
    doc.fontSize(8);
    doc.text(`${paragraph2}`,40, doc.y ,{
        width: 500,
        align: 'left'
    }
    );
    doc.moveDown(1);
    
    
    const tableArray = {
        headers: ["", " "],
        rows: [
            ["Nom", " "],
          ["ID", BonID],
        ],
      };
      
    doc.table( tableArray, { width: 300,
        columnsSize: [ 50, 120 ],
        hideHeader: true,
        prepareRow: (row, indexColumn, indexRow, rectRow, rectCell) => {
            indexRow === 0 && doc.addBackground(rectCell, 'blue');
        },
    });
    doc.fontSize(7);
    doc.text(`Le Client : Vu, lu et approuvé (Signature) `,20, doc.y,{
        align: 'left',
    });
    doc.moveUp();
    doc.fontSize(7);
    doc.text(`SAV Bomare Company (Cachet)` ,20, doc.y,{
        align: 'right',
    }).moveDown(1);
    
    doc.text(`Pour nous contacter :` ,20, 710,{
        align: 'left',
    }).moveDown(0.5);
    doc.text(`Écoute client : 0560-012-841 \n E-mail : ecoute.client@bomarecompany.com / Page Facebook : @STREAM` ,40, doc.y,{
        align: 'left',
    }).moveDown(0.5);

    return doc;
}
function BonDeLivraison(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, CentreDepot,
    DateDepot, BonID, NbrSeries) {        
    doc.fontSize(8);
    doc.text(`Réf : FOR-SAV-20-01`,495,20,{
        align: 'center',
        width: 100,
    }).moveDown(1.3);
    doc.text(`Date d’application`,495,doc.y,{
        align: 'center',
        width: 100,
    }).moveDown(1);
    doc.text(`03/10/2023`,495,doc.y,{
        align: 'center',
        width: 100,
    }).moveDown(1.3);
    doc.text(`Page 1 sur 9`,495,doc.y,{
        align: 'center',
        width: 100,
    });
    doc.moveDown();
    doc.fontSize(15);
    doc.text('Bon de livraison', 20, 60,{ 
        width: 595, 
        align: 'center',
    }).moveDown(2);
    doc.fontSize(8);
    doc.text(`SAV ${CentreDepot}`,{
        align: 'left',
    });
    doc.moveUp();
    doc.fontSize(8);
    doc.text(`Date: ${new Date().toISOString().slice(0, 10)}`,{
        align: 'right',
    }).moveDown(1);
    doc.fontSize(8);
    doc.text(`Ref: ${BonID}`,{
        align: 'left',
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

    doc.moveDown(5);

    
    const tableArray1 = {
        headers: ["", " ", "", "", " ", ""],
        rows: [
            ["Item", "Désignation", "Modèle", "N° série", "Observation", "Montant à payer"],
          ["1", " ", ReferanceProduit, NbrSeries, " ", " "],
        ],
    };
    doc.table( tableArray1, { width: 594,
        columnsSize: [ 50, 80, 100, 100, 100, 100],
        hideHeader: true,
        minRowHeight: 20,
        prepareRow: (row, indexColumn, indexRow, rectRow, rectCell) => {
            indexRow === 0 && doc.addBackground(rectCell, 'blue');
        },
        padding : 10,
        align: 'center',
    });
    doc.moveDown(5);
    const tableArray2 = {
        headers: ["SAV", "Client"],
        rows: [
          ["", "Reçu et lu"],
        ],
    };
      
    doc.table( tableArray2, { width: 500,
        columnsSize: [ 250, 250],
        minRowHeight: 100,
        padding : 10,
        align: 'center',
        headerColor: '#000000',
        headerAlign: 'centre',
        columnColor : '#000000'
    });

    return doc;
}
module.exports = {
    PDFGenerator,
    PDFSender,
    PDFDownloader,
};
