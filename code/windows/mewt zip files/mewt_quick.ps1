$param=$args[0]

$mewt_port = Get-Content -path ".\mewt_com_port.txt" -tail -1
	Import-Module .\AudioDeviceCmdlets

# checks if AudioDeviceCmdlets already exists in system
if (!(Test-Path "$($profile | split-path)\Modules\AudioDeviceCmdlets")) {

	# if not, installs AudioDeviceCmdlets locally
	New-Item "$($profile | split-path)\Modules\AudioDeviceCmdlets" -Type directory -Force
	Copy-Item ".\AudioDeviceCmdlets.dll" "$($profile | split-path)\Modules\AudioDeviceCmdlets\AudioDeviceCmdlets.dll"
	Set-Location "$($profile | Split-Path)\Modules\AudioDeviceCmdlets"
	Get-ChildItem | Unblock-File
	Import-Module .\AudioDeviceCmdlets
}

# starts writing volume stream to temporary file.
 $process = start-Process -FilePath powershell.exe -nonewwindow 'import-module .\audiodevicecmdlets; Write-AudioDevice -RecordingStream | out-file .\out.txt' -passthru
#$port.close()
$port = new-Object System.IO.Ports.SerialPort $mewt_port,9600,None,8,one
$port.DTREnable = $True
$port.RTSEnable = $True
$port.ReadTimeout = 50
$port.open()

$port.Write([int]101)
clear
write-host "MEWT ready"

# sets up initial state for later comparison
$previous_button_value = -1
$unmewtable_device = -1

# takes a snapshot of the reocrding devices in the system for later comparison
$audio_device_list = Get-AudioDevice -list
$recording_devices_old = $audio_device_list | ? {$_.Type -eq "Recording"}
$out_timer =  [system.diagnostics.stopwatch]::StartNew()
$out_timer.start()
$loop = 1

while ($port.IsOpen)
{
	$mewt_stream_txt_file = ".\mewt_stream.txt"
	$mewt_stream_txt_file_path = [System.IO.Path]::Combine($mewt_stream_txt_file)
	$FileMode = [System.IO.FileMode]::OpenOrCreate
	$FileAccess = [System.IO.FileAccess]::Write
	$FileShare = [IO.FileShare]::Read

	# reads last volume value written
	$last_mewt_stream_value = Get-Content -path ".\out.txt" -tail 1

	# skips non-integer values, and explicit types the output as int
	if (($last_mewt_stream_value -ne $null) -and ($last_mewt_stream_value.gettype().name -eq "String")) {
		$last_mewt_stream_value = [int]$last_mewt_stream_value

		# writes value to mewt_stream.txt
		$FileStream = New-Object IO.FileStream($mewt_stream_txt_file_path, $FileMode, $FileAccess, $FileShare)
		$StreamWriter = New-Object System.IO.StreamWriter($FileStream)
		$StreamWriter.WriteLine($last_mewt_stream_value)
		$StreamWriter.flush()
		$streamWriter.close()
	}

	# gets mewt state, if mewted preps 0 to be sent to arduino
	try  {$current_mewt_state = Get-AudioDevice -RecordingMute -erroraction SilentlyContinue}
	Catch [System.exception] {"faulty audio device"}
	#$_.exception.gettype().fullname}

	if ($process.HasExited) {$process = start-Process -FilePath powershell.exe  'Write-AudioDevice -RecordingStream | out-file .\out.txt' -passthru}
	
	if ($current_mewt_state) {
		$send_value_to_arduino = "0"
	} else {
		$send_value_to_arduino = "1"
	}

	# reads last button pushed by arduino
	try {$value_from_arduino = $port.ReadLine()}
	Catch [System.exception] {}
#write-host $value_from_arduino
	# holds mewt state in variable.  we are inverting the mewt state because we are sending 0 to arduino to indicate mute=true
	$opposite_mewt_state = $send_value_to_arduino
	
	
	# if state is mewted, send 0 to arduino to trigger red light
	if ([int]$send_value_to_arduino -eq 0) {
		$mewt_stream = [int]0

	# otherwise, if unmewted, get the latest volume value
	} else {
		$mewt_stream = Get-Content -path ".\mewt_stream.txt" -head 1

		# replaces 0 (no volume value) with 1, to avoid collision with arduino mewt representation
		if ([int]$mewt_stream -eq 0) {
			$mewt_stream = [int]1
		}

	
	
	}
	# send volume value to arduino
	try {$port.writeline([int]$mewt_stream)}
	Catch [System.exception] {"No audio data"}

	# if a value is read from arduino, that means there's a button push
	#if (($value_from_arduino.length -gt 0) -and ($previous_button_value -ne [int]$value_from_arduino.Substring($value_from_arduino.length-1))){
	if (($value_from_arduino.length -gt 0) -and ($previous_button_value -ne [int]$value_from_arduino)){
		$value_from_arduino = [int]$value_from_arduino
		$previous_button_value = $value_from_arduino
		
		# if value read is the same as $opposite_mewt_state, that means that a change in state was requested
		if ($value_from_arduino -eq $opposite_mewt_state) {

$stopwatch =  [system.diagnostics.stopwatch]::StartNew()
$stopwatch

if ($param -eq "Zoom") {
$wshell = New-Object -ComObject wscript.shell;
if ($wshell.AppActivate('Zoom Meeting')) {
	$wshell.SendKeys('%a')
	}
if ($wshell.AppActivate('Meeting Controls')) {
	$wshell.SendKeys('%a')
	}
}

if ($param -eq "Meet") {
$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('Google Chrome')
$wshell.SendKeys('^d')
}

if ($param -eq "Discord") {
$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('Discord')
$wshell.SendKeys('^+d')
}

#$stopwatch
			# clears the console output
			clear

			# prints out requested mewt state
			if ($value_from_arduino -eq 0) {
				write-host "===========UNMEWTING===========" 
#$serial |Write-ArduinoSerial [int]0		
#write-host "0"		
			} else {
			write-host "============MEWTING============" 
#$stopwatch
#$serial |Write-ArduinoSerial [int]1
#write-host "1"		
#$stopwatch
			}

			# following is from the old mewt.ps1
		
			# gets the list of all audio devices
			try  {$current_mewt_state = $audio_device_list = Get-AudioDevice -list -erroraction SilentlyContinue}
			Catch [System.exception] {"faulty audio device"}
	#			$_.exception.gettype().fullname}

if ($process.HasExited) {$process = start-Process -FilePath powershell.exe  'Write-AudioDevice -RecordingStream | out-file .\out.txt' -passthru}

			# grabs only the recording devices, ignoring playback
			$recording_devices = $audio_device_list | ? {$_.Type -eq "Recording"}
			
			# saves the default_recording_device for later reinstatement
			$default_recording_device = $recording_devices | ? {$_.Default -eq $True}

			# grabs only the index of the recording devices
			$recording_device_index = $recording_devices.Index | Out-String -stream

			# for each index, mewts the device
			foreach ($i in $recording_device_index) {

				# converts the string to an int
				$inti = [int]$i

				# changes default audio device to the current iteration, nonverbose
				try  {Set-AudioDevice $inti | out-null -erroraction SilentlyContinue}
				Catch [System.exception] {"faulty audio device"}
	#				$_.exception.gettype().fullname}					

				# if input is 1, mutes.  if it's 0, unmutes
				try  {Set-AudioDevice -RecordingMute $value_from_arduino -erroraction SilentlyContinue}
				Catch [System.exception] {"faulty audio device"}
	#				$_.exception.gettype().fullname}

#debug output to check for elapsed time
write-host "toggle mewt state device #" $inti ": " $stopwatch.Elapsed.Seconds"."$stopwatch.Elapsed.Milliseconds
			} 	# foreach ($i in $recording_device_index) {
				# for each index, mewts the device

		} 	# if ($value_from_arduino -eq $mewt_state) {
			# if value read is the same as mewt_state, that means that a change in state was requested
			
		
		
	}  	#if ($value_from_arduino.length -gt 0) {
		#if a value is read from arduino, that means there's a button push	
#if ($out_timer.Elapsed.hours -gt 10) {$process.Kill(); $loop = 0;import-module .\audiodevicecmdlets;$mewt_process = start-Process -FilePath powershell.exe  '.\mewt.ps1'}
}
$process.kill()
write-host "MEWT exiting"