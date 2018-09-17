function telephoneCheck(str) {
  // Good luck!
  // result to return
  var result = true;
  // get string length
  var size = str.length;
  // check pre-reqs
  if(size < 9 ){ return false; }

  // check for open and closing brackets
  var bracket = false;
  if(str.includes("(")){
    // check string includes closing bracket
    if(!str.includes(")")){ return false; }
  }
  // check string doesnt contain just a closing bracket
  if(str.includes(")")){
    if(!str.includes("(")){ return false; }
    bracket = true;
  }
  if(bracket){
    str.replace("(", " ");
    str.replace(")", " ");
  }
  // check if dashed
  if(str.includes("-")){
    if(str[0] === "-"){ return false; }
    str.replace("-", " ");
  }

  // return result
  return result;
}

telephoneCheck("555-555-5555");