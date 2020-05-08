
function addImage(){
  var xhttp = new XMLHttpRequest();
  var token = document.querySelector("meta[name=csrf-token]").content;
  var timer = counter+1;
  var image_id = document.getElementById('game_image').dataset.id
  var image_src = document.getElementById('game_image').src
  var formData = new FormData();
  formData.append('play[timer]', timer);
  formData.append('play[image_id]', image_id);

  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 204) {
      addImageToTable(timer, image_src)
    }
  };

  xhttp.open("POST", "plays", true);
  xhttp.setRequestHeader('X-CSRF-Token', token);
  xhttp.send(formData);
}

function addImageToTable(timer, image_src){
  var table = document.getElementById("play");
  var row = table.insertRow(-1);
  var cell1 = row.insertCell(0);
  var cell2 = row.insertCell(1);
  cell1.innerHTML = timer;
  var img = document.createElement('img')
  img.src = image_src;
  cell2.appendChild(img);
}