<?php
namespace models\classes;

use models\ActorsModel;
use models\base\MoviesModel;

class Client
{
    private int $id;
    private string $name;
    private string $pseudo;
    private string $photo;
    // private MoviesModel $moviesModel;
    // private AdresseModel $adresseModele;

    function __construct()
    {
        // $this->moviesModel = new MoviesModel();
        // $this->adresseModele = new AdresseModel();
    }

    //     /**
    //  * Ajoute un nouveau produit en base. Si un $clientId est passé en paramètre alors le produit
    //  * est associé à ce client.
    //  * @param Produit $unProduit
    //  * @param int|null $clientId
    //  * @return bool|string
    //  */

    // public function Actors_movies(): array {
    //     return $this->moviesModel->lesAdressesClient($this->id);
    // }

    // /**
    //  * Retourne la liste des produits du client
    //  * @return Produit[]
    //  */
    // public function lesProduits(): array
    // {
    //     return $this->produitModele->lesProduitsClient($this->id);
    // }

    // /**
    //  * Affichage des informations de base du client
    //  * @return string
    //  */
    // public function generalInfo(): string
    // {
    //     return join(",", array_filter([$this->id, $this->nom, $this->prenom]));
    // }

    // /**
    //  * Affichage des informations de contact d'un client.
    //  * @return string
    //  */
    // public function contactInfo(): string
    // {
    //     return join(",", array_filter([$this->email, $this->telephone]));
    // }

    /**
     * @return int
     */
    public function getId(): string
    {
        return $this->id;
    }

    /**
     * @param int $id
     */
    public function setId(int $id): void
    {
        $this->id = $id;
    }

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @param string $name
     */
    public function setName(string $name): void
    {
        $this->name = $name;
    }

    /**
     * @return string
     */
    public function getPseudo(): string
    {
        return $this->pseudo;
    }

    /**
     * @param string $pseudo
     */
    public function setPseudo(string $pseudo): void
    {
        $this->pseudo = $pseudo;
    }

    /**
     * @return string
     */
    public function getPhoto(): string
    {
        return $this->photo;
    }

    /**
     * @param string $photo
     */
    public function setPhoto(string $photo): void
    {
        $this->photo = $photo;
    }

}