$commands = @(
    'agent',
    'cluster',
    'manager',
    'server',
    'process',
    'service',
    'infobase',       
    'connection',     
    'session',        
    'lock',           
    'rule',          
    'profile',       
    'counter',       
    'limit'         
    )

foreach($c in $commands){
    Set-Location "C:\Program Files\1cv8\8.3.22.2501\bin"
    Add-Content -Path "C:\Users\Administrator\Desktop\$c.txt" -Value ".\rac.exe help $c"    
   .\rac.exe help $c | Add-Content -Path "C:\Users\Administrator\Desktop\$c.txt"   
}