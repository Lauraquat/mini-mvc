<div class="container mt-5">
    <div class="row">
        <div class="card">
            <div class="card-body">
                <h3>Site de démonstration</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias, commodi delectus eaque eos esse ex illum laboriosam laborum modi, molestias necessitatibus non provident quidem quis repellat soluta tempore, veritatis vitae.
                </p>

                <ul>
                    <li><a href="/exemple">Lien d'exemple 1</a></li>
                    <li><a href="/exemple2/votre_parametre">Lien d'exemple 2</a></li>
                </ul>

                <div class="text-center">Page générée le <?= $date ?></div>
                <tr>
                    <th class="p-2">Id</th>
                    <th class="p-2">Nom</th>
                <?php foreach($movie as $client): ?>
                    <tr> 
                        <td class="px-2"> <?= $client-> getId() ?></td>
                        <td class="px-2"> <?= $client-> getName() ?></td>
                    </tr>
                <?php endforeach; ?>
                </tr>
            </div>
        </div>
    </div>
</div>
