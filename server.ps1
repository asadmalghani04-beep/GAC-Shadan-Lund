param(
    [int]$Port = 8080,
    [string]$Root = "C:\Users\DELL\.gemini\antigravity\scratch\govt_college_website"
)

$listener = New-Object System.Net.Sockets.TcpListener ([System.Net.IPAddress]::Parse("127.0.0.1"), $Port)
$listener.Start()

Write-Output "HTTP Server running at http://localhost:$Port/"
Write-Output "Serving files from: $Root"

try {
    while ($true) {
        $client = $listener.AcceptTcpClient()
        $stream = $client.GetStream()
        
        $buf = New-Object byte[] 4096
        $bytesRead = $stream.Read($buf, 0, $buf.Length)
        if ($bytesRead -le 0) {
            $stream.Close()
            $client.Close()
            continue
        }

        $rawHeader = [System.Text.Encoding]::ASCII.GetString($buf, 0, $bytesRead)
        $firstLine = ($rawHeader -split "(\r\n|\r|\n)")[0]

        $parts = $firstLine.Split(" ")
        $urlPath = if ($parts.Length -ge 2) { $parts[1] } else { "/" }
        
        $cleanPath = $urlPath.Split("?")[0].TrimStart('/')
        $cleanPath = [System.Uri]::UnescapeDataString($cleanPath)
        if ([string]::IsNullOrEmpty($cleanPath)) {
            $cleanPath = "index.html"
        }

        $filePath = [System.IO.Path]::GetFullPath([System.IO.Path]::Combine($Root, $cleanPath))

        if (-not $filePath.StartsWith($Root, [System.StringComparison]::OrdinalIgnoreCase) -or -not (Test-Path $filePath -PathType Leaf)) {
            $notFound = "HTTP/1.1 404 Not Found`r`nContent-Type: text/html; charset=utf-8`r`nConnection: close`r`n`r`n<h1>404 Not Found</h1>"
            $outBytes = [System.Text.Encoding]::UTF8.GetBytes($notFound)
            $stream.Write($outBytes, 0, $outBytes.Length)
            $stream.Flush()
            $stream.Close()
            $client.Close()
            continue
        }

        $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
        $contentType = switch ($ext) {
            ".html" { "text/html; charset=utf-8" }
            ".htm"  { "text/html; charset=utf-8" }
            ".css"  { "text/css" }
            ".js"   { "application/javascript" }
            ".png"  { "image/png" }
            ".jpg"  { "image/jpeg" }
            ".jpeg" { "image/jpeg" }
            ".gif"  { "image/gif" }
            ".svg"  { "image/svg+xml" }
            ".ico"  { "image/x-icon" }
            default { "application/octet-stream" }
        }

        $fileBytes = [System.IO.File]::ReadAllBytes($filePath)
        $header = "HTTP/1.1 200 OK`r`nContent-Type: $contentType`r`nContent-Length: $($fileBytes.Length)`r`nConnection: close`r`n`r`n"
        $headerBytes = [System.Text.Encoding]::ASCII.GetBytes($header)

        $stream.Write($headerBytes, 0, $headerBytes.Length)
        $stream.Write($fileBytes, 0, $fileBytes.Length)
        $stream.Flush()
        $stream.Close()
        $client.Close()
    }
} finally {
    $listener.Stop()
}
