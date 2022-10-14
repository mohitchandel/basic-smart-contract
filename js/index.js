// Question 1
function leafFall(num) {
  let result;
  if (num > 0) result = 5 * 80.0 * num;
  else result = 0;
  return result;
}

// Question 2
function expoFun(num) {
  let result = [];
  for (let i = 0; i <= num; i++) {
    result.push(2 ** i);
  }
  return result;
}

// Question 3
function charCheck(char1, char2) {
  let result = -1;

  if (char1.match(/([A-Z])/gm) && char2.match(/([A-Z])/gm)) result = 1;
  if (char1.match(/([a-z])/gm) && char2.match(/([a-z])/gm)) result = 1;
  if (
    (char1.match(/([A-Z])/gm) && char2.match(/([a-z])/gm)) ||
    (char1.match(/([a-z])/gm) && char2.match(/([A-Z])/gm))
  )
    result = 0;

  return result;
}

// Question 4
function multipTable(num) {
  if (num < 1 || num > 10) return;
  let table = "";
  for (let i = 1; i <= 10; i++) {
    const result = i * num;
    table += num + "*" + i + "=" + result + "\n";
  }
  return table;
}

// Question 4
function pillarDistance(num_of_pillars, distance, width) {
  if (num_of_pillars < 2) return 0;
  return num_of_pillars * (distance * 100 + width) - width * 2 - distance * 100;
}
