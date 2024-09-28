class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;



Note({
  required this.id,
  required this.title,
  required this.content,
  required this.modifiedTime,
});
}
List<Note> sampleNotes = [
  Note(
    id: 0,
    title: "Like and Subcribe",
    content: 'If you gracies corner merch',
    modifiedTime: DateTime(2024,1,2,5,0),
  ),
   Note(
    id: 1,
    title: "Gracies corner",
    content: 'Subcribe to our channel',
    modifiedTime: DateTime(2024,1,1,12,0),
  ),
   Note(
    id: 2,
    title: "Follow Us",
    content: 'Goodmorning, today is going to be a beatiful day, good morning, nothing gonna get in my way',
    modifiedTime: DateTime(2024,2,1,12,0),
  ),
  Note(
    id: 3,
    title: "Goodmorning",
    content: 'Buenos Dias',
    modifiedTime: DateTime(2024,1,1,12,0),
  ),
];
