if( ! (test-path "C:\Program Files\Git\")) 
{
winget install -e Git.Git
}
if ( ! (test-path "C:\Program Files\nodejs"))
{
    winget install -e OpenJS.NodeJS.LTS
}
if ( ! (test-path "~/AppData\Local\Discord"))
{
    winget install -e discord.discord
}
set-location "~/AppData\Local"
git clone https://github.com/BetterDiscord/BetterDiscord
Set-Location ./BetterDiscord
npm i
npm run build
npm run inject
