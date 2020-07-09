function printHelloWithButton(){
  // let button = document.querySelector('.subContainer');

  // button.addEventListener('click', function(){
  //   console.log('ボタンがクリックされました');
  // });
  
  $(".subContainer").click(function(){
    console.log("hello");
    // $(this).toggleClass("active");
    // $(this).next().toggleClass("menu");
    // $('ul li').hide();
    $('.menu').each(function(){
      $(this).fadeToggle(200);
      document.getElementById("color").style.backgroundColor = "black";
    });
  })
}

window.addEventListener("load", printHelloWithButton);