class ChatMessage {
  final int id;
  final String content;
  final int type; // 0 = text, 1 = image, 2 = sticker, 3 = audio, 4 = video
  final DateTime timestamp;
  final String avatar;
  final String displayName;
  final bool owner;

  ChatMessage(this.id, this.content, this.type, this.timestamp, this.avatar, this.displayName, this.owner);
}

List<ChatMessage> listMessage = [
  ChatMessage(1, "Anim aute aliqua culpa culpa nulla incididunt est cupidatat.", 0, new DateTime.now().subtract(new Duration(minutes: 9)), "assets/images/avatar.png", "Johny", true),
  ChatMessage(2, "assets/images/placeholder.png", 1, new DateTime.now().subtract(new Duration(minutes: 8)), "assets/images/avatar.png", "Johny", false),
  ChatMessage(3, "Anim aute aliqua culpa culpa nulla incididunt est cupidatat.", 0, new DateTime.now().subtract(new Duration(minutes: 7)), "assets/images/avatar.png", "Johny", true),
  ChatMessage(4, "Anim aute aliqua culpa culpa nulla incididunt est cupidatat.", 0, new DateTime.now().subtract(new Duration(minutes: 6)), "assets/images/avatar.png", "John Doe", false),
  ChatMessage(5, "assets/audios/audio.mp3", 3, new DateTime.now().subtract(new Duration(minutes: 6)), "assets/images/avatar.png", "John Doe", false),
  ChatMessage(6, "Anim aute aliqua culpa culpa nulla incididunt est cupidatat.", 0, new DateTime.now().subtract(new Duration(minutes: 5)), "assets/images/avatar.png", "Johny", true),
  ChatMessage(7, "assets/videos/video.mp4", 4, new DateTime.now().subtract(new Duration(minutes: 3)), "assets/images/avatar.png", "Johny", true),
  ChatMessage(8, "Anim aute aliqua culpa culpa nulla incididunt est cupidatat.", 0, new DateTime.now().subtract(new Duration(minutes: 2)), "assets/images/avatar.png", "John Doe", false),
  ChatMessage(9, "assets/stickers/bigemoji/391902150_HEARTEYE_EMOJI_400.png", 2, new DateTime.now().subtract(new Duration(minutes: 1)), "assets/images/avatar.png", "Johny", true),
];

var reversedListMessage = new List.from(listMessage.reversed);
