
!!! tip "Source Code"
    [Reference code base](https://github.com/vikrampruthvi5/TechDocs/blob/main/docs/MKDOCS%20Assets/tweaks.md?plain=1){ target=_blank rel="noopener" } contains all the examples on how to use the Material Design features.


## Title to Code block
``` bash title="test.sh"
sh usermod 400 x.pem
```

!!! information "How to use"
    use ``` bash title="test.sh" and then your code snippet.

## Admonitions
According to Material Docs, the types used in MkDocs and their aliases are:

??? info "Available admonitions"
    - "note" (alias: seealso)
    - "abstract" (aliases: summary, tldr)
    - "info" (alias: todo)
    - "tip" (aliases: hint, important)
    - "success" (aliases: check, done)
    - "question" (aliases: help, faq)
    - "warning" (aliases: caution, attention)
    - "failure" (aliases: fail, missing)
    - "danger" (alias: error)
    - "bug"
    - "example"
    - "quote" (alias: cite)

### Tip
!!! tip "How to use"
    use !!! tip "How to use"

### Note
!!! note "How to use"
    use !!! note "How to use"

### Warning
!!! warning "How to use"
    use !!! warning "How to use"


## Multi Tab

### Basic working

=== "Ubuntu"
    ```bash title="Install on Ubuntu"
    apt update && apt install -y nginx
    ```

=== "RHEL"
    ```bash title="Install on RHEL"
    dnf install -y nginx
    ```

=== "Windows (PowerShell)"
    ```powershell title="Install on Windows"
    winget install nginx
    ```

### Tabs with different languages
=== "Python"
    ```python title="client.py"
    import requests
    print(requests.get("https://api.example.com").json())
    ```

=== "Node.js"
    ```javascript title="client.mjs"
    const res = await fetch("https://api.example.com");
    console.log(await res.json());
    ```

=== "Go"
    ```go title="main.go"
    package main
    import ("net/http"; "io"; "fmt")
    func main(){ r,_ := http.Get("https://api.example.com"); b,_ := io.ReadAll(r.Body); fmt.Println(string(b)) }
    ```

### Multi tab with superfence
!!! note "Choose your OS"
    === "Ubuntu"
        ```bash
        apt install -y nginx
        ```

    === "RHEL"
        ```bash
        dnf install -y nginx
        ```

### Multi tab with superfence and toggle
??? note "Choose your OS"
    === "Ubuntu"
        ```bash
        apt install -y nginx
        ```

    === "RHEL"
        ```bash
        dnf install -y nginx
        ```
