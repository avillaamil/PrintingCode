class Blurbs{
  
  String arabic = "في يوم ديسمبر٢١ من سنة ألفين و اثناعشر, ستعلن وكالة ناسا عن اكتشاف قامت بها على تربة كوكب المريخ.";
  String binaryascii = "010011110110111000100000010001000110010101100011011001010110110101100010011001010111001000100000001100100011000100100000011011110110011000100000011101000110100001100101001000000111100101100101011000010111001000100000011101000111011101100101011011100111010001111001001011010111010001110111011001010110110001110110011001010010110000100000010011100100000101010011010000010010000001110111011010010110110001101100001000000110110101100001011010110110010100100000011000010010000001100111011100100110111101110101011011100110010001100010011100100110010101100001011010110110100101101110011001110010000001100001011011100110111001101111011101010110111001100011011001010110110101100101011011100111010000100000011100100110010101100111011000010111001001100100011010010110111001100111001000000110000100100000011001000110100101110011011000110110111101110110011001010111001001111001001000000110110101100001011001000110010100100000011010010110111000100000011101000110100001100101001000000111001101101111011010010110110000100000011011110110011000100000011100000110110001100001011011100110010101110100001000000100110101100001011100100111001100101110";
  String catalan = "El 21 de Desembre de l'any dos-mil dotze (2012 would be more common), la NASA farà un anunci revolucionari sobre un descobriment al sòl del planeta Mart.";
  String chinese = "在2012年12月21日, 美國太空總署(NASA)將發表關於火星土壤探測的重大突破";
  String english = "On December 21 of the year twenty-twelve, NASA will make a groundbreaking announcement regarding a discovery made in the soil of planet Mars.";
  String esperanto = "21 de decembro de la jaro dudek-dekdu, NASA faros pionira anonco pri malkovro farita en la grundo de la planedo Marso.";
  String french = "Le 21 décembre 2012, la NASA fera une annonce révolutionnaire à propos d'une découverte faite sur le sol de la planète Mars.";
  String german = "NASA wird am 21. Dezember im Jahre zweitausend-zwölf Bahnbrechendes über den Fund von etwas in der Erde auf dem Mars verkünden.";
  String hebrew = "ב-21 לדצמבר 2012, תצא סוכנות החלל האמריקאית בהצהרה פורצת דרך אודות תגלית חדשה באדמת מאדים.";
  String hindi = "दो ह्जार बारह के इक्कीस दिसम्बर को, नासा(NASA), मङ्गल ग्रिह कि मिट्टी मे की गयि खोज के बरे मे एक घोषणा करेगि। .";
  String italian = "Il 21 dicembre del anno duemila dodici, NASA farà un annuncio rivoluzionario per quanto riguarda una scoperta fatta nel suolo del pianeta Marte.";
  String kannada = "ಡಿಸೆಂಬರ್ 21, 2012 ರಲ್ಲಿ, ನಾಸಾ  ತಿಂಗಳು ಮಂಗಳ ಗ್ರಹದ ಮಣ್ಣಿನ ಬಗ್ಗೆ, ಒಂದು";
  String korean = "2012년 12월 21일, 미 항공우주국(NASA)은 화성의 토양 연구를 토대로 한 조사 결과에 대해 중대발표할 예정이다.";
  String marathi = "दोन ह्जार बाराच्य एक्वीस डिसेम्बर ला, नासा(NASA), मङ्ग्ळ ग्रुहाच्या मतीत लागलेल्य शोधाबद्दल एक अभिनव घोषणा करणार आहे. ";
  String morsecode = "--- -. / -.. . -.-. . -- -... . .-. / ..--- .---- / --- ..-. / - .... . / -.-- . .- .-. / - .-- . -. - -.-- -....- - .-- . .-.. ...- . --..-- / -. .- ... .- / .-- .. .-.. .-.. / -- .- -.- . / .- / --. .-. --- ..- -. -.. -... .-. . .- -.- .. -. --. / .- -. -. --- ..- -. -.-. . -- . -. - / .-. . --. .- .-. -.. .. -. --. / .- / -.. .. ... -.-. --- ...- . .-. -.-- / -- .- -.. . / .. -. / - .... . / ... --- .. .-.. / --- ..-. / .--. .-.. .- -. . - / -- .- .-. ... .-.-.-";
  String piglatin = "Onway Ecemberday entytway irstfay ofway ethay earyay entytway-elvetway, ASANay illway akemay away oundgray-eakingbray ouncementannay egardingray away iscoveryday ademay inway ethay oilsay ofway anetplay Arsmay.";
  String portugese = "Em 21 de dezembro de 2012, a NASA fará um anúncio revolucionário acerca de uma descoberta feita no solo do planeta Marte.";
  String python = "import statement.";
  String romanian = "Pe 21 Decembrie in anul doua mii doispsrezece, NASA va face un anunt cu privire la o descoperire revolutionara facuta in solul planetei Marte.";
  String russian = "21го декабря, две тысячи двенадцатого года, НАСА объявит результаты потрясающего открытия о почве планеты марса.";
  String spanish = "El 21 de diciembre del 2012,  la NASA anunciará noticias revolucionarias acerca de un descubrimiento que se hizo en el suelo del planeta Marte.";
  String turkish = "NASA, 21 Aralık 2012 tarihinde, Mars gezegeni topraklarında yapılmış bir keşif konusunda çığır açan bir duyuru yapacaktır.";  
  
  void displayBlurbs(){   
    WeightedRandomSet<String> languages = new WeightedRandomSet<String>();
    languages.add(arabic, 10);
    languages.add(binaryascii, 10);
    languages.add(catalan, 10);
    languages.add(chinese, 10);
    languages.add(english, 10);    
    languages.add(esperanto, 10);
    languages.add(french, 10);
    languages.add(german, 10);
    languages.add(hebrew, 10);
    languages.add(hindi, 10);
    languages.add(italian, 10);
    languages.add(kannada, 10);
    languages.add(korean, 10);
    languages.add(marathi, 10);
    languages.add(morsecode, 10);
    languages.add(piglatin, 10);
    languages.add(portugese, 10);
    languages.add(python, 10);
    languages.add(romanian, 10);
    languages.add(russian, 10);
    languages.add(spanish, 10);
    languages.add(turkish, 10);
    
    String language1 = languages.getRandom();
    String language2 = languages.getRandom();

    canvas.beginDraw();
    Module startModule = new Module(canvas_width/20, canvas_height - 1040, 500, textWidth(language1));
   
    canvas.text(language1, startModule.x, startModule.y, startModule.w, startModule.h);
    canvas.text(language2, startModule.x * 2 + startModule.w, startModule.y, startModule.w, startModule.h);
    canvas.endDraw();
  }
}


