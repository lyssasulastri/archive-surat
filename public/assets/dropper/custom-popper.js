
function closedown(id) {
    this.id = id;
  
    const elements = [
        'contents', 
        'header', 
        'setting', 
        'fullscreen',
        'sidebar',
        'footer'
        
    ].map(selector => document.querySelector(`#${selector}`));
    const content = document.querySelector(`#${this.id}`);
  
    this.hide = function() {
      elements.forEach(element => {
        if(element){
            element.addEventListener('click', () => {
                if (content.hasAttribute('data-show')) {
                  content.removeAttribute('data-show');
                }
              });
        }
      });
    };
  }

function dropdown(id, content, option){
    this.id       = id;
    this.content  = content;
    this.option   = option;

    const showEvents = ['mouseenter', 'focus'];
    const hideEvents = ['mouseleave', 'blur'];

    let button = document.querySelector(`#${this.id}`);
    let view   = document.querySelector(`#${this.content}`);
    let header = document.querySelector('header');


    const popperInstance = Popper.createPopper(button,view,this.option);

    this.create    = function(){
        Popper.createPopper(button,view,this.option);
    } 

    this.show  = function(){
        showEvents.forEach((event) => {
            button.addEventListener(event, function(test){
                view.setAttribute('data-show', '');
                popperInstance.update();
            });
        });
        
        hideEvents.forEach((event) => {
            button.addEventListener(event, function(test){
                view.removeAttribute('data-show');
            });
        });
    } 

    this.clicked = function(){
        button.addEventListener("click",function(e){
            if(view.hasAttribute('data-show')){
                view.removeAttribute('data-show');
            } else {
                view.setAttribute('data-show', '');
                popperInstance.update();
            }
        });
  
    }

}



// Notifikasi
const notifikasi = new dropdown('notifikasi','notifikasi-content',{
    placement: 'bottom-end',
    modifiers: [
        {
        name: 'offset',
        options: {
            offset: [0, 25],
        },
        }
    ]
});
notifikasi.create();
notifikasi.clicked();


// close-argument
const divheader = new closedown('notifikasi-content');
divheader.hide();