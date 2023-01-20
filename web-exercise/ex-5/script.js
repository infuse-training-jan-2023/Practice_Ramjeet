async function fetch_pokemons(url){
        const response=await fetch(url);
        const data= await response.json();
        console.log(data);
        show_on_screen(data);
}
async function fetch_pokemon_details(pok){
    const response=await fetch(pok.url);
    const data= await response.json();
    console.log(data);
    store_data.push(data);

    render_card(data);
            
}
function render_card(data){
    const el = document.createElement('div');
    const image = document.createElement('img');
    const btn = document.createElement('button');
    btn.textContent="Read More";
    // btn.onclick=show_details(data,pok);

    btn.addEventListener("click", ()=>{
        // let frameUrl="frame.html";
        // let page=window.open(frameUrl, "description");
        // let details= page.document.getElementById("details");
        // details.textContent="abcd";
        
        const iframeDocument = document.querySelector("iframe").contentDocument;
        iframeDocument.body.style="font-size:20px;padding:35px;background-color:black;color:white;";
       let h;
       h="180px";
        iframeDocument.body.innerHTML = "<div><h2>Pokemon Details</h2><img height="+h+" src='"+data.sprites.front_shiny+"'><img src='"+data.sprites.back_shiny+"'><div>id: "+data.id+"</div><div>Name:"+data.name+"</div><div>base_experience: "+data.base_experience+"</div><div>height: "+data.height+"</div><div>Stats: "+data.stats[0].base_stat+"</div><div>Type: "+data.types[0].type.name+"</div></div>";
    });
    
    image.src=data.sprites.front_default;
    image.addEventListener("mouseout", ()=>{
        image.src=data.sprites.front_default;
    });
    image.addEventListener("mouseover", ()=>{
        image.src=data.sprites.back_default

    });
    el.classList.add("grid-item");
   
    card_content="Name:"+data.name+"<br>Weight: "+data.weight+"<br>base-experience: "+data.base_experience+"<br>";
    el.innerHTML=card_content;
    const box = document.getElementsByClassName('grid-container')[0];
    el.appendChild(image);
    el.appendChild(btn);
    box.appendChild(el);

    
}
function send_data(data){
    
    values_store=data;
    // alert("Copied");
}
function show_on_screen(data){

        data.results.forEach(pok => {

            fetch_pokemon_details(pok);
            
        });
        nexturl=data.next;
        send_data(data);
    
}
var nexturl,values_store;
var store_data= [];
let url="https://pokeapi.co/api/v2/pokemon";
fetch_pokemons(url);

function show_more_pokemons(){
fetch_pokemons(nexturl);
}
function search(){
    let ToSearch=document.getElementsByName("search")[0].value;
    let flag=0;

    // alert(ToSearch);
    values_store.results.forEach(i => {
        
        if(ToSearch===i.name){
            
            flag=1;

            const elements = document.getElementsByClassName("grid-item");
            while(elements.length > 0){
            elements[0].parentNode.removeChild(elements[0]);
            }
            fetch_pokemon_details(i);
            
        }
        
    });
    if(flag==0){
        if(ToSearch.length==0){
            alert("Empty Search");
        }
        else
        alert("Not Found");
    }
    else{
        alert("Pokemon Found");
    }
}
function sortBy(){
    let i=0;
    if(document.getElementById("weight").checked){
    store_data.sort((x,y) => {  
        return ( parseInt(x.weight) - parseInt(y.weight) );    
    });
   
}
else if(document.getElementById("base_experience").checked){
    store_data.sort((x,y) => {  
        return ( parseInt(x.base_experience) - parseInt(y.base_experience) );    
    });
}
    console.log(store_data);
    console.log(typeof(store_data));


    const elements = document.getElementsByClassName("grid-item");
    while(elements.length > 0){
    elements[0].parentNode.removeChild(elements[0]);
}

  store_data.forEach(d => {
    render_sorted_card(store_data,i);
    i=i+1;
    });

}   
function render_sorted_card(data,i){
    
    const el = document.createElement('div');
    const image = document.createElement('img');
    const btn = document.createElement('button');
    btn.textContent="Read More";
    // btn.onclick=show_details(data,pok);

    btn.addEventListener("click", ()=>{
        // let frameUrl="frame.html";
        // let page=window.open(frameUrl, "description");
        // let details= page.document.getElementById("details");
        // details.textContent="abcd";
        
        const iframeDocument = document.querySelector("iframe").contentDocument;
        iframeDocument.body.style="font-size:20px;padding:35px;background-color:black;color:white;";
       let h;
       h="180px";
        iframeDocument.body.innerHTML = "<div><h2>Pokemon Details</h2><img height="+h+" src='"+data[i].sprites.front_shiny+"'><img  src='"+data[i].sprites.back_shiny+"'><div>id: "+data[i].id+"</div><div>Name:"+data[i].name+"</div><div>base_experience: "+data[i].base_experience+"</div><div>height: "+data[i].height+"</div><div>Stats: "+data[i].stats[0].base_stat+"</div><div>Type: "+data[i].types[0].type.name+" </div></div>";
    });
    
    image.src=data[i].sprites.front_default;
    image.addEventListener("mouseout", ()=>{
        image.src=data[i].sprites.front_default;
    });
    image.addEventListener("mouseover", ()=>{
        image.src=data[i].sprites.back_default;

    });
    el.classList.add("grid-item");
   
    card_content="Name:"+data[i].name+"<br>Weight: "+data[i].weight+"<br>base-experience: "+data[i].base_experience+"<br>";
    el.innerHTML=card_content;
    const box = document.getElementsByClassName('grid-container')[0];
    el.appendChild(image);
    el.appendChild(btn);
    box.appendChild(el);


}


