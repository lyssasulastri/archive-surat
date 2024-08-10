<h1>Penjelasan Minggu Pertama.</h1>
<p>Date: 02/03/2023</p>

```php
view:
├───content
├───errors
│   ├───cli
│   └───html
├───main
│   ├───auth
│   └───dashboard
├───segment
│   ├───auth
│   └───dashboard
│       ├───header
│       ├───navbar
│       ├───pages
│       └───sidebar
└───sub-content
```

> **<span style="color:red;">Peringatan:</span>** Informasi yang ada disini tidak untuk disebar luaskan. Jika Melanggar Denda 100x Lipat.


<p>
Berikut Adalah Penjelasan Folder Views:
<ul>
    <li>
        <span style="color:green;">Content</span>: digunakan menyimpan file main content Dari file Dashboard.
    </li>
    <li>
        <span style="color:green;">Main</span>: digunakan untuk Menyimpan file utama.
    </li>
    <li>
        <span style="color:green;">Segment</span>: digunakan menyimpan sub-content dari file
    </li>
    <li>
        <span style="color:green;">sub-content</span>:
        digunakan untuk menyimpan bagian bagian dari content
    </li>
</ul>
</p>


<p>Keterkaitan Folder Tersebut:</p>
<ul>
    <li>Main</li>
    <ul>
        <li>Auth</li>
        <li>Dashboard</li>
        <ul>
            <li><span style="color:pink;">dashboard</span></li>
        </ul>
    </ul>
    <li>Segment</li>
    <ul>
        <li>Auth</li>
        <li>Dashboard</li>
            <ul>
                <li>sidebar</li>
                <li>navbar</li>
                <li><span style="color:pink;">pages</span></li>
                <li>footer</li>
            </ul>
    </ul>
</ul>

> **<span style="color: #cce3ff;">Penjelasan:</span>** Dashboard Yang Berada Didalam Folder <span style="color:pink;">Main</span>. Melakukan Extend Pada File Pages Yang Ada Didalam Folder <span style="color:pink;">Pages</span>.

```php
<?= $this->extend("/segment/dashboard/pages/pages.php"); ?>
```
<hr>

```
Public:
├───assets
│   ├───canvases
│   │   └───profile
│   ├───document
│   ├───dropper
│   ├───modules
│   └───themes
└───vendor
```
> **<span style="color:red;">Peringatan:</span>** Sekali Lagi. Informasi yang ada disini tidak untuk disebar luaskan. Jika Melanggar Denda 100x Lipat.

Berikut Adalah Penjelasan Folder Public:
<ul>
    <li>
        <span style="color:green;">assets</span>: 
        Menyimpan file file berupa logo Dan Document.
    </li>
    <li>
        <span style="color:green;">vendor</span>: digunakan untuk Menyimpan file pihak ketiga.
    </li>
</ul>

<hr>