<form method="post" action="login/run" class="forms-login">
    <label for="username">Nom d'utilisateur</label>
    <input type="text" id="username" name="username" placeholder="Nom d'utilisateur">
    <label for="password">Mot de passe</label>
    <div  class="label">
        <input type="password" id="password" name="password" placeholder="Mot de passe">
        <div class="password-icon">
            <i id="eye" data-feather="eye" onclick="eyeclick()"></i>
            <i id="eyeoff" data-feather="eye-off" onclick="eyeoffclick()"></i>
        </div>
    </div>
    <input name="submit" type="submit" id="submit" value="Se connecter" class="btn-submit">
    <a href="/register">S'inscrire</a>
</form>

<script>
  feather.replace();
</script>