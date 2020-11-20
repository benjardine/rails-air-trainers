import Bideo from 'bideo.js'

const backgroundVideo = () => {
  const background = document.querySelector('#background_video');
  if (background){
    const bv = new Bideo();
    console.log(bv);
    console.log('hello');
    bv.init({
      // Video element
      videoEl: document.querySelector('#background_video'),
      
      // Container element
      container: document.querySelector('body'),
      
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
  
    });
  }

}

  export { backgroundVideo };
