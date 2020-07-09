const obj = {
    name: "김예진",
    sayHello(){
        return this.name;
    }
}
console.log(obj.sayHello());

//console.log(obj.name);

/*
function sum(a,b, callback){
    let s = a+b;
    callback(s);
}

//function printf(a){
//    console.log(a);
//}

sum('y','e',function(a){
    console.log(a);
};


function func(a, b){
    return a+b;
}

console.log (func(1, 2));
*/