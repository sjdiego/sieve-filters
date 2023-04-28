require ["fileinto", "vnd.proton.expire"];

if address :domain "to" "icloud.com" 
{ 
  fileinto "Masked iCloud";
  expire "day" "30";
}
