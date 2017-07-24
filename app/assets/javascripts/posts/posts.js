function toggleComments() {
    var commentButton = document.getElementById('comment-button')
    var comments = document.getElementById('comment-section');
    if (comments.style.display === 'none') {
      commentButton.innerText = 'Hide Comment Section'
        comments.style.display = 'block';
    } else {
        comments.style.display = 'none';
        commentButton.innerText = 'Show Comment Section'
    }
  }
