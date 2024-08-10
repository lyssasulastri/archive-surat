
const menubuttons = document.querySelectorAll("ul.wrapper li.menu");
menubuttons.forEach((button,index) => {
    button.addEventListener("click",function(){
            var link    = button.querySelector("a");
            var activemenu  = document.querySelectorAll("ul.wrapper li.menu .active");
            activemenu.forEach(element => {
                element.classList.remove("active");
            });
            link.classList.toggle("active");
    });
});

const submenubuttons = document.querySelectorAll("ul li.submenu a.button");
submenubuttons.forEach((button,index) => {
    button.addEventListener("click",function(){
        var icon    = button.querySelector("i:last-child");
        var submenu = button.closest('li').querySelector("ul.content");
        if (icon && (icon.classList.contains("bxs-chevron-right") || icon.classList.contains("bxs-chevron-down"))) {
            icon.classList.toggle('bxs-chevron-right');
            icon.classList.toggle('bxs-chevron-down');
            submenu.classList.toggle("show");
        }
    });
});
const divsidebar = document.querySelector(".sidebar");
const bx_x = document.querySelector(".bx-x");
bx_x.addEventListener("click", function(){
    bx_x.classList.toggle("change");
    divsidebar.classList.toggle("show");
});

const humburgermenu = document.querySelector(".humburger-menu");
humburgermenu.addEventListener("click", function(){
    humburgermenu.classList.toggle("change");
    divsidebar.classList.toggle("show");
});