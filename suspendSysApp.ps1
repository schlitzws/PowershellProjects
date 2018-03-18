function killcortana {ps | ? {$_.Name -match "SearchUI"}}
$counter = $null
$kc = killcortana
function killingcortana {
if($kc -and $counter -eq 0){
echo true
$counter += 1
try {
    $kc.Kill()
} catch {
    $kc.Dispose()
}
} else {
echo false
$counter += 0
killingcortana 
}
}
while($counter -eq $null){
killingcortana
}