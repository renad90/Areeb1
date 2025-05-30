import 'package:areeb/classes/Artist.dart';
import 'package:areeb/classes/post.dart';

// artists
Artist artist1 = Artist(
    username: "jano28",
    password: "janajana",
    imagePath: "assets/JanaPFP.jpeg",
    followersCount: 223,
    bio: "lover of culture",
    location: "jeddah",
    displayName: "jana");

Artist artist2 = Artist(
    username: "mayaa04",
    password: "mayamaya",
    imagePath: "assets/MayaPFP.jpg",
    followersCount: 223,
    bio: "your friendly neighbourhood siren",
    location: "makkah",
    displayName: "mayaa");

Artist artist3 = Artist(
    username: "reno00",
    password: "renadrenad",
    imagePath: "assets/renadPFP.jpg",
    followersCount: 223,
    bio: "painting is life",
    location: "jeddah",
    displayName: "reno");

// visual arts
// painters post OLD
Post post1 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost1.jpeg",
  artist1.displayName,
  title: "sea",
  artist: artist1,
  description: "in this paint i wanted to resemble the sea as much as i could",
  subCategory: "painters",
);

Post post2 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost2.jpeg",
  artist2.displayName,
  title: "my studio",
  artist: artist2,
  description: "the place where all the artistry came from <3",
  subCategory: "painters",
);

Post post3 = Post(
    DateTime(2024, 8, 28), "assets/PaintersPost3.jpeg", artist3.displayName,
    title: "Mountain Landscape",
    artist: artist3,
    description:
        "a paint the captures Serene mountain landscape with a winding river and vibrant wildflowers.",
    subCategory: "painters");

Post post4 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost4.jpeg",
  artist1.displayName,
  title: "Artist's Haven",
  artist: artist1,
  description: "the inspiring and productive environment of an artist at work.",
  subCategory: "painters",
);

Post post5 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost5.jpeg",
  artist2.displayName,
  title: "Majestic Mountain Sunset",
  artist: artist2,
  description:
      "this painting captures a breathtaking view of a mountainous region at sunset",
  subCategory: "painters",
);

Post post6 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost6.jpeg",
  artist3.displayName,
  title: "after artblock",
  artist: artist3,
  description:
      "going back to my studio after my art block phase, ik it's a little messy.",
  subCategory: "painters",
);

Post post7 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost7.jpeg",
  artist1.displayName,
  title: "forest tranquility",
  artist: artist1,
  description: "capturing the peaceful essence of a forest",
  subCategory: "painters",
);

Post post8 = Post(
  DateTime(2024, 8, 28),
  "assets/PaintersPost8.jpeg",
  artist2.displayName,
  title: "Istanbul landscape",
  artist: artist2,
  description: "a canvas the captures the nature of Istanbul.",
  subCategory: "painters",
);

// photography posts
Post post9 = Post(
  DateTime(2023, 7, 13),
  "assets/Photographerspost1.jpeg",
  artist3.displayName,
  title: "Rooftop",
  artist: artist3,
  description: "this is what i imagine adonis's rooftop to look like",
  subCategory: "Photographers",
);

Post post10 = Post(
  DateTime(2024, 5, 10),
  "assets/Photographerspost2.jpeg",
  artist2.displayName,
  title: "Wallflower",
  artist: artist2,
  description: "bury me in the trees, the flowers",
  subCategory: "Photographers",
);

Post post11 = Post(DateTime(2024, 10, 10), "assets/Photographerspost3.jpeg",
    artist2.displayName,
    title: "lookalike",
    artist: artist2,
    description: "Graceful silhouettes entwined in harmony",
    subCategory: "Photographers");

Post post12 = Post(
  DateTime(2023, 11, 18),
  "assets/Photographerspost4.jpeg",
  artist3.displayName,
  title: "Lost in contemplation",
  artist: artist3,
  description: "poised upon a stone, gazes into the vast expanse of the abyss",
  subCategory: "Photographers",
);

Post post13 = Post(
  DateTime(2023, 2, 19),
  "assets/Photographerspost5.jpeg",
  artist3.displayName,
  title: "Night's Embrace",
  artist: artist3,
  description: "Whispers of moonlight in her hands",
  subCategory: "Photographers",
);

Post post14 = Post(
  DateTime(2023, 12, 13),
  "assets/Photographerspost6.jpeg",
  artist1.displayName,
  title: "Silent Reverie",
  artist: artist1,
  description: "Amidst the veils of fog",
  subCategory: "Photographers",
);

Post post15 = Post(
  DateTime(2024, 9, 11),
  "assets/Photographerspost7.jpeg",
  artist3.displayName,
  title: "Street Symphony",
  artist: artist3,
  description: "each step a portrait of resilience and determination",
  subCategory: "Photographers",
);

Post post16 = Post(
  DateTime(2024, 8, 28),
  "assets/Photographerspost8.jpeg",
  artist2.displayName,
  title: "Women of Stone",
  artist: artist2,
  description:
      "Women, like pillars of strength, uphold the ancient echoes of Greek architecture",
  subCategory: "Photographers",
);

//GraphicDesignrs Post
Post post17 = Post(
  DateTime(2024, 8, 28),
  "assets/Graphicdesignerspost1.jpeg",
  artist1.displayName,
  title: "Splend Haircare Brand",
  artist: artist1,
  description:
      "vibrant and playful packaging design of the Splend haircare brand",
  subCategory: "GraphicDesigners",
);

Post post18 = Post(
  DateTime(2024, 8, 28),
  "assets/Graphicdesignerspost2.jpeg",
  artist2.displayName,
  title: "Dairy Brand",
  artist: artist2,
  description:
      "packaging design of the dairy brand, featuring a cat character and bold blue color",
  subCategory: "GraphicDesigners",
);

Post post19 = Post(
  DateTime(2024, 8, 28),
  "assets/Graphicdesignerspost3.jpeg",
  artist2.displayName,
  title: "Gooeters Packaging Design",
  artist: artist2,
  description:
      "design for cake packaging featuring a simple yet expressive logo and playful duck characters",
  subCategory: "GraphicDesigners",
);

Post post20 = Post(
  DateTime(2024, 8, 28),
  "assets/Graphicdesignerspost4.jpeg",
  artist2.displayName,
  title: "Jack's Burger",
  artist: artist2,
  description: "my design for the jack's burger, hope u like it.",
  subCategory: "GraphicDesigners",
);

Post post21 = Post(
  DateTime(2024, 8, 28),
  "assets/Graphicdesignerspost5.jpeg",
  artist2.displayName,
  title: "Cookie Dough Packaging",
  artist: artist2,
  description: "playful packaging design for the Wonderio cookie dough product",
  subCategory: "GraphicDesigners",
);

Post post22 = Post(
  DateTime(2024, 8, 28),
  "assets/Graphicdesignerspost6.jpeg",
  artist2.displayName,
  title: "Popoke",
  artist: artist2,
  description: "New visual identity for popoke restraint that i made.",
  subCategory: "GraphicDesigners",
);

Post post23 = Post(
  DateTime(2024, 8, 28),
  "assets/Graphicdesignerspost7.jpeg",
  artist1.displayName,
  title: "Milky Organic Packaging",
  artist: artist1,
  description:
      "whimsical packaging design for the Milky Organic dairy brand, featuring a fun and eye-catching ",
  subCategory: "GraphicDesigners",
);

Post post24 = Post(
  DateTime(2024, 8, 28),
  "assets/Graphicdesignerspost8.jpeg",
  artist2.displayName,
  title: "Theshear Coffee Shop",
  artist: artist2,
  description:
      "cohesive and visually striking branding design, featuring a minimalist yet playful aesthetic with a bold logo, illustrated icons, and consistent packaging elements",
  subCategory: "GraphicDesigners",
);
