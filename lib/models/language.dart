class Language{
  final int id;
  final String name;
  final String languageCode;
  Language({this.id,this.name,this.languageCode});

  static List<Language> languageList(){
    return <Language>[
      Language(id: 0,name: 'English',languageCode: 'en'),
      Language(id: 1,name: 'हिंदी',languageCode: 'hn'),
      Language(id: 2,name: 'ಕನ್ನಡ',languageCode: 'kn'),
    ];
  }

}