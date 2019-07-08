class Post{
  final String title;
  final String author;
  final String imageUrl;
  
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    title: '数学',
    author: '佚名_Math',
    imageUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3743716524,2025755792&fm=26&gp=0.jpg'
  ),
  Post(
    title: '英语',
    author: '佚名_Eng',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562579153398&di=b7e27a89366a6b9fc4f9db261b7437c6&imgtype=0&src=http%3A%2F%2Fimage.antns.com%2Fuploads%2F20180716%2F14%2F1531723585-KjbDFCRyzA.jpg'
  ),
  Post(
    title: '语文',
    author: '佚名_Cn',
    imageUrl: 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2067914355,1762159198&fm=26&gp=0.jpg'
  )
];
