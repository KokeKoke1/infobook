const row = document.querySelector(".row");
let postsList = [];
let posts = 0;
// const nav = document.querySelector("nav");

// window.addEventListener("scroll", () => {
    
//     if (this.scrollY > 50) {
//         nav.style.position = "fixed";
//         nav.style.padding = "0px 10px 0px 10px";
//     } else {
//         nav.style.position = "";
//         nav.style.padding = "15px 10px 15px 10px";
//     }
// })
const postCreateElement = (selector, className) => {
    let e = document.createElement(selector);
    if (className != null) {
        e.classList.add(className);
    }
    return e;
}

async function generatePost(number) {
    try {
        if (postsList.length == 0) {
            let result = await fetch("app/api.php", {
                method: "POST",
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    option: "getPosts"
                })
            })
            let data = await result.json()
            for (let i=0;i<data.length;i++) {
                postsList.push(data[i]);
            }
        }
        for (let i=0;i<number;i++) {
            if (posts < postsList.length) {
                createPost(postsList[posts].ID, postsList[posts].NAME, postsList[posts].AVATAR, postsList[posts].TEXT, postsList[posts].DATA, postsList[posts].LIKED, postsList[posts].YOU);
                posts++;
            }
        }
    }
    catch { console.log("Error"); }
}

const createPost = (id,n,a,t,ti,li,youliked) => {
    let card = postCreateElement("div", "card");

    let author = postCreateElement("div", "author");
    let name = postCreateElement("div", "name");
    let avatar = postCreateElement("img", "avatar");

    let text = postCreateElement("div", "text");

    let menu = postCreateElement("div", "menu");
    let like = postCreateElement("span", "like");
    let btnlike = postCreateElement("button", null);
    
    btnlike.addEventListener("click", () => {
        fetch("app/api.php", {
            method: "POST",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                option: "switchLike",
                id: id
            })
        }).then(result => result.json())
        .then(data => {
            if (data == "1") { btnlike.innerHTML = '<i class="fas fa-thumbs-up"></i>'; like.textContent = like.textContent*1+1; }
            else { btnlike.innerHTML = '<i class="far fa-thumbs-up"></i>'; like.textContent = like.textContent*1-1; }
        })
    });

    author.appendChild(avatar);
    author.appendChild(name);

    menu.appendChild(like);
    menu.appendChild(btnlike);

    card.appendChild(author);
    card.appendChild(text);
    card.appendChild(menu);

    row.appendChild(card);

    avatar.src = "https://forum.truckersmp.com/uploads/monthly_2021_08/imported-photo-136318.thumb.png.4ae49dbe9dcce1fde0550403156793e9.png";

    like.textContent = li;
    if (youliked == true) {
        btnlike.innerHTML = '<i class="fas fa-thumbs-up"></i>';
    } else {
        btnlike.innerHTML = '<i class="far fa-thumbs-up"></i>';
    }
    setTimeout(() => {
        if (a != "") {
            avatar.src = a;
        }
        name.innerHTML = `${n}<div class="time">${ti}</div>`;
        text.innerHTML = t;
        if (document.body.clientHeight == document.body.scrollHeight) {
            generatePost(1);
        }
    }, 1200);
}

generatePost(3);

window.addEventListener("scroll", () => {
    if (this.scrollY+document.body.clientHeight+50 > document.body.scrollHeight)
    generatePost(3);
})