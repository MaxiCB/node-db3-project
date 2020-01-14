const db = require("../data/dbConfig.js");

module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove
}

function find() {
  return db("schemes");
}

function findById(id) {
  return db("schemes")
    .where({ id })
    .first();
}

function findSteps(id) {
    return db('steps')
        .where({ scheme_id: id })
}

function add(data) {
    return db('schemes')
        .insert(data)
}

function addStep(data, id) {
    return db('steps')
        .insert(data)
}

function update(changes, id){
    return db("schemes")
        .where({id})
        .update(changes)
}

function remove(id) {
    return db("schemes")
        .where({id})
        .del();
}
