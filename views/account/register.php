<form method="post" action="register/run" class="forms-login">
    <label for="username">Nom d'utilisateur</label>
    <input type="text" id="username" name="username" placeholder="Nom d'utilisateur">
    <label for="password">Mot de passe</label>
    <div class="label">
        <input type="password" id="password" name="password" placeholder="Mot de passe">
        <div class="password-icon">
            <i id="eye" data-feather="eye" onclick="eyeclick()"></i>
            <i id="eyeoff" data-feather="eye-off" onclick="eyeoffclick()"></i>
        </div>
    </div>
    
    <label for="password_confirmation">Confirmer le mot de password</label>
    <input type="password" id="password_confirmation" name="password_confirmation" placeholder="Confirmer le mot de password">
    <label for="email">Email</label>
    <input id="email" type="email" name="email" placeholder="Email" />
    <input name="submit" type="submit" id="submit" value="S'inscrire" class="btn-submit">
    <a href="/login">Se connecter</a>

    <?= $error ? $error : ""; ?>
</form>
<script>
  feather.replace();
</script>