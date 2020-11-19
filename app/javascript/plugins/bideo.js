import Bideo from 'bideo.js'

const backgroundVideo = () => {
  const background = document.querySelector('#background_video');
  if (background){
    (function () {
    var bv = new Bideo();
    bv.init({
      // Video element
      videoEl: document.querySelector('#background_video'),

      // Container element
      container: document.querySelector('#index'),

      // Resize
      resize: true,

      // autoplay: false,

      // Array of objects containing the src and type
      // of different video formats to add
      src: [
        {
          src: 'https://res.cloudinary.com/dzyd1ynmn/video/upload/v1605729098/video_tqhzjz.mp4',
          type: 'video/mp4'
        },
        // {
        //   src: 'https://res.cloudinary.com/dzyd1ynmn/video/upload/v1605729430/video_1_hjvyyv.mp4',
        //   type: 'video/mp4'
        // }
      ],

      // What to do once video loads (initial frame)
      onLoad: function () {
        document.querySelector('#video_cover').style.display = 'none';
      }
    });
  });
  }

}

  export { backgroundVideo };
