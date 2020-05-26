$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.uipath.com/e2t/c/*VKnj4j42mqgRW8Y2prB4Tmqvg0/*W21CtC06MDh5FW74_4-_5yN7100/5/f18dQhb0SbTN8XJ8hgW8NKpKX4mQf6dN8q-jN0RbM5MW3hHh8X2P7_nXVcnTGj97C3fQW4rbdVh1wSs4tVbXQQ34vgKM1W98wSK12m3CvpW3SMl063skkwsW4Bs6cn4yym9nW2p0tdz5Q4sDHW3CrfQG4Lgbg_W2HSKLx3sWQYQW3n14Gn3SQgn2W3_CV3g3C9mDHW41Q0l24DRFN5W60bfgY2KQ2YYW3_VSVd3LmS3lW2PS9sY2HT8mrW6l4Sh91gvjSzW8hz0Ys806yj3W70ml3s3q4k7KW6yh4Cx8DQyKlW5T5rdq34WQy_W2wXQ_f6zkGqPW5ScDRL5SB6RlVzx3fY11mZGvW8DWDFF52_XNPW5JWFDT78n4_9W5rgz885fVmxZW7sGd-l6zzft6W7K-FQ655t06QVp4vJD82LftfW2DbVk75DhyW9MvjXqKrX3l1W6Vzw8C5mMkDBW2xHFxt95D9t7VxHLlk51S8R9W51frz41zVbKjW8mhVQY6ZDvHRW6KnwTV5qD7lFW3PHnX88MpDYmW8LzSGg9bDsMLW3mrKTn1WPqF4VpW0081Q3L3P111'
$url64      = $url

$packageArgs = @{
  packageName   = 'UIPath Studio'
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  softwareName  = 'UIPath*'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs