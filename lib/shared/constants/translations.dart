import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'PhotoTestingApp': 'Your photo testing app.',
          'OnboardingAction': 'Swipe left',
          'OnboardingScreen1Title': 'What are your photos saying about you?',
          'OnboardingScreen1Text': 'Stopp guessing. Start testing!',
          'OnboardingScreen2Title': 'Discover the best photo for every occasion.',
          'OnboardingScreen2Text': 'Upload a photo, sit back and let the community decide!',
          'OnboardingScreen3Title': 'Your oppinion matters.',
          'OnboardingScreen3Text':
              'Rate images from others and help them discover their best photos.',
          'OnboardingScreen4Title': 'Privacy according to your rules.',
          'OnboardingScreen4Text':
              'You have full control over when and for whom your photos are visible and how long they remain so.',
          'slogan': 'Your opinion counts',
          'join': 'Join now.',
          'continueWithGoogle': 'Sign in with Google',
          'continueWithApple': 'Sign in with Apple',
          'alreadyHaveAnAccount': 'Do you already have an account?',
          'login': 'Login',
          'register': 'Register',
          'password': 'Password',
          'guestInvitation': 'Continue without login.',
          'guestLogin': 'Login as guest',
          //SIGNSCREENS
          'alreadyConnectedToGoogle': 'Already connected with Google?',
          'loginWithGoogle': 'Login with Google',
          'pleaseEnterEmail': 'Please enter an Email.',
          'minimum6Letters': 'Minimum 6 characters.',
          'youDontHaveAnAccount': 'You don\'t have an account?',
          'forgotPassword': 'Forgot password?',
          'repeatPassword': 'Repeat password',
          'verificationPurposes': 'Used only for Email-verification.',
          'createAccount': 'Create account',
          'freePixana': 'Pixana is free.',
          'deleteAtAnytime': 'You can delete your account at anytime.',
          'earlyUser': 'You are an early user.',
          'starterBonus': 'Register now and claim your starter-bonus:',
          'passwordsNotEqual': 'Passwords not equal',
          'shortPassword': 'Password is too short',
          'enterValidEmail': 'Please enter a valid Email',
          'aLittleMoreAboutYou': 'One more step and you can join!',
          'selectRegion': 'Where do you live?',
          'selectBirthdayYear': 'What year were you born?',
          'selectGender': 'As what gender do you identify yourself?',
          'acceptTermsConditions': 'I accept the Terms & Conditions',
          'termsAndConditionsOfPixanaButton': 'The Terms & Conditions of Pixana',
          'ok': 'Ok',
          'start': 'Start',
          'male': 'Male',
          'female': 'Female',
          'other': 'Other',
          //REGIONS
          'Africa': 'Africa',
          'East Asia': 'East Asia',
          'Europe': 'Europe',
          'Latin America': 'Latin America',
          'Middle-East & North-Africa': 'Middle-East & North Africa',
          'North America': 'North America',
          'Russia & Central Asia': 'Russia & Central Asia',
          'South Asia': 'South Asia',
          'South-East Asia': 'South-East Asia',
          'South Pacific': 'South Pacific',
          //ATTRIBUTE-BUSINESS
          'competent': 'Competent',
          'selfassured': 'Self-assured',
          'teamPlayer': 'Team-Player',
          //ATTRIBUTE-DATING
          'attractive': 'Attractive',
          'trustworthy': 'Trustworthy',
          'selfConfident': 'Self-confident',
          //ATTRIBUTE-Outfit
          // 'stylish': 'Stylish',
          'likeable': 'Likeable',
          'elegant': 'Elegant',
          'fashionably': 'Fashionably',
          //ATTRIBUTE-Cosplay
          'creative': 'Creative',
          'detailed': 'Detailed',
          // 'brave': 'Brave',
          'authentic': 'Authentic',
          //CATEGORIES
          'business': 'Business',
          'dating': 'Dating',
          'outfit': 'Outfit',
          //RATINGPAGE
          'noMorePhotos': 'No more photo to rate in this category',
          'noPhotosToReport': 'There is no photo to report',
          'pixanaOffline': 'Pixana is Offline.\nPixana needs an active internet connection.',
          'watchAdForPXC': 'Watch an ad and get 25 PXC for free!',
          'watchAd': 'Watch ad',
          'filter': 'Filter',
          'commentContainsOffensiveWords': 'Your comment contains offensive words.',
          'clickOnComment': 'Click on a comment.',
          //USERTESTSPAGE
          'category': 'Category',
          'votes': 'Votes',
          'all': 'All',
          'serverError': 'Server-Error.',
          'pullAgainToRefresh': 'Nach unten ziehen um zu aktualisieren.',
          'loading': 'Loading',
          'tests': 'My tests',
          //PROFILEPAGE
          'noteRefresh': 'Note: Refresh this page by dragging down',
          'averageRatingsYouReceive': 'Here are the average ratings you receive per region',
          'noRatesFromThisRegion': 'No ratings from this region yet',
          'statistics': 'Statistics',
          'account': 'Account',
          'selectLanguage': 'Select a language',
          'english': 'English',
          'french': 'French',
          'german': 'German',
          'russian': 'Russian',
          'spanish': 'Spanish',
          'region': 'Region',
          'Worldwide': 'Worldwide',
          'unknownEmail': 'Unknown Email',
          'unknownRegion': 'Unknown region',
          'settings': 'Settings',
          'signOut': 'Sign Out',
          'appInfo': 'App Info',
          'deleteAccount': 'Delete Account',
          'privacyPolicy': 'Privacy Policy',
          'imprint': 'Imprint',
          'termsConditionsWord': 'Terms & Conditions',
          'backgrounds': 'Backgrounds',
          'linkToGoogle': 'Link to Google',
          //DETAILEDPAGE
          'testResult': 'Test result',
          'uploaded': 'Uploaded',
          'genderOfRaters': 'Gender of Raters',
          'ageRange': 'Age range',
          'numberOfRates': 'Number of ratings',
          'comments': 'Comments',
          'regionOfRaters': 'Regions from which the ratings come',
          'confirm': 'Confirm',
          'testReported':
              'Someone has reported this test. It could be deleted if it is reported again.',
          'testStopped':
              'This test was reported too often. It is stopped now until we review it. It might get deleted if it contains unallowed content.',
          'sureYouWantToDeleteTest': 'Are you sure you want to delete this test?',
          //PICTUREPICKER
          'uploadPhoto': 'Upload photo',
          'guidelines': 'Guidelines',
          'atLeast16': 'The person in the photo must be at least 16 years old',
          'noEGSContent': 'No explicit, graphic or sexual content',
          'notWithoutConsent': 'Do not upload photos from people without their consent',
          'tips': 'Tips',
          'provideAdditionalInfo': 'Provide additional Information',
          'opt': ' (Opt.)',
          'additionalInfoTips': 'e. g. expression, clothes, job title, series',
          'whoIsInThePhoto': 'What is the gender of the person in the photo?',
          'categoryOfTest': 'Choose a category for your test',
          'whoCanRate': 'Who can rate your photos?',
          'fromAge': 'From Age: ',
          'toAge': 'To Age: ',
          'howManyRatings': 'How many ratings do you want?',
          'negativeBalance': 'Note: You cannot have a negative PXC-Balance',
          'men': 'Men',
          'women': 'Women',
          'man': 'Man',
          'woman': 'Woman',
          'offensiveWords': 'Offensive words',
          'unallowedWords': 'Your info text contains offensive words.\nRemove them to continue.',
          'notEnoughPXC': 'Not enough PXC for this test available.',
          'youHave': 'You have:',
          'youStillNeed': 'You still need:',
          'aboutToSpend': 'You are about to spend:',
          'wantToProceed': 'Do you want to proceed?',
          'fillRequiredInfo': 'You have to fill all the required infos to start a test.',
          'noPhotoSelected': 'No photo selected',
          'photoTooBig': 'The photo is too big.',
          'photoTooSmall': 'The photo is too small.',
          'cropPhoto': 'Crop your photo',
          'slowResults': 'Note: Settings might slow down your results',
          //PHOTOTIPS
          'badLighting':
              'Pay attention to lighting. Photos with bad lighting are often not rated good.',
          'closeUps': 'Close ups receive comments more often.',
          'facialExpression': 'Pay attention to facial expressions.',
          'multiplePeople':
              'Provide additional info if there is more than one person in the photo.',
          'differentAngle':
              'Consider changing the angle for different results. Don\'t forget that selfies often distort the face.',
          'fasterResuts': 'Open up your test for more people to receive faster results.',
          'avoidSelfies': 'Try to avoid selfies. ',
          'avoidSunglasses': 'Avoid sunglasses, as they obscure your face.',
          'close': 'Close',
          'nextTip': 'Next Tip',
          'openTips': 'Open tips',
          //FILTER
          'changeCategory': 'Choose a category',
          'changeGender': 'Who do you want to rate?',
          'disclaimer':
              'Don\'t forget: You are rating photos, not people.\nPeople can look very different in different photos.',
          //TUTORIALRATINGPAGE
          'skipTutorial': 'Skip tutorial',
          'nextTutorial': 'Next tutorial',
          'next': 'Next',
          'previous': 'Previous',
          'finish': 'Finish',
          'skipPart': 'Skip this part',
          'currentPhoto': 'This photo can be rated now',
          'toggleInfo': 'Turn infobar on/off by clicking on it',
          'ratingSection': 'This is the rating section',
          'hereYouCan': 'Here you can rate the photo and send your rating.',
          'report': 'Report',
          'rate': 'Rate',
          'comment': 'Comment',
          'send': 'Send Rating',
          'onlyWhenSendSaved': 'Ratings are only saved when you click on \'Send\'',
          'pxc': 'Pixana Coins (PXC)',
          '5PXCforEveryRate':
              'You get 5 PXC for every rating you send. PXC are needed to start own tests!',
          'switchBetweenCategories': 'Switch between the different categories',
          'decideWhichGenderYouWantToRate': 'or decide who you want to rate!',
          'moreButtonRatingPage': 'More',
          'hereIsTutorial': 'You can start the tutorial again here.',
          //TUTORIALUSERTESTSPAGE
          'uploadSection': 'Here are your uploads',
          'listUploads': 'You can update your uploads at any time by pulling down.',
          'createNewTest': 'Create new test',
          'clickToStartTest': 'Click here to start a new test.',
          'uploadFilter': 'Filter your tests (uploads) by categories.',
          //TUTORIALPROFILEPAGE
          'statisticSection': 'This is the statistic-section',
          'averageDataPerCategory':
              'Here you can see an overview with your average ratings per category.',
          'categories': 'These are the categories.',
          'eachCategoryHasOwnStatistic': 'Each of these categories has its own statistics.',
          'chart': 'Ratings per region',
          'comparePerRegion':
              'Here you can see how you are rated in different regions of the world.',
          //DIALOGS
          'reportThisPicture':
              'Du kannst dieses Foto melden wenn du der Meinung bist, dass es unerlaubte Inhalte enthält.',
          'resetPassword': 'Reset your password',
          'enterYourEmail': 'Please enter your Email',
          'typeInEmailHere': 'Type in your email here...',
          'invalidEmail': 'This is not a real Email.',
          'resetEmailSend': 'We sent you an Email to reset your password.',
          'loginFailed': 'Login failed',
          'checkEmailOrPassword': 'Check your email and password.',
          'SignUpFailed': 'Sign up failed',
          'emailMightAlreadyBeInUse': 'This email is already in use.',
          'emailEmpty': 'Email is empty',
          'didntTypeInEmail': 'You did not type in an email.',
          'consistOf6Characters': 'The password must consist of at least 6 characters.',
          'checkBothPasswords': 'Check both passwords.',
          'information': 'Information',
          'missingInformationForSignUp': 'There is still information missing for registration.',
          'verificationStatus': 'Verification status',
          'youAreVerified': 'Your email is verified.',
          'stillNotVerified':
              'Your email is still not verified.\nWe just sent you a new verification email.',
          'changePassword': 'Change password',
          'oldPasswordWrong': 'Old password is wrong',
          'oldPassword': 'Type in the old password',
          'newPassword': 'Choose a new password',
          'repeatNewPassword': 'Repeat the new password',
          'sureToSignOut': 'Are you sure you want to sign out?',
          'iAmSure': 'Yes, i am sure',
          'no': 'No',
          'yes': 'Yes',
          'canNotBeUndone':
              'Are you sure?\n Your data will be permanently deleted and cannot be recovered!',
          'confirmDeletion': 'Confirm deletion',
          'enterPassword': 'Enter password',
          'wrongPassword': 'Password is wrong.',
        },
        'de': {
          'PhotoTestingApp': 'Deine Fototest-App.',
          'OnboardingAction': 'Wische nach links',
          'OnboardingScreen1TitleNew': 'Was sagen deine Fotos über dich aus?',
          'OnboardingScreen1TextNew': 'Hör auf zu raten. Fang an zu testen!',
          'OnboardingScreen2TitleNew': 'Entdecke das beste Foto für jeden Anlass.',
          'OnboardingScreen2TextNew':
              'Lade ein Foto hoch, lehn dich zurück und lass die Community entscheiden!',
          'OnboardingScreen3TitleNew': 'Deine Meinung zählt.',
          'OnboardingScreen3TextNew':
              'Bewerte Bilder von anderen und hilf ihnen, ihre besten Fotos zu entdecken.',
          'OnboardingScreen4TitleNew': 'Privatsphäre nach deinen Regeln.',
          'OnboardingScreen4TextNew':
              'Du hast die volle Kontrolle darüber, wann und für wen deine Fotos sichtbar sind und wie lange sie es bleiben.',
          'slogan': 'Deine Meinung zählt',
          'join': 'Erstelle einen Account.',
          'continueWithGoogle': 'Mit Google einloggen',
          'continueWithApple': 'Mit Apple einloggen',
          'alreadyHaveAnAccount': 'Du hast bereits einen Account?',
          'login': 'Anmelden',
          'register': 'Registrieren',
          'password': 'Passwort',
          'guestInvitation': 'Ohne Anmeldung fortfahren.',
          'guestLogin': 'Als Gast anmelden',
          //SIGNSCREENS
          'alreadyConnectedToGoogle': 'Bereits mit Google registriert?',
          'loginWithGoogle': 'Mit Google anmelden',
          'pleaseEnterEmail': 'Bitte eine Email angeben.',
          'minimum6Letters': 'Mind. 6 Zeichen.',
          'youDontHaveAnAccount': 'Du hast noch keinen Account?',
          'forgotPassword': 'Passwort vergessen?',
          'repeatPassword': 'Passwort wiederholen',
          'verificationPurposes': 'Wird nur für die Emailbestätigung verwendet.',
          'createAccount': 'Erstelle Account',
          'freePixana': 'Pixana ist kostenlos.',
          'deleteAtAnytime': 'Du kannst dein Konto jederzeit löschen.',
          'earlyUser': 'Du bist ein früher Nutzer.',
          'starterBonus': 'Registrier dich jetzt und sichere dir folgenden Startbonus:',
          'passwordsNotEqual': 'Passwörter sind nicht gleich',
          'shortPassword': 'Das Passwort ist zu kurz',
          'enterValidEmail': 'Gib bitte eine gültige Email an',
          'aLittleMoreAboutYou': 'Erzähl uns etwas mehr über dich',
          'selectRegion': 'Wo wohnst du?',
          'selectAge': 'Verrate uns dein Alter',
          'selectGender': 'Wähle dein Geschlecht',
          'acceptTermsConditions': 'Ich akzeptiere die AGBs von Pixana',
          'termsAndConditionsOfPixanaButton': 'Die AGBs von Pixana',
          'ok': 'Ok',
          'start': 'Start',
          'male': 'Männlich',
          'female': 'Weiblich',
          'other': 'Divers',
          //REGIONS
          'Africa': 'Afrika',
          'East Asia': 'Ostasien',
          'Europe': 'Europa',
          'Latin America': 'Lateinamerika',
          'Middle-East & North-Africa': 'Naher Osten & Nordafrika',
          'North America': 'Nordamerika',
          'Russia & Central Asia': 'Russland & Zentralasien',
          'South Asia': 'Südasien',
          'South-East Asia': 'Südostasien',
          'South Pacific': 'Südpazifik',
          //ATTRIBUTE-BUSINESS
          'competent': 'Kompetent',
          'selfassured': 'Selbstsicher',
          'teamPlayer': 'Teamfähig',
          //ATTRIBUTE-DATING
          'attractive': 'Attraktiv',
          'trustworthy': 'Vertrauenswürdig',
          'selfConfident': 'Selbstbewusst',
          //ATTRIBUTE-Outfit
          // 'stylish': 'Stylisch',
          'likeable': 'Symphatisch',
          'elegant': 'Elegant',
          'fashionably': 'Modisch',
          //ATTRIBUTE-Cosplay
          'creative': 'Kreativ',
          'detailed': 'Detailliert',
          // 'brave': 'Mutig',
          'authentic': 'Authentisch',
          //CATEGORIES
          'business': 'Business',
          'dating': 'Dating',
          'outfit': 'Outfit',
          //RATINGPAGE
          'noMorePhotos': 'Keine Fotos zum Bewerten übrig in dieser Kategorie',
          'noPhotosToReport': 'Kein Foto verfügbar, dass gemeldet werden kann',
          'pixanaOffline': 'Pixana ist offline.\nPixana benötigt eine aktive Internetverbindung.',
          'watchAdForPXC': 'Schau dir einen Werbeclip an und erhalte 25 PXC!',
          'watchAd': 'Werbeclip schauen',
          'filter': 'Filter',
          'commentContainsOffensiveWords': 'Dein Kommentar enthält anstößige Wörter.',
          'clickOnComment': 'Klick auf einen Kommentar.',
          //USERTESTSPAGE
          'category': 'Kategorie',
          'votes': 'Bewertungen',
          'noteRefresh': 'Notiz: Aktualisiere die Seite durch Herunterziehen',
          'all': 'Alle',
          'serverError': 'Server-Error.',
          'pullAgainToRefresh': 'Nach unten ziehen um zu aktualisieren.',
          'loading': 'Lädt',
          'tests': 'Meine Tests',
          //PROFILEPAGE
          'averageRatingsYouReceive': 'Hier sind deine durchschnittlichen Bewertungen pro Region',
          'noRatesFromThisRegion': 'Keine Bewertung aus dieser Region',
          'statistics': 'Statistik',
          'account': 'Account',
          'selectLanguage': 'Sprache wählen',
          'english': 'Englisch',
          'french': 'Französisch',
          'german': 'Deutsch',
          'russian': 'Russisch',
          'spanish': 'Spanisch',
          'region': 'Region',
          'Worldwide': 'Weltweit',
          'unknownEmail': 'Unbekannte Email',
          'unknownRegion': 'Unbekannte Region',
          'settings': 'Einstellungen',
          'signOut': 'Abmelden',
          'appInfo': 'App-Infos',
          'deleteAccount': 'Account löschen',
          'privacyPolicy': 'Datenschutzerklärung',
          'imprint': 'Impressum',
          'termsConditionsWord': 'AGB',
          'backgrounds': 'Hintergründe',
          'linkToGoogle': 'Verknüpfen mit Google',
          //DETAILEDPAGE
          'testResult': 'Bewertungsergebnis',
          'uploaded': 'Hochgeladen',
          'genderOfRaters': 'Wer bewerten darf',
          'ageRange': 'Altersspanne',
          'numberOfRates': 'Anzahl an Bewertungen',
          'comments': 'Kommentare',
          'regionOfRaters': 'Regionen aus denen die Bewertungen kommen',
          'confirm': 'Bestätigen',
          'testReported':
              'Jemand hat diesen Test gemeldet. Er könnte gelöscht werden, wenn er erneut gemeldet wird.',
          'testStopped':
              'Dieser Test wurde zu oft gemeldet. Er ist jetzt gestoppt, bis wir ihn überprüfen. Er könnte gelöscht werden, wenn er unerlaubte Inhalte enthält.',
          'sureYouWantToDeleteTest': 'Bist du dir sicher, dass du diesen Test löschen willst?',
          //PICTUREPICKER
          'uploadPhoto': 'Foto hochladen',
          'guidelines': 'Richtlinien',
          'atLeast16': 'Die Person im Foto muss mindestens 16 Jahre alt sein',
          'noEGSContent': 'Keine Nacktheit, Gewalt oder sexuellen Inhalte',
          'notWithoutConsent': 'Keine Fotos von Personen ohne ihre Erlaubnis',
          'tips': 'Tipps',
          'provideAdditionalInfo': 'Füge zusätzliche Informationen hinzu',
          'opt': ' (Opt.)',
          'additionalInfoTips': 'z. B. Gesichtsausdruck, Kleidung, Jobtitel, Serie',
          'whoIsInThePhoto': 'Welches Geschlecht hat die Person im Foto?',
          'categoryOfTest': 'Wähle eine Kategorie für deinen Bewertungstest',
          'whoCanRate': 'Wer darf dein Foto bewerten?',
          'fromAge': 'Von Alter: ',
          'toAge': 'Bis Alter: ',
          'howManyRatings': 'Wie viele Bewertungen möchtest du erhalten?',
          'negativeBalance': 'Notiz: Du kannst keinen negativen PXC-Kontostand besitzen',
          'men': 'Männer',
          'women': 'Frauen',
          'man': 'Mann',
          'woman': 'Frau',
          'offensiveWords': 'Anstößige Wörter',
          'unallowedWords':
              'Dein Infotext enthält anstößige Wörter.\nEntferne sie um fortzufahren.',
          'notEnoughPXC': 'Nicht genug PXC für diesen Test verfügbar.',
          'youHave': 'Du hast:',
          'youStillNeed': 'Du brauchst noch:',
          'aboutToSpend': 'Du möchtest ausgeben:',
          'wantToProceed': 'Möchtest du fortfahren?',
          'fillRequiredInfo': 'Fülle bitte alle nötigen Felder zum Starten des Tests aus.',
          'noPhotoSelected': 'Kein Foto ausgewählt.',
          'photoTooBig': 'Das Foto ist zu groß.',
          'photoTooSmall': 'Das Foto ist zu klein.',
          'cropPhoto': 'Foto zuschneiden',
          'slowResults': 'Hinweis: Diese Einstellungen verlangsamen den Testablauf',
          //PHOTOTIPS
          'badLighting':
              'Achte auf die Beleuchtung im Foto. Fotos mit schlechter Beleuchtung werden seltener gut bewertet.',
          'closeUps': 'Fotos von nahem erhalten öfter Kommentare.',
          'facialExpression': 'Der Gesichtsausdruck spielt eine große Rolle für die Bewerter.',
          'multiplePeople':
              'Spezifiziere um welche Person es geht, falls mehrere Personen im Foto zu sehen sind.',
          'differentAngle':
              'Probiere verschiedene Kamerawinkel aus. Vergiss nicht, dass Selfies das Gesicht verzerren.',
          'fasterResuts': 'Öffne deinen Test für mehr Nutzer um schnellere Ergebnisse zu erzielen.',
          'avoidSelfies': 'Vermeide Selfies.',
          'avoidSunglasses': 'Vermeide Sonnenbrillen, da sie dein Gesicht verdecken.',
          'close': 'Schließen',
          'nextTip': 'Nächster Tipp',
          'openTips': 'Tipps öffnen',
          //FILTER
          'changeCategory': 'Wähle eine Kategorie',
          'changeGender': 'Wen willst du bewerten?',
          'disclaimer':
              'Vergiss nicht: Du bewertest Fotos, keine Menschen. Menschen können auf verschiedenen Fotos sehr unterschiedlich wirken.',
          //TUTORIALRATINGPAGE
          'skipTutorial': 'Tutorial überspringen',
          'nextTutorial': 'Nächstes Tutorial',
          'next': 'Weiter',
          'previous': 'Vorherige',
          'finish': 'Beenden',
          'skipPart': 'Teil überspringen',
          'currentPhoto': 'Dieses Foto kann jetzt bewertet werden',
          'toggleInfo': 'Infoleiste durch Klicken ein- und ausschalten.',
          'ratingSection': 'Bewertungsbereich',
          'hereYouCan': 'Hier kannst du das aktuelle Foto bewerten und die Bewertung abschicken.',
          'report': 'Melden',
          'rate': 'Bewerten',
          'comment': 'Kommentieren',
          'send': 'Abschicken',
          'onlyWhenSendSaved': 'Die Bewertung wird erst beim Klicken auf \'Abschicken\' versendet.',
          'pxc': 'Pixana-Münzen (PXC)',
          '5PXCforEveryRate':
              'Du erhälst für jede Bewertung 5 PXC. Pixana-Münzen werden zum erstellen eigener Tests benötigt.',
          'switchBetweenCategories': 'Wechsel zwischen verschiedenen Kategorien',
          'decideWhichGenderYouWantToRate': 'oder entscheide wen du bewerten willst!',
          'moreButtonRatingPage': 'Mehr',
          'hereIsTutorial': 'Hier kannst du das Tutorial erneut aufrufen.',
          //TUTORIALUSERTESTSPAGE
          'uploadSection': 'Hier sind deine eigenen Uploads',
          'listUploads': 'Du kannst deine Uploads jederzeit durch Herunterziehen aktualisieren.',
          'createNewTest': 'Neuen Test erstellen',
          'clickToStartTest': 'Klicke hier um einen neuen Test zu erstellen.',
          'uploadFilter': 'Filtere deine Tests (Uploads) nach Kategorien.',
          //TUTORIALPROFILEPAGE
          'statisticSection': 'Das ist der Statistikbereich',
          'averageDataPerCategory':
              'Hier siehst du eine Übersicht mit deinen durchschnittlichen Bewertungen pro Kategorie.',
          'categories': 'Das sind die Kategorien.',
          'eachCategoryHasOwnStatistic': 'Jede dieser Kategorien hat ihre eigene Statistik.',
          'chart': 'Bewertungen pro Region',
          'comparePerRegion':
              'Hier kannst du einsehen wie du in verschiedenen Regionen der Welt bewertet wirst.',
          //DIALOGS
          'reportThisPicture':
              'Du kannst dieses Foto melden wenn du der Meinung bist, dass es unerlaubte Inhalte enthält.',
          'resetPassword': 'Passwort zurücksetzen',
          'enterYourEmail': 'Gib bitte deine Email ein',
          'typeInEmailHere': 'Email hier eingeben...',
          'invalidEmail': 'Das ist keine echte Email.',
          'resetEmailSend': 'Wir haben dir eine Email zum zurücksetzen deines Passworts geschickt.',
          'loginFailed': 'Anmeldung fehlgeschlagen',
          'checkEmailOrPassword': 'Überprüfe deine Email und dein Passwort.',
          'SignUpFailed': 'Registrierung fehlgeschlagen',
          'emailMightAlreadyBeInUse':
              'Diese Email ist bereits mit einem existierenden Account verbunden.',
          'emailEmpty': 'Leere Email',
          'didntTypeInEmail': 'Du hast keine Email angegeben.',
          'consistOf6Characters': 'Das Passwort muss aus mind. 6 Zeichen bestehen.',
          'checkBothPasswords': 'Überprüfe beide Passwörter.',
          'information': 'Information',
          'missingInformationForSignUp': 'Es fehlen noch Informationen für die Anmeldung.',
          'verificationStatus': 'Verifizierungsstatus',
          'youAreVerified': 'Deine Email ist verifiziert.',
          'stillNotVerified':
              'Deine Email ist noch immer unverifiziert.\nWir haben dir gerade eine neue Bestätigungsemail geschickt.',
          'changePassword': 'Passwort ändern',
          'oldPasswordWrong': 'Das alte Passwort ist falsch.',
          'oldPassword': 'Altes Passwort eingeben',
          'newPassword': 'Neues Passwort eingeben',
          'repeatNewPassword': 'Neues Passwort wiederholen',
          'sureToSignOut': 'Willst du dich wirklich abmelden?',
          'iAmSure': 'Ja, ich bin sicher',
          'no': 'Nein',
          'yes': 'Ja',
          'canNotBeUndone':
              'Bist du dir sicher?\n Deine Daten werden permanent gelöscht und können nicht widerhergestellt werden!',
          'confirmDeletion': 'Löschen bestätigen',
          'enterPassword': 'Passwort eingeben',
          'wrongPassword': 'Das Passwort ist falsch.',
        },
      };
}
