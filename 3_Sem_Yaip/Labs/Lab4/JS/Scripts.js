function add(name, cost, table) {
    if (name.length == 0 || cost.length == 0) {

    }
    else if (Number(cost) != cost) {
        alert("Дурак, рубли могут быть только целочисленными");
    }
    else {
        let row = document.createElement('div');
        row.className = "row";

        let name_col = document.createElement('div');
        name_col.className = "col";

        let cost_col = document.createElement('div');
        cost_col.className = "col cost_class cost_bag";

        name_col.textContent = name;
        cost_col.textContent = cost;
    
        cost_col.addEventListener("mouseover", function() {
            change_color(this);
        });
        cost_col.addEventListener("mouseleave", function() {
            back(this);
        });
        
        console.log(cost_col);
        row.appendChild(name_col);
        row.appendChild(cost_col);
        table.appendChild(row);
        clear();
    }
}

function count_cost(cost, div_cost) {
    let res_cost = document.createElement('div');
    res_cost.className = "print";
    s = 0;
    for (i = 1; i < cost.length; i++) {
        s += Number(cost[i].textContent);
    }

    res_cost.textContent = "Стоимость заказа: " + parseInt(s);

    if (div_cost.children.length == 0) {
        div_cost.appendChild(res_cost);
    }

    else {
        div_cost.children[0].textContent = res_cost.textContent;
    }
}

function add_shop(row, table) {


    let res = document.createElement('div');
    res.className = "row";

    let name_col = document.createElement('div');
    name_col.className = "col";

    let cost_col = document.createElement('div');
    cost_col.className = "col cost_class cost_bag";
    name_col.textContent = row.children[0].textContent;
    cost_col.textContent = row.children[1].textContent;

    res.appendChild(name_col);
    res.appendChild(cost_col);
    table.appendChild(res);
}

function clear() {
    document.getElementsByName('name')[0].value = "";
    document.getElementsByName('cost')[0].value = "";
}

function change_color(cell)
{
    cell.style.backgroundColor = "red";
}

function back(cell)
{
    cell.style.backgroundColor = "white";
}