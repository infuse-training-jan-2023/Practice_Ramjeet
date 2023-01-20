const user = {
    name: "Piyush Sharma",
    designation: "Senior Software Engineer",
    company: "Infuse Consulting",
    hobbies: ["Reading", "Listening to music", "Collecting stamps"]
}

/**
 * Use destructuting to log the following
*/

const printUserProfile = () => {
    // Piyush Sharma is a Senior Software Engineer at Infuse Consulting. He likes Reading, Listening to music and Collecting stamps
    var {name, designation, company, hobbies} = user;
    var [hobby1,hobby2,hobby3]=hobbies
    console.log(name+" is a "+designation+" at "+company+". He likes "+hobby1+", "+hobby2+" and "+hobby3); 
    


}

printUserProfile()

