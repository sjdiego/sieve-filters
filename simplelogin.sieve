require ["fileinto", "vnd.proton.expire"];

if allOf(
    exists "X-Simplelogin-Type",
    address :domain "from" "simplelogin.co"
) { 
  	fileinto "SimpleLogin";
  	expire "day" "30";
}
