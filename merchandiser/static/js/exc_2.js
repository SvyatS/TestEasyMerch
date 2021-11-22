// fisrt task

let hash_mobile_init = {
    skus: {},
    categories: {}
};

mobile_init.skus.forEach( (item) => {
    hash_mobile_init.skus[item.id] = {
        name: item.name,
        category_id: item.category_id
    }
});

mobile_init.categories.forEach( (item) => {
    hash_mobile_init.categories[item.id] = {
        name: item.name
    }
});

document.querySelector('#task-info-1').innerHTML = JSON.stringify(hash_mobile_init);


// second task

mobile_init.categories.forEach( (item) => {
   let item_div = document.createElement("div");

   item_div.setAttribute("id", `task-2-category-${item.id}`);
   item_div.setAttribute("class", "tree-item");
   item_div.innerHTML = item.name;
   if('parent_id' in item){
        document.querySelector(`#task-2-category-${item.parent_id}`).append(item_div);
   } else {
       document.querySelector('#task-info-2').append(item_div);
   }
});

mobile_init.skus.forEach( (item) => {
   let item_div = document.createElement("div");

   item_div.setAttribute("id", `task-2-skus-${item.id}`);
   item_div.setAttribute("class", "tree-item");
   item_div.innerHTML = item.name;
   document.querySelector(`#task-2-category-${item.category_id}`).append(item_div);
});

//third task

let rendering_categories = [1];

function Queue() {
    this._oldestIndex = 1;
    this._newestIndex = 1;
    this._storage = {};
}

Queue.prototype.dequeue = function () {
    var oldestIndex = this._oldestIndex,
        newestIndex = this._newestIndex,
        deletedData;

    if(oldestIndex !== newestIndex) {
        deletedData = this._storage[oldestIndex];
        delete this._storage[oldestIndex];
        this._oldestIndex++;

        return deletedData;
    }
};

Queue.prototype.enqueue = function (data) {
    this._storage[this._newestIndex] = data;
    this._newestIndex++;
}

function Node(data) {
    this.data = data;
    this.children = [];
}

function Tree(data) {
    let node = new Node(data);
    this._root = node;
}

Tree.prototype.traverseSearch = function (callback) {
    let queue = new Queue();

    queue.enqueue(this._root);
    let currentTree = queue.dequeue();

    while (currentTree) {
        for (let i = 0; i < currentTree.children.length; ++i) queue.enqueue(currentTree.children[i]);

        callback(currentTree);
        currentTree = queue.dequeue();
    }
};

const reduceTree = (categories, parent = null) =>
    categories.reduce(
        (tree, currentItem) => {
            if(currentItem.parent_id == parent.data.id){
                let val = reduceTree(categories, new Node(currentItem));
                if( Object.keys(val).length == 0){
                    Object.keys(tree).length == 0 ? tree = [new Node(currentItem)] : tree.push(new Node(currentItem));
                }
                else{
                    let node = new Node(currentItem);
                    node.children = val
                    tree.push(node);
                }
            }
            return tree;
        },
        {}
   )


rendering_categories.forEach( (category_id) => {
    let category = mobile_init.categories.find(item => item.id === category_id);
    let tree = new Tree(category);
    tree._root.children = reduceTree(mobile_init.categories, tree._root);
    tree.traverseSearch(function (node) {
        let item_div = document.createElement("div");

        item_div.setAttribute("id", `task-3-category-${node.data.id}`);
        item_div.setAttribute("class", "tree-item");
        item_div.innerHTML = node.data.name;
        if('parent_id' in node.data){
            document.querySelector(`#task-3-category-${node.data.parent_id}`).append(item_div);
        } else {
            document.querySelector('#task-info-3').append(item_div);
        }
    });

    mobile_init.skus.forEach( (item) => {
        let item_div = document.createElement("div");

        item_div.setAttribute("id", `task-3-skus-${item.id}`);
        item_div.setAttribute("class", "tree-item");
        item_div.innerHTML = item.name;
        document.querySelector(`#task-3-category-${item.category_id}`).append(item_div);
    });

});
