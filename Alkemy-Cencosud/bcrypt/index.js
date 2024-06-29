import * as bcrypt from "bcrypt";

// use hash function
const saltOrRounds = 10;
console.log(saltOrRounds);
const password = "random_password";
console.log(password);
const hash = await bcrypt.hash(password, saltOrRounds);
console.log(hash);

// generate salt value
const salt = await bcrypt.genSalt();
console.log(salt);

// compare passwords and validate
const isMatch = await bcrypt.compare(password, hash);
console.log(isMatch);
