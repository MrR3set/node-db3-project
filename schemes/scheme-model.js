const db = require("../data/db-config");
module.exports = {
    find,
    findById,
    findSteps,
    add,
    remove,
    update
}

function find(){
    return db("schemes");
}

function findById(id){
    return db("schemes").where({"id":id});
}

function findSteps(id){
    
}
function add(data){
    return db("schemes").insert(data);
}

function update(data,id){
    return db("schemes").where({"id":id}).update(data);
}

function remove(id){
    return db("schemes").where({"id":id}).del();
}
