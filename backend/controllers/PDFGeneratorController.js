
const path = require('path');
const fs = require('fs');
const validator = require('validator');
const { moveUp } = require('pdfkit');
const { GetPenultimateByRefProduct } = require('./PannesController');

const PDFGenerator = async (req, res) => {
    const { BonDepot } = req.params;
    const {
        Nom, Prenom, Email, Telephone, ReferanceProduit, TypePanne, Wilaya, CentreDepot,
        DateDepot, type, postalCode, NbrSerie, ActinoCorrective, UserID, CauseGarentie,
        sousGarantieChecked, horsGarantieChecked, sousReserveChecked, TLC, Carton, Pied,
        SupportMural, Sansaccessoires, Observation
    } = req.body;

    const pdfTemplate = require(`../documents/${BonDepot}`);
    const BonID = generateUniqueID(type, Wilaya, postalCode);
    const NbrSeries = NbrSerie ? NbrSerie : ' ';
    const HistoriqueProduct = await GetPenultimateByRefProduct(ReferanceProduit);

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
        const fontPath = path.join(__dirname, '..', 'fonts', 'Amiri-Bold.ttf');
        doc.font(fontPath).fillColor("black");

        (BonDepot == 'BonV1') ? TicketDeDepot(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, CentreDepot,
            DateDepot, BonID, NbrSeries) : (BonDepot == 'BonV3') ? BonDeDepot(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, CentreDepot,
                DateDepot, BonID, NbrSeries, sousGarantieChecked, sousReserveChecked, horsGarantieChecked, TLC,
                Carton, Pied, SupportMural, Sansaccessoires, CauseGarentie, TypePanne, HistoriqueProduct) : BonDeLivraison(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, CentreDepot,
                    DateDepot, BonID, NbrSeries, Observation, HistoriqueProduct);
        
        
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
function TicketDeDepot(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, CentreDepot,
    DateDepot, BonID, NbrSeries) {        
    doc.moveDown();
    doc.fontSize(15);
    doc.text('Ticket de depot', 20, 60,{ 
        width: 595, 
        align: 'center',
        fontWeight: '700'
    }).moveDown(0.8);
    doc.fontSize(7);
    doc.text(`SAV ${CentreDepot}`,{
        align: 'left',
    });

    doc.moveDown();
    //arabic
    const DateDepotARText = 'تاريخ الايداع';
    const CentreDepotARText = 'مركز خدمة ما بعد البيع';
    const EmailARText = 'رمز الزبون';
    const NomPrenomARText = 'الاسم و اللقب';
    const TelephoneARText = 'رقم الهاتف';
    const ReferanceProduitARText = 'المنتوج';
    const TypePanneARText = 'الإصلاح السابق';

    const DateDepotText = `Date de depot : ..................................................................................................................................................................................................................`+` ${ DateDepotARText.split(' ').reverse().join(' ')}`;
    const CentreDepotText = `SAV : .....................................................................................................................................................................................................................`+` ${ CentreDepotARText.split(' ').reverse().join(' ')}`;
    const EmailText = `ID client : .......................................................................................................................................................................................................................... `+` ${ EmailARText.split(' ').reverse().join(' ')}`;
    const NomPrenomText = `Nom et prenom : ..............................................................................................................................................................................................................`+` ${ NomPrenomARText.split(' ').reverse().join(' ')}`;
    const TelephoneText = `N° Tel : ............................................................................................................................................................................................................................. `+` ${ TelephoneARText.split(' ').reverse().join(' ')}`;
    const ReferanceProduitText = `Produit : ................................................................................................................................................................................................................................ `+` ${ ReferanceProduitARText.split(' ').reverse().join(' ')}`;
    const TypePanneText = `Historique du produit : ................................................................................................................................................................................................... `+` ${ TypePanneARText.split(' ').reverse().join(' ')}`;
    const NomPrenom = `${Nom}${' '}${Prenom}`
    const lines1 = [DateDepot, CentreDepot, Email, NomPrenom, Telephone, ReferanceProduit, "."];
    const lines2 = [DateDepotText, CentreDepotText, EmailText, NomPrenomText, TelephoneText, ReferanceProduitText, TypePanneText];
    
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
        }).moveDown(0);
    }
  
    return doc;
}
function BonDeDepot(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, CentreDepot,
    DateDepot, BonID, NbrSeries, sousGarantieChecked, sousReserveChecked, horsGarantieChecked, TLC,
    Carton, Pied, SupportMural, Sansaccessoires, CauseGarentie, TypePanne, HistoriqueProduct) {        
    doc.fontSize(8);
    doc.text(`Réf : FOR-SAV-24-03`,495,20,{
        align: 'center',
        width: 100,
    }).moveDown(0.1);
    doc.text(`Date d’application`,495,doc.y,{
        align: 'center',
        width: 100,
    }).moveDown(0);
    doc.text(`03/10/2023`,495,doc.y,{
        align: 'center',
        width: 100,
    }).moveDown(0.1);
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
    }).moveDown(0);
    const BonDeDepotARText = 'وصل الإيداع';
    doc.fontSize(12);
    doc.text(`${BonDeDepotARText.split(' ').reverse().join(' ')}`, 20, 75,{ 
        width: 595, 
        align: 'center',
    }).moveDown(0.8);
    doc.fontSize(7);
    doc.text(`SAV ${CentreDepot}`,{
        align: 'left',
    });
    doc.moveUp();
    doc.fontSize(7);
    doc.text(`Ref: ${BonID}`,{
        align: 'right',
    }).moveDown(1.5);

    //arabic
    const DateDepotARText = 'تاريخ الايداع';
    const CentreDepotARText = 'مركز خدمة ما بعد البيع';
    const EmailARText = 'رمز الزبون';
    const NomPrenomARText = 'الاسم و اللقب';
    const TelephoneARText = 'رقم الهاتف';
    const ReferanceProduitARText = 'المنتوج';
    const NbrSerieARText = 'الرقم التسلسلي';
    const HistoriqueProductARText = 'الإصلاح السابق';

    const DateDepotText = `Date de depot : ..................................................................................................................................................................................................................`+` ${ DateDepotARText.split(' ').reverse().join(' ')}`;
    const CentreDepotText = `SAV : .....................................................................................................................................................................................................................`+` ${ CentreDepotARText.split(' ').reverse().join(' ')}`;
    const EmailText = `ID client : .......................................................................................................................................................................................................................... `+` ${ EmailARText.split(' ').reverse().join(' ')}`;
    const NomPrenomText = `Nom et prenom : ..............................................................................................................................................................................................................`+` ${ NomPrenomARText.split(' ').reverse().join(' ')}`;
    const TelephoneText = `N° Tel : ............................................................................................................................................................................................................................. `+` ${ TelephoneARText.split(' ').reverse().join(' ')}`;
    const ReferanceProduitText = `Produit : ................................................................................................................................................................................................................................ `+` ${ ReferanceProduitARText.split(' ').reverse().join(' ')}`;
    const NbrSerieText = `N° série : ........................................................................................................................................................................................................................ `+` ${ NbrSerieARText.split(' ').reverse().join(' ')}`;
    const HistoriqueProductText = `Historique du produit : ................................................................................................................................................................................................... `+` ${ HistoriqueProductARText.split(' ').reverse().join(' ')}`;

    const NomPrenom = `${Nom}${' '}${Prenom}`
    const lines1 = [DateDepot, CentreDepot, Email, NomPrenom, Telephone, ReferanceProduit, NbrSeries];
    const lines2 = [DateDepotText, CentreDepotText, EmailText, NomPrenomText, TelephoneText, ReferanceProduitText, NbrSerieText];
    
    // Repeating the above block three times (as in your original code)
    doc.fontSize(7);
    for (let i = 0; i < lines2.length; i++) {
        const lineText = lines2[i];
        const lineTitle = lines1[i];

        doc.text(lineTitle, {
            width: 595,
            align: 'center',
        }).moveUp(0.5);

        doc.text(lineText, {
            width: 595,
            align: 'left',
        }).moveDown(0);
    }

    // Function to draw a checkbox at the specified coordinates
    function drawCheckbox(x, y, Etat) {
        Etat ? doc.lineJoin('miter').rect(x, y, 8, 8).fill('black') : doc.lineJoin('miter').rect(x, y, 8, 8).stroke();
    }
    function drawCheckboxChecked(x, y) {
        doc.fontSize(10);
        doc.text(`X`, x, y,{ 
            align: 'center',
        }).moveUp();
    }
    // Function to add a line of text with checkboxes
    function addGarentieCheckbox(text, checkboxes) {
        doc.fontSize(7);
        doc.text(text, { align: 'left' }).moveDown(0);
        //garantie
        sousGarantieChecked == true ? checkboxes[0].Etat = true : 
        horsGarantieChecked == true ? checkboxes[1].Etat = true : 
        sousReserveChecked == true ? checkboxes[2].Etat = true : null;
        
        checkboxes.forEach((checkbox) => {
            drawCheckbox(checkbox.x, checkbox.y, checkbox.Etat);
        });
    }
    doc.moveDown(0.5);
    // First line with warranty options
    const garantieARText = 'حالة الضمان للمنتوج';
    const accessoiresARText = 'لواحق';
    addGarentieCheckbox(
        `Garantie `+`${garantieARText.split(' ').reverse().join(' ')}`+`                            Sous Garantie                                                     Hors Garantie                                                       Sous réserve`,
        [
            { Etat: false, x: 205, y: 281 }, 
            { Etat: false, x: 355, y: 281 }, 
            { Etat: false, x: 505, y: 281 }
        ]
    );
    function addAccessoirCheckbox(text, checkboxes) {
        doc.fontSize(7);
        doc.text(text, { align: 'left' }).moveDown(0);
        //accessoires
        TLC ? checkboxes[0].Etat = true : null;
        Carton ? checkboxes[1].Etat = true : null;
        Pied ? checkboxes[2].Etat = true : null;
        SupportMural ? checkboxes[3].Etat = true : null;
        Sansaccessoires ? checkboxes[4].Etat = true : null;
        checkboxes.forEach((checkbox) => {
            drawCheckbox(checkbox.x, checkbox.y,checkbox.Etat);
        });
    }
    // Second line with accessory options
    addAccessoirCheckbox(
        `Accessoires `+`${accessoiresARText.split(' ').reverse().join(' ')}`+`                          TLC                            Carton                               Pied                            Support Mural                              Sans accessoires`,
        [
            { Etat: false, x: 150, y: 293 },
            { Etat: false, x: 230, y: 293 },
            { Etat: false, x: 300, y: 293 },
            { Etat: false, x: 400, y: 293 },
            { Etat: false, x: 520, y: 293 },
        ]
    );
    
    doc.moveDown(0.5);
    doc.fontSize(7);
    const CauseAnuulationARText = 'سبب إلغاء الضمان';
    doc.text(`Cause de l’annulation de la garantie :`,{
        align: 'left',
    });
    doc.moveUp();
    doc.text(`${CauseAnuulationARText.split(' ').reverse().join(' ')}`,{
        align: 'right',
    }).moveDown(0);
    // Calculate the width of the text
    const firstLineWidth = doc.widthOfString(`Présence d’insectes`);
    const secondLineWidth = doc.widthOfString(`Présence de moisissure`);
    // Calculate the x-coordinate for centering
    const centerX = (395 - Math.max(firstLineWidth, secondLineWidth)) / 2;
    const insectARText = 'وجود الحشرات';
    const moisissureADText = 'وجود الرطوبة';
    const overtARText = 'ملصق مفتوح ';
    const dalleARText = ' شاشة مكسورة';
    const manqueFicheARText = 'غياب ورقة ضمان';
    // Add the text
    doc.text(`Présence d’insectes `+`${insectARText.split(' ').reverse().join(' ')}`, centerX, doc.y, { align: 'left' });
    doc.moveUp();
    doc.text(`Présence de moisissure `+`${moisissureADText.split(' ').reverse().join(' ')}`, (centerX + 200), doc.y, { align: 'left' }).moveDown(0);
    doc.text(`Sticker ouvert `+`${overtARText.split(' ').reverse().join(' ')}`, centerX, doc.y, { align: 'left' });
    doc.moveUp();
    doc.text(`Dalle cassée `+`${dalleARText.split(' ').reverse().join(' ')}`, (centerX + 200), doc.y, { align: 'left' }).moveDown(0);
    doc.text(`Manque fiche de garantie `+`${manqueFicheARText.split(' ').reverse().join(' ')}`, centerX, doc.y, { align: 'left' });
    doc.moveUp();
    doc.text(`Autre...............`, (centerX + 200), doc.y, { align: 'left' });
    function addCheckboxLine2(checkboxes) {
        switch(CauseGarentie){
            case 'Présence d’insectes':
                checkboxes[0].Etat = true;
                break;
            case 'Présence de moisissure':
                checkboxes[3].Etat = true;
                break;
            case 'Sticker ouvert':
                checkboxes[1].Etat = true;
                break;
            case 'Dalle cassée':
                checkboxes[4].Etat = true;
                break;
            case 'Manque fiche de garantie':
                checkboxes[2].Etat = true;
                break;
            case 'Autre':
                checkboxes[5].Etat = true;
                break;
            default:
                break;
        };
        checkboxes.forEach((checkbox) => {
            drawCheckbox(checkbox.x, checkbox.y, checkbox.Etat);
        });
    }
    addCheckboxLine2(
        [
            { Etat: false, x: 260, y: 325 },
            { Etat: false, x: 242, y: 337 },
            { Etat: false, x: 282, y: 349 },
            { Etat: false, x: 470, y: 325 },
            { Etat: false, x: 439, y: 337 },
            { Etat: false, x: 420, y: 349 },
        ]
    );
    doc.moveDown(0.5);
    const DiagnostiqueARText = 'التشخيص الاولي';
    const PrixARText = 'السعر التقديري للاصلاح';
    const DateRecupirationARText = 'التاريخ التقديري للاسترجاع';
    const ServicesSupplémentairesARText = 'خدمات إضافية ';
    const DiagnostiqueText = `Diagnostique initial : .................................................................................................................................................................................................... `+` ${DiagnostiqueARText.split(' ').reverse().join(' ')}`;
    const PrixText = `Prix de réparation estimé  : .....................................................................................................................................................................................` + ` ${PrixARText.split(' ').reverse().join(' ')}`;
    const DateRecupirationText = `Date de récupération prévisionnelle : ..................................................................................................................................................................... `+` ${DateRecupirationARText.split(' ').reverse().join(' ')}`;
    const ServicesSupplémentairesTxt = 'Services supplémentaires : '; 
    const lines3 = [PrixText, DateRecupirationText, ServicesSupplémentairesTxt];

    // Repeating the above block three times (as in your original code)
    doc.fontSize(7);
    console.log(HistoriqueProduct);
    console.log("-------------------------------------------------------------");
    doc.text(HistoriqueProduct,20,doc.y, {
        width: 595,
        align: 'center',
    }).moveUp(0.8);
    doc.text(HistoriqueProductText,20,doc.y, {
        width: 595,
        align: 'left',
    }).moveDown(0);
    doc.text(TypePanne,20,doc.y, {
        width: 595,
        align: 'center',
    }).moveUp(0.8);
    doc.text(DiagnostiqueText, {
        width: 595,
        align: 'left',
    }).moveDown(0);
    for (let i = 0; i < lines3.length; i++) {
        const lineText = lines3[i];
        doc.text(lineText,20,doc.y, {
            width: 595,
            align: 'left',
        }).moveDown(0);
    }
    // Add the text
    doc.fontSize(7);
    doc.moveUp();
    const PrixTotal = 'السعر الاجمالي';
    doc.text(`01 .....................................................................................................................................................................DA           ${ServicesSupplémentairesARText.split(' ').reverse().join(' ')}`, 120, doc.y, { align: 'centre',fontWeight: '700' }).moveDown(0);
    doc.text(`02 .....................................................................................................................................................................DA`, 120, doc.y, { align: 'centre',fontWeight: '700' }).moveDown(0);
    doc.text(`Prix Total `+` ${PrixTotal.split(' ').reverse().join(' ')} `+` ...............................................................................................................................DA`, 120, doc.y, { align: 'centre',fontWeight: '700' }).moveDown(0);
    
    doc.moveDown(0);
    doc.fontSize(7);
    const ARparagraph1 = ' هذا الوصل هو وثيقة اثبات إيداع المنتوج وال يمكن استرجاع المنتوج من دونه، يمكن تقديم الوصل لشخص اخر السترجاع المنتوج مرفقا بنسخة لبطاقة التعريف الوطنية ';
    const ARparagraph2 = ' إن وضع المنتج ضمن الفئة )                        ( يعني أن المنتج يمكن أن يكون "تحت الضمان" أو "خارج الضمان" حتى إنشاء التقرير التشخيصي الذي يثبت حالة المنتج ';
    const ARparagraph3 = ' بموجب أحكام المادة 11 من المرسوم التنفيذي رقم 21-244، لا تتحمل شركة بومار كومباني و/أو وكلاؤها المعتمدين مسؤولية اي منتج تجاوزت مدة يداعه السنة الواحدة';
    const ARparagraph4 = ' ابتداء من تاريخ الاسترجاع التقديري، وتحتفظ شركة بومار كومباني بحقها في التصرف وفقا لأحكام المادة المذكورة أعلاه ';

    doc.text(`ملاحظة`,{
        align: 'right',
    }).moveDown(0);
    doc.fontSize(6);
    doc.text(`${ARparagraph1.split(' ').reverse().join(' ')}`,{
        align: 'right',
    }).moveDown(0);
    doc.text(`${ARparagraph2.split(' ').reverse().join(' ')}`,{
        align: 'right',
    }).moveDown(0);
    doc.text(`${ARparagraph3.split(' ').reverse().join(' ')}`,{
        align: 'right',
    }).moveDown(0);
    doc.text(`${ARparagraph4.split(' ').reverse().join(' ')}`,{
        align: 'right',
    }).moveDown(0);

    const paragraph = '- Ce document prouve le dépôt du produit et ce dernier ne peut être récupéré sans la présentation de ce document. Le produit peut être récupérer par une tierce personne, sous condition de présenté une photocopie de la CNI du déposant. \n - Le placement du produit sous la catégorique (sous réserve) signifie que le produit peut être en ‘’sous garantie’’ ou ‘’hors garantie’’ jusqu’à l’établissement du rapport de diagnostic prouvant l’état du produit. \n - Conformément aux dispositions de l\'article 11 du décret exécutif numéro 21-244, la société BOMARE COMPANY et/ou ses mandataires agréés ne sont pas responsables des produits dont la durée de dépôt a dépassé une année à compter de la date de restitution estimée. BOMARE COMPANY se réserve le droit d\'agir conformément aux dispositions de l\'article susmentionné. \n';
    doc.text(`${paragraph}`,40, doc.y ,{
        width: 500,
        align: 'left'
    }
    );
    doc.moveDown(0);
    const paragraph2 = 'Afin de suivre l’état d’avancement de la réparation de votre produit Veuillez scanner le code QR en y insérant votre nom et ID client ou bien de vous connecter à la plateforme via vos identifiants sur le lien suivant: https://sav.streamsystem.com/index.php';
    doc.fontSize(7);
    doc.text(`${paragraph2}`,40, doc.y ,{
        width: 500,
        align: 'left'
    }
    );
    doc.moveDown(0);
    
    
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
    }).moveDown(0);
    
    doc.text(`Pour nous contacter :` ,20, 717,{
        align: 'left',
    }).moveDown(0);
    doc.text(`Écoute client : 0560-012-841 \n E-mail : ecoute.client@bomarecompany.com / Page Facebook : @STREAM` ,40, doc.y,{
        align: 'left',
    }).moveDown(0);

    return doc;
}
function BonDeLivraison(doc, Nom, Prenom, Email, Telephone, ReferanceProduit, CentreDepot,
    DateDepot, BonID, NbrSeries, Observation, HistoriqueProduct) {        
    doc.fontSize(8);
    doc.text(`Réf : FOR-SAV-20-01`,495,20,{
        align: 'center',
        width: 100,
    }).moveDown(0.1);
    doc.text(`Date d’application`,495,doc.y,{
        align: 'center',
        width: 100,
    }).moveDown(0);
    doc.text(`03/10/2023`,495,doc.y,{
        align: 'center',
        width: 100,
    }).moveDown(0.1);
    doc.text(`Page 1 sur 9`,495,doc.y,{
        align: 'center',
        width: 100,
    });
    doc.moveDown();
    doc.fontSize(15);
    doc.text('Bon de livraison', 20, 60,{ 
        width: 595, 
        align: 'center',
    }).moveDown(0.8);
    doc.fontSize(7);
    doc.text(`SAV ${CentreDepot}`,{
        align: 'left',
    });
    doc.moveUp();
    doc.fontSize(7);
    doc.text(`Date: ${new Date().toISOString().slice(0, 10)}`,{
        align: 'right',
    }).moveDown(0);
    doc.fontSize(7);
    doc.text(`Ref: ${BonID}`,{
        align: 'left',
    });
    doc.moveDown();
    //arabic
    const DateDepotARText = 'تاريخ الايداع';
    const CentreDepotARText = 'مركز خدمة ما بعد البيع';
    const EmailARText = 'رمز الزبون';
    const NomPrenomARText = 'الاسم و اللقب';
    const TelephoneARText = 'رقم الهاتف';
    const HistoriqueProduitARText = 'الإصلاح السابق';

    const DateDepotText = `Date de depot : ..................................................................................................................................................................................................................`+` ${ DateDepotARText.split(' ').reverse().join(' ')}`;
    const CentreDepotText = `SAV : .....................................................................................................................................................................................................................`+` ${ CentreDepotARText.split(' ').reverse().join(' ')}`;
    const EmailText = `ID client : .......................................................................................................................................................................................................................... `+` ${ EmailARText.split(' ').reverse().join(' ')}`;
    const NomPrenomText = `Nom et prenom : ..............................................................................................................................................................................................................`+` ${ NomPrenomARText.split(' ').reverse().join(' ')}`;
    const TelephoneText = `N° Tel : ............................................................................................................................................................................................................................. `+` ${ TelephoneARText.split(' ').reverse().join(' ')}`;
    const HistoriqueProduitText = `Historique du produit : ................................................................................................................................................................................................... `+` ${ HistoriqueProduitARText.split(' ').reverse().join(' ')}`;
    const NomPrenom = `${Nom}${' '}${Prenom}`
    const lines1 = [DateDepot, CentreDepot, Email, NomPrenom, Telephone, HistoriqueProduct];
    const lines2 = [DateDepotText, CentreDepotText, EmailText, NomPrenomText, TelephoneText, HistoriqueProduitText];
    
    // Repeating the above block three times (as in your original code)
    doc.fontSize(7);
    for (let i = 0; i < lines2.length; i++) {
        const lineText = lines2[i];
        const lineTitle = lines1[i];

        doc.text(lineTitle, {
            width: 595,
            align: 'center',
        }).moveUp(0.5);

        doc.text(lineText, {
            width: 595,
            align: 'left',
        }).moveDown(0.3);
    }

    doc.moveDown(3);

    
    const tableArray1 = {
        headers: ["", " ", "", "", " ", ""],
        rows: [
            ["Item", "Désignation", "Modèle", "N° série", "Observation", "Montant à payer"],
          ["1", " ", ReferanceProduit, NbrSeries, (Observation ?? "") , " "],
        ],
    };
    doc.table( tableArray1, { width: 594,
        columnsSize: [ 50, 80, 100, 120, 100, 100],
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
