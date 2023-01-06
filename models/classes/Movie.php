<?php

namespace models\classes;

use models\MoviesModel;

class Movie
{
    private string $id;
    private string $name;
    private string $date;
    private string $img;
    private string $synopsis;
    private string $ba;
    private string $storie;


    private MoviesModel $moviesModel;

    public function __construct()
    {
        $this->moviesModel = new MoviesModel();
    }

    public function toString(): string
    {
        return "$this->name, $this->date, $this->img, $this->synopsis, $this->ba, $this->storie";
    }

    /**
     * @return string
     */
    public function getId(): string
    {
        return $this->id;
    }

    /**
     * @param string $id
     */
    public function setId(string $id): void
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
     * @param string $nom
     */
    public function setName(string $name): void
    {
        $this->name = $name;
    }

    /**
     * @return string
     */
    public function getDate(): string
    {
        return $this->date;
    }

    /**
     * @param string $date
     */
    public function setDate(string $date): void
    {
        $this->date = $date;
    }

    /**
     * @return string
     */
    public function getimg(): string
    {
        return $this->img;
    }

    /**
     * @param string $img
     */
    public function setimg(string $img): void
    {
        $this->img = $img;
    }

    /**
     * @return string
     */
    public function getSynopsis(): string
    {
        return $this->synopsis;
    }

    /**
     * @param string $synopsis
     */
    public function setSynopsis(string $synopsis): void
    {
        $this->synopsis = $synopsis;
    }

    /**
     * @return string
     */
    public function getBa(): string
    {
        return $this->ba;
    }

    /**
     * @param string $ba
     */
    public function setBa(string $ba): void
    {
        $this->ba = $ba;
    }

    /**
     * @return string
     */
    public function getStorie(): string
    {
        return $this->storie;
    }

    /**
     * @param string $storie
     */
    public function setStorie(string $storie): void
    {
        $this->storie = $storie;
    }

}