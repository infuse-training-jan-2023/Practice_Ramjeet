const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps","playing"]
}

/**
 * Use destructuting to log the following
*/

const printUserProfile = () => {
    // Piyush Sharma is a Senior Software Engineer at Infuse Consulting. He likes Reading, Listening to music and Collecting stamps
    var {name, designation, company, hobbies} = user;
    var [...n]=hobbies
    console.log(name+" is a "+designation+" at "+company+". He likes "+n); 
    


}

printUserProfile()

