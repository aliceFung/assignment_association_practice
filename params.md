<html>
<body>
  <form method="post" action = "/posts/1">
    <input type="text" name = "post[title]" value ="My Super Title"><br>
    <textarea name ="post[body]" value="body">Some Body of a Post</textarea><br>
    <input type="checkbox" name="post[tag_ids][]" value="1">Tag 1<br>
    <input type="checkbox" name="post[tag_ids][]" value="2">Tag 2<br>
    <input type="checkbox" name="post[tag_ids][]" value="3">Tag 3<br>
    <input type="checkbox" name="post[tag_ids][]" value="4">Tag 4<br>
    <input type="checkbox" name="post[tag_ids][]" value="5">Tag 5
    <input type="hidden" name="post[tag_ids][]" value = "">

    <input type="hidden" name = "_method" value = "patch">
    <input type="hidden" name = "authenticity_token" value ="+8liMahjMiyA0WFF8ef8wzXu72+xXIKxlYzuI5UcTC4=">
    <input type="hidden" name = "Commit" value ="Update Post">
    <input type="hidden" name = "id" value ="1">
    <input type="submit">

  </form>
</body>
</html>