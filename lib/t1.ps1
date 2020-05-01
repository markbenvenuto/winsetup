Function global:ADD-PATH() 
{ 
    [Cmdletbinding(SupportsShouldProcess=$TRUE)] 
    param 
        ( 
        [parameter(Mandatory=$True,  
        ValueFromPipeline=$True, 
        Position=0)] 
        [String[]]$AddedFolder 
        ) 

    If ( ! (TEST-LocalAdmin) ) { Write-Host 'Need to RUN AS ADMINISTRATOR first'; Return 1 } 
     
    # Get the Current Search Path from the Environment keys in the Registry 
    $OldPath=(Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).Path 
    
    # See if a new Folder has been supplied 
    IF (!$AddedFolder) 
        { Return 'No Folder Supplied.  $ENV:PATH Unchanged'} 
 
    # See if the new Folder exists on the File system 
    IF (!(TEST-PATH $AddedFolder)) 
        { Return 'Folder Does not Exist, Cannot be added to $ENV:PATH' } 
 
    # See if the new Folder is already IN the Path 
    $PathasArray=($Env:PATH).split(';') 
    IF ($PathasArray -contains $AddedFolder -or $PathAsArray -contains $AddedFolder+'\') 
        { Return 'Folder already within $ENV:PATH' } 
 
    If (!($AddedFolder[-1] -match '\')) { $Newpath=$Newpath+'\'} 
 
    # Set the New Path 
    $NewPath=$OldPath+';'+$AddedFolder 

    if ( $PSCmdlet.ShouldProcess($AddedFolder) ) 
    { 
        Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH -Value $newPath 
        
        # Show our results back to the world 
        Return $NewPath  
    } 
} 