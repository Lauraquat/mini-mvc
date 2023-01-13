<?php

namespace models\classes;

use models\MoviesModel;

class Movie
{
    public int $id;
    public int $order;
    public string $name;
    public string $date;
    public string $img;
    public string $synopsis;
    public string $ba;
    public string $storie;


    public MoviesModel $moviesModel;

    public function __construct()
    {
        $this->moviesModel = new MoviesModel();
    }

    public function toString(): string
    {
        return "$this->name, $this->date, $this->img, $this->synopsis, $this->ba, $this->storie";
    }

    /**
     * @return 
     */
    public function getId(): int
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
     * @return 
     */
    public function getOrder(): int
    {
        return $this->order;
    }

    /**
     * @param int $order
     */
    public function setOrder(int $order): void
    {
        $this->order = $order;
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
     * @return 
     */
    public function getDate(): string
    {
        return $this->date;
    }

    /**
     * @param $date
     */
    public function setDate(string $date): void
    {
        $this->date = $date;
    }

    /**
     * @return string
     */
    public function getImg(): string
    {
        return $this->img;
    }

    /**
     * @param string $img
     */
    public function setImg(string $img): void
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