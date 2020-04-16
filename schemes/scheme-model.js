const db = require("../data/db-config");
module.exports = {
    find,
    findById,
    findSteps,
    add,
    remove,
    update,
    addStep
}

function find(){
    return db("schemes");
}

function findById(id){
    return db("schemes").where({"id":id});
}

function findSteps(id){
    return db("steps").where({"scheme_id":id}).orderBy("step_number","desc")
}
function addStep(data,id){
    return db("steps").insert({...data,scheme_id:id}).then(()=>{
        return findSteps(id).orderBy("step_number", "desc").limit(1);
    });
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


