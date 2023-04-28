require ["fileinto", "imap4flags"];

if allof (
    exists "List-Unsubscribe",
    not exists "X-Simplelogin-Type",
    header :matches "Delivered-To" "your@email.test"
) { 
  fileinto "Newsletters";
}
