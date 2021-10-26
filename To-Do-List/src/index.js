import './style.css';

const root = document.querySelector('#root');
const ul = document.createElement('ul');
const li = document.createElement('li');
li.innerHTML = `
<div class="list">
<input type="checkbox" class="to-do-check" name="subscribe" value="newsletter">
<span class="description">description</span> <span class="trash hidden"><i class="fa fa-trash" aria-hidden="true"></i></span> <span class="complete hidden"><i class="fas fa-check"></i></span> <span class="options"><i class="fas fa-ellipsis-v"></i></span>
</div>`;
ul.append(li);
root.append(ul)