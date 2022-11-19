// import 'dart:convert';

// class Aaa {
//   final String id;
//   final Caption caption;
//   final List<Media> media;
//   final String created_at;
//   final Author author;
//   final Spot spot;
//   final Relevant_comments relevant_comments;
//   final int number_of_comments;
//   final Liked_by liked_by;
//   final int number_of_likes;
//   final Tags tags;
//   final String url;
//   Aaa({
//     required this.id,
//     required this.caption,
//     required this.media,
//     required this.created_at,
//     required this.author,
//     required this.spot,
//     required this.relevant_comments,
//     required this.number_of_comments,
//     required this.liked_by,
//     required this.number_of_likes,
//     required this.tags,
//     required this.url,
//   });

//   Aaa copyWith({
//     String? id,
//     Caption? caption,
//     List<Media>? media,
//     String? created_at,
//     Author? author,
//     Spot? spot,
//     Relevant_comments? relevant_comments,
//     int? number_of_comments,
//     Liked_by? liked_by,
//     int? number_of_likes,
//     Tags? tags,
//     String? url,
//   }) {
//     return Aaa(
//       id: id ?? this.id,
//       caption: caption ?? this.caption,
//       media: media ?? this.media,
//       created_at: created_at ?? this.created_at,
//       author: author ?? this.author,
//       spot: spot ?? this.spot,
//       relevant_comments: relevant_comments ?? this.relevant_comments,
//       number_of_comments: number_of_comments ?? this.number_of_comments,
//       liked_by: liked_by ?? this.liked_by,
//       number_of_likes: number_of_likes ?? this.number_of_likes,
//       tags: tags ?? this.tags,
//       url: url ?? this.url,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'caption': caption.toMap(),
//       'media': media.map((x) => x.toMap()).toList(),
//       'created_at': created_at,
//       'author': author.toMap(),
//       'spot': spot.toMap(),
//       'relevant_comments': relevant_comments,
//       'number_of_comments': number_of_comments,
//       'liked_by': liked_by,
//       'number_of_likes': number_of_likes,
//       'tags': tags,
//       'url': url,
//     };
//   }

//   factory Aaa.fromMap(Map<String, dynamic> map) {
//     return Aaa(
//       id: map['id'] as String,
//       caption: Caption.fromMap(map['caption'] as Map<String, dynamic>),
//       media: List<Media>.from(
//         (map['media'] as List<int>).map<Media>(
//           (x) => Media.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//       created_at: map['created_at'] as String,
//       author: Author.fromMap(map['author'] as Map<String, dynamic>),
//       spot: Spot.fromMap(map['spot'] as Map<String, dynamic>),
//       relevant_comments: Relevant_comments.fromMap(
//           map['relevant_comments'] as Map<String, dynamic>),
//       number_of_comments: map['number_of_comments'].toInt() as int,
//       liked_by: Liked_by.fromMap(map['liked_by'] as Map<String, dynamic>),
//       number_of_likes: map['number_of_likes'].toInt() as int,
//       tags: Tags.fromMap(map['tags'] as Map<String, dynamic>),
//       url: map['url'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Aaa.fromJson(String source) =>
//       Aaa.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Aaa(id: $id, caption: $caption, media: $media, created_at: $created_at, author: $author, spot: $spot, relevant_comments: $relevant_comments, number_of_comments: $number_of_comments, liked_by: $liked_by, number_of_likes: $number_of_likes, tags: $tags, url: $url)';
//   }

//   @override
//   bool operator ==(covariant Aaa other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.caption == caption &&
//         listEquals(other.media, media) &&
//         other.created_at == created_at &&
//         other.author == author &&
//         other.spot == spot &&
//         other.relevant_comments == relevant_comments &&
//         other.number_of_comments == number_of_comments &&
//         other.liked_by == liked_by &&
//         other.number_of_likes == number_of_likes &&
//         other.tags == tags &&
//         other.url == url;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         caption.hashCode ^
//         media.hashCode ^
//         created_at.hashCode ^
//         author.hashCode ^
//         spot.hashCode ^
//         relevant_comments.hashCode ^
//         number_of_comments.hashCode ^
//         liked_by.hashCode ^
//         number_of_likes.hashCode ^
//         tags.hashCode ^
//         url.hashCode;
//   }
// }

// class Caption {
//   final String text;
//   final List<Tag> tags;
//   Caption({
//     required this.text,
//     required this.tags,
//   });

//   Caption copyWith({
//     String? text,
//     List<Tag>? tags,
//   }) {
//     return Caption(
//       text: text ?? this.text,
//       tags: tags ?? this.tags,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'text': text,
//       'tags': tags.map((x) => x.toMap()).toList(),
//     };
//   }

//   factory Caption.fromMap(Map<String, dynamic> map) {
//     return Caption(
//       text: map['text'] as String,
//       tags: List<Tag>.from(
//         (map['tags'] as List<int>).map<Tag>(
//           (x) => Tag.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Caption.fromJson(String source) =>
//       Caption.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Caption(text: $text, tags: $tags)';

//   @override
//   bool operator ==(covariant Caption other) {
//     if (identical(this, other)) return true;

//     return other.text == text && listEquals(other.tags, tags);
//   }

//   @override
//   int get hashCode => text.hashCode ^ tags.hashCode;
// }

// class Tag {
//   final String id;
//   final String tag_text;
//   final String display_text;
//   final String url;
//   final String type;
//   Tag({
//     required this.id,
//     required this.tag_text,
//     required this.display_text,
//     required this.url,
//     required this.type,
//   });

//   Tag copyWith({
//     String? id,
//     String? tag_text,
//     String? display_text,
//     String? url,
//     String? type,
//   }) {
//     return Tag(
//       id: id ?? this.id,
//       tag_text: tag_text ?? this.tag_text,
//       display_text: display_text ?? this.display_text,
//       url: url ?? this.url,
//       type: type ?? this.type,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'tag_text': tag_text,
//       'display_text': display_text,
//       'url': url,
//       'type': type,
//     };
//   }

//   factory Tag.fromMap(Map<String, dynamic> map) {
//     return Tag(
//       id: map['id'] as String,
//       tag_text: map['tag_text'] as String,
//       display_text: map['display_text'] as String,
//       url: map['url'] as String,
//       type: map['type'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Tag.fromJson(String source) =>
//       Tag.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Tag(id: $id, tag_text: $tag_text, display_text: $display_text, url: $url, type: $type)';
//   }

//   @override
//   bool operator ==(covariant Tag other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.tag_text == tag_text &&
//         other.display_text == display_text &&
//         other.url == url &&
//         other.type == type;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         tag_text.hashCode ^
//         display_text.hashCode ^
//         url.hashCode ^
//         type.hashCode;
//   }
// }

// class Media {
//   final String url;
//   final String blur_hash;
//   final String type;
//   Media({
//     required this.url,
//     required this.blur_hash,
//     required this.type,
//   });

//   Media copyWith({
//     String? url,
//     String? blur_hash,
//     String? type,
//   }) {
//     return Media(
//       url: url ?? this.url,
//       blur_hash: blur_hash ?? this.blur_hash,
//       type: type ?? this.type,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'url': url,
//       'blur_hash': blur_hash,
//       'type': type,
//     };
//   }

//   factory Media.fromMap(Map<String, dynamic> map) {
//     return Media(
//       url: map['url'] as String,
//       blur_hash: map['blur_hash'] as String,
//       type: map['type'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Media.fromJson(String source) =>
//       Media.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Media(url: $url, blur_hash: $blur_hash, type: $type)';

//   @override
//   bool operator ==(covariant Media other) {
//     if (identical(this, other)) return true;

//     return other.url == url &&
//         other.blur_hash == blur_hash &&
//         other.type == type;
//   }

//   @override
//   int get hashCode => url.hashCode ^ blur_hash.hashCode ^ type.hashCode;
// }

// class Author {
//   final String id;
//   final String username;
//   final String photo_url;
//   final String full_name;
//   final bool is_private;
//   final bool is_verified;
//   final String follow_status;
//   Author({
//     required this.id,
//     required this.username,
//     required this.photo_url,
//     required this.full_name,
//     required this.is_private,
//     required this.is_verified,
//     required this.follow_status,
//   });

//   Author copyWith({
//     String? id,
//     String? username,
//     String? photo_url,
//     String? full_name,
//     bool? is_private,
//     bool? is_verified,
//     String? follow_status,
//   }) {
//     return Author(
//       id: id ?? this.id,
//       username: username ?? this.username,
//       photo_url: photo_url ?? this.photo_url,
//       full_name: full_name ?? this.full_name,
//       is_private: is_private ?? this.is_private,
//       is_verified: is_verified ?? this.is_verified,
//       follow_status: follow_status ?? this.follow_status,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'username': username,
//       'photo_url': photo_url,
//       'full_name': full_name,
//       'is_private': is_private,
//       'is_verified': is_verified,
//       'follow_status': follow_status,
//     };
//   }

//   factory Author.fromMap(Map<String, dynamic> map) {
//     return Author(
//       id: map['id'] as String,
//       username: map['username'] as String,
//       photo_url: map['photo_url'] as String,
//       full_name: map['full_name'] as String,
//       is_private: map['is_private'] as bool,
//       is_verified: map['is_verified'] as bool,
//       follow_status: map['follow_status'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Author.fromJson(String source) =>
//       Author.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Author(id: $id, username: $username, photo_url: $photo_url, full_name: $full_name, is_private: $is_private, is_verified: $is_verified, follow_status: $follow_status)';
//   }

//   @override
//   bool operator ==(covariant Author other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.username == username &&
//         other.photo_url == photo_url &&
//         other.full_name == full_name &&
//         other.is_private == is_private &&
//         other.is_verified == is_verified &&
//         other.follow_status == follow_status;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         username.hashCode ^
//         photo_url.hashCode ^
//         full_name.hashCode ^
//         is_private.hashCode ^
//         is_verified.hashCode ^
//         follow_status.hashCode;
//   }
// }

// class Spot {
//   final String id;
//   final String name;
//   final List<Type> types;
//   final Logo logo;
//   final Location location;
//   final bool is_saved;
//   Spot({
//     required this.id,
//     required this.name,
//     required this.types,
//     required this.logo,
//     required this.location,
//     required this.is_saved,
//   });

//   Spot copyWith({
//     String? id,
//     String? name,
//     List<Type>? types,
//     Logo? logo,
//     Location? location,
//     bool? is_saved,
//   }) {
//     return Spot(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       types: types ?? this.types,
//       logo: logo ?? this.logo,
//       location: location ?? this.location,
//       is_saved: is_saved ?? this.is_saved,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'name': name,
//       'types': types.map((x) => x.toMap()).toList(),
//       'logo': logo.toMap(),
//       'location': location.toMap(),
//       'is_saved': is_saved,
//     };
//   }

//   factory Spot.fromMap(Map<String, dynamic> map) {
//     return Spot(
//       id: map['id'] as String,
//       name: map['name'] as String,
//       types: List<Type>.from(
//         (map['types'] as List<int>).map<Type>(
//           (x) => Type.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//       logo: Logo.fromMap(map['logo'] as Map<String, dynamic>),
//       location: Location.fromMap(map['location'] as Map<String, dynamic>),
//       is_saved: map['is_saved'] as bool,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Spot.fromJson(String source) =>
//       Spot.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Spot(id: $id, name: $name, types: $types, logo: $logo, location: $location, is_saved: $is_saved)';
//   }

//   @override
//   bool operator ==(covariant Spot other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.name == name &&
//         listEquals(other.types, types) &&
//         other.logo == logo &&
//         other.location == location &&
//         other.is_saved == is_saved;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         name.hashCode ^
//         types.hashCode ^
//         logo.hashCode ^
//         location.hashCode ^
//         is_saved.hashCode;
//   }
// }

// class Type {
//   final int id;
//   final String name;
//   final String url;
//   Type({
//     required this.id,
//     required this.name,
//     required this.url,
//   });

//   Type copyWith({
//     int? id,
//     String? name,
//     String? url,
//   }) {
//     return Type(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       url: url ?? this.url,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'name': name,
//       'url': url,
//     };
//   }

//   factory Type.fromMap(Map<String, dynamic> map) {
//     return Type(
//       id: map['id'].toInt() as int,
//       name: map['name'] as String,
//       url: map['url'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Type.fromJson(String source) =>
//       Type.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Type(id: $id, name: $name, url: $url)';

//   @override
//   bool operator ==(covariant Type other) {
//     if (identical(this, other)) return true;

//     return other.id == id && other.name == name && other.url == url;
//   }

//   @override
//   int get hashCode => id.hashCode ^ name.hashCode ^ url.hashCode;
// }

// class Logo {
//   final String url;
//   final String type;
//   Logo({
//     required this.url,
//     required this.type,
//   });

//   Logo copyWith({
//     String? url,
//     String? type,
//   }) {
//     return Logo(
//       url: url ?? this.url,
//       type: type ?? this.type,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'url': url,
//       'type': type,
//     };
//   }

//   factory Logo.fromMap(Map<String, dynamic> map) {
//     return Logo(
//       url: map['url'] as String,
//       type: map['type'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Logo.fromJson(String source) =>
//       Logo.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Logo(url: $url, type: $type)';

//   @override
//   bool operator ==(covariant Logo other) {
//     if (identical(this, other)) return true;

//     return other.url == url && other.type == type;
//   }

//   @override
//   int get hashCode => url.hashCode ^ type.hashCode;
// }

// class Location {
//   final double latitude;
//   final double longitude;
//   final String display;
//   Location({
//     required this.latitude,
//     required this.longitude,
//     required this.display,
//   });

//   Location copyWith({
//     double? latitude,
//     double? longitude,
//     String? display,
//   }) {
//     return Location(
//       latitude: latitude ?? this.latitude,
//       longitude: longitude ?? this.longitude,
//       display: display ?? this.display,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'latitude': latitude,
//       'longitude': longitude,
//       'display': display,
//     };
//   }

//   factory Location.fromMap(Map<String, dynamic> map) {
//     return Location(
//       latitude: map['latitude'].toDouble() as double,
//       longitude: map['longitude'].toDouble() as double,
//       display: map['display'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Location.fromJson(String source) =>
//       Location.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() =>
//       'Location(latitude: $latitude, longitude: $longitude, display: $display)';

//   @override
//   bool operator ==(covariant Location other) {
//     if (identical(this, other)) return true;

//     return other.latitude == latitude &&
//         other.longitude == longitude &&
//         other.display == display;
//   }

//   @override
//   int get hashCode => latitude.hashCode ^ longitude.hashCode ^ display.hashCode;
// }

// class Relevant_comments {}

// class Liked_by {}

// class Tags {}
