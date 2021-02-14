import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(nullable: false)
class ProductModel {
  String status;
  List<Videos> videos;
  List<MiniCourses> miniCourses;
  List<Podcasts> podcasts;
  String message;
  List<Blogs> blogs;

  ProductModel({
    this.status,
    this.videos,
    this.miniCourses,
    this.podcasts,
    this.message,
    this.blogs,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['videos'] != null) {
      videos = new List<Videos>();
      json['videos'].forEach((v) {
        videos.add(new Videos.fromJson(v));
      });
    }
    if (json['mini_courses'] != null) {
      miniCourses = new List<MiniCourses>();
      json['mini_courses'].forEach((v) {
        miniCourses.add(new MiniCourses.fromJson(v));
      });
    }
    if (json['podcasts'] != null) {
      podcasts = new List<Podcasts>();
      json['podcasts'].forEach((v) {
        podcasts.add(new Podcasts.fromJson(v));
      });
    }
    message = json['message'];
    if (json['blogs'] != null) {
      blogs = new List<Blogs>();
      json['blogs'].forEach((v) {
        blogs.add(new Blogs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.videos != null) {
      data['videos'] = this.videos.map((v) => v.toJson()).toList();
    }
    if (this.miniCourses != null) {
      data['mini_courses'] = this.miniCourses.map((v) => v.toJson()).toList();
    }
    if (this.podcasts != null) {
      data['podcasts'] = this.podcasts.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    if (this.blogs != null) {
      data['blogs'] = this.blogs.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'ProductModel(status: $status, videos: $videos, miniCourses: $miniCourses, podcasts: $podcasts, message: $message, blogs: $blogs)';
  }
}

class Videos {
  int id;
  String title;
  String category;
  bool published;
  String publishDate;
  String publishTime;
  String author;
  String thumbnailUrl;

  Videos(
      {this.id,
      this.title,
      this.category,
      this.published,
      this.publishDate,
      this.publishTime,
      this.author,
      this.thumbnailUrl});

  Videos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    category = json['category'];
    published = json['published'];
    publishDate = json['publish_date'];
    publishTime = json['publish_time'];
    author = json['author'];
    thumbnailUrl = json['thumbnail_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['category'] = this.category;
    data['published'] = this.published;
    data['publish_date'] = this.publishDate;
    data['publish_time'] = this.publishTime;
    data['author'] = this.author;
    data['thumbnail_url'] = this.thumbnailUrl;
    return data;
  }

  @override
  String toString() {
    return 'Videos(id: $id, title: $title, category: $category, published: $published, publishDate: $publishDate, publishTime: $publishTime, author: $author, thumbnailUrl: $thumbnailUrl)';
  }
}

class MiniCourses {
  int id;
  String title;
  String category;
  bool published;
  String publishDate;
  String publishTime;
  String author;
  String thumbnailUrl;

  MiniCourses(
      {this.id,
      this.title,
      this.category,
      this.published,
      this.publishDate,
      this.publishTime,
      this.author,
      this.thumbnailUrl});

  MiniCourses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    category = json['category'];
    published = json['published'];
    publishDate = json['publish_date'];
    publishTime = json['publish_time'];
    author = json['author'];
    thumbnailUrl = json['thumbnail_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['category'] = this.category;
    data['published'] = this.published;
    data['publish_date'] = this.publishDate;
    data['publish_time'] = this.publishTime;
    data['author'] = this.author;
    data['thumbnail_url'] = this.thumbnailUrl;
    return data;
  }

  @override
  String toString() {
    return 'MiniCourses(id: $id, title: $title, category: $category, published: $published, publishDate: $publishDate, publishTime: $publishTime, author: $author, thumbnailUrl: $thumbnailUrl)';
  }
}

class Podcasts {
  int id;
  String title;
  String category;
  bool published;
  String publishDate;
  String publishTime;
  String author;
  String thumbnailUrl;

  Podcasts(
      {this.id,
      this.title,
      this.category,
      this.published,
      this.publishDate,
      this.publishTime,
      this.author,
      this.thumbnailUrl});

  Podcasts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    category = json['category'];
    published = json['published'];
    publishDate = json['publish_date'];
    publishTime = json['publish_time'];
    author = json['author'];
    thumbnailUrl = json['thumbnail_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['category'] = this.category;
    data['published'] = this.published;
    data['publish_date'] = this.publishDate;
    data['publish_time'] = this.publishTime;
    data['author'] = this.author;
    data['thumbnail_url'] = this.thumbnailUrl;
    return data;
  }

  @override
  String toString() {
    return 'Podcasts(id: $id, title: $title, category: $category, published: $published, publishDate: $publishDate, publishTime: $publishTime, author: $author, thumbnailUrl: $thumbnailUrl)';
  }
}

class Blogs {
  int id;
  String title;
  String category;
  bool published;
  String publishDate;
  String publishTime;
  String author;
  String thumbnailUrl;

  Blogs(
      {this.id,
      this.title,
      this.category,
      this.published,
      this.publishDate,
      this.publishTime,
      this.author,
      this.thumbnailUrl});

  Blogs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    category = json['category'];
    published = json['published'];
    publishDate = json['publish_date'];
    publishTime = json['publish_time'];
    author = json['author'];
    thumbnailUrl = json['thumbnail_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['category'] = this.category;
    data['published'] = this.published;
    data['publish_date'] = this.publishDate;
    data['publish_time'] = this.publishTime;
    data['author'] = this.author;
    data['thumbnail_url'] = this.thumbnailUrl;
    return data;
  }

  @override
  String toString() {
    return 'Blogs(id: $id, title: $title, category: $category, published: $published, publishDate: $publishDate, publishTime: $publishTime, author: $author, thumbnailUrl: $thumbnailUrl)';
  }
}
